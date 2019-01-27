package com.eric.warehouse.service;

import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.WarehouseQueryRequest;
import com.eric.warehouse.model.InStockRequest;

/**
 * @author Eric on 2019/1/27.
 * @version 1.0
 */
public interface WarehouseProductService {

	/**
	 * 查询可以发货的仓库id
	 *
	 * @param request
	 * @return
	 */
	CommonResult<String> find(WarehouseQueryRequest request);

	/**
	 * 更新库存主表
	 * @param request
	 */
	boolean saveOrUpdateProductCnt(InStockRequest request);
}
