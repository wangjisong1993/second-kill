package com.eric.user.controller;

import com.eric.seckill.common.model.CommonResult;
import com.eric.user.model.UserAddressModifyRequest;
import com.eric.user.service.UserAddressService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * @author Eric on 2019/1/16.
 * @version 1.0
 */
@RequestMapping("/userAddress")
@RestController
public class UserAddressController {

	@Resource
	private UserAddressService userAddressService;

	/**
	 * 更新用户地址信息
	 * @param request
	 * @return
	 */
	@PostMapping("/update")
	public CommonResult<Void> updateUserAddress(@RequestBody UserAddressModifyRequest request) {
		return userAddressService.updateUserAddress(request);
	}
}
