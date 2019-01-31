package com.eric.order.feign;

import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.DictQueryRequest;
import org.springframework.cloud.netflix.feign.FeignClient;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * @author wang.js on 2019/1/25.
 * @version 1.0
 */
@FeignClient(name = "baseData", fallback = BaseDataFeignFallback.class)
public interface BaseDataFeign {

	/**
	 * 根据状态码和
	 *
	 * @param dataCode
	 * @param dataType
	 * @return
	 */
	@RequestMapping(value = "/sysDict/find", method = RequestMethod.GET, produces = "application/json; charset=UTF-8")
	CommonResult<String> findDataValueByDataCode(@RequestParam("dataCode") String dataCode,
	                                             @RequestParam("dataType") String dataType);

	/**
	 * 批量查询字典值
	 *
	 * @param requests
	 * @return
	 */
	@RequestMapping(value = "/sysDict/list", method = RequestMethod.POST, produces = "application/json; charset=UTF-8")
	CommonResult<List<DictQueryRequest>> listDictValue(@RequestBody List<DictQueryRequest> requests);
}
