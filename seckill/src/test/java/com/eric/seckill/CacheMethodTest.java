package com.eric.seckill;

import com.alibaba.fastjson.JSON;
import com.eric.seckill.common.bean.SkUser;
import com.eric.seckill.service.base.SkUserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

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

	private static final Logger LOGGER = LoggerFactory.getLogger(CacheMethodTest.class);

	@Test
	public void t1() {
		List<SkUser> skUserList = skUserService.listAll();
		LOGGER.info("返回结果为:" + JSON.toJSONString(skUserList));
	}
}
