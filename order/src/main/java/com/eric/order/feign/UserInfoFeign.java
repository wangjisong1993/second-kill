package com.eric.order.feign;

import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.ChangePointRequest;
import org.springframework.cloud.netflix.feign.FeignClient;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 用户
 *
 * @author wang.js on 2019/1/24.
 * @version 1.0
 */
@FeignClient(name = "MEMBER", fallback = UserInfoFeignFallback.class)
public interface UserInfoFeign {

	/**
	 * 积分变动
	 *
	 * @return
	 */
	@RequestMapping(value = "/api/userInfo/changePoint", method = RequestMethod.POST, produces = "application/json; charset=UTF-8")
	CommonResult<Void> changePoint(@RequestBody ChangePointRequest request);
}
