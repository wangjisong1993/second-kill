package com.eric.warehouse.bean;

import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.util.Date;

/**
 * warehouse_product
 *
 * @author
 */
@Data
@Accessors(chain = true)
public class WarehouseProduct implements Serializable {
	/**
	 * 商品库存ID
	 */
	@TableId
	private String wpId;

	/**
	 * 商品ID
	 */
	private String productId;

	/**
	 * 仓库ID
	 */
	private String wId;

	/**
	 * 当前商品数量
	 */
	private Integer currentCnt;

	/**
	 * 当前占用数据
	 */
	private Integer lockCnt;

	/**
	 * 在途数据
	 */
	private Integer inTransitCnt;

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