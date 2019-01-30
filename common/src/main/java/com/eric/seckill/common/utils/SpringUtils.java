package com.eric.seckill.common.utils;

import org.springframework.beans.BeansException;
import org.springframework.beans.factory.NoSuchBeanDefinitionException;
import org.springframework.beans.factory.config.ConfigurableListableBeanFactory;

import java.lang.annotation.Annotation;
import java.util.Map;

/**
 * @author wang.js on 2019/1/30.
 * @version 1.0
 */
public class SpringUtils {

	private static ConfigurableListableBeanFactory beanFactory;

	public SpringUtils() {
	}

	public void postProcessBeanFactory(ConfigurableListableBeanFactory beanFactory) throws BeansException {
		beanFactory = beanFactory;
	}

	public static <T> T getBean(String name) throws BeansException {
		return (T) beanFactory.getBean(name);
	}

	public static <T> T getBean(Class<T> clz) throws BeansException {
		T result = beanFactory.getBean(clz);
		return result;
	}

	public static boolean containsBean(String name) {
		return beanFactory.containsBean(name);
	}

	public static boolean isSingleton(String name) throws NoSuchBeanDefinitionException {
		return beanFactory.isSingleton(name);
	}

	public static Class<?> getType(String name) throws NoSuchBeanDefinitionException {
		return beanFactory.getType(name);
	}

	public static String[] getAliases(String name) throws NoSuchBeanDefinitionException {
		return beanFactory.getAliases(name);
	}

	public static Map<String, Object> getBeansWithAnnotation(Class<? extends Annotation> annotationType) {
		return beanFactory.getBeansWithAnnotation(annotationType);
	}

}
