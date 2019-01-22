package com.eric.user.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import java.util.Date;

/**
 * @author wang.js on 2019/1/16.
 * @version 1.0
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
@EqualsAndHashCode(callSuper = true)
public class UserInfo extends BaseProperty {

	/**
	 * 用户详情id
	 */
	private String userInfoId;
	/**
	 * 用户id
	 */
	private String userId;
	/**
	 * 用户姓名
	 */
	private String realName;
	/**
	 * 手机号码
	 */
	private String mobilePhone;
	/**
	 * 电子邮箱
	 */
	private String email;
	/**
	 * 性别
	 */
	private String userGender;
	/**
	 * 用户积分
	 */
	private Integer userPoint;
	/**
	 * 注册时间
	 */
	private Date registerTime;
	/**
	 * 出生日期
	 */
	private Date birthday;
	/**
	 * 用户等级
	 */
	private String userLevel;
	/**
	 * 用户余额
	 */
	private Integer userBalance;

}
