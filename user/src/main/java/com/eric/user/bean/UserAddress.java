package com.eric.user.bean;

import com.baomidou.mybatisplus.annotation.TableId;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

/**
 * @author Eric
 */
@EqualsAndHashCode(callSuper = true)
@Data
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
public class UserAddress extends BaseProperty {
	/**
	 * 数据库主键
	 */
	@TableId
	private String id;

	/**
	 * 用户id
	 */
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

	private static final long serialVersionUID = 1L;

}