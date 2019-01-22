package com.eric.user.service;

import com.eric.seckill.common.model.CommonResult;
import com.eric.user.model.RegisterUser;
import com.eric.user.model.RegisterUserRequest;
import com.eric.user.model.UserLogin;

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
	CommonResult<Void> login(UserLogin userLogin);
}
