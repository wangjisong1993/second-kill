package com.eric.seckill.common.model.feign;

import lombok.Data;
import lombok.experimental.Accessors;
import org.hibernate.validator.constraints.NotBlank;

import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.util.List;

/**
 * 查询优惠券的请求
 *
 * @author Eric on 2019/1/27.
 * @version 1.0
 */
@Data
@Accessors(chain = true)
public class CouponQueryRequest implements Serializable {

	/**
	 * 查询的优惠券id
	 */
	@NotNull(message = "传入的优惠券不能为空")
	private List<String> couponIds;
	/**
	 * 订单id
	 */
	@NotBlank(message = "订单id不能为空")
	private String orderId;

}
