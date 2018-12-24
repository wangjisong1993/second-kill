package com.eric.seckill.cache.utils;

import org.hibernate.validator.HibernateValidator;

import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;
import java.util.Set;

/**
 * @author wang.js
 * @date 2018/12/24
 * @copyright yougou.com
 */
public class ValidationUtils {

	private ValidationUtils() {
	}

	/**
	 * 使用hibernate的注解来进行验证
	 *
	 */
	private static Validator validator = Validation
			.byProvider(HibernateValidator.class).configure().failFast(true).buildValidatorFactory().getValidator();

	/**
	 * 功能描述: <br>
	 * 〈注解验证参数〉
	 *
	 * @param obj
	 * @see [相关类/方法](可选)
	 * @since [产品/模块版本](可选)
	 */
	public static <T> void validate(T obj) {
		Set<ConstraintViolation<T>> constraintViolations = validator.validate(obj);
		// 抛出检验异常
		if (constraintViolations.size() > 0) {
			throw new RuntimeException(String.format("参数校验失败:%s", constraintViolations.iterator().next().getMessage()));
		}
	}

}
