package com.eric.order.service.impl;

import com.eric.order.constant.OrderErrorCodeEnum;
import com.eric.order.constant.OrderStatusEnum;
import com.eric.order.feign.WarehouseProductFeign;
import com.eric.order.service.OrderMasterService;
import com.eric.order.service.ReceiveOrderService;
import com.eric.seckill.cache.anno.ParamCheck;
import com.eric.seckill.common.exception.CustomException;
import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.ReceiveOrderRequest;
import com.eric.seckill.common.model.feign.WarehouseReceivedRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 * @author Eric on 2019/1/26.
 * @version 1.0
 */
@Service
public class ReceiveOrderServiceImpl extends BaseOrderService implements ReceiveOrderService {

	@Resource
	private OrderMasterService orderMasterService;

	@Resource
	private WarehouseProductFeign warehouseProductFeign;

	@Override
	@ParamCheck
	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
	public CommonResult<Void> orderReceive(ReceiveOrderRequest request) {
		// 校验签名
		checkSign(request, request.getSign());
		String orderStatus = orderMasterService.findOrderStatusByOrderId(request.getOrderId());
		if (!OrderStatusEnum.SHIPPING.getOrderStatusCode().equals(orderStatus)) {
			return CommonResult.fail(OrderErrorCodeEnum.ERROR_STATUS_FOR_RECEIVE.getMessage(), OrderErrorCodeEnum.ERROR_STATUS_FOR_RECEIVE.getErrCode());
		}
		// 确认收货
		orderMasterService.orderReceive(request);
		WarehouseReceivedRequest warehouseReceivedRequest = new WarehouseReceivedRequest()
				.setOrderId(request.getOrderId()).setOperateUserId(request.getOperateUserId());
		warehouseReceivedRequest.setSign(getSign(warehouseReceivedRequest));
		CommonResult<Void> commonResult = warehouseProductFeign.received(warehouseReceivedRequest);
		if (!commonResult.isSuccess()) {
			throw new CustomException(commonResult.getMessage());
		}
		return CommonResult.success(null, OrderErrorCodeEnum.RECEIVE_SUCCESS.getMessage());
	}
}
