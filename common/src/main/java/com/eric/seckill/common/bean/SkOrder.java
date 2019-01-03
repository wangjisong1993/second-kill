package com.eric.seckill.common.bean;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import java.io.Serializable;

/**
 * @author
 */
@Data
@NoArgsConstructor
@Accessors(chain = true)
public class SkOrder implements Serializable {

	private String id;

	private String userId;

	private String orderId;

	private String goodsId;

}