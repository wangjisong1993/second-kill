package com.eric.collect.card.service;

import com.eric.collect.card.bean.CardTemplate;

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
}
