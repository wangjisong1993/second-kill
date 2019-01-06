package com.eric.lottery;

import com.alibaba.fastjson.JSON;
import com.eric.lottery.service.LotteryService;
import com.eric.lottery.service.base.UserService;
import com.eric.seckill.common.bean.User;
import com.eric.seckill.common.model.CommonResult;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author Eric on 2019/1/6.
 * @version 1.0
 */
@SpringBootTest
@RunWith(SpringRunner.class)
public class LotteryTest {

	@Resource
	private UserService userService;

	@Resource
	private LotteryService lotteryService;

	private static final Logger LOGGER = LoggerFactory.getLogger(LotteryTest.class);

	@Test
	public void t1() {
		List<User> list = userService.listUserByUserName("eric");
		if (list != null) {
			list.forEach(x -> LOGGER.info("取出的用户为{}", x));
		}
	}

	@Test
	public void t2() {
		CommonResult<Void> result = lotteryService.join("1", "1");
		LOGGER.info("返回结果为:{}", JSON.toJSONString(result));
	}

}
