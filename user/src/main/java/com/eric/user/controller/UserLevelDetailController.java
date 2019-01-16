package com.eric.user.controller;

import com.eric.user.service.UserLevelDetailService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * @author wang.js on 2019/1/16.
 * @version 1.0
 */
@RestController
@RequestMapping("/userLevelDetail")
public class UserLevelDetailController {

	@Resource
	private UserLevelDetailService userLevelDetailService;

}
