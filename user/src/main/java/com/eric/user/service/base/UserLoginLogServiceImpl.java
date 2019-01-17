package com.eric.user.service.base;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.user.bean.UserLoginLog;
import com.eric.user.dao.UserLoginLogMapper;
import com.eric.user.service.UserLoginLogService;
import org.springframework.stereotype.Service;

/**
 * 用户登录日志
 * @author Eric on 2019/1/16.
 * @version 1.0
 */
@Service
public class UserLoginLogServiceImpl extends ServiceImpl<UserLoginLogMapper, UserLoginLog> implements UserLoginLogService {
}
