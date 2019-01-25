package com.eric.coupon.service.base;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.coupon.bean.CouponLogs;
import com.eric.coupon.dao.CouponLogsMapper;
import com.eric.coupon.service.CouponLogsService;
import org.springframework.stereotype.Service;

/**
 * @author wang.js on 2019/1/25.
 * @version 1.0
 */
@Service
public class CouponLogsServiceImpl extends ServiceImpl<CouponLogsMapper, CouponLogs> implements CouponLogsService {
}
