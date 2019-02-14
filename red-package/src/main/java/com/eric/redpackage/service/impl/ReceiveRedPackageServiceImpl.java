package com.eric.redpackage.service.impl;

import com.eric.redpackage.bean.RedPackageMaster;
import com.eric.redpackage.bean.RedPackageReceiveLog;
import com.eric.redpackage.constant.RedPackageErrorCodeEnum;
import com.eric.redpackage.constant.RedPackageKeyConstant;
import com.eric.redpackage.constant.RedPackageType;
import com.eric.redpackage.model.ReceiveRedPackageRequest;
import com.eric.redpackage.service.ReceiveRedPackageService;
import com.eric.redpackage.service.RedPackageMasterService;
import com.eric.redpackage.service.RedPackageReceiveLogService;
import com.eric.seckill.cache.anno.DisLock;
import com.eric.seckill.cache.anno.ParamCheck;
import com.eric.seckill.cache.constant.CommonBizConstant;
import com.eric.seckill.common.exception.CustomException;
import com.eric.seckill.common.model.CommonResult;
import org.apache.commons.lang3.RandomUtils;
import org.springframework.stereotype.Service;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

import javax.annotation.Resource;
import java.math.BigDecimal;
import java.util.Date;
import java.util.UUID;

/**
 * 抢红包
 *
 * @author wang.js on 2019/2/13.
 * @version 1.0
 */
@Service
public class ReceiveRedPackageServiceImpl implements ReceiveRedPackageService {

	@Resource
	private RedPackageMasterService redPackageMasterService;

	@Resource
	private RedPackageReceiveLogService redPackageReceiveLogService;

	@Resource
	private JedisPool jedisPool;

	@ParamCheck
	@DisLock(key = "#request.receiver", biz = CommonBizConstant.RECEIVE_RED_PACKAGE)
	@Override
	public CommonResult<Integer> receive(ReceiveRedPackageRequest request) {
		RedPackageMaster redPackageMaster = redPackageMasterService.findRedPackageById(request.getRedPackageId());
		if (redPackageMaster == null) {
			return CommonResult.fail(RedPackageErrorCodeEnum.RED_PACKAGE_NOT_EXIST.getMessage(), RedPackageErrorCodeEnum.RED_PACKAGE_NOT_EXIST.getErrCode());
		}
		// 判断红包是否过期
		if (System.currentTimeMillis() > redPackageMaster.getExpireTime().getTime()) {
			return CommonResult.fail(RedPackageErrorCodeEnum.RED_PACKAGE_EXPIRE.getMessage(), RedPackageErrorCodeEnum.RED_PACKAGE_EXPIRE.getErrCode());
		}
		// 判断是否抢到过红包
		checkReceiveLog(request);
		// 判断红包个数是否有剩余
		Long decr;
		try (Jedis jedis = jedisPool.getResource()) {
			decr = jedis.decr(RedPackageKeyConstant.RED_PACKAGE_KEY_NUM + request.getRedPackageId());
			if (decr < 0) {
				return CommonResult.fail(RedPackageErrorCodeEnum.RED_PACKAGE_FINISH.getMessage(), RedPackageErrorCodeEnum.RED_PACKAGE_FINISH.getErrCode());
			}
		}
		int receiveMoney;
		if (RedPackageType.FIX_MONEY.getTypeCode().equals(redPackageMaster.getRedPackageType())) {
			// 定额红包, 直接显示抢到
			receiveMoney = redPackageMaster.getRedPackageMoney();
		} else {
			// 拼手气
			try (Jedis jedis = jedisPool.getResource()) {
				// 剩余红包金额
				int leftMoney = Integer.parseInt(jedis.get(RedPackageKeyConstant.RED_PACKAGE_KEY_MONEY + request.getRedPackageId()));
				if (decr == 0) {
					// 说明是最后一个红包
					receiveMoney = leftMoney;
				} else {
					// 还有剩余
					// 分配金额按照两倍均值算法, 每次抢到的金额 = 随机区间 (0, M/N *2)
					int upMoney = new BigDecimal(leftMoney).divide(new BigDecimal(decr + 1), BigDecimal.ROUND_HALF_UP).multiply(new BigDecimal(2)).subtract(new BigDecimal(decr)).setScale(8, BigDecimal.ROUND_HALF_UP).intValue();
					receiveMoney = RandomUtils.nextInt(1, upMoney);
					jedis.decrBy(RedPackageKeyConstant.RED_PACKAGE_KEY_MONEY + request.getRedPackageId(), receiveMoney);
				}
			}
		}
		// 保存抢红包记录
		RedPackageReceiveLog log = new RedPackageReceiveLog().setLogId(UUID.randomUUID().toString()).setCreateTime(new Date())
				.setReceiveMoney(receiveMoney).setReceiverId(request.getReceiver()).setReceiveTime(new Date())
				.setRedPackageId(request.getRedPackageId()).setUpdateTime(new Date());
		redPackageReceiveLogService.saveReceiveLog(log);
		return CommonResult.success(receiveMoney, RedPackageErrorCodeEnum.RED_PACKAGE_RECEIVE_SUCCESS.getMessage());
	}

	/**
	 * 判断是否有抢红包的记录
	 *
	 * @param request
	 */
	private void checkReceiveLog(ReceiveRedPackageRequest request) {
		int count = redPackageReceiveLogService.countByPackageIdAndReceiveId(request.getRedPackageId(), request.getReceiver());
		if (count > 0) {
			throw new CustomException(RedPackageErrorCodeEnum.DUPLICATE_RECEIVE.getMessage());
		}
	}

}
