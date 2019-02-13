package com.eric.strategy.model;

import lombok.Data;
import lombok.experimental.Accessors;
import org.hibernate.validator.constraints.NotBlank;

import javax.validation.constraints.NotNull;
import java.util.Date;

/**
 * @author Eric on 2019/2/6.
 * @version 1.0
 */
@Data
@Accessors(chain = true)
public class AddSpecialStrategyRequest {

	@NotBlank(message = "商店id不能为空")
	private String storeId;

	@NotBlank(message = "配置的周几不能为空")
	private String weekDay;

	@NotNull(message = "开始时间不能为空哦")
	private Date startTime;

	@NotNull(message = "结束时间不能为空")
	private Date endTime;

	@NotNull(message = "特殊策略的启用时间不能为空")
	private Date specialStartTime;

	@NotNull(message = "特殊策略的结束时间不能为空")
	private Date specialEndTime;

	@NotBlank(message = "策略类型不能为空")
	private String strategyType;

	@NotBlank(message = "策略id不能为空")
	private String strategyId;

}
