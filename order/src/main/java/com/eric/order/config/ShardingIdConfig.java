package com.eric.order.config;

import io.shardingsphere.core.keygen.DefaultKeyGenerator;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * sharding-jdbc-id 生成
 *
 * @author wang.js on 2019/3/12.
 * @version 1.0
 */
@Configuration
public class ShardingIdConfig {

	@Bean
	public DefaultKeyGenerator defaultKeyGenerator() {
		return new DefaultKeyGenerator();
	}

}
