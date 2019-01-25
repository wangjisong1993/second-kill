package com.eric.order.service;

import com.eric.order.model.OrderSuccessRequest;
import com.eric.seckill.common.model.CommonResult;

/**
 * @author wang.js on 2019/1/25.
 * @version 1.0
 */
public interface OrderSuccessService {

	/**
	 * 订单支付完成
	 *
	 * @param request
	 * @return
	 */
	CommonResult<Void> orderSuccess(OrderSuccessRequest request);
}
