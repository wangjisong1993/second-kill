package com.eric.seckill.service;

/**
 * @author wang.js
 * @date 2018/12/18
 * @copyright yougou.com
 */
public interface SkGoodsSeckillService {

	/**
	 * 根据商品id获取库存数量
	 *
	 * @param goodsId 商品id
	 * @return Integer
	 */
	Integer findSkGoodsStockById(String goodsId);

	/**
	 * 减库存
	 * @param goodsId 商品id
	 * @return long
	 */
	long seckill(String goodsId);

	/**
	 * 减库存操作
	 *
	 * @param goodsId 商品id
	 * @return boolean
	 */
	boolean reduceStock(String goodsId);
}
