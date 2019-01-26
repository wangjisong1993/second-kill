package com.eric.base.data.bean;

import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.util.Date;

/**
 * @author
 */
@Data
@Accessors(chain = true)
public class SysDict implements Serializable {
	/**
	 * id
	 */
	@TableId
	private String id;

	/**
	 * 父ID
	 */
	private String pid;

	/**
	 * 数据类别,首字母大写
	 */
	private String dataType;

	/**
	 * 数据编码
	 */
	private String dataCode;

	/**
	 * 数据名称/值
	 */
	private String dataValue;

	/**
	 * 0正常,1删除
	 */
	private String status;

	/**
	 * 数据描述
	 */
	private String dataDesc;

	/**
	 * 更新时间
	 */
	private Date updateTime;

	/**
	 * 创建时间
	 */
	private Date createTime;

	/**
	 * 创建人
	 */
	private String createUserId;

	/**
	 * 更新人
	 */
	private String updateUserId;

	private static final long serialVersionUID = 1L;

}