package com.eric.collect.card.model;

import lombok.Data;
import lombok.experimental.Accessors;

/**
 * 各个卡模板的区间
 *
 * @author Eric on 2019/1/28.
 * @version 1.0
 */
@Data
@Accessors(chain = true)
public class CollectCardRegion {

	/**
	 * 区间开始
	 */
	private int startIndex;
	/**
	 * 区间结束
	 */
	private int endIndex;
	/**
	 * 该区间代表的卡模板id
	 */
	private String templateId;

}
