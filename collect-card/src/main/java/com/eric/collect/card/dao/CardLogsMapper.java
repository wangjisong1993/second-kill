package com.eric.collect.card.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.eric.collect.card.bean.CardLogs;
import com.eric.collect.card.model.CardMergeRequest;
import com.eric.collect.card.model.CardMergeVo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author Eric on 2019/1/28.
 * @version 1.0
 */
public interface CardLogsMapper extends BaseMapper<CardLogs> {

	/**
	 * 获取模板id
	 *
	 * @param cardId
	 * @return
	 */
	String findTemplateId(@Param("cardId") String cardId);

	/**
	 * 获取卡合并需要的数据
	 *
	 * @param request
	 * @return
	 */
	List<CardMergeVo> listCardMergeVo(@Param("request") CardMergeRequest request);
}
