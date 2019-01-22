package com.eric.user.service.base;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.user.bean.UserAddress;
import com.eric.user.dao.UserAddressMapper;
import com.eric.user.service.BaseService;
import com.eric.user.service.UserAddressService;
import org.springframework.stereotype.Service;

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

	@Override
	public int insertBlankAddress(String userId) {
		UserAddress t = new UserAddress().setId(UUID.randomUUID().toString()).setUserId(userId);
		initCreateTime(t);
		return baseMapper.insert(t);
	}
}
