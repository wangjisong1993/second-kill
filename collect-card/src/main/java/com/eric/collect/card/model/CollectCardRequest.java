package com.eric.collect.card.model;

import lombok.Data;
import lombok.experimental.Accessors;
import org.hibernate.validator.constraints.NotBlank;

/**
 * 集福的请求
 *
 * @author Eric on 2019/1/28.
 * @version 1.0
 */
@Data
@Accessors(chain = true)
public class CollectCardRequest {

	@NotBlank(message = "用户id不能为空")
	private String userId;

	@NotBlank(message = "请求id不能为空")
	private String requestId;

}
