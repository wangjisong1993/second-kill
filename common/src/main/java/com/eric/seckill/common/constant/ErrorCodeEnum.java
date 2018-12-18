package com.eric.seckill.common.constant;

/**
 * @author wang.js
 * @date 2018/12/18
 * @copyright yougou.com
 */
public enum ErrorCodeEnum {

	SUCCESS("查询成功", "200"),
	SERVER_ERROR("服务器异常", "500"),
	SERVER_TIMEOUT("调用超时", "501");

	/**
	 * 定义的message
	 */
	private String message;
	/**
	 * 定义的错误码
	 */
	private String errCode;

	ErrorCodeEnum(String message, String errCode) {
		this.message = message;
		this.errCode = errCode;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getErrCode() {
		return errCode;
	}

	public void setErrCode(String errCode) {
		this.errCode = errCode;
	}
}