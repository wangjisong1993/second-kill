package com.eric.lottery.service.impl;

import com.eric.lottery.constant.LotteryConstant;
import com.eric.lottery.feign.UserInfoFeign;
import com.eric.lottery.service.LotteryService;
import com.eric.lottery.service.base.LotteryItemService;
import com.eric.lottery.service.base.LotteryRecordService;
import com.eric.seckill.common.bean.LotteryRecord;
import com.eric.seckill.common.constant.UserPointSourceEnum;
import com.eric.seckill.common.exception.CustomException;
import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.LotteryRegion;
import com.eric.seckill.common.model.feign.ChangePointRequest;
import com.eric.seckill.common.utils.SignUtil;
import org.apache.commons.lang3.RandomUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * @author Eric on 2019/1/6.
 * @version 1.0
 */
@Service
public class LotteryServiceImpl implements LotteryService {

	@Resource
	private LotteryItemService lotteryItemService;

	@Resource
	private JedisPool jedisPool;

	@Resource
	private LotteryRecordService lotteryRecordService;

	@Resource
	private UserInfoFeign userInfoFeign;

	@Value("${lottery.point.secret}")
	private String appSecret;

	private static final Logger LOGGER = LoggerFactory.getLogger(LotteryServiceImpl.class);

	@Override
	public CommonResult<Void> join(String projectId, String userId) {
		List<LotteryRegion> regions = lotteryItemService.findLotteryRegionByProjectId(projectId);
		if (regions == null) {
			throw new CustomException("获取抽象活动明细失败, 请重试");
		}
		ChangePointRequest request = new ChangePointRequest().setChangePoint(-1).setReferNumber(UUID.randomUUID().toString())
				.setUserId(userId).setPointSource(UserPointSourceEnum.LOTTERY_CONSUME.getSourceType());
		request.setSign(SignUtil.getSignForObject(request, appSecret, SignUtil.DEFAULT_EXCLUDE));
		CommonResult<Void> result = userInfoFeign.changePoint(request);
		if (!result.isSuccess()) {
			return result;
		}
		int randomNum = RandomUtils.nextInt(0, LotteryConstant.BASE_NUMBER);
		LOGGER.info("生成的随机数为{}", randomNum);
		LotteryRegion region = findRegion(regions, randomNum);
		if (region == null) {
			return CommonResult.fail("没有抽到奖项, 感谢您的参与", "200");
		}
		// 抽到奖, 看一下是否还有库存
		Jedis jedis = jedisPool.getResource();
		Long decr;
		try {
			decr = jedis.decr(LotteryConstant.STOCK_NAME + region.getLotteryItemId());
		} finally {
			jedis.close();
		}
		if (decr < 0) {
			return CommonResult.fail("没有抽到奖项, 感谢您的参与", "200");
		}
		LotteryRecord record = new LotteryRecord().setCreateTime(new Date()).setId(UUID.randomUUID().toString())
				.setUserId(userId).setUpdateTime(new Date())
				.setLotteryName(region.getLotteryName()).setProjectId(projectId)
				.setLotteryItemId(region.getLotteryItemId());
		lotteryRecordService.save(record);
		CommonResult<Void> baseResult = new CommonResult<>();
		baseResult.setMessage("您中了" + region.getLotteryName());
		return baseResult;
	}

	/**
	 * 判断具体的奖项
	 *
	 * @param regions   各个奖项的中奖范围
	 * @param randomNum 产生的随机数
	 * @return LotteryRegion
	 */
	private LotteryRegion findRegion(List<LotteryRegion> regions, int randomNum) {
		for (LotteryRegion region : regions) {
			if (randomNum > region.getStartIndex() && randomNum < region.getEndIndex()) {
				return region;
			}
		}
		return null;
	}
}
