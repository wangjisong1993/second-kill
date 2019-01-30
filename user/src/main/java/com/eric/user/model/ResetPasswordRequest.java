package com.eric.user.model;

import lombok.Data;
import lombok.experimental.Accessors;
import org.hibernate.validator.constraints.NotBlank;

/**
 * 重置密码的请求
 *
 * @author wang.js on 2019/1/30.
 * @version 1.0
 */
@Data
@Accessors(chain = true)
public class ResetPasswordRequest {

	@NotBlank(message = "登录名不能为空")
	private String loginName;

	@NotBlank(message = "手机号不能为空")
	private String tel;

	@NotBlank(message = "随机数不能为空")
	private String randomNum;

}
