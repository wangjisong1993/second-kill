package com.eric.user.controller;

import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.ChangePointRequest;
import com.eric.user.model.UserInfoModifyRequest;
import com.eric.user.service.UserInfoService;
import org.springframework.web.bind.annotation.*;

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
	 *
	 * @param userInfo
	 * @return
	 */
	@PostMapping("/update")
	public CommonResult<Void> updateUserInfo(@RequestBody UserInfoModifyRequest userInfo) {
		return userInfoService.updateUserInfo(userInfo);
	}

	/**
	 * 积分变动
	 *
	 * @return
	 */
	@PostMapping("/changePoint")
	public CommonResult<Void> changePoint(@RequestBody ChangePointRequest request) {
		return userInfoService.changePoint(request);
	}

	/**
	 * 根据用户id获取用户等级
	 *
	 * @param userId
	 * @return
	 */
	@GetMapping("/findUserLevelIdByUserId")
	public CommonResult<String> findUserLevelIdByUserId(@RequestParam("userId") String userId) {
		return userInfoService.findUserLevelIdByUserId(userId);
	}

}
