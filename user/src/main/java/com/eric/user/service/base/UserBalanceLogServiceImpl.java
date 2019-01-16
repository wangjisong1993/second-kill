package com.eric.user.service.base;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.user.bean.UserBalanceLog;
import com.eric.user.dao.UserBalanceLogMapper;
import com.eric.user.service.UserBalanceLogService;
import org.springframework.stereotype.Service;

/**
 * @author Eric on 2019/1/16.
 * @version 1.0
 */
@Service
public class UserBalanceLogServiceImpl extends ServiceImpl<UserBalanceLogMapper, UserBalanceLog> implements UserBalanceLogService {
}
