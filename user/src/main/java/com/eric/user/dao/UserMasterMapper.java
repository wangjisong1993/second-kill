package com.eric.user.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.eric.user.bean.UserMaster;
import org.apache.ibatis.annotations.Param;

/**
 * @author wang.js on 2019/1/16.
 * @version 1.0
 */
public interface UserMasterMapper extends BaseMapper<UserMaster> {

	/**
	 * 根据登录名找登陆密码
	 *
	 * @param loginName
	 * @return
	 */
	UserMaster findPasswordByLoginName(@Param("loginName") String loginName);

	/**
	 * 根据登陆名获取用户id
	 *
	 * @param loginName
	 * @return
	 */
	String findUserIdByLoginName(@Param("loginName") String loginName);

	/**
	 * 根据用户id获取用户状态
	 *
	 * @param userId
	 * @return
	 */
	String findUserStatsByUserId(@Param("userId") String userId);

	/**
	 * 根据登陆名获取用户的状态
	 *
	 * @param loginName
	 * @return
	 */
	String findUserStatsByLoginName(@Param("loginName") String loginName);
}