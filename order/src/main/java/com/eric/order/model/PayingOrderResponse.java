package com.eric.order.model;

import lombok.Data;
import lombok.experimental.Accessors;

/**
 * @author wang.js on 2019/1/25.
 * @version 1.0
 */
@Data
@Accessors(chain = true)
public class PayingOrderResponse {

	/**
	 * 交易订单号
	 */
	private String outTradeNo;

}
