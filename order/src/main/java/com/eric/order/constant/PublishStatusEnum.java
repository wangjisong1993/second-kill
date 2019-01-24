package com.eric.order.constant;

/**
 * 商品上下架情况
 *
 * @author wang.js on 2019/1/24.
 * @version 1.0
 */
public enum  PublishStatusEnum {

	UP("上架状态", "1"),
	DOWN("下架状态", "2"),
	;

	/**
	 * 情况描述
	 */
	private String statusDesc;

	/**
	 * 上下架情况
	 */
	private String status;

	PublishStatusEnum(String statusDesc, String status) {
		this.statusDesc = statusDesc;
		this.status = status;
	}

	public String getStatusDesc() {
		return statusDesc;
	}

	public void setStatusDesc(String statusDesc) {
		this.statusDesc = statusDesc;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
}
