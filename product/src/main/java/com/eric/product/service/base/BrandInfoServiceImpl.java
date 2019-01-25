package com.eric.product.service.base;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.product.bean.BrandInfo;
import com.eric.product.dao.BrandInfoMapper;
import com.eric.product.service.BrandInfoService;
import org.springframework.stereotype.Service;

/**
 * @author wang.js on 2019/1/25.
 * @version 1.0
 */
@Service
public class BrandInfoServiceImpl extends ServiceImpl<BrandInfoMapper, BrandInfo>
		implements BrandInfoService {
}
