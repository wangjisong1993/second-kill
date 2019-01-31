package com.eric.product.config;

import com.baomidou.mybatisplus.extension.plugins.OptimisticLockerInterceptor;
import com.baomidou.mybatisplus.extension.plugins.PaginationInterceptor;
import com.baomidou.mybatisplus.extension.plugins.PerformanceInterceptor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * mybatis的配置
 *
 * @author Eric on 2018/10/28.
 * @version 1.0
 */
@Configuration
public class MybatisPlusConfig {

	/**
	 * 分页插件
	 *
	 * @return PaginationInterceptor
	 */
	@Bean
	public PaginationInterceptor paginationInterceptor() {
		return new PaginationInterceptor().setDialectType("mysql");
	}

	/**
	 * 性能分析插件
	 *
	 * @return PerformanceInterceptor
	 */
	@Bean
	public PerformanceInterceptor performanceInterceptor() {
		PerformanceInterceptor performanceInterceptor = new PerformanceInterceptor();
		performanceInterceptor.setFormat(true);
		return performanceInterceptor;
	}

	/**
	 * 乐观锁插件
	 *
	 * @return OptimisticLockerInterceptor
	 */
	@Bean
	public OptimisticLockerInterceptor optimisticLockerInterceptor() {
		return new OptimisticLockerInterceptor();
	}
}
