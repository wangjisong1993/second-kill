package com.eric.zuul;

import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.cloud.client.SpringCloudApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.netflix.feign.EnableFeignClients;
import org.springframework.cloud.netflix.zuul.EnableZuulProxy;
import org.springframework.context.annotation.ComponentScan;

/**
 * 网关工程
 *
 * @author wang.js on 2019/1/24.
 * @version 1.0
 */
@EnableZuulProxy
@SpringCloudApplication
@ComponentScan("com.eric")
@EnableFeignClients
@EnableDiscoveryClient
public class ZuulApplication {

	public static void main(String[] args) {
		new SpringApplicationBuilder(ZuulApplication.class).web(true).run(args);
	}

}
