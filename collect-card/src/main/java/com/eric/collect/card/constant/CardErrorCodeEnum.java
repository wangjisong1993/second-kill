package com.eric.collect.card.constant;

/**
 * 卡错误码
 *
 * @author Eric on 2019/1/28.
 * @version 1.0
 */
public enum CardErrorCodeEnum {

	EXCEED_TIME_LIMIT("今日已超过次数限制, 明天再来吧", "250"),
	ERROR_SETTING("配置错误", "251"),
	NO_CARD("没有抽到福", "252"),
	NO_MERGE_CARD("没有卡可以合并", "253"),
	COLLECT_SUCCESS("恭喜您抽到一张福卡", "0"),
	OVER_ONE_MASTER_CARD("一次最多使用一张万能卡", "254"),
	CARD_STATUS_ABNORMAL("卡状态异常", "255"),
	MERGE_FAIL("合成失败", "256"),
	CARD_NOT_FIND("没有找到卡", "257"),
	NO_ENOUGH_MERGE_CARD("没有足够的卡可以合并", "258"),
	PRESENT_SUCCESS("转赠成功", "0"),
	MERGE_SUCCESS("合成成功", "0"),
	COPY_SUCCESS("复制成功", "0"),
	COPY_FAIL("没有沾到福气", "259"),
	MARK_USED_FAIL("卡状态标记为已使用失败", "259"),
	;


	/**
	 * 错误信息
	 */
	private String errorMsg;

	/**
	 * 错误码
	 */
	private String errorCode;

	CardErrorCodeEnum(String errorMsg, String errorCode) {
		this.errorMsg = errorMsg;
		this.errorCode = errorCode;
	}

	public String getErrorCode() {
		return errorCode;
	}

	public void setErrorCode(String errorCode) {
		this.errorCode = errorCode;
	}

	public String getErrorMsg() {
		return errorMsg;
	}

	public void setErrorMsg(String errorMsg) {
		this.errorMsg = errorMsg;
	}
}
