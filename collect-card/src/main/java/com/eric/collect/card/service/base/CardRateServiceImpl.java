package com.eric.collect.card.service.base;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.collect.card.bean.CardRate;
import com.eric.collect.card.constant.CardErrorCodeEnum;
import com.eric.collect.card.constant.CollectCardConstant;
import com.eric.collect.card.dao.CardRateMapper;
import com.eric.collect.card.model.CollectCardRegion;
import com.eric.collect.card.service.CardRateService;
import com.eric.seckill.cache.anno.MethodCache;
import com.eric.seckill.common.exception.CustomException;
import org.apache.commons.collections.CollectionUtils;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Eric on 2019/1/28.
 * @version 1.0
 */
@Service
public class CardRateServiceImpl extends ServiceImpl<CardRateMapper, CardRate> implements CardRateService {

	@Override
	@MethodCache(expireSeconds = 120)
	public List<CollectCardRegion> listAllRegion() {
		List<CardRate> list = list();
		if (CollectionUtils.isEmpty(list)) {
			throw new CustomException(CardErrorCodeEnum.ERROR_SETTING.getErrorMsg());
		}

		List<CollectCardRegion> regions = new ArrayList<>(list.size());
		int currentIndex = 0;
		for (CardRate cardRate : list) {
			int startIndex = currentIndex + 1;
			int endIndex = BigDecimal.valueOf(cardRate.getCardRate()).multiply(BigDecimal.valueOf(CollectCardConstant.BASE_NUMBER)).intValue() + currentIndex;
			regions.add(new CollectCardRegion().setStartIndex(startIndex).setEndIndex(endIndex).setTemplateId(cardRate.getTemplateId()));
			currentIndex = endIndex;
		}
		if (currentIndex > CollectCardConstant.BASE_NUMBER) {
			throw new CustomException("配置错误, 初始化失败");
		}
		return regions;
	}

}
