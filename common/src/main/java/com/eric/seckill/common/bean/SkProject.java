package com.eric.seckill.common.bean;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import java.util.Date;

/**
 * 秒杀项目
 *
 * @author wang.js
 * @date 2019/1/3
 * @copyright yougou.com
 */
@Data
@NoArgsConstructor
@Accessors(chain = true)
public class SkProject {

	/**
	 * 项目id
	 */
	private String projectId;
	/**
	 * 项目名称
	 */
	private String projectName;
	/**
	 * 开始时间
	 */
	private Date startTime;
	/**
	 * 结束时间
	 */
	private Date endTime;
	/**
	 * 创建时间
	 */
	private Date createTime;
	/**
	 * 更新时间
	 */
	private Date updateTime;
	/**
	 * 是否生效中
	 */
	private String isActive;
	/**
	 * 秒杀的商品id
	 */
	private String goodsId;
}
