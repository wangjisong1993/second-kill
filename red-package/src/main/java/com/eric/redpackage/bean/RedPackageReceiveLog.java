package com.eric.redpackage.bean;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableLogic;
import lombok.Data;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.util.Date;

/**
 * red_package_receive_log
 *
 * @author
 */
@Data
@Accessors(chain = true)
public class RedPackageReceiveLog implements Serializable {
	/**
	 * 记录id
	 */
	@TableId
	private String logId;

	/**
	 * 红包id
	 */
	private String redPackageId;

	/**
	 * 接收人
	 */
	private String receiverId;

	/**
	 * 接受金额
	 */
	private Integer receiveMoney;

	/**
	 * 接收时间
	 */
	private Date receiveTime;

	/**
	 * 创建时间
	 */
	private Date createTime;

	/**
	 * 更新时间
	 */
	private Date updateTime;

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