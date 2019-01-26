package com.eric.seckill.common.model.feign;

import lombok.Data;
import lombok.experimental.Accessors;
import org.hibernate.validator.constraints.NotBlank;

/**
 * 字典查询
 *
 * @author Eric on 2019/1/26.
 * @version 1.0
 */
@Data
@Accessors(chain = true)
public class DictQueryRequest {

	@NotBlank(message = "字典类型不能为空")
	private String dataType;

	@NotBlank(message = "字典值不能为空")
	private String dataCode;

	/**
	 * 字典值
	 */
	private String dataValue;

}
