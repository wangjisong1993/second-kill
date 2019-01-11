package com.eric.seckill.common.bean;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

/**
 * @author eric
 */
@Data
@NoArgsConstructor
@Accessors(chain = true)
public class SkOrderInfo implements Serializable {
	private Long id;

	private Long userId;

	private Long goodsId;

	private Long deliveryAddrId;

	private String goodsName;

	private Integer goodsCount;

	private BigDecimal goodsPrice;

	/**
	 * 订单渠道，1在线，2android，3ios
	 */
	private Byte orderChannel;

	/**
	 * 订单状态，0新建未支付，1已支付，2已发货，3已收货，4已退款，5已完成
	 */
	private Byte status;
	/**
	 * 创建时间
	 */
	private Date createDate;
	/**
	 * 支付时间
	 */
	private Date payDate;

}