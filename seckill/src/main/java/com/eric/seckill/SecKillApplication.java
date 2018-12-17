package com.eric.seckill;

import com.mybadis.starter.MyBadisLoader;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * 秒杀系统
 *
 * @author Eric on 2018/12/16.
 * @version 1.0
 */
@SpringBootApplication(exclude={org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration.class})
@MyBadisLoader({"seckill = com.eric.seckill.dao.seckill = classpath:mapper/seckill/*xml"})
public class SecKillApplication {

	public static void main(String[] args) {
		SpringApplication.run(SecKillApplication.class, args);
	}

}
