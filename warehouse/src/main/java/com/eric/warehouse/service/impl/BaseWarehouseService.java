package com.eric.warehouse.service.impl;

import com.alibaba.fastjson.JSON;
import com.eric.seckill.common.constant.ErrorCodeEnum;
import com.eric.seckill.common.constant.UserStatus;
import com.eric.seckill.common.exception.CustomException;
import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.UserQueryRequest;
import com.eric.seckill.common.model.feign.UserQueryResponse;
import com.eric.seckill.common.utils.SignUtil;
import com.eric.warehouse.feign.UserMasterFeign;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;

import javax.annotation.Resource;

/**
 * 基础的仓库服务
 *
 * @author Eric on 2019/1/27.
 * @version 1.0
 */
public abstract class BaseWarehouseService {

	@Value("${warehouse.charge.secret}")
	private String appSecret;

	@Resource
	private UserMasterFeign userMasterFeign;

	private static final Logger LOGGER = LoggerFactory.getLogger(BaseWarehouseService.class);

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
	 * 获取签名
	 *
	 * @param obj
	 * @return
	 */
	String getSign(Object obj) {
		return SignUtil.getSignForObject(obj, appSecret, SignUtil.DEFAULT_EXCLUDE);
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
		LOGGER.info("返回的数据为:{}", JSON.toJSONString(response));
		if (response.getData() == null) {
			throw new CustomException(ErrorCodeEnum.USER_NOT_FOUND.getMessage());
		}
		if (!UserStatus.ACTIVE.getStatusCode().equals(response.getData().getUserStats())) {
			throw new CustomException(ErrorCodeEnum.USER_STATUS_ABNORMAL.getMessage());
		}
	}

}
