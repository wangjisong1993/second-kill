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
public class UserPointLog implements Serializable {
	/**
	 * 数据库主键
	 */
	private String id;

	/**
	 * 用户id
	 */
	private String userId;

	/**
	 * 积分来源
	 */
	private String pointSource;

	/**
	 * 来源编号
	 */
	private String referNumber;

	/**
	 * 变更积分数
	 */
	private Integer changePoint;

	/**
	 * 生成时间
	 */
	private Date createTime;

	private static final long serialVersionUID = 1L;

}