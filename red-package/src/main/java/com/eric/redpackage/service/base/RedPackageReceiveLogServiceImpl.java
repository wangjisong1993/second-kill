package com.eric.redpackage.service.base;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.redpackage.bean.RedPackageReceiveLog;
import com.eric.redpackage.dao.RedPackageReceiveLogMapper;
import com.eric.redpackage.service.RedPackageReceiveLogService;
import org.springframework.stereotype.Service;

/**
 * @author wang.js on 2019/2/13.
 * @version 1.0
 */
@Service
public class RedPackageReceiveLogServiceImpl extends ServiceImpl<RedPackageReceiveLogMapper, RedPackageReceiveLog> implements RedPackageReceiveLogService {

	@Override
	public boolean saveReceiveLog(RedPackageReceiveLog receiveLog) {
		return save(receiveLog);
	}

	@Override
	public int countByPackageIdAndReceiveId(String redPackageId, String receiver) {
		return count(new QueryWrapper<RedPackageReceiveLog>().eq("red_package_id", redPackageId)
				.eq("receiver_id", receiver));
	}
}
