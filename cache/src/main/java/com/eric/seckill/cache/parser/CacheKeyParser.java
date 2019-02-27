package com.eric.seckill.cache.parser;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.reflect.CodeSignature;

import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;
import java.util.StringTokenizer;

/**
 * cache key 的解析器
 *
 * @author wang.js on 2019/2/27.
 * @version 1.0
 */
public class CacheKeyParser {

	/**
	 * 解析缓存的key
	 *
	 * @param proceedingJoinPoint 切面
	 * @param cacheKey 缓存的key
	 * @param biz 业务
	 * @return String
	 * @throws IllegalAccessException 异常
	 */
	public static String parse(ProceedingJoinPoint proceedingJoinPoint, String cacheKey, String biz) throws IllegalAccessException {
		// 解析实际参数的key
		String key = cacheKey.replace("#", "");
		StringTokenizer stringTokenizer = new StringTokenizer(key, ".");

		Map<String, Object> nameAndValue = getNameAndValue(proceedingJoinPoint);
		Object actualKey = null;

		while (stringTokenizer.hasMoreTokens()) {
			if (actualKey == null) {
				actualKey = nameAndValue.get(stringTokenizer.nextToken());
			} else {
				actualKey = getPropValue(actualKey, stringTokenizer.nextToken());
			}
		}

		return biz + actualKey;
	}

	/**
	 * 获取参数Map集合
	 *
	 * @param joinPoint 切面
	 * @return Map<String, Object>
	 */
	private static Map<String, Object> getNameAndValue(ProceedingJoinPoint joinPoint) {
		Object[] paramValues = joinPoint.getArgs();
		String[] paramNames = ((CodeSignature) joinPoint.getSignature()).getParameterNames();
		Map<String, Object> param = new HashMap<>(paramNames.length);

		for (int i = 0; i < paramNames.length; i++) {
			param.put(paramNames[i], paramValues[i]);
		}
		return param;
	}

	/**
	 * 获取指定参数名的参数值
	 *
	 * @param obj
	 * @param propName
	 * @return
	 * @throws IllegalAccessException
	 */
	public static Object getPropValue(Object obj, String propName) throws IllegalAccessException {
		Field[] fields = obj.getClass().getDeclaredFields();
		for (Field f : fields) {
			if (f.getName().equals(propName)) {
				//在反射时能访问私有变量
				f.setAccessible(true);
				return f.get(obj);
			}
		}
		return null;
	}

}
