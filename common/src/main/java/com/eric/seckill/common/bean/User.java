package com.eric.seckill.common.bean;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import lombok.experimental.Accessors;

import java.util.Date;

/**
 * @author Eric on 2019/1/6.
 * @version 1.0
 */
@Data
@NoArgsConstructor
@Accessors(chain = true)
@ToString
public class User {

	/**
	 * 用户id
	 */
	private String id;
	/**
	 * 用户名
	 */
	private String userName;
	/**
	 * 密码
	 */
	private String password;
	/**
	 * 创建时间
	 */
	private Date createTime;
	/**
	 * 更新时间
	 */
	private Date updateTime;
	/**
	 * 年龄
	 */
	private Integer age;
}
