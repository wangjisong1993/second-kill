package com.eric.order.feign;

import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.WarehouseQueryRequest;
import com.eric.seckill.common.model.feign.WarehouseReceivedRequest;
import com.eric.seckill.common.model.feign.WarehouseShippingRequest;
import org.springframework.cloud.netflix.feign.FeignClient;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 仓库
 *
 * @author wang.js on 2019/1/25.
 * @version 1.0
 */
@FeignClient(name = "warehouse", path = "/warehouse", fallback = WarehouseProductFeignFallback.class)
public interface WarehouseProductFeign {

	/**
	 * 获取商品信息
	 *
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/warehouseProduct/find", method = RequestMethod.POST, produces = "application/json; charset=UTF-8")
	CommonResult<String> find(@RequestBody WarehouseQueryRequest request);

	/**
	 * 订单已发货
	 *
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/warehouseProduct/shipping", method = RequestMethod.POST, produces = "application/json; charset=UTF-8")
	CommonResult<Void> shipping(@RequestBody WarehouseShippingRequest request);

	/**
	 * 订单确认收货
	 * @param warehouseReceivedRequest
	 * @return
	 */
	@RequestMapping(value = "/warehouseProduct/received", method = RequestMethod.POST, produces = "application/json; charset=UTF-8")
	CommonResult<Void> received(@RequestBody WarehouseReceivedRequest warehouseReceivedRequest);
}
