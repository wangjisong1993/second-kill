package com.eric.warehouse.service.impl;

import com.eric.seckill.cache.anno.ParamCheck;
import com.eric.seckill.common.constant.ErrorCodeEnum;
import com.eric.seckill.common.exception.CustomException;
import com.eric.seckill.common.model.CommonResult;
import com.eric.warehouse.bean.ProductInStockLogs;
import com.eric.warehouse.constant.WarehouseErrorCodeEnum;
import com.eric.warehouse.model.InStockRequest;
import com.eric.warehouse.service.InStockService;
import com.eric.warehouse.service.ProductInStockLogsService;
import com.eric.warehouse.service.SupplierInfoService;
import com.eric.warehouse.service.WarehouseProductService;
import org.dozer.DozerBeanMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Date;
import java.util.UUID;

/**
 * 商品入库操作
 *
 * @author Eric on 2019/1/27.
 * @version 1.0
 */
@Service
public class InStockServiceImpl extends BaseWarehouseService implements InStockService {

	@Resource
	private ProductInStockLogsService productInStockLogsService;

	@Resource
	private WarehouseProductService warehouseProductService;

	@Resource
	private SupplierInfoService supplierInfoService;

	@Resource
	private DozerBeanMapper dozerBeanMapper;

	@Override
	@ParamCheck
	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
	public CommonResult<Void> add(InStockRequest request) {
		// 校验签名
		checkSign(request, request.getSign());
		// 判断签收人是否伪造
		checkUserActive(request.getReceiver());
		// 校验供应商
		checkSupplier(request.getSupplierId());
		// 校验是否处理过该采购单号
		checkContractNo(request.getContractNo());
		ProductInStockLogs log = new ProductInStockLogs();
		dozerBeanMapper.map(request, log);
		log.setCreateTime(new Date()).setCreateUserId(request.getReceiver())
				.setId(UUID.randomUUID().toString()).setWId(request.getWarehouseId())
				.setUpdateTime(new Date()).setUpdateUserId(request.getReceiver());
		// 保存入库记录
		productInStockLogsService.insertLogs(log);
		// 更新库存主表的库存数量
		warehouseProductService.saveOrUpdateProductCnt(request);
		return CommonResult.success(null, ErrorCodeEnum.UPDATE_SUCCESS.getMessage());
	}

	/**
	 * 校验采购单号
	 *
	 * @param contractNo
	 */
	private void checkContractNo(String contractNo) {
		int count = productInStockLogsService.countByContractNo(contractNo);
		if (count > 0) {
			throw new CustomException(ErrorCodeEnum.DUPLICATE.getMessage());
		}
	}

	/**
	 * 校验供应商
	 *
	 * @param supplierId
	 */
	private void checkSupplier(String supplierId) {
		int count = supplierInfoService.countBySupplierId(supplierId);
		if (count == 0) {
			throw new CustomException(WarehouseErrorCodeEnum.SUPPLIER_NOT_FIND.getErrorMsg());
		}
	}
}
