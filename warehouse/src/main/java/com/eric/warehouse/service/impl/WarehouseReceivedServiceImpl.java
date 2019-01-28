package com.eric.warehouse.service.impl;

import com.eric.seckill.cache.anno.ParamCheck;
import com.eric.seckill.common.constant.ErrorCodeEnum;
import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.WarehouseReceivedRequest;
import com.eric.warehouse.bean.ProductLockDetail;
import com.eric.warehouse.constant.LockStatusEnum;
import com.eric.warehouse.service.ProductLockDetailService;
import com.eric.warehouse.service.WarehouseProductService;
import com.eric.warehouse.service.WarehouseReceivedService;
import org.apache.commons.collections.CollectionUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * @author wang.js on 2019/1/28.
 * @version 1.0
 */
@Service
public class WarehouseReceivedServiceImpl extends BaseWarehouseService implements WarehouseReceivedService {

	@Resource
	private ProductLockDetailService productLockDetailService;

	@Resource
	private WarehouseProductService warehouseProductService;

	@Override
	@ParamCheck
	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
	public CommonResult<Void> received(WarehouseReceivedRequest request) {
		// 校验签名
		checkSign(request, request.getSign());
		// 找出所有的订单占用记录
		List<ProductLockDetail> lockDetails = productLockDetailService.listByOrderId(request.getOrderId(), LockStatusEnum.SHIPPING.getStatusCode());
		if (CollectionUtils.isEmpty(lockDetails)) {
			return CommonResult.success(null, ErrorCodeEnum.UPDATE_SUCCESS.getMessage());
		}
		// 遍历更新
		for (ProductLockDetail lockDetail : lockDetails) {
			warehouseProductService.updateReceived(lockDetail);
			lockDetail.setLockStatus(LockStatusEnum.RECEIVED.getStatusCode()).setUpdateTime(new Date())
					.setUpdateUserId(request.getOperateUserId());
		}
		// 批量更新
		productLockDetailService.updateBatch(lockDetails);
		return CommonResult.success(null, ErrorCodeEnum.UPDATE_SUCCESS.getMessage());
	}
}
