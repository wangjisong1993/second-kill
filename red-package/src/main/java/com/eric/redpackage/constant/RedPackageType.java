package com.eric.redpackage.constant;

/**
 * 红包类型
 *
 * @author wang.js on 2019/2/13.
 * @version 1.0
 */
public enum RedPackageType {

	FIX_MONEY("定额红包", "1"),
	NOT_FIXED("拼手气红包", "2"),
	;

	/**
	 * 类型描述
	 */
	private String typeDesc;
	/**
	 * 类型编码
	 */
	private String typeCode;

	RedPackageType(String typeDesc, String typeCode) {
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
