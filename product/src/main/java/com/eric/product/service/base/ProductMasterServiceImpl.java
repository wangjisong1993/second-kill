package com.eric.product.service.base;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.product.bean.ProductMaster;
import com.eric.product.constant.AuditStatusEnum;
import com.eric.product.constant.ProductErrorCodeEnum;
import com.eric.product.constant.PublishStatusEnum;
import com.eric.product.dao.ProductMasterMapper;
import com.eric.product.service.ProductMasterService;
import com.eric.seckill.common.constant.ErrorCodeEnum;
import com.eric.seckill.common.exception.CustomException;
import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.ProductQueryResponse;
import org.apache.commons.lang3.StringUtils;
import org.dozer.DozerBeanMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * @author wang.js on 2019/1/25.
 * @version 1.0
 */
@Service
public class ProductMasterServiceImpl extends ServiceImpl<ProductMasterMapper, ProductMaster>
		implements ProductMasterService {

	@Resource
	private DozerBeanMapper dozerBeanMapper;

	@Override
	public CommonResult<ProductQueryResponse> findProductMasterById(String productId) {
		if (StringUtils.isBlank(productId)) {
			return CommonResult.fail(ErrorCodeEnum.EMPTY_PARAM.getMessage(), ErrorCodeEnum.EMPTY_PARAM.getErrCode());
		}
		ProductMaster productMaster = baseMapper.selectOne(new QueryWrapper<ProductMaster>().eq("product_id", productId));
		if (productMaster == null) {
			return CommonResult.fail(ProductErrorCodeEnum.PRODUCT_NOT_FOUND.getMessage(), ProductErrorCodeEnum.PRODUCT_NOT_FOUND.getErrCode());
		}
		if (PublishStatusEnum.DOWN.getStatus().equals(productMaster.getPublishStatus())) {
			throw new CustomException(ProductErrorCodeEnum.PRODUCT_DOWN.getMessage());
		}
		if (!AuditStatusEnum.AUDITE_SUCCESS.getAuditStatus().equals(productMaster.getAuditStatus())) {
			throw new CustomException(ProductErrorCodeEnum.PRODUCT_NOT_AUDIT.getMessage());
		}
		ProductQueryResponse response = new ProductQueryResponse();
		dozerBeanMapper.map(productMaster, response);
		return CommonResult.success(response, null);
	}


}
