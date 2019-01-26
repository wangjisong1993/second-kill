package com.eric.base.data.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.eric.base.data.bean.SysDict;
import org.apache.ibatis.annotations.Param;

/**
 * @author Eric on 2019/1/26.
 * @version 1.0
 */
public interface SysDictMapper extends BaseMapper<SysDict> {

	/**
	 * 根据数据类型和数据编码获取字典值
	 *
	 * @param dataCode
	 * @param dataType
	 * @return
	 */
	String findDataValueByDataCode(@Param("dataCode") String dataCode, @Param("dataType") String dataType);

}
