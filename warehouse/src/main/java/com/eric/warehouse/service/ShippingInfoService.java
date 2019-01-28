package com.eric.warehouse.service;

import com.eric.seckill.common.model.CommonResult;

/**
 * @author Eric on 2019/1/27.
 * @version 1.0
 */
public interface ShippingInfoService {
	/**
	 * 根据仓库id获取运费
	 *
	 * @param warehouseId
	 * @return
	 */
	CommonResult<Integer> findShippingPriceByWarehouseId(String warehouseId);
}
