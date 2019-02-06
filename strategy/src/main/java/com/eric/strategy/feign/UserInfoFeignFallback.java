package com.eric.strategy.feign;

import com.eric.seckill.common.constant.ErrorCodeEnum;
import com.eric.seckill.common.model.CommonResult;
import org.springframework.stereotype.Component;

/**
 * @author wang.js on 2019/1/25.
 * @version 1.0
 */
@Component
public class UserInfoFeignFallback implements UserInfoFeign {

	@Override
	public CommonResult<String> findUserLevelIdByUserId(String userId) {
		return CommonResult.fail(ErrorCodeEnum.SERVER_ERROR.getMessage(), ErrorCodeEnum.SERVER_ERROR.getErrCode());
	}

}
