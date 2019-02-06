package com.eric.strategy;

import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.eric.strategy.bean.DiscountStrategy;
import com.eric.strategy.constant.StrategyType;
import com.eric.strategy.dao.DiscountStrategyMapper;
import com.eric.strategy.model.AddSpecialStrategyRequest;
import com.eric.strategy.model.AddStrategyRequest;
import com.eric.strategy.service.DiscountStrategyService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.annotation.Resource;
import java.util.Date;

/**
 * 优惠策略的测试类
 *
 * @author Eric on 2019/2/5.
 * @version 1.0
 */
@SpringBootTest
@RunWith(SpringRunner.class)
public class StrategyTest {

	@Resource
	private DiscountStrategyService discountStrategyService;

	@Resource
	private DiscountStrategyMapper discountStrategyMapper;

	@Test
	public void t1() {
		String storeIds = "-1";
		AddStrategyRequest request = new AddStrategyRequest().setBaseMoney(20000)
				.setEndTime(new Date()).setMaxCouponDiscount(2000).setMaxDiscountMoney(2000)
				.setPriorityValue(1).setStartTime(new Date()).setStoreId(storeIds)
				.setStrategyName(StrategyType.NORMAL_DAY.getTypeDesc()).setStrategyType(StrategyType.NORMAL_DAY.getTypeCode())
				.setUseOtherStrategy("0")
				.setUserLevelId("1");
		System.out.println(JSON.toJSONString(request));
		discountStrategyService.add(request);
	}

	@Test
	public void t2() {
		AddSpecialStrategyRequest request = new AddSpecialStrategyRequest().setEndTime(new Date())
				.setSpecialEndTime(new Date()).setSpecialStartTime(new Date()).setStartTime(new Date())
				.setStoreId("1").setStrategyType("1").setWeekDay("1");
		System.out.println(JSON.toJSONString(request));
	}

	@Test
	public void t3() {
		DiscountStrategy t = new DiscountStrategy().setUpdateTime(new Date()).setVersion(2);
		discountStrategyMapper.update(t, new QueryWrapper<DiscountStrategy>().eq("id", "9928c58e-3d25-46d3-838d-c3d174d8d2ed"));
	}

}
