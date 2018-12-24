package com.eric.seckill.common.bean;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;
import org.hibernate.validator.constraints.NotBlank;

import java.io.Serializable;
import java.math.BigDecimal;

/**
 * @author
 */
@Data
@NoArgsConstructor
@Accessors(chain = true)
public class SkGoods implements Serializable {
	/**
	 * 商品ID
	 */
	private Long id;

	/**
	 * 商品名称
	 */
	@NotBlank(message = "商品名称不能为空")
	private String goodsName;

	/**
	 * 商品标题
	 */
	private String goodsTitle;

	/**
	 * 商品图片
	 */
	private String goodsImg;

	private BigDecimal goodsPrice;

	/**
	 * 商品库存，-1表示没有限制
	 */
	private Integer goodsStock;

	/**
	 * 商品详情
	 */
	private String goodsDetail;

}