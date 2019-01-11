package com.eric.seckill.dao;

import com.eric.seckill.common.bean.SkGoodsSeckill;
import com.eric.seckill.utils.SuperMapper;
import org.apache.ibatis.annotations.Param;

/**
 * @author wang.js
 * @date 2018/12/17
 * @copyright yougou.com
 */
public interface SkGoodsSeckillMapper extends SuperMapper<SkGoodsSeckill> {
	/**
	 * 减库存
	 *
	 * @param goodsId 商品id
	 * @return int
	 */
	int reduceStock(@Param("goodsId") String goodsId);
}