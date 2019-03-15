package com.eric.order;

import com.alibaba.fastjson.JSON;
import com.eric.order.bean.OrderMaster;
import com.eric.order.model.CreateOrderDetail;
import com.eric.order.model.CreateOrderRequest;
import com.eric.order.service.CreateOrderService;
import com.eric.order.service.OrderMasterService;
import com.eric.seckill.common.utils.SignUtil;
import io.shardingsphere.core.keygen.DefaultKeyGenerator;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.concurrent.TimeUnit;

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

	@Resource
	private OrderMasterService orderMasterService;

	@Resource
	private DefaultKeyGenerator defaultKeyGenerator;

	@Value("${order.createOrder.secret}")
	private String appSecret;

	@Test
	public void t1() {
		for (int i = 0; i < 100; i++) {
			List<CreateOrderDetail> details = new ArrayList<>();

			details.add(new CreateOrderDetail().setProductCnt(100).setProductId("1"));
			CreateOrderRequest request = new CreateOrderRequest().setDetails(details)
					.setShippingUser("大傻逼").setUserId("312523479482105856")
					.setStoreId("1");
			request.setSign(SignUtil.getSignForObject(request, appSecret, SignUtil.DEFAULT_EXCLUDE));
			System.out.println(JSON.toJSONString(request));
			createOrderService.createOrder(request);
		}
	}

	@Test
	public void t2() throws InterruptedException {
		Random random = new Random();
		for (long i = 1; i < 100L; i++) {
			OrderMaster t = new OrderMaster().setOrderId(defaultKeyGenerator.generateKey().longValue()).setUserId(1L);
			orderMasterService.insert(t);
			TimeUnit.SECONDS.sleep(1);
		}
	}

	@Test
	public void t3() {
		for (int i = 0 ; i < 100; i++) {
			System.out.println(defaultKeyGenerator.generateKey().longValue());
		}
	}

}
