package com.eric.collect.card.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.eric.collect.card.bean.CardTemplate;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author Eric on 2019/1/28.
 * @version 1.0
 */
public interface CardTemplateMapper extends BaseMapper<CardTemplate> {

	/**
	 * 获取所有普通卡的模板id
	 *
	 * @param cardType
	 * @return
	 */
	List<String> listAllNormalTemplateIds(@Param("cardType") String cardType);

	/**
	 * 获取卡模板id
	 *
	 * @param cardType
	 * @return
	 */
	String findTemplateId(@Param("cardType") String cardType);
}
