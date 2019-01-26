package com.eric.base.data.model;

import lombok.Data;
import lombok.experimental.Accessors;
import org.hibernate.validator.constraints.NotBlank;

/**
 * 保存数据字典的请求
 *
 * @author Eric on 2019/1/26.
 * @version 1.0
 */
@Data
@Accessors(chain = true)
public class SaveSysDictRequest {

	@NotBlank(message = "数据类别不能为空")
	private String dataType;

	@NotBlank(message = "数据编码不能为空")
	private String dataCode;

	@NotBlank(message = "字典值不能为空")
	private String dataValue;

	@NotBlank(message = "字典描述不能为空")
	private String dataDesc;

	@NotBlank(message = "创建人不能为空")
	private String userId;

}
