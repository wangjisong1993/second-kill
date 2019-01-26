package com.eric.base.data.service.base;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.base.data.bean.SysDict;
import com.eric.base.data.constant.DictErrorCodeEnum;
import com.eric.base.data.constant.DictStatusEnum;
import com.eric.base.data.dao.SysDictMapper;
import com.eric.base.data.model.DisableDictRequest;
import com.eric.base.data.model.SaveSysDictRequest;
import com.eric.base.data.service.SysDictService;
import com.eric.seckill.cache.anno.MethodCache;
import com.eric.seckill.cache.anno.ParamCheck;
import com.eric.seckill.common.constant.ErrorCodeEnum;
import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.DictQueryRequest;
import org.apache.commons.lang3.StringUtils;
import org.dozer.DozerBeanMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * @author Eric on 2019/1/26.
 * @version 1.0
 */
@Service
public class SysDictServiceImpl extends ServiceImpl<SysDictMapper, SysDict> implements SysDictService {

	@Resource
	private DozerBeanMapper dozerBeanMapper;

	@Override
	@ParamCheck
	public CommonResult<Void> saveSysDict(SaveSysDictRequest request) {
		// 根据dataType和dataCode判断是否已经存在
		Integer count = baseMapper.selectCount(new QueryWrapper<SysDict>().eq("data_type", request.getDataType())
				.eq("data_code", request.getDataCode()));
		if (count != null && count > 0) {
			return CommonResult.fail(ErrorCodeEnum.DUPLICATE.getMessage(), ErrorCodeEnum.DUPLICATE.getErrCode());
		}
		SysDict entity = new SysDict();
		dozerBeanMapper.map(request, entity);
		entity.setCreateTime(new Date()).setCreateUserId(request.getUserId()).setUpdateTime(new Date())
				.setUpdateUserId(request.getUserId()).setId(UUID.randomUUID().toString())
				.setPid("0").setStatus(DictStatusEnum.NORMAL.getStatusCode()).setDataType(entity.getDataType().toUpperCase());
		boolean save = save(entity);
		if (save) {
			return CommonResult.success(null, ErrorCodeEnum.SAVE_SUCCESS.getMessage());
		}
		return CommonResult.fail(ErrorCodeEnum.SAVE_ERROR.getMessage(), ErrorCodeEnum.SAVE_ERROR.getErrCode());
	}

	@Override
	@MethodCache
	public CommonResult<String> findDataValueByDataCode(String dataCode, String dataType) {
		String dataValue = findDictValue(dataCode, dataType);
		if (StringUtils.isBlank(dataValue)) {
			return CommonResult.fail(DictErrorCodeEnum.DICT_NOT_FOUND.getMessage(), DictErrorCodeEnum.DICT_NOT_FOUND.getErrCode());
		}
		return CommonResult.success(dataValue, null);
	}

	/**
	 * 根据字典类型和字典编码获取字典值
	 *
	 * @param dataCode
	 * @param dataType
	 * @return
	 */
	private String findDictValue(String dataCode, String dataType) {
		return this.baseMapper.findDataValueByDataCode(dataCode, dataType);
	}

	@Override
	@ParamCheck
	public CommonResult<Void> disableDict(DisableDictRequest request) {
		return changeDictStatus(request, DictStatusEnum.ABNORMAL.getStatusCode());
	}

	/**
	 * 改变字典状态
	 *
	 * @param request
	 * @param status
	 * @return
	 */
	private CommonResult<Void> changeDictStatus(DisableDictRequest request, String status) {
		SysDict entity = new SysDict().setUpdateTime(new Date()).setUpdateUserId(request.getUserId())
				.setStatus(status);
		boolean update = update(entity, new QueryWrapper<SysDict>().eq("data_type", request.getDataType())
				.eq("data_code", request.getDataCode()));
		if (update) {
			return CommonResult.success(null, ErrorCodeEnum.UPDATE_SUCCESS.getMessage());
		}
		return CommonResult.fail(ErrorCodeEnum.UPDATE_FAIL.getMessage(), ErrorCodeEnum.UPDATE_FAIL.getErrCode());
	}

	@Override
	public CommonResult<Void> enableDict(DisableDictRequest request) {
		return changeDictStatus(request, DictStatusEnum.NORMAL.getStatusCode());
	}

	@Override
	@ParamCheck
	@MethodCache
	public CommonResult<List<DictQueryRequest>> findDataValueByDataCode(List<DictQueryRequest> requests) {
		for (DictQueryRequest request : requests) {
			request.setDataValue(findDictValue(request.getDataCode(), request.getDataType()));
		}
		return CommonResult.success(requests, null);
	}

}
