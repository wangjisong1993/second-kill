package com.eric.redpackage.bean;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableLogic;
import lombok.Data;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.util.Date;

/**
 * red_package_master
 *
 * @author
 */
@Data
@Accessors(chain = true)
public class RedPackageMaster implements Serializable {
	/**
	 * 红包id
	 */
	@TableId
	private String redPackageId;

	/**
	 * 发送人
	 */
	private String senderId;

	/**
	 * 红包类型
	 */
	private String redPackageType;

	/**
	 * 红包金额
	 */
	private Integer redPackageMoney;

	/**
	 * 红包个数
	 */
	private Integer redPackageNum;

	/**
	 * 创建时间
	 */
	private Date createTime;

	/**
	 * 更新时间
	 */
	private Date updateTime;

	/**
	 * 过期时间
	 */
	private Date expireTime;
	/**
	 * 删除状态
	 */
	@TableLogic
	private String delStatus;
	/**
	 * 版本号
	 */
	private Integer version;

	private static final long serialVersionUID = 1L;
}