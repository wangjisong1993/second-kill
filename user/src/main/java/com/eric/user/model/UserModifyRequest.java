package com.eric.user.model;

import lombok.Data;
import org.hibernate.validator.constraints.NotBlank;

/**
 * 修改用户
 *
 * @author wang.js on 2019/1/23.
 * @version 1.0
 */
@Data
public class UserModifyRequest {

	/**
	 * 用户登陆名
	 */
	@NotBlank(message = "登录名不能为空")
	private String loginName;

	/**
	 * 用户密码
	 */
	@NotBlank(message = "用户密码不能为空")
	private String password;
	/**
	 * 更新人的用户id
	 */
	@NotBlank(message = "更新人不能为空")
	private String updateUserId;
	/**
	 * 用户状态
	 */
	private String userStats;

}
