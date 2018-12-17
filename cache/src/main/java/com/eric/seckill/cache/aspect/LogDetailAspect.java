package com.eric.seckill.cache.aspect;

import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.serializer.SerializerFeature;
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
@Order(value = 1)
@Component
public class LogDetailAspect {

    public static final String DATE_FORMAT = "yyyy:MM:dd HH:mm:ss";

    private static final Logger LOGGER = LoggerFactory.getLogger(LogDetailAspect.class);

    @Around("@annotation(logDetail)")
    public Object execute(ProceedingJoinPoint proceedingJoinPoint, LogDetail logDetail) throws Throwable {
        Method method = getMethod(proceedingJoinPoint);
        Class<?> targetClass = method.getDeclaringClass();
        StringBuffer classAndMethod = new StringBuffer();

        long startTime = System.currentTimeMillis();
        Object proceed = proceedingJoinPoint.proceed();
        long timeCost = System.currentTimeMillis() - startTime;
        if (timeCost > logDetail.limitTime()) {
            LOGGER.error(method.getName() + "处理耗时:" + timeCost);
        }
        //拼凑目标类名和参数名
        String target = targetClass.getName() + "#" + method.getName();
        String params = JSONObject.toJSONStringWithDateFormat(proceedingJoinPoint.getArgs(), DATE_FORMAT, SerializerFeature.WriteMapNullValue);

        LOGGER.info("{} 开始调用--> {} 参数:{}", classAndMethod.toString(), target, params);

        LOGGER.info("{} 调用结束<-- {} 返回值:{}", classAndMethod.toString(), target, JSONObject.toJSONStringWithDateFormat(proceed, DATE_FORMAT, SerializerFeature.WriteMapNullValue));
        return proceed;
    }

    /**
     * 获取被拦截的方法对象
     *
     * @param joinPoint
     * @return
     * @throws Exception
     */
    protected Method getMethod(JoinPoint joinPoint) throws Exception {

        MethodSignature methodSignature = (MethodSignature) joinPoint.getSignature();

        Method method = methodSignature.getMethod();

        return method;
    }

}
