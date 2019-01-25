package com.eric.order.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.eric.order.bean.OrderMaster;
import org.apache.ibatis.annotations.Param;

/**
 * @author wang.js on 2019/1/24.
 * @version 1.0
 */
public interface OrderMasterMapper extends BaseMapper<OrderMaster> {

	/**
	 * 根据订单号获取订单的状态
	 * @param orderId
	 * @return
	 */
	String findOrderStatusByOrderId(@Param("orderId") String orderId);

	/**
	 * 根据订单id获取订单的应付金额
	 * @param orderId
	 * @return
	 */
	Integer findPaymentMoneyByOrderId(@Param("orderId") String orderId);
}
