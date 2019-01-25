package com.eric.order.model;

import lombok.Data;
import lombok.experimental.Accessors;
import org.hibernate.validator.constraints.NotBlank;

import javax.validation.constraints.NotNull;

/**
 * 标记订单支付成功的请求
 *
 * @author wang.js on 2019/1/25.
 * @version 1.0
 */
@Data
@Accessors(chain = true)
public class OrderSuccessRequest {

	@NotBlank(message = "用户id不能为空")
	private String userId;

	@NotNull(message = "支付金额不能为空")
	private Integer paymentMoney;

	@NotBlank(message = "订单id不能为空")
	private String orderId;

	@NotBlank(message = "交易订单号不能为空")
	private String outTradeNo;

	@NotBlank(message = "签名不能为空")
	private String sign;

}
