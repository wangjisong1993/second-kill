package com.eric.seckill.common.model.feign;

import lombok.Data;
import lombok.experimental.Accessors;
import org.hibernate.validator.constraints.NotBlank;

import javax.validation.constraints.NotNull;

/**
 * 订单仓库id查询
 *
 * @author Eric on 2019/1/27.
 * @version 1.0
 */
@Data
@Accessors(chain = true)
public class WarehouseQueryRequest {

	@NotBlank(message = "商品id不能为空")
	private String productId;

	@NotBlank(message = "占用的订单id")
	private String orderId;

	@NotNull(message = "占用的商品数量不能为空")
	private Integer productCnt;

	@NotBlank(message = "签名不能为空")
	private String sign;

}
