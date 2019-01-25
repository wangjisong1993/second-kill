package com.eric.order.model;

import lombok.Data;
import lombok.experimental.Accessors;

import java.util.List;

/**
 * @author wang.js on 2019/1/25.
 * @version 1.0
 */
@Data
@Accessors(chain = true)
public class UseCouponResponse {

	/**
	 * 用户id
	 */
	private String userId;
	/**
	 * 使用成功的优惠券号码
	 */
	private List<String> useSuccess;
	/**
	 * 使用失败的优惠券号码
	 */
	private List<String> useFail;
	/**
	 * 订单id
	 */
	private String orderId;
	/**
	 * 最后实付金额
	 */
	private Integer shouldPay;
}
