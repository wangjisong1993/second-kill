package com.eric.user.service.base;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.seckill.cache.anno.ParamCheck;
import com.eric.seckill.common.constant.UserStatus;
import com.eric.seckill.common.exception.CustomException;
import com.eric.seckill.common.model.CommonResult;
import com.eric.user.bean.UserLoginLog;
import com.eric.user.bean.UserMaster;
import com.eric.user.constant.UserConstant;
import com.eric.user.dao.UserMasterMapper;
import com.eric.user.exception.ExceptionName;
import com.eric.user.model.RegisterUser;
import com.eric.user.model.RegisterUserRequest;
import com.eric.user.model.UserLogin;
import com.eric.user.service.*;
import com.eric.user.utils.PasswordUtil;
import org.apache.commons.lang3.StringUtils;
import org.dozer.DozerBeanMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Date;
import java.util.UUID;
import java.util.concurrent.CompletableFuture;

/**
 * 用户, 主要提供用户注册, 修改信息, 注销等操作
 * @author wang.js on 2019/1/16.
 * @version 1.0
 */
@Service
public class UserMasterServiceImpl extends ServiceImpl<UserMasterMapper, UserMaster>
		implements UserMasterService, BaseService {

	@Resource
	private DozerBeanMapper dozerBeanMapper;

	@Resource
	private UserInfoService userInfoService;

	@Resource
	private UserLoginLogService userLoginLogService;

	@Resource
	private UserAddressService userAddressService;

	@Override
	@ParamCheck
	@Transactional(propagation = Propagation.REQUIRED)
	public CommonResult<RegisterUser> registerUser(RegisterUserRequest registerUserRequest) {
		// 判断用户是否注册过(loginName和phone)
		checkRegistered(registerUserRequest);
		UserMaster userMaster = new UserMaster().setUserId(UUID.randomUUID().toString())
				.setUserStats(UserStatus.ACTIVE.getStatusCode())
				.setLoginName(registerUserRequest.getLoginName())
				.setPassword(PasswordUtil.generate(registerUserRequest.getPassword()));
		// 保存用户主信息
		initCreateTime(userMaster);
		int insert = baseMapper.insert(userMaster);
		if (insert == 0) {
			throw new CustomException("用户注册失败");
		}
		// 保存用户信息
		userInfoService.insert(userMaster, registerUserRequest.getPhone());
		// 保存用户地址信息
		userAddressService.insertBlankAddress(userMaster.getUserId());

		RegisterUser registerUser = new RegisterUser();
		dozerBeanMapper.map(userMaster, registerUser);
		registerUser.setUserStats(UserStatus.ACTIVE.getStatusCode());
		return CommonResult.success(registerUser);
	}

	@Override
	@ParamCheck
	public CommonResult<Void> login(UserLogin userLogin) {
		// 根据登陆名获取用户的密码, 然后进行比对
		String encryptPassword = baseMapper.findPasswordByLoginName(userLogin.getLoginName());
		if (StringUtils.isBlank(encryptPassword)) {
			return CommonResult.fail("登录名未注册", "250");
		}
		boolean verify = PasswordUtil.verify(userLogin.getPassword(), encryptPassword);
		// 保存用户登陆日志
		CompletableFuture.supplyAsync(() -> saveLoginLog(userLogin, verify));
		if (verify) {
			return CommonResult.success(null);
		}
		return CommonResult.fail("密码不正确", "250");
	}

	/**
	 * 保存用户登陆日志
	 * @param userLogin
	 * @param verify
	 */
	private UserLoginLog saveLoginLog(UserLogin userLogin, boolean verify) {
		UserLoginLog log = new UserLoginLog().setId(UUID.randomUUID().toString())
				.setLoginIp(userLogin.getIpAddr()).setLoginResult(verify ? UserConstant.CON_TRUE : UserConstant.CON_FALSE)
				.setLoginTime(new Date()).setUserId(baseMapper.findUserIdByLoginName(userLogin.getLoginName()));
		userLoginLogService.insert(log);
		return log;
	}

	/**
	 * 根据登陆名和手机号判断是否已经注册过
	 *
	 * @param registerUserRequest
	 */
	private void checkRegistered(RegisterUserRequest registerUserRequest) {
		Integer count = baseMapper.selectCount(new QueryWrapper<UserMaster>().eq("login_name", registerUserRequest.getLoginName()));
		if (count != null && count > 0) {
			throw new CustomException(ExceptionName.LOGIN_NAME_REGISTERED);
		}
		count = userInfoService.checkMobileExist(registerUserRequest.getPhone());
		if (count != null && count > 0) {
			throw new CustomException(ExceptionName.MOBILE_REGISTERED);
		}
	}
}
