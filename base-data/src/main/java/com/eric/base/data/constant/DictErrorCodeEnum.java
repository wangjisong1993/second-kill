package com.eric.base.data.constant;

/**
 * @author wang.js
 * @date 2018/12/18
 * @copyright yougou.com
 */
public enum DictErrorCodeEnum {

	DICT_NOT_FOUND("未找到字典值", "250"),
	;

	/**
	 * 定义的message
	 */
	private String message;
	/**
	 * 定义的错误码
	 */
	private String errCode;

	DictErrorCodeEnum(String message, String errCode) {
		this.message = message;
		this.errCode = errCode;
	}

	public String getMessage() {
		return message;
	}

	protected void setMessage(String message) {
		this.message = message;
	}

	public String getErrCode() {
		return errCode;
	}

	protected void setErrCode(String errCode) {
		this.errCode = errCode;
	}
}
