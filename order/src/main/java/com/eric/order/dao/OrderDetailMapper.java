package com.eric.order.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.eric.order.bean.OrderDetail;
import com.eric.order.model.OrderDetailQueryResponse;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author wang.js on 2019/1/24.
 * @version 1.0
 */
public interface OrderDetailMapper extends BaseMapper<OrderDetail> {

	/**
	 * 根据订单id列出订单明细
	 * @param orderId
	 * @return
	 */
	List<OrderDetailQueryResponse> listOrderDetailQueryResponseByOrderId(@Param("orderId") String orderId);
}
