package com.eric.collect.card.model;

import lombok.Data;
import lombok.experimental.Accessors;
import org.hibernate.validator.constraints.NotBlank;

/**
 * 复制卡的请求
 *
 * @author wang.js on 2019/1/29.
 * @version 1.0
 */
@Data
@Accessors(chain = true)
public class CopyCardRequest {

	@NotBlank(message = "沾福卡id不能为空")
	private String cardId;

	@NotBlank(message = "沾福人id不能为空")
	private String copyUserId;

}
