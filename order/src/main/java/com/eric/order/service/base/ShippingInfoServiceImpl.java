package com.eric.order.service.base;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.order.bean.ShippingInfo;
import com.eric.order.dao.ShippingInfoMapper;
import com.eric.order.service.ShippingInfoService;
import org.springframework.stereotype.Service;

/**
 * @author wang.js on 2019/1/24.
 * @version 1.0
 */
@Service
public class ShippingInfoServiceImpl extends ServiceImpl<ShippingInfoMapper, ShippingInfo> implements ShippingInfoService {
}
