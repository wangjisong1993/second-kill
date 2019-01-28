package com.eric.order.service.impl;

import com.eric.order.constant.OrderErrorCodeEnum;
import com.eric.order.constant.OrderStatusEnum;
import com.eric.order.feign.WarehouseProductFeign;
import com.eric.order.service.OrderMasterService;
import com.eric.order.service.ShippingOrderService;
import com.eric.seckill.cache.anno.ParamCheck;
import com.eric.seckill.common.constant.ErrorCodeEnum;
import com.eric.seckill.common.exception.CustomException;
import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.ShippingRequest;
import com.eric.seckill.common.model.feign.WarehouseShippingRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 * 订单发货
 *
 * @author Eric on 2019/1/26.
 * @version 1.0
 */
@Service
public class ShippingOrderServiceImpl extends BaseOrderService implements ShippingOrderService {

	@Resource
	private OrderMasterService orderMasterService;

	@Resource
	private WarehouseProductFeign warehouseProductFeign;

	@Override
	@ParamCheck
	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
	public CommonResult<Void> orderShipping(ShippingRequest request) {
		// 校验签名
		checkSign(request, request.getSign());
		// 判断收货人和订单是否一致
		String status = orderMasterService.findOrderStatusByOrderId(request.getOrderId());
		if (!OrderStatusEnum.PAY_SUCCESS.getOrderStatusCode().equals(status)) {
			return CommonResult.fail(OrderErrorCodeEnum.ERROR_STATUS_FOR_SHIPPING.getMessage(), OrderErrorCodeEnum.ERROR_STATUS_FOR_SHIPPING.getErrCode());
		}
		// 可以发货, 修改状态
		orderMasterService.orderShipping(request);
		// 修改仓库库存占用记录的状态为已发货
		WarehouseShippingRequest warehouseShippingRequest = new WarehouseShippingRequest().setOrderId(request.getOrderId())
				.setUserId(request.getUserId());
		warehouseShippingRequest.setSign(getSign(warehouseShippingRequest));
		CommonResult<Void> shipping = warehouseProductFeign.shipping(warehouseShippingRequest);
		if (!shipping.isSuccess()) {
			throw new CustomException(shipping.getMessage());
		}
		return CommonResult.success(null, ErrorCodeEnum.UPDATE_SUCCESS.getMessage());
	}

}
