package com.eric.seckill.common.model.feign;

import lombok.Data;
import lombok.experimental.Accessors;
import org.hibernate.validator.constraints.NotBlank;

import javax.validation.constraints.NotNull;

/**
 * @author wang.js on 2019/1/25.
 * @version 1.0
 */
@Data
@Accessors(chain = true)
public class ChangePointRequest {

	@NotBlank(message = "用户id不能为空")
	private String userId;

	@NotBlank(message = "积分来源不能为空")
	private String pointSource;

	@NotBlank(message = "相关记录id不能为空")
	private String referNumber;

	@NotNull(message = "变动积分不能为空")
	private Integer changePoint;

	@NotBlank(message = "签名不能为空")
	private String sign;

}
