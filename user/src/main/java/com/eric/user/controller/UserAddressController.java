package com.eric.user.controller;

import com.eric.user.service.UserAddressService;
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
}
