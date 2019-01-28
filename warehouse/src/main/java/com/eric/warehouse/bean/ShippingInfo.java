package com.eric.warehouse.bean;

import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.util.Date;

/**
 * shipping_info
 *
 * @author
 */
@Data
@Accessors(chain = true)
public class ShippingInfo implements Serializable {
	/**
	 * 主键ID
	 */
	@TableId
	private String shipId;

	/**
	 * 负责配送的仓库id
	 */
	private String warehouseId;

	/**
	 * 物流公司名称
	 */
	private String shipName;

	/**
	 * 物流公司联系人
	 */
	private String shipContact;

	/**
	 * 物流公司联系电话
	 */
	private String telephone;

	/**
	 * 配送价格
	 */
	private Integer price;

	/**
	 * 创建时间
	 */
	private Date createTime;

	/**
	 * 创建人
	 */
	private String createUserId;

	/**
	 * 更新时间
	 */
	private Date updateTime;

	/**
	 * 更新人
	 */
	private String updateUesrId;

	private static final long serialVersionUID = 1L;

}