package com.eric.coupon.service;

import com.eric.coupon.bean.CouponReceive;
import com.eric.seckill.common.model.feign.UsingCouponRequest;

import java.util.List;

/**
 * @author wang.js on 2019/1/25.
 * @version 1.0
 */
public interface CouponLogsService {

	/**
	 * 批量保存
	 *
	 * @param updateList
	 * @param request
	 * @return
	 */
	boolean insertBatch(List<CouponReceive> updateList, UsingCouponRequest request);
}
