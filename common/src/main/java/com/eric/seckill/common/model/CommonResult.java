package com.eric.seckill.common.model;

import lombok.*;
import lombok.experimental.Accessors;
import org.apache.commons.lang3.StringUtils;

/**
 * 通用结果返回
 *
 * @author wang.js
 * @date 2018/12/18
 * @copyright yougou.com
 */
@Accessors(chain = true)
@EqualsAndHashCode(callSuper = true)
@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class CommonResult<T> extends BaseResult {

	/**
	 * 返回数据结果对象
	 */
	private T data;

	/**
	 * 查询成功返回数据
	 *
	 * @param data 要返回的数据
	 * @param <T> 返回的数据类型
	 * @return CommonResult
	 */
	public static <T> CommonResult<T> success(T data, String message) {
		CommonResult<T> result = new CommonResult<>();
		result.setData(data);
		if (StringUtils.isNotBlank(message)) {
			result.setMessage(message);
		}
		return result;
	}

	/**
	 * 查询失败
	 *
	 * @param message 错误信息
	 * @param code 错误码
	 * @param <T> 泛型
	 * @return CommonResult
	 */
	public static <T> CommonResult<T> fail(String message, String code) {
		CommonResult<T> result = new CommonResult<>();
		result.setMessage(message);
		result.setCode(code);
		result.setSuccess(false);
		return result;
	}
}
