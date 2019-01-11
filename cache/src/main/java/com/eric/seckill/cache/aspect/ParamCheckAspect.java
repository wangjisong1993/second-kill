package com.eric.seckill.cache.aspect;

import com.eric.seckill.cache.anno.ParamCheck;
import com.eric.seckill.cache.utils.ValidationUtils;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

/**
 * 参数校验的切面
 *
 * @author wang.js
 * @date 2018/12/24
 * @copyright yougou.com
 */
@Aspect
@Order(value = 1)
@Component
public class ParamCheckAspect {

	/**
	 * 参数校验的切面
	 *
	 * @param proceedingJoinPoint 切面
	 * @param paramCheck 校验参数的注解
	 * @return Object
	 * @throws Throwable 异常
	 */
	@Around("@annotation(paramCheck)")
	public Object execute(ProceedingJoinPoint proceedingJoinPoint, ParamCheck paramCheck) throws Throwable {
		Object[] args = proceedingJoinPoint.getArgs();
		if (args != null) {
			for (Object arg : args) {
				ValidationUtils.validate(arg);
			}
		}
		// 参数校验通过
		return proceedingJoinPoint.proceed();
	}
}
