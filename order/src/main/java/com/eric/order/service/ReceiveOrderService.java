package com.eric.order.service;

import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.ReceiveOrderRequest;

/**
 * 确认收货
 *
 * @author Eric on 2019/1/26.
 * @version 1.0
 */
public interface ReceiveOrderService {

	/**
	 * 订单确认收货
	 * @param request
	 * @return
	 */
	CommonResult<Void> orderReceive(ReceiveOrderRequest request);
}
