package com.eric.coupon.bean;

import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.util.Date;

/**
 * coupon
 *
 * @author
 */
@Data
@Accessors(chain = true)
public class CouponTemplate implements Serializable {
	/**
	 * 自动增加ID
	 */
	@TableId
	private String templateId;


	/**
	 * 所属区域
	 */
	private String regionId;

	/**
	 * 所属类型,1为满减
	 */
	private String type;

	/**
	 * 优惠券名称
	 */
	private String name;

	/**
	 * 图片的URL地址
	 */
	private String img;

	/**
	 * 优惠券开始时间
	 */
	private Date startTime;

	/**
	 * 优惠券结束时间
	 */
	private Date endTime;

	/**
	 * 优惠券金额，用整数，固定值目前。
	 */
	private Integer money;

	/**
	 * 状态，0表示未开始，1表示进行中，-1表示结束
	 */
	private String status;

	/**
	 * 优惠券的说明
	 */
	private String remarks;

	/**
	 * 创建时间
	 */
	private Date createTime;

	/**
	 * 金额满
	 */
	private Integer fullMoney;

	private static final long serialVersionUID = 1L;

}