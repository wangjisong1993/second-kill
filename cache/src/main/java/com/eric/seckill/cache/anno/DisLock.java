package com.eric.seckill.cache.anno;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * 分布式锁的注解
 *
 * @author wang.js on 2019/1/29.
 * @version 1.0
 */
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.METHOD)
public @interface DisLock {

	/**
	 * 分布式锁的key
	 *
	 * @return
	 */
	String key();

	/**
	 * 分布式锁用的业务场景id
	 *
	 * @return
	 */
	String biz();

	/**
	 * 过期时间, 默认是5秒
	 * 单位是秒
	 *
	 * @return
	 */
	int expireTime() default 5;

}
