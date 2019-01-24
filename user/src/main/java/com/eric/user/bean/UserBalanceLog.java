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
public class UserBalanceLog implements Serializable {
	/**
	 * 数据库主键
	 */
	@TableId
	private String id;

	/**
	 * 用户id
	 */
	private String userId;

	/**
	 * 相关单据id
	 */
	private String sourceSn;

	/**
	 * 生成时间
	 */
	private Date createTime;

	/**
	 * 变更金额
	 */
	private Integer changeAmount;

	/**
	 * 来源
	 */
	private String source;

	private static final long serialVersionUID = 1L;

}