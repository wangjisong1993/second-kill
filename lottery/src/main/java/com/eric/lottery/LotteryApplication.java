package com.eric.lottery;

import com.alibaba.druid.spring.boot.autoconfigure.DruidDataSourceAutoConfigure;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.netflix.feign.EnableFeignClients;
import org.springframework.context.annotation.ComponentScan;

/**
 * 抽奖
 *
 * @author Eric on 2019/1/5.
 * @version 1.0
 */
@SpringBootApplication(exclude = {DruidDataSourceAutoConfigure.class})
@MapperScan("com.eric.lottery.mapper")
@ComponentScan("com.eric")
@EnableFeignClients
@EnableDiscoveryClient
public class LotteryApplication {

	public static void main(String[] args) {
		SpringApplication.run(LotteryApplication.class, args);
	}

}
