package com.eric.product.service.base;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.product.bean.ShippingInfo;
import com.eric.product.dao.ShippingInfoMapper;
import com.eric.product.service.ShippingInfoService;
import org.springframework.stereotype.Service;

/**
 * @author wang.js on 2019/1/25.
 * @version 1.0
 */
@Service
public class ShippingInfoServiceImpl extends ServiceImpl<ShippingInfoMapper, ShippingInfo> implements ShippingInfoService {
}
