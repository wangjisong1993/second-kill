package com.eric.order.service.impl;

import com.eric.order.bean.OrderDetail;
import com.eric.order.bean.OrderMaster;
import com.eric.order.constant.OrderErrorCodeEnum;
import com.eric.order.constant.OrderStatusEnum;
import com.eric.order.feign.WarehouseProductFeign;
import com.eric.order.model.CreateOrderDetail;
import com.eric.order.model.CreateOrderRequest;
import com.eric.order.model.CreateOrderResponse;
import com.eric.order.service.CreateOrderService;
import com.eric.order.service.OrderDetailService;
import com.eric.order.service.OrderMasterService;
import com.eric.order.service.ProductMasterService;
import com.eric.seckill.cache.anno.ParamCheck;
import com.eric.seckill.common.constant.ErrorCodeEnum;
import com.eric.seckill.common.exception.CustomException;
import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.ProductQueryResponse;
import com.eric.seckill.common.model.feign.WarehouseQueryRequest;
import org.apache.commons.lang3.StringUtils;
import org.dozer.DozerBeanMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * 创建订单
 *
 * @author wang.js on 2019/1/24.
 * @version 1.0
 */
@Service
public class CreateOrderServiceImpl extends BaseOrderService implements CreateOrderService {

	@Resource
	private OrderMasterService orderMasterService;

	@Resource
	private OrderDetailService orderDetailService;

	@Resource
	private ProductMasterService productMasterService;

	@Resource
	private DozerBeanMapper dozerBeanMapper;

	@Resource
	private WarehouseProductFeign warehouseProductFeign;

	private static final int SCALE = 8;

	@Override
	@ParamCheck
	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
	public CommonResult<CreateOrderResponse> createOrder(CreateOrderRequest request) {
		checkSign(request, request.getSign());
		checkUserActive(request.getUserId());
		String orderId = UUID.randomUUID().toString();
		List<OrderDetail> details = new ArrayList<>();
		BigDecimal orderMoney = new BigDecimal(0);
		// TODO
		BigDecimal districtMoney = new BigDecimal(0);
		// 计算金额
		for (CreateOrderDetail detail : request.getDetails()) {
			ProductQueryResponse productMaster = productMasterService.findProductMasterById(detail.getProductId());
			if (productMaster == null) {
				throw new CustomException(OrderErrorCodeEnum.PRODUCT_NOT_FOUND.getMessage());
			}
			WarehouseQueryRequest warehouseProductRequest = new WarehouseQueryRequest().setProductCnt(detail.getProductCnt())
					.setProductId(detail.getProductId()).setOrderId(orderId);
			warehouseProductRequest.setSign(getSign(warehouseProductRequest));
			CommonResult<String> commonResult = warehouseProductFeign.find(warehouseProductRequest);
			if (!commonResult.isSuccess()) {
				throw new CustomException(commonResult.getMessage());
			}
			String warehouseId = commonResult.getData();
			if (StringUtils.isBlank(warehouseId)) {
				throw new CustomException(productMaster.getProductName() + OrderErrorCodeEnum.STOCK_NOT_ENOUGH.getMessage());
			}
			OrderDetail orderDetail = new OrderDetail().setOrderDetailId(UUID.randomUUID().toString())
					.setOrderId(orderId).setCreateTime(new Date()).setProductCnt(detail.getProductCnt())
					.setProductId(detail.getProductId()).setProductName(productMaster.getProductName())
					.setProductPrice(productMaster.getPrice()).setUpdateTime(new Date()).setWId(warehouseId)
					.setFeeMoney(0);
			details.add(orderDetail);
			orderMoney = orderMoney.add(new BigDecimal(productMaster.getPrice()).multiply(new BigDecimal(detail.getProductCnt())).setScale(SCALE, BigDecimal.ROUND_HALF_UP));
		}
		OrderMaster orderMaster = new OrderMaster().setOrderId(orderId).setUserId(request.getUserId())
				.setCreateTime(new Date()).setUpdateTime(new Date())
				.setOrderMoney(orderMoney.intValue()).setOrderSn(UUID.randomUUID().toString())
				.setOrderStatus(OrderStatusEnum.CREATED.getOrderStatusCode())
				.setDistrictMoney(districtMoney.intValue())
				.setPaymentMoney(orderMoney.add(new BigDecimal(request.getShippingMoney())).subtract(districtMoney).setScale(SCALE, BigDecimal.ROUND_HALF_UP).intValue())
				.setOrderPoint(0)
				.setShippingMoney(request.getShippingMoney())
				.setShippingUser(request.getShippingUser());
		// 保存订单主表
		int insert = orderMasterService.insert(orderMaster);
		if (insert == 0) {
			throw new CustomException(ErrorCodeEnum.SAVE_ERROR.getMessage());
		}
		// 保存订单明细
		boolean result = orderDetailService.insertBatch(details);
		if (!result) {
			throw new CustomException(ErrorCodeEnum.SAVE_ERROR.getMessage());
		}
		CreateOrderResponse response = new CreateOrderResponse();
		dozerBeanMapper.map(orderMaster, response);
		return CommonResult.success(response, OrderErrorCodeEnum.PLACE_ORDER_SUCCESS.getMessage());
	}

}
