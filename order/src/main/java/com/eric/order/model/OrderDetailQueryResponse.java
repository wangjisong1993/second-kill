package com.eric.order.model;

import lombok.Data;
import lombok.experimental.Accessors;

/**
 * @author Eric on 2019/1/26.
 * @version 1.0
 */
@Data
@Accessors(chain = true)
public class OrderDetailQueryResponse {

	/**
	 * 订单明细id
	 */
	private String orderDetailId;
	/**
	 * 商品id
	 */
	private String productId;
	/**
	 * 商品名称
	 */
	private String productName;
	/**
	 * 商品数量
	 */
	private Integer productCnt;
	/**
	 * 商品单价
	 */
	private Integer productPrice;

}
