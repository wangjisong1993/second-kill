package com.eric.warehouse.controller;

import com.eric.seckill.common.model.CommonResult;
import com.eric.warehouse.service.ShippingInfoService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * 快递公司
 *
 * @author wang.js on 2019/1/28.
 * @version 1.0
 */
@RestController
@RequestMapping("/shippingInfo")
public class ShippingInfoController {

	@Resource
	private ShippingInfoService shippinfoservice;

	/**
	 * 根据仓库id获取快递费
	 * @param warehouseId
	 * @return
	 */
	@GetMapping("/findPrice")
	public CommonResult<Integer> findShippingPriceByWarehouseId(@RequestParam("warehouseId") String warehouseId) {
		return shippinfoservice.findShippingPriceByWarehouseId(warehouseId);
	}

}
