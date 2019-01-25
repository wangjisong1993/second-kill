package com.eric.coupon.service.base;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.coupon.bean.CouponTemplate;
import com.eric.coupon.dao.CouponTemplateMapper;
import com.eric.coupon.service.CouponTemplateService;
import com.eric.seckill.cache.anno.MethodCache;
import org.springframework.stereotype.Service;

/**
 * 优惠券模板
 *
 * @author wang.js on 2019/1/25.
 * @version 1.0
 */
@Service
public class CouponTemplateServiceImpl extends ServiceImpl<CouponTemplateMapper, CouponTemplate> implements CouponTemplateService {

	@Override
	@MethodCache
	public CouponTemplate findCouponTemplateById(String couponTemplateId) {
		return baseMapper.selectOne(new QueryWrapper<CouponTemplate>().eq("template_id", couponTemplateId));
	}
}
