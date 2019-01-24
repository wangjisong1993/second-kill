package com.eric.seckill.common.model.feign;

import lombok.Data;
import lombok.experimental.Accessors;

/**
 * @author wang.js on 2019/1/24.
 * @version 1.0
 */
@Data
@Accessors(chain = true)
public class UserQueryRequest {

	/**
	 * 登录名
	 */
	private String loginName;
	/**
	 * 用户id
	 */
	private String userId;

}
