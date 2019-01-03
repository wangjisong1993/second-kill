package com.eric.seckill.dao;

import com.eric.seckill.common.bean.SkProject;
import com.eric.seckill.utils.SuperMapper;

import java.util.List;

/**
 * @author wang.js
 * @date 2019/1/3
 * @copyright yougou.com
 */
public interface SkProjectMapper extends SuperMapper<SkProject> {

	/**
	 * 列出所有的商品id
	 *
	 * @return
	 */
	List<String> listAllGoodsId();
}
