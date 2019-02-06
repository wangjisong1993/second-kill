package com.eric.strategy.service;

import com.eric.seckill.common.model.CommonResult;
import com.eric.strategy.bean.SpecialStrategySetting;
import com.eric.strategy.model.AddSpecialStrategyRequest;
import com.eric.strategy.model.AddSpecialStrategyResponse;

import java.util.List;

/**
 * @author Eric on 2019/2/6.
 * @version 1.0
 */
public interface SpecialStrategySettingService {

	/**
	 * 添加特殊策略
	 *
	 * @param request
	 * @return
	 */
	CommonResult<AddSpecialStrategyResponse> setSpecialStrategy(AddSpecialStrategyRequest request);

	/**
	 * 列出所有
	 *
	 * @return
	 */
	CommonResult<List<SpecialStrategySetting>> listAll();
}
