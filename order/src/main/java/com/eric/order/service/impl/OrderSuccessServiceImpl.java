package com.eric.order.service.impl;

import com.eric.order.bean.OrderMaster;
import com.eric.order.constant.OrderErrorCodeEnum;
import com.eric.order.constant.OrderStatusEnum;
import com.eric.order.feign.CouponMasterFeign;
import com.eric.order.feign.UserInfoFeign;
import com.eric.order.model.OrderSuccessRequest;
import com.eric.order.service.OrderMasterService;
import com.eric.order.service.OrderSuccessService;
import com.eric.seckill.cache.anno.ParamCheck;
import com.eric.seckill.common.constant.ErrorCodeEnum;
import com.eric.seckill.common.constant.UserPointSourceEnum;
import com.eric.seckill.common.exception.CustomException;
import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.ChangePointRequest;
import com.eric.seckill.common.model.feign.ConsumeCouponRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Date;
import java.util.Objects;

/**
 * @author wang.js on 2019/1/25.
 * @version 1.0
 */
@Service
public class OrderSuccessServiceImpl extends BaseOrderService implements OrderSuccessService {

	@Resource
	private OrderMasterService orderMasterService;

	@Resource
	private CouponMasterFeign couponMasterFeign;

	@Resource
	private UserInfoFeign userInfoFeign;

	@Override
	@ParamCheck
	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
	public CommonResult<Void> orderSuccess(OrderSuccessRequest request) {
		// 校验签名
		checkSign(request, request.getSign());
		// 校验用户状态
		checkUserActive(request.getUserId());
		// 校验订单状态和金额
		OrderMaster orderMaster = orderMasterService.findOrderMasterByOrderId(request.getOrderId());
		if (orderMaster == null) {
			throw new CustomException(OrderErrorCodeEnum.ORDER_NOT_FOUND.getMessage());
		}
		if (!OrderStatusEnum.PAYING.getOrderStatusCode().equals(orderMaster.getOrderStatus())) {
			return CommonResult.fail(OrderErrorCodeEnum.ORDER_NOT_PAYING.getMessage(), OrderErrorCodeEnum.ORDER_NOT_PAYING.getErrCode());
		}
		if (!Objects.equals(orderMaster.getPaymentMoney(), request.getPaymentMoney())) {
			return CommonResult.fail(OrderErrorCodeEnum.PAYMENT_MONEY_ERROR.getMessage(), OrderErrorCodeEnum.PAYMENT_MONEY_ERROR.getErrCode());
		}
		// 修改订单状态
		OrderMaster t = new OrderMaster().setOrderId(request.getOrderId()).setOrderStatus(OrderStatusEnum.PAY_SUCCESS.getOrderStatusCode())
				.setUpdateTime(new Date()).setOrderPoint(request.getPaymentMoney()).setPayTime(new Date());
		orderMasterService.updateOrderSuccess(t);
		// 赠送积分和消费优惠券
		changePointAndConsumeCoupon(t, request);
		return CommonResult.success(null, ErrorCodeEnum.UPDATE_SUCCESS.getMessage());
	}

	/**
	 * 赠送积分和消费优惠券
	 * @param t
	 * @param request
	 */
	private void changePointAndConsumeCoupon(OrderMaster t, OrderSuccessRequest request) {
		// 保存积分变动记录
		ChangePointRequest changePointRequest = new ChangePointRequest().setChangePoint(t.getOrderPoint())
				.setPointSource(UserPointSourceEnum.ORDER_PRESENT.getSourceType())
				.setReferNumber(request.getOrderId()).setUserId(request.getUserId());
		changePointRequest.setSign(getSign(changePointRequest));
		userInfoFeign.changePoint(changePointRequest);
		// 核销优惠券
		ConsumeCouponRequest consumeCouponRequest = new ConsumeCouponRequest().setOrderId(request.getOrderId())
				.setUserId(request.getUserId());
		consumeCouponRequest.setSign(getSign(consumeCouponRequest));
		couponMasterFeign.consume(consumeCouponRequest);
	}

}
