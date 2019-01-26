package com.eric.order.constant;

/**
 * 订单状态
 *
 * @author wang.js on 2019/1/24.
 * @version 1.0
 */
public enum OrderStatusEnum {

	CREATED("新建", "1"),
	PAYING("支付中", "2"),
	PAY_SUCCESS("支付成功", "3"),
	SHIPPING("已发货", "4"),
	RECEIVE("已收货", "5"),
	CLOSED("交易已关闭", "6"),
	APPLY_REFUND("申请退款", "7"),
	PERMIT_REFUND("同意退款", "8"),
	REFUNDED("已退款", "9"),
	;

	/**
	 * 订单状态描述
	 */
	private String orderStatusDesc;
	/**
	 * 订单状态编码
	 */
	private String orderStatusCode;

	OrderStatusEnum(String orderStatusDesc, String orderStatusCode) {
		this.orderStatusDesc = orderStatusDesc;
		this.orderStatusCode = orderStatusCode;
	}

	public String getOrderStatusDesc() {
		return orderStatusDesc;
	}

	public void setOrderStatusDesc(String orderStatusDesc) {
		this.orderStatusDesc = orderStatusDesc;
	}

	public String getOrderStatusCode() {
		return orderStatusCode;
	}

	public void setOrderStatusCode(String orderStatusCode) {
		this.orderStatusCode = orderStatusCode;
	}
}
