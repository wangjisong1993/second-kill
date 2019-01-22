package com.eric.user.service.base;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.seckill.common.exception.CustomException;
import com.eric.user.bean.UserInfo;
import com.eric.user.bean.UserMaster;
import com.eric.user.dao.UserInfoMapper;
import com.eric.user.service.BaseService;
import com.eric.user.service.UserInfoService;
import com.eric.user.service.UserLevelDetailService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Date;
import java.util.UUID;

/**
 * 用户信息
 *
 * @author wang.js on 2019/1/16.
 * @version 1.0
 */
@Service
public class UserInfoServiceImpl extends ServiceImpl<UserInfoMapper, UserInfo>
		implements UserInfoService, BaseService {

	@Resource
	private UserLevelDetailService userLevelDetailService;

	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public int insert(UserMaster userMaster, String mobile) {
		UserInfo t = new UserInfo().setMobilePhone(mobile)
				.setRegisterTime(new Date()).setUserId(userMaster.getUserId())
				.setUserInfoId(UUID.randomUUID().toString())
				.setUserLevel(userLevelDetailService.findBaseLevel());
		initCreateTime(t);
		// 保存用户信息
		int result = baseMapper.insert(t);
		if (result == 0) {
			throw new CustomException("保存用户信息失败");
		}
		return result;
	}

	@Override
	public Integer checkMobileExist(String phone) {
		return baseMapper.selectCount(new QueryWrapper<UserInfo>().eq("mobile_phone", phone));
	}
}
