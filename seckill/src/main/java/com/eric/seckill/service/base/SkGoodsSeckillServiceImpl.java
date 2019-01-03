package com.eric.seckill.service.base;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.seckill.cache.anno.MethodCache;
import com.eric.seckill.common.bean.SkGoodsSeckill;
import com.eric.seckill.common.constant.SecondKillCacheName;
import com.eric.seckill.common.exception.CustomException;
import com.eric.seckill.dao.SkGoodsSeckillMapper;
import com.eric.seckill.service.SkGoodsSeckillService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import redis.clients.jedis.Jedis;

import javax.annotation.Resource;

/**
 * @author wang.js
 * @date 2018/12/17
 * @copyright yougou.com
 */
@Service
public class SkGoodsSeckillServiceImpl extends ServiceImpl<SkGoodsSeckillMapper, SkGoodsSeckill> implements SkGoodsSeckillService {

	@Resource
	private Jedis jedis;

	private static final Logger LOGGER = LoggerFactory.getLogger(SkGoodsSeckillServiceImpl.class);

	@Override
	public Integer findSkGoodsStockById(String goodsId) {
		Integer stock = getGoodsStock(goodsId);
		return stock;
	}

	@Override
	public long seckill(String goodsId) {
		Long stock = jedis.decr(SecondKillCacheName.SECOND_PROJECT_PREFIX + goodsId);
		LOGGER.info("当前库存数量为:{}", stock);
		return stock;
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
