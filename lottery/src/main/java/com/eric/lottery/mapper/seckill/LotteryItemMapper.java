package com.eric.lottery.mapper.seckill;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.eric.seckill.common.bean.LotteryItem;

import java.util.List;

/**
 * @author Eric on 2019/1/6.
 * @version 1.0
 */
public interface LotteryItemMapper extends BaseMapper<LotteryItem> {

	/**
	 * 列出所有的抽奖活动id
	 * @return List
	 */
	List<String> listAllProjectId();
}
