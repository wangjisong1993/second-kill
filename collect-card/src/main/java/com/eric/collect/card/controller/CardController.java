package com.eric.collect.card.controller;

import com.eric.collect.card.bean.CardLogs;
import com.eric.collect.card.model.*;
import com.eric.collect.card.service.CardLogsService;
import com.eric.collect.card.service.CollectCardService;
import com.eric.seckill.common.model.CommonResult;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author Eric on 2019/1/28.
 * @version 1.0
 */
@RestController
@RequestMapping("/card")
public class CardController {

	@Resource
	private CollectCardService collectCardService;

	@Resource
	private CardLogsService cardLogsService;

	/**
	 * 集福请求
	 *
	 * @param request
	 * @return
	 */
	@PostMapping("/collect")
	public CommonResult<CollectCardResponse> collect(@RequestBody CollectCardRequest request) {
		return collectCardService.collect(request);
	}

	/**
	 * 转赠
	 *
	 * @param request
	 * @return
	 */
	@PostMapping("/present")
	public CommonResult<Void> present(@RequestBody PresentCardRequest request) {
		return collectCardService.present(request);
	}

	/**
	 * 卡合并
	 *
	 * @param request
	 * @return
	 */
	@PostMapping("/merge")
	public CommonResult<Void> merge(@RequestBody CardMergeRequest request) {
		return collectCardService.merge(request);
	}

	/**
	 * 使用沾福卡
	 *
	 * @param request
	 * @return
	 */
	@PostMapping("/copy")
	public CommonResult<CopyCardResponse> copy(@RequestBody CopyCardRequest request) {
		return collectCardService.copy(request);
	}

	/**
	 * 列出用户现有的卡
	 *
	 * @param userId
	 * @return
	 */
	@GetMapping("/listCardLogs")
	public CommonResult<List<CardLogs>> listCardLosByUserId(@RequestParam("userId") String userId) {
		return cardLogsService.listCardLosByUserId(userId);
	}
}
