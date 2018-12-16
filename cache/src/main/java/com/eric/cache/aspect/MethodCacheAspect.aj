package com.eric.cache.aspect;

import com.eric.cache.anno.MethodCache;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

import java.lang.reflect.Method;

/**
 * 用于处理@MethodCache的切面
 *
 * @author Eric on 2018/12/16.
 * @version 1.0
 */
@Aspect
@Order(value = 1)
@Component
public aspect MethodCacheAspect {

	/**
	 * 切面具体的操作
	 *
	 * @param proceedingJoinPoint
	 * @param methodCache
	 * @return
	 * @throws Throwable
	 */
	@Around("@annotation(methodCache)")
	public Object execute(ProceedingJoinPoint proceedingJoinPoint, MethodCache methodCache) throws Throwable {
		MethodSignature methodSignature = (MethodSignature) proceedingJoinPoint.getSignature();
		Method method = methodSignature.getMethod();
		// 根据方法获取相应的key
		String key = getSignature(method);

		Object proceed = proceedingJoinPoint.proceed();

		return proceed;
	}

	/**
	 * 生成方法签名, 返回值是:   返回值类型#方法名称:参数类型列表, 参数之间用, 分隔
	 * @param method
	 * @return
	 */
	private String getSignature(Method method) {
		StringBuilder sb = new StringBuilder();
		Class<?> returnType = method.getReturnType();
		if (returnType != null) {
			sb.append(returnType.getName()).append('#');
		}
		sb.append(method.getName());
		Class<?>[] parameters = method.getParameterTypes();
		for (int i = 0; i < parameters.length; i++) {
			if (i == 0) {
				sb.append(':');
			} else {
				sb.append(',');
			}
			sb.append(parameters[i].getName());
		}
		return sb.toString();
	}

}
