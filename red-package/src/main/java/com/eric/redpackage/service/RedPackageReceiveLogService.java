package com.eric.redpackage.service;

import com.eric.redpackage.bean.RedPackageReceiveLog;

/**
 * @author wang.js on 2019/2/13.
 * @version 1.0
 */
public interface RedPackageReceiveLogService {

	/**
	 * 保存抢红包记录
	 *
	 * @param receiveLog
	 * @return
	 */
	boolean saveReceiveLog(RedPackageReceiveLog receiveLog);

	/**
	 * 根据红包id和接收人id进行计数
	 *
	 * @param redPackageId
	 * @param receiver
	 * @return
	 */
	int countByPackageIdAndReceiveId(String redPackageId, String receiver);
}
