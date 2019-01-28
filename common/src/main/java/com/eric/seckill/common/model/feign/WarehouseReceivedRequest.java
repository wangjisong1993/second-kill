package com.eric.seckill.common.model.feign;

import lombok.Data;
import lombok.experimental.Accessors;
import org.hibernate.validator.constraints.NotBlank;

/**
 * 用户收货
 *
 * @author wang.js on 2019/1/28.
 * @version 1.0
 */
@Data
@Accessors(chain = true)
public class WarehouseReceivedRequest {

	@NotBlank(message = "订单id不能为空")
	private String orderId;

	@NotBlank(message = "操作的员工id不能为空")
	private String operateUserId;

	@NotBlank(message = "签名不能为空")
	private String sign;
}
