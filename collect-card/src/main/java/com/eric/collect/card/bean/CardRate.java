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
public class CardRate implements Serializable {
	/**
	 * 记录id
	 */
	@TableId
	private String recordId;

	/**
	 * 卡模板id
	 */
	private String templateId;

	/**
	 * 出现概率
	 */
	private Double cardRate;

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