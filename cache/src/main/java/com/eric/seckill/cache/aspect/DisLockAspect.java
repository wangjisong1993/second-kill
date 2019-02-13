package com.eric.seckill.cache.aspect;

import com.eric.seckill.cache.anno.DisLock;
import com.eric.seckill.cache.utils.DisLockUtil;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.reflect.CodeSignature;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.concurrent.TimeUnit;

/**
 * 处理@DisLock注解的切面
 *
 * @author wang.js on 2019/1/29.
 * @version 1.0
 */
@Aspect
@Order(value = 1)
@Component
public class DisLockAspect {

	@Resource
	private DisLockUtil disLockUtil;

	private static final Logger LOGGER = LoggerFactory.getLogger(DisLockAspect.class);

	private static String[] types = {"java.lang.Integer", "java.lang.Double",
			"java.lang.Float", "java.lang.Long", "java.lang.Short",
			"java.lang.Byte", "java.lang.Boolean", "java.lang.Char",
			"java.lang.String", "int", "double", "long", "short", "byte",
			"boolean", "char", "float"};

	private static final int MIN_EXPIRE_TIME = 3;

	@Around(value = "@annotation(disLock)")
	public Object execute(ProceedingJoinPoint proceedingJoinPoint, DisLock disLock) throws Throwable {
		int expireTIme = disLock.expireTime() < MIN_EXPIRE_TIME ? MIN_EXPIRE_TIME : disLock.expireTime();

		// 解析实际参数的key
		String key = disLock.key().replace("#", "");
		StringTokenizer stringTokenizer = new StringTokenizer(key, ".");

		Map<String, Object> nameAndValue = getNameAndValue(proceedingJoinPoint);
		Object actualKey = null;

		while (stringTokenizer.hasMoreTokens()) {
			if (actualKey == null) {
				actualKey = nameAndValue.get(stringTokenizer.nextToken());
			} else {
				actualKey = getPropValue(actualKey, stringTokenizer.nextToken());
			}
		}

		String disKey = disLock.biz() + actualKey;
		boolean lock = disLockUtil.lock(disKey, expireTIme);
		int count = 1;
		while (!lock && count < 3) {
			lock = disLockUtil.lock(disKey, expireTIme);
			count++;
			TimeUnit.SECONDS.sleep(1);
		}
		Object proceed = null;
		if (lock) {
			// 允许查询
			try {
				proceed = proceedingJoinPoint.proceed();
			} finally {
				// 删除分布式锁
				disLockUtil.unlock(disKey, false);
			}
		} else {
			if (LOGGER.isDebugEnabled()) {
				LOGGER.debug("key:{}没有获取到锁", disKey);
			}
		}
		return proceed;
	}

	/**
	 * 获取参数Map集合
	 *
	 * @param joinPoint
	 * @return
	 */
	private Map<String, Object> getNameAndValue(ProceedingJoinPoint joinPoint) {
		Map<String, Object> param = new HashMap<>();

		Object[] paramValues = joinPoint.getArgs();
		String[] paramNames = ((CodeSignature) joinPoint.getSignature()).getParameterNames();

		for (int i = 0; i < paramNames.length; i++) {
			param.put(paramNames[i], paramValues[i]);
		}
		return param;
	}

	/**
	 * 获取指定参数名的参数值
	 *
	 * @param obj
	 * @param propName
	 * @return
	 * @throws IllegalAccessException
	 */
	public static Object getPropValue(Object obj, String propName) throws IllegalAccessException {
		Field[] fields = obj.getClass().getDeclaredFields();
		for (Field f : fields) {
			if (f.getName().equals(propName)) {
				//在反射时能访问私有变量
				f.setAccessible(true);
				return f.get(obj);
			}
		}
		return null;
	}

}
