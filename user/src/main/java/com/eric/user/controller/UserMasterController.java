package com.eric.user.controller;

import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.UserQueryRequest;
import com.eric.seckill.common.model.feign.UserQueryResponse;
import com.eric.user.service.UserMasterService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * @author wang.js on 2019/1/16.
 * @version 1.0
 */
@RequestMapping("/userMaster")
@RestController
public class UserMasterController {

	@Resource
	private UserMasterService userMasterService;

	/**
	 * 查找用户信息
	 *
	 * @param request
	 * @return
	 */
	@PostMapping("/find")
	public CommonResult<UserQueryResponse> findUserByUserIdOrLoginName(@RequestBody UserQueryRequest request) {
		return userMasterService.findUserMaster(request);
	}


}
