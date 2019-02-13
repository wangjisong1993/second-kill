package com.eric.seckill.cache.aspect;

import com.alibaba.fastjson.JSON;
import com.eric.seckill.cache.anno.LogDetail;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.reflect.MethodSignature;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

import java.lang.reflect.Method;

/**
 * 详细的日志打印的切面
 *
 * @author Eric on 2018/8/13.
 * @version 1.0
 */
@Aspect
@Order(value = 2)
@Component
public class LogDetailAspect {

	private static final Logger LOGGER = LoggerFactory.getLogger(LogDetailAspect.class);

	@Around(value = "@annotation(logDetail)")
	public Object execute(ProceedingJoinPoint proceedingJoinPoint, LogDetail logDetail) throws Throwable {
		Method method = getMethod(proceedingJoinPoint);
		Class<?> targetClass = method.getDeclaringClass();
		StringBuilder classAndMethod = new StringBuilder();
		classAndMethod.append(targetClass.getSimpleName()).append("#").append(method.getName());
		//拼凑目标类名和参数名
		String params = JSON.toJSONString(proceedingJoinPoint.getArgs());
		long startTime = System.currentTimeMillis();
		Object proceed;
		try {
			proceed = proceedingJoinPoint.proceed();
		} finally {
			long timeCost = System.currentTimeMillis() - startTime;
			if (timeCost > logDetail.limitTime()) {
				LOGGER.error("方法{}处理耗时:{}", method.getName(), timeCost);
			}
		}


		LOGGER.info("开始调用--> {} 参数:{}", classAndMethod, params);
		String result = JSON.toJSONString(proceed);
		LOGGER.info("调用结束<-- {} 返回值:{}", classAndMethod, result);
		return proceed;
	}

	/**
	 * 获取被拦截的方法对象
	 *
	 * @param joinPoint 切面
	 * @return Method
	 */
	private Method getMethod(JoinPoint joinPoint) {
		MethodSignature methodSignature = (MethodSignature) joinPoint.getSignature();
		return methodSignature.getMethod();
	}

}
