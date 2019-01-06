package com.eric.seckill.common.model;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import java.io.Serializable;

/**
 * @author Eric on 2019/1/6.
 * @version 1.0
 */
@Data
@NoArgsConstructor
@Accessors(chain = true)
public class LotteryRegion implements Serializable {

	/**
	 * 抽奖活动id
	 */
	private String projectId;
	/**
	 * 奖项id
	 */
	private String lotteryItemId;
	/**
	 * 奖项名称
	 */
	private String lotteryName;
	/**
	 * 区间开始
	 */
	private Integer startIndex;
	/**
	 * 区间结束
	 */
	private Integer endIndex;

}
