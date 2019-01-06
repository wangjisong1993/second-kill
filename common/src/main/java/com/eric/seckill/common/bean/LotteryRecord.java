package com.eric.seckill.common.bean;

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
@Accessors(chain = true)
public class LotteryRecord {

	/**
	 * 数据库主键
	 */
	private String id;
	/**
	 * 抽奖项目id
	 */
	private String projectId;
	/**
	 * 奖项名称
	 */
	private String lotteryName;
	/**
	 * 奖项id
	 */
	private String lotteryItemId;
	/**
	 * 用户id
	 */
	private String userId;
	/**
	 * 创建时间
	 */
	private Date createTime;
	/**
	 * 更新时间
	 */
	private Date updateTime;

}
