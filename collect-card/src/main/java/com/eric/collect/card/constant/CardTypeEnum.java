package com.eric.collect.card.constant;

/**
 * 卡类型的枚举
 *
 * @author wang.js on 2019/1/29.
 * @version 1.0
 */
public enum CardTypeEnum {

	NORMAL_CARD("普通卡", "1"),
	COPY_CARD("复制卡", "2"),
	MASTER_CARD("万能卡", "3"),
	BOSS_CARD("五福到卡", "4"),
	;

	/**
	 * 卡类型的描述
	 */
	private String cardTypeDesc;
	/**
	 * 卡类型
	 */
	private String cardType;

	CardTypeEnum(String cardTypeDesc, String cardType) {
		this.cardTypeDesc = cardTypeDesc;
		this.cardType = cardType;
	}

	public String getCardTypeDesc() {
		return cardTypeDesc;
	}

	public void setCardTypeDesc(String cardTypeDesc) {
		this.cardTypeDesc = cardTypeDesc;
	}

	public String getCardType() {
		return cardType;
	}

	public void setCardType(String cardType) {
		this.cardType = cardType;
	}
}
