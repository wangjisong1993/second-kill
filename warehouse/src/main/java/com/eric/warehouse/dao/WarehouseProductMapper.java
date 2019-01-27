package com.eric.warehouse.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.eric.warehouse.bean.WarehouseProduct;
import com.eric.warehouse.model.InStockRequest;
import com.eric.warehouse.model.WarehouseCntUpdateRequest;
import org.apache.ibatis.annotations.Param;

import java.util.Date;

/**
 * @author Eric on 2019/1/27.
 * @version 1.0
 */
public interface WarehouseProductMapper extends BaseMapper<WarehouseProduct> {

	/**
	 * 获取最大库存的仓库id
	 *
	 * @param productId
	 * @param productCnt
	 * @return
	 */
	String findMaxCurrentCntWId(@Param("productId") String productId, @Param("productCnt") Integer productCnt);

	/**
	 * 更新商品库存数量
	 *
	 * @param updateRequest
	 * @return
	 */
	int updateCnt(@Param("request") WarehouseCntUpdateRequest updateRequest);

	/**
	 * 根据商品id和仓库id获取库存记录id
	 *
	 * @param productId
	 * @param wId
	 * @return
	 */
	String findWpIdByProductIdAndWId(@Param("productId") String productId, @Param("wId") String wId);

	/**
	 * 更新商品库存
	 * @param request
	 * @param wpId
	 * @param updateTime
	 * @return
	 */
	int updateProductCnt(@Param("request") InStockRequest request, @Param("wpId") String wpId,
	                     @Param("updateTime") Date updateTime);
}
