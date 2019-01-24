package com.eric.order.model;

import lombok.Data;
import lombok.experimental.Accessors;

/**
 * 创建订单的商品明细
 *
 * @author wang.js on 2019/1/24.
 * @version 1.0
 */
@Data
@Accessors(chain = true)
public class CreateOrderDetail {

	/**
	 * 订单商品ID
	 */
	private String productId;

	/**
	 * 购买商品数量
	 */
	private Integer productCnt;

}
