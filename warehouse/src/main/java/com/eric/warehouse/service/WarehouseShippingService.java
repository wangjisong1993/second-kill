package com.eric.warehouse.service;

import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.WarehouseShippingRequest;

/**
 * 仓库发货
 *
 * @author wang.js on 2019/1/28.
 * @version 1.0
 */
public interface WarehouseShippingService {

	/**
	 * 仓库发货
	 *
	 * @param request
	 * @return
	 */
	CommonResult<Void> shipping(WarehouseShippingRequest request);
}
