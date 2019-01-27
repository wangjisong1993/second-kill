package com.eric.warehouse.service;


import com.eric.seckill.common.model.CommonResult;
import com.eric.warehouse.model.InStockRequest;

/**
 * 商品入库
 *
 * @author Eric on 2019/1/27.
 * @version 1.0
 */
public interface InStockService {

	/**
	 * 商品入库请求
	 *
	 * @param request
	 * @return
	 */
	CommonResult<Void> add(InStockRequest request);
}
