package com.eric.coupon.model;

import lombok.Data;
import lombok.experimental.Accessors;

/**
 * 领取券响应
 *
 * @author wang.js on 2019/1/25.
 * @version 1.0
 */
@Data
@Accessors(chain = true)
public class ReceiveCouponResponse {

	/**
	 * 用户id
	 */
	private String userId;
	/**
	 * 优惠券号码
	 */
	private String couponSn;

}
