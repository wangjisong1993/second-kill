package com.eric.base.data.model;

import lombok.Data;
import lombok.experimental.Accessors;
import org.hibernate.validator.constraints.NotBlank;

/**
 * 作废字典项的请求
 *
 * @author Eric on 2019/1/26.
 * @version 1.0
 */
@Data
@Accessors(chain = true)
public class DisableDictRequest {

	/**
	 * 字典类型
	 */
	@NotBlank(message = "字典类型不能为空")
	private String dataType;
	/**
	 * 字典编码
	 */
	@NotBlank(message = "字典编码不能为空")
	private String dataCode;
	/**
	 * 操作人
	 */
	@NotBlank(message = "操作人不能为空")
	private String userId;


}
