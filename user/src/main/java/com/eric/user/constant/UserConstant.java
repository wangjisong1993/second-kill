package com.eric.user.constant;

/**
 * 用户模块的常量
 *
 * @author wang.js on 2019/1/22.
 * @version 1.0
 */
public class UserConstant {

	private UserConstant() {

	}

	/**
	 * 默认的用户id
	 */
	public static final String DEFAULT_USER_ID = "admin";
	/**
	 * 表示true
	 */
	public static final String CON_TRUE = "1";
	/**
	 * 表示false
	 */
	public static final String CON_FALSE = "0";
	/**
	 * 冻结用户
	 */
	public static final String MODIFY_OPERATION_FREEZE = "freeze";
	/**
	 * 作废用户
	 */
	public static final String MODIFY_OPERATION_DISACTIVE = "disactive";
	/**
	 * 默认密码
	 */
	public static final String DEFAULT_PASSWORD = "123456";

}
