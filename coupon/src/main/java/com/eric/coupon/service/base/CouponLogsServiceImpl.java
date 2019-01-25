package com.eric.coupon.service.base;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.coupon.bean.CouponLogs;
import com.eric.coupon.bean.CouponReceive;
import com.eric.coupon.constant.CouponStatusEnum;
import com.eric.coupon.dao.CouponLogsMapper;
import com.eric.coupon.service.CouponLogsService;
import com.eric.seckill.common.model.feign.UsingCouponRequest;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * @author wang.js on 2019/1/25.
 * @version 1.0
 */
@Service
public class CouponLogsServiceImpl extends ServiceImpl<CouponLogsMapper, CouponLogs> implements CouponLogsService {


	@Override
	public boolean insertBatch(List<CouponReceive> updateList, UsingCouponRequest request) {
		List<CouponLogs> logs = new ArrayList<>();
		for (CouponReceive couponReceive : updateList) {
			logs.add(new CouponLogs().setId(UUID.randomUUID().toString())
			.setCouponReceiveId(couponReceive.getId()).setCreateTime(new Date())
			.setUserId(request.getUserId()).setStatus(CouponStatusEnum.USING.getStatusCode()));
		}
		return saveBatch(logs);
	}

}
