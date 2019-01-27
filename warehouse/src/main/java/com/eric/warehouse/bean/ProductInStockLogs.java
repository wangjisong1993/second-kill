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
public class ProductInStockLogs implements Serializable {
	/**
	 * 数据库主键
	 */
	@TableId
	private String id;

	/**
	 * 商品id
	 */
	private String productId;

	/**
	 * 仓库id
	 */
	private String wId;

	/**
	 * 入库数量
	 */
	private Integer productCnt;

	/**
	 * 供应商
	 */
	private String supplierId;

	/**
	 * 合同号
	 */
	private String contractNo;

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

	private static final long serialVersionUID = 1L;

}