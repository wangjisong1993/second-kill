package com.eric.base.data.service;

import com.eric.base.data.model.DisableDictRequest;
import com.eric.base.data.model.SaveSysDictRequest;
import com.eric.seckill.cache.anno.RedisCache;
import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.DictQueryRequest;

import java.util.List;

/**
 * @author Eric on 2019/1/26.
 * @version 1.0
 */
public interface SysDictService {

	/**
	 * 保存数据字典项
	 *
	 * @param request
	 * @return
	 */
	CommonResult<Void> saveSysDict(SaveSysDictRequest request);

	/**
	 * 查找字典值
	 *
	 * @param dataCode
	 * @param dataType
	 * @return
	 */
	CommonResult<String> findDataValueByDataCode(String dataCode, String dataType);

	/**
	 * 作废字典项
	 *
	 * @param request
	 * @return
	 */
	CommonResult<Void> disableDict(DisableDictRequest request);

	/**
	 * 启用字典项
	 *
	 * @param request
	 * @return
	 */
	CommonResult<Void> enableDict(DisableDictRequest request);

	/**
	 * 批量查询字典值
	 *
	 * @param requests
	 * @return
	 */
	CommonResult<List<DictQueryRequest>> findDataValueByDataCode(List<DictQueryRequest> requests);

	/**
	 * 测试rediscache注解
	 *
	 * @param id 传入的id
	 * @return String
	 */
	String testRedisCache(String id);
}
