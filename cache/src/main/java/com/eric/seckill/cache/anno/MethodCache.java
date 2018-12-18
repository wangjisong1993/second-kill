package com.eric.seckill.cache.anno;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * @author Eric on 2018/12/16.
 * @version 1.0
 */
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.METHOD)
public @interface MethodCache {

	/**
	 * 指定缓存的过期时间, 默认60秒
	 *
	 * @return
	 */
	int expireSeconds() default 60;

	/**
	 * 缓存的key, 如果不指定, 默认按照方法的签名作为key
	 *
	 * @return
	 */
	String key() default "";

	/**
	 * 缓存防击穿的标志, 默认是开启防击穿功能
	 *
	 * @return
	 */
	boolean limitQuery() default true;

	/**
	 * 防击穿的时限
	 *
	 * @return
	 */
	int limitQuerySeconds() default 5;

}
