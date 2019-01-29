package com.eric.collect.card.service;

import com.eric.collect.card.model.*;
import com.eric.seckill.common.model.CommonResult;

/**
 * @author Eric on 2019/1/28.
 * @version 1.0
 */
public interface CollectCardService {

	/**
	 * 集福请求
	 *
	 * @param request
	 * @return
	 */
	CommonResult<CollectCardResponse> collect(CollectCardRequest request);

	/**
	 * 转赠福卡
	 *
	 * @param request
	 * @return
	 */
	CommonResult<Void> present(PresentCardRequest request);

	/**
	 * 卡合并
	 *
	 * @param request
	 * @return
	 */
	CommonResult<Void> merge(CardMergeRequest request);

	/**
	 * 使用沾福卡
	 * @param request
	 * @return
	 */
	CommonResult<CopyCardResponse> copy(CopyCardRequest request);
}
