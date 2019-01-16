package com.eric.user.controller;

import com.eric.user.service.UserBalanceLogService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * @author Eric on 2019/1/16.
 * @version 1.0
 */
@RequestMapping("/userBalanceLog")
@RestController
public class UserBalanceLogController {

	@Resource
	private UserBalanceLogService userBalanceLogService;
}
