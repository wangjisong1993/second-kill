package com.eric.seckill.common.constant;

/**
 * 字典数据类型枚举
 *
 * @author Eric on 2019/1/26.
 * @version 1.0
 */
public enum DictDataTypeEnum {

	ORDER_STATUS("ORDERSTATUS", "订单状态"),
	PAY_METHOD("PAYMETHOD", "支付方式"),
	;

	/**
	 * 字典类型
	 */
	private String dataType;
	/**
	 * 字典描述
	 */
	private String dataDesc;

	DictDataTypeEnum(String dataType, String dataDesc) {
		this.dataType = dataType;
		this.dataDesc = dataDesc;
	}

	public String getDataType() {
		return dataType;
	}

	public void setDataType(String dataType) {
		this.dataType = dataType;
	}

	public String getDataDesc() {
		return dataDesc;
	}

	public void setDataDesc(String dataDesc) {
		this.dataDesc = dataDesc;
	}
}
