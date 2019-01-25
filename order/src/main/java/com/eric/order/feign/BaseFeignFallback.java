package com.eric.order.feign;

import com.eric.seckill.common.constant.ErrorCodeEnum;
import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.ProductQueryResponse;

/**
 * @author wang.js on 2019/1/25.
 * @version 1.0
 */
public abstract class BaseFeignFallback {

	/**
	 * 服务器异常
	 * @return
	 */
	CommonResult<ProductQueryResponse> internalServerError() {
		return CommonResult.fail(ErrorCodeEnum.SERVER_ERROR.getMessage(), ErrorCodeEnum.SERVER_ERROR.getErrCode());
	}

}
