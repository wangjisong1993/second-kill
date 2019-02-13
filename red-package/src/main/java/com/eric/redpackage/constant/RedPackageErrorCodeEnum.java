package com.eric.redpackage.constant;

/**
 * @author wang.js on 2019/1/24.
 * @version 1.0
 */
public enum RedPackageErrorCodeEnum {

	SEND_SUCCESS("发红包成功", "0"),
	SEND_FAIL("发红包失败", "250"),
	RED_PACKAGE_NOT_EXIST("红包不存在", "251"),
	RED_PACKAGE_EXPIRE("红包已过期", "252"),
	RED_PACKAGE_FINISH("红包已抢完", "253"),
	RED_PACKAGE_RECEIVE_SUCCESS("抢到红包", "254"),
	DUPLICATE_RECEIVE("重复抢红包", "255"),
	;
	/**
	 * 定义的message
	 */
	private String message;
	/**
	 * 定义的错误码
	 */
	private String errCode;

	RedPackageErrorCodeEnum(String message, String errCode) {
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
