package com.eric.seckill.service.base;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.common.bean.SkUser;
import com.eric.seckill.dao.seckill.SkUserMapper;
import org.springframework.stereotype.Service;

/**
 * @author wang.js
 * @date 2018/12/17
 * @copyright yougou.com
 */
@Service
public class SkUserService extends ServiceImpl<SkUserMapper, SkUser> {
}
