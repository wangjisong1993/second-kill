package com.eric.user.model;

import lombok.Data;
import lombok.experimental.Accessors;
import org.hibernate.validator.constraints.NotBlank;

/**
 * @author wang.js on 2019/1/22.
 * @version 1.0
 */
@Data
@Accessors(chain = true)
public class RegisterUserRequest {

	@NotBlank(message = "登陆名不能为空")
	private String loginName;

	/**
	 * 电话号码
	 */
	@NotBlank(message = "电话号码不能为空")
	private String phone;
	/**
	 * 密码
	 */
	@NotBlank(message = "密码不能为空")
	private String password;

}
