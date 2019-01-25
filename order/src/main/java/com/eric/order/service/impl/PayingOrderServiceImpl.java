package com.eric.order.service.impl;

import com.eric.order.bean.OrderMaster;
import com.eric.order.constant.OrderErrorCodeEnum;
import com.eric.order.constant.OrderStatusEnum;
import com.eric.order.model.PayingOrderRequest;
import com.eric.order.model.PayingOrderResponse;
import com.eric.order.service.OrderMasterService;
import com.eric.order.service.PayingOrderService;
import com.eric.seckill.cache.anno.ParamCheck;
import com.eric.seckill.common.constant.ErrorCodeEnum;
import com.eric.seckill.common.model.CommonResult;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Objects;
import java.util.UUID;

/**
 * @author wang.js on 2019/1/25.
 * @version 1.0
 */
@Service
public class PayingOrderServiceImpl extends BaseOrderService implements PayingOrderService {

	@Resource
	private OrderMasterService orderMasterService;

	@Override
	@ParamCheck
	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
	public CommonResult<PayingOrderResponse> payingOrder(PayingOrderRequest request) {
		// 校验签名
		checkSign(request, request.getSign());
		// 判断用户状态是否正常
		checkUserActive(request.getUserId());
		// 判断订单是否允许支付
		OrderMaster orderMaster = orderMasterService.findOrderMasterByOrderId(request.getOrderId());
		if (orderMaster == null) {
			return CommonResult.fail(OrderErrorCodeEnum.ORDER_NOT_FOUND.getMessage(), OrderErrorCodeEnum.ORDER_NOT_FOUND.getErrCode());
		}
		if (!OrderStatusEnum.CREATED.getOrderStatusCode().equals(orderMaster.getOrderStatus())) {
			return CommonResult.fail(OrderErrorCodeEnum.ORDER_NOT_CREATED.getMessage(), OrderErrorCodeEnum.ORDER_NOT_CREATED.getErrCode());
		}
		if (!Objects.equals(orderMaster.getPaymentMoney(), request.getPaymentMoney())) {
			return CommonResult.fail(OrderErrorCodeEnum.PAYMENT_MONEY_ERROR.getMessage(), OrderErrorCodeEnum.PAYMENT_MONEY_ERROR.getErrCode());
		}
		// 允许支付, 修改订单状态
		orderMasterService.updateOrderPaying(request.getOrderId(), request.getPayMethod());
		PayingOrderResponse response = new PayingOrderResponse().setOutTradeNo(UUID.randomUUID().toString());
		return CommonResult.success(response, ErrorCodeEnum.UPDATE_SUCCESS.getMessage());
	}

}
