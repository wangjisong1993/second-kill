package com.eric.seckill.common.model;

import com.eric.seckill.common.constant.ErrorCodeEnum;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author wang.js
 * @date 2018/12/18
 * @copyright yougou.com
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
abstract class BaseResult {

	/**
	 * 接口请求状态：true-请求成功，false-请求失败
	 */
	private boolean success = true;
	/**
	 * 状态码：200-成功(默认)，404-未知请求，500-服务异常，自定义状态码
	 */
	private String code = ErrorCodeEnum.SUCCESS.getErrCode();
	/**
	 * 请求返回消息内容
	 */
	private String message = ErrorCodeEnum.SUCCESS.getMessage();

}
