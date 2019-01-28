package com.eric.collect.card.bean;

import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.util.Date;

/**
 * @author
 */
@Data
@Accessors(chain = true)
public class CardLogs implements Serializable {
	/**
	 * 记录id
	 */
	@TableId
	private String logId;

	/**
	 * 模板id
	 */
	private String templateId;

	/**
	 * 用户id
	 */
	private String userId;

	/**
	 * 卡id
	 */
	private String cardId;

	/**
	 * 卡状态
	 */
	private String cardStatus;

	/**
	 * 创建时间
	 */
	private Date createTime;

	/**
	 * 更新时间
	 */
	private Date updateTime;

	private static final long serialVersionUID = 1L;

}