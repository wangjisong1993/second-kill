package com.eric.seckill.service;

import com.eric.seckill.common.bean.SkOrderInfo;

/**
 * @author wang.js
 * @date 2018/12/18
 * @copyright yougou.com
 */
public interface SkOrderInfoService {

	/**
	 * 插入订单详情
	 *
	 * @param info 订单详情
	 * @return int
	 */
	int insert(SkOrderInfo info);
}
