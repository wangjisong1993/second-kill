package com.eric.seckill.cache.anno;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * 使用redis缓存的注解
 *
 * @author wang.js on 2019/2/27.
 * @version 1.0
 */
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.METHOD)
public @interface RedisCache {

	/**
	 * 缓存的key
	 * 格式是#key1.key2
	 *
	 * @return String
	 */
	String cacheKey();

	/**
	 * 过期时间
	 *
	 * @return int
	 */
	int expireTime() default 3;

}
