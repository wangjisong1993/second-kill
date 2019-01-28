package com.eric.collect.card.model;

import lombok.Data;
import lombok.experimental.Accessors;

/**
 * 集福的响应
 *
 * @author Eric on 2019/1/28.
 * @version 1.0
 */
@Data
@Accessors(chain = true)
public class CollectCardResponse {

	/**
	 * 抽中的卡的id
	 */
	private String cardId;
	/**
	 * 抽中卡的名称
	 */
	private String cardName;
	/**
	 * 抽中卡的类型
	 */
	private String cardType;

}
