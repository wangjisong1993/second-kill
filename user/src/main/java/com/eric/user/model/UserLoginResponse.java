package com.eric.user.model;

import lombok.Data;

/**
 * 用户登陆成功后的结果返回
 *
 * @author wang.js on 2019/1/23.
 * @version 1.0
 */
@Data
public class UserLoginResponse {

	/**
	 * 登录名
	 */
	private String loginName;
	/**
	 * 用户id
	 */
	private String userId;
	/**
	 * 用户状态
	 */
	private String userStats;
	/**
	 * 登陆成功后返回的令牌
	 */
	private String token;

}
