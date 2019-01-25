package com.eric.coupon.controller;

import com.eric.coupon.model.ReceiveCouponRequest;
import com.eric.coupon.service.CouponReceiveService;
import com.eric.coupon.service.UserReceiveCouponService;
import com.eric.seckill.cache.anno.LogDetail;
import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.ConsumeCouponRequest;
import com.eric.seckill.common.model.feign.CouponQueryResponse;
import com.eric.seckill.common.model.feign.UsingCouponRequest;
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
	 * 标记优惠券为正在使用中
	 *
	 * @param request
	 * @return
	 */
	@PostMapping("/markAsUsing")
	@LogDetail
	public CommonResult<Void> markAsUsing(@RequestBody UsingCouponRequest request) {
		return couponReceiveService.markAsUsing(request);
	}

	/**
	 * 标记优惠券为已使用
	 *
	 * @param request
	 * @return
	 */
	@PostMapping("/consume")
	@LogDetail
	public CommonResult<Void> consume(@RequestBody ConsumeCouponRequest request) {
		return couponReceiveService.consume(request);
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
