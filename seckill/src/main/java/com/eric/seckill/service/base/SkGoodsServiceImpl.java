package com.eric.seckill.service.base;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.seckill.cache.anno.ParamCheck;
import com.eric.seckill.common.bean.SkGoods;
import com.eric.seckill.dao.SkGoodsMapper;
import com.eric.seckill.service.SkGoodsService;
import org.springframework.stereotype.Service;

/**
 * @author wang.js
 * @date 2018/12/17
 * @copyright yougou.com
 */
@Service
public class SkGoodsServiceImpl extends ServiceImpl<SkGoodsMapper, SkGoods> implements SkGoodsService {

	@Override
	@ParamCheck
	public SkGoods findSkGoodsById(SkGoods skGoods) {
		return baseMapper.selectById(skGoods.getId());
	}
}
