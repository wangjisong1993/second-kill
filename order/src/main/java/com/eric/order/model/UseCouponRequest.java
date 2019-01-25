package com.eric.order.model;

import lombok.Data;
import lombok.experimental.Accessors;
import org.hibernate.validator.constraints.NotBlank;

import javax.validation.constraints.NotNull;
import java.util.List;

/**
 * 顾客主动用券
 *
 * @author wang.js on 2019/1/25.
 * @version 1.0
 */
@Data
@Accessors(chain = true)
public class UseCouponRequest {

	/**
	 * 订单id
	 */
	@NotBlank(message = "订单id不能为空")
	private String orderId;

	/**
	 * 用户id
	 */
	@NotBlank(message = "用户id")
	private String userId;
	/**
	 * 优惠券号码
	 */
	@NotNull(message = "优惠券号码")
	private List<String> couponNumbers;
	/**
	 * 请求签名
	 */
	@NotBlank(message = "签名不能为空")
	private String sign;

}
