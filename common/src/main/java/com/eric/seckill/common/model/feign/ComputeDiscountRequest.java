package com.eric.seckill.common.model.feign;

import lombok.Data;
import lombok.experimental.Accessors;
import org.hibernate.validator.constraints.NotBlank;

import javax.validation.constraints.NotNull;

/**
 * 计算优惠的请求
 *
 * @author Eric on 2019/2/5.
 * @version 1.0
 */
@Data
@Accessors(chain = true)
public class ComputeDiscountRequest {

	@NotBlank(message = "用户id不能为空")
	private String userId;

	@NotBlank(message = "订单号不能为空")
	private String orderNumber;

	@NotBlank(message = "商店id不能为空")
	private String storeId;

	@NotNull(message = "订单金额不能为空")
	private Integer orderMoney;

	@NotBlank(message = "策略类型不能为空")
	private String strategyType;

}
