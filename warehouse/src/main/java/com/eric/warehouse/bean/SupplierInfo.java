package com.eric.warehouse.bean;

import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.util.Date;

/**
 * @author
 */
@Data
@Accessors(chain = true)
public class SupplierInfo implements Serializable {
	/**
	 * 供应商ID
	 */
	@TableId
	private String supplierId;

	/**
	 * 供应商编码
	 */
	private String supplierCode;

	/**
	 * 供应商名称
	 */
	private String supplierName;

	/**
	 * 供应商类型
	 */
	private String supplierType;

	/**
	 * 供应商联系人
	 */
	private String linkMan;

	/**
	 * 联系电话
	 */
	private String phoneNumber;

	/**
	 * 状态
	 */
	private String supplierStatus;

	/**
	 * 创建时间
	 */
	private Date createTime;

	/**
	 * 创建人
	 */
	private String createUserId;

	/**
	 * 更新时间
	 */
	private Date updateTime;

	/**
	 * 更新人
	 */
	private String updateUserId;

	private static final long serialVersionUID = 1L;

}