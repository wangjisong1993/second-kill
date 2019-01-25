package com.eric.coupon.constant;

/**
 * @author wang.js on 2019/1/24.
 * @version 1.0
 */
public enum CouponErrorCodeEnum {

	TEMPLATE_NOT_FOUND("送券模板不存在", "250"),
	USER_NOT_FOUND("用户不存在", "251"),
	SAVE_FAIL("保存失败", "252"),
	UPDATE_FAIL("保存失败", "254"),
	PRESENT_COUPON_SUCCESS("送券成功", "0"),
	INVALID_COUPON("存在非法的优惠券", "253"),
	;
	/**
	 * 定义的message
	 */
	private String message;
	/**
	 * 定义的错误码
	 */
	private String errCode;

	CouponErrorCodeEnum(String message, String errCode) {
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
