package com.eric.seckill.controller;

import com.eric.seckill.common.bean.SkUser;
import com.eric.seckill.service.SkUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @author wang.js
 * @date 2018/12/18
 * @copyright yougou.com
 */
@RestController
@RequestMapping("/skUser")
public class SkUserController {

	@Autowired
	private SkUserService skUserService;

	/**
	 * 列出所有的用户
	 *
	 * @return
	 */
	@GetMapping("/listAll")
	public List<SkUser> listAll() {
		return skUserService.listAll();
	}

	/**
	 * 根据id查询用户
	 *
	 * @param id
	 * @return
	 */
	@GetMapping("/findOne/{id}")
	public SkUser findOne(@PathVariable("id") String id) {
		return skUserService.findOne(id);
	}

	/**
	 * 根据条件筛选用户
	 *
	 * @param id
	 * @param nickname
	 * @return
	 */
	@GetMapping("/listByCondition")
	public List<SkUser> listByCondition(@RequestParam(value = "id", required = false) String id,
	                                    @RequestParam(value = "nickname", required = false) String nickname) {
		return skUserService.listByCondition(id, nickname);
	}
}
