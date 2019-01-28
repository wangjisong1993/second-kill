package com.eric.collect.card.model;

import lombok.Data;
import lombok.experimental.Accessors;
import org.hibernate.validator.constraints.NotBlank;

/**
 * 转赠福卡的请求
 *
 * @author Eric on 2019/1/28.
 * @version 1.0
 */
@Data
@Accessors(chain = true)
public class PresentCardRequest {

	@NotBlank(message = "来源人用户id不能为空")
	private String fromUserId;

	@NotBlank(message = "去向用户id不能为空")
	private String toUserId;

	@NotBlank(message = "转赠的卡id不能为空")
	private String cardId;

}
