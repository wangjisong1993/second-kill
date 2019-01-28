package com.eric.collect.card.service.base;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.collect.card.bean.CardLogs;
import com.eric.collect.card.dao.CardLogsMapper;
import com.eric.collect.card.model.PresentCardRequest;
import com.eric.collect.card.service.CardLogsService;
import com.eric.seckill.common.constant.ErrorCodeEnum;
import com.eric.seckill.common.exception.CustomException;
import org.springframework.stereotype.Service;

import java.util.Date;

/**
 * @author Eric on 2019/1/28.
 * @version 1.0
 */
@Service
public class CardLogsServiceImpl extends ServiceImpl<CardLogsMapper, CardLogs> implements CardLogsService {

	@Override
	public boolean saveCardLogs(CardLogs logs) {
		return save(logs);
	}

	@Override
	public void updateUserId(PresentCardRequest request) {
		CardLogs entity = new CardLogs().setUserId(request.getToUserId()).setUpdateTime(new Date());
		boolean update = update(entity, new QueryWrapper<CardLogs>().eq("user_id", request.getFromUserId()).eq("card_id", request.getCardId()));
		if (!update) {
			throw new CustomException(ErrorCodeEnum.UPDATE_FAIL.getMessage());
		}
	}

	@Override
	public String findTemplateId(String cardId) {
		return this.baseMapper.findTemplateId(cardId);
	}
}
