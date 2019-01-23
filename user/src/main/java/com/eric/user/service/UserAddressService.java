package com.eric.user.service;

import com.eric.seckill.common.model.CommonResult;
import com.eric.user.model.UserAddressModifyRequest; /**
 * @author Eric on 2019/1/16.
 * @version 1.0
 */
public interface UserAddressService {

	/**
	 * 保存用户地址信息
	 * @param userId
	 * @return
	 */
	int insertBlankAddress(String userId);

	/**
	 * 更新用户地址信息
	 * @param request
	 * @return
	 */
	CommonResult<Void> updateUserAddress(UserAddressModifyRequest request);
}
