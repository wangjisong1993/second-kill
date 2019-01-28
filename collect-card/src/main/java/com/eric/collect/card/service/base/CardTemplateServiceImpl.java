package com.eric.collect.card.service.base;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.collect.card.bean.CardTemplate;
import com.eric.collect.card.dao.CardTemplateMapper;
import com.eric.collect.card.service.CardTemplateService;
import org.springframework.stereotype.Service;

/**
 * @author Eric on 2019/1/28.
 * @version 1.0
 */
@Service
public class CardTemplateServiceImpl extends ServiceImpl<CardTemplateMapper, CardTemplate> implements CardTemplateService {

	@Override
	public CardTemplate findCardTemplateById(String templateId) {
		return this.baseMapper.selectById(templateId);
	}

}
