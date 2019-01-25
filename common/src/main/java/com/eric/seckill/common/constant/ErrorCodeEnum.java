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
	UPDATE_FAIL("更新失败", "256"),
	EMPTY_PARAM("参数为空", "257"),
	SAVE_ERROR("保存失败", "262"),
	SERVER_TIMEOUT("调用超时", "501"),
	USER_NOT_FOUND("找不到用户", "502"),
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
