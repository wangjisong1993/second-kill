package com.eric.lottery.service;

import com.eric.seckill.common.model.CommonResult;

/**
 * @author Eric on 2019/1/6.
 * @version 1.0
 */
public interface LotteryService {

	/**
	 * 抽奖
	 *
	 * @param projectId 参与的抽奖项目id
	 * @param userId 参与的用户id
	 * @return CommonResult
	 */
	CommonResult<Void> join(String projectId, String userId);
}
