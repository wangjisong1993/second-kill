package com.eric.warehouse.service;

import com.eric.warehouse.bean.ProductInStockLogs;

/**
 * @author Eric on 2019/1/27.
 * @version 1.0
 */
public interface ProductInStockLogsService {


	/**
	 * 保存商品入库记录
	 *
	 * @param log
	 * @return
	 */
	boolean insertLogs(ProductInStockLogs log);

	/***
	 * 根据采购订单号进行计数
	 * @param contractNo
	 * @return
	 */
	int countByContractNo(String contractNo);
}
