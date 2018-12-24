package com.eric.seckill;

import com.alibaba.fastjson.JSON;
import com.eric.seckill.common.bean.SkGoods;
import com.eric.seckill.common.bean.SkUser;
import com.eric.seckill.service.SkGoodsService;
import com.eric.seckill.service.SkUserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.annotation.Resource;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

/**
 * @author wang.js
 * @date 2018/12/17
 * @copyright yougou.com
 */
@SpringBootTest
@RunWith(SpringRunner.class)
public class CacheMethodTest {

	@Autowired
	private SkUserService skUserService;

	@Autowired
	private ExecutorService executorService;

	@Resource
	private SkGoodsService skGoodsService;

	private static final Logger LOGGER = LoggerFactory.getLogger(CacheMethodTest.class);

	@Test
	public void t1() {
		List<SkUser> skUserList = skUserService.listAll();
		LOGGER.info("返回结果为:" + JSON.toJSONString(skUserList));
	}

	@Test
	public void t2() {
		String id = "1";
		String nickname = "大傻逼";
		for (int i = 0; i < 10; i++) {
			int finalI = i;
			executorService.submit(() -> {
				LOGGER.info(finalI + "个线程开始执行");
				SkUser user = skUserService.findOne(id);
				LOGGER.info(finalI + "个线程返回结果为:" + JSON.toJSONString(user));
			});
		}
		try {
			TimeUnit.SECONDS.sleep(40);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
	}

	@Test
	public void t3() {
		SkGoods skGoods = new SkGoods().setId(1L);
		skGoodsService.findSkGoodsById(skGoods);
		LOGGER.info("返回结果为:" + skGoods);
	}
}
