package com.eric.coupon.service.base;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.coupon.bean.CouponReceive;
import com.eric.coupon.bean.CouponTemplate;
import com.eric.coupon.constant.CouponStatusEnum;
import com.eric.coupon.dao.CouponReceiveMapper;
import com.eric.coupon.service.CouponReceiveService;
import com.eric.coupon.service.CouponTemplateService;
import com.eric.seckill.common.constant.ErrorCodeEnum;
import com.eric.seckill.common.exception.CustomException;
import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.CouponQueryResponse;
import org.dozer.DozerBeanMapper;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/**
 * @author wang.js on 2019/1/25.
 * @version 1.0
 */
@Service
public class CouponReceiveServiceImpl extends ServiceImpl<CouponReceiveMapper, CouponReceive> implements CouponReceiveService {

	@Resource
	private DozerBeanMapper dozerBeanMapper;

	@Resource
	private CouponTemplateService couponTemplateService;

	@Override
	public CommonResult<List<CouponQueryResponse>> findCoupons(List<String> couponSns) {
		if (CollectionUtils.isEmpty(couponSns)) {
			return CommonResult.fail(ErrorCodeEnum.EMPTY_PARAM.getMessage(), ErrorCodeEnum.EMPTY_PARAM.getErrCode());
		}
		Collection<CouponReceive> coupons = listByIds(couponSns);
		if (CollectionUtils.isEmpty(coupons)) {
			throw new CustomException(ErrorCodeEnum.SERVER_ERROR.getMessage());
		}
		// 明确list集合大小的情况下指定, 避免扩容
		List<CouponQueryResponse> responses = new ArrayList<>(coupons.size());
		for (CouponReceive coupon : coupons) {
			CouponQueryResponse response = new CouponQueryResponse();
			dozerBeanMapper.map(coupon, response);
			CouponTemplate template = couponTemplateService.findCouponTemplateById(coupon.getCouponTemplateId());
			if (template.getStartTime().getTime() > System.currentTimeMillis() || System.currentTimeMillis() > template.getEndTime().getTime()) {
				response.setCanUse(false).setErrorMsg("启用时间未开始");
			}
			checkCouponStatus(coupon, response);
			responses.add(response);
		}
		return CommonResult.success(responses, null);
	}

	@Override
	public boolean insertBatch(List<CouponReceive> couponReceives, Integer couponNum) {
		return saveBatch(couponReceives);
	}

	/**
	 * 校验优惠券的状态
	 *
	 * @param coupon
	 * @param response
	 */
	private void checkCouponStatus(CouponReceive coupon, CouponQueryResponse response) {
		if (CouponStatusEnum.NORMAL.getStatusCode().equals(coupon.getStatus())) {
			response.setCanUse(true).setErrorMsg("状态正常");
		} else {
			response.setCanUse(false).setErrorMsg("当前状态不可用:" + coupon.getStatus());
		}

	}
}
