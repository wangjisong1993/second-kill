package com.eric.collect.card.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.eric.collect.card.bean.CardRate;
import org.apache.ibatis.annotations.Param;

/**
 * @author Eric on 2019/1/28.
 * @version 1.0
 */
public interface CardRateMapper extends BaseMapper<CardRate> {

	/**
	 * 根据模板id获取配置的概率
	 *
	 * @param templateId
	 * @param rateType
	 * @return
	 */
	Double findCardRateByTemplateId(@Param("templateId") String templateId, @Param("rateType") String rateType);
}
