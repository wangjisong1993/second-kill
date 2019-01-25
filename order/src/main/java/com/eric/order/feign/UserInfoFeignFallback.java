package com.eric.order.feign;

import com.eric.seckill.common.constant.ErrorCodeEnum;
import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.ChangePointRequest;
import com.eric.seckill.common.model.feign.UserQueryRequest;
import com.eric.seckill.common.model.feign.UserQueryResponse;
import org.springframework.stereotype.Component;

/**
 * @author wang.js on 2019/1/25.
 * @version 1.0
 */
@Component
public class UserInfoFeignFallback implements UserInfoFeign {
	@Override
	public CommonResult<UserQueryResponse> findUserByUserIdOrLoginName(UserQueryRequest request) {
		return CommonResult.fail(ErrorCodeEnum.SERVER_ERROR.getMessage(), ErrorCodeEnum.SERVER_ERROR.getErrCode());
	}

	@Override
	public CommonResult<Void> changePoint(ChangePointRequest request) {
		return CommonResult.fail(ErrorCodeEnum.SERVER_ERROR.getMessage(), ErrorCodeEnum.SERVER_ERROR.getErrCode());
	}
}
