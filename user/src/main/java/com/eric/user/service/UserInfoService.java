package com.eric.user.service;

import com.eric.user.bean.UserMaster;

/**
 * @author wang.js on 2019/1/16.
 * @version 1.0
 */
public interface UserInfoService {

	/**
	 * 保存用户信息
	 * @param userMaster
	 * @param mobile
	 * @return
	 */
	int insert(UserMaster userMaster, String mobile);

	/**
	 * 根据手机号判断是否已经注册过
	 * @param phone
	 * @return
	 */
	Integer checkMobileExist(String phone);
}
