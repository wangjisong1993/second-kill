package com.eric.base.data.controller;

import com.eric.base.data.model.DisableDictRequest;
import com.eric.base.data.model.SaveSysDictRequest;
import com.eric.base.data.service.SysDictService;
import com.eric.seckill.cache.anno.LogDetail;
import com.eric.seckill.common.constant.ErrorCodeEnum;
import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.DictQueryRequest;
import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author Eric on 2019/1/26.
 * @version 1.0
 */
@RestController
@RequestMapping("/sysDict")
public class SysDictController {

	@Resource
	private SysDictService sysDictService;

	/**
	 * 保存数据字典项
	 *
	 * @param request
	 * @return
	 */
	@PostMapping("/save")
	public CommonResult<Void> saveSysDict(@RequestBody SaveSysDictRequest request) {
		return sysDictService.saveSysDict(request);
	}

	/**
	 * 根据数据类型和数据编码获取字典值
	 *
	 * @param dataCode
	 * @param dataType
	 * @return
	 */
	@GetMapping("/find")
	@LogDetail
	public CommonResult<String> findDataValueByDataCode(@RequestParam("dataCode") String dataCode,
	                                                    @RequestParam("dataType") String dataType) {
		if (StringUtils.isBlank(dataCode) || StringUtils.isBlank(dataType)) {
			return CommonResult.fail(ErrorCodeEnum.EMPTY_PARAM.getMessage(), ErrorCodeEnum.EMPTY_PARAM.getErrCode());
		}
		return sysDictService.findDataValueByDataCode(dataCode, dataType);
	}

	/**
	 * 根据数据类型和数据编码获取字典值
	 *
	 * @param requests
	 * @return
	 */
	@PostMapping("/list")
	@LogDetail
	public CommonResult<List<DictQueryRequest>> findDataValueByDataCode(@RequestBody List<DictQueryRequest> requests) {
		if (CollectionUtils.isEmpty(requests)) {
			return CommonResult.fail(ErrorCodeEnum.EMPTY_PARAM.getMessage(), ErrorCodeEnum.EMPTY_PARAM.getErrCode());
		}
		return sysDictService.findDataValueByDataCode(requests);
	}

	/**
	 * 作废字典值
	 *
	 * @return
	 */
	@PostMapping("/disable")
	public CommonResult<Void> disableDict(@RequestBody DisableDictRequest request) {
		return sysDictService.disableDict(request);
	}

	/**
	 * 启用字典值
	 *
	 * @return
	 */
	@PostMapping("/enable")
	public CommonResult<Void> enableDict(@RequestBody DisableDictRequest request) {
		return sysDictService.enableDict(request);
	}

}
