package com.eric.coupon;

import com.alibaba.fastjson.JSON;
import com.eric.coupon.model.TemplateAddRequest;
import com.eric.coupon.service.CouponTemplateService;
import com.eric.seckill.common.utils.SignUtil;
import org.apache.commons.lang3.time.DateUtils;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.annotation.Resource;
import java.text.ParseException;
import java.util.Date;

/**
 * @author Eric on 2019/1/26.
 * @version 1.0
 */
@SpringBootTest
@RunWith(SpringRunner.class)
public class CouponTest {

	@Resource
	private CouponTemplateService couponTemplateService;

	@Value("${coupon.receive.secret}")
	private String appSecret;

	@Test
	public void t1() throws ParseException {
		TemplateAddRequest request = new TemplateAddRequest().setFullMoney(0)
				.setImg("http://www.baidu.com").setMoney(10000).setName("100元优惠券").setRegionId("-1")
				.setStartTime(new Date()).setType("1");
		request.setEndTime(DateUtils.parseDate("2019-12-30 00:00:00", "yyyy-MM-dd HH:mm:ss"));
		request.setSign(SignUtil.getSignForObject(request, appSecret, SignUtil.DEFAULT_EXCLUDE));
		System.out.println(JSON.toJSONString(request));
		couponTemplateService.add(request);
	}

}
