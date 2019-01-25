package com.eric.order.service.impl;

import com.eric.order.constant.OrderErrorCodeEnum;
import com.eric.order.constant.OrderStatusEnum;
import com.eric.order.feign.CouponMasterFeign;
import com.eric.order.model.UseCouponRequest;
import com.eric.order.model.UseCouponResponse;
import com.eric.order.service.OrderMasterService;
import com.eric.order.service.UseCouponService;
import com.eric.seckill.cache.anno.ParamCheck;
import com.eric.seckill.common.constant.ErrorCodeEnum;
import com.eric.seckill.common.exception.CustomException;
import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.CouponQueryResponse;
import com.eric.seckill.common.model.feign.UsingCouponRequest;
import com.eric.seckill.common.utils.SignUtil;
import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

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

	@Resource
	private CouponMasterFeign couponMasterFeign;

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
		CommonResult<List<CouponQueryResponse>> result = couponMasterFeign.findCoupon(request.getCouponNumbers());
		if (result == null || !result.isSuccess()) {
			return CommonResult.fail(ErrorCodeEnum.SERVER_ERROR.getMessage(), ErrorCodeEnum.SERVER_ERROR.getErrCode());
		}
		Integer paymentMoney = orderMasterService.findPaymentMoneyByOrderId(request.getOrderId());
		UseCouponResponse response = new UseCouponResponse().setOrderSn(request.getOrderSn())
				.setUserId(request.getUserId());
		BigDecimal shouldPay = new BigDecimal(paymentMoney);
		List<String> failList = new ArrayList<>();
		List<String> successList = new ArrayList<>();
		BigDecimal couponMoney = new BigDecimal(0);
		for (CouponQueryResponse coupon : result.getData()) {
			if (paymentMoney < coupon.getFullMoney() || !coupon.isCanUse()) {
				failList.add(coupon.getCouponSn());
				continue;
			}
			successList.add(coupon.getCouponSn());
			shouldPay = shouldPay.subtract(new BigDecimal(coupon.getCouponMoney()));
			couponMoney = couponMoney.add(new BigDecimal(coupon.getCouponMoney()));
		}
		// 更新订单应付金额
		orderMasterService.updatePaymentMoney(shouldPay.intValue(), couponMoney.intValue(), request.getOrderId());
		// 标记优惠券状态为正在使用中
		markCouponUsing(request, successList);
		response.setShouldPay(shouldPay.intValue()).setUseFail(failList).setUseSuccess(successList);
		return CommonResult.success(response, OrderErrorCodeEnum.USE_COUPON_SUCCESS.getMessage());
	}

	/**
	 * 标记优惠券状态为正在使用中
	 *
	 * @param request
	 * @param successList
	 */
	private void markCouponUsing(UseCouponRequest request, List<String> successList) {
		if (CollectionUtils.isEmpty(successList)) {
			return;
		}
		UsingCouponRequest usingCouponRequest = new UsingCouponRequest().setCouponSns(successList)
				.setUserId(request.getUserId()).setOrderId(request.getOrderId());
		usingCouponRequest.setSign(getSign(usingCouponRequest));
		CommonResult<Void> commonResult = couponMasterFeign.markAsUsing(usingCouponRequest);
		if (commonResult == null || !commonResult.isSuccess()) {
			throw new CustomException(OrderErrorCodeEnum.USE_COUPON_FAIL.getMessage());
		}
	}

	/**
	 * 校验订单状态是否是新建状态
	 *
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
