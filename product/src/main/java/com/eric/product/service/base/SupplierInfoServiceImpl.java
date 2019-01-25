package com.eric.product.service.base;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.product.bean.SupplierInfo;
import com.eric.product.dao.SupplierInfoMapper;
import com.eric.product.service.SupplierInfoService;
import org.springframework.stereotype.Service;

/**
 * @author wang.js on 2019/1/25.
 * @version 1.0
 */
@Service
public class SupplierInfoServiceImpl extends ServiceImpl<SupplierInfoMapper, SupplierInfo> implements SupplierInfoService {
}
