package com.eric.coupon.service;

import com.eric.coupon.bean.CouponTemplate;
import com.eric.coupon.model.TemplateAddRequest;
import com.eric.seckill.common.model.CommonResult;

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

	/**
	 * 添加优惠券模板
	 * @param request
	 * @return
	 */
	CommonResult<Void> add(TemplateAddRequest request);
}
