package com.eric.zuul.filter;

import com.alibaba.fastjson.JSON;
import com.auth0.jwt.JWT;
import com.auth0.jwt.JWTVerifier;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.exceptions.JWTDecodeException;
import com.auth0.jwt.exceptions.JWTVerificationException;
import com.eric.seckill.common.constant.ErrorCodeEnum;
import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.UserQueryRequest;
import com.eric.seckill.common.model.feign.UserQueryResponse;
import com.eric.zuul.feign.UserMasterFeign;
import com.netflix.zuul.ZuulFilter;
import com.netflix.zuul.context.RequestContext;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Value;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * @author wang.js on 2019/1/30.
 * @version 1.0
 */
//@Component
public class TokenFilter extends ZuulFilter {

	@Value("${token.exclude}")
	private String exclude;

	@Resource
	private UserMasterFeign userMasterFeign;

	@Override
	public String filterType() {
		return "pre";
	}

	@Override
	public int filterOrder() {
		return 0;
	}

	@Override
	public boolean shouldFilter() {
		return true;
	}

	@Override
	public Object run() {
		RequestContext ctx = RequestContext.getCurrentContext();
		HttpServletRequest request = ctx.getRequest();
		if (request.getRequestURI().endsWith(exclude)) {
			return null;
		}
		// 获取请求参数中的token
		String token = request.getHeader("token");
		// 执行认证
		if (StringUtils.isBlank(token)) {
			initErrorMsg(ctx, ErrorCodeEnum.NO_TOKEN);
			return null;
		}
		// 获取 token 中的 user_id
		String userId;
		try {
			userId = JWT.decode(token).getAudience().get(0);
		} catch (JWTDecodeException j) {
			initErrorMsg(ctx, ErrorCodeEnum.USER_NOT_FOUND);
			return null;
		}
		CommonResult<UserQueryResponse> result = userMasterFeign.findUserByUserIdOrLoginName(new UserQueryRequest().setUserId(userId));
		if (!result.isSuccess()) {
			initErrorMsg(ctx, ErrorCodeEnum.NO_TOKEN);
			return null;
		}
		// 验证 token
		JWTVerifier jwtVerifier = JWT.require(Algorithm.HMAC256(result.getData().getPassword())).build();
		try {
			jwtVerifier.verify(token);
		} catch (JWTVerificationException e) {
			initErrorMsg(ctx, ErrorCodeEnum.ERROR_TOKEN);
		}
		return null;
	}

	private void initErrorMsg(RequestContext ctx, ErrorCodeEnum errorCodeEnum) {
		ctx.setSendZuulResponse(false);
		ctx.setResponseStatusCode(Integer.parseInt(errorCodeEnum.getErrCode()));
		CommonResult<Object> fail = CommonResult.fail(errorCodeEnum.getMessage(), errorCodeEnum.getErrCode());
		ctx.setResponseBody(JSON.toJSONString(fail));
		ctx.getResponse().setContentType("application/json;charset=UTF-8");
	}
}
