package com.eric.seckill.service.impl;

import com.eric.seckill.common.constant.SecondKillCacheName;
import com.eric.seckill.service.InitService;
import com.eric.seckill.service.SkGoodsSeckillService;
import com.eric.seckill.service.SkProjectService;
import org.springframework.stereotype.Service;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author Eric on 2019/1/4.
 * @version 1.0
 */
@Service
public class InitServiceImpl implements InitService {

	@Resource
	private SkGoodsSeckillService skGoodsSeckillService;

	@Resource
	private SkProjectService skProjectService;

	@Resource
	private JedisPool jedisPool;

	@Override
	public void initStock() {
		Jedis jedis = jedisPool.getResource();
		try {
			List<String> goodsIds = skProjectService.listAllGoodsId();
			if (goodsIds != null) {
				for (String goodsId : goodsIds) {
					Integer stock = skGoodsSeckillService.findSkGoodsStockById(goodsId);
					jedis.set(SecondKillCacheName.SECOND_PROJECT_PREFIX + goodsId, String.valueOf(stock));
				}
			}
		} finally {
			jedis.close();
		}
	}

}
