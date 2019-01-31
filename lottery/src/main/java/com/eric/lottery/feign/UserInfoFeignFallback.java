package com.eric.lottery.feign;

import com.eric.seckill.common.constant.ErrorCodeEnum;
import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.ChangePointRequest;
import org.springframework.stereotype.Component;

/**
 * @author wang.js on 2019/1/31.
 * @version 1.0
 */
@Component
public class UserInfoFeignFallback implements UserInfoFeign {

	@Override
	public CommonResult<Void> changePoint(ChangePointRequest request) {
		return CommonResult.fail(ErrorCodeEnum.SERVER_ERROR.getMessage(), ErrorCodeEnum.SERVER_ERROR.getErrCode());
	}

}
