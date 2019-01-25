package com.eric.order.service.base;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.order.bean.OrderMaster;
import com.eric.order.constant.OrderStatusEnum;
import com.eric.order.dao.OrderMasterMapper;
import com.eric.order.service.OrderMasterService;
import com.eric.seckill.common.constant.ErrorCodeEnum;
import com.eric.seckill.common.exception.CustomException;
import org.springframework.stereotype.Service;

import java.util.Date;

/**
 * @author wang.js on 2019/1/24.
 * @version 1.0
 */
@Service
public class OrderMasterServiceImpl extends ServiceImpl<OrderMasterMapper, OrderMaster>
		implements OrderMasterService {

	@Override
	public int insert(OrderMaster orderMaster) {
		return baseMapper.insert(orderMaster);
	}

	@Override
	public String findOrderStatusByOrderId(String orderSn) {
		return baseMapper.findOrderStatusByOrderId(orderSn);
	}

	@Override
	public Integer findPaymentMoneyByOrderId(String orderId) {
		return baseMapper.findPaymentMoneyByOrderId(orderId);
	}

	@Override
	public void updatePaymentMoney(int shouldPay, int couponMoney, String orderId) {
		OrderMaster entity = new OrderMaster().setPaymentMoney(shouldPay).setCouponDiscount(couponMoney)
				.setUpdateTime(new Date());
		boolean effect = update(entity, new QueryWrapper<OrderMaster>().eq("order_id", orderId));
		if (!effect) {
			throw new CustomException(ErrorCodeEnum.UPDATE_FAIL.getMessage());
		}
	}

	@Override
	public OrderMaster findOrderMasterByOrderId(String orderId) {
		return baseMapper.findOrderMasterByOrderId(orderId);
	}

	@Override
	public int updateOrderPaying(String orderId) {
		OrderMaster t = new OrderMaster().setOrderId(orderId).setOrderStatus(OrderStatusEnum.PAYING.getOrderStatusCode())
				.setUpdateTime(new Date());
		return baseMapper.updateById(t);
	}

	@Override
	public boolean updateOrderSuccess(OrderMaster t) {
		return updateById(t);
	}

}
