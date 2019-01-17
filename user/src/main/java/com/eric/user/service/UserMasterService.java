package com.eric.user.service;

import com.eric.seckill.common.model.CommonResult;
import com.eric.user.model.RegisterUser;

/**
 * @author wang.js on 2019/1/16.
 * @version 1.0
 */
public interface UserMasterService {

	/**
	 * 用户注册
	 * @param phone 手机号
	 * @return CommonResult<RegisterUser>
	 */
	CommonResult<RegisterUser> registerUser(String phone);
}
