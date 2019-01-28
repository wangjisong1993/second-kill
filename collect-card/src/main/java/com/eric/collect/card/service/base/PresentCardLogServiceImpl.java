package com.eric.collect.card.service.base;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.collect.card.bean.PresentCardLog;
import com.eric.collect.card.dao.PresentCardLogMapper;
import com.eric.collect.card.service.PresentCardLogService;
import org.springframework.stereotype.Service;

/**
 * @author Eric on 2019/1/28.
 * @version 1.0
 */
@Service
public class PresentCardLogServiceImpl extends ServiceImpl<PresentCardLogMapper, PresentCardLog> implements PresentCardLogService {

	@Override
	public boolean savePresentCardLog(PresentCardLog presentCardLog) {
		return save(presentCardLog);
	}
}
