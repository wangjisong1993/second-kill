package com.eric.coupon.service;

import com.eric.coupon.model.ReceiveCouponRequest;
import com.eric.seckill.common.model.CommonResult;

/**
 * 领券
 *
 * @author wang.js on 2019/1/25.
 * @version 1.0
 */
public interface UserReceiveCouponService {
	/**
	 * 批量给用户送券
	 *
	 * @param request
	 * @return
	 */
	CommonResult<Void> receiveCoupon(ReceiveCouponRequest request);
}
