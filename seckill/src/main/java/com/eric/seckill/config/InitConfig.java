package com.eric.seckill.config;

import com.eric.seckill.service.InitService;
import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Configuration;

import javax.annotation.Resource;

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
	private InitService initService;

	@Override
	public void run(String... strings) throws Exception {
		initService.initStock();
	}
}
