package com.eric.warehouse.service.base;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.eric.warehouse.bean.ProductInStockLogs;
import com.eric.warehouse.dao.ProductInStockLogsMapper;
import com.eric.warehouse.service.ProductInStockLogsService;
import org.springframework.stereotype.Service;

/**
 * @author Eric on 2019/1/27.
 * @version 1.0
 */
@Service
public class ProductInStockLogsServiceImpl extends ServiceImpl<ProductInStockLogsMapper, ProductInStockLogs> implements ProductInStockLogsService {

	@Override
	public boolean insertLogs(ProductInStockLogs log) {
		return save(log);
	}

	@Override
	public int countByContractNo(String contractNo) {
		return count(new QueryWrapper<ProductInStockLogs>().eq("contract_no", contractNo));
	}

}
