package com.eric.warehouse.service.base;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.warehouse.bean.WarehouseInfo;
import com.eric.warehouse.dao.WarehouseInfoMapper;
import com.eric.warehouse.service.WarehouseInfoService;
import org.springframework.stereotype.Service;

/**
 * @author Eric on 2019/1/27.
 * @version 1.0
 */
@Service
public class WarehouseInfoServiceImpl extends ServiceImpl<WarehouseInfoMapper, WarehouseInfo> implements WarehouseInfoService {
}
