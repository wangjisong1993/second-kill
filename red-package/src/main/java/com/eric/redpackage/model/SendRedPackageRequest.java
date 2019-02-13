package com.eric.redpackage.model;

import lombok.Data;
import lombok.experimental.Accessors;
import org.hibernate.validator.constraints.NotBlank;

import javax.validation.constraints.NotNull;

/**
 * 发红包的请求
 *
 * @author wang.js on 2019/2/13.
 * @version 1.0
 */
@Data
@Accessors(chain = true)
public class SendRedPackageRequest {

	@NotBlank(message = "发送人不能为空")
	private String sender;

	@NotBlank(message = "红包类型不能为空")
	private String redPackageType;

	@NotNull(message = "红包个数不能为空")
	private Integer num;

	@NotNull(message = "红包金额不能为空")
	private Integer money;

}
