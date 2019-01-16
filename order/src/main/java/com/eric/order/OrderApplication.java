package com.eric.order;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * @author wang.js on 2019/1/16.
 * @version 1.0
 */
@SpringBootApplication
@MapperScan("com.eric.order.dao")
public class OrderApplication {

	public static void main(String[] args) {
		SpringApplication.run(OrderApplication.class, args);
	}

}
