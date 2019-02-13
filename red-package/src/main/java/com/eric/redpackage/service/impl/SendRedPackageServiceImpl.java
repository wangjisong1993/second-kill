package com.eric.redpackage.service.impl;

import com.eric.redpackage.bean.RedPackageMaster;
import com.eric.redpackage.constant.RedPackageErrorCodeEnum;
import com.eric.redpackage.constant.RedPackageKeyConstant;
import com.eric.redpackage.constant.RedPackageType;
import com.eric.redpackage.model.SendRedPackageRequest;
import com.eric.redpackage.service.RedPackageMasterService;
import com.eric.redpackage.service.SendRedPackageService;
import com.eric.seckill.cache.anno.DisLock;
import com.eric.seckill.cache.anno.ParamCheck;
import com.eric.seckill.cache.constant.CommonBizConstant;
import com.eric.seckill.common.model.CommonResult;
import org.springframework.stereotype.Service;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

import javax.annotation.Resource;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.UUID;

/**
 * 发红包
 *
 * @author wang.js on 2019/2/13.
 * @version 1.0
 */
@Service
public class SendRedPackageServiceImpl implements SendRedPackageService {

	@Resource
	private RedPackageMasterService redPackageMasterService;

	@Resource
	private JedisPool jedisPool;

	@ParamCheck
	@DisLock(key = "#request.sender", biz = CommonBizConstant.SEND_RED_PACKAGE)
	@Override
	public CommonResult<String> send(SendRedPackageRequest request) {
		String redPackageId = UUID.randomUUID().toString();
		Date now = new Date();
		Calendar calendar = new GregorianCalendar();
		calendar.setTime(now);
		calendar.add(Calendar.DATE,+1);
		RedPackageMaster redPackage = new RedPackageMaster().setRedPackageId(redPackageId).setRedPackageMoney(request.getMoney())
				.setRedPackageNum(request.getNum()).setRedPackageType(request.getRedPackageType()).setCreateTime(now).setSenderId(request.getSender())
				.setUpdateTime(now).setExpireTime(calendar.getTime());
		boolean result = redPackageMasterService.saveRedPackage(redPackage);
		if (result) {
			// 设置红包个数的缓存
			try (Jedis jedis = jedisPool.getResource()) {
				jedis.setnx(RedPackageKeyConstant.RED_PACKAGE_KEY_NUM + redPackageId, String.valueOf(request.getNum()));
				jedis.expire(RedPackageKeyConstant.RED_PACKAGE_KEY_NUM + redPackageId, 60 * 60 * 24);
				if (RedPackageType.NOT_FIXED.getTypeCode().equals(request.getRedPackageType())) {
					jedis.setnx(RedPackageKeyConstant.RED_PACKAGE_KEY_MONEY + redPackageId, String.valueOf(request.getMoney()));
					jedis.expire(RedPackageKeyConstant.RED_PACKAGE_KEY_MONEY + redPackageId, 60 * 60 * 24);
				}
			}
			return CommonResult.success(redPackageId, RedPackageErrorCodeEnum.SEND_SUCCESS.getMessage());
		}
		return CommonResult.fail(RedPackageErrorCodeEnum.SEND_FAIL.getMessage(), RedPackageErrorCodeEnum.SEND_FAIL.getErrCode());
	}

}
