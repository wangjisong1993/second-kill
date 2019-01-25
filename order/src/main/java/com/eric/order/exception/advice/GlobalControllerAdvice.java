package com.eric.order.exception.advice;

import com.eric.seckill.common.exception.CustomException;
import com.eric.seckill.common.model.BaseResult;
import com.eric.seckill.common.model.CommonResult;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

/**
 * 全局异常处理
 *
 * @author Eric on 2018/12/24.
 * @version 1.0
 */
@RestControllerAdvice
public class GlobalControllerAdvice {

	private static final Logger LOGGER = LoggerFactory.getLogger(GlobalControllerAdvice.class);

	/**
	 * 用于处理所有的异常
	 *
	 * @param ex 捕获的异常
	 * @return BaseResult
	 */
	@ExceptionHandler(Exception.class)
	public BaseResult errorHandler(Exception ex) {
		LOGGER.error("捕获到Exception异常, ", ex);
		return new CommonResult().setCode("500").setMessage(ex.getMessage()).setSuccess(false);
	}

	/**
	 * 自定义异常的处理
	 *
	 * @param customException 自定义异常
	 * @return BaseResult
	 */
	@ExceptionHandler(CustomException.class)
	public BaseResult customExceptionHandler(CustomException customException) {
		LOGGER.error("捕获到CustomException异常", customException);
		return new CommonResult().setCode("500").setMessage(customException.getMessage()).setSuccess(false);
	}

}
