package com.eric.strategy.service;

import com.eric.seckill.common.model.CommonResult;
import com.eric.strategy.model.AddSpecialStrategyRequest;
import com.eric.strategy.model.AddStrategyRequest;

/**
 * @author Eric on 2019/2/5.
 * @version 1.0
 */
public interface DiscountStrategyService {

	/**
	 * 添加策略
	 *
	 * @param request
	 * @return
	 */
	CommonResult<Void> add(AddStrategyRequest request);

	/**
	 * 根据id进行计数
	 *
	 * @param request
	 * @return
	 */
	int countByStrategyId(AddSpecialStrategyRequest request);
}
