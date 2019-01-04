package com.eric.seckill.service.base;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.seckill.common.bean.SkOrder;
import com.eric.seckill.dao.SkOrderMapper;
import com.eric.seckill.service.SkOrderService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.UUID;

/**
 * @author wang.js
 * @date 2018/12/17
 * @copyright yougou.com
 */
@Service
public class SkOrderServiceImpl extends ServiceImpl<SkOrderMapper, SkOrder> implements SkOrderService {

	@Resource
	private SkGoodsSeckillServiceImpl skGoodsSeckillService;

	@Override
	public boolean saveOrder(String userId, String goodsId) {
		SkOrder t = new SkOrder();
		t.setGoodsId(goodsId);
		t.setId(UUID.randomUUID().toString());
		String orderId = UUID.randomUUID().toString();
		t.setOrderId(orderId);
		t.setUserId(userId);
		// 减库存
		skGoodsSeckillService.reduceStock(goodsId);
		return baseMapper.insert(t) > 0;
	}

}
