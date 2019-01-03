package com.eric.seckill.service.base;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.seckill.cache.anno.MethodCache;
import com.eric.seckill.common.bean.SkProject;
import com.eric.seckill.common.exception.CustomException;
import com.eric.seckill.dao.SkProjectMapper;
import com.eric.seckill.service.SkProjectService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author wang.js
 * @date 2019/1/3
 * @copyright yougou.com
 */
@Service
public class SkProjectServiceImpl extends ServiceImpl<SkProjectMapper, SkProject> implements SkProjectService {

	@Override
	@MethodCache
	public SkProject findProjectById(String id) {
		QueryWrapper<SkProject> wrapper = new QueryWrapper<>();
		wrapper.eq("project_id", id).eq("is_active", "1");
		List<SkProject> skProjects = baseMapper.selectList(wrapper);
		if (skProjects == null || skProjects.size() == 0 || skProjects.size() > 1) {
			throw new CustomException("秒杀项目配置不正确");
		}
		return skProjects.get(0);
	}

	@Override
	public SkProject checkCanJoin(String projectId) {
		if (StringUtils.isBlank(projectId)) {
			throw new CustomException("项目id为空");
		}
		SkProject project = findProjectById(projectId);
		if (project == null) {
			throw new CustomException("秒杀项目不存在");
		}
		long startTime = project.getStartTime().getTime();
		long endTime = project.getEndTime().getTime();
		long currentTime = System.currentTimeMillis();
		if (currentTime < startTime || currentTime > endTime) {
			throw new CustomException("秒杀项目未开始或已结束");
		}
		return project;
	}

	@Override
	public List<String> listAllGoodsId() {
		return baseMapper.listAllGoodsId();
	}
}
