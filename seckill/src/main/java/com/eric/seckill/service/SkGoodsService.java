package com.eric.seckill.service;

import com.eric.seckill.common.bean.SkGoods;

/**
 * @author wang.js
 * @date 2018/12/18
 * @copyright yougou.com
 */
public interface SkGoodsService {

	/**
	 * 根据id查找具体的货品
	 * @param skGoods
	 * @return
	 */
	SkGoods findSkGoodsById(SkGoods skGoods);
}
