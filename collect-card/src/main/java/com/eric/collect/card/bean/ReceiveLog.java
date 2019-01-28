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
public class ReceiveLog implements Serializable {
	/**
	 * 记录id
	 */
	@TableId
	private String logId;

	/**
	 * 用户id
	 */
	private String userId;

	/**
	 * 卡id
	 */
	private String cardId;

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