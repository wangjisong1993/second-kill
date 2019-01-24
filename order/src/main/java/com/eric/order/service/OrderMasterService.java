package com.eric.order.service;

import com.eric.order.bean.OrderMaster;

/**
 * @author wang.js on 2019/1/24.
 * @version 1.0
 */
public interface OrderMasterService {

	/**
	 * 保存订单主表
	 *
	 * @param orderMaster
	 * @return
	 */
	int insert(OrderMaster orderMaster);
}
