package com.eric.user.model;

import lombok.Data;
import org.hibernate.validator.constraints.NotBlank;

import java.util.Date;

/**
 * @author wang.js on 2019/1/23.
 * @version 1.0
 */
@Data
public class UserInfoModifyRequest {

	/**
	 * 用户id
	 */
	@NotBlank(message = "用户id不能为空")
	private String userId;
	/**
	 * 用户姓名
	 */
	private String realName;
	/**
	 * 电子邮箱
	 */
	private String email;
	/**
	 * 性别
	 */
	private String userGender;
	/**
	 * 出生日期
	 */
	private Date birthday;
	/**
	 * 更新时间
	 */
	private Date updateTime;
	/**
	 * 更新人
	 */
	@NotBlank(message = "更新人不能为空")
	private String updateUserId;

}
