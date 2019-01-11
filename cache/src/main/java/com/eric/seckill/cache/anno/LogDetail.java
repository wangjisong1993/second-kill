package com.eric.seckill.cache.anno;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * 核心注解类
 * 加上可以打印日志
 * @author Eric on 2018/8/13.
 * @version 1.0
 */
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.METHOD)
public @interface LogDetail {

    /**
     * 限制时间, 默认是1000毫秒
     * @return long
     */
    long limitTime() default 1000;
}
