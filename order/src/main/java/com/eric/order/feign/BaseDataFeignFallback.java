package com.eric.order.feign;

import com.eric.seckill.common.constant.ErrorCodeEnum;
import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.DictQueryRequest;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * @author Eric on 2019/1/26.
 * @version 1.0
 */
@Component
public class BaseDataFeignFallback implements BaseDataFeign {

	@Override
	public CommonResult<String> findDataValueByDataCode(String dataCode, String dataType) {
		return CommonResult.fail(ErrorCodeEnum.SERVER_ERROR.getMessage(), ErrorCodeEnum.SERVER_ERROR.getErrCode());
	}

	@Override
	public CommonResult<List<DictQueryRequest>> listDictValue(List<DictQueryRequest> requests) {
		return CommonResult.fail(ErrorCodeEnum.SERVER_ERROR.getMessage(), ErrorCodeEnum.SERVER_ERROR.getErrCode());
	}

}
