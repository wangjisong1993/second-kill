package com.eric.collect.card.service;

import com.eric.collect.card.bean.PresentCardLog;

/**
 * @author Eric on 2019/1/28.
 * @version 1.0
 */
public interface PresentCardLogService {

	/**
	 * 保存记录
	 *
	 * @param presentCardLog
	 * @return
	 */
	boolean savePresentCardLog(PresentCardLog presentCardLog);
}
