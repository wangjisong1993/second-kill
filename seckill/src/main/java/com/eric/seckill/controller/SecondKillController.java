package com.eric.seckill.controller;

import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.service.SecondKillService;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

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

	/**
	 * 参加一个秒杀项目
	 * @param projectId 秒杀项目id
	 * @return CommonResult<Void>
	 */
	@RequestMapping("/join/{projectId}")
	public CommonResult<Void> join(@PathVariable(name = "projectId") String projectId,
	                               @RequestParam("userId") String userId) {
		return secondKillService.join(projectId, userId);
	}
}
