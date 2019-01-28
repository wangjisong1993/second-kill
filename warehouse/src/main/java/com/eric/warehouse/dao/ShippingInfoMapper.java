package com.eric.warehouse.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.eric.warehouse.bean.ShippingInfo;
import org.apache.ibatis.annotations.Param;

/**
 * @author Eric on 2019/1/27.
 * @version 1.0
 */
public interface ShippingInfoMapper extends BaseMapper<ShippingInfo> {

	/**
	 * 根据仓库id获取快递费
	 *
	 * @param warehouseId
	 * @return
	 */
	Integer findShippingPriceByWarehouseId(@Param("warehouseId") String warehouseId);
}
