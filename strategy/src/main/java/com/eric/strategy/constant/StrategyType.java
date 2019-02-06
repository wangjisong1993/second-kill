package com.eric.strategy.constant;

/**
 * 策略类型的美剧
 *
 * @author Eric on 2019/2/5.
 * @version 1.0
 */
public enum StrategyType {
	NORMAL_DAY("普通日优惠", "1"),
	MEMBER_DAY("会员日优惠", "2"),
	;

	/**
	 * 类型描述
	 */
	private String typeDesc;
	/**
	 * 类型编码
	 */
	private String typeCode;

	StrategyType(String typeDesc, String typeCode) {
		this.typeDesc = typeDesc;
		this.typeCode = typeCode;
	}

	public String getTypeDesc() {
		return typeDesc;
	}

	public void setTypeDesc(String typeDesc) {
		this.typeDesc = typeDesc;
	}

	public String getTypeCode() {
		return typeCode;
	}

	public void setTypeCode(String typeCode) {
		this.typeCode = typeCode;
	}
}
