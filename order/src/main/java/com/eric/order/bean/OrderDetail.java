package com.eric.order.bean;

import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.util.Date;

/**
 * order_detail
 *
 * @author
 */
@Data
@Accessors(chain = true)
public class OrderDetail implements Serializable {
	/**
	 * 订单详情表ID
	 */
	@TableId
	private String orderDetailId;

	/**
	 * 订单表ID
	 */
	private String orderId;

	/**
	 * 订单商品ID
	 */
	private String productId;

	/**
	 * 商品名称
	 */
	private String productName;

	/**
	 * 购买商品数量
	 */
	private Integer productCnt;

	/**
	 * 购买商品单价
	 */
	private Integer productPrice;

	/**
	 * 优惠分摊金额
	 */
	private Integer feeMoney;

	/**
	 * 仓库ID
	 */
	private String wId;

	/**
	 * 创建时间
	 */
	private Date createTime;

	/**
	 * 更新时间
	 */
	private Date updateTime;

	private static final long serialVersionUID = 1L;

}