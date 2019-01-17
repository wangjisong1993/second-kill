package com.eric.user.service.base;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.seckill.common.constant.UserStatus;
import com.eric.seckill.common.model.CommonResult;
import com.eric.user.bean.UserMaster;
import com.eric.user.dao.UserMasterMapper;
import com.eric.user.model.RegisterUser;
import com.eric.user.service.UserMasterService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import java.util.UUID;

/**
 * 用户, 主要提供用户注册, 修改信息, 注销等操作
 * @author wang.js on 2019/1/16.
 * @version 1.0
 */
@Service
public class UserMasterServiceImpl extends ServiceImpl<UserMasterMapper, UserMaster> implements UserMasterService {

	@Override
	public CommonResult<RegisterUser>  registerUser(String phone) {
		if (StringUtils.isBlank(phone)) {
			return CommonResult.fail("手机号为空", "250");
		}
		UserMaster userMaster = new UserMaster().setUserId(UUID.randomUUID().toString())
				.setUserStats(UserStatus.ACTIVE.getStatusCode())
				.setLoginName(phone).setPassword("123456");
		baseMapper.insert(userMaster);
		return CommonResult.success(null);
	}
}
