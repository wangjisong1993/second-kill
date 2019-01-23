package com.eric.user.model;

import lombok.Data;
import org.hibernate.validator.constraints.NotBlank;

/**
 * @author wang.js on 2019/1/23.
 * @version 1.0
 */
@Data
public class UserAddressModifyRequest {

	/**
	 * 用户id
	 */
	@NotBlank(message = "用户id不能为空")
	private String userId;

	/**
	 * 邮编
	 */
	private String zip;

	/**
	 * 省份
	 */
	private String provinceId;

	/**
	 * 城市
	 */
	private String cityId;

	/**
	 * 区
	 */
	private String districtId;

	/**
	 * 地址
	 */
	private String address;

	/**
	 * 是否默认
	 */
	private String isDefault;
	/**
	 * 更新人
	 */
	@NotBlank(message = "更新人不能为空")
	private String updateUserId;

}
