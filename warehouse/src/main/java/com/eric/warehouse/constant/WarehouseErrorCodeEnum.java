package com.eric.warehouse.constant;

/**
 * 返回给前端的错误码
 *
 * @author wang.js on 2019/1/23.
 * @version 1.0
 */
public enum WarehouseErrorCodeEnum {

	RECORD_DUPLICATE("261", "重复单号"),
	STOCK_NOT_ENOUGH("262", "库存不足"),
	SUPPLIER_NOT_FIND("263", "找不到供应商"),
	;

	/**
	 * 错误码
	 */
	private String errorCode;
	/**
	 * 错误信息
	 */
	private String errorMsg;


	WarehouseErrorCodeEnum(String errorCode, String errorMsg) {
		this.errorCode = errorCode;
		this.errorMsg = errorMsg;
	}

	public String getErrorCode() {
		return errorCode;
	}

	public void setErrorCode(String errorCode) {
		this.errorCode = errorCode;
	}

	public String getErrorMsg() {
		return errorMsg;
	}

	public void setErrorMsg(String errorMsg) {
		this.errorMsg = errorMsg;
	}
}
