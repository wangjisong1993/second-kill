package com.eric.order.service;

import com.eric.order.bean.OrderDetail;
import com.eric.order.model.OrderDetailQueryResponse;

import java.util.List;

/**
 * @author wang.js on 2019/1/24.
 * @version 1.0
 */
public interface OrderDetailService {

	/**
	 * 批量保存
	 *
	 * @param details
	 * @return
	 */
	boolean insertBatch(List<OrderDetail> details);

	/**
	 * 根据订单id列出订单明细
	 * @param orderId
	 * @return
	 */
	List<OrderDetailQueryResponse> listOrderDetailQueryResponseByOrderId(String orderId);
}
