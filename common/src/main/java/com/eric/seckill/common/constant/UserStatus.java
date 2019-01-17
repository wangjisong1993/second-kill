package com.eric.seckill.common.constant;

/**
 * 用户状态
 *
 * @author wang.js on 2019/1/17.
 * @version 1.0
 */
public enum UserStatus {

	ACTIVE("有效", "1"),
	DISACTIVE("无效", "0"),
	FREEZE("冻结", "2");

	/**
	 * 状态描述
	 */
	private String statusDesc;
	/**
	 * 状态码
	 */
	private String statusCode;

	UserStatus(String statusDesc, String statusCode) {
		this.statusDesc = statusDesc;
		this.statusCode = statusCode;
	}

	public String getStatusDesc() {
		return statusDesc;
	}

	public void setStatusDesc(String statusDesc) {
		this.statusDesc = statusDesc;
	}

	public String getStatusCode() {
		return statusCode;
	}

	public void setStatusCode(String statusCode) {
		this.statusCode = statusCode;
	}
}
