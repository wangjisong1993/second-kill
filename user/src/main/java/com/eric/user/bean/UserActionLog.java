package com.eric.user.bean;

import com.baomidou.mybatisplus.annotation.TableId;
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
public class UserActionLog implements Serializable {
	/**
	 * 数据库主键
	 */
	@TableId
	private String actionLogId;

	/**
	 * 用户id
	 */
	private String userId;

	/**
	 * 操作的系统
	 */
	private String actionSystem;

	/**
	 * 操作模块
	 */
	private String actionModule;

	/**
	 * 操作的url
	 */
	private String actionUrl;

	/**
	 * 操作时间
	 */
	private Date actionTime;

	private static final long serialVersionUID = 1L;

}