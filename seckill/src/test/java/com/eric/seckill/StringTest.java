package com.eric.seckill;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

/**
 * @author wang.js
 * @date 2019/1/7
 * @copyright yougou.com
 */
@SpringBootTest
@RunWith(SpringRunner.class)
public class StringTest {

	@Test
	public void t1() {
		String sql = "select * from table where t=? and s=?";
		String args = "ab(String), cd(String)";
		String[] split = sql.split("\\?");
		String[] split1 = args.split(",");
		StringBuilder sb = new StringBuilder();
		for (int i = 0; i < split.length; i++) {
			sb.append(split[i]);
			if (i < split1.length) {
				sb.append(split1[i].substring(0, split1[i].indexOf("(")));
			}
		}
		System.out.println(sb);
	}
}
