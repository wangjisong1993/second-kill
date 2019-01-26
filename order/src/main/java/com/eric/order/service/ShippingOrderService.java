package com.eric.order.service;

import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.ShippingRequest;

/**
 * 订单发货
 *
 * @author Eric on 2019/1/26.
 * @version 1.0
 */
public interface ShippingOrderService {

	/**
	 * 订单发货
	 *
	 * @param request
	 * @return
	 */
	CommonResult<Void> orderShipping(ShippingRequest request);
}
