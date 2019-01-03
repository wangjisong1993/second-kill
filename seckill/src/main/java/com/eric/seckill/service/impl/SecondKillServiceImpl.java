package com.eric.seckill.service.impl;

import com.eric.seckill.common.bean.SkProject;
import com.eric.seckill.common.constant.ErrorCodeEnum;
import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.service.SecondKillService;
import com.eric.seckill.service.SkGoodsSeckillService;
import com.eric.seckill.service.SkProjectService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * 秒杀的业务操作
 *
 * @author wang.js
 * @date 2019/1/3
 * @copyright yougou.com
 */
@Service
public class SecondKillServiceImpl implements SecondKillService {

	@Resource
	private SkProjectService skProjectService;

	@Resource
	private SkGoodsSeckillService skGoodsSeckillService;

	@Override
	public CommonResult<Void> join(String projectId, String userId) {
		// 判断秒杀项目是否已经开始
		SkProject skProject = skProjectService.checkCanJoin(projectId);
		// 根据项目id获取秒杀的库存
		long seckill = skGoodsSeckillService.seckill(skProject.getGoodsId());
		if (seckill >= 0) {
			return CommonResult.success(null);
		}
		return CommonResult.fail("秒杀已结束", ErrorCodeEnum.SECKILL_END.getErrCode());
	}
}
