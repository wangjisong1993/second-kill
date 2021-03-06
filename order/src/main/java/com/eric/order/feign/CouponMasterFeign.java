package com.eric.order.feign;

import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.ConsumeCouponRequest;
import com.eric.seckill.common.model.feign.CouponQueryRequest;
import com.eric.seckill.common.model.feign.CouponQueryResponse;
import com.eric.seckill.common.model.feign.UsingCouponRequest;
import org.springframework.cloud.netflix.feign.FeignClient;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * @author wang.js on 2019/1/25.
 * @version 1.0
 */
@FeignClient(name = "coupon", fallback = CouponMasterFeignFallback.class)
public interface CouponMasterFeign {

	/**
	 * 获取优惠券信息
	 *
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/couponMaster/find", method = RequestMethod.POST, produces = "application/json; charset=UTF-8")
	CommonResult<List<CouponQueryResponse>> findCoupon(@RequestBody CouponQueryRequest request);

	/**
	 * 标记优惠券状态为正在使用中
	 *
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/couponMaster/markAsUsing", method = RequestMethod.POST, produces = "application/json; charset=UTF-8")
	CommonResult<Void> markAsUsing(@RequestBody UsingCouponRequest request);

	/**
	 * 标记优惠券为已使用
	 *
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/couponMaster/consume", method = RequestMethod.POST, produces = "application/json; charset=UTF-8")
	CommonResult<Void> consume(@RequestBody ConsumeCouponRequest request);
}
