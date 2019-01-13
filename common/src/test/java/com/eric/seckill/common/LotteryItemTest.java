package com.eric.seckill.common;

import com.eric.seckill.common.bean.LotteryItem;

import java.util.Date;

/**
 * @author Eric on 2019/1/12.
 * @version 1.0
 */
public class LotteryItemTest {

	public void t1() {
		LotteryItem lotteryItem = LotteryItem.builder().createTime(new Date()).build();
	}

}
