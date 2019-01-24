package com.eric.order.service;

import com.eric.order.model.CreateOrderRequest;
import com.eric.order.model.CreateOrderResponse;
import com.eric.seckill.common.model.CommonResult;

/**
 * @author wang.js on 2019/1/24.
 * @version 1.0
 */
public interface CreateOrderService {

	/**
	 * 创建订单
	 *
	 * @param request
	 * @return
	 */
	CommonResult<CreateOrderResponse> createOrder(CreateOrderRequest request);
}