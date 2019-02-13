package com.eric.redpackage.service;

import com.eric.redpackage.model.SendRedPackageRequest;
import com.eric.seckill.common.model.CommonResult;

/**
 * 发红包
 *
 * @author wang.js on 2019/2/13.
 * @version 1.0
 */
public interface SendRedPackageService {

	/**
	 * 发红包的请求
	 *
	 * @param request
	 * @return
	 */
	CommonResult<String> send(SendRedPackageRequest request);
}
