package com.eric.collect.card.config;

import com.eric.collect.card.service.CardRateService;
import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Configuration;

import javax.annotation.Resource;

/**
 * 项目初始化啊
 *
 * @author Eric on 2019/1/28.
 * @version 1.0
 */
@Configuration
public class InitConfig implements CommandLineRunner {

	@Resource
	private CardRateService cardRateService;

	@Override
	public void run(String... strings) throws Exception {
		cardRateService.listAllRegion();
	}
}
