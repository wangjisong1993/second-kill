package com.eric.user.service.base;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.user.bean.UserActionLog;
import com.eric.user.dao.UserActionLogMapper;
import com.eric.user.service.UserActionLogService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Eric on 2019/1/16.
 * @version 1.0
 */
@Service
public class UserActionLogServiceImpl extends ServiceImpl<UserActionLogMapper, UserActionLog> implements UserActionLogService {

	@Override
	public List<UserActionLog> listAll() {
		return list();
	}

}
