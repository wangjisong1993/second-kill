package com.eric.order.service.base;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.order.bean.WarehouseInfo;
import com.eric.order.dao.WarehouseInfoMapper;
import com.eric.order.service.WarehouseInfoService;
import org.springframework.stereotype.Service;

/**
 * @author wang.js on 2019/1/24.
 * @version 1.0
 */
@Service
public class WarehouseInfoServiceImpl extends ServiceImpl<WarehouseInfoMapper, WarehouseInfo> implements WarehouseInfoService {
}
