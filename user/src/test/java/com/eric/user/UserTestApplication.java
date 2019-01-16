package com.eric.user;

import com.eric.user.bean.UserActionLog;
import com.eric.user.service.UserActionLogService;
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

	@Test
	public void t1() {
		List<UserActionLog> userActionLogs = userActionLogService.listAll();
	}


}
