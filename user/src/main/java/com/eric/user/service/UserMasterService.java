package com.eric.user.service;

import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.UserQueryRequest;
import com.eric.seckill.common.model.feign.UserQueryResponse;
import com.eric.user.bean.UserMaster;
import com.eric.user.model.*;

/**
 * @author wang.js on 2019/1/16.
 * @version 1.0
 */
public interface UserMasterService {

	/**
	 * 用户注册
	 * @param registerUserRequest
	 * @return
	 */
	CommonResult<RegisterUser> registerUser(RegisterUserRequest registerUserRequest);

	/**
	 * 用户登陆
	 * @param userLogin
	 * @return
	 */
	CommonResult<UserLoginResponse> login(UserLoginRequest userLogin);

	/**
	 * 更新用户的状态
	 * @param userModifyRequest
	 * @return
	 */
	CommonResult<Void> updateUserStats(UserModifyRequest userModifyRequest);

	/**
	 * 修改用户密码
	 * @param request
	 * @return
	 */
	CommonResult<Void> updatePassword(PasswordModifyRequest request);

	/**
	 * 根据用户id获取用户主信息
	 * @param userId
	 * @return
	 */
	UserMaster findUserMasterByUserId(String userId);

	/**
	 * 查找用户信息
	 * @param request
	 * @return
	 */
	CommonResult<UserQueryResponse> findUserMaster(UserQueryRequest request);
}
