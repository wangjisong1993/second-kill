package com.eric.order.service.base;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.order.bean.WarehouseProduct;
import com.eric.order.dao.WarehouseProductMapper;
import com.eric.order.model.CreateOrderRequest;
import com.eric.order.service.WarehouseProductService;
import org.springframework.stereotype.Service;

/**
 * @author wang.js on 2019/1/24.
 * @version 1.0
 */
@Service
public class WarehouseProductServiceImpl extends ServiceImpl<WarehouseProductMapper, WarehouseProduct> implements WarehouseProductService {

	@Override
	public String findWarehouseId(CreateOrderRequest request) {
		return null;
	}
}
