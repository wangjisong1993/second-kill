package com.eric.user.service;

import com.eric.seckill.common.model.CommonResult;
import com.eric.user.model.ChargeBalanceRequest;
import com.eric.user.model.ChargeBalanceResponse;

/**
 * @author Eric on 2019/1/23.
 * @version 1.0
 */
public interface ChargeBalanceService {

	/**
	 * 用户充值
	 * @param request
	 * @return
	 */
	CommonResult<ChargeBalanceResponse> charge(ChargeBalanceRequest request);
}
