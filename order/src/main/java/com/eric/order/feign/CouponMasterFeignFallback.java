package com.eric.order.feign;

import com.eric.seckill.common.constant.ErrorCodeEnum;
import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.CouponQueryResponse;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * @author wang.js on 2019/1/25.
 * @version 1.0
 */
@Component
public class CouponMasterFeignFallback extends BaseFeignFallback implements CouponMasterFeign {
	@Override
	public CommonResult<List<CouponQueryResponse>> findCoupon(List<String> couponSns) {
		return CommonResult.fail(ErrorCodeEnum.SERVER_ERROR.getMessage(), ErrorCodeEnum.SERVER_ERROR.getErrCode());
	}
}
