package com.eric.coupon.controller;

import com.eric.coupon.model.ReceiveCouponRequest;
import com.eric.coupon.service.CouponReceiveService;
import com.eric.coupon.service.UserReceiveCouponService;
import com.eric.seckill.cache.anno.LogDetail;
import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.CouponQueryResponse;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

/**
 * 优惠券
 *
 * @author wang.js on 2019/1/25.
 * @version 1.0
 */
@RestController
@RequestMapping("/couponMaster")
public class CouponController {

	@Resource
	private CouponReceiveService couponReceiveService;

	@Resource
	private UserReceiveCouponService userReceiveCouponService;

	/**
	 * 查找优惠券
	 *
	 * @param couponSns
	 * @return
	 */
	@PostMapping("/find")
	@LogDetail
	public CommonResult<List<CouponQueryResponse>> findCoupon(@RequestBody List<String> couponSns) {
		return couponReceiveService.findCoupons(couponSns);
	}

	/**
	 * 批量领券
	 *
	 * @param request
	 * @return
	 */
	@PostMapping("/receive")
	@LogDetail
	public CommonResult<Void> receiveCoupon(@RequestBody ReceiveCouponRequest request) {
		return userReceiveCouponService.receiveCoupon(request);
	}

}
