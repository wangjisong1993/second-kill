package com.eric.user.service.base;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.user.bean.UserInfo;
import com.eric.user.dao.UserInfoMapper;
import com.eric.user.service.UserInfoService;
import org.springframework.stereotype.Service;

/**
 * @author wang.js on 2019/1/16.
 * @version 1.0
 */
@Service
public class UserInfoServiceImpl extends ServiceImpl<UserInfoMapper, UserInfo> implements UserInfoService {
}
