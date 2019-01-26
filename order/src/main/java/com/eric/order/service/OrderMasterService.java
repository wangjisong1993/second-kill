package com.eric.order.service;

import com.eric.order.bean.OrderMaster;
import com.eric.order.model.OrderQueryRequest;
import com.eric.seckill.common.model.feign.ReceiveOrderRequest;
import com.eric.seckill.common.model.feign.ShippingRequest;

import java.util.List;

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
	 *
	 * @param orderId
	 * @return
	 */
	String findOrderStatusByOrderId(String orderId);

	/**
	 * 根据订单id获取订单的应付金额
	 *
	 * @param orderId
	 * @return
	 */
	Integer findPaymentMoneyByOrderId(String orderId);

	/**
	 * 更新订单用券情况
	 *
	 * @param shouldPay
	 * @param couponMoney
	 * @param orderId
	 */
	void updatePaymentMoney(int shouldPay, int couponMoney, String orderId);

	/**
	 * 根据订单id获取订单详情
	 *
	 * @param orderId
	 * @return
	 */
	OrderMaster findOrderMasterByOrderId(String orderId);

	/**
	 * 标记订单状态为正在支付
	 *
	 * @param orderId
	 * @param payMethod
	 * @return
	 */
	int updateOrderPaying(String orderId, String payMethod);

	/**
	 * 修改订单状态为支付完成
	 *
	 * @param t
	 * @return
	 */
	boolean updateOrderSuccess(OrderMaster t);

	/**
	 * 根据用户id列出所有的订单
	 *
	 * @param request
	 * @return
	 */
	List<OrderMaster> listOrderMastersByUserId(OrderQueryRequest request);

	/**
	 * 订单发货
	 * @param request
	 */
	void orderShipping(ShippingRequest request);

	/**
	 * 确认收货
	 * @param request
	 */
	void orderReceive(ReceiveOrderRequest request);
}
