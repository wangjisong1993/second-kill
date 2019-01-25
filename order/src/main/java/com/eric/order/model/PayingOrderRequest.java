package com.eric.order.model;

import lombok.Data;
import lombok.experimental.Accessors;
import org.hibernate.validator.constraints.NotBlank;

import javax.validation.constraints.NotNull;

/**
 * 订单准备支付
 *
 * @author wang.js on 2019/1/25.
 * @version 1.0
 */
@Data
@Accessors(chain = true)
public class PayingOrderRequest {

	/**
	 * 用户id
	 */
	@NotBlank(message = "用户id不能为空")
	private String userId;
	/**
	 * 订单id
	 */
	@NotBlank(message = "订单id不能为空")
	private String orderId;
	/**
	 * 支付金额
	 */
	@NotNull(message = "支付金额不能为空")
	private Integer paymentMoney;

	/**
	 * 签名
	 */
	@NotBlank(message = "签名不能为空")
	private String sign;

}
