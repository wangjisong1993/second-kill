package com.eric.collect.card.service;

import com.eric.collect.card.bean.CardLogs;
import com.eric.collect.card.model.PresentCardRequest;

/**
 * @author Eric on 2019/1/28.
 * @version 1.0
 */
public interface CardLogsService {

	/**
	 * 保存领卡记录
	 *
	 * @param logs
	 * @return
	 */
	boolean saveCardLogs(CardLogs logs);

	/**
	 * 修改卡的归属人
	 *
	 * @param request
	 */
	void updateUserId(PresentCardRequest request);

	/**
	 * 根据卡id获取卡的模板id
	 *
	 * @param cardId
	 * @return
	 */
	String findTemplateId(String cardId);
}
