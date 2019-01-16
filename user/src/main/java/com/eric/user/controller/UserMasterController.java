package com.eric.user.controller;

import com.eric.user.service.UserMasterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author wang.js on 2019/1/16.
 * @version 1.0
 */
@RequestMapping("/userMaster")
@RestController
public class UserMasterController {

	@Autowired
	private UserMasterService userMasterService;

}
