package com.eric.coupon.feign;

import com.eric.seckill.common.constant.ErrorCodeEnum;
import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.UserQueryRequest;
import com.eric.seckill.common.model.feign.UserQueryResponse;
import org.springframework.stereotype.Component;

/**
 * @author Eric on 2019/1/24.
 * @version 1.0
 */
@Component
public class UserMasterFeignFallback implements UserMasterFeign {

	@Override
	public CommonResult<UserQueryResponse> findUserByUserIdOrLoginName(UserQueryRequest request) {
		return CommonResult.fail(ErrorCodeEnum.SERVER_ERROR.getMessage(), ErrorCodeEnum.SERVER_ERROR.getErrCode());
	}

}
