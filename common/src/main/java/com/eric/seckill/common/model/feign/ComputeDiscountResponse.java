package com.eric.seckill.common.model.feign;

import lombok.Data;
import lombok.experimental.Accessors;

/**
 * 计算优惠的响应
 *
 * @author Eric on 2019/2/5.
 * @version 1.0
 */
@Data
@Accessors(chain = true)
public class ComputeDiscountResponse {

	/**
	 * 订单号
	 */
	private String orderNumber;
	/**
	 * 订单金额
	 */
	private Integer orderMoney;
	/**
	 * 优惠券实际使用金额
	 */
	private Integer actualCouponDiscount;

	/**
	 * 实际折扣金额
	 */
	private Integer actualDiscountMoney;

	/**
	 * 实际支付金额
	 */
	private Integer shouldPay;

	/**
	 * 优惠券最大使用金额
	 */
	private Integer maxCouponDiscount;
	/**
	 * 最大优惠金额, 不包含现金券
	 */
	private Integer maxDiscountMoney;

}
