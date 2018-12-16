package com.eric.cache.anno;

/**
 * @author Eric on 2018/12/16.
 * @version 1.0
 */
public @interface MethodCache {

	/**
	 * 指定缓存的过期时间, 默认60秒
	 *
	 * @return
	 */
	int expireSeconds() default 60;

}
