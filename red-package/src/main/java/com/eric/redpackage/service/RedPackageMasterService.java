package com.eric.redpackage.service;

import com.eric.redpackage.bean.RedPackageMaster;

/**
 * @author wang.js on 2019/2/13.
 * @version 1.0
 */
public interface RedPackageMasterService {

	/**
	 * 保存红包记录
	 *
	 * @param master
	 * @return
	 */
	boolean saveRedPackage(RedPackageMaster master);

	/**
	 * 根据红包id获取红包信息
	 *
	 * @param redPackageId
	 * @return
	 */
	RedPackageMaster findRedPackageById(String redPackageId);
}
