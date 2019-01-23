package com.eric.user.controller;

import com.eric.seckill.common.model.CommonResult;
import com.eric.user.model.UserInfoModifyRequest;
import com.eric.user.service.UserInfoService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * @author wang.js on 2019/1/16.
 * @version 1.0
 */
@RequestMapping("/api/userInfo")
@RestController
public class UserInfoController {

	@Resource
	private UserInfoService userInfoService;

	/**
	 * 更新用户信息
	 * @param userInfo
	 * @return
	 */
	@PostMapping("/update")
	public CommonResult<Void> updateUserInfo(@RequestBody UserInfoModifyRequest userInfo) {
		return userInfoService.updateUserInfo(userInfo);
	}
}
