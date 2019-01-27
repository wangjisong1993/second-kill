package com.eric.warehouse.service.base;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.warehouse.bean.ProductLockDetail;
import com.eric.warehouse.constant.LockStatusEnum;
import com.eric.warehouse.dao.ProductLockDetailMapper;
import com.eric.warehouse.service.ProductLockDetailService;
import org.springframework.stereotype.Service;

/**
 * 商品锁住记录
 *
 * @author Eric on 2019/1/27.
 * @version 1.0
 */
@Service
public class ProductLockDetailServiceImpl extends ServiceImpl<ProductLockDetailMapper, ProductLockDetail> implements ProductLockDetailService {

	@Override
	public int countByOrderIdAndProductId(String orderId, String productId) {
		return count(new QueryWrapper<ProductLockDetail>().eq("order_id", orderId).eq("product_id", productId)
				.eq("lock_status", LockStatusEnum.LOCKED.getStatusCode()));
	}

	@Override
	public boolean insert(ProductLockDetail t) {
		return save(t);
	}

}
