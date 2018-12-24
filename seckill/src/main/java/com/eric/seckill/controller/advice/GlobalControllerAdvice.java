package com.eric.seckill.controller.advice;

import com.eric.seckill.common.exception.CustomException;
import com.eric.seckill.common.model.BaseResult;
import com.eric.seckill.common.model.CommonResult;
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

	/**
	 * 用于处理所有的异常
	 *
	 * @param ex
	 * @return
	 */
	@ExceptionHandler(Exception.class)
	public BaseResult errorHandler(Exception ex) {
		return new CommonResult().setCode("500").setMessage(ex.getMessage()).setSuccess(false);
	}

	/**
	 * 自定义异常的处理
	 *
	 * @param customException
	 * @return
	 */
	@ExceptionHandler(CustomException.class)
	public BaseResult customExceptionHandler(CustomException customException) {
		return new CommonResult().setCode("500").setMessage(customException.getMessage()).setSuccess(false);
	}

}
