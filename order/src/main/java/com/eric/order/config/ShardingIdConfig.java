package com.eric.order.config;

import com.eric.order.snowflake.SnowFlakeGenerator;
import io.shardingsphere.core.keygen.DefaultKeyGenerator;
import org.springframework.beans.factory.annotation.Value;
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

	@Value("${snowflake.datacenter}")
	private Integer dataCenterId;

	@Bean
	public DefaultKeyGenerator defaultKeyGenerator() throws UnknownHostException {
		DefaultKeyGenerator generator = new DefaultKeyGenerator();
		// 最大值小于1024
		DefaultKeyGenerator.setWorkerId(workerIdConfig.getWorkerId(1024));
		return generator;
	}

	@Bean
	public SnowFlakeGenerator initMachineId() throws Exception {
		return new SnowFlakeGenerator(workerIdConfig.getWorkerId(32), dataCenterId);
	}

}
