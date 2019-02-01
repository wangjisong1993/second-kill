package com.eric.user.service;

import com.eric.user.bean.UserLevelDetail;

/**
 * @author wang.js on 2019/1/16.
 * @version 1.0
 */
public interface UserLevelDetailService {

	/**
	 * 获取基础等级
	 *
	 * @return
	 */
	String findBaseLevel();

	/**
	 * 根据用户等级获取等级详情
	 *
	 * @param userLevel
	 * @return
	 */
	UserLevelDetail findMinPointByUserLevelId(String userLevel);

	/**
	 * 根据用户当前的积分获取所属的等级
	 *
	 * @param lastPoint
	 * @return
	 */
	String findLevelDetailId(int lastPoint);
}
