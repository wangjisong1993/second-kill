package com.eric.user.service.base;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.seckill.cache.anno.ParamCheck;
import com.eric.seckill.common.constant.UserStatus;
import com.eric.seckill.common.model.CommonResult;
import com.eric.user.bean.UserAddress;
import com.eric.user.bean.UserMaster;
import com.eric.user.constant.ErrorCodeEnum;
import com.eric.user.dao.UserAddressMapper;
import com.eric.user.model.UserAddressModifyRequest;
import com.eric.user.service.BaseService;
import com.eric.user.service.UserAddressService;
import com.eric.user.service.UserMasterService;
import org.dozer.DozerBeanMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.UUID;

/**
 * 用户地址信息
 *
 * @author Eric on 2019/1/16.
 * @version 1.0
 */
@Service
public class UserAddressServiceImpl extends ServiceImpl<UserAddressMapper, UserAddress>
		implements UserAddressService, BaseService {

	@Resource
	private UserMasterService userMasterService;

	@Resource
	private DozerBeanMapper dozerBeanMapper;

	@Override
	public int insertBlankAddress(String userId) {
		UserAddress t = new UserAddress().setId(UUID.randomUUID().toString()).setUserId(userId);
		initCreateTime(t);
		return baseMapper.insert(t);
	}

	@Override
	@ParamCheck
	public CommonResult<Void> updateUserAddress(UserAddressModifyRequest request) {
		// 判断用户id是否存在
		UserMaster user = userMasterService.findUserMasterByUserId(request.getUserId());
		if (user == null) {
			return CommonResult.fail(ErrorCodeEnum.USER_NOT_FOUND.getErrorMsg(), ErrorCodeEnum.USER_NOT_FOUND.getErrorCode());
		}
		if (UserStatus.ACTIVE.getStatusCode().equals(user.getUserStats())) {
			UserAddress t = new UserAddress();
			dozerBeanMapper.map(request, t);
			t.setUpdateTime(new Date());
			t.setUserId(null);
			int effect = baseMapper.update(t, new QueryWrapper<UserAddress>().eq("user_id", request.getUserId()));
			if (effect > 0) {
				return CommonResult.success(null, ErrorCodeEnum.UPDATE_SUCCESS.getErrorMsg());
			}
			return CommonResult.fail(null, ErrorCodeEnum.UPDATE_FAIL.getErrorMsg());
		}
		return CommonResult.fail(ErrorCodeEnum.UPDATE_FORBIDDEN.getErrorMsg(), ErrorCodeEnum.UPDATE_FORBIDDEN.getErrorCode());
	}
}
