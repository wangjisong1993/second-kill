package com.eric.user.service.base;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.user.bean.UserPointLog;
import com.eric.user.dao.UserPointLogMapper;
import com.eric.user.service.UserPointLogService;
import org.springframework.stereotype.Service;

/**
 * 用户积分记录
 *
 * @author Eric on 2019/1/16.
 * @version 1.0
 */
@Service
public class UserPointLogServiceImpl extends ServiceImpl<UserPointLogMapper, UserPointLog> implements UserPointLogService {

	@Override
	public Integer checkExistByOutTradeNo(String outTradeNo) {
		return baseMapper.selectCount(new QueryWrapper<UserPointLog>().eq("refer_number", outTradeNo));
	}

	@Override
	public Integer insert(UserPointLog log) {
		return baseMapper.insert(log);
	}

}
