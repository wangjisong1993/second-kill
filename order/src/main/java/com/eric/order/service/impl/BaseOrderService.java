package com.eric.order.service.impl;

import com.alibaba.fastjson.JSON;
import com.eric.order.feign.UserMasterFeign;
import com.eric.seckill.common.constant.ErrorCodeEnum;
import com.eric.seckill.common.constant.UserStatus;
import com.eric.seckill.common.exception.CustomException;
import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.UserQueryRequest;
import com.eric.seckill.common.model.feign.UserQueryResponse;
import com.eric.seckill.common.utils.SignUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;

import javax.annotation.Resource;

/**
 * 基础订单类
 *
 * @author wang.js on 2019/1/24.
 * @version 1.0
 */
public abstract class BaseOrderService {

	@Value("${order.createOrder.secret}")
	private String appSecret;

	@Resource
	private UserMasterFeign userMasterFeign;

	private static final Logger LOGGER = LoggerFactory.getLogger(BaseOrderService.class);

	/**
	 * 校验签名
	 *
	 * @param obj
	 * @param sign
	 */
	void checkSign(Object obj, String sign) {
		boolean verify = SignUtil.verify(obj, sign, appSecret);
		if (!verify) {
			throw new CustomException(ErrorCodeEnum.ERROR_SIGN.getMessage());
		}
	}

	/**
	 * 判断用户是否属于正常状态
	 *
	 * @param userId
	 */
	void checkUserActive(String userId) {
		UserQueryRequest request = new UserQueryRequest();
		request.setUserId(userId);
		CommonResult<UserQueryResponse> response = userMasterFeign.findUserByUserIdOrLoginName(request);
		LOGGER.info("返回的数据为:{}", JSON. toJSONString(response));
		if (response != null) {
			UserQueryResponse data = response.getData();
			if (response.isSuccess() && UserStatus.ACTIVE.getStatusCode().equals(data.getUserStats())) {
				return;
			} else {
				throw new CustomException(response.getMessage());
			}
		}
		throw new CustomException(ErrorCodeEnum.SERVER_ERROR.getMessage());
	}

}
