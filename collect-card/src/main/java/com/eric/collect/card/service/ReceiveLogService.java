package com.eric.collect.card.service;

import com.eric.collect.card.bean.ReceiveLog;

/**
 * @author Eric on 2019/1/28.
 * @version 1.0
 */
public interface ReceiveLogService {

	/**
	 * 统计用户今天已抽中的卡数
	 *
	 * @param userId
	 * @return
	 */
	int countByUserId(String userId);

	/**
	 * 保存领卡记录
	 *
	 * @param log
	 * @return
	 */
	boolean saveReceiveLog(ReceiveLog log);
}
