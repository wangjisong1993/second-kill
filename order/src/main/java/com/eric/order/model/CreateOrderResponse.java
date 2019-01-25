package com.eric.order.model;

import lombok.Data;
import lombok.experimental.Accessors;

/**
 * 创建订单的响应
 *
 * @author wang.js on 2019/1/24.
 * @version 1.0
 */
@Data
@Accessors(chain = true)
public class CreateOrderResponse {

	/**
	 * 订单号
	 */
	private String orderSn;

	/**
	 * 支付金额
	 */
	private Integer paymentMoney;
	/**
	 * 订单id
	 */
	private String orderId;
	/**
	 * 用户id
	 */
	private String userId;

}
