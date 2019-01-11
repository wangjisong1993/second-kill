package com.eric.seckill.cache.utils;

import com.eric.seckill.common.constant.CacheName;

/**
 * @author wang.js
 * @date 2018/12/18
 * @copyright yougou.com
 */
public class CacheNameUtil {

	/**
	 * 私有化构造方法
	 */
	private CacheNameUtil() {
	}

	/**
	 * 按照不同的业务含义获取redis的key
	 *
	 * @param cacheName 缓存名字
	 * @param key 存储的key
	 * @return String
	 */
	public static String getCacheName(CacheName cacheName, String key) {
		StringBuilder sb = new StringBuilder();
		sb.append(cacheName.getCode()).append(key);
		return sb.toString();
	}

}
