package com.eric.warehouse.constant;

/**
 * 库存锁住状态
 *
 * @author Eric on 2019/1/27.
 * @version 1.0
 */
public enum LockStatusEnum {
	LOCKED("锁定", "1"),
	UNLOCKED("解锁", "0"),
	SHIPPING("已发货", "2"),
	RECEIVED("已收货", "3"),
	;

	/**
	 * 状态描述
	 */
	private String statusDesc;
	/**
	 * 状态码
	 */
	private String statusCode;

	LockStatusEnum(String statusDesc, String statusCode) {
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
