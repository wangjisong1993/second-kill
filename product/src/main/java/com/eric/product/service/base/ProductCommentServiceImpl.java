package com.eric.product.service.base;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.product.bean.ProductComment;
import com.eric.product.dao.ProductCommentMapper;
import com.eric.product.service.ProductCommentService;
import org.springframework.stereotype.Service;

/**
 * @author wang.js on 2019/1/25.
 * @version 1.0
 */
@Service
public class ProductCommentServiceImpl extends ServiceImpl<ProductCommentMapper, ProductComment> implements ProductCommentService {
}
