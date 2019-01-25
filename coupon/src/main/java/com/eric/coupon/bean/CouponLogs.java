package com.eric.coupon.bean;

import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.util.Date;

/**
 * coupon_logs
 *
 * @author
 */
@Data
@Accessors(chain = true)
public class CouponLogs implements Serializable {
	/**
	 * 自动增加ID
	 */
	@TableId
	private String id;

	/**
	 * 买家ID
	 */
	private String userId;

	/**
	 * 优惠券id
	 */
	private String couponReceiveId;

	/**
	 * 订单号
	 */
	private String orderNumber;

	/**
	 * 原订单金额
	 */
	private Integer orderOriginalAmount;

	/**
	 * 优惠券的金额
	 */
	private Integer couponAmount;

	/**
	 * 抵扣优惠券之后的订单金额
	 */
	private Integer orderFinalAmount;

	/**
	 * 领取时间
	 */
	private Date createTime;

	/**
	 * 日志状态: 默认为0，支付回调成功后为1
	 */
	private String status;

	private static final long serialVersionUID = 1L;

}