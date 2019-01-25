package com.eric.coupon.constant;

/**
 * 优惠券状态
 *
 * @author wang.js on 2019/1/25.
 * @version 1.0
 */
public enum  CouponStatusEnum {
	WAITING_FOR_ACTIVE("等待激活", "0"),
	NORMAL("正常状态", "1"),
	USING("使用中", "2"),
	EXPIRE("已过期", "3"),
	USED("已使用", "4"),
	CANCEL("已作废", "5"),
	FREEZE("已冻结", "6"),
	;

	/**
	 * 状态描述
	 */
	private String statusDesc;
	/**
	 * 状态码
	 */
	private String statusCode;

	CouponStatusEnum(String statusDesc, String statusCode) {
		this.statusDesc = statusDesc;
		this.statusCode = statusCode;
	}

	public String getStatusDesc() {
		return statusDesc;
	}

	public void setStatusDesc(String statusDesc) {
		this.statusDesc = statusDesc;
	}

	public String getStatusCode() {
		return statusCode;
	}

	public void setStatusCode(String statusCode) {
		this.statusCode = statusCode;
	}

}
