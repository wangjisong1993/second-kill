package com.eric.collect.card.constant;

/**
 * 卡抽中概率的类型
 *
 * @author wang.js on 2019/1/29.
 * @version 1.0
 */
public enum CardRateTypeEnum {
	COLLECT("集卡", "1"),
	COPY("复制", "2"),
	;

	/**
	 * 类型描述
	 */
	private String rateTypeDesc;
	/**
	 * 类型
	 */
	private String rateType;

	CardRateTypeEnum(String rateTypeDesc, String rateType) {
		this.rateTypeDesc = rateTypeDesc;
		this.rateType = rateType;
	}

	public String getRateTypeDesc() {
		return rateTypeDesc;
	}

	public void setRateTypeDesc(String rateTypeDesc) {
		this.rateTypeDesc = rateTypeDesc;
	}

	public String getRateType() {
		return rateType;
	}

	public void setRateType(String rateType) {
		this.rateType = rateType;
	}
}
