package com.eric.warehouse.model;

import lombok.Data;
import lombok.experimental.Accessors;
import org.hibernate.validator.constraints.NotBlank;

/**
 * 添加供应商的请求
 *
 * @author Eric on 2019/1/27.
 * @version 1.0
 */
@Data
@Accessors(chain = true)
public class AddSupplierInfoRequest {

	/**
	 * 供应商编码
	 */
	@NotBlank(message = "供应商编码不能为空")
	private String supplierCode;

	/**
	 * 供应商名称
	 */
	@NotBlank(message = "供应商名称不能为空")
	private String supplierName;

	/**
	 * 供应商类型
	 */
	@NotBlank(message = "供应商类型不能为空")
	private String supplierType;

	/**
	 * 供应商联系人
	 */
	@NotBlank(message = "供应商联系人不能为空")
	private String linkMan;

	/**
	 * 联系电话
	 */
	@NotBlank(message = "联系电话不能为空")
	private String phoneNumber;

	@NotBlank(message = "操作人不能为空")
	private String userId;

}
