package com.eric.user.controller;

import com.eric.seckill.common.model.CommonResult;
import com.eric.user.model.ChargeBalanceRequest;
import com.eric.user.model.ChargeBalanceResponse;
import com.eric.user.service.ChargeBalanceService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * @author Eric on 2019/1/23.
 * @version 1.0
 */
@RequestMapping("/balance")
@RestController
public class ChargeBalanceController {


	@Resource
	private ChargeBalanceService chargeBalanceService;

	/**
	 * 用户充值
	 *
	 * @param request
	 * @return
	 */
	@PostMapping("/charge")
	public CommonResult<ChargeBalanceResponse> charge(@RequestBody ChargeBalanceRequest request) {
		return chargeBalanceService.charge(request);
	}

}
