package com.eric.seckill.common.constant;

/**
 * 用户积分类型
 * @author wang.js on 2019/1/17.
 * @version 1.0
 */
public enum UserPointType {

	REGISTER("用户注册", "1"),
	CONSUME("用户消费", "2"),
	ACTIVITY("用户活动", "3");

	/**
	 * 积分描述
	 */
	private String message;
	/**
	 * 积分类型
	 */
	private String type;

	UserPointType(String message, String type) {
		this.message = message;
		this.type = type;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
}
