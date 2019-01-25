package com.eric.order.service;

import com.eric.order.bean.OrderMaster;

/**
 * @author wang.js on 2019/1/24.
 * @version 1.0
 */
public interface OrderMasterService {

	/**
	 * 保存订单主表
	 *
	 * @param orderMaster
	 * @return
	 */
	int insert(OrderMaster orderMaster);

	/**
	 * 根据订单号获取订单的状态
	 * @param orderSn
	 * @return
	 */
	String findOrderStatusByOrderId(String orderSn);

	/**
	 * 根据订单id获取订单的应付金额
	 * @param orderId
	 * @return
	 */
	Integer findPaymentMoneyByOrderId(String orderId);

	/**
	 * 更新订单用券情况
	 * @param shouldPay
	 * @param couponMoney
	 * @param orderId
	 */
	void updatePaymentMoney(int shouldPay, int couponMoney, String orderId);

	/**
	 * 根据订单id获取订单详情
	 * @param orderId
	 * @return
	 */
	OrderMaster findOrderMasterByOrderId(String orderId);

	/**
	 * 标记订单状态为正在支付
	 * @param orderId
	 * @return
	 */
	int updateOrderPaying(String orderId);

	/**
	 * 修改订单状态为支付完成
	 * @param t
	 * @return
	 */
	boolean updateOrderSuccess(OrderMaster t);
}
