package com.eric.seckill.common.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * @author wang.js
 * @date 2018/12/18
 * @copyright yougou.com
 */
@Data
@EqualsAndHashCode(callSuper = true)
@NoArgsConstructor
@AllArgsConstructor
public class PageResult<T> extends BaseResult {

	/**
	 * 当前页码
	 */
	private long pageNum;
	/**
	 * 每页数据大小
	 */
	private long pageSize;
	/**
	 * 总页数
	 */
	private long pageTotal;
	/**
	 * 数据总记录数
	 */
	private long rowTotal;
	/**
	 * 返回数据对象
	 */
	private List<T> rowDatas;

	/**
	 * 查询成功
	 *
	 * @param data 查询出来的结果
	 * @return PageResult
	 */
	public static <T> PageResult<T> success(List<T> data) {
		PageResult<T> result = new PageResult<>();
		result.setPageNum(1);
		result.setPageTotal(1);
		result.setRowDatas(data);
		return result;
	}

	/**
	 * 查询失败的情况
	 *
	 * @param message 错误信息
	 * @param code 错误码
	 * @param <T> 泛型
	 * @return PageResult
	 */
	public static <T> PageResult<T> fail(String message, String code) {
		PageResult<T> result = new PageResult<>();
		result.setMessage(message);
		result.setCode(code);
		return result;
	}
}
