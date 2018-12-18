package com.eric.seckill.service.base;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.seckill.cache.anno.LogDetail;
import com.eric.seckill.cache.anno.MethodCache;
import com.eric.seckill.common.bean.SkUser;
import com.eric.seckill.dao.SkUserMapper;
import com.eric.seckill.service.SkUserService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author wang.js
 * @date 2018/12/17
 * @copyright yougou.com
 */
@Service
public class SkUserServiceImpl extends ServiceImpl<SkUserMapper, SkUser> implements SkUserService {

	/**
	 * 获取所有的用户信息
	 *
	 * @return
	 */
	@MethodCache
	@LogDetail
	@Override
	public List<SkUser> listAll() {
		return baseMapper.selectList(null);
	}

	@LogDetail
	@Override
	public SkUser findOne(String id) {
		return getById(id);
	}

	@MethodCache
	@LogDetail
	@Override
	public List<SkUser> listByCondition(String id, String nickname) {
		QueryWrapper<SkUser> wrapper = new QueryWrapper<>();
		if (StringUtils.isNotBlank(id)) {
			wrapper.eq("id", id);
		}
		if (StringUtils.isNotBlank(nickname)) {
			wrapper.eq("nickname", nickname);
		}
		return list(wrapper);
	}
}
