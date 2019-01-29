package com.eric.collect.card.service.impl;

import com.eric.collect.card.bean.CardLogs;
import com.eric.collect.card.bean.CardTemplate;
import com.eric.collect.card.bean.PresentCardLog;
import com.eric.collect.card.bean.ReceiveLog;
import com.eric.collect.card.constant.CardErrorCodeEnum;
import com.eric.collect.card.constant.CardStatusEnum;
import com.eric.collect.card.constant.CardTypeEnum;
import com.eric.collect.card.constant.CollectCardConstant;
import com.eric.collect.card.model.*;
import com.eric.collect.card.service.*;
import com.eric.seckill.cache.anno.ParamCheck;
import com.eric.seckill.common.model.CommonResult;
import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang3.RandomUtils;
import org.dozer.DozerBeanMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import static java.util.stream.Collectors.toList;

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

	private static final Logger LOGGER = LoggerFactory.getLogger(CollectCardService.class);

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
		// 判断人卡是否一致
		int count = cardLogsService.countByUserIdAndCardId(request.getFromUserId(), request.getCardId());
		if (count == 0) {
			return CommonResult.fail(CardErrorCodeEnum.CARD_NOT_FIND.getErrorMsg(), CardErrorCodeEnum.CARD_NOT_FIND.getErrorCode());
		}
		// 修改卡的归属
		cardLogsService.updateUserId(request);
		// 保存赠送记录
		PresentCardLog log = new PresentCardLog();
		dozerBeanMapper.map(request, log);
		String templateId = cardLogsService.findTemplateId(request.getCardId());
		log.setCreateTime(new Date()).setLogId(UUID.randomUUID().toString()).setUpdateTime(new Date()).setTemplateId(templateId);
		presentCardLogService.savePresentCardLog(log);
		return CommonResult.success(null, CardErrorCodeEnum.PRESENT_SUCCESS.getErrorMsg());
	}

	@Override
	@ParamCheck
	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
	public CommonResult<Void> merge(CardMergeRequest request) {
		// 根据用户id和卡id获取卡类型, 卡状态, 卡模板id
		List<CardMergeVo> cardMergeVos = cardLogsService.listCardMergeVo(request);
		if (CollectionUtils.isEmpty(cardMergeVos)) {
			return CommonResult.fail(CardErrorCodeEnum.NO_ENOUGH_MERGE_CARD.getErrorMsg(), CardErrorCodeEnum.NO_ENOUGH_MERGE_CARD.getErrorCode());
		}
		long masterCardCount = cardMergeVos.stream().filter(x -> x.getCardType().equals(CardTypeEnum.MASTER_CARD.getCardType())).count();
		if (masterCardCount > 1) {
			return CommonResult.fail(CardErrorCodeEnum.OVER_ONE_MASTER_CARD.getErrorMsg(), CardErrorCodeEnum.OVER_ONE_MASTER_CARD.getErrorCode());
		}
		// 判断是否有异常状态的卡
		List<String> abnormalCardIds = cardMergeVos.stream().filter(x -> !CardStatusEnum.NORMAL.getStatusCode().equals(x.getCardStatus())).map(x -> x.getCardId()).collect(toList());
		if (CollectionUtils.isNotEmpty(abnormalCardIds)) {
			return CommonResult.fail(CardErrorCodeEnum.CARD_STATUS_ABNORMAL.getErrorMsg(), CardErrorCodeEnum.CARD_STATUS_ABNORMAL.getErrorCode());
		}
		List<String> templateIds = cardTemplateService.listAllNormalTemplateIds(CardTypeEnum.NORMAL_CARD.getCardType());
		// 判断用户传入的卡是否集齐
		List<String> userCollectCardTemplateIds = cardMergeVos.stream().map(x -> x.getTemplateId()).distinct().collect(toList());
		templateIds.removeAll(userCollectCardTemplateIds);
		if (CollectionUtils.isNotEmpty(templateIds)) {
			if (templateIds.size() != masterCardCount) {
				// 用户还有几张卡没有集齐而且没有足够万能卡
				return CommonResult.fail(CardErrorCodeEnum.NO_ENOUGH_MERGE_CARD.getErrorMsg(), CardErrorCodeEnum.NO_ENOUGH_MERGE_CARD.getErrorCode());
			}
		}
		// 可以合成, 修改卡状态
		cardLogsService.updateCardStatusMerged(cardMergeVos);
		// 为用户生成一张五福到
		CardLogs cardLogs = new CardLogs().setLogId(UUID.randomUUID().toString()).setCardId(UUID.randomUUID().toString())
				.setCardStatus(CardStatusEnum.NORMAL.getStatusCode()).setCreateTime(new Date())
				.setUpdateTime(new Date()).setUserId(request.getUserId()).setTemplateId(cardTemplateService.findTemplateId(CardTypeEnum.MASTER_CARD.getCardType()));
		cardLogsService.saveBossCard(cardLogs);
		return CommonResult.success(null, CardErrorCodeEnum.MERGE_SUCCESS.getErrorMsg());
	}

	/**
	 * 根据产生的随机数获取中奖的区间
	 *
	 * @param regions
	 * @return
	 */
	private CollectCardRegion findRegion(List<CollectCardRegion> regions) {
		int randomNum = RandomUtils.nextInt(0, CollectCardConstant.BASE_NUMBER);
		if (LOGGER.isDebugEnabled()) {
			LOGGER.debug("生成的随机数是:{}", randomNum);
		}
		for (CollectCardRegion region : regions) {
			if (region.getStartIndex() < randomNum && randomNum < region.getEndIndex()) {
				return region;
			}
		}
		return null;
	}

}
