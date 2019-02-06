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
public class SpecialStrategySetting implements Serializable {
	/**
	 * 数据库主键
	 */
	@TableId
	private String id;

	/**
	 * 商店id
	 */
	private String storeId;

	/**
	 * 策略类型
	 */
	private String strategyType;

	/**
	 * 会员日(周几)
	 */
	private String weekDay;

	/**
	 * 生效时间
	 */
	private Date startTime;

	/**
	 * 结束时间
	 */
	private Date endTime;

	/**
	 * 更新人
	 */
	private Date specialStartTime;

	/**
	 * 时间段结束
	 */
	private Date specialEndTime;

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
	 * 是否删除
	 */
	@TableLogic
	private String deleteStatus;

	@Version
	private Integer version;

	private static final long serialVersionUID = 1L;

}