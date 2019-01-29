package com.eric.collect.card.service.base;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.collect.card.bean.CardLogs;
import com.eric.collect.card.constant.CardErrorCodeEnum;
import com.eric.collect.card.constant.CardStatusEnum;
import com.eric.collect.card.dao.CardLogsMapper;
import com.eric.collect.card.model.CardMergeRequest;
import com.eric.collect.card.model.CardMergeVo;
import com.eric.collect.card.model.PresentCardRequest;
import com.eric.collect.card.service.CardLogsService;
import com.eric.seckill.cache.anno.DisLock;
import com.eric.seckill.cache.constant.CommonBizConstant;
import com.eric.seckill.common.constant.ErrorCodeEnum;
import com.eric.seckill.common.exception.CustomException;
import com.eric.seckill.common.model.CommonResult;
import org.dozer.DozerBeanMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import static java.util.stream.Collectors.toList;

/**
 * @author Eric on 2019/1/28.
 * @version 1.0
 */
@Service
public class CardLogsServiceImpl extends ServiceImpl<CardLogsMapper, CardLogs> implements CardLogsService {

	@Resource
	private DozerBeanMapper dozerBeanMapper;

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

	@Override
	public List<CardMergeVo> listCardMergeVo(CardMergeRequest request) {
		return this.baseMapper.listCardMergeVo(request);
	}

	@Override
	public void updateCardStatusMerged(List<CardMergeVo> cardMergeVos) {
		List<CardLogs> entityList = new ArrayList<>(cardMergeVos.size());
		for (CardMergeVo cardMergeVo : cardMergeVos) {
			CardLogs entity = new CardLogs();
			dozerBeanMapper.map(cardMergeVo, entity);
			entityList.add(entity);
		}
		List<CardLogs> collect = entityList.stream().map(x -> x.setCardStatus(CardStatusEnum.MERGED.getStatusCode()).setUpdateTime(new Date())).collect(toList());
		boolean result = updateBatchById(collect);
		if (!result) {
			throw new CustomException(ErrorCodeEnum.UPDATE_FAIL.getMessage());
		}
	}

	@Override
	public void saveBossCard(CardLogs cardLogs) {
		boolean save = save(cardLogs);
		if (!save) {
			throw new CustomException(CardErrorCodeEnum.MERGE_FAIL.getErrorMsg());
		}
	}

	@Override
	public int countByUserIdAndCardId(String userId, String cardId) {
		return count(new QueryWrapper<CardLogs>().eq("user_id", userId).eq("card_id", cardId));
	}

	@Override
	public List<CardLogs> listNormalCardsByUserId(String userId) {
		return list(new QueryWrapper<CardLogs>().eq("user_id", userId).eq("card_status", CardStatusEnum.NORMAL.getStatusCode()));
	}

	@Override
	public void updateUsed(String cardId) {
		CardLogs entity = new CardLogs().setCardStatus(CardStatusEnum.USED.getStatusCode()).setUpdateTime(new Date());
		boolean update = update(entity, new QueryWrapper<CardLogs>().eq("card_id", cardId).eq("card_status", CardStatusEnum.NORMAL.getStatusCode()));
		if (!update) {
			throw new CustomException(CardErrorCodeEnum.MARK_USED_FAIL.getErrorMsg());
		}
	}

	@Override
	public CardLogs findCardLogsByCardId(String cardId) {
		return this.baseMapper.selectOne(new QueryWrapper<CardLogs>().eq("card_id", cardId));
	}

	@Override
	@DisLock(key = "#userId", biz = CommonBizConstant.COLLECT_CARD_LIST)
	public CommonResult<List<CardLogs>> listCardLosByUserId(String userId) {
		List<CardLogs> list = list(new QueryWrapper<CardLogs>().eq("user_id", userId).eq("card_status", CardStatusEnum.NORMAL.getStatusCode()));
		return CommonResult.success(list, null);
	}
}
