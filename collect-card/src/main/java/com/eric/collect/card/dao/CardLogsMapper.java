package com.eric.collect.card.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.eric.collect.card.bean.CardLogs;
import org.apache.ibatis.annotations.Param;

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
}
