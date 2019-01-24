package com.eric.user.service.impl;

import com.eric.seckill.cache.anno.ParamCheck;
import com.eric.seckill.common.exception.CustomException;
import com.eric.seckill.common.model.CommonResult;
import com.eric.user.bean.UserBalanceLog;
import com.eric.user.constant.ErrorCodeEnum;
import com.eric.user.model.ChargeBalanceRequest;
import com.eric.user.model.ChargeBalanceResponse;
import com.eric.user.service.ChargeBalanceService;
import com.eric.user.service.UserBalanceLogService;
import com.eric.user.service.UserInfoService;
import com.eric.user.service.UserMasterService;
import com.eric.user.utils.SignUtil;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Date;
import java.util.UUID;

/**
 * @author Eric on 2019/1/23.
 * @version 1.0
 */
@Service
public class ChargeBalanceServiceImpl extends BaseUserStatsService implements ChargeBalanceService {

	@Value("${user.charge.secret}")
	private String appSecret;

	@Resource
	private UserInfoService userInfoService;

	@Resource
	private UserBalanceLogService userBalanceLogService;

	@Resource
	private UserMasterService userMasterService;

	@Override
	@ParamCheck
	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
	public CommonResult<ChargeBalanceResponse> charge(ChargeBalanceRequest request) {
		// 校验签名
		String sign = SignUtil.getSignForObject(request, appSecret, SignUtil.DEFAULT_EXCLUDE);
		if (!sign.equals(request.getSign())) {
			return CommonResult.fail(ErrorCodeEnum.ERROR_SIGN.getErrorMsg(), ErrorCodeEnum.ERROR_SIGN.getErrorCode());
		}
		// 签名合法, 判断是否处理过
		Integer count = userBalanceLogService.countBalanceLogBySourceSn(request.getOutTradeNo(), request.getChargeUserId());
		if (count == null || count > 0) {
			return CommonResult.fail(ErrorCodeEnum.DUPLICATE.getErrorMsg(), ErrorCodeEnum.DUPLICATE.getErrorCode());
		}
		// 判断用户是否是有效状态
		checkUserActive(request.getChargeUserId());
		// 保存充值记录
		UserBalanceLog t = new UserBalanceLog().setChangeAmount(request.getChargeAmount()).setCreateTime(new Date())
				.setId(UUID.randomUUID().toString()).setSource(request.getSource()).setSourceSn(request.getOutTradeNo())
				.setUserId(request.getChargeUserId());
		Integer effect = userBalanceLogService.insert(t);
		if (effect == null || effect == 0) {
			throw new CustomException(ErrorCodeEnum.ERROR_SAVE.getErrorMsg());
		}
		// 变动用户最终的余额
		ChargeBalanceResponse response = userInfoService.updateUserBalance(request);
		return CommonResult.success(response, "充值成功");
	}

}
