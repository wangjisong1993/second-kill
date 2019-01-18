package com.eric.strategy;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * 优惠策略
 *
 * @author wang.js on 2019/1/18.
 * @version 1.0
 */
@SpringBootApplication
@MapperScan("com.eric.strategy.dao")
public class StrategyApplication {

	public static void main(String[] args) {
		SpringApplication.run(StrategyApplication.class, args);
	}

}
