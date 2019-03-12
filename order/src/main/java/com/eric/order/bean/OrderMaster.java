package com.eric.order.bean;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.util.Date;

/**
 * order_master
 *
 * @author
 */
@Data
@Accessors(chain = true)
@TableName("order_master")
public class OrderMaster implements Serializable {
	/**
	 * 订单ID
	 */
	@TableId
	private Long orderId;

	/**
	 * 订单编号
	 */
	private String orderSn;

	/**
	 * 下单人ID
	 */
	private Long userId;

	/**
	 * 收货人姓名
	 */
	private String shippingUser;

	/**
	 * 支付方式
	 */
	private String paymentMethod;

	/**
	 * 订单金额
	 */
	private Integer orderMoney;

	/**
	 * 优惠金额
	 */
	private Integer districtMoney;

	/**
	 * 运费金额
	 */
	private Integer shippingMoney;

	/**
	 * 支付金额
	 */
	private Integer paymentMoney;

	/**
	 * 快递单号
	 */
	private String shippingSn;

	/**
	 * 下单时间
	 */
	private Date createTime;

	/**
	 * 优惠券金额
	 */
	private Integer couponDiscount;

	/**
	 * 发货时间
	 */
	private Date shippingTime;

	/**
	 * 支付时间
	 */
	private Date payTime;

	/**
	 * 收货时间
	 */
	private Date receiveTime;

	/**
	 * 订单状态
	 */
	private String orderStatus;

	/**
	 * 订单积分
	 */
	private Integer orderPoint;

	/**
	 * 更新时间
	 */
	private Date updateTime;

	private static final long serialVersionUID = 1L;

}