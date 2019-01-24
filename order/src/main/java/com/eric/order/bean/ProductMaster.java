package com.eric.order.bean;

import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.util.Date;

/**
 * product_master
 *
 * @author
 */
@Data
@Accessors(chain = true)
public class ProductMaster implements Serializable {
	/**
	 * 商品ID
	 */
	@TableId
	private String productId;

	/**
	 * 商品编码
	 */
	private String productCore;

	/**
	 * 商品名称
	 */
	private String productName;

	/**
	 * 品牌表的ID
	 */
	private String brandId;

	/**
	 * 一级分类ID
	 */
	private String oneCategoryId;

	/**
	 * 二级分类ID
	 */
	private String twoCategoryId;

	/**
	 * 三级分类ID
	 */
	private String threeCategoryId;

	/**
	 * 商品的供应商ID
	 */
	private String supplierId;

	/**
	 * 商品销售价格
	 */
	private Integer price;

	/**
	 * 上下架状态
	 */
	private String publishStatus;

	/**
	 * 审核状态
	 */
	private String auditStatus;

	/**
	 * 生产日期
	 */
	private Date productionDate;

	/**
	 * 商品有效期
	 */
	private Integer shelfLife;

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
	private String updateUserId;

	private static final long serialVersionUID = 1L;

}