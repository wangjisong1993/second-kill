package com.eric.collect.card.service;

import com.eric.collect.card.bean.CardTemplate;

import java.util.List;

/**
 * @author Eric on 2019/1/28.
 * @version 1.0
 */
public interface CardTemplateService {

	/**
	 * 根据模板id获取配置的卡模板
	 *
	 * @param templateId
	 * @return
	 */
	CardTemplate findCardTemplateById(String templateId);

	/**
	 * 获取所有普通的卡模板id
	 *
	 * @param cardType
	 * @return
	 */
	List<String> listAllNormalTemplateIds(String cardType);

	/**
	 * 根据卡类型获取卡的模板id
	 *
	 * @param cardType
	 * @return
	 */
	String findTemplateId(String cardType);
}
