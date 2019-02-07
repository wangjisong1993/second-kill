package com.eric.order.feign;

import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.ComputeDiscountRequest;
import com.eric.seckill.common.model.feign.ComputeDiscountResponse;
import org.springframework.cloud.netflix.feign.FeignClient;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author Eric on 2019/2/7.
 * @version 1.0
 */
@FeignClient(name = "strategy", fallback = DiscountStrategyFeignFallback.class)
public interface DiscountStrategyFeign {

	/**
	 * 计算优惠策略
	 *
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/discountStrategy/compute", method = RequestMethod.POST, produces = "application/json; charset=UTF-8")
	CommonResult<ComputeDiscountResponse> compute(@RequestBody ComputeDiscountRequest request);

}
