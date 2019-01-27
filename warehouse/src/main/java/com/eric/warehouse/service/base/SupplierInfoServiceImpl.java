package com.eric.warehouse.service.base;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.seckill.cache.anno.ParamCheck;
import com.eric.seckill.common.constant.ErrorCodeEnum;
import com.eric.seckill.common.model.CommonResult;
import com.eric.warehouse.bean.SupplierInfo;
import com.eric.warehouse.constant.SupplierStatusEnum;
import com.eric.warehouse.dao.SupplierInfoMapper;
import com.eric.warehouse.model.AddSupplierInfoRequest;
import com.eric.warehouse.service.SupplierInfoService;
import org.dozer.DozerBeanMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.UUID;

/**
 * @author Eric on 2019/1/27.
 * @version 1.0
 */
@Service
public class SupplierInfoServiceImpl extends ServiceImpl<SupplierInfoMapper, SupplierInfo> implements SupplierInfoService {

	@Resource
	private DozerBeanMapper dozerBeanMapper;

	@Override
	public int countBySupplierId(String supplierId) {
		return count(new QueryWrapper<SupplierInfo>().eq("supplier_id", supplierId).eq("supplier_status", SupplierStatusEnum.STATUS_NORMAL.getStatusCode()));
	}

	@Override
	@ParamCheck
	public CommonResult<Void> add(AddSupplierInfoRequest request) {
		// 判断供应商编码是否存在
		int count = count(new QueryWrapper<SupplierInfo>().eq("supplier_code", request.getSupplierCode()));
		if (count > 0) {
			return CommonResult.fail(ErrorCodeEnum.DUPLICATE.getMessage(), ErrorCodeEnum.DUPLICATE.getErrCode());
		}
		SupplierInfo entity = new SupplierInfo();
		dozerBeanMapper.map(request, entity);
		entity.setCreateTime(new Date()).setCreateUserId(request.getUserId()).setSupplierId(UUID.randomUUID().toString())
				.setSupplierStatus(SupplierStatusEnum.STATUS_NORMAL.getStatusCode()).setUpdateTime(new Date())
				.setUpdateUserId(request.getUserId());
		boolean save = save(entity);
		if (save) {
			return CommonResult.success(null, ErrorCodeEnum.SAVE_SUCCESS.getMessage());
		}
		return CommonResult.fail(ErrorCodeEnum.SAVE_ERROR.getMessage(), ErrorCodeEnum.SAVE_ERROR.getErrCode());
	}
}
