package com.eric.collect.card.constant;

/**
 * 卡错误码
 *
 * @author Eric on 2019/1/28.
 * @version 1.0
 */
public enum  CardErrorCodeEnum {

	EXCEED_TIME_LIMIT("今日已超过次数限制, 明天再来吧", "250"),
	ERROR_SETTING("配置错误", "251"),
	NO_CARD("没有抽到福", "252"),
	COLLECT_SUCCESS("恭喜您抽到一张福卡", "0"),
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
