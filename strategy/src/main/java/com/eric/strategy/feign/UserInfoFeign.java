package com.eric.strategy.feign;

import com.eric.seckill.common.model.CommonResult;
import org.springframework.cloud.netflix.feign.FeignClient;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * 用户
 *
 * @author wang.js on 2019/1/24.
 * @version 1.0
 */
@FeignClient(name = "MEMBER", fallback = UserInfoFeignFallback.class)
public interface UserInfoFeign {

	/**
	 * 根据用户id获取用户等级
	 *
	 * @param userId
	 * @return
	 */
	@RequestMapping(value = "/findUserLevelIdByUserId", method = RequestMethod.GET, produces = "application/json; charset=UTF-8")
	CommonResult<String> findUserLevelIdByUserId(@RequestParam("userId") String userId);
}
