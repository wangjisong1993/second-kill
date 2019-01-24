package com.eric.user.service.base;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.seckill.cache.anno.ParamCheck;
import com.eric.seckill.common.constant.UserStatus;
import com.eric.seckill.common.exception.CustomException;
import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.UserQueryRequest;
import com.eric.seckill.common.model.feign.UserQueryResponse;
import com.eric.user.bean.UserLoginLog;
import com.eric.user.bean.UserMaster;
import com.eric.user.constant.ErrorCodeEnum;
import com.eric.user.constant.UserConstant;
import com.eric.user.dao.UserMasterMapper;
import com.eric.user.exception.ExceptionName;
import com.eric.user.model.*;
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
import java.util.concurrent.TimeUnit;

/**
 * 用户, 主要提供用户注册, 修改信息, 注销等操作
 *
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
	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
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
			throw new CustomException(ErrorCodeEnum.USER_REGISTER_FAIL.getErrorMsg());
		}
		// 保存用户信息
		userInfoService.insert(userMaster, registerUserRequest.getPhone());
		// 保存用户地址信息
		userAddressService.insertBlankAddress(userMaster.getUserId());

		RegisterUser registerUser = new RegisterUser();
		dozerBeanMapper.map(userMaster, registerUser);
		registerUser.setUserStats(UserStatus.ACTIVE.getStatusCode());
		return CommonResult.success(registerUser, null);
	}

	@Override
	@ParamCheck
	public CommonResult<UserLoginResponse> login(UserLoginRequest userLogin) {
		// 根据登陆名获取用户的密码, 然后进行比对
		UserMaster userMaster = baseMapper.findPasswordByLoginName(userLogin.getLoginName());
		if (userMaster == null) {
			return CommonResult.fail(ErrorCodeEnum.LOGIN_NAME_NOT_REGISTER.getErrorMsg(), ErrorCodeEnum.LOGIN_NAME_NOT_REGISTER.getErrorCode());
		}
		if (UserStatus.FREEZE.getStatusCode().equals(userMaster.getUserStats())) {
			// 保存用户登陆日志
			CompletableFuture.supplyAsync(() -> saveLoginLog(userLogin, false));
			return CommonResult.fail(ErrorCodeEnum.ACCOUNT_FREEZE.getErrorMsg(), ErrorCodeEnum.ACCOUNT_FREEZE.getErrorCode());
		} else if (UserStatus.DISACTIVE.getStatusCode().equals(userMaster.getUserStats())) {
			// 保存用户登陆日志
			CompletableFuture.supplyAsync(() -> saveLoginLog(userLogin, false));
			return CommonResult.fail(ErrorCodeEnum.ACCOUNT_DISACTIVE.getErrorMsg(), ErrorCodeEnum.ACCOUNT_DISACTIVE.getErrorCode());
		}
		boolean verify = PasswordUtil.verify(userLogin.getPassword(), userMaster.getPassword());
		// 保存用户登陆日志
		CompletableFuture.supplyAsync(() -> saveLoginLog(userLogin, verify));
		if (verify) {
			UserLoginResponse response = new UserLoginResponse();
			dozerBeanMapper.map(userMaster, response);
			return CommonResult.success(response, ErrorCodeEnum.LOGIN_SUCCESS.getErrorMsg());
		}
		return CommonResult.fail(ErrorCodeEnum.ERROR_PASSWORD.getErrorMsg(), ErrorCodeEnum.ERROR_PASSWORD.getErrorCode());
	}

	@Override
	@ParamCheck
	public CommonResult<Void> updateUserStats(UserModifyRequest userModifyRequest) {
		// 判断用户是否存在
		Integer count = baseMapper.selectCount(new QueryWrapper<UserMaster>().eq("login_name", userModifyRequest.getLoginName()));
		if (count == null || count == 0) {
			return CommonResult.fail(ErrorCodeEnum.LOGIN_NAME_NOT_REGISTER.getErrorMsg(), ErrorCodeEnum.LOGIN_NAME_NOT_REGISTER.getErrorCode());
		}
		UserMaster master = new UserMaster().setUserStats(userModifyRequest.getUserStats());
		master.setUpdateTime(new Date());
		master.setUpdateUserId(userModifyRequest.getUpdateUserId());
		int effect = baseMapper.update(master, new QueryWrapper<UserMaster>().eq("login_name", userModifyRequest.getLoginName()));
		if (effect > 0) {
			return CommonResult.success(null, ErrorCodeEnum.UPDATE_SUCCESS.getErrorMsg());
		}
		return CommonResult.fail(ErrorCodeEnum.UPDATE_FAIL.getErrorMsg(), ErrorCodeEnum.UPDATE_FAIL.getErrorCode());
	}

	@Override
	@ParamCheck
	public CommonResult<Void> updatePassword(PasswordModifyRequest request) {
		UserMaster userMaster = baseMapper.selectOne(new QueryWrapper<UserMaster>().eq("login_name", request.getLoginName()));
		if (userMaster == null) {
			return CommonResult.fail(ErrorCodeEnum.LOGIN_NAME_NOT_REGISTER.getErrorMsg(), ErrorCodeEnum.LOGIN_NAME_NOT_REGISTER.getErrorCode());
		}
		// 校验密码是否一致
		boolean verify = PasswordUtil.verify(request.getOriginalPassword(), userMaster.getPassword());
		if (!verify) {
			return CommonResult.fail(ErrorCodeEnum.ERROR_PASSWORD.getErrorMsg(), ErrorCodeEnum.ERROR_PASSWORD.getErrorCode());
		}
		// 允许修改密码
		String newPassword = PasswordUtil.generate(request.getNewPassword());
		int effect = baseMapper.update(new UserMaster().setPassword(newPassword), new QueryWrapper<UserMaster>().eq("login_name", request.getLoginName()));
		if (effect > 0) {
			return CommonResult.success(null, ErrorCodeEnum.UPDATE_SUCCESS.getErrorMsg());
		}
		return CommonResult.fail(ErrorCodeEnum.UPDATE_FAIL.getErrorMsg(), ErrorCodeEnum.UPDATE_FAIL.getErrorCode());
	}

	@Override
	public UserMaster findUserMasterByUserId(String userId) {
		return this.baseMapper.selectById(userId);
	}

	@Override
	public CommonResult<UserQueryResponse> findUserMaster(UserQueryRequest request) {
		try {
			TimeUnit.SECONDS.sleep(1);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		UserMaster userMaster;
		if (StringUtils.isNotBlank(request.getLoginName())) {
			userMaster = baseMapper.selectOne(new QueryWrapper<UserMaster>().eq("login_name", request.getLoginName()));
		} else {
			userMaster = baseMapper.selectOne(new QueryWrapper<UserMaster>().eq("user_id", request.getUserId()));
		}
		if (userMaster == null) {
			return CommonResult.fail(ErrorCodeEnum.USER_NOT_FOUND.getErrorMsg(), ErrorCodeEnum.USER_NOT_FOUND.getErrorCode());
		}
		UserQueryResponse response = new UserQueryResponse();
		dozerBeanMapper.map(userMaster, response);
		return CommonResult.success(response, null);
	}

	/**
	 * 保存用户登陆日志
	 *
	 * @param userLogin
	 * @param verify
	 */
	private UserLoginLog saveLoginLog(UserLoginRequest userLogin, boolean verify) {
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
