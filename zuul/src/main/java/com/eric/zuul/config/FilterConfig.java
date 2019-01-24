package com.eric.zuul.config;

import com.eric.zuul.filter.ErrorFilter;
import com.eric.zuul.filter.FirstFilter;
import com.eric.zuul.filter.ResultFilter;
import com.eric.zuul.filter.SecondFilter;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * @author wang.js on 2019/1/24.
 * @version 1.0
 */
@Configuration
public class FilterConfig {

	@Bean
	public ResultFilter resultFilter() {
		return new ResultFilter();
	}

	@Bean
	public ErrorFilter errorFilter() {
		return new ErrorFilter();
	}

	@Bean
	public SecondFilter secondFilter() {
		return new SecondFilter();
	}

	@Bean
	public FirstFilter firstFilter() {
		return new FirstFilter();
	}

}
