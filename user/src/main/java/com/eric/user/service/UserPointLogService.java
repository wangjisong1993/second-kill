package com.eric.user.service;

import com.eric.user.bean.UserPointLog;

/**
 * @author Eric on 2019/1/16.
 * @version 1.0
 */
public interface UserPointLogService {

	/**
	 * 根据交易订单号判断是否已经处理过
	 *
	 * @param outTradeNo
	 * @return
	 */
	Integer checkExistByOutTradeNo(String outTradeNo);

	/**
	 * 保存积分变动记录
	 *
	 * @param log
	 * @return
	 */
	Integer insert(UserPointLog log);

}
