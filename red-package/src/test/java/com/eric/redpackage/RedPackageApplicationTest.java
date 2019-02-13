package com.eric.redpackage;

import com.alibaba.fastjson.JSON;
import com.eric.redpackage.constant.RedPackageType;
import com.eric.redpackage.model.ReceiveRedPackageRequest;
import com.eric.redpackage.model.SendRedPackageRequest;
import com.eric.redpackage.service.ReceiveRedPackageService;
import com.eric.redpackage.service.SendRedPackageService;
import com.eric.seckill.common.model.CommonResult;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.annotation.Resource;

/**
 * 红包活动
 *
 * @author wang.js on 2019/2/13.
 * @version 1.0
 */
@SpringBootTest
@RunWith(SpringRunner.class)
public class RedPackageApplicationTest {

	@Resource
	private SendRedPackageService sendRedPackageService;

	@Resource
	private ReceiveRedPackageService receiveRedPackageService;

	@Test
	public void t1() {
		SendRedPackageRequest request = new SendRedPackageRequest().setMoney(100).setNum(10)
				.setSender("1").setRedPackageType(RedPackageType.NOT_FIXED.getTypeCode());
		sendRedPackageService.send(request);
	}

	@Test
	public void t2() {
		ReceiveRedPackageRequest request = new ReceiveRedPackageRequest().setReceiver("1")
				.setRedPackageId("ca8c1b50-2e01-4165-bd29-785d1a0ea97d");
		CommonResult<Integer> receive = receiveRedPackageService.receive(request);
		System.out.println(JSON.toJSONString(receive));
	}

}
