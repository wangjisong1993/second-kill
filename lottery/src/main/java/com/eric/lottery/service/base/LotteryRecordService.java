package com.eric.lottery.service.base;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.lottery.mapper.seckill.LotteryRecordMapper;
import com.eric.seckill.common.bean.LotteryRecord;
import org.springframework.stereotype.Service;

/**
 * @author Eric on 2019/1/6.
 * @version 1.0
 */
@Service
public class LotteryRecordService extends ServiceImpl<LotteryRecordMapper, LotteryRecord> {
}
