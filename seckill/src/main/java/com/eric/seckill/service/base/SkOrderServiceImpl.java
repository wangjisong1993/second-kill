package com.eric.seckill.service.base;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.seckill.common.bean.SkOrder;
import com.eric.seckill.dao.SkOrderMapper;
import com.eric.seckill.service.SkOrderService;
import org.springframework.stereotype.Service;

/**
 * @author wang.js
 * @date 2018/12/17
 * @copyright yougou.com
 */
@Service
public class SkOrderServiceImpl extends ServiceImpl<SkOrderMapper, SkOrder> implements SkOrderService {
}
