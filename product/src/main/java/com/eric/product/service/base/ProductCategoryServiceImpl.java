package com.eric.product.service.base;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.product.bean.ProductCategory;
import com.eric.product.dao.ProductCategoryMapper;
import com.eric.product.service.ProductCategoryService;
import org.springframework.stereotype.Service;

/**
 * @author wang.js on 2019/1/25.
 * @version 1.0
 */
@Service
public class ProductCategoryServiceImpl extends ServiceImpl<ProductCategoryMapper, ProductCategory>
		implements ProductCategoryService {
}
