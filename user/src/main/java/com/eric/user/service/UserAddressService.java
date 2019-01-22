package com.eric.user.service;

/**
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
}
