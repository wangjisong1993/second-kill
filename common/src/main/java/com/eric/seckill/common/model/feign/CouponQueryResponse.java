package com.eric.seckill.common.model.feign;

import lombok.Data;
import lombok.experimental.Accessors;

/**
 * 优惠券查询响应
 *
 * @author wang.js on 2019/1/25.
 * @version 1.0
 */
@Data
@Accessors(chain = true)
public class CouponQueryResponse {

	/**
	 * 优惠券号码
	 */
	private String couponSn;
	/**
	 * 是否可用
	 */
	private boolean canUse;
	/**
	 * 不可用原因
	 */
	private String errorMsg;
	/**
	 * 优惠券金额
	 */
	private Integer couponMoney;
	/**
	 * 满减金额
	 */
	private Integer fullMoney;
	/**
	 * 优惠券类型
	 */
	private String type;
	/**
	 * 所属地区
	 */
	private String regionId;
	/**
	 * 优惠券名称
	 */
	private String name;

}
