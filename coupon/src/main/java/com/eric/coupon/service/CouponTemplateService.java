package com.eric.coupon.service;

import com.eric.coupon.bean.CouponTemplate;

/**
 * @author wang.js on 2019/1/25.
 * @version 1.0
 */
public interface CouponTemplateService {

	/**
	 * 根据模板id获取优惠券模板
	 * @param couponTemplateId
	 * @return
	 */
	CouponTemplate findCouponTemplateById(String couponTemplateId);
}
