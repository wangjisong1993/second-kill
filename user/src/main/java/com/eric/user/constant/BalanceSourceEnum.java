package com.eric.user.constant;

/**
 * 用户余额来源的枚举
 *
 * @author Eric on 2019/1/23.
 * @version 1.0
 */
public enum BalanceSourceEnum {

	USER_CHARGE("用户充值", "1");

	/**
	 * 来源描述
	 */
	private String sourceDesc;
	/**
	 * 来源类型
	 */
	private String sourceType;

	BalanceSourceEnum(String sourceDesc, String sourceType) {
		this.sourceDesc = sourceDesc;
		this.sourceType = sourceType;
	}

	public String getSourceDesc() {
		return sourceDesc;
	}

	public void setSourceDesc(String sourceDesc) {
		this.sourceDesc = sourceDesc;
	}

	public String getSourceType() {
		return sourceType;
	}

	public void setSourceType(String sourceType) {
		this.sourceType = sourceType;
	}
}
