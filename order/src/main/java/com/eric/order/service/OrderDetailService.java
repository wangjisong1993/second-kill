package com.eric.order.service;

import com.eric.order.bean.OrderDetail;

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
}
