package com.eric.lottery.config;

import com.eric.lottery.service.base.LotteryItemService;
import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Configuration;

import javax.annotation.Resource;

/**
 * 初始化
 *
 * @author Eric on 2019/1/6.
 * @version 1.0
 */
@Configuration
public class InitConfig implements CommandLineRunner {

	@Resource
	private LotteryItemService lotteryItemService;

	@Override
	public void run(String... strings) throws Exception {
		lotteryItemService.initLotteryProject();
	}
}
