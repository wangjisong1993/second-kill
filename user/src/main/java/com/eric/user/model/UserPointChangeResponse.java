package com.eric.user.model;

import lombok.Data;
import lombok.experimental.Accessors;

/**
 * @author wang.js on 2019/1/24.
 * @version 1.0
 */
@Data
@Accessors(chain = true)
public class UserPointChangeResponse {

	/**
	 * 最终积分
	 */
	private String finalPoint;

}
