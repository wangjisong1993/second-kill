package com.eric.product.controller;

import com.eric.product.service.ProductMasterService;
import com.eric.seckill.cache.anno.LogDetail;
import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.ProductQueryResponse;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * @author wang.js on 2019/1/25.
 * @version 1.0
 */
@RequestMapping("/productMaster")
@RestController
public class ProductMasterController {

	@Resource
	private ProductMasterService productMasterService;

	/**
	 * 查找商品信息
	 * @param productId
	 * @return
	 */
	@GetMapping("/find")
	@LogDetail
	public CommonResult<ProductQueryResponse> findProductMaster(@RequestParam("productId") String productId) {
		return productMasterService.findProductMasterById(productId);
	}

}
