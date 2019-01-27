package com.eric.warehouse.model;

import lombok.Data;
import lombok.experimental.Accessors;
import org.hibernate.validator.constraints.NotBlank;

import javax.validation.constraints.NotNull;

/**
 * 商品入库请求
 *
 * @author Eric on 2019/1/27.
 * @version 1.0
 */
@Data
@Accessors(chain = true)
public class InStockRequest {

	@NotBlank(message = "商品id不能为空")
	private String productId;

	@NotBlank(message = "仓库id不能为空")
	private String warehouseId;

	@NotBlank(message = "供应商id不能为空")
	private String supplierId;

	@NotNull(message = "商品数量不能为空")
	private Integer productCnt;

	@NotBlank(message = "签收人不能为空")
	private String receiver;

	@NotBlank(message = "采购单号不能为空")
	private String contractNo;

	@NotBlank(message = "签名不能为空")
	private String sign;

}
