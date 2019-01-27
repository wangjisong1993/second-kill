package com.eric.warehouse.constant;

/**
 * 供应商状态的枚举
 *
 * @author Eric on 2019/1/27.
 * @version 1.0
 */
public enum SupplierStatusEnum {

	STATUS_NORMAL("正常", "1"),
	STATUS_ABNORMAL("失效", "0"),
	;

	/**
	 * 状态描述
	 */
	private String statusDesc;
	/**
	 * 状态码
	 */
	private String statusCode;

	SupplierStatusEnum(String statusDesc, String statusCode) {
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
