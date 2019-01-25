package com.eric.order.service.impl;

import com.eric.order.constant.OrderErrorCodeEnum;
import com.eric.order.constant.OrderStatusEnum;
import com.eric.order.model.UseCouponRequest;
import com.eric.order.model.UseCouponResponse;
import com.eric.order.service.OrderMasterService;
import com.eric.order.service.UseCouponService;
import com.eric.seckill.cache.anno.ParamCheck;
import com.eric.seckill.common.exception.CustomException;
import com.eric.seckill.common.model.CommonResult;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 * 顾客用券
 *
 * @author wang.js on 2019/1/25.
 * @version 1.0
 */
@Service
public class UseCouponServiceImpl extends BaseOrderService implements UseCouponService {

	@Resource
	private OrderMasterService orderMasterService;

	@Override
	@ParamCheck
	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
	public CommonResult<UseCouponResponse> useCoupon(UseCouponRequest request) {
		// 校验签名是否合法
		checkSign(request, request.getSign());
		// 校验用户是否正常
		checkUserActive(request.getUserId());
		// 校验订单状态是否是新建状态
		checkOrderStatus(request);
		// 校验优惠券是否正常
		for (String couponNumber : request.getCouponNumbers()) {
			
		}
		return null;
	}

	/**
	 * 校验订单状态是否是新建状态
	 * @param request
	 */
	private void checkOrderStatus(UseCouponRequest request) {
		String orderStatus = orderMasterService.findOrderStatusByOrderId(request.getOrderId());
		if (StringUtils.isNotBlank(orderStatus) && OrderStatusEnum.CREATED.getOrderStatusCode().equals(orderStatus)) {
			return;
		}
		throw new CustomException(OrderErrorCodeEnum.ORDER_NOT_CREATED.getMessage());
	}
}
