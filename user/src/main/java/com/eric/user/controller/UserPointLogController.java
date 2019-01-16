package com.eric.user.controller;

import com.eric.user.service.UserPointLogService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * @author Eric on 2019/1/16.
 * @version 1.0
 */
@RequestMapping("/userPointLog")
@RestController
public class UserPointLogController {

	@Resource
	private UserPointLogService userPointLogService;
}
