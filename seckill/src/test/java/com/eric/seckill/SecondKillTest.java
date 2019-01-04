package com.eric.seckill;

import com.alibaba.fastjson.JSON;
import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.service.SecondKillService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

/**
 * @author wang.js
 * @date 2019/1/3
 * @copyright yougou.com
 */
@SpringBootTest
@RunWith(SpringRunner.class)
public class SecondKillTest {

	@Autowired
	private SecondKillService secondKillService;

	private static final Logger LOGGER = LoggerFactory.getLogger(SecondKillTest.class);

	@Autowired
	private ThreadPoolTaskExecutor executorService;

	@Test
	public void t1() {
		ExecutorService executorService = Executors.newCachedThreadPool();
		String projectId = "1";
		for (int i = 0; i < 1000; i++) {
			int finalI = i;
			executorService.submit(() -> t2(projectId, finalI));
		}
		try {
			TimeUnit.SECONDS.sleep(50);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
	}

	@Test
	public void t3() {
		t2("1", 12);
	}

	private void t2(String projectId, int i) {
		LOGGER.info("线程号:" + i + "开始执行");
		CommonResult<Void> result = secondKillService.join(projectId, String.valueOf(i));
		LOGGER.info("返回结果为:" + JSON.toJSONString(result));
	}
}