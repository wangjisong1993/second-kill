package com.eric.redpackage.model;

import lombok.Data;
import lombok.experimental.Accessors;
import org.hibernate.validator.constraints.NotBlank;

/**
 * 抢红包的请求
 *
 * @author wang.js on 2019/2/13.
 * @version 1.0
 */
@Data
@Accessors(chain = true)
public class ReceiveRedPackageRequest {

	@NotBlank(message = "红包id不能为空")
	private String redPackageId;

	@NotBlank(message = "接收人不能为空")
	private String receiver;

}
