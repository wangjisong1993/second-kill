package com.eric.collect.card.service;

import com.eric.collect.card.bean.CardLogs;
import com.eric.collect.card.model.CardMergeRequest;
import com.eric.collect.card.model.CardMergeVo;
import com.eric.collect.card.model.PresentCardRequest;

import java.util.List;

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

	/**
	 * 获取卡合并需要的数据
	 *
	 * @param request
	 * @return
	 */
	List<CardMergeVo> listCardMergeVo(CardMergeRequest request);

	/**
	 * 修改卡状态为已合成
	 *
	 * @param cardMergeVos
	 */
	void updateCardStatusMerged(List<CardMergeVo> cardMergeVos);

	/**
	 * 保存卡记录
	 *
	 * @param cardLogs
	 */
	void saveBossCard(CardLogs cardLogs);

	/**
	 * 根据用户id和卡id进行技术
	 *
	 * @param userId
	 * @param cardId
	 * @return
	 */
	int countByUserIdAndCardId(String userId, String cardId);
}
