package com.eric.strategy.controller;

import com.eric.seckill.common.model.CommonResult;
import com.eric.strategy.bean.SpecialStrategySetting;
import com.eric.strategy.model.AddSpecialStrategyRequest;
import com.eric.strategy.model.AddSpecialStrategyResponse;
import com.eric.strategy.service.SpecialStrategySettingService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author Eric on 2019/2/6.
 * @version 1.0
 */
@RestController
@RequestMapping("/specialStrategySetting")
public class SpecialStrategySettingController {

	@Resource
	private SpecialStrategySettingService specialStrategySettingService;

	/**
	 * 添加特殊策略
	 *
	 * @return
	 */
	@PostMapping("/add")
	public CommonResult<AddSpecialStrategyResponse> setSpecialStrategy(@RequestBody AddSpecialStrategyRequest request) {
		return specialStrategySettingService.setSpecialStrategy(request);
	}

	/**
	 * 列出所有
	 *
	 * @return
	 */
	@GetMapping("/list")
	public CommonResult<List<SpecialStrategySetting>> list() {
		return specialStrategySettingService.listAll();
	}

}
