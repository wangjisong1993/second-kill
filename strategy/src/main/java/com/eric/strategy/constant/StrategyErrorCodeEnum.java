package com.eric.strategy.constant;

/**
 * @author wang.js
 * @date 2018/12/18
 * @copyright yougou.com
 */
public enum StrategyErrorCodeEnum {

	SAVE_SUCCESS("保存成功", "0"),
	FIND_USER_LEVEL_ERROR("查询用户等级失败", "250"),
	STRATEGY_NOT_FIND("策略不存在", "251"),
	;

	/**
	 * 定义的message
	 */
	private String message;
	/**
	 * 定义的错误码
	 */
	private String errCode;

	StrategyErrorCodeEnum(String message, String errCode) {
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
