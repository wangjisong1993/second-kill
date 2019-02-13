package com.eric.seckill.common.constant;

/**
 * @author wang.js
 * @date 2018/12/18
 * @copyright yougou.com
 */
public enum ErrorCodeEnum {

	SUCCESS("查询成功", "200"),
	SERVER_ERROR("服务器异常", "500"),
	SECKILL_END("秒杀活动已结束", "250"),
	GOODS_KILLED("秒杀成功", "502"),
	ERROR_SIGN("签名不合法", "260"),
	UPDATE_SUCCESS("更新成功", "0"),
	SAVE_SUCCESS("保存成功", "0"),
	UPDATE_FAIL("更新失败", "256"),
	EMPTY_PARAM("参数为空", "257"),
	SAVE_ERROR("保存失败", "262"),
	SERVER_TIMEOUT("调用超时", "501"),
	USER_NOT_FOUND("找不到用户", "502"),
	COUPON_NOT_FOUND("找不到优惠券", "503"),
	DUPLICATE("出现重复", "504"),
	USER_STATUS_ABNORMAL("用户状态异常", "505"),
	NO_TOKEN("无token，请重新登录", "506"),
	ERROR_TOKEN("token不合法", "507"),
	EMPTY_RESULT("暂无数据", "508"),
	;

	/**
	 * 定义的message
	 */
	private String message;
	/**
	 * 定义的错误码
	 */
	private String errCode;

	ErrorCodeEnum(String message, String errCode) {
		this.message = message;
		this.errCode = errCode;
	}

	public String getMessage() {
		return message;
	}

	protected void setMessage(String message) {
		this.message = message;
	}

	public String getErrCode() {
		return errCode;
	}

	protected void setErrCode(String errCode) {
		this.errCode = errCode;
	}
}
