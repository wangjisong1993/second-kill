package com.eric.order.service.base;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.order.bean.OrderMaster;
import com.eric.order.constant.OrderStatusEnum;
import com.eric.order.dao.OrderMasterMapper;
import com.eric.order.model.OrderQueryRequest;
import com.eric.order.service.OrderMasterService;
import com.eric.seckill.common.constant.ErrorCodeEnum;
import com.eric.seckill.common.exception.CustomException;
import com.github.pagehelper.PageHelper;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

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
	public int updateOrderPaying(String orderId, String payMethod) {
		OrderMaster t = new OrderMaster().setOrderId(orderId).setOrderStatus(OrderStatusEnum.PAYING.getOrderStatusCode())
				.setUpdateTime(new Date()).setPaymentMethod(payMethod);
		return baseMapper.updateById(t);
	}

	@Override
	public boolean updateOrderSuccess(OrderMaster t) {
		return updateById(t);
	}

	@Override
	public List<OrderMaster> listOrderMastersByUserId(OrderQueryRequest request) {
		// 允许分页查询用户的订单
		PageHelper.startPage(request.getPageNum(), request.getPageSize());
		return baseMapper.selectList(new QueryWrapper<OrderMaster>().eq("user_id", request.getUserId()));
	}

}
