package com.eric.seckill.common.model.feign;

import lombok.Data;
import lombok.experimental.Accessors;
import org.hibernate.validator.constraints.NotBlank;

import javax.validation.constraints.NotNull;
import java.util.List;

/**
 * 使用优惠券
 *
 * @author wang.js on 2019/1/25.
 * @version 1.0
 */
@Data
@Accessors(chain = true)
public class UsingCouponRequest {

	/**
	 * 优惠券号码
	 */
	@NotNull(message = "优惠券号码不能空")
	private List<String> couponSns;
	/**
	 * 用户id
	 */
	@NotBlank(message = "用户id不能为空")
	private String userId;

	/**
	 * 签名
	 */
	@NotBlank(message = "签名不能为空")
	private String sign;

}
