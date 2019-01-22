package com.eric.user.controller;

import com.eric.seckill.common.model.CommonResult;
import com.eric.user.model.RegisterUser;
import com.eric.user.model.RegisterUserRequest;
import com.eric.user.model.UserLogin;
import com.eric.user.service.UserMasterService;
import com.eric.user.utils.IPUtil;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * @author wang.js on 2019/1/22.
 * @version 1.0
 */
@RequestMapping("/api")
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
	public CommonResult<Void> login(@RequestBody UserLogin userLogin, HttpServletRequest request) {
		if (userLogin == null) {
			userLogin = new UserLogin();
		}
		userLogin.setIpAddr(IPUtil.getIpAddress(request));
		return userMasterService.login(userLogin);
	}
}
