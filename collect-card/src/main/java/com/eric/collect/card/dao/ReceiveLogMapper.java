package com.eric.collect.card.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.eric.collect.card.bean.ReceiveLog;
import org.apache.ibatis.annotations.Param;

/**
 * @author Eric on 2019/1/28.
 * @version 1.0
 */
public interface ReceiveLogMapper extends BaseMapper<ReceiveLog> {

	/**
	 * 根据用户id进行计数
	 *
	 * @param userId
	 * @return
	 */
	Integer countByUserId(@Param("userId") String userId);
}
