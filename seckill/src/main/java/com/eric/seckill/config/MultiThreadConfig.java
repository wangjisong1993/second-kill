package com.eric.seckill.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;

import java.util.concurrent.ThreadPoolExecutor;

/**
 * @author wang.js
 * @date 2018/12/18
 * @copyright yougou.com
 */
@Configuration
public class MultiThreadConfig {

	private static final int PROCESSOR_NUM = Runtime.getRuntime().availableProcessors();

	private static final int CORE_MIN_SIZE = PROCESSOR_NUM < 8 ? 16 : PROCESSOR_NUM * 2;

	private static final String DEFAULT_THREAD = "default";

	@Bean
	public ThreadPoolTaskExecutor executorService() {
		ThreadPoolTaskExecutor executor = new ThreadPoolTaskExecutor();
		executor.setThreadNamePrefix(DEFAULT_THREAD);
		executor.setCorePoolSize(CORE_MIN_SIZE);
		executor.setMaxPoolSize(PROCESSOR_NUM * 16);
		executor.setQueueCapacity(PROCESSOR_NUM * 2);
		executor.setKeepAliveSeconds(30);
		executor.setRejectedExecutionHandler(new ThreadPoolExecutor.CallerRunsPolicy());
		executor.initialize();
		return executor;
	}
}
