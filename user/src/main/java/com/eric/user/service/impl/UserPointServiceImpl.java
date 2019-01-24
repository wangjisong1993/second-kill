package com.eric.user.service.impl;

import com.eric.seckill.cache.anno.ParamCheck;
import com.eric.seckill.common.exception.CustomException;
import com.eric.seckill.common.model.CommonResult;
import com.eric.user.bean.UserPointLog;
import com.eric.user.constant.ErrorCodeEnum;
import com.eric.user.model.UserPointChangeRequest;
import com.eric.user.model.UserPointChangeResponse;
import com.eric.user.service.UserInfoService;
import com.eric.user.service.UserPointLogService;
import com.eric.user.service.UserPointService;
import com.eric.user.utils.SignUtil;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Date;
import java.util.UUID;

/**
 * 用户积分
 *
 * @author wang.js on 2019/1/24.
 * @version 1.0
 */
@Service
public class UserPointServiceImpl extends BaseUserStatsService implements UserPointService {

	@Value("${user.charge.secret}")
	private String appSecret;

	@Resource
	private UserPointLogService userPointLogService;

	@Resource
	private UserInfoService userInfoService;

	@Override
	@ParamCheck
	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
	public CommonResult<UserPointChangeResponse> changePoint(UserPointChangeRequest request) {
		String sign = SignUtil.getSignForObject(request, appSecret, SignUtil.DEFAULT_EXCLUDE);
		if (!sign.equals(request.getSign())) {
			return CommonResult.fail(ErrorCodeEnum.ERROR_SIGN.getErrorMsg(), ErrorCodeEnum.ERROR_SIGN.getErrorCode());
		}
		// 判断是否已经处理过
		Integer count = userPointLogService.checkExistByOutTradeNo(request.getOutTradeNo());
		if (count != null && count > 0) {
			return CommonResult.fail(ErrorCodeEnum.DUPLICATE.getErrorMsg(), ErrorCodeEnum.DUPLICATE.getErrorCode());
		}
		// 判断用户是否是有效状态
		checkUserActive(request.getUserId());
		// 保存积分变动记录
		UserPointLog log = new UserPointLog().setChangePoint(request.getChangePoint())
				.setCreateTime(new Date()).setId(UUID.randomUUID().toString())
				.setPointSource(request.getPointSource()).setReferNumber(request.getOutTradeNo())
				.setUserId(request.getUserId());
		Integer effect = userPointLogService.insert(log);
		if (effect == null || effect == 0) {
			throw new CustomException(ErrorCodeEnum.ERROR_SAVE.getErrorMsg());
		}
		// 变更最终的积分
		UserPointChangeResponse response = userInfoService.updateUserPoint(request);
		return CommonResult.success(response, "积分变更成功");
	}

}
