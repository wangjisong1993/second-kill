package com.eric.warehouse.bean;

import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.util.Date;

/**
 * warehouse_info
 *
 * @author
 */
@Data
@Accessors(chain = true)
public class WarehouseInfo implements Serializable {
	/**
	 * 仓库ID
	 */
	@TableId
	private String wId;

	/**
	 * 仓库编码
	 */
	private String warehouseSn;

	/**
	 * 仓库名称
	 */
	private String warehoustName;

	/**
	 * 仓库电话
	 */
	private String warehousePhone;

	/**
	 * 仓库联系人
	 */
	private String contact;

	/**
	 * 仓库地址
	 */
	private String address;

	/**
	 * 仓库状态
	 */
	private String warehouseStatus;

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