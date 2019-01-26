package com.eric.order.model;

import com.eric.seckill.common.model.BaseQueryRequest;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;
import org.hibernate.validator.constraints.NotBlank;

/**
 * 订单分页查询
 *
 * @author Eric on 2019/1/26.
 * @version 1.0
 */
@EqualsAndHashCode(callSuper = true)
@Data
@Accessors(chain = true)
public class OrderQueryRequest extends BaseQueryRequest {

	/**
	 * 用户id
	 */
	@NotBlank(message = "用户id不能为空")
	private String userId;
	/**
	 * 签名
	 */
	@NotBlank(message = "签名")
	private String sign;


}
