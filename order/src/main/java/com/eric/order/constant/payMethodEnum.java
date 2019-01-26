package com.eric.order.constant;

/**
 * 支付方式的枚举
 *
 * @author Eric on 2019/1/26.
 * @version 1.0
 */
public enum payMethodEnum {
	WECHAT_PAY("微信支付", "1"),
	ALI_PAY("支付宝支付", "2"),
	JD_PAY("京东支付", "3"),
	UNION_PAY("银联支付", "4"),;

	/**
	 * 订单状态描述
	 */
	private String payMethodDesc;
	/**
	 * 订单状态编码
	 */
	private String payMethodCode;

	payMethodEnum(String payMethodDesc, String payMethodCode) {
		this.payMethodDesc = payMethodDesc;
		this.payMethodCode = payMethodCode;
	}

	public String getPayMethodDesc() {
		return payMethodDesc;
	}

	public void setPayMethodDesc(String payMethodDesc) {
		this.payMethodDesc = payMethodDesc;
	}

	public String getPayMethodCode() {
		return payMethodCode;
	}

	public void setPayMethodCode(String payMethodCode) {
		this.payMethodCode = payMethodCode;
	}
}
