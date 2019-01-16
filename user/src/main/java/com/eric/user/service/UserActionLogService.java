package com.eric.user.service;

import com.eric.user.bean.UserActionLog;

import java.util.List;

/**
 * @author Eric on 2019/1/16.
 * @version 1.0
 */
public interface UserActionLogService {

	/**
	 * 列出全部数据
	 * @return
	 */
	List<UserActionLog> listAll();
}
