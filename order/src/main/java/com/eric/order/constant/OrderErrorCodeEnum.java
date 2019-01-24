package com.eric.order.constant;

/**
 * @author wang.js on 2019/1/24.
 * @version 1.0
 */
public enum OrderErrorCodeEnum {

	PRODUCT_NOT_FOUND("商品不存在", "250"),
	STOCK_NOT_ENOUGH("商品库存不足", "251"),
	PRODUCT_DOWN("商品已下架", "252"),
	PRODUCT_NOT_AUDIT("商品未审核", "253"),
	;
	/**
	 * 定义的message
	 */
	private String message;
	/**
	 * 定义的错误码
	 */
	private String errCode;

	OrderErrorCodeEnum(String message, String errCode) {
		this.message = message;
		this.errCode = errCode;
	}

	public String getMessage() {
		return message;
	}

	protected void setMessage(String message) {
		this.message = message;
	}

	public String getErrCode() {
		return errCode;
	}

	protected void setErrCode(String errCode) {
		this.errCode = errCode;
	}
}
