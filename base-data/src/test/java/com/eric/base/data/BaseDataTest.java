package com.eric.base.data;

import com.eric.base.data.service.SysDictService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.annotation.Resource;

/**
 * 基础数据
 *
 * @author wang.js on 2019/2/27.
 * @version 1.0
 */
@SpringBootTest
@RunWith(SpringRunner.class)
public class BaseDataTest {

	@Resource
	private SysDictService sysDictService;

	@Test
	public void t1() {
		for (int i = 0; i < 100; i++) {
			sysDictService.testRedisCache("1");
		}
	}

}
