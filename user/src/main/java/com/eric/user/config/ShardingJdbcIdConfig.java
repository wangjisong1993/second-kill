package com.eric.user.config;

import io.shardingjdbc.core.keygen.DefaultKeyGenerator;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * Sharding-JDBC id生成
 *
 * @author wang.js on 2019/3/13.
 * @version 1.0
 */
@Configuration
public class ShardingJdbcIdConfig {

	@Bean
	public DefaultKeyGenerator defaultKeyGenerator() {
		return new DefaultKeyGenerator();
	}

}
