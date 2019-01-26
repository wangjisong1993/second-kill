package com.eric.seckill.common.model.feign;

import lombok.Data;
import lombok.experimental.Accessors;
import org.hibernate.validator.constraints.NotBlank;

import javax.validation.constraints.NotNull;
import java.util.Date;

/**
 * 订单确认收货
 *
 * @author Eric on 2019/1/26.
 * @version 1.0
 */
@Data
@Accessors(chain = true)
public class ReceiveOrderRequest {

	/**
	 * 订单id
	 */
	@NotBlank(message = "订单id不能为空")
	private String orderId;

	/**
	 * 收货时间
	 */
	@NotNull(message = "收货时间不能为空")
	private Date receiveTime;

	/**
	 * 签名
	 */
	@NotBlank(message = "签名不能为空")
	private String sign;


}
