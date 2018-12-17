package com.eric.seckill.utils;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * 演示 mapper 父类，注意这个类不要让 mp 扫描到！！
 * @author Eric on 2018/10/28.
 * @version 1.0
 */
public interface SuperMapper<T> extends BaseMapper<T> {
}
