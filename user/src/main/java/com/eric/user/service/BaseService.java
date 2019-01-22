package com.eric.user.service;

import com.eric.user.bean.BaseProperty;
import com.eric.user.constant.UserConstant;

import java.util.Date;

/**
 * @author wang.js on 2019/1/22.
 * @version 1.0
 */
public interface BaseService {

	/**
	 * 初始化创建时间, 更新时间
	 * @param baseProperty
	 */
	default void initCreateTime(BaseProperty baseProperty) {
		baseProperty.setCreateTime(new Date());
		baseProperty.setUpdateTime(baseProperty.getCreateTime());
		baseProperty.setCreateUserId(UserConstant.DEFAULT_USER_ID);
		baseProperty.setUpdateUserId(UserConstant.DEFAULT_USER_ID);
	}

}
