package com.eric.user.service;

import com.eric.seckill.common.model.CommonResult;
import com.eric.user.model.UserPointChangeRequest;
import com.eric.user.model.UserPointChangeResponse;

/**
 * 用户积分
 *
 * @author wang.js on 2019/1/24.
 * @version 1.0
 */
public interface UserPointService {

	/**
	 * 积分变动
	 * @param request
	 * @return
	 */
	CommonResult<UserPointChangeResponse> changePoint(UserPointChangeRequest request);
}
