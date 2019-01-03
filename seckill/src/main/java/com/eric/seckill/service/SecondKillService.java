package com.eric.seckill.service;

import com.eric.seckill.common.model.CommonResult;

/**
 * 秒杀业务操作
 *
 * @author wang.js
 * @date 2019/1/3
 * @copyright yougou.com
 */
public interface SecondKillService {

	/**
	 * 参加秒杀
	 *
	 * @param projectId 秒杀项目id
	 * @param userId 用户id
	 * @return
	 */
	CommonResult<Void> join(String projectId, String userId);
}
