package com.eric.product.service;

import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.ProductQueryResponse;

/**
 * @author wang.js on 2019/1/25.
 * @version 1.0
 */
public interface ProductMasterService {

	/**
	 * 查询订单信息
	 * @param productId
	 * @return
	 */
	CommonResult<ProductQueryResponse> findProductMasterById(String productId);
}
