package com.eric.seckill.common.constant;

/**
 * @author wang.js on 2019/1/24.
 * @version 1.0
 */
public enum UserPointSourceEnum {
	USER_CHARGE("用户充值赠送积分", "1"),
	ORDER_PRESENT("用户下单赠送", "2"),
	LOTTERY_CONSUME("用户抽奖扣除", "3"),
	;

	/**
	 * 来源描述
	 */
	private String sourceDesc;
	/**
	 * 来源类型
	 */
	private String sourceType;

	UserPointSourceEnum(String sourceDesc, String sourceType) {
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
