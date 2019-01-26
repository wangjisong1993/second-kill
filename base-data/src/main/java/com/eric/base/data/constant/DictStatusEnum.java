package com.eric.base.data.constant;

/**
 * 数据字典状态的枚举
 *
 * @author Eric on 2019/1/26.
 * @version 1.0
 */
public enum DictStatusEnum {

	NORMAL("正常", "1"),
	ABNORMAL("删除", "0"),
	;

	/**
	 * 状态描述
	 */
	private String statusDesc;
	/**
	 * 状态码
	 */
	private String statusCode;

	DictStatusEnum(String statusDesc, String statusCode) {
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
