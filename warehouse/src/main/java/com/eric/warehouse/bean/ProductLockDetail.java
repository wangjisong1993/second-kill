package com.eric.warehouse.bean;

import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.util.Date;

/**
 * @author
 */
@Data
@Accessors(chain = true)
public class ProductLockDetail implements Serializable {
	/**
	 * 数据库主键
	 */
	@TableId
	private String id;

	/**
	 * 仓库id
	 */
	private String wId;

	/**
	 * 订单id
	 */
	private String orderId;

	/**
	 * 占用的商品id
	 */
	private String productId;

	/**
	 * 占用数量
	 */
	private Integer lockCnt;

	/**
	 * 创建时间
	 */
	private Date createTime;

	/**
	 * 更新时间
	 */
	private Date updateTime;

	/**
	 * 创建人
	 */
	private String createUserId;

	/**
	 * 更新人
	 */
	private String updateUserId;

	/**
	 * 状态
	 */
	private String lockStatus;

	private static final long serialVersionUID = 1L;

}