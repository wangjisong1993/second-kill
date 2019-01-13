package com.eric.seckill.common.bean;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import java.util.Date;

/**
 * @author Eric on 2019/1/6.
 * @version 1.0
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
@Builder(toBuilder = true)
public class LotteryItem {

	/**
	 * 数据库主键
	 */
	private String id;
	/**
	 * 奖项名称
	 */
	private String lotteryName;
	/**
	 * 中奖率
	 */
	private Double lotteryRate;
	/**
	 * 创建时间
	 */
	private Date createTime;
	/**
	 * 更新时间
	 */
	private Date updateTime;
	/**
	 * 抽奖活动id
	 */
	private String projectId;
	/**
	 * 库存数量
	 */
	private Integer stockCount;
}
