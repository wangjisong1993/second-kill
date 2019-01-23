package com.eric.user.model;

import lombok.Data;
import org.hibernate.validator.constraints.NotBlank;

/**
 * 用户修改密码
 *
 * @author wang.js on 2019/1/23.
 * @version 1.0
 */
@Data
public class PasswordModifyRequest {

	/**
	 * 登录名
	 */
	@NotBlank(message = "登录名不能为空")
	private String loginName;
	/**
	 * 原密码
	 */
	@NotBlank(message = "原密码不能为空")
	private String originalPassword;
	/**
	 * 新密码
	 */
	@NotBlank(message = "新密码不能为空")
	private String newPassword;
	/**
	 * 更新人
	 */
	@NotBlank(message = "更新人不能为空")
	private String updateUserId;

}
