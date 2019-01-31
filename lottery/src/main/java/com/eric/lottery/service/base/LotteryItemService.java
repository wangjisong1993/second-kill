package com.eric.lottery.service.base;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.lottery.constant.LotteryConstant;
import com.eric.lottery.mapper.seckill.LotteryItemMapper;
import com.eric.seckill.cache.anno.MethodCache;
import com.eric.seckill.common.bean.LotteryItem;
import com.eric.seckill.common.exception.CustomException;
import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.LotteryRegion;
import org.springframework.stereotype.Service;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

import javax.annotation.Resource;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Eric on 2019/1/6.
 * @version 1.0
 */
@Service
public class LotteryItemService extends ServiceImpl<LotteryItemMapper, LotteryItem> {

	@Resource
	private JedisPool jedisPool;

	/**
	 * 初始化所有项目库存和中奖概率到redis中
	 */
	public void initLotteryProject() {
		List<String> projectIds = listAllProjectId();
		if (projectIds == null) {
			return;
		}
		for (String projectId : projectIds) {
			initStockAndRegion(projectId);
		}
	}

	/**
	 * 初始化单个项目的库存和中奖概率
	 *
	 * @param projectId 抽奖的项目id
	 */
	public void initStockAndRegion(String projectId) {
		findLotteryRegionByProjectId(projectId);
		initStock(projectId);
	}

	/**
	 * 初始化库存
	 *
	 * @param projectId 抽奖的项目id
	 */
	private void initStock(String projectId) {
		List<LotteryItem> lotteryItems = listLotteryItems(projectId);
		try (Jedis jedis = jedisPool.getResource()) {
			for (LotteryItem lotteryItem : lotteryItems) {
				jedis.set(LotteryConstant.STOCK_NAME + lotteryItem.getId(), String.valueOf(lotteryItem.getStockCount()));
			}
		}
	}

	/**
	 * 根据项目id获取抽奖的区间范围数值
	 *
	 * @param projectId 抽奖的项目id
	 */
	@MethodCache(expireSeconds = 300)
	public List<LotteryRegion> findLotteryRegionByProjectId(String projectId) {
		List<LotteryItem> lotteryItems = listLotteryItems(projectId);
		List<LotteryRegion> lotteryRegions = new ArrayList<>(lotteryItems.size());
		int currentIndex = 0;
		for (LotteryItem lotteryItem : lotteryItems) {
			int startIndex = currentIndex + 1;
			int endIndex = BigDecimal.valueOf(lotteryItem.getLotteryRate()).multiply(BigDecimal.valueOf(LotteryConstant.BASE_NUMBER)).intValue() + currentIndex;
			lotteryRegions.add(new LotteryRegion().setStartIndex(startIndex).setLotteryItemId(lotteryItem.getId())
					.setEndIndex(endIndex).setProjectId(projectId).setLotteryName(lotteryItem.getLotteryName()));
			currentIndex = endIndex;
		}
		if (currentIndex > LotteryConstant.BASE_NUMBER) {
			throw new CustomException("抽奖活动id:" + projectId + "配置错误, 初始化失败");
		}
		return lotteryRegions;
	}

	/**
	 * 根据抽奖id获取所有奖项设置
	 *
	 * @param projectId 抽奖的项目id
	 * @return List<LotteryItem>
	 */
	@MethodCache
	private List<LotteryItem> listLotteryItems(String projectId) {
		return list(new QueryWrapper<LotteryItem>().eq("project_id", projectId));
	}

	/**
	 * 获取所有的抽奖活动id
	 * @return List<String>
	 */
	@MethodCache
	private List<String> listAllProjectId() {
		return baseMapper.listAllProjectId();
	}

	/**
	 * 列出库存
	 *
	 * @param projectId 抽奖的项目id
	 * @return CommonResult
	 */
	public CommonResult<List<LotteryItem>> listStock(String projectId) {
		List<LotteryItem> lotteryItems = listLotteryItems(projectId);
		try (Jedis jedis = jedisPool.getResource()) {
			if (lotteryItems != null) {
				for (LotteryItem lotteryItem : lotteryItems) {
					String stock = jedis.get(LotteryConstant.STOCK_NAME + lotteryItem.getId());
					lotteryItem.setStockCount(Integer.parseInt(stock));
				}
			}
		}
		return CommonResult.success(lotteryItems, null);
	}
}
