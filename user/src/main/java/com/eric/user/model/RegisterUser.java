package com.eric.user.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

/**
 * 注册用户
 * @author wang.js on 2019/1/17.
 * @version 1.0
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
public class RegisterUser {

	/**
	 * 用户id
	 */
	private String userId;
	/**
	 * 登录名
	 */
	private String loginName;
	/**
	 * 密码
	 */
	private String password;
	/**
	 * 用户状态
	 */
	private String userStats;

}
