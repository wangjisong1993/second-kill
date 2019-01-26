package com.eric.order.service.impl;

import com.eric.order.bean.OrderMaster;
import com.eric.order.constant.OrderErrorCodeEnum;
import com.eric.order.feign.BaseDataFeign;
import com.eric.order.model.OrderDetailQueryResponse;
import com.eric.order.model.OrderQueryRequest;
import com.eric.order.model.OrderQueryResponse;
import com.eric.order.service.OrderDetailService;
import com.eric.order.service.OrderMasterService;
import com.eric.order.service.OrderQueryService;
import com.eric.seckill.cache.anno.ParamCheck;
import com.eric.seckill.common.constant.DictDataTypeEnum;
import com.eric.seckill.common.model.CommonResult;
import com.eric.seckill.common.model.feign.DictQueryRequest;
import org.apache.commons.collections.CollectionUtils;
import org.dozer.DozerBeanMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Eric on 2019/1/26.
 * @version 1.0
 */
@Service
public class OrderQueryServiceImpl extends BaseOrderService implements OrderQueryService {

	@Resource
	private OrderMasterService orderMasterService;

	@Resource
	private OrderDetailService orderDetailService;

	@Resource
	private DozerBeanMapper dozerBeanMapper;

	@Resource
	private BaseDataFeign baseDataFeign;

	@Override
	@ParamCheck
	public CommonResult<List<OrderQueryResponse>> findOrder(OrderQueryRequest request) {
		// 校验签名
		checkSign(request, request.getSign());
		// 校验用户的状态
		checkUserActive(request.getUserId());
		List<OrderMaster> orderMasters = orderMasterService.listOrderMastersByUserId(request);
		if (CollectionUtils.isEmpty(orderMasters)) {
			return CommonResult.fail(OrderErrorCodeEnum.ORDER_NOT_FOUND.getMessage(), OrderErrorCodeEnum.ORDER_NOT_FOUND.getErrCode());
		}
		List<OrderQueryResponse> responses = new ArrayList<>();
		for (OrderMaster orderMaster : orderMasters) {
			OrderQueryResponse response = new OrderQueryResponse();
			dozerBeanMapper.map(orderMaster, response);
			// 添加订单明细
			List<OrderDetailQueryResponse> orderDetails = orderDetailService.listOrderDetailQueryResponseByOrderId(orderMaster.getOrderId());
			response.setOrderDetails(orderDetails);
			// 批量查询字典项
			queryDictValue(orderMaster, response);
			responses.add(response);
		}
		return CommonResult.success(responses, null);
	}

	/**
	 * 查询字典值
	 *
	 * @param orderMaster
	 * @param response
	 */
	private void queryDictValue(OrderMaster orderMaster, OrderQueryResponse response) {
		List<DictQueryRequest> requests = new ArrayList<>();
		requests.add(new DictQueryRequest().setDataType(DictDataTypeEnum.ORDER_STATUS.getDataType()).setDataCode(orderMaster.getOrderStatus()));
		requests.add(new DictQueryRequest().setDataType(DictDataTypeEnum.PAY_METHOD.getDataType()).setDataCode(orderMaster.getPaymentMethod()));

		CommonResult<List<DictQueryRequest>> commonResult = baseDataFeign.listDictValue(requests);
		if (commonResult != null && commonResult.isSuccess()) {
			for (DictQueryRequest dictQueryRequest : commonResult.getData()) {
				if (DictDataTypeEnum.ORDER_STATUS.getDataType().equals(dictQueryRequest.getDataType())) {
					response.setOrderStatusString(dictQueryRequest.getDataValue());
					continue;
				}
				if (DictDataTypeEnum.PAY_METHOD.getDataType().equals(dictQueryRequest.getDataType())) {
					response.setPayMethodString(dictQueryRequest.getDataValue());
				}
			}
		}
	}
}
