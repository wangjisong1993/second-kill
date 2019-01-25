package com.eric.order.feign;

import com.eric.seckill.common.constant.ErrorCodeEnum;
import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.ProductQueryResponse;
import org.springframework.stereotype.Component;

/**
 * @author wang.js on 2019/1/25.
 * @version 1.0
 */
@Component
public class ProductMasterFeignFallback implements ProductMasterFeign {

	@Override
	public CommonResult<ProductQueryResponse> findProductMasterById(String productId) {
		return CommonResult.fail(ErrorCodeEnum.SERVER_ERROR.getMessage(), ErrorCodeEnum.SERVER_ERROR.getErrCode());
	}
}
