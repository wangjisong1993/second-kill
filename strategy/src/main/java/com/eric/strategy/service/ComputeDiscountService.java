package com.eric.strategy.service;

import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.ComputeDiscountRequest;
import com.eric.seckill.common.model.feign.ComputeDiscountResponse;

/**
 * @author Eric on 2019/2/5.
 * @version 1.0
 */
public interface ComputeDiscountService {

	/**
	 * 计算优惠
	 *
	 * @param request
	 * @return
	 */
	CommonResult<ComputeDiscountResponse> compute(ComputeDiscountRequest request);
}
