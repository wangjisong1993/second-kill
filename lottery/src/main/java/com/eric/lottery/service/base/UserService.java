package com.eric.lottery.service.base;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.lottery.mapper.test.UserMapper;
import com.eric.seckill.common.bean.User;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Eric on 2019/1/6.
 * @version 1.0
 */
@Service
public class UserService extends ServiceImpl<UserMapper, User> {

	public List<User> listUserByUserName(String userName) {
		return baseMapper.selectList(new QueryWrapper<User>().eq("user_name", "eric"));
	}
}
