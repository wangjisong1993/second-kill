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
import com.eric.seckill.common.model.feign.ReceiveOrderRequest;
import com.eric.seckill.common.model.feign.ShippingRequest;
import com.github.pagehelper.PageHelper;
import org.dozer.DozerBeanMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * @author wang.js on 2019/1/24.
 * @version 1.0
 */
@Service
public class OrderMasterServiceImpl extends ServiceImpl<OrderMasterMapper, OrderMaster>
		implements OrderMasterService {

	@Resource
	private DozerBeanMapper dozerBeanMapper;

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
		boolean effect = update(entity, new QueryWrapper<OrderMaster>().eq("order_id", orderId)
				.eq("order_status", OrderStatusEnum.CREATED.getOrderStatusCode()));
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
		OrderMaster t = new OrderMaster().setOrderStatus(OrderStatusEnum.PAYING.getOrderStatusCode())
				.setUpdateTime(new Date()).setPaymentMethod(payMethod);
		return this.baseMapper.update(t, new QueryWrapper<OrderMaster>().eq("order_id", orderId)
				.eq("order_status", OrderStatusEnum.CREATED.getOrderStatusCode()));
	}

	@Override
	public boolean updateOrderSuccess(OrderMaster t) {
		return update(t, new QueryWrapper<OrderMaster>().eq("order_id", t.getOrderId())
				.eq("order_status", OrderStatusEnum.PAYING.getOrderStatusCode()));
	}

	@Override
	public List<OrderMaster> listOrderMastersByUserId(OrderQueryRequest request) {
		// 允许分页查询用户的订单
		PageHelper.startPage(request.getPageNum(), request.getPageSize());
		return baseMapper.selectList(new QueryWrapper<OrderMaster>().eq("user_id", request.getUserId()));
	}

	@Override
	public void orderShipping(ShippingRequest request) {
		OrderMaster entity = new OrderMaster();
		dozerBeanMapper.map(request, entity);
		entity.setOrderStatus(OrderStatusEnum.SHIPPING.getOrderStatusCode()).setUpdateTime(new Date());
		boolean update = update(entity, new QueryWrapper<OrderMaster>().eq("order_id", request.getOrderId())
				.eq("order_status", OrderStatusEnum.PAY_SUCCESS.getOrderStatusCode()));
		if (!update) {
			throw new CustomException(ErrorCodeEnum.UPDATE_FAIL.getMessage());
		}
	}

	@Override
	public void orderReceive(ReceiveOrderRequest request) {
		OrderMaster entity = new OrderMaster();
		dozerBeanMapper.map(request, entity);
		entity.setOrderStatus(OrderStatusEnum.RECEIVE.getOrderStatusCode()).setUpdateTime(new Date());
		boolean update = update(entity, new QueryWrapper<OrderMaster>().eq("order_id", request.getOrderId())
				.eq("order_status", OrderStatusEnum.SHIPPING.getOrderStatusCode()));
		if (!update) {
			throw new CustomException(ErrorCodeEnum.UPDATE_FAIL.getMessage());
		}
	}

}
