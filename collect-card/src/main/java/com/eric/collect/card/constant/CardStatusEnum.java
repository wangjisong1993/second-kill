package com.eric.collect.card.constant;

/**
 * 卡状态的枚举
 *
 * @author Eric on 2019/1/28.
 * @version 1.0
 */
public enum CardStatusEnum {

	NORMAL("正常", "1"),
	ABNORMAL("失效", "0"),
	MERGED("合成", "2"),
	;

	/**
	 * 状态描述
	 */
	private String statusDesc;
	/**
	 * 状态码
	 */
	private String statusCode;

	CardStatusEnum(String statusDesc, String statusCode) {
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
