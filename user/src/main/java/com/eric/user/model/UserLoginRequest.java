package com.eric.user.model;

import lombok.Data;
import org.hibernate.validator.constraints.NotBlank;

/**
 * 用户登陆
 *
 * @author wang.js on 2019/1/22.
 * @version 1.0
 */
@Data
public class UserLoginRequest {

	/**
	 * 登录名
	 */
	@NotBlank(message = "登录名不能为空")
	private String loginName;

	/**
	 * 密码
	 */
	@NotBlank(message = "密码不能为空")
	private String password;

	private String ipAddr;
}
