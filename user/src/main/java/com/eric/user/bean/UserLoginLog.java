package com.eric.user.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.util.Date;

/**
 * @author Eric
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
public class UserLoginLog implements Serializable {
	/**
	 * 数据库主键
	 */
	private String id;

	/**
	 * 用户id
	 */
	private String userId;

	/**
	 * 登录时间
	 */
	private Date loginTime;

	/**
	 * 登录ip
	 */
	private String loginIp;

	/**
	 * 登录结果
	 */
	private String loginResult;

	private static final long serialVersionUID = 1L;

}