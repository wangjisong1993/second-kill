package com.eric.seckill.common.constant;

/**
 * @author wang.js
 * @date 2018/12/18
 * @copyright yougou.com
 */
public enum CacheName {

	BIZ_ORDER("订单系统", "sys_lock_order_"),
	BIZ_USER("用户系统", "sys_lock_user"),
	BIZ_GOODS("商品系统", "sys_lock_goods");

	/**
	 * 缓存code
	 */
	private String code;

	/**
	 * 缓存name
	 */

	private String name;

	CacheName(String name, String code) {
		this.code = code;
		this.name = name;
	}

	public String getCode() {
		return code;
	}

	public String getName() {
		return name;
	}
}
