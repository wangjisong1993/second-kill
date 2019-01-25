package com.eric.seckill.common.model.feign;

import lombok.Data;
import lombok.experimental.Accessors;

import java.util.Date;

/**
 * @author wang.js on 2019/1/25.
 * @version 1.0
 */
@Data
@Accessors(chain = true)
public class ProductQueryResponse {

	/**
	 * 商品ID
	 */
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

}
