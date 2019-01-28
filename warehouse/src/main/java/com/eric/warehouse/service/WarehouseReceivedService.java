package com.eric.warehouse.service;

import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.WarehouseReceivedRequest;
import com.eric.warehouse.bean.ProductLockDetail;

/**
 * @author wang.js on 2019/1/28.
 * @version 1.0
 */
public interface WarehouseReceivedService {

	/**
	 * 用户确认收货
	 *
	 * @param warehouseReceivedRequest
	 * @return
	 */
	CommonResult<Void> received(WarehouseReceivedRequest warehouseReceivedRequest);

}
