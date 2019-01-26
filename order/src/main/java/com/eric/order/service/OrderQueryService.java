package com.eric.order.service;

import com.eric.order.model.OrderQueryRequest;
import com.eric.order.model.OrderQueryResponse;
import com.eric.seckill.common.model.CommonResult;

import java.util.List;

/**
 * 订单查询
 *
 * @author Eric on 2019/1/26.
 * @version 1.0
 */
public interface OrderQueryService {

	/**
	 * 根据用户id分页查询用户的订单记录
	 * @param request
	 * @return
	 */
	CommonResult<List<OrderQueryResponse>> findOrder(OrderQueryRequest request);
}
