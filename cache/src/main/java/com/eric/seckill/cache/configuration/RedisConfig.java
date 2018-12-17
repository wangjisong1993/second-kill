package com.eric.seckill.cache.configuration;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import redis.clients.jedis.Jedis;

/**
 * @author wang.js
 * @date 2018/12/17
 * @copyright yougou.com
 */
@Configuration
public class RedisConfig {

	@Value("${spring.redis.host}")
	private String host;

	@Value("${spring.redis.port:6379}")
	private Integer port;

	@Bean
	public Jedis jedis() {
		return new Jedis(host, port);
	}
}
