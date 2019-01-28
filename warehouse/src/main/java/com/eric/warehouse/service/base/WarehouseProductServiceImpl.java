package com.eric.warehouse.service.base;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.seckill.cache.anno.ParamCheck;
import com.eric.seckill.common.constant.ErrorCodeEnum;
import com.eric.seckill.common.exception.CustomException;
import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.WarehouseQueryRequest;
import com.eric.seckill.common.utils.SignUtil;
import com.eric.warehouse.bean.ProductLockDetail;
import com.eric.warehouse.bean.WarehouseProduct;
import com.eric.warehouse.constant.LockStatusEnum;
import com.eric.warehouse.constant.WarehouseErrorCodeEnum;
import com.eric.warehouse.dao.WarehouseProductMapper;
import com.eric.warehouse.model.InStockRequest;
import com.eric.warehouse.model.WarehouseCntUpdateRequest;
import com.eric.warehouse.service.ProductLockDetailService;
import com.eric.warehouse.service.WarehouseProductService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Date;
import java.util.UUID;

/**
 * @author Eric on 2019/1/27.
 * @version 1.0
 */
@Service
public class WarehouseProductServiceImpl extends ServiceImpl<WarehouseProductMapper, WarehouseProduct> implements WarehouseProductService {

	@Value("${warehouse.charge.secret}")
	private String appSecret;

	@Resource
	private ProductLockDetailService productLockDetailService;

	@Override
	@ParamCheck
	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
	public CommonResult<String> find(WarehouseQueryRequest request) {
		boolean verify = SignUtil.verify(request, request.getSign(), appSecret);
		if (!verify) {
			throw new CustomException(ErrorCodeEnum.ERROR_SIGN.getMessage());
		}
		// 根据订单id和商品id判断是否已经占用过库存
		int count = productLockDetailService.countByOrderIdAndProductId(request.getOrderId(), request.getProductId());
		if (count > 0) {
			return CommonResult.fail(WarehouseErrorCodeEnum.RECORD_DUPLICATE.getErrorMsg(), WarehouseErrorCodeEnum.RECORD_DUPLICATE.getErrorCode());
		}
		// 获取现有的库存值
		String wId = this.baseMapper.findMaxCurrentCntWId(request.getProductId(), request.getProductCnt());
		if (StringUtils.isBlank(wId)) {
			return CommonResult.fail(WarehouseErrorCodeEnum.STOCK_NOT_ENOUGH.getErrorMsg(), WarehouseErrorCodeEnum.STOCK_NOT_ENOUGH.getErrorCode());
		}
		// 保存订单锁定记录
		ProductLockDetail t = new ProductLockDetail().setId(UUID.randomUUID().toString())
				.setCreateTime(new Date()).setCreateUserId("admin").setUpdateTime(new Date())
				.setUpdateUserId("admin").setLockCnt(request.getProductCnt()).setLockStatus(LockStatusEnum.LOCKED.getStatusCode())
				.setOrderId(request.getOrderId()).setProductId(request.getProductId()).setWId(wId);
		productLockDetailService.insert(t);
		// 更新占用数量
		WarehouseCntUpdateRequest updateRequest = new WarehouseCntUpdateRequest().setUpdateTime(new Date())
				.setLockCnt(request.getProductCnt()).setProductId(request.getProductId()).setWId(wId);
		baseMapper.updateCnt(updateRequest);
		return CommonResult.success(wId, null);
	}

	@Override
	public boolean saveOrUpdateProductCnt(InStockRequest request) {
		// 根据商品id和仓库id获取库存记录id
		String wpId = baseMapper.findWpIdByProductIdAndWId(request.getProductId(), request.getWarehouseId());
		if (StringUtils.isBlank(wpId)) {
			// 保存
			WarehouseProduct entity = new WarehouseProduct().setWId(request.getWarehouseId()).setProductId(request.getProductId())
					.setCreateTime(new Date()).setCurrentCnt(request.getProductCnt()).setInTransitCnt(0)
					.setLockCnt(0).setUpdateTime(new Date()).setWpId(UUID.randomUUID().toString());
			return save(entity);
		}
		// 更新
		return updateProductCnt(request, wpId);
	}

	@Override
	public void updateInTransitCnt(ProductLockDetail lockDetail) {
		int result = this.baseMapper.updateInTransitCnt(lockDetail, new Date());
		if (result == 0) {
			throw new CustomException(ErrorCodeEnum.UPDATE_FAIL.getMessage());
		}
	}

	@Override
	public void updateReceived(ProductLockDetail lockDetail) {
		int result = this.baseMapper.updateReceived(lockDetail, new Date());
		if (result == 0) {
			throw new CustomException(ErrorCodeEnum.UPDATE_FAIL.getMessage());
		}
	}

	/**
	 * 更新商品库存
	 *
	 * @param request
	 * @param wpId
	 * @return
	 */
	private boolean updateProductCnt(InStockRequest request, String wpId) {
		return baseMapper.updateProductCnt(request, wpId, new Date()) > 0;
	}
}
