package com.eric.seckill.cache.aspect;

import com.alibaba.fastjson.JSON;
import com.eric.seckill.cache.anno.MethodCache;
import com.eric.seckill.cache.utils.DisLockUtil;
import com.eric.seckill.cache.utils.KryoUtil;
import com.eric.seckill.common.constant.ErrorCodeEnum;
import com.eric.seckill.common.exception.CustomException;
import com.eric.seckill.common.utils.HashAlgorithms;
import org.apache.commons.lang3.StringUtils;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.reflect.MethodSignature;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.lang.reflect.Method;
import java.net.HttpCookie;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

/**
 * @author wang.js
 * @date 2018/12/18
 * @copyright yougou.com
 */
@Aspect
@Order(value = 2)
@Component
public class MethodCacheAspect {

	@Resource
	private JedisPool jedisPool;

	@Resource
	private DisLockUtil disLockUtil;

	private static final Logger LOGGER = LoggerFactory.getLogger(MethodCacheAspect.class);

	private static final String EMPTY_RESULT = "NULL";

	/**
	 * 切面具体的操作
	 *
	 * @param proceedingJoinPoint 切面
	 * @param methodCache         注解
	 * @return Object
	 * @throws Throwable 抛出异常
	 */
	@Around("@annotation(methodCache)")
	public Object execute(ProceedingJoinPoint proceedingJoinPoint, MethodCache methodCache) throws Throwable {
		MethodSignature methodSignature = (MethodSignature) proceedingJoinPoint.getSignature();
		Method method = methodSignature.getMethod();

		// 方法参数解析
		int size = proceedingJoinPoint.getArgs().length;
		// 解析请求参数
		List<Object> list = parseRequestParam(proceedingJoinPoint, size);
		// 根据方法获取相应的key
		String key = methodCache.key();
		if (StringUtils.isBlank(key)) {
			key = getSignature(method);
		}
		key += HashAlgorithms.mixHash(JSON.toJSONString(list));
		Object deserialize = tryGetFromCache(key);
		if (deserialize != null) {
			// 防止缓存击穿, 查询不到数据时也会设置空结果的标记, 避免直接把压力落到DB上
			if (EMPTY_RESULT.equals(deserialize)) {
				return null;
			}
			return deserialize;
		}
		Object proceed;
		String mutexKey = "mutex_" + key;
		if (methodCache.limitQuery()) {
			boolean lock = disLockUtil.lock(mutexKey, methodCache.limitQuerySeconds());
			// 如果第一次设置分布式锁失败, 最多允许重试三次
			int count = 1;
			while (!lock && count < 3) {
				lock = disLockUtil.lock(mutexKey, methodCache.limitQuerySeconds());
				count++;
				TimeUnit.SECONDS.sleep(1);
			}
			if (lock) {
				// 允许查询
				proceed = executeConcreteMethod(proceedingJoinPoint, mutexKey);
				Object cacheResult = proceed;
				// 缓存中不存在, 需要执行方法查询
				if (cacheResult == null) {
					cacheResult = EMPTY_RESULT;
				}
				try (Jedis jedis = jedisPool.getResource()) {
					jedis.setnx(key.getBytes(), KryoUtil.writeToByteArray(cacheResult));
					jedis.expire(key, methodCache.expireSeconds());
				}
			} else {
				LOGGER.warn("设置防击穿锁失败, key为:{}", mutexKey);
				throw new CustomException(ErrorCodeEnum.DUPLICATE_REQUEST.getMessage());
			}
		} else {
			// 允许查询
			proceed = executeConcreteMethod(proceedingJoinPoint, mutexKey);
		}
		return proceed;
	}

	/**
	 * 执行具体的方法
	 *
	 * @param proceedingJoinPoint 切面
	 * @return Object
	 * @throws Throwable 异常
	 */
	private Object executeConcreteMethod(ProceedingJoinPoint proceedingJoinPoint, String mutexKey) throws Throwable {
		Object proceed;
		try {
			proceed = proceedingJoinPoint.proceed();
		} finally {
			disLockUtil.unlock(mutexKey, false);
		}
		return proceed;
	}

	/**
	 * 尝试从缓存中获取
	 *
	 * @param key key
	 * @return Object
	 */
	private Object tryGetFromCache(String key) {
		byte[] resultBytes;
		try (Jedis jedis = jedisPool.getResource()) {
			if (!jedis.exists(key)) {
				return null;
			}
			resultBytes = jedis.get(key.getBytes());
		}
		if (resultBytes != null) {
			LOGGER.info("key:{}获取到缓存", key);
			return KryoUtil.readFromByteArray(resultBytes);
		}
		return null;
	}

	/**
	 * 解析请求参数
	 *
	 * @param proceedingJoinPoint 切面
	 * @param size 参数个数
	 * @return List<Object>
	 */
	private List<Object> parseRequestParam(ProceedingJoinPoint proceedingJoinPoint, int size) {
		Object[] args = proceedingJoinPoint.getArgs();
		List<Object> argList = new ArrayList<>();
		for (int i = 0; i < size; i++) {
			if (args[i] instanceof HttpServletRequest) {
				HttpServletRequest request = (HttpServletRequest) args[i];
				argList.add(request.getParameterMap());
			} else if (args[i] instanceof HttpServletResponse || args[i] instanceof HttpSession
					|| args[i] instanceof HttpCookie) {
				continue;
			} else {
				argList.add(args[i]);
			}
		}
		return argList;
	}

	/**
	 * 生成方法签名
	 *
	 * @param method 方法
	 * @return String
	 */
	private String getSignature(Method method) {
		StringBuilder sb = new StringBuilder();
		String methodName = method.getName();
		if (StringUtils.isNotBlank(methodName)) {
			sb.append(method).append("#");
		}
		return sb.toString();
	}

}
