package com.eric.seckill.cache.aspect;

import com.eric.seckill.cache.anno.DisLock;
import com.eric.seckill.cache.parser.CacheKeyParser;
import com.eric.seckill.cache.utils.DisLockUtil;
import com.eric.seckill.common.constant.ErrorCodeEnum;
import com.eric.seckill.common.exception.CustomException;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.concurrent.TimeUnit;

/**
 * 处理@DisLock注解的切面
 *
 * @author wang.js on 2019/1/29.
 * @version 1.0
 */
@Aspect
@Order(value = 1)
@Component
public class DisLockAspect {

	@Resource
	private DisLockUtil disLockUtil;

	private static final int MIN_EXPIRE_TIME = 3;

	@Around(value = "@annotation(disLock)")
	public Object execute(ProceedingJoinPoint proceedingJoinPoint, DisLock disLock) throws Throwable {
		int expireTIme = disLock.expireTime() < MIN_EXPIRE_TIME ? MIN_EXPIRE_TIME : disLock.expireTime();
		String disKey = CacheKeyParser.parse(proceedingJoinPoint, disLock.key(), disLock.biz());
		boolean lock = disLockUtil.lock(disKey, expireTIme);
		int count = 1;
		while (!lock && count < MIN_EXPIRE_TIME) {
			lock = disLockUtil.lock(disKey, expireTIme);
			count++;
			TimeUnit.SECONDS.sleep(1);
		}
		Object proceed;
		if (lock) {
			// 允许查询
			try {
				proceed = proceedingJoinPoint.proceed();
			} finally {
				// 删除分布式锁
				disLockUtil.unlock(disKey, false);
			}
		} else {
			throw new CustomException(ErrorCodeEnum.DUPLICATE_REQUEST.getMessage());
		}
		return proceed;
	}

}
