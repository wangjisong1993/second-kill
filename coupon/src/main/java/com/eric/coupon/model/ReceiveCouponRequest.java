package com.eric.coupon.model;

import lombok.Data;
import lombok.experimental.Accessors;
import org.hibernate.validator.constraints.NotBlank;

import javax.validation.constraints.NotNull;
import java.util.List;

/**
 * @author wang.js on 2019/1/25.
 * @version 1.0
 */
@Data
@Accessors(chain = true)
public class ReceiveCouponRequest {

	@NotNull(message = "用户id不能为空")
	private List<String> userIds;

	@NotBlank(message = "优惠券模板不能为空")
	private String couponTemplateId;

	@NotNull(message = "领取数量不能为空")
	private Integer couponNum;

	@NotBlank(message = "签名不能为空")
	private String sign;
}
