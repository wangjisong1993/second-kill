package com.eric.order.service.base;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.order.bean.OrderMaster;
import com.eric.order.dao.OrderMasterMapper;
import com.eric.order.service.OrderMasterService;
import org.springframework.stereotype.Service;

/**
 * @author wang.js on 2019/1/24.
 * @version 1.0
 */
@Service
public class OrderMasterServiceImpl extends ServiceImpl<OrderMasterMapper, OrderMaster>
		implements OrderMasterService {

	@Override
	public int insert(OrderMaster orderMaster) {
		return baseMapper.insert(orderMaster);
	}

}
