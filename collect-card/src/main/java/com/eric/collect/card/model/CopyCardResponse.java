package com.eric.collect.card.model;

import lombok.Data;
import lombok.experimental.Accessors;

/**
 * @author wang.js on 2019/1/29.
 * @version 1.0
 */
@Data
@Accessors(chain = true)
public class CopyCardResponse {

	/**
	 * 沾到的卡id
	 */
	private String cardId;
	/**
	 * 沾到的卡类型
	 */
	private String cardType;
	/**
	 * 沾到的卡名称
	 */
	private String cardName;

}
