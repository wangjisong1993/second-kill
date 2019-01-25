package com.eric.order.service;

import com.eric.seckill.common.model.feign.ProductQueryResponse;

/**
 * @author wang.js on 2019/1/24.
 * @version 1.0
 */
public interface ProductMasterService {

	/**
	 * 获取商品id获取商品主信息
	 * @param productId
	 * @return
	 */
	ProductQueryResponse findProductMasterById(String productId);
}
