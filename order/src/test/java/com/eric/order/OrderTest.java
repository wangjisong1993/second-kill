package com.eric.order;

import com.alibaba.fastjson.JSON;
import com.eric.order.model.CreateOrderDetail;
import com.eric.order.model.CreateOrderRequest;
import com.eric.order.service.CreateOrderService;
import com.eric.seckill.common.utils.SignUtil;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * 订单测试
 *
 * @author wang.js on 2019/1/24.
 * @version 1.0
 */
@SpringBootTest
@RunWith(SpringRunner.class)
public class OrderTest {

	@Resource
	private CreateOrderService createOrderService;

	@Value("${order.createOrder.secret}")
	private String appSecret;

	@Test
	public void t1() {
		List<CreateOrderDetail> details = new ArrayList<>();
		details.add(new CreateOrderDetail().setProductCnt(100).setProductId("1"));
		CreateOrderRequest request = new CreateOrderRequest().setDetails(details)
				.setShippingUser("大傻逼").setUserId("d629c855-d147-4701-b0e9-383b27bb5126")
				.setShippingMoney(1000);
		request.setSign(SignUtil.getSignForObject(request, appSecret, SignUtil.DEFAULT_EXCLUDE));
		System.out.println(JSON.toJSONString(request));
		createOrderService.createOrder(request);
	}

}
