package com.eric.collect.card.service.base;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.collect.card.bean.ReceiveLog;
import com.eric.collect.card.dao.ReceiveLogMapper;
import com.eric.collect.card.service.ReceiveLogService;
import org.springframework.stereotype.Service;

/**
 * @author Eric on 2019/1/28.
 * @version 1.0
 */
@Service
public class ReceiveLogServiceImpl extends ServiceImpl<ReceiveLogMapper, ReceiveLog> implements ReceiveLogService {

	@Override
	public int countByUserId(String userId) {
		Integer count = this.baseMapper.countByUserId(userId);
		return count == null ? 0 : count;
	}

	@Override
	public boolean saveReceiveLog(ReceiveLog log) {
		return this.save(log);
	}

}
