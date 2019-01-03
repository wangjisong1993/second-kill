package com.eric.seckill.service;

/**
 * @author wang.js
 * @date 2018/12/18
 * @copyright yougou.com
 */
public interface SkOrderService {

	/**
	 * 保存用户的秒杀订单
	 *
	 * @param userId 用户id
	 * @param goodsId 商品id
	 * @return boolean
	 */
	boolean saveOrder(String userId, String goodsId);
}
