package com.eric.coupon.bean;

import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.util.Date;

/**
 * coupon_receive
 *
 * @author
 */
@Data
@Accessors(chain = true)
public class CouponReceive implements Serializable {
	/**
	 * 自动增加ID
	 */
	@TableId
	private String id;

	/**
	 * 优惠券号
	 */
	private String couponSn;

	/**
	 * 买家ID
	 */
	private String UserId;

	/**
	 * 优惠券编号
	 */
	private String couponTemplateId;

	/**
	 * 券额
	 */
	private Integer couponMoney;

	/**
	 * 领取时间
	 */
	private Date createTime;
	/**
	 * 更新时间
	 */
	private Date updateTime;

	/**
	 * 金额满
	 */
	private Integer fullMoney;

	/**
	 * 状态，1为已使用，0为已领取未使用，-1为已过期
	 */
	private String status;

	private static final long serialVersionUID = 1L;

}