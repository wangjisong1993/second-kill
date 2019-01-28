package com.eric.collect.card.controller;

import com.eric.collect.card.model.CardMergeRequest;
import com.eric.collect.card.model.CollectCardRequest;
import com.eric.collect.card.model.CollectCardResponse;
import com.eric.collect.card.model.PresentCardRequest;
import com.eric.collect.card.service.CollectCardService;
import com.eric.seckill.common.model.CommonResult;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * @author Eric on 2019/1/28.
 * @version 1.0
 */
@RestController
@RequestMapping("/card")
public class CardController {

	@Resource
	private CollectCardService collectCardService;

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

}
