package com.eric.warehouse.service.base;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.seckill.common.constant.ErrorCodeEnum;
import com.eric.seckill.common.exception.CustomException;
import com.eric.warehouse.bean.ProductLockDetail;
import com.eric.warehouse.constant.LockStatusEnum;
import com.eric.warehouse.dao.ProductLockDetailMapper;
import com.eric.warehouse.service.ProductLockDetailService;
import org.springframework.stereotype.Service;

import java.util.List;

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

	@Override
	public List<ProductLockDetail> listByOrderId(String orderId, String statusCode) {
		return list(new QueryWrapper<ProductLockDetail>().eq("order_id", orderId).eq("lock_status", statusCode));
	}

	@Override
	public void updateBatch(List<ProductLockDetail> lockDetails) {
		boolean result = updateBatchById(lockDetails);
		if (!result) {
			throw new CustomException(ErrorCodeEnum.UPDATE_FAIL.getMessage());
		}
	}

}
