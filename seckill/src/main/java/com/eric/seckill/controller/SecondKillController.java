package com.eric.seckill.controller;

import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.service.InitService;
import com.eric.seckill.service.SecondKillService;
import com.google.common.util.concurrent.RateLimiter;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * 秒杀入口
 *
 * @author wang.js
 * @date 2019/1/3
 * @copyright yougou.com
 */
@RequestMapping("/second/kill")
@RestController
public class SecondKillController {

	@Resource
	private SecondKillService secondKillService;

	@Resource
	private InitService initService;

	private static RateLimiter rateLimiter = RateLimiter.create(20);

	/**
	 * 参加一个秒杀项目
	 * @param projectId 秒杀项目id
	 * @return CommonResult<Void>
	 */
	@RequestMapping("/join/{projectId}")
	public CommonResult<Void> join(@PathVariable(name = "projectId") String projectId,
	                               @RequestParam("userId") String userId) {
		rateLimiter.tryAcquire();
		return secondKillService.join(projectId, userId);
	}

	/**
	 * 初始化库存
	 *
	 * @return CommonResult<Void>
	 */
	@GetMapping("/initStock")
	public CommonResult<Void> initStock() {
		initService.initStock();
		return CommonResult.success(null);
	}
}
