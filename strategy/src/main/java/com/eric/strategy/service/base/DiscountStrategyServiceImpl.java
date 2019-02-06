package com.eric.strategy.service.base;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.seckill.cache.anno.ParamCheck;
import com.eric.seckill.common.constant.ErrorCodeEnum;
import com.eric.seckill.common.model.CommonResult;
import com.eric.strategy.bean.DiscountStrategy;
import com.eric.strategy.constant.StrategyConstant;
import com.eric.strategy.constant.StrategyErrorCodeEnum;
import com.eric.strategy.dao.DiscountStrategyMapper;
import com.eric.strategy.model.AddSpecialStrategyRequest;
import com.eric.strategy.model.AddStrategyRequest;
import com.eric.strategy.service.DiscountStrategyService;
import org.dozer.DozerBeanMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.UUID;

/**
 * @author Eric on 2019/2/5.
 * @version 1.0
 */
@Service
public class DiscountStrategyServiceImpl extends ServiceImpl<DiscountStrategyMapper, DiscountStrategy> implements DiscountStrategyService {

	@Resource
	private DozerBeanMapper dozerBeanMapper;

	@Override
	@ParamCheck
	public CommonResult<Void> add(AddStrategyRequest request) {
		// 根据storeId, userLevelId, strategyType进行计数
		QueryWrapper<DiscountStrategy> queryWrapper = new QueryWrapper<DiscountStrategy>().eq("store_id", request.getStoreId())
				.eq("user_level_id", request.getUserLevelId()).eq("strategy_type", request.getStrategyType())
				.or(i -> i.le("start_time", request.getStartTime()).ge("end_time", request.getStartTime()))
				.or(i -> i.le("start_time", request.getEndTime()).ge("end_time", request.getEndTime()));
		DiscountStrategy discountStrategy = this.baseMapper.selectOne(queryWrapper);
		DiscountStrategy t = new DiscountStrategy();
		dozerBeanMapper.map(request, t);
		if (discountStrategy != null) {
			// 已存在则更新
			t.setUpdateTime(new Date()).setVersion(discountStrategy.getVersion());
			boolean update = update(t, queryWrapper);
			if (update) {
				return CommonResult.success(null, ErrorCodeEnum.UPDATE_SUCCESS.getMessage());
			}
			return CommonResult.fail(ErrorCodeEnum.UPDATE_FAIL.getMessage(), ErrorCodeEnum.UPDATE_FAIL.getErrCode());
		}
		t.setId(UUID.randomUUID().toString()).setCreateTime(new Date()).setUpdateTime(new Date())
				.setCreateUserId(StrategyConstant.DEFAULT_USER_ID.getCode())
				.setUpdateUserId(StrategyConstant.DEFAULT_USER_ID.getCode());
		int insert = this.baseMapper.insert(t);
		if (insert > 0) {
			return CommonResult.success(null, StrategyErrorCodeEnum.SAVE_SUCCESS.getMessage());
		}
		return CommonResult.fail(ErrorCodeEnum.SAVE_ERROR.getMessage(), ErrorCodeEnum.SAVE_ERROR.getErrCode());
	}

	@Override
	public int countByStrategyId(AddSpecialStrategyRequest request) {
		return count(new QueryWrapper<DiscountStrategy>().eq("id", request.getStrategyId()));
	}

}
