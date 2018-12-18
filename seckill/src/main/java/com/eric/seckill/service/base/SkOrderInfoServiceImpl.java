package com.eric.seckill.service.base;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.seckill.common.bean.SkOrderInfo;
import com.eric.seckill.dao.SkOrderInfoMapper;
import com.eric.seckill.service.SkOrderInfoService;
import org.springframework.stereotype.Service;

/**
 * @author wang.js
 * @date 2018/12/17
 * @copyright yougou.com
 */
@Service
public class SkOrderInfoServiceImpl extends ServiceImpl<SkOrderInfoMapper, SkOrderInfo> implements SkOrderInfoService {
}
