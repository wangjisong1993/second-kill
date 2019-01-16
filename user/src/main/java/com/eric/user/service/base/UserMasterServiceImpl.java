package com.eric.user.service.base;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.user.bean.UserMaster;
import com.eric.user.dao.UserMasterMapper;
import com.eric.user.service.UserMasterService;
import org.springframework.stereotype.Service;

/**
 * @author wang.js on 2019/1/16.
 * @version 1.0
 */
@Service
public class UserMasterServiceImpl extends ServiceImpl<UserMasterMapper, UserMaster> implements UserMasterService {
}
