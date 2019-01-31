package com.eric.order.feign;

import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.ProductQueryResponse;
import org.springframework.cloud.netflix.feign.FeignClient;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * @author wang.js on 2019/1/25.
 * @version 1.0
 */
@FeignClient(name = "product", fallback = ProductMasterFeignFallback.class)
public interface ProductMasterFeign {

	/**
	 * 获取商品信息
	 * @param productId
	 * @return
	 */
	@RequestMapping(value = "/productMaster/find", method = RequestMethod.GET, produces = "application/json; charset=UTF-8")
	CommonResult<ProductQueryResponse> findProductMasterById(@RequestParam("productId") String productId);
}
