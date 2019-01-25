package com.eric.product.bean;

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

	public String getShipId() {
		return shipId;
	}

	public void setShipId(String shipId) {
		this.shipId = shipId;
	}

	public String getShipName() {
		return shipName;
	}

	public void setShipName(String shipName) {
		this.shipName = shipName;
	}

	public String getShipContact() {
		return shipContact;
	}

	public void setShipContact(String shipContact) {
		this.shipContact = shipContact;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
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

	public String getUpdateUesrId() {
		return updateUesrId;
	}

	public void setUpdateUesrId(String updateUesrId) {
		this.updateUesrId = updateUesrId;
	}
}