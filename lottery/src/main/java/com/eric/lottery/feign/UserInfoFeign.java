package com.eric.lottery.feign;

import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.ChangePointRequest;
import org.springframework.cloud.netflix.feign.FeignClient;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author wang.js on 2019/1/31.
 * @version 1.0
 */
@FeignClient(name = "MEMBER", fallback = UserInfoFeignFallback.class)
public interface UserInfoFeign {

	/**
	 * 获取用户信息
	 *
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/api/userInfo/changePoint", method = RequestMethod.POST, produces = "application/json; charset=UTF-8")
	CommonResult<Void> changePoint(@RequestBody ChangePointRequest request);


}
