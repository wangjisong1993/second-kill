package com.eric.seckill.service.base;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.seckill.cache.anno.LogDetail;
import com.eric.seckill.cache.anno.MethodCache;
import com.eric.seckill.common.bean.SkUser;
import com.eric.seckill.dao.seckill.SkUserMapper;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author wang.js
 * @date 2018/12/17
 * @copyright yougou.com
 */
@Service
public class SkUserService extends ServiceImpl<SkUserMapper, SkUser> {

	/**
	 * 获取所有的用户信息
	 *
	 * @return
	 */
	@MethodCache
	@LogDetail
	public List<SkUser> listAll() {
		return list(new QueryWrapper<SkUser>().eq("name", "张三"));
	}
}
