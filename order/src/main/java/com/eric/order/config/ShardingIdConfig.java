package com.eric.order.config;

import io.shardingsphere.core.keygen.DefaultKeyGenerator;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.annotation.Resource;
import java.net.UnknownHostException;

/**
 * sharding-jdbc-id 生成
 *
 * @author wang.js on 2019/3/12.
 * @version 1.0
 */
@Configuration
public class ShardingIdConfig {

	@Resource
	private WorkerIdConfig workerIdConfig;

	@Bean
	public DefaultKeyGenerator defaultKeyGenerator() throws UnknownHostException {
		DefaultKeyGenerator generator = new DefaultKeyGenerator();
		// 最大值小于1024
		DefaultKeyGenerator.setWorkerId(workerIdConfig.getWorkerId());
		return generator;
	}

}
