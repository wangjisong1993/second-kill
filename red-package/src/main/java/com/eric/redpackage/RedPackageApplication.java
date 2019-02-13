package com.eric.redpackage;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

/**
 * @author wang.js on 2019/2/13.
 * @version 1.0
 */
@SpringBootApplication
@MapperScan("com.eric.redpackage.dao")
@ComponentScan({"com.eric"})
//@EnableFeignClients
//@EnableDiscoveryClient
public class RedPackageApplication {

	public static void main(String[] args) {
		SpringApplication.run(RedPackageApplication.class, args);
	}

}
