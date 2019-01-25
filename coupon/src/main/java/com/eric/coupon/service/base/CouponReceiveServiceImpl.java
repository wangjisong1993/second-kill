package com.eric.coupon.service.base;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.coupon.bean.CouponReceive;
import com.eric.coupon.bean.CouponTemplate;
import com.eric.coupon.constant.CouponErrorCodeEnum;
import com.eric.coupon.constant.CouponStatusEnum;
import com.eric.coupon.dao.CouponReceiveMapper;
import com.eric.coupon.service.CouponReceiveService;
import com.eric.coupon.service.CouponTemplateService;
import com.eric.seckill.cache.anno.ParamCheck;
import com.eric.seckill.common.constant.ErrorCodeEnum;
import com.eric.seckill.common.exception.CustomException;
import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.CouponQueryResponse;
import com.eric.seckill.common.model.feign.UsingCouponRequest;
import com.eric.seckill.common.utils.SignUtil;
import org.apache.commons.collections.CollectionUtils;
import org.dozer.DozerBeanMapper;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

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

	@Value("${coupon.receive.secret}")
	private String appSecret;

	@Override
	public CommonResult<List<CouponQueryResponse>> findCoupons(List<String> couponSns) {
		if (CollectionUtils.isEmpty(couponSns)) {
			return CommonResult.fail(ErrorCodeEnum.EMPTY_PARAM.getMessage(), ErrorCodeEnum.EMPTY_PARAM.getErrCode());
		}
		Collection<CouponReceive> coupons = baseMapper.selectList(new QueryWrapper<CouponReceive>().in("coupon_sn", couponSns));
		if (CollectionUtils.isEmpty(coupons)) {
			return CommonResult.fail(ErrorCodeEnum.COUPON_NOT_FOUND.getMessage(), ErrorCodeEnum.COUPON_NOT_FOUND.getErrCode());
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

	@Override
	@ParamCheck
	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
	public CommonResult<List<Void>> markAsUsing(UsingCouponRequest request) {
		// 校验签名
		boolean verify = SignUtil.verify(request, request.getSign(), appSecret);
		if (!verify) {
			throw new CustomException(ErrorCodeEnum.ERROR_SIGN.getMessage());
		}
		// 根据用户id获取该用户所有可用的优惠券
		List<CouponReceive> couponReceives = baseMapper.selectList(new QueryWrapper<CouponReceive>().eq("user_id", request.getUserId())
				.eq("status", CouponStatusEnum.NORMAL.getStatusCode()));
		List<String> allCouponSns = couponReceives.stream().map(CouponReceive::getCouponSn).collect(Collectors.toList());
		List<String> copyCouponSns = new ArrayList<>(request.getCouponSns().size());
		dozerBeanMapper.map(copyCouponSns, allCouponSns);
		copyCouponSns.removeAll(allCouponSns);
		if (CollectionUtils.isNotEmpty(copyCouponSns)) {
			return CommonResult.fail(CouponErrorCodeEnum.INVALID_COUPON.getMessage(), CouponErrorCodeEnum.INVALID_COUPON.getErrCode());
		}
		List<CouponReceive> updateList = new ArrayList<>();
		for (String couponSn : request.getCouponSns()) {
			for (CouponReceive couponReceive : couponReceives) {
				if (couponSn.equals(couponReceive.getCouponSn())) {
					updateList.add(new CouponReceive().setId(couponReceive.getId())
					.setStatus(CouponStatusEnum.USING.getStatusCode()).setUpdateTime(new Date()));
					break;
				}
			}
		}
		boolean b = updateBatchById(updateList);
		if (b) {
			return CommonResult.success(null, ErrorCodeEnum.UPDATE_SUCCESS.getMessage());
		}
		throw new CustomException(CouponErrorCodeEnum.UPDATE_FAIL.getMessage());
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
