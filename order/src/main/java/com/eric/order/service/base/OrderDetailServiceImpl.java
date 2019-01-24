package com.eric.order.service.base;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.order.bean.OrderDetail;
import com.eric.order.dao.OrderDetailMapper;
import com.eric.order.service.OrderDetailService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author wang.js on 2019/1/24.
 * @version 1.0
 */
@Service
public class OrderDetailServiceImpl extends ServiceImpl<OrderDetailMapper, OrderDetail> implements OrderDetailService {

	@Override
	public boolean insertBatch(List<OrderDetail> details) {
		return saveBatch(details);
	}

}
