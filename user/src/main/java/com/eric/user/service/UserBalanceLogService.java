package com.eric.user.service;

import com.eric.user.bean.UserBalanceLog;

/**
 * @author Eric on 2019/1/16.
 * @version 1.0
 */
public interface UserBalanceLogService {

	/**
	 * 根据充值单号和用户id判断是否处理过
	 *
	 * @param outTradeNo
	 * @param chargeUserId
	 * @return
	 */
	Integer countBalanceLogBySourceSn(String outTradeNo, String chargeUserId);

	/**
	 * 保存用户余额变动记录
	 *
	 * @param log 记录
	 * @return Integer
	 */
	Integer insert(UserBalanceLog log);
}
