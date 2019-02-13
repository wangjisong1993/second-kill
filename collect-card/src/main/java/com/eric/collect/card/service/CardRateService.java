package com.eric.collect.card.service;

import com.eric.collect.card.model.CollectCardRegion;

import java.util.List;

/**
 * @author Eric on 2019/1/28.
 * @version 1.0
 */
public interface CardRateService {

	/**
	 * 列出所有的中奖区间
	 *
	 * @return
	 */
	List<CollectCardRegion> listAllRegion();

	/**
	 * 根据模板id获取配置的概率
	 *
	 * @param templateId
	 * @param rateType
	 * @return
	 */
	Double findCopyCardRateByTemplateId(String templateId, String rateType);
}
