package com.eric.seckill;

import com.eric.seckill.common.utils.SnowflakeIdWorker;
import com.eric.seckill.service.IdSegmentService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.annotation.Resource;

/**
 * @author wang.js
 * @date 2018/12/24
 * @copyright yougou.com
 */
@SpringBootTest
@RunWith(SpringRunner.class)
public class LeafSnowflakeTest {

	@Resource
	private IdSegmentService idSegmentService;

	@Test
	public void t1() {
		long workerId = 10;
		long dataCenterId = 10;
		SnowflakeIdWorker worker = new SnowflakeIdWorker(workerId, dataCenterId);
		for (int i = 0; i < 1000; i++) {
			System.out.println(worker.nextId());
		}
	}
}
