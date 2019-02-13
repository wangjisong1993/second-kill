package com.eric.order.feign;

import com.eric.seckill.common.constant.ErrorCodeEnum;
import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.ComputeDiscountRequest;
import com.eric.seckill.common.model.feign.ComputeDiscountResponse;
import org.springframework.stereotype.Component;

/**
 * @author Eric on 2019/2/7.
 * @version 1.0
 */
@Component
public class DiscountStrategyFeignFallback implements DiscountStrategyFeign {
	@Override
	public CommonResult<ComputeDiscountResponse> compute(ComputeDiscountRequest request) {
		return CommonResult.fail(ErrorCodeEnum.SERVER_ERROR.getMessage(), ErrorCodeEnum.SERVER_ERROR.getErrCode());
	}
}
