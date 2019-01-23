package com.eric.user.service.base;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.user.bean.UserBalanceLog;
import com.eric.user.dao.UserBalanceLogMapper;
import com.eric.user.service.UserBalanceLogService;
import org.springframework.stereotype.Service;

/**
 * 用户余额
 *
 * @author Eric on 2019/1/16.
 * @version 1.0
 */
@Service
public class UserBalanceLogServiceImpl extends ServiceImpl<UserBalanceLogMapper, UserBalanceLog> implements UserBalanceLogService {

	@Override
	public Integer countBalanceLogBySourceSn(String outTradeNo, String chargeUserId) {
		return baseMapper.selectCount(new QueryWrapper<UserBalanceLog>().eq("user_id", chargeUserId).eq("source_sn", outTradeNo));
	}

	@Override
	public Integer insert(UserBalanceLog log) {
		return baseMapper.insert(log);
	}

}
