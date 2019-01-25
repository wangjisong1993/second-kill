package com.eric.order.service;

import com.eric.order.model.UseCouponRequest;
import com.eric.order.model.UseCouponResponse;
import com.eric.seckill.common.model.CommonResult;

/**
 * @author wang.js on 2019/1/25.
 * @version 1.0
 */
public interface UseCouponService {

	/**
	 * 顾客用券
	 * @param request
	 * @return
	 */
	CommonResult<UseCouponResponse> useCoupon(UseCouponRequest request);
}
