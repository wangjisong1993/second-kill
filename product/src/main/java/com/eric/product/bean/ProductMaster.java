package com.eric.product.bean;

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

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public String getProductCore() {
		return productCore;
	}

	public void setProductCore(String productCore) {
		this.productCore = productCore;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getBrandId() {
		return brandId;
	}

	public void setBrandId(String brandId) {
		this.brandId = brandId;
	}

	public String getOneCategoryId() {
		return oneCategoryId;
	}

	public void setOneCategoryId(String oneCategoryId) {
		this.oneCategoryId = oneCategoryId;
	}

	public String getTwoCategoryId() {
		return twoCategoryId;
	}

	public void setTwoCategoryId(String twoCategoryId) {
		this.twoCategoryId = twoCategoryId;
	}

	public String getThreeCategoryId() {
		return threeCategoryId;
	}

	public void setThreeCategoryId(String threeCategoryId) {
		this.threeCategoryId = threeCategoryId;
	}

	public String getSupplierId() {
		return supplierId;
	}

	public void setSupplierId(String supplierId) {
		this.supplierId = supplierId;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public String getPublishStatus() {
		return publishStatus;
	}

	public void setPublishStatus(String publishStatus) {
		this.publishStatus = publishStatus;
	}

	public String getAuditStatus() {
		return auditStatus;
	}

	public void setAuditStatus(String auditStatus) {
		this.auditStatus = auditStatus;
	}

	public Date getProductionDate() {
		return productionDate;
	}

	public void setProductionDate(Date productionDate) {
		this.productionDate = productionDate;
	}

	public Integer getShelfLife() {
		return shelfLife;
	}

	public void setShelfLife(Integer shelfLife) {
		this.shelfLife = shelfLife;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public String getCreateUserId() {
		return createUserId;
	}

	public void setCreateUserId(String createUserId) {
		this.createUserId = createUserId;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	public String getUpdateUserId() {
		return updateUserId;
	}

	public void setUpdateUserId(String updateUserId) {
		this.updateUserId = updateUserId;
	}
}