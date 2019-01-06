package com.eric.lottery.mapper.test;

import com.baomidou.dynamic.datasource.annotation.DS;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.eric.seckill.common.bean.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author Eric on 2019/1/6.
 * @version 1.0
 */
@DS("slave")
public interface UserMapper extends BaseMapper<User> {

	/**
	 * 根据用户名列出所有的用户
	 *
	 * @param userName
	 * @return
	 */
	List<User> listUserByUserName(@Param("userName") String userName);
}
