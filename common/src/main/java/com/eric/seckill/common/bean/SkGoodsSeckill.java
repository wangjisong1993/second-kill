package com.eric.seckill.common.bean;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

/**
 * @author eric
 */
@Data
@NoArgsConstructor
@Accessors(chain = true)
public class SkGoodsSeckill implements Serializable {
	/**
	 * 秒杀商品id
	 */
	private Long id;

	/**
	 * 商品id
	 */
	private Long goodsId;

	/**
	 * 秒杀价
	 */
	private BigDecimal seckillPrice;

	/**
	 * 库存数量
	 */
	private Integer stockCount;

	/**
	 * 秒杀开始时间
	 */
	private Date startDate;

	/**
	 * 秒杀结束时间
	 */
	private Date endDate;

	/**
	 * 并发版本控制
	 */
	private Integer version;

}