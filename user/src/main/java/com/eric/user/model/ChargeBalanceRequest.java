package com.eric.user.model;

import lombok.Data;
import lombok.experimental.Accessors;
import org.hibernate.validator.constraints.NotBlank;

import javax.validation.constraints.NotNull;
import java.util.Date;

/**
 * @author Eric on 2019/1/23.
 * @version 1.0
 */
@Data
@Accessors(chain = true)
public class ChargeBalanceRequest {

	/**
	 * 支付订单号
	 */
	@NotBlank(message = "交易订单号不能为空")
	private String outTradeNo;
	/**
	 * 支付人
	 */
	@NotBlank(message = "支付人不能为空")
	private String payUserId;
	/**
	 * 充值人
	 */
	@NotBlank(message = "充值人不能为空")
	private String chargeUserId;
	/**
	 * 创建时间
	 */
	private Date createTime;
	/**
	 * 签名
	 */
	@NotBlank(message = "签名不能为空")
	private String sign;
	/**
	 * 充值金额
	 */
	@NotNull(message = "充值金额不能为空, 单位是分")
	private Integer chargeAmount;
	/**
	 * 充值来源
	 */
	@NotBlank(message = "充值来源不能为空")
	private String source;

}
