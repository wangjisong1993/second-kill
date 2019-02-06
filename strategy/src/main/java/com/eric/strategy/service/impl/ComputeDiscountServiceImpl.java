package com.eric.strategy.service.impl;

import com.eric.seckill.cache.anno.ParamCheck;
import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.ComputeDiscountRequest;
import com.eric.seckill.common.model.feign.ComputeDiscountResponse;
import com.eric.strategy.constant.StrategyErrorCodeEnum;
import com.eric.strategy.feign.UserInfoFeign;
import com.eric.strategy.service.ComputeDiscountService;
import com.eric.strategy.service.DiscountStrategyService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * @author Eric on 2019/2/5.
 * @version 1.0
 */
@Service
public class ComputeDiscountServiceImpl implements ComputeDiscountService {

	@Resource
	private DiscountStrategyService discountStrategyService;

	@Resource
	private UserInfoFeign userInfoFeign;

	@Override
	@ParamCheck
	public CommonResult<ComputeDiscountResponse> compute(ComputeDiscountRequest request) {
		CommonResult<String> userLevelIdByUserId = userInfoFeign.findUserLevelIdByUserId(request.getUserId());
		if (StringUtils.isBlank(userLevelIdByUserId.getData())) {
			return CommonResult.fail(StrategyErrorCodeEnum.FIND_USER_LEVEL_ERROR.getMessage(), StrategyErrorCodeEnum.FIND_USER_LEVEL_ERROR.getErrCode());
		}
		return null;
	}

}
