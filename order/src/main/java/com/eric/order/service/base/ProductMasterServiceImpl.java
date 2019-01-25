package com.eric.order.service.base;

import com.eric.order.feign.ProductMasterFeign;
import com.eric.order.service.ProductMasterService;
import com.eric.seckill.common.constant.ErrorCodeEnum;
import com.eric.seckill.common.exception.CustomException;
import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.ProductQueryResponse;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * 商品
 *
 * @author wang.js on 2019/1/24.
 * @version 1.0
 */
@Service
public class ProductMasterServiceImpl implements ProductMasterService {

	@Resource
	private ProductMasterFeign productMasterFeign;

	@Override
	public ProductQueryResponse findProductMasterById(String productId) {
		CommonResult<ProductQueryResponse> result = productMasterFeign.findProductMasterById(productId);
		if (result != null) {
			if (result.isSuccess()) {
				return result.getData();
			}
			throw new CustomException(result.getMessage());
		}
		throw new CustomException(ErrorCodeEnum.SERVER_ERROR.getMessage());
	}

}
