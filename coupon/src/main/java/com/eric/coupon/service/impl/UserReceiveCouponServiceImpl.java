package com.eric.coupon.service.impl;

import com.eric.coupon.bean.CouponReceive;
import com.eric.coupon.bean.CouponTemplate;
import com.eric.coupon.constant.CouponErrorCodeEnum;
import com.eric.coupon.constant.CouponStatusEnum;
import com.eric.coupon.feign.UserMasterFeign;
import com.eric.coupon.model.ReceiveCouponRequest;
import com.eric.coupon.service.CouponReceiveService;
import com.eric.coupon.service.CouponTemplateService;
import com.eric.coupon.service.UserReceiveCouponService;
import com.eric.seckill.cache.anno.ParamCheck;
import com.eric.seckill.common.constant.ErrorCodeEnum;
import com.eric.seckill.common.exception.CustomException;
import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.UserQueryRequest;
import com.eric.seckill.common.model.feign.UserQueryResponse;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * @author wang.js on 2019/1/25.
 * @version 1.0
 */
@Service
public class UserReceiveCouponServiceImpl extends BaseCouponService implements UserReceiveCouponService {

	@Resource
	private CouponTemplateService couponTemplateService;

	@Resource
	private CouponReceiveService couponReceiveService;

	@Resource
	private UserMasterFeign userMasterFeign;

	@Override
	@ParamCheck
	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
	public CommonResult<Void> receiveCoupon(ReceiveCouponRequest request) {
		// 校验签名
		checkSign(request, request.getSign());
		// 判断送券的模板是否存在
		CouponTemplate template = couponTemplateService.findCouponTemplateById(request.getCouponTemplateId());
		if (template == null) {
			return CommonResult.fail(CouponErrorCodeEnum.TEMPLATE_NOT_FOUND.getMessage(), CouponErrorCodeEnum.TEMPLATE_NOT_FOUND.getErrCode());
		}
		// 开始批量送券
		List<CouponReceive> couponReceives = new ArrayList<>(request.getUserIds().size());
		for (String userId : request.getUserIds()) {
			// 判断用户是否存在
			CommonResult<UserQueryResponse> response = userMasterFeign.findUserByUserIdOrLoginName(new UserQueryRequest().setUserId(userId));
			if (response == null) {
				throw new CustomException(ErrorCodeEnum.SERVER_ERROR.getMessage());
			}
			if (!response.isSuccess()) {
				throw new CustomException(response.getMessage());
			}
			for (int i = 0; i < request.getCouponNum(); i++) {
				couponReceives.add(new CouponReceive().setCouponMoney(template.getMoney())
						.setCreateTime(new Date()).setFullMoney(template.getFullMoney())
						.setId(UUID.randomUUID().toString()).setStatus(CouponStatusEnum.NORMAL.getStatusCode())
						.setCouponSn(UUID.randomUUID().toString())
						.setUserId(userId).setCouponTemplateId(request.getCouponTemplateId()));
			}
		}
		boolean result = couponReceiveService.insertBatch(couponReceives, request.getCouponNum());
		if (!result) {
			throw new CustomException(CouponErrorCodeEnum.SAVE_FAIL.getMessage());
		}
		return CommonResult.success(null, CouponErrorCodeEnum.PRESENT_COUPON_SUCCESS.getMessage());
	}
}
