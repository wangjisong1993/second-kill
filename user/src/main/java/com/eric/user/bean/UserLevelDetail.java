package com.eric.user.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

/**
 * @author wang.js on 2019/1/16.
 * @version 1.0
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
@EqualsAndHashCode(callSuper = true)
public class UserLevelDetail extends BaseProperty {

	/**
	 * 数据库主键
	 */
	private String id;
	/**s
	 * 等级名称
	 */
	private String levelName;
	/**
	 * 最小点数
	 */
	private Integer minPoint;
	/**
	 * 最高点数
	 */
	private Integer maxPoint;
}
