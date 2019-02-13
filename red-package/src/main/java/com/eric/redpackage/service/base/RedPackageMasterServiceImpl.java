package com.eric.redpackage.service.base;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.redpackage.bean.RedPackageMaster;
import com.eric.redpackage.dao.RedPackageMasterMapper;
import com.eric.redpackage.service.RedPackageMasterService;
import com.eric.seckill.cache.anno.MethodCache;
import org.springframework.stereotype.Service;

/**
 * @author wang.js on 2019/2/13.
 * @version 1.0
 */
@Service
public class RedPackageMasterServiceImpl extends ServiceImpl<RedPackageMasterMapper, RedPackageMaster> implements RedPackageMasterService {

	@Override
	public boolean saveRedPackage(RedPackageMaster master) {
		return save(master);
	}

	@Override
	@MethodCache
	public RedPackageMaster findRedPackageById(String redPackageId) {
		return this.baseMapper.selectById(redPackageId);
	}
}
