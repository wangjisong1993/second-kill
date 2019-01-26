package com.eric.coupon.model;

import lombok.Data;
import lombok.experimental.Accessors;
import org.hibernate.validator.constraints.NotBlank;

import javax.validation.constraints.NotNull;
import java.util.Date;

/**
 * 添加模板的请求
 *
 * @author Eric on 2019/1/26.
 * @version 1.0
 */
@Data
@Accessors(chain = true)
public class TemplateAddRequest {

	@NotBlank(message = "适用的地区id不能为空, -1表示适用所有地区")
	private String regionId;

	@NotBlank(message = "优惠券类型不能为空")
	private String type;

	@NotBlank(message = "优惠券名称不能为空")
	private String name;

	@NotBlank(message = "优惠券图片不能为空")
	private String img;

	@NotNull(message = "优惠券开始时间不能为空")
	private Date startTime;

	@NotNull(message = "优惠券结束时间不能为空")
	private Date endTime;

	@NotNull(message = "优惠券面值不能为空")
	private Integer money;

	@NotNull(message = "优惠券启用金额不能为空, 0表示无门槛")
	private Integer fullMoney;

	@NotBlank(message = "签名不能为空")
	private String sign;

}
