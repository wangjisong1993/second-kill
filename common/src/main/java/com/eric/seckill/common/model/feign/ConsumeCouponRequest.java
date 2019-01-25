package com.eric.seckill.common.model.feign;

import lombok.Data;
import lombok.experimental.Accessors;
import org.hibernate.validator.constraints.NotBlank;

/**
 * 消费优惠券
 *
 * @author wang.js on 2019/1/25.
 * @version 1.0
 */
@Data
@Accessors(chain = true)
public class ConsumeCouponRequest {

	@NotBlank(message = "用户id不能为空")
	private String userId;

	@NotBlank(message = "订单id不能为空")
	private String orderId;

	@NotBlank(message = "签名不能为空")
	private String sign;
}
