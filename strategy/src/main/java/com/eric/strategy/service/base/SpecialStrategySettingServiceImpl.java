package com.eric.strategy.service.base;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.seckill.cache.anno.MethodCache;
import com.eric.seckill.cache.anno.ParamCheck;
import com.eric.seckill.common.constant.ErrorCodeEnum;
import com.eric.seckill.common.model.CommonResult;
import com.eric.strategy.bean.SpecialStrategySetting;
import com.eric.strategy.constant.StrategyConstant;
import com.eric.strategy.constant.StrategyErrorCodeEnum;
import com.eric.strategy.dao.SpecialStrategySettingMapper;
import com.eric.strategy.model.AddSpecialStrategyRequest;
import com.eric.strategy.model.AddSpecialStrategyResponse;
import com.eric.strategy.service.DiscountStrategyService;
import com.eric.strategy.service.SpecialStrategySettingService;
import org.dozer.DozerBeanMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.text.DateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * @author Eric on 2019/2/6.
 * @version 1.0
 */
@Service
public class SpecialStrategySettingServiceImpl extends ServiceImpl<SpecialStrategySettingMapper, SpecialStrategySetting> implements SpecialStrategySettingService {

	@Resource
	private DiscountStrategyService discountStrategyService;

	@Resource
	private DozerBeanMapper dozerBeanMapper;

	@ParamCheck
	@Override
	public CommonResult<AddSpecialStrategyResponse> setSpecialStrategy(AddSpecialStrategyRequest request) {
		if (request.getEndTime().getTime() <= request.getStartTime().getTime() || request.getSpecialEndTime().getTime() <= request.getSpecialStartTime().getTime()) {
			return CommonResult.fail(StrategyErrorCodeEnum.ERROR_END_TIME.getMessage(), StrategyErrorCodeEnum.ERROR_END_TIME.getErrCode());
		}
		// 校验要添加的特殊策略是否已经配置好
		int count = discountStrategyService.countByStrategyId(request);
		if (count == 0) {
			return CommonResult.fail(StrategyErrorCodeEnum.STRATEGY_NOT_FIND.getMessage(), StrategyErrorCodeEnum.STRATEGY_NOT_FIND.getErrCode());
		}
		// 校验通过, 开始保存特殊策略的配置
		SpecialStrategySetting entity = new SpecialStrategySetting();
		dozerBeanMapper.map(request, entity);
		// 判断是否存在
		QueryWrapper<SpecialStrategySetting> queryWrapper = new QueryWrapper<SpecialStrategySetting>().eq("store_id", request.getStoreId()).eq("strategy_type", request.getStrategyType())
				.eq("week_day", request.getWeekDay());
		queryWrapper.and(i -> i.and(k -> k.le("start_time", request.getStartTime()).ge("end_time", request.getStartTime())).or(j -> j.le("start_time", request.getEndTime()).ge("end_time", request.getEndTime())));
		queryWrapper.and(i -> i.le("special_start_time", request.getSpecialStartTime()).ge("special_end_time", request.getSpecialStartTime()).or(j -> j.le("special_start_time", request.getSpecialEndTime()).ge("special_end_time", request.getSpecialEndTime())));
		SpecialStrategySetting specialStrategySetting = this.baseMapper.selectOne(queryWrapper);
		if (specialStrategySetting != null) {
			entity.setUpdateTime(new Date()).setVersion(specialStrategySetting.getVersion());
			boolean update = update(entity, queryWrapper);
			if (update) {
				AddSpecialStrategyResponse response = new AddSpecialStrategyResponse();
				return CommonResult.success(null, ErrorCodeEnum.UPDATE_SUCCESS.getMessage());
			}
			return CommonResult.fail(ErrorCodeEnum.UPDATE_FAIL.getMessage(), ErrorCodeEnum.UPDATE_FAIL.getErrCode());
		}
		entity.setId(UUID.randomUUID().toString()).setCreateTime(new Date()).setCreateUserId(StrategyConstant.DEFAULT_USER_ID.getCode())
				.setUpdateTime(new Date()).setUpdateUserId(StrategyConstant.DEFAULT_USER_ID.getCode());
		boolean save = save(entity);
		if (save) {
			return CommonResult.success(null, ErrorCodeEnum.SAVE_SUCCESS.getMessage());
		}
		return CommonResult.fail(ErrorCodeEnum.SAVE_ERROR.getMessage(), ErrorCodeEnum.SAVE_ERROR.getErrCode());
	}

	@Override
	public CommonResult<List<SpecialStrategySetting>> listAll() {
		return CommonResult.success(list(), null);
	}

	@Override
//	@MethodCache
	public SpecialStrategySetting findSpecialStrategySetting(String storeId, String userLevelId) {
		Date now = new Date();
		Calendar c = Calendar.getInstance();
		c.setTime(now);
		DateFormat timeInstance = DateFormat.getTimeInstance();
		String format = timeInstance.format(now);
		int weekday = c.get(Calendar.DAY_OF_WEEK) - 1;
		weekday = weekday == 0 ? 7 : weekday;
		QueryWrapper<SpecialStrategySetting> queryWrapper = new QueryWrapper<SpecialStrategySetting>().eq("store_id", storeId)
				.eq("user_level_id", userLevelId).eq("week_day", weekday);
		queryWrapper.ge("start_time", now).le("end_time", now);
		queryWrapper.ge("special_start_time", format).le("special_end_time", format);
		return this.baseMapper.selectOne(queryWrapper);
	}
}
