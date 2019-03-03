package com.eric.seckill.cache.aspect;

import com.eric.seckill.cache.anno.ServiceLimit;
import com.google.common.util.concurrent.RateLimiter;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

/**
 * 限流切面
 *
 * @author Eric on 2019/2/20.
 * @version 1.0
 */
@Component
@Aspect
@Order(2)
public class ServiceLimitAspect {

	private static RateLimiter rateLimiter = RateLimiter.create(100);

	/**
	 * 限流切面
	 *
	 * @param proceedingJoinPoint qoe,oam
	 * @param serviceLimit        限流注解
	 * @return Object
	 * @throws Throwable
	 */
	@Around(value = "@annotation(serviceLimit)")
	public Object execute(ProceedingJoinPoint proceedingJoinPoint, ServiceLimit serviceLimit) throws Throwable {
		boolean result = rateLimiter.tryAcquire(serviceLimit.expireTimeSeconds());
		Object obj = null;
		if (result) {
			obj = proceedingJoinPoint.proceed();
		}
		return obj;
	}

}
