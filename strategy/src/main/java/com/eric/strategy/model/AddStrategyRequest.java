package com.eric.strategy.model;

import lombok.Data;
import lombok.experimental.Accessors;
import org.hibernate.validator.constraints.NotBlank;

import javax.validation.constraints.NotNull;
import java.util.Date;

/**
 * 添加策略的请求
 *
 * @author Eric on 2019/2/5.
 * @version 1.0
 */
@Data
@Accessors(chain = true)
public class AddStrategyRequest {

	/**
	 * 要copy的父类策略的id
	 */
	private String parentStrategyId;

	/**
	 * 策略名称
	 */
	@NotBlank(message = "策略名称不能为空")
	private String strategyName;

	/**
	 * 商店id
	 */
	@NotBlank(message = "商店id不能为空")
	private String storeId;

	/**
	 * 用户等级
	 */
	@NotBlank(message = "用户等级不能为空")
	private String userLevelId;

	/**
	 * 起始金额
	 */
	@NotNull(message = "起始金额不能为空")
	private Integer baseMoney;

	/**
	 * 生效时间
	 */
	@NotNull(message = "生效时间不能为空")
	private Date startTime;

	/**
	 * 结束时间
	 */
	@NotNull(message = "结束时间不能为空")
	private Date endTime;

	/**
	 * 最大优惠金额
	 */
	@NotNull(message = "最大优惠金额不能为空, 如果无限制则传-1")
	private Integer maxDiscountMoney;

	/**
	 * 优先级
	 */
	@NotNull(message = "优先级不能为空")
	private Integer priorityValue;

	/**
	 * 策略类型
	 */
	@NotBlank(message = "策略类型不能为空")
	private String strategyType;

	/**
	 * 是否可以配合其他策略使用
	 */
	@NotBlank(message = "是否允许叠加配置不能为空")
	private String useOtherStrategy;

	/**
	 * 优惠券最大使用金额
	 */
	@NotNull(message = "优惠券最大使用金额不能为空")
	private Integer maxCouponDiscount;

}
