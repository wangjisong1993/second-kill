package com.eric.user.model;

import lombok.Data;
import lombok.experimental.Accessors;
import org.hibernate.validator.constraints.NotBlank;

import javax.validation.constraints.NotNull;
import java.util.Date;

/**
 * 用户积分变动请求
 *
 * @author wang.js on 2019/1/24.
 * @version 1.0
 */
@Data
@Accessors(chain = true)
public class UserPointChangeRequest {

	/**
	 * 用户id
	 */
	@NotBlank(message = "用户id不能为空")
	private String userId;
	/**
	 * 交易订单号
	 */
	@NotBlank(message = "交易订单号不能为空")
	private String outTradeNo;
	/**
	 * 积分来源
	 */
	@NotBlank(message = "积分来源不能为空")
	private String pointSource;
	/**
	 * 变动积分, 可以为负数
	 */
	@NotNull(message = "变动积分不能为空")
	private Integer changePoint;
	/**
	 * 创建时间
	 */
	@NotNull(message = "创建时间不能为空")
	private Date createTime;
	/**
	 * 签名
	 */
	@NotBlank(message = "签名")
	private String sign;

}
