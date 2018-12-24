package com.eric.seckill.common.leaf;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import java.util.Date;

/**
 * 美团leaf
 *
 * @author wang.js
 * @date 2018/12/24
 * @copyright yougou.com
 */
@Data
@NoArgsConstructor
@Accessors(chain = true)
public class IdSegment {

	/**
	 * 所属的业务系统标记
	 */
	private String bizTag;
	/**
	 * 该bizTag目前所被分配的id段的最大值
	 */
	private long maxId;
	/**
	 * 步长, 每次能取出的个数
	 * 每次分配的号段的长度
	 */
	private long pStep;
	/**
	 * 创建时间
	 */
	private Date createTime;
	/**
	 * 上次更新时间
	 */
	private Date lastUpdateTime;
	/**
	 * 当前更新时间
	 */
	private Date currentUpdateTime;
}
