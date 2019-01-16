package com.eric.user.bean;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * @author wang.js on 2019/1/16.
 * @version 1.0
 */
@Data
public abstract class BaseProperty implements Serializable {


	private static final long serialVersionUID = 1L;

	/**
	 * 创建时间
	 */
	private Date createTime;
	/**
	 * 创建人
	 */
	private String createUserId;
	/**
	 * 更新时间
	 */
	private Date updateTime;
	/**
	 * 更新人
	 */
	private String updateUserId;

}
