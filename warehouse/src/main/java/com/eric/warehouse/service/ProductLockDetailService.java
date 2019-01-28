package com.eric.warehouse.service;

import com.eric.warehouse.bean.ProductLockDetail;

import java.util.List;

/**
 * @author Eric on 2019/1/27.
 * @version 1.0
 */
public interface ProductLockDetailService {

	/**
	 * 根据订单id和商品id判断是否有占用记录
	 *
	 * @param orderId
	 * @param productId
	 * @return
	 */
	int countByOrderIdAndProductId(String orderId, String productId);

	/**
	 * 保存订单锁定记录
	 * @param t
	 * @return
	 */
	boolean insert(ProductLockDetail t);

	/**
	 * 列出所有正在占用的
	 * @param orderId
	 * @param statusCode
	 * @return
	 */
	List<ProductLockDetail> listByOrderId(String orderId, String statusCode);

	/**
	 * 批量更新
	 * @param lockDetails
	 */
	void updateBatch(List<ProductLockDetail> lockDetails);
}
