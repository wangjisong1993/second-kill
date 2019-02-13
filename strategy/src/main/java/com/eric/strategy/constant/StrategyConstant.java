package com.eric.strategy.constant;

/**
 * 优惠策略常用的常量
 *
 * @author Eric on 2019/2/5.
 * @version 1.0
 */
public enum StrategyConstant {

	DEFAULT_USER_ID("admin", "默认的用户id"),
	;

	/**
	 * 返回的代码
	 */
	private String code;
	/**
	 * 代码的描述
	 */
	private String desc;

	StrategyConstant(String code, String desc) {
		this.code = code;
		this.desc = desc;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}
}
