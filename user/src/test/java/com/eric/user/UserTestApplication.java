package com.eric.user;

import com.alibaba.fastjson.JSON;
import com.eric.seckill.common.constant.UserPointSourceEnum;
import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.utils.SignUtil;
import com.eric.user.bean.UserActionLog;
import com.eric.user.constant.BalanceSourceEnum;
import com.eric.user.model.*;
import com.eric.user.service.*;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * @author Eric on 2019/1/16.
 * @version 1.0
 */
@SpringBootTest
@RunWith(SpringRunner.class)
public class UserTestApplication {

	@Resource
	private UserActionLogService userActionLogService;

	@Resource
	private UserMasterService userMasterService;

	@Resource
	private UserAddressService userAddressService;

	@Resource
	private ChargeBalanceService chargeBalanceService;

	@Value("${user.charge.secret}")
	private String appSecret;

	@Resource
	private UserPointService userPointService;

	@Test
	public void t5() {
		UserPointChangeRequest request = new UserPointChangeRequest();
		String outTradeNo = "5";
		request.setChangePoint(-10).setCreateTime(new Date()).setOutTradeNo(outTradeNo)
				.setPointSource(UserPointSourceEnum.USER_CHARGE.getSourceType())
				.setUserId("f2414da0-9b78-4152-955f-049c398d3990");
		request.setSign(SignUtil.getSignForObject(request, appSecret, SignUtil.DEFAULT_EXCLUDE));
		CommonResult<UserPointChangeResponse> response = userPointService.changePoint(request);
		System.out.println(JSON.toJSONString(response));
	}

	@Test
	public void t4() {
		ChargeBalanceRequest request = new ChargeBalanceRequest();
		request.setChargeAmount(1000);
		request.setChargeUserId("f2414da0-9b78-4152-955f-049c398d3990");
		request.setCreateTime(new Date());
		request.setOutTradeNo("12345678912");
		request.setPayUserId("f2414da0-9b78-4152-955f-049c398d3990");
		request.setSource(BalanceSourceEnum.USER_CHARGE.getSourceType());
		request.setSign(SignUtil.getSignForObject(request, appSecret, SignUtil.DEFAULT_EXCLUDE));
		CommonResult<ChargeBalanceResponse> charge = chargeBalanceService.charge(request);
		System.out.println(JSON.toJSONString(charge));
	}

	@Test
	public void t3() {
		UserAddressModifyRequest request = null;
//		UserAddressModifyRequest request = new UserAddressModifyRequest();
//		request.setUserId("d629c855-d147-4701-b0e9-383b27bb5126");
//		request.setUpdateUserId("admin");
//		request.setAddress("深圳市");
		CommonResult<Void> voidCommonResult = userAddressService.updateUserAddress(request);
		System.out.println(voidCommonResult);
	}

	@Test
	public void t2() {
		RegisterUserRequest request = new RegisterUserRequest().setLoginName("大傻逼")
				.setPassword("123").setPhone("456");
		userMasterService.registerUser(request);
	}

	@Test
	public void t1() {
		List<UserActionLog> userActionLogs = userActionLogService.listAll();
	}


}
