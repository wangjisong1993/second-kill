package com.eric.coupon.service.base;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.coupon.bean.CouponTemplate;
import com.eric.coupon.constant.CouponStatusEnum;
import com.eric.coupon.dao.CouponTemplateMapper;
import com.eric.coupon.model.TemplateAddRequest;
import com.eric.coupon.service.CouponTemplateService;
import com.eric.seckill.cache.anno.MethodCache;
import com.eric.seckill.cache.anno.ParamCheck;
import com.eric.seckill.common.constant.ErrorCodeEnum;
import com.eric.seckill.common.exception.CustomException;
import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.utils.SignUtil;
import org.dozer.DozerBeanMapper;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Date;
import java.util.UUID;

/**
 * 优惠券模板
 *
 * @author wang.js on 2019/1/25.
 * @version 1.0
 */
@Service
public class CouponTemplateServiceImpl extends ServiceImpl<CouponTemplateMapper, CouponTemplate> implements CouponTemplateService {

	@Value("${coupon.receive.secret}")
	private String appSecret;

	@Resource
	private DozerBeanMapper dozerBeanMapper;

	@Override
	@MethodCache(saveEmptyResult = false)
	public CouponTemplate findCouponTemplateById(String couponTemplateId) {
		return baseMapper.selectOne(new QueryWrapper<CouponTemplate>().eq("template_id", couponTemplateId));
	}

	@Override
	@ParamCheck
	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
	public CommonResult<Void> add(TemplateAddRequest request) {
		// 校验签名
		boolean verify = SignUtil.verify(request, request.getSign(), appSecret);
		if (!verify) {
			throw new CustomException(ErrorCodeEnum.ERROR_SIGN.getMessage());
		}
		CouponTemplate t = new CouponTemplate();
		dozerBeanMapper.map(request, t);
		t.setTemplateId(UUID.randomUUID().toString()).setStatus(CouponStatusEnum.NORMAL.getStatusCode())
				.setCreateTime(new Date());
		boolean result = save(t);
		if (result) {
			return CommonResult.success(null, ErrorCodeEnum.SAVE_SUCCESS.getMessage());
		}
		return CommonResult.fail(ErrorCodeEnum.SAVE_ERROR.getMessage(), ErrorCodeEnum.SAVE_ERROR.getErrCode());
	}
}
