package com.eric.seckill.common.model;

import lombok.Data;
import lombok.experimental.Accessors;

/**
 * 基类
 *
 * @author Eric on 2019/1/26.
 * @version 1.0
 */
@Data
@Accessors(chain = true)
public abstract class BaseQueryRequest {

	/**
	 * 查询页
	 */
	private int pageNum = 1;
	/**
	 * 每页大小
	 */
	private int pageSize = 10;

}
