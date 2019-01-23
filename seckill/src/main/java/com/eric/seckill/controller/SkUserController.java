package com.eric.seckill.controller;

import com.eric.seckill.common.bean.SkUser;
import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.PageResult;
import com.eric.seckill.service.SkUserService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author wang.js
 * @date 2018/12/18
 * @copyright yougou.com
 */
@RestController
@RequestMapping("/skUser")
public class SkUserController {

	@Resource
	private SkUserService skUserService;

	/**
	 * 列出所有的用户
	 *
	 * @return PageResult<SkUser>
	 */
	@GetMapping("/listAll")
	public PageResult<SkUser> listAll() {
		List<SkUser> skUsers = skUserService.listAll();
		return PageResult.success(skUsers);
	}

	/**
	 * 根据id查询用户
	 *
	 * @param id 用户id
	 * @return CommonResult
	 */
	@GetMapping("/findOne/{id}")
	public CommonResult findOne(@PathVariable("id") String id) {
		return CommonResult.success(skUserService.findOne(id), null);
	}

	/**
	 * 根据条件筛选用户
	 *
	 * @param id 用户id
	 * @param nickname 用户昵称
	 * @return PageResult<SkUser>
	 */
	@GetMapping("/listByCondition")
	public PageResult<SkUser> listByCondition(@RequestParam(value = "id", required = false) String id,
	                                          @RequestParam(value = "nickname", required = false) String nickname) {
		return PageResult.success(skUserService.listByCondition(id, nickname));
	}
}
