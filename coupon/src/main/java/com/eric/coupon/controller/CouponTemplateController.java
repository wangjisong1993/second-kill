package com.eric.coupon.controller;

import com.eric.coupon.model.TemplateAddRequest;
import com.eric.coupon.service.CouponTemplateService;
import com.eric.seckill.common.model.CommonResult;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * 优惠券模板
 *
 * @author Eric on 2019/1/26.
 * @version 1.0
 */
@RequestMapping("/couponTemplate")
@RestController
public class CouponTemplateController {

	@Resource
	private CouponTemplateService couponTemplateService;

	/**
	 * 添加优惠券模板
	 * @param request
	 * @return
	 */
	@PostMapping("/add")
	public CommonResult<Void> add(@RequestBody TemplateAddRequest request) {
		return couponTemplateService.add(request);
	}

}
