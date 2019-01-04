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
	 * @param goodsId
	 * @return
	 */
	Integer findSkGoodsStockById(String goodsId);

	/**
	 * 减库存
	 * @param goodsId
	 * @return
	 */
	long seckill(String goodsId);

	/**
	 * 减库存操作
	 *
	 * @param goodsId
	 * @return
	 */
	boolean reduceStock(String goodsId);
}
