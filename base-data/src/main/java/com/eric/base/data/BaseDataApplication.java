package com.eric.base.data;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.netflix.feign.EnableFeignClients;
import org.springframework.context.annotation.ComponentScan;

/**
 * @author Eric on 2019/1/26.
 * @version 1.0
 */
@SpringBootApplication
@MapperScan("com.eric.base.data.dao")
@ComponentScan({"com.eric"})
@EnableFeignClients
@EnableDiscoveryClient
public class BaseDataApplication {

	public static void main(String[] args) {
		SpringApplication.run(BaseDataApplication.class, args);
	}

}
