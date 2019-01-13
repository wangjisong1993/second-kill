package com.eric.seckill.cache.configuration;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;

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
	public JedisPool jedisPool() {
		//1.设置连接池的配置对象
		JedisPoolConfig config = new JedisPoolConfig();
		//设置池中最大连接数
		config.setMaxTotal(50);
		//设置空闲时池中保有的最大连接数
		config.setMaxIdle(10);
		config.setMaxWaitMillis(3000L);
		config.setTestOnBorrow(true);
		//2.设置连接池对象
		return new JedisPool(config,host,port);
	}
}
