package com.eric.order.model;

import lombok.Data;
import lombok.experimental.Accessors;
import org.hibernate.validator.constraints.NotBlank;

import javax.validation.constraints.NotNull;
import java.util.List;

/**
 * 创建订单的请求
 *
 * @author wang.js on 2019/1/24.
 * @version 1.0
 */
@Data
@Accessors(chain = true)
public class CreateOrderRequest {

	/**
	 * 用户id
	 */
	@NotBlank(message = "用户id不能为空")
	private String userId;

	/**
	 * 收货人姓名
	 */
	@NotBlank(message = "收货人姓名不能为空")
	private String shippingUser;

	@NotNull(message = "运费不能为空")
	private Integer shippingMoney;

	/**
	 * 订单明细
	 */
	@NotNull(message = "订单明细不能为空")
	private List<CreateOrderDetail> details;

	/**
	 * 交易签名
	 */
	@NotNull(message = "签名不能为空")
	private String sign;

}
