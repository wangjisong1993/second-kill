package com.eric.coupon;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * @author wang.js on 2019/1/16.
 * @version 1.0
 */
@SpringBootApplication
@MapperScan("com.eric.coupon.dao")
public class CouponApplication {

	public static void main(String[] args) {
		SpringApplication.run(CouponApplication.class, args);
	}

}
