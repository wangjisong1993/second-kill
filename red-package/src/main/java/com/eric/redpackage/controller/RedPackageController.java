package com.eric.redpackage.controller;

import com.eric.redpackage.model.ReceiveRedPackageRequest;
import com.eric.redpackage.model.SendRedPackageRequest;
import com.eric.redpackage.service.ReceiveRedPackageService;
import com.eric.redpackage.service.SendRedPackageService;
import com.eric.seckill.common.model.CommonResult;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * 红包相关的接口
 *
 * @author wang.js on 2019/2/13.
 * @version 1.0
 */
@RestController
@RequestMapping("/redPackage")
public class RedPackageController {

	@Resource
	private SendRedPackageService sendRedPackageService;

	@Resource
	private ReceiveRedPackageService receiveRedPackageService;

	/**
	 * 发红包
	 *
	 * @param request
	 * @return
	 */
	@PostMapping("/send")
	public CommonResult<String> send(@RequestBody SendRedPackageRequest request) {
		return sendRedPackageService.send(request);
	}

	/**
	 * 抢红包
	 *
	 * @param request
	 * @return
	 */
	@PostMapping("/receive")
	public CommonResult<Integer> receive(@RequestBody ReceiveRedPackageRequest request) {
		return receiveRedPackageService.receive(request);
	}

	/**
	 * 抢红包
	 *
	 * @param packageId
	 * @param receiver
	 * @return
	 */
	@GetMapping("/receive/{packageId}")
	public CommonResult<Integer> receive(@PathVariable("packageId") String packageId,
	                                     @RequestParam("receiver") String receiver) {
		ReceiveRedPackageRequest request = new ReceiveRedPackageRequest().setRedPackageId(packageId)
				.setReceiver(receiver);
		return receiveRedPackageService.receive(request);
	}
}
