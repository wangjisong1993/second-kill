package com.eric.seckill.service.base;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.seckill.cache.anno.MethodCache;
import com.eric.seckill.common.bean.SkGoodsSeckill;
import com.eric.seckill.common.constant.SecondKillCacheName;
import com.eric.seckill.common.exception.CustomException;
import com.eric.seckill.dao.SkGoodsSeckillMapper;
import com.eric.seckill.service.SkGoodsSeckillService;
import org.springframework.stereotype.Service;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

import javax.annotation.Resource;

/**
 * @author wang.js
 * @date 2018/12/17
 * @copyright yougou.com
 */
@Service
public class SkGoodsSeckillServiceImpl extends ServiceImpl<SkGoodsSeckillMapper, SkGoodsSeckill> implements SkGoodsSeckillService {

	@Resource
	private JedisPool jedisPool;

	@Override
	public Integer findSkGoodsStockById(String goodsId) {
		return getGoodsStock(goodsId);
	}

	@Override
	public long seckill(String goodsId) {
		Jedis jedis = jedisPool.getResource();
		Long stock = jedis.decr(SecondKillCacheName.SECOND_PROJECT_PREFIX + goodsId);
		jedis.close();
		return stock;
	}

	@Override
	public boolean reduceStock(String goodsId) {
		return baseMapper.reduceStock(goodsId) > 0;
	}

	@MethodCache
	private Integer getGoodsStock(String goodsId) {
		SkGoodsSeckill skGoodsSeckill = baseMapper.selectById(goodsId);
		if (skGoodsSeckill == null) {
			throw new CustomException("根据商品id:" + goodsId + "获取不到商品信息");
		}
		return skGoodsSeckill.getStockCount();
	}
}
