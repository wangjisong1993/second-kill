package com.eric.order.constant;

/**
 * 审核状态
 * @author wang.js on 2019/1/24.
 * @version 1.0
 */
public enum AuditStatusEnum {

	NOT_AUDIT("未审核", "1"),
	AUDITE_SUCCESS("审核通过", "2"),
	AUDIT_FAIL("审核不通过", "3"),
	;

	/**
	 * 状态描述
	 */
	private String auditStatusDesc;
	/**
	 * 状态码
	 */
	private String auditStatus;

	AuditStatusEnum(String auditStatusDesc, String auditStatus) {
		this.auditStatusDesc = auditStatusDesc;
		this.auditStatus = auditStatus;
	}

	public String getAuditStatusDesc() {
		return auditStatusDesc;
	}

	public void setAuditStatusDesc(String auditStatusDesc) {
		this.auditStatusDesc = auditStatusDesc;
	}

	public String getAuditStatus() {
		return auditStatus;
	}

	public void setAuditStatus(String auditStatus) {
		this.auditStatus = auditStatus;
	}
}
