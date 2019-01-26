package com.eric.seckill.common.model.feign;

import lombok.Data;
import lombok.experimental.Accessors;
import org.hibernate.validator.constraints.NotBlank;

import javax.validation.constraints.NotNull;
import java.util.Date;

/**
 * 仓库发货请求
 *
 * @author Eric on 2019/1/26.
 * @version 1.0
 */
@Data
@Accessors(chain = true)
public class ShippingRequest {

	@NotBlank(message = "订单id不能为空")
	private String orderId;

	@NotBlank(message = "快递单号不能为空")
	private String shippingSn;

	@NotNull(message = "发货时间不能为空")
	private Date shippingTime;

	@NotBlank(message = "收货人不能为空")
	private String shippingUser;

	@NotBlank(message = "签名不能为空")
	private String sign;

}
