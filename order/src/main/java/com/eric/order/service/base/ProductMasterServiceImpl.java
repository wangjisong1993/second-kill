package com.eric.order.service.base;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.order.bean.ProductMaster;
import com.eric.order.constant.AuditStatusEnum;
import com.eric.order.constant.OrderErrorCodeEnum;
import com.eric.order.constant.PublishStatusEnum;
import com.eric.order.dao.ProductMasterMapper;
import com.eric.order.service.ProductMasterService;
import com.eric.seckill.common.exception.CustomException;
import org.springframework.stereotype.Service;

/**
 * 商品
 *
 * @author wang.js on 2019/1/24.
 * @version 1.0
 */
@Service
public class ProductMasterServiceImpl extends ServiceImpl<ProductMasterMapper, ProductMaster> implements ProductMasterService {

	@Override
	public ProductMaster findProductMasterById(String productId) {
		ProductMaster productMaster = baseMapper.selectById(productId);
		if (productMaster != null) {
			if (PublishStatusEnum.DOWN.getStatus().equals(productMaster.getPublishStatus())) {
				throw new CustomException(OrderErrorCodeEnum.PRODUCT_DOWN.getMessage());
			}
			if (!AuditStatusEnum.AUDITE_SUCCESS.getAuditStatus().equals(productMaster.getAuditStatus())) {
				throw new CustomException(OrderErrorCodeEnum.PRODUCT_NOT_AUDIT.getMessage());
			}
		}
		return productMaster;
	}

}
