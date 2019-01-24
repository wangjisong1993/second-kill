package com.eric.user.service.impl;

import com.eric.seckill.common.constant.UserStatus;
import com.eric.seckill.common.exception.CustomException;
import com.eric.user.bean.UserMaster;
import com.eric.user.constant.ErrorCodeEnum;
import com.eric.user.service.UserMasterService;

import javax.annotation.Resource;

/**
 * 用户状态
 *
 * @author wang.js on 2019/1/24.
 * @version 1.0
 */
public abstract class BaseUserStatsService {

	@Resource
	private UserMasterService userMasterService;

	/**
	 * 判断用户是否是有效状态
	 *
	 * @param userId
	 */
	void checkUserActive(String userId) {
		UserMaster user = userMasterService.findUserMasterByUserId(userId);
		if (user == null) {
			throw new CustomException(ErrorCodeEnum.USER_NOT_FOUND.getErrorMsg());
		}
		if (UserStatus.DISACTIVE.getStatusCode().equals(user.getUserStats())) {
			throw new CustomException(ErrorCodeEnum.ACCOUNT_FREEZE.getErrorMsg());
		} else if (UserStatus.DISACTIVE.getStatusCode().equals(user.getUserStats())) {
			throw new CustomException(ErrorCodeEnum.ACCOUNT_DISACTIVE.getErrorMsg());
		}
	}

}
