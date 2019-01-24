package com.eric.order.service;

import com.eric.order.model.CreateOrderRequest; /**
 * @author wang.js on 2019/1/24.
 * @version 1.0
 */
public interface WarehouseProductService {

	/**
	 * 获取该商品明细的可用仓库id
	 * @param request
	 * @return
	 */
	String findWarehouseId(CreateOrderRequest request);
}
