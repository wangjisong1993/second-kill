package com.eric.collect.card.model;

import lombok.Data;
import lombok.experimental.Accessors;
import org.hibernate.validator.constraints.NotBlank;

import javax.validation.constraints.NotNull;
import java.util.List;

/**
 * 卡合并为五福到的请求
 *
 * @author Eric on 2019/1/28.
 * @version 1.0
 */
@Data
@Accessors(chain = true)
public class CardMergeRequest {

	/**
	 * 要合并的卡
	 */
	@NotNull(message = "要合并的卡id不能为空")
	private List<String> cardIds;

	@NotBlank(message = "用户id不能为空")
	private String userId;

}
