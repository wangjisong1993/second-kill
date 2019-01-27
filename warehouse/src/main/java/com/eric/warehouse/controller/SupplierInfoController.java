package com.eric.warehouse.controller;

import com.eric.seckill.common.model.CommonResult;
import com.eric.warehouse.model.AddSupplierInfoRequest;
import com.eric.warehouse.service.SupplierInfoService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * @author Eric on 2019/1/27.
 * @version 1.0
 */
@RequestMapping("/supplierInfo")
@RestController
public class SupplierInfoController {

	@Resource
	private SupplierInfoService supplierInfoService;

	/**
	 * 添加供应商
	 *
	 * @param request
	 * @return
	 */
	@PostMapping("/add")
	public CommonResult<Void> add(@RequestBody AddSupplierInfoRequest request) {
		return supplierInfoService.add(request);
	}

}
