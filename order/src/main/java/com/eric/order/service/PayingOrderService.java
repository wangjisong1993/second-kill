package com.eric.order.service;

import com.eric.order.model.PayingOrderRequest;
import com.eric.order.model.PayingOrderResponse;
import com.eric.seckill.common.model.CommonResult;

/**
 * 订单支付中
 *
 * @author wang.js on 2019/1/25.
 * @version 1.0
 */
public interface PayingOrderService {

	/**
	 * 订单支付中
	 * @param request
	 * @return
	 */
	CommonResult<PayingOrderResponse> payingOrder(PayingOrderRequest request);
}
