package com.eric.user.service;

import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.ChangePointRequest;
import com.eric.user.bean.UserMaster;
import com.eric.user.model.*;

/**
 * @author wang.js on 2019/1/16.
 * @version 1.0
 */
public interface UserInfoService {

	/**
	 * 保存用户信息
	 * @param userMaster
	 * @param mobile
	 * @return
	 */
	int insert(UserMaster userMaster, String mobile);

	/**
	 * 根据手机号判断是否已经注册过
	 * @param phone
	 * @return
	 */
	Integer checkMobileExist(String phone);

	/**
	 * 更新用户信息
	 * @param userInfo
	 * @return
	 */
	CommonResult<Void> updateUserInfo(UserInfoModifyRequest userInfo);

	/**
	 * 更新用户余额
	 * @param request
	 * @return
	 */
	ChargeBalanceResponse updateUserBalance(ChargeBalanceRequest request);

	/**
	 * 积分变更
	 * @param request
	 * @return
	 */
	UserPointChangeResponse updateUserPoint(UserPointChangeRequest request);

	/**
	 * 积分变动
	 * @param request
	 * @return
	 */
	CommonResult<Void> changePoint(ChangePointRequest request);
}
