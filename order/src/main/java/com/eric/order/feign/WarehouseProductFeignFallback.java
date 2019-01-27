package com.eric.order.feign;

import com.eric.seckill.common.constant.ErrorCodeEnum;
import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.WarehouseQueryRequest;
import org.springframework.stereotype.Component;

/**
 * @author Eric on 2019/1/27.
 * @version 1.0
 */
@Component
public class WarehouseProductFeignFallback implements WarehouseProductFeign {

	@Override
	public CommonResult<String> find(WarehouseQueryRequest request) {
		return CommonResult.fail(ErrorCodeEnum.SERVER_ERROR.getMessage(), ErrorCodeEnum.SERVER_ERROR.getErrCode());
	}

}
