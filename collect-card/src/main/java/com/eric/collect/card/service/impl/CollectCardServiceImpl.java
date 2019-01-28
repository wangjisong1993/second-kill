package com.eric.collect.card.service.impl;

import com.eric.collect.card.bean.CardLogs;
import com.eric.collect.card.bean.CardTemplate;
import com.eric.collect.card.bean.PresentCardLog;
import com.eric.collect.card.bean.ReceiveLog;
import com.eric.collect.card.constant.CardErrorCodeEnum;
import com.eric.collect.card.constant.CardStatusEnum;
import com.eric.collect.card.constant.CollectCardConstant;
import com.eric.collect.card.model.*;
import com.eric.collect.card.service.*;
import com.eric.seckill.cache.anno.ParamCheck;
import com.eric.seckill.common.model.CommonResult;
import org.apache.commons.lang3.RandomUtils;
import org.dozer.DozerBeanMapper;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * @author Eric on 2019/1/28.
 * @version 1.0
 */
@Service
public class CollectCardServiceImpl implements CollectCardService {

	@Value("${card.collect.limit:2}")
	private Integer limitTimes;

	@Resource
	private ReceiveLogService receiveLogService;

	@Resource
	private CardRateService cardRateService;

	@Resource
	private CardTemplateService cardTemplateService;

	@Resource
	private CardLogsService cardLogsService;

	@Resource
	private PresentCardLogService presentCardLogService;

	@Resource
	private DozerBeanMapper dozerBeanMapper;

	@Override
	@ParamCheck
	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
	public CommonResult<CollectCardResponse> collect(CollectCardRequest request) {
		// 判断集福次数是否超过上限
		int count = receiveLogService.countByUserId(request.getUserId());
		if (count >= limitTimes) {
			return CommonResult.fail(CardErrorCodeEnum.EXCEED_TIME_LIMIT.getErrorMsg(), CardErrorCodeEnum.EXCEED_TIME_LIMIT.getErrorCode());
		}
		// 获取集福区间
		List<CollectCardRegion> regions = cardRateService.listAllRegion();
		CollectCardRegion region = findRegion(regions);
		if (region == null) {
			return CommonResult.fail(CardErrorCodeEnum.NO_CARD.getErrorMsg(), CardErrorCodeEnum.NO_CARD.getErrorCode());
		}
		CardTemplate cardTemplate = cardTemplateService.findCardTemplateById(region.getTemplateId());
		// 保存卡
		CardLogs cardLogs = new CardLogs().setCardId(UUID.randomUUID().toString()).setCardStatus(CardStatusEnum.NORMAL.getStatusCode())
				.setCreateTime(new Date()).setLogId(UUID.randomUUID().toString()).setTemplateId(region.getTemplateId())
				.setUpdateTime(new Date()).setUserId(request.getUserId());
		cardLogsService.saveCardLogs(cardLogs);
		// 保存领卡记录
		ReceiveLog receiveLog = new ReceiveLog().setLogId(UUID.randomUUID().toString()).setCardId(cardLogs.getCardId())
				.setCreateTime(new Date()).setUpdateTime(new Date()).setUserId(request.getUserId());
		receiveLogService.saveReceiveLog(receiveLog);
		CollectCardResponse response = new CollectCardResponse().setCardId(cardLogs.getCardId())
				.setCardName(cardTemplate.getTemplateName()).setCardType(cardTemplate.getCardType());
		return CommonResult.success(response, CardErrorCodeEnum.COLLECT_SUCCESS.getErrorMsg());
	}

	@Override
	@ParamCheck
	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
	public CommonResult<Void> present(PresentCardRequest request) {
		// 修改卡的归属
		cardLogsService.updateUserId(request);
		// 保存赠送记录
		PresentCardLog log = new PresentCardLog();
		dozerBeanMapper.map(request, log);
		String templateId = cardLogsService.findTemplateId(request.getCardId());
		log.setCreateTime(new Date()).setLogId(UUID.randomUUID().toString()).setUpdateTime(new Date()).setTemplateId(templateId);
		presentCardLogService.savePresentCardLog(log);
		return null;
	}

	@Override
	@ParamCheck
	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
	public CommonResult<Void> merge(CardMergeRequest request) {
		// 根据用户id和卡id获取卡类型, 卡状态, 卡模板id

		// TODO
		return null;
	}

	/**
	 * 根据产生的随机数获取中奖的区间
	 *
	 * @param regions
	 * @return
	 */
	private CollectCardRegion findRegion(List<CollectCardRegion> regions) {
		int randomNum = RandomUtils.nextInt(0, CollectCardConstant.BASE_NUMBER);
		for (CollectCardRegion region : regions) {
			if (region.getStartIndex() > randomNum && randomNum < region.getEndIndex()) {
				return region;
			}
		}
		return null;
	}

}
