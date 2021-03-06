package com.eric.warehouse.service.base;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.seckill.common.model.CommonResult;
import com.eric.warehouse.bean.ShippingInfo;
import com.eric.warehouse.dao.ShippingInfoMapper;
import com.eric.warehouse.service.ShippingInfoService;
import org.springframework.stereotype.Service;

/**
 * @author Eric on 2019/1/27.
 * @version 1.0
 */
@Service
public class ShippingInfoServiceImpl extends ServiceImpl<ShippingInfoMapper, ShippingInfo> implements ShippingInfoService {

	@Override
	public CommonResult<Integer> findShippingPriceByWarehouseId(String warehouseId) {
		Integer shippingPrice = this.baseMapper.findShippingPriceByWarehouseId(warehouseId);
		return CommonResult.success(shippingPrice, null);
	}

}
