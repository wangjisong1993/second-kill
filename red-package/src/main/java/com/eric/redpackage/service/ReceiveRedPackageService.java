package com.eric.redpackage.service;

import com.eric.redpackage.model.ReceiveRedPackageRequest;
import com.eric.seckill.common.model.CommonResult;

/**
 * 抢红包
 *
 * @author wang.js on 2019/2/13.
 * @version 1.0
 */
public interface ReceiveRedPackageService {

	/**
	 * 抢红包
	 *
	 * @param request
	 * @return
	 */
	CommonResult<Integer> receive(ReceiveRedPackageRequest request);
}
