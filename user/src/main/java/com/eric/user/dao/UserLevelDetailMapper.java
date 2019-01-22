package com.eric.user.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.eric.user.bean.UserLevelDetail;

/**
 * @author wang.js on 2019/1/16.
 * @version 1.0
 */
public interface UserLevelDetailMapper extends BaseMapper<UserLevelDetail> {

	/**
	 * 获取最低的等级id
	 * @return
	 */
	String findBaseLevelId();
}