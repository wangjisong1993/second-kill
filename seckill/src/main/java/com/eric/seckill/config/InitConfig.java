package com.eric.seckill.config;

import com.eric.seckill.common.constant.SecondKillCacheName;
import com.eric.seckill.service.SkGoodsSeckillService;
import com.eric.seckill.service.SkProjectService;
import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Configuration;
import redis.clients.jedis.Jedis;

import javax.annotation.Resource;
import java.util.List;

/**
 * 初始化配置
 *
 * @author wang.js
 * @date 2019/1/3
 * @copyright yougou.com
 */
@Configuration
public class InitConfig implements CommandLineRunner {

	@Resource
	private SkGoodsSeckillService skGoodsSeckillService;

	@Resource
	private SkProjectService skProjectService;

	@Resource
	private Jedis jedis;

	@Override
	public void run(String... strings) throws Exception {
		List<String> goodsIds = skProjectService.listAllGoodsId();
		if (goodsIds != null) {
			for (String goodsId : goodsIds) {
				Integer stock = skGoodsSeckillService.findSkGoodsStockById(goodsId);
				jedis.set(SecondKillCacheName.SECOND_PROJECT_PREFIX + goodsId, String.valueOf(stock));
			}
		}
	}
}
