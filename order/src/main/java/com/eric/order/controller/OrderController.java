package com.eric.order.controller;

import com.eric.order.feign.UserMasterFeign;
import com.eric.order.model.CreateOrderRequest;
import com.eric.order.model.CreateOrderResponse;
import com.eric.order.model.UseCouponRequest;
import com.eric.order.model.UseCouponResponse;
import com.eric.order.service.CreateOrderService;
import com.eric.order.service.UseCouponService;
import com.eric.seckill.cache.anno.LogDetail;
import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.UserQueryRequest;
import com.eric.seckill.common.model.feign.UserQueryResponse;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * 订单相关的接口
 *
 * @author Eric on 2019/1/24.
 * @version 1.0
 */
@RequestMapping("/api")
@RestController
public class OrderController {

	@Resource
	private UserMasterFeign feign;

	@Resource
	private CreateOrderService createOrderService;

	@Resource
	private UseCouponService useCouponService;

	/**
	 * 创建订单
	 * @param request
	 * @return
	 */
	@PostMapping("/createOrder")
	@LogDetail
	public CommonResult<CreateOrderResponse> createOrder(@RequestBody CreateOrderRequest request) {
		return createOrderService.createOrder(request);
	}

	/**
	 * 顾客用券
	 * @param request
	 * @return
	 */
	@PostMapping("/useCoupon")
	@LogDetail
	public CommonResult<UseCouponResponse> useCoupon(@RequestBody UseCouponRequest request) {
		return useCouponService.useCoupon(request);
	}

	/**
	 * 根据用户id查找用户
	 *
	 * @param userId
	 * @return
	 */
	@GetMapping("/findUser")
	public CommonResult<UserQueryResponse> findUser(@RequestParam("userId") String userId) {
		return feign.findUserByUserIdOrLoginName(new UserQueryRequest().setUserId(userId));
	}


}
