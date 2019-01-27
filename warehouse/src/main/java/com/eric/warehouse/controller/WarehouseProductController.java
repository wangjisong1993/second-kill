package com.eric.warehouse.controller;

import com.eric.seckill.cache.anno.LogDetail;
import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.WarehouseQueryRequest;
import com.eric.warehouse.model.InStockRequest;
import com.eric.warehouse.service.InStockService;
import com.eric.warehouse.service.WarehouseProductService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * @author Eric on 2019/1/27.
 * @version 1.0
 */
@RestController
@RequestMapping("/warehouseProduct")
public class WarehouseProductController {

	@Resource
	private WarehouseProductService warehouseProductService;

	@Resource
	private InStockService inStockService;

	/**
	 * 根据订单查询可以发货的仓库并锁住相应的数量
	 *
	 * @param request
	 * @return
	 */
	@PostMapping("/find")
	@LogDetail
	public CommonResult<String> find(@RequestBody WarehouseQueryRequest request) {
		return warehouseProductService.find(request);
	}

	/**
	 * 商品入库
	 *
	 * @return
	 */
	@PostMapping("/add")
	public CommonResult<Void> add(@RequestBody InStockRequest request) {
		return inStockService.add(request);
	}

	/**
	 * 仓库发货
	 * @return
	 */
	@PostMapping("/shipping")
	public CommonResult<Void> shipping() {
		// TODO
		return null;
	}

	/**
	 * 确认收货
	 * @return
	 */
	@PostMapping("/received")
	public CommonResult<Void> received() {
		// TODO
		return null;
	}

}
