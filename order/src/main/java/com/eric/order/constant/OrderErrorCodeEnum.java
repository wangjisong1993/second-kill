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
	ORDER_NOT_CREATED("订单不是新建状态", "254"),
	USE_COUPON_SUCCESS("用券成功", "0"),
	USE_COUPON_FAIL("用券失败", "255"),
	ORDER_NOT_FOUND("订单不存在", "256"),
	PAYMENT_MONEY_ERROR("支付金额不正确", "257"),
	ORDER_NOT_PAYING("订单状态不是支付中", "258"),
	PLACE_ORDER_SUCCESS("下单成功", "0"),
	ORDER_STATUS_ERROR("订单状态异常", "259"),
	ERROR_STATUS_FOR_RECEIVE("当前状态不可收货", "260"),
	ERROR_STATUS_FOR_SHIPPING("当前状态不可发货", "261"),
	RECEIVE_SUCCESS("收货成功", "0"),
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
