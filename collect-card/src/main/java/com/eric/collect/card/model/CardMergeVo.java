package com.eric.collect.card.model;

import lombok.Data;
import lombok.experimental.Accessors;

/**
 * 卡合并的请求
 *
 * @author wang.js on 2019/1/29.
 * @version 1.0
 */
@Data
@Accessors(chain = true)
public class CardMergeVo {

	/**
	 * 记录id
	 */
	private String logId;
	/**
	 * 卡类型
	 */
	private String cardType;
	/**
	 * 模板id
	 */
	private String templateId;
	/**
	 * 卡id
	 */
	private String cardId;
	/**
	 * 卡状态
	 */
	private String cardStatus;

}
