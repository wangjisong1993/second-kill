package com.eric.seckill.common.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

/**
 * 通用结果返回
 *
 * @author wang.js
 * @date 2018/12/18
 * @copyright yougou.com
 */
@EqualsAndHashCode(callSuper = true)
@Data
@NoArgsConstructor
@AllArgsConstructor
public class CommonResult<T> extends BaseResult {

	/**
	 * 返回数据结果对象
	 */
	private T data;

	/**
	 * 查询成功返回数据
	 *
	 * @param data
	 * @param <T>
	 * @return
	 */
	public static <T> CommonResult success(T data) {
		CommonResult<T> result = new CommonResult<>();
		result.setData(data);
		return result;
	}

	/**
	 * 查询失败
	 *
	 * @param message
	 * @param code
	 * @param <T>
	 * @return
	 */
	public static <T> CommonResult fail(String message, String code) {
		CommonResult<T> result = new CommonResult<>();
		result.setMessage(message);
		result.setCode(code);
		return result;
	}
}
