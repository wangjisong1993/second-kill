package com.eric.seckill.service;

import com.eric.seckill.common.bean.SkProject;

import java.util.List;

/**
 * @author wang.js
 * @date 2019/1/3
 * @copyright yougou.com
 */
public interface SkProjectService {

	/**
	 * 根据id获取秒杀项目情况
	 * @param id
	 * @return
	 */
	SkProject findProjectById(String id);

	/**
	 * 判断秒杀项目是否已开始
	 *
	 * @param projectId
	 * @return
	 */
	SkProject checkCanJoin(String projectId);

	/**
	 * 获取所有参与秒杀的商品id
	 *
	 * @return
	 */
	List<String> listAllGoodsId();
}
