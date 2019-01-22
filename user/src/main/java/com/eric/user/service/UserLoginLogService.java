package com.eric.user.service;

import com.eric.user.bean.UserLoginLog;

/**
 * 用户登陆日志
 *
 * @author Eric on 2019/1/16.
 * @version 1.0
 */
public interface UserLoginLogService {

	/**
	 * 保存用户登陆日志
	 * @param userLoginLog
	 * @return
	 */
	int insert(UserLoginLog userLoginLog);
}
