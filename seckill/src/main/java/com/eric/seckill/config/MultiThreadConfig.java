package com.eric.seckill.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/**
 * @author wang.js
 * @date 2018/12/18
 * @copyright yougou.com
 */
@Configuration
public class MultiThreadConfig {

	@Bean
	public ExecutorService executorService() {
		return Executors.newFixedThreadPool(10);
	}
}
