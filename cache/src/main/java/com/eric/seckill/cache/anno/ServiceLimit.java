package com.eric.seckill.cache.anno;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * 限流注解
 *
 * @author Eric on 2019/2/20.
 * @version 1.0
 */
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.METHOD)
public @interface ServiceLimit {

	/**
	 * 超时时间, 默认是3秒
	 *
	 * @return int
	 */
	int expireTimeSeconds() default 3;

}
