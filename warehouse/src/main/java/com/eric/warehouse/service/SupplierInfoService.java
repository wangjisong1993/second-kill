package com.eric.warehouse.service;

import com.eric.seckill.common.model.CommonResult;
import com.eric.warehouse.model.AddSupplierInfoRequest;

/**
 * @author Eric on 2019/1/27.
 * @version 1.0
 */
public interface SupplierInfoService {

	/**
	 * 供应商计数
	 *
	 * @param supplierId
	 * @return
	 */
	int countBySupplierId(String supplierId);

	/**
	 * 添加供应商
	 *
	 * @param request
	 * @return
	 */
	CommonResult<Void> add(AddSupplierInfoRequest request);
}
