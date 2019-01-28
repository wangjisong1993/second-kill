package com.eric.warehouse.service.impl;

import com.eric.seckill.cache.anno.ParamCheck;
import com.eric.seckill.common.constant.ErrorCodeEnum;
import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.WarehouseShippingRequest;
import com.eric.warehouse.bean.ProductLockDetail;
import com.eric.warehouse.constant.LockStatusEnum;
import com.eric.warehouse.service.ProductLockDetailService;
import com.eric.warehouse.service.WarehouseProductService;
import com.eric.warehouse.service.WarehouseShippingService;
import org.apache.commons.collections.CollectionUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * 仓库发货
 *
 * @author wang.js on 2019/1/28.
 * @version 1.0
 */
@Service
public class WarehouseShippingServiceImpl extends BaseWarehouseService implements WarehouseShippingService {

	@Resource
	private ProductLockDetailService productLockDetailService;

	@Resource
	private WarehouseProductService warehouseProductService;

	@Override
	@ParamCheck
	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
	public CommonResult<Void> shipping(WarehouseShippingRequest request) {
		// 校验签名
		checkSign(request, request.getSign());
		// 校验操作用户是否正常
		checkUserActive(request.getUserId());
		// 根据订单id查找所有正在占用的记录
		List<ProductLockDetail> lockDetails = productLockDetailService.listByOrderId(request.getOrderId(), LockStatusEnum.LOCKED.getStatusCode());
		if (CollectionUtils.isEmpty(lockDetails)) {
			return CommonResult.success(null, ErrorCodeEnum.UPDATE_SUCCESS.getMessage());
		}
		for (ProductLockDetail lockDetail : lockDetails) {
			// 更新主表
			warehouseProductService.updateInTransitCnt(lockDetail);
			lockDetail.setLockStatus(LockStatusEnum.SHIPPING.getStatusCode()).setUpdateTime(new Date())
					.setUpdateUserId(request.getUserId());
		}
		// 批量更新
		productLockDetailService.updateBatch(lockDetails);
		return CommonResult.success(null, ErrorCodeEnum.UPDATE_SUCCESS.getMessage());
	}

}
