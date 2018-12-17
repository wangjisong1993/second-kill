package com.eric.seckill;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * 秒杀系统
 *
 * @author Eric on 2018/12/16.
 * @version 1.0
 */
@SpringBootApplication
@MapperScan("com.eric.seckill.dao")
public class SecKillApplication {

	public static void main(String[] args) {
		SpringApplication.run(SecKillApplication.class, args);
	}

}
