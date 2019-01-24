package com.eric.order.controller;

import com.eric.order.feign.UserMasterFeign;
import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.UserQueryRequest;
import com.eric.seckill.common.model.feign.UserQueryResponse;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * 订单相关的接口
 *
 * @author Eric on 2019/1/24.
 * @version 1.0
 */
@RequestMapping("/api")
@RestController
public class OrderController {

	@Resource
	private UserMasterFeign feign;

	/**
	 * 根据用户id查找用户
	 *
	 * @param userId
	 * @return
	 */
	@GetMapping("/findUser")
	public CommonResult<UserQueryResponse> findUser(@RequestParam("userId") String userId) {
		return feign.findUserByUserIdOrLoginName(new UserQueryRequest().setUserId(userId));
	}


}
