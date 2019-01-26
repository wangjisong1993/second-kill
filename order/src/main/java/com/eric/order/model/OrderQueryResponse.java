package com.eric.order.model;

import lombok.Data;
import lombok.experimental.Accessors;

import java.util.Date;
import java.util.List;

/**
 * 用户订单查询响应
 *
 * @author Eric on 2019/1/26.
 * @version 1.0
 */
@Data
@Accessors(chain = true)
public class OrderQueryResponse {

	/**
	 * 订单id
	 */
	private String orderId;
	/**
	 * 订单号
	 */
	private String orderSn;
	/**
	 * 支付方式
	 */
	private String payMethodString;
	/**
	 * 订单原金额
	 */
	private Integer orderMoney;
	/**
	 * 商品优惠金额
	 */
	private Integer districtMoney;
	/**
	 * 运费
	 */
	private Integer shippingMoney;
	/**
	 * 实际支付金额
	 */
	private Integer paymentMoney;
	/**
	 * 优惠券使用金额
	 */
	private Integer couponDiscount;

	/**
	 * 运单号
	 */
	private String shippingSn;
	/**
	 * 支付时间
	 */
	private Date payTime;
	/**
	 * 收货时间
	 */
	private Date receiveTime;
	/**
	 * 发货时间
	 */
	private Date shippingTime;
	/**
	 * 订单状态
	 */
	private String orderStatusString;
	/**
	 * 赠送积分
	 */
	private Integer orderPoint;
	/**
	 * 订单明细
	 */
	private List<OrderDetailQueryResponse> orderDetails;


}
