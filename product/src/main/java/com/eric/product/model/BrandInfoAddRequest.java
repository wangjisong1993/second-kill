package com.eric.product.model;

import lombok.Data;
import lombok.experimental.Accessors;
import org.hibernate.validator.constraints.NotBlank;

/**
 * 品牌信息添加请求
 *
 * @author wang.js on 2019/1/28.
 * @version 1.0
 */
@Data
@Accessors(chain = true)
public class BrandInfoAddRequest {

	@NotBlank(message = "品牌名称不能为空")
	private String brandName;

	@NotBlank(message = "联系电话不能为空")
	private String telephone;

	@NotBlank(message = "品牌logo不能为空")
	private String brandLogo;

	@NotBlank(message = "品牌描述不能为空")
	private String brandDesc;

	@NotBlank(message = "操作用户id不能为空")
	private String operateUserId;

}
