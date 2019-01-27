package com.eric.warehouse.model;

import lombok.Data;
import lombok.experimental.Accessors;

import java.util.Date;

/**
 * 商品库存数量更新
 *
 * @author Eric on 2019/1/27.
 * @version 1.0
 */
@Data
@Accessors(chain = true)
public class WarehouseCntUpdateRequest {

	/**
	 * 商品id
	 */
	private String productId;
	/**
	 * 仓库id
	 */
	private String wId;
	/**
	 * 锁定数量
	 */
	private Integer lockCnt;
	/**
	 * 更新时间
	 */
	private Date updateTime;

}
