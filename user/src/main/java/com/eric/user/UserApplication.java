package com.eric.user;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.netflix.feign.EnableFeignClients;
import org.springframework.context.annotation.ComponentScan;

/**
 * 用户模块
 * 主要提供用户注册, 注销, 修改信息, 查询用户信息的接口
 * 用户成长体系, 积分, 等级, 排行榜
 *
 * @author wang.js on 2019/1/16.
 * @version 1.0
 */
@SpringBootApplication
@MapperScan("com.eric.user.dao")
@ComponentScan({"com.eric"})
@EnableFeignClients
@EnableDiscoveryClient
public class UserApplication {

	public static void main(String[] args) {
		SpringApplication.run(UserApplication.class, args);
	}

}
