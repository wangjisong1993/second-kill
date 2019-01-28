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
public class CardTemplate implements Serializable {
	/**
	 * 模板id
	 */
	@TableId
	private String templateId;

	/**
	 * 模板名称
	 */
	private String templateName;

	/**
	 * 卡类型
	 */
	private String cardType;

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