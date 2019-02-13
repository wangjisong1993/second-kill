package com.eric.strategy.bean;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableLogic;
import com.baomidou.mybatisplus.annotation.Version;
import lombok.Data;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.util.Date;

/**
 * @author
 */
@Data
@Accessors(chain = true)
public class DiscountStrategy implements Serializable {
	/**
	 * 策略id
	 */
	@TableId
	private String id;

	/**
	 * 策略名称
	 */
	private String strategyName;

	/**
	 * 商店id
	 */
	private String storeId;

	/**
	 * 用户等级
	 */
	private String userLevelId;

	/**
	 * 起始金额
	 */
	private Integer baseMoney;

	/**
	 * 生效时间
	 */
	private Date startTime;

	/**
	 * 结束时间
	 */
	private Date endTime;

	/**
	 * 最大优惠金额
	 */
	private Integer maxDiscountMoney;

	/**
	 * 优先级
	 */
	private Integer priorityValue;

	/**
	 * 策略类型
	 */
	private String strategyType;

	/**
	 * 折扣率
	 */
	private Double discountRate;

	/**
	 * 创建时间
	 */
	private Date createTime;

	/**
	 * 创建人
	 */
	private String createUserId;

	/**
	 * 更新时间
	 */
	private Date updateTime;

	/**
	 * 更新人
	 */
	private String updateUserId;

	/**
	 * 优惠券最大使用金额
	 */
	private Integer maxCouponDiscount;
	/**
	 * 是否删除
	 */
	@TableLogic
	private String deleteStatus;

	@Version
	private Integer version;

	private static final long serialVersionUID = 1L;

}