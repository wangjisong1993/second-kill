package com.eric.seckill.service.base;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.seckill.cache.anno.LogDetail;
import com.eric.seckill.cache.anno.MethodCache;
import com.eric.seckill.common.bean.SkUser;
import com.eric.seckill.dao.SkUserMapper;
import com.eric.seckill.service.SkUserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author wang.js
 * @date 2018/12/17
 * @copyright yougou.com
 */
@Service
public class SkUserServiceImpl extends ServiceImpl<SkUserMapper, SkUser> implements SkUserService {

	@Resource
	private SkUserMapper skUserMapper;

	/**
	 * 获取所有的用户信息
	 *
	 * @return
	 */
	@MethodCache
	@LogDetail
	@Override
	public List<SkUser> listAll() {
		return skUserMapper.selectList(null);
	}
}
