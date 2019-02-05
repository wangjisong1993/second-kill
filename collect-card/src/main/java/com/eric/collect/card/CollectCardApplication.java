package com.eric.collect.card;

import com.ctrip.framework.apollo.spring.annotation.EnableApolloConfig;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.netflix.feign.EnableFeignClients;
import org.springframework.context.annotation.ComponentScan;

/**
 * 模拟支付宝集福活动
 *
 * @author wang.js on 2019/1/28.
 * @version 1.0
 */
@SpringBootApplication
@MapperScan("com.eric.collect.card.dao")
@ComponentScan({"com.eric"})
@EnableFeignClients
@EnableDiscoveryClient
@EnableApolloConfig
public class CollectCardApplication {

	public static void main(String[] args) {
		SpringApplication.run(CollectCardApplication.class, args);
	}

}
