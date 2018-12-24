package com.eric.seckill.controller;

import com.eric.seckill.common.bean.SkGoods;
import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.service.SkGoodsService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * @author Eric on 2018/12/24.
 * @version 1.0
 */
@RestController
@RequestMapping("/skGoods")
public class SkGoodsController {

	@Resource
	private SkGoodsService skGoodsService;

	/**
	 * 根据id查询用户信息
	 *
	 * @param skGoods
	 * @return
	 */
	@PostMapping("/findSkGoodsById")
	public CommonResult<SkGoods> findSkGoodsById(@RequestBody SkGoods skGoods) {
		return CommonResult.success(skGoodsService.findSkGoodsById(skGoods));
	}
}
