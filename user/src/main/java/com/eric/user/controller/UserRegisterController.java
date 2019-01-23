package com.eric.user.controller;

import com.eric.seckill.common.constant.UserStatus;
import com.eric.seckill.common.model.CommonResult;
import com.eric.user.constant.ErrorCodeEnum;
import com.eric.user.constant.UserConstant;
import com.eric.user.model.*;
import com.eric.user.service.UserMasterService;
import com.eric.user.utils.IPUtil;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author wang.js on 2019/1/22.
 * @version 1.0
 */
@RequestMapping("/api/user")
@RestController
public class UserRegisterController {

	@Resource
	private UserMasterService userMasterService;

	/**
	 * 会员注册
	 * @param registerUserRequest
	 * @return
	 */
	@PostMapping("/register")
	public CommonResult<RegisterUser> register(@RequestBody RegisterUserRequest registerUserRequest) {
		return userMasterService.registerUser(registerUserRequest);
	}

	/**
	 * 会员登陆
	 * @param userLogin
	 * @return
	 */
	@PostMapping("/login")
	public CommonResult<UserLoginResponse> login(@RequestBody UserLoginRequest userLogin,
	                                             HttpServletRequest request,
	                                             HttpServletResponse response) {
		if (userLogin == null) {
			userLogin = new UserLoginRequest();
		}
		userLogin.setIpAddr(IPUtil.getIpAddress(request));
		return userMasterService.login(userLogin);
	}

	/**
	 * 修改用户的状态
	 * @param userModifyRequest
	 * @return
	 */
	@PostMapping("/updateUserStats/{operation}")
	public CommonResult<Void> updateUserStats(@RequestBody UserModifyRequest userModifyRequest,
	                                          @PathVariable("operation") String operation) {
		switch (operation) {
			case UserConstant.MODIFY_OPERATION_DISACTIVE:
				userModifyRequest.setUserStats(UserStatus.DISACTIVE.getStatusCode());
				break;
			case UserConstant.MODIFY_OPERATION_FREEZE:
				userModifyRequest.setUserStats(UserStatus.FREEZE.getStatusCode());
				break;
			default:
				return CommonResult.fail(ErrorCodeEnum.UNKNOW_OPERATION_TYPE.getErrorMsg(), ErrorCodeEnum.UNKNOW_OPERATION_TYPE.getErrorCode());
		}
		return userMasterService.updateUserStats(userModifyRequest);
	}

	/**
	 * 更新用户密码
	 * @param request
	 * @return
	 */
	@PostMapping("/updatePassword")
	public CommonResult<Void> updatePassword(@RequestBody PasswordModifyRequest request) {
		return userMasterService.updatePassword(request);
	}

}
