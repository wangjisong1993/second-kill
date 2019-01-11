package com.eric.seckill.service;

import com.eric.seckill.common.bean.SkGoods;

/**
 * @author wang.js
 * @date 2018/12/18
 * @copyright yougou.com
 */
public interface SkGoodsService {

	/**
	 * 根据商品id获取商品信息
	 *
	 * @param id 商品id
	 * @return SkGoods
	 */
	SkGoods findById(String id);

	/**
	 * 根据id查找具体的货品
	 * @param skGoods 商品
	 * @return SkGoods
	 */
	SkGoods findSkGoodsById(SkGoods skGoods);
}
