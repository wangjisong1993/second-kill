package com.eric.seckill.service;

import com.eric.seckill.common.bean.SkUser;

import java.util.List;

/**
 * @author Eric on 2018/12/17.
 * @version 1.0
 */
public interface SkUserService {

	/**
	 * 列出所有的user
	 *
	 * @return
	 */
	List<SkUser> listAll();

	/**
	 * 根据id查询user
	 *
	 * @param id
	 * @return
	 */
	SkUser findOne(String id);

	/**
	 * 条件筛选
	 *
	 * @param id
	 * @param nickname
	 * @return
	 */
	List<SkUser> listByCondition(String id, String nickname);
}
