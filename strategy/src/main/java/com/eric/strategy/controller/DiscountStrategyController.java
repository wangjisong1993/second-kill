package com.eric.strategy.controller;

import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.ComputeDiscountRequest;
import com.eric.seckill.common.model.feign.ComputeDiscountResponse;
import com.eric.strategy.model.AddStrategyRequest;
import com.eric.strategy.service.ComputeDiscountService;
import com.eric.strategy.service.DiscountStrategyService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * @author Eric on 2019/2/5.
 * @version 1.0
 */
@RequestMapping("/discountStrategy")
@RestController
public class DiscountStrategyController {

	@Resource
	private DiscountStrategyService discountStrategyService;

	@Resource
	private ComputeDiscountService computeDiscountService;

	/**
	 * 添加策略
	 *
	 * @param request
	 * @return
	 */
	@PostMapping("/add")
	public CommonResult<Void> add(@RequestBody AddStrategyRequest request) {
		return discountStrategyService.add(request);
	}

	/**
	 * 计算优惠
	 *
	 * @param request
	 * @return
	 */
	@PostMapping("/compute")
	public CommonResult<ComputeDiscountResponse> compute(@RequestBody ComputeDiscountRequest request) {
		return computeDiscountService.compute(request);
	}

}
