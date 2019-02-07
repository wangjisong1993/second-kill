package com.eric.strategy.service.impl;

import com.eric.seckill.cache.anno.ParamCheck;
import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.ComputeDiscountRequest;
import com.eric.seckill.common.model.feign.ComputeDiscountResponse;
import com.eric.strategy.bean.DiscountStrategy;
import com.eric.strategy.bean.SpecialStrategySetting;
import com.eric.strategy.constant.StrategyErrorCodeEnum;
import com.eric.strategy.feign.UserInfoFeign;
import com.eric.strategy.service.ComputeDiscountService;
import com.eric.strategy.service.DiscountStrategyService;
import com.eric.strategy.service.SpecialStrategySettingService;
import org.apache.commons.lang3.StringUtils;
import org.dozer.DozerBeanMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.math.BigDecimal;

/**
 * @author Eric on 2019/2/5.
 * @version 1.0
 */
@Service
public class ComputeDiscountServiceImpl implements ComputeDiscountService {

	@Resource
	private DiscountStrategyService discountStrategyService;

	@Resource
	private SpecialStrategySettingService specialStrategySettingService;

	@Resource
	private UserInfoFeign userInfoFeign;

	@Resource
	private DozerBeanMapper dozerBeanMapper;

	@Override
	@ParamCheck
	public CommonResult<ComputeDiscountResponse> compute(ComputeDiscountRequest request) {
		CommonResult<String> userLevelIdByUserId = userInfoFeign.findUserLevelIdByUserId(request.getUserId());
		if (StringUtils.isBlank(userLevelIdByUserId.getData())) {
			return CommonResult.fail(StrategyErrorCodeEnum.FIND_USER_LEVEL_ERROR.getMessage(), StrategyErrorCodeEnum.FIND_USER_LEVEL_ERROR.getErrCode());
		}
		SpecialStrategySetting specialStrategySetting = specialStrategySettingService.findSpecialStrategySetting(request.getStoreId(), userLevelIdByUserId.getData());
		String strategyType = "1";
		if (specialStrategySetting != null) {
			strategyType = specialStrategySetting.getStrategyType();
		}
		DiscountStrategy discountStrategy = discountStrategyService.findDiscountStrategy(request.getStoreId(), request.getOrderMoney(), strategyType, userLevelIdByUserId.getData());
		ComputeDiscountResponse response = new ComputeDiscountResponse().setActualCouponDiscount(0).setActualDiscountMoney(0).setShouldPay(request.getOrderMoney());
		dozerBeanMapper.map(request, response);
		if (discountStrategy != null) {
			dozerBeanMapper.map(discountStrategy, response);
			int actualDiscount = new BigDecimal(request.getOrderMoney()).multiply(new BigDecimal(discountStrategy.getDiscountRate())).setScale(8, BigDecimal.ROUND_HALF_UP).intValue();
			actualDiscount = actualDiscount > discountStrategy.getMaxDiscountMoney() ? discountStrategy.getMaxDiscountMoney() : actualDiscount;
			response.setActualDiscountMoney(actualDiscount).setShouldPay(request.getOrderMoney() - actualDiscount);
		}
		return CommonResult.success(response, null);
	}

}
