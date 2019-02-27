package com.eric.seckill.cache.aspect;

import com.eric.seckill.cache.anno.RedisCache;
import com.eric.seckill.cache.parser.CacheKeyParser;
import com.eric.seckill.cache.utils.KryoUtil;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

import javax.annotation.Resource;

/**
 * redis cache的注解
 *
 * @author wang.js on 2019/2/27.
 * @version 1.0
 */
@Aspect
@Order(2)
@Component
public class RedisCacheAspect {

	@Resource
	private JedisPool jedisPool;

	private static final Logger LOGGER = LoggerFactory.getLogger(RedisCacheAspect.class);

	/**
	 * 切面具体的操作
	 *
	 * @param proceedingJoinPoint 切面
	 * @param redisCache         注解
	 * @return Object
	 * @throws Throwable 抛出异常
	 */
	@Around("@annotation(redisCache)")
	public Object execute(ProceedingJoinPoint proceedingJoinPoint, RedisCache redisCache) throws Throwable {
		// 具体要缓存的key
		String key = CacheKeyParser.parse(proceedingJoinPoint, redisCache.cacheKey(), "");
		// 从缓存中获取
		try (Jedis jedis = jedisPool.getResource()) {
			byte[] resultBytes = jedis.get(key.getBytes());
			if (resultBytes != null) {
				LOGGER.info("key:{}获取到缓存", key);
				return KryoUtil.readFromByteArray(resultBytes);
			}
		}
		// 缓存获取不到则调用具体方法
		Object proceed = proceedingJoinPoint.proceed();
		// 缓存执行结果
		try (Jedis jedis = jedisPool.getResource()) {
			jedis.setnx(key.getBytes(), KryoUtil.writeToByteArray(proceed));
			jedis.expire(key, redisCache.expireTime());
		}
		return proceed;
	}

}
