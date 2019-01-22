package com.eric.user;

import com.eric.user.bean.UserActionLog;
import com.eric.user.model.RegisterUserRequest;
import com.eric.user.service.UserActionLogService;
import com.eric.user.service.UserMasterService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.annotation.Resource;
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
