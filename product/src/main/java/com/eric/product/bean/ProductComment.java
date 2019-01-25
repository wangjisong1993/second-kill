package com.eric.product.bean;

import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.util.Date;

/**
 * product_comment
 *
 * @author
 */
@Data
@Accessors(chain = true)
public class ProductComment implements Serializable {
	/**
	 * 评论ID
	 */
	@TableId
	private String commentId;

	/**
	 * 商品ID
	 */
	private String productId;

	/**
	 * 订单ID
	 */
	private String orderId;

	/**
	 * 用户ID
	 */
	private String userId;

	/**
	 * 评论标题
	 */
	private String title;

	/**
	 * 评论内容
	 */
	private String content;

	/**
	 * 审核状态
	 */
	private String auditStatus;

	/**
	 * 评论时间
	 */
	private Date auditTime;

	private static final long serialVersionUID = 1L;

	public String getCommentId() {
		return commentId;
	}

	public void setCommentId(String commentId) {
		this.commentId = commentId;
	}

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getAuditStatus() {
		return auditStatus;
	}

	public void setAuditStatus(String auditStatus) {
		this.auditStatus = auditStatus;
	}

	public Date getAuditTime() {
		return auditTime;
	}

	public void setAuditTime(Date auditTime) {
		this.auditTime = auditTime;
	}
}