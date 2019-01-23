package com.eric.user.model;

import lombok.Data;
import lombok.experimental.Accessors;

/**
 * @author Eric on 2019/1/23.
 * @version 1.0
 */
@Data
@Accessors(chain = true)
public class ChargeBalanceResponse {

	/**
	 * 用户余额
	 */
	private String userBalance;

}
