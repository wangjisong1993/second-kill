package com.eric.lottery.controller;

import com.eric.lottery.service.LotteryService;
import com.eric.lottery.service.base.LotteryItemService;
import com.eric.seckill.common.bean.LotteryItem;
import com.eric.seckill.common.model.CommonResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

/**
 * 抽奖
 *
 * @author Eric on 2019/1/6.
 * @version 1.0
 */
@RequestMapping("/lottery")
@RestController
public class LotteryController {

	@Resource
	private LotteryService lotteryService;

	@Resource
	private LotteryItemService lotteryItemService;

	/**
	 * 参与某个抽奖活动
	 *
	 * @param projectId 参与抽奖的项目id
	 * @param userId 用户id
	 * @return CommonResult
	 */
	@RequestMapping("/join/{projectId}")
	public CommonResult<Void> join(@PathVariable("projectId") String projectId,
	                               @RequestParam("userId") String userId) {
		return lotteryService.join(projectId, userId);
	}

	/**
	 * 初始化库存
	 *
	 * @param projectId 参与抽奖的项目id
	 * @return CommonResult<Void>
	 */
	@RequestMapping("/init/{projectId}")
	public CommonResult<Void> init(@PathVariable("projectId") String projectId) {
		lotteryItemService.initStock(projectId);
		return CommonResult.success(null);
	}

	/**
	 * 列出当前的库存
	 *
	 * @return CommonResult
	 */
	@RequestMapping("/listStock/{projectId}")
	public CommonResult<List<LotteryItem>> listStock(@PathVariable("projectId") String projectId) {
		return lotteryItemService.listStock(projectId);
	}
}
