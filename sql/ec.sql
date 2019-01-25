/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : ec

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2019-01-25 18:09:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for brand_info
-- ----------------------------
DROP TABLE IF EXISTS `brand_info`;
CREATE TABLE `brand_info` (
  `brand_id` varchar(40) NOT NULL COMMENT '品牌ID',
  `brand_name` varchar(40) DEFAULT NULL COMMENT '品牌名称',
  `telephone` varchar(40) DEFAULT NULL COMMENT '联系电话',
  `brand_logo` varchar(255) DEFAULT NULL COMMENT '品牌logo',
  `brand_desc` varchar(255) DEFAULT NULL COMMENT '品牌描述',
  `brand_status` varchar(1) DEFAULT NULL COMMENT '品牌状态',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user_id` varchar(40) DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_user_id` varchar(40) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brand_info
-- ----------------------------

-- ----------------------------
-- Table structure for coupon_logs
-- ----------------------------
DROP TABLE IF EXISTS `coupon_logs`;
CREATE TABLE `coupon_logs` (
  `id` varchar(40) NOT NULL COMMENT '自动增加ID',
  `user_id` varchar(40) DEFAULT NULL COMMENT '买家ID',
  `coupon_receive_id` varchar(40) DEFAULT NULL COMMENT '优惠券id',
  `order_id` varchar(64) DEFAULT NULL COMMENT '订单号',
  `create_time` datetime DEFAULT NULL COMMENT '领取时间',
  `status` varchar(2) DEFAULT '0' COMMENT '日志状态: 默认为0，支付回调成功后为1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='优惠券消费记录表';

-- ----------------------------
-- Records of coupon_logs
-- ----------------------------
INSERT INTO `coupon_logs` VALUES ('9b9f8ec2-c4b2-45cc-8636-48b8e1f38fc0', 'd629c855-d147-4701-b0e9-383b27bb5126', '0252c706-2d4e-4512-90cc-a790454eb0ea', null, '2019-01-25 17:09:45', '2');

-- ----------------------------
-- Table structure for coupon_receive
-- ----------------------------
DROP TABLE IF EXISTS `coupon_receive`;
CREATE TABLE `coupon_receive` (
  `id` varchar(40) NOT NULL COMMENT '自动增加ID',
  `user_id` varchar(40) DEFAULT NULL COMMENT '买家ID',
  `coupon_template_id` varchar(40) DEFAULT NULL COMMENT '优惠券编号',
  `coupon_money` int(12) DEFAULT NULL COMMENT '券额',
  `create_time` datetime DEFAULT NULL COMMENT '领取时间',
  `full_money` int(12) DEFAULT NULL COMMENT '金额满',
  `status` varchar(2) DEFAULT NULL COMMENT '状态，1为已使用，0为已领取未使用，-1为已过期',
  `coupon_sn` varchar(40) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `order_id` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='优惠券领取记录表';

-- ----------------------------
-- Records of coupon_receive
-- ----------------------------
INSERT INTO `coupon_receive` VALUES ('0252c706-2d4e-4512-90cc-a790454eb0ea', 'd629c855-d147-4701-b0e9-383b27bb5126', '1', '1000', '2019-01-25 15:07:49', '0', '2', 'c7b4b870-8a1b-4a9d-9666-d3d1246ab8d9', '2019-01-25 17:09:45', null);
INSERT INTO `coupon_receive` VALUES ('20204bc5-7528-4ee1-965c-f8cb91ca9e0d', 'd629c855-d147-4701-b0e9-383b27bb5126', '1', '1000', '2019-01-25 15:07:49', '0', '2', '4434b989-64ea-4f57-9a08-69dede4027a8', '2019-01-25 17:56:15', '47cc6438-1c4b-45e7-ad99-4abdb1ff0f0f');
INSERT INTO `coupon_receive` VALUES ('2a5a596a-2706-4210-87b3-4c3baac7926e', 'd629c855-d147-4701-b0e9-383b27bb5126', '1', '1000', '2019-01-25 15:07:49', '0', '1', '34ff07d5-0606-4fbc-8c5a-1ac92802aa22', null, null);
INSERT INTO `coupon_receive` VALUES ('6c6ccb45-d589-47c3-b28e-bd464bfed05f', 'd629c855-d147-4701-b0e9-383b27bb5126', '1', '1000', '2019-01-25 15:07:49', '0', '1', '1d725315-328a-4e34-9c37-afa02f86822a', null, null);
INSERT INTO `coupon_receive` VALUES ('6f34dec5-391b-45e0-9c85-cbb2cecf40ea', 'd629c855-d147-4701-b0e9-383b27bb5126', '1', '1000', '2019-01-25 15:07:49', '0', '1', '530eed32-1719-49de-995d-30c68d8410a3', null, null);
INSERT INTO `coupon_receive` VALUES ('81cec946-6e89-42f5-9da0-3a76e6a6bd42', 'd629c855-d147-4701-b0e9-383b27bb5126', '1', '1000', '2019-01-25 15:07:49', '0', '1', '444311ec-7f73-446c-a74b-917dd0c3d002', null, null);
INSERT INTO `coupon_receive` VALUES ('885d9c7a-4f32-48f9-9640-b98aaf866c02', 'd629c855-d147-4701-b0e9-383b27bb5126', '1', '1000', '2019-01-25 15:07:49', '0', '1', 'd683d8d6-a9a1-4b31-b415-8e968803d9b1', null, null);
INSERT INTO `coupon_receive` VALUES ('8ed30f05-cffe-4b76-90f0-1f9e76673052', 'd629c855-d147-4701-b0e9-383b27bb5126', '1', '1000', '2019-01-25 15:07:49', '0', '1', '191e5732-76f0-4cba-b5cb-a4a42d40a7d4', null, null);
INSERT INTO `coupon_receive` VALUES ('99acd376-536f-47e0-9142-b50d703281e8', 'd629c855-d147-4701-b0e9-383b27bb5126', '1', '1000', '2019-01-25 15:07:49', '0', '1', 'cb1e0405-54d2-41e3-a8d6-2a0a69a4abb7', null, null);
INSERT INTO `coupon_receive` VALUES ('a1f9fce4-4882-4d63-a32b-800ad46640c6', 'd629c855-d147-4701-b0e9-383b27bb5126', '1', '1000', '2019-01-25 15:07:49', '0', '1', '5c2a3649-a0a9-405a-9853-b5cc517dbfc0', null, null);

-- ----------------------------
-- Table structure for coupon_template
-- ----------------------------
DROP TABLE IF EXISTS `coupon_template`;
CREATE TABLE `coupon_template` (
  `template_id` varchar(40) NOT NULL COMMENT '自动增加ID',
  `region_id` varchar(40) DEFAULT NULL COMMENT '所属区域',
  `type` varchar(11) DEFAULT NULL COMMENT '所属类型,1为满减',
  `name` varchar(32) DEFAULT NULL COMMENT '优惠券名称',
  `img` varchar(64) DEFAULT NULL COMMENT '图片的URL地址',
  `start_time` datetime DEFAULT NULL COMMENT '优惠券开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '优惠券结束时间',
  `money` int(11) DEFAULT NULL COMMENT '优惠券金额，用整数，固定值目前。',
  `status` varchar(2) DEFAULT NULL COMMENT '状态，0表示未开始，1表示进行中，-1表示结束',
  `remarks` varchar(512) DEFAULT NULL COMMENT '优惠券的说明',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `full_money` int(12) DEFAULT NULL COMMENT '金额满',
  PRIMARY KEY (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='优惠券基础配置表';

-- ----------------------------
-- Records of coupon_template
-- ----------------------------
INSERT INTO `coupon_template` VALUES ('1', '1', '1', '10元优惠券', 'http://www.baidu.com', '2019-01-24 14:56:35', '2019-01-31 14:56:39', '1000', '1', '无门槛', '2019-01-25 14:56:54', '0');

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `order_detail_id` varchar(40) DEFAULT NULL COMMENT '订单详情表ID',
  `order_id` varchar(40) DEFAULT NULL COMMENT '订单表ID',
  `product_id` varchar(40) DEFAULT NULL COMMENT '订单商品ID',
  `product_name` varchar(40) DEFAULT NULL COMMENT '商品名称',
  `product_cnt` int(11) DEFAULT NULL COMMENT '购买商品数量',
  `product_price` int(11) DEFAULT NULL COMMENT '购买商品单价',
  `fee_money` int(11) DEFAULT NULL COMMENT '优惠分摊金额',
  `w_id` varchar(40) DEFAULT NULL COMMENT '仓库ID ',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_detail
-- ----------------------------
INSERT INTO `order_detail` VALUES ('815d60b2-5dc5-4024-a6c7-b4cc7c01c0b3', 'cc99829f-69d4-403a-abc2-829826bf059d', '1', '1', '100', '10', null, '1', '2019-01-25 09:38:05', '2019-01-25 09:38:05');
INSERT INTO `order_detail` VALUES ('d925c7c0-f388-4947-9f27-9860282ad25e', '62915815-ca50-400a-b30a-6900885c8c7a', '1', '1', '100', '10', '0', '1', '2019-01-25 09:39:38', '2019-01-25 09:39:38');
INSERT INTO `order_detail` VALUES ('4c9c47c4-c531-47b6-a14e-ef956214f15e', 'ff288e0b-214c-4996-bbba-f77c3da36317', '1', '1', '100', '100', '0', '1', '2019-01-25 10:55:29', '2019-01-25 10:55:29');
INSERT INTO `order_detail` VALUES ('5e663354-bd69-4a39-b1f7-cdaa1bdee718', '62884682-41aa-49d8-898a-bf66a6a75c22', '1', '1', '100', '100', '0', '1', '2019-01-25 10:58:43', '2019-01-25 10:58:43');
INSERT INTO `order_detail` VALUES ('ba21bef0-ab6e-4163-ad71-8c388635fc49', 'e9cb5869-5ae4-492b-bffe-4be87c84338a', '1', '1', '100', '100', '0', '1', '2019-01-25 11:03:34', '2019-01-25 11:03:34');
INSERT INTO `order_detail` VALUES ('bb6c8a3b-ea23-45d4-aafe-21781f1242be', '47cc6438-1c4b-45e7-ad99-4abdb1ff0f0f', '1', '1', '100', '100', '0', '1', '2019-01-25 17:51:28', '2019-01-25 17:51:28');

-- ----------------------------
-- Table structure for order_master
-- ----------------------------
DROP TABLE IF EXISTS `order_master`;
CREATE TABLE `order_master` (
  `order_id` varchar(40) DEFAULT NULL COMMENT '订单ID',
  `order_sn` varchar(40) DEFAULT NULL COMMENT '订单编号',
  `user_id` varchar(40) DEFAULT NULL COMMENT '下单人ID',
  `shipping_user` varchar(40) DEFAULT NULL COMMENT '收货人姓名',
  `payment_method` varchar(1) DEFAULT NULL COMMENT '支付方式',
  `order_money` int(11) DEFAULT NULL COMMENT '订单金额',
  `district_money` int(11) DEFAULT NULL COMMENT '优惠金额(不包含优惠券)',
  `shipping_money` int(11) DEFAULT NULL COMMENT '运费金额',
  `payment_money` int(11) DEFAULT NULL COMMENT '支付金额',
  `shipping_sn` varchar(40) DEFAULT NULL COMMENT '快递单号',
  `create_time` datetime DEFAULT NULL COMMENT '下单时间',
  `shipping_time` datetime DEFAULT NULL COMMENT '发货时间',
  `pay_time` datetime DEFAULT NULL COMMENT '支付时间',
  `receive_time` datetime DEFAULT NULL COMMENT '收货时间',
  `order_status` varchar(1) DEFAULT NULL COMMENT '订单状态',
  `order_point` int(11) DEFAULT NULL COMMENT '订单积分',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `coupon_discount` int(11) DEFAULT NULL COMMENT '优惠券金额'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_master
-- ----------------------------
INSERT INTO `order_master` VALUES ('cc99829f-69d4-403a-abc2-829826bf059d', '85f8fd0d-259b-4b20-bc94-49a70dda8dad', 'd629c855-d147-4701-b0e9-383b27bb5126', '大傻逼', null, '1000', '0', '1000', '1000', null, '2019-01-25 09:38:05', null, null, null, '1', '0', '2019-01-25 09:38:05', null);
INSERT INTO `order_master` VALUES ('62915815-ca50-400a-b30a-6900885c8c7a', 'c21247e0-f2d2-4b02-bb42-79208816e210', 'd629c855-d147-4701-b0e9-383b27bb5126', '大傻逼', null, '1000', '0', '1000', '1000', null, '2019-01-25 09:39:38', null, null, null, '1', '0', '2019-01-25 09:39:38', null);
INSERT INTO `order_master` VALUES ('ff288e0b-214c-4996-bbba-f77c3da36317', '55245754-b49b-4908-aa16-d9df6731c9f6', 'd629c855-d147-4701-b0e9-383b27bb5126', '大傻逼', null, '10000', '0', '1000', '10000', null, '2019-01-25 10:55:29', null, null, null, '1', '0', '2019-01-25 10:55:29', null);
INSERT INTO `order_master` VALUES ('62884682-41aa-49d8-898a-bf66a6a75c22', '12eed588-752a-478f-8a0d-6da87bf3230c', 'd629c855-d147-4701-b0e9-383b27bb5126', '大傻逼', null, '10000', '0', '1000', '10000', null, '2019-01-25 10:58:43', null, null, null, '1', '0', '2019-01-25 10:58:43', null);
INSERT INTO `order_master` VALUES ('e9cb5869-5ae4-492b-bffe-4be87c84338a', 'bd633559-7aa1-47b4-95be-c818fd98bb65', 'd629c855-d147-4701-b0e9-383b27bb5126', '大傻逼', null, '10000', '0', '1000', '8000', null, '2019-01-25 11:03:34', null, null, null, '3', '8000', '2019-01-25 17:29:13', '1000');
INSERT INTO `order_master` VALUES ('47cc6438-1c4b-45e7-ad99-4abdb1ff0f0f', 'af83e89f-1d82-4052-9605-874214e85295', 'd629c855-d147-4701-b0e9-383b27bb5126', '大傻逼', null, '10000', '0', '1000', '9000', null, '2019-01-25 17:51:28', null, null, null, '3', '9000', '2019-01-25 17:59:06', '1000');

-- ----------------------------
-- Table structure for product_category
-- ----------------------------
DROP TABLE IF EXISTS `product_category`;
CREATE TABLE `product_category` (
  `category_id` varchar(40) NOT NULL COMMENT '分类ID',
  `category_name` varchar(40) DEFAULT NULL COMMENT '分类名称',
  `category_code` varchar(40) DEFAULT NULL COMMENT '分类编码',
  `parent_id` varchar(40) DEFAULT NULL COMMENT '父分类id',
  `category_level` varchar(2) DEFAULT NULL COMMENT '分类层级',
  `category_status` varchar(1) DEFAULT NULL COMMENT '分类状态',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user_id` varchar(40) DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_user_id` varchar(40) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_category
-- ----------------------------

-- ----------------------------
-- Table structure for product_comment
-- ----------------------------
DROP TABLE IF EXISTS `product_comment`;
CREATE TABLE `product_comment` (
  `comment_id` varchar(40) DEFAULT NULL COMMENT '评论ID',
  `product_id` varchar(40) DEFAULT NULL COMMENT '商品ID',
  `order_id` varchar(40) DEFAULT NULL COMMENT '订单ID',
  `user_id` varchar(40) DEFAULT NULL COMMENT '用户ID',
  `title` varchar(40) DEFAULT NULL COMMENT '评论标题',
  `content` varchar(300) DEFAULT NULL COMMENT '评论内容',
  `audit_status` varchar(1) DEFAULT NULL COMMENT '审核状态',
  `audit_time` datetime DEFAULT NULL COMMENT '评论时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_comment
-- ----------------------------

-- ----------------------------
-- Table structure for product_master
-- ----------------------------
DROP TABLE IF EXISTS `product_master`;
CREATE TABLE `product_master` (
  `product_id` varchar(40) DEFAULT NULL COMMENT '商品ID',
  `product_core` varchar(16) DEFAULT NULL COMMENT '商品编码',
  `product_name` varchar(40) DEFAULT NULL COMMENT '商品名称',
  `brand_id` varchar(40) DEFAULT NULL COMMENT '品牌表的ID',
  `one_category_id` varchar(40) DEFAULT NULL COMMENT '一级分类ID',
  `two_category_id` varchar(40) DEFAULT NULL COMMENT '二级分类ID',
  `three_category_id` varchar(40) DEFAULT NULL COMMENT '三级分类ID',
  `supplier_id` varchar(40) DEFAULT NULL COMMENT '商品的供应商ID',
  `price` int(11) DEFAULT NULL COMMENT '商品销售价格',
  `publish_status` varchar(1) DEFAULT NULL COMMENT '上下架状态',
  `audit_status` varchar(1) DEFAULT NULL COMMENT '审核状态',
  `production_date` datetime DEFAULT NULL COMMENT '生产日期',
  `shelf_life` int(11) DEFAULT NULL COMMENT '商品有效期',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user_id` varchar(40) DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_user_id` varchar(40) DEFAULT NULL COMMENT '更新人'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_master
-- ----------------------------
INSERT INTO `product_master` VALUES ('1', '1', '1', '1', '1', '1', '1', '1', '100', '1', '2', '2019-01-25 10:55:13', '1', '2019-01-25 10:55:16', '1', '2019-01-25 10:55:20', '1');

-- ----------------------------
-- Table structure for shipping_info
-- ----------------------------
DROP TABLE IF EXISTS `shipping_info`;
CREATE TABLE `shipping_info` (
  `ship_id` varchar(40) DEFAULT NULL COMMENT '主键ID',
  `ship_name` varchar(40) DEFAULT NULL COMMENT '物流公司名称',
  `ship_contact` varchar(40) DEFAULT NULL COMMENT '物流公司联系人',
  `telephone` varchar(40) DEFAULT NULL COMMENT '物流公司联系电话',
  `price` int(11) DEFAULT NULL COMMENT '配送价格',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user_id` varchar(40) DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_uesr_id` varchar(40) DEFAULT NULL COMMENT '更新人'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shipping_info
-- ----------------------------

-- ----------------------------
-- Table structure for supplier_info
-- ----------------------------
DROP TABLE IF EXISTS `supplier_info`;
CREATE TABLE `supplier_info` (
  `supplier_id` varchar(40) NOT NULL COMMENT '供应商ID',
  `supplier_code` varchar(40) DEFAULT NULL COMMENT '供应商编码',
  `supplier_name` varchar(50) DEFAULT NULL COMMENT '供应商名称',
  `supplier_type` varchar(1) DEFAULT NULL COMMENT '供应商类型',
  `link_man` varchar(10) DEFAULT NULL COMMENT '供应商联系人',
  `phone_number` varchar(50) DEFAULT NULL COMMENT '联系电话',
  `supplier_status` varchar(1) DEFAULT NULL COMMENT '状态',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user_id` varchar(40) DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_user_id` varchar(40) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of supplier_info
-- ----------------------------

-- ----------------------------
-- Table structure for user_action_log
-- ----------------------------
DROP TABLE IF EXISTS `user_action_log`;
CREATE TABLE `user_action_log` (
  `action_log_id` varchar(40) DEFAULT NULL COMMENT '数据库主键',
  `user_id` varchar(40) DEFAULT NULL COMMENT '用户id',
  `action_system` varchar(40) DEFAULT NULL COMMENT '操作的系统',
  `action_module` varchar(40) DEFAULT NULL COMMENT '操作模块',
  `action_url` varchar(40) DEFAULT NULL COMMENT '操作的url',
  `action_time` datetime DEFAULT NULL COMMENT '操作时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_action_log
-- ----------------------------

-- ----------------------------
-- Table structure for user_address
-- ----------------------------
DROP TABLE IF EXISTS `user_address`;
CREATE TABLE `user_address` (
  `id` varchar(40) DEFAULT NULL COMMENT '数据库主键',
  `user_id` varchar(40) DEFAULT NULL COMMENT '用户id',
  `zip` varchar(10) DEFAULT NULL COMMENT '邮编',
  `province_id` varchar(40) DEFAULT NULL COMMENT '省份',
  `city_id` varchar(40) DEFAULT NULL COMMENT '城市',
  `district_id` varchar(40) DEFAULT NULL COMMENT '区',
  `address` varchar(40) DEFAULT NULL COMMENT '地址',
  `is_default` varchar(1) DEFAULT NULL COMMENT '是否默认',
  `create_user_id` varchar(40) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user_id` varchar(40) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_address
-- ----------------------------

-- ----------------------------
-- Table structure for user_balance_log
-- ----------------------------
DROP TABLE IF EXISTS `user_balance_log`;
CREATE TABLE `user_balance_log` (
  `id` varchar(40) NOT NULL COMMENT '数据库主键',
  `user_id` varchar(40) DEFAULT NULL COMMENT '用户id',
  `source` varchar(2) DEFAULT NULL COMMENT '来源',
  `source_sn` varchar(40) DEFAULT NULL COMMENT '相关单据id',
  `create_time` datetime DEFAULT NULL COMMENT '生成时间',
  `change_amount` int(11) DEFAULT NULL COMMENT '变更金额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_balance_log
-- ----------------------------
INSERT INTO `user_balance_log` VALUES ('4fee7728-3932-4377-8bd3-92dc335f0693', 'f2414da0-9b78-4152-955f-049c398d3990', '1', '12345678912', '2019-01-24 11:38:22', '1000');

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `user_info_id` varchar(40) NOT NULL COMMENT '数据库主键',
  `user_id` varchar(40) DEFAULT NULL COMMENT '用户id',
  `real_name` varchar(20) DEFAULT NULL COMMENT '姓名',
  `mobile_phone` varchar(13) DEFAULT NULL COMMENT '手机号',
  `email` varchar(40) DEFAULT NULL COMMENT '用户邮箱',
  `user_gender` varchar(1) DEFAULT NULL COMMENT '用户性别',
  `user_point` int(11) DEFAULT '0' COMMENT '用户积分',
  `register_time` datetime DEFAULT NULL COMMENT '注册时间',
  `birthday` datetime DEFAULT NULL COMMENT '生日',
  `user_level` varchar(40) DEFAULT NULL COMMENT '用户等级',
  `user_balance` int(11) DEFAULT '0' COMMENT '用户余额',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user_id` varchar(40) DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_user_id` varchar(40) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`user_info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('ac3d857c-17e8-48b7-8a08-2576705177dc', 'f2414da0-9b78-4152-955f-049c398d3990', '大傻逼', '4', '123456@qq.com', null, '90', '2019-01-22 17:19:20', null, '1', '1000', '2019-01-22 17:19:20', 'admin', '2019-01-23 12:09:37', 'admin');
INSERT INTO `user_info` VALUES ('ac8cd388-cecb-4f70-b12a-88b279452996', 'd629c855-d147-4701-b0e9-383b27bb5126', null, '41', null, null, '0', '2019-01-22 17:35:23', null, '1', '0', '2019-01-22 17:35:23', 'admin', '2019-01-22 17:35:23', 'admin');
INSERT INTO `user_info` VALUES ('f3c60849-0f98-413e-ae69-2c274316a9e0', 'eed51653-8344-4d27-baae-0fa0b0d5eab9', null, '411', null, null, '0', '2019-01-22 17:36:10', null, '1', '0', '2019-01-22 17:36:10', 'admin', '2019-01-22 17:36:10', 'admin');

-- ----------------------------
-- Table structure for user_level_detail
-- ----------------------------
DROP TABLE IF EXISTS `user_level_detail`;
CREATE TABLE `user_level_detail` (
  `id` varchar(40) NOT NULL COMMENT '等级id',
  `level_name` varchar(40) DEFAULT NULL COMMENT '等级名称',
  `min_point` int(11) DEFAULT NULL COMMENT '该级别最低积分',
  `max_point` int(11) DEFAULT NULL COMMENT '该级别最高积分',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user_id` varchar(40) DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_user_id` varchar(40) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_level_detail
-- ----------------------------
INSERT INTO `user_level_detail` VALUES ('1', '青铜', '0', '2000', '2019-01-22 18:14:10', 'admin', '2019-01-22 18:14:15', 'admin');
INSERT INTO `user_level_detail` VALUES ('2', '白银', '2001', '10000', '2019-01-22 18:14:10', 'admin', '2019-01-22 18:14:15', 'admin');
INSERT INTO `user_level_detail` VALUES ('3', '黄金', '10001', '20000', '2019-01-22 18:14:10', 'admin', '2019-01-22 18:14:15', 'admin');
INSERT INTO `user_level_detail` VALUES ('4', '珀金', '20001', '40000', '2019-01-22 18:14:10', 'admin', '2019-01-22 18:14:15', 'admin');

-- ----------------------------
-- Table structure for user_login_log
-- ----------------------------
DROP TABLE IF EXISTS `user_login_log`;
CREATE TABLE `user_login_log` (
  `id` varchar(40) NOT NULL COMMENT '数据库主键',
  `user_id` varchar(40) DEFAULT NULL COMMENT '用户id',
  `login_time` datetime DEFAULT NULL COMMENT '登录时间',
  `login_ip` varchar(40) DEFAULT NULL COMMENT '登录ip',
  `login_result` varchar(1) DEFAULT NULL COMMENT '登录结果',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_login_log
-- ----------------------------
INSERT INTO `user_login_log` VALUES ('06dfe644-a5f2-4130-9b98-adb190985f82', 'eed51653-8344-4d27-baae-0fa0b0d5eab9', '2019-01-23 10:27:20', '127.0.0.1', '0');
INSERT INTO `user_login_log` VALUES ('1827adb4-ebf7-409c-a184-9feb182b05ab', 'eed51653-8344-4d27-baae-0fa0b0d5eab9', '2019-01-22 18:06:35', '127.0.0.1', '1');
INSERT INTO `user_login_log` VALUES ('32621744-ac50-4c05-ae4a-bc0cfaae3102', 'eed51653-8344-4d27-baae-0fa0b0d5eab9', '2019-01-23 10:07:26', '127.0.0.1', '1');
INSERT INTO `user_login_log` VALUES ('74dfdc31-b764-4589-876d-3c7c0856d5be', 'eed51653-8344-4d27-baae-0fa0b0d5eab9', '2019-01-23 10:07:07', '127.0.0.1', '0');
INSERT INTO `user_login_log` VALUES ('75d234de-9ad1-444a-a378-f995094c5b5c', 'eed51653-8344-4d27-baae-0fa0b0d5eab9', '2019-01-22 17:58:29', '127.0.0.1', '1');
INSERT INTO `user_login_log` VALUES ('7a38facc-806d-41b5-a159-fe0676e6ad06', 'eed51653-8344-4d27-baae-0fa0b0d5eab9', '2019-01-23 10:34:13', '127.0.0.1', '1');
INSERT INTO `user_login_log` VALUES ('7f04ba42-a7a4-49b1-9b11-0cd01e444b42', 'eed51653-8344-4d27-baae-0fa0b0d5eab9', '2019-01-22 17:59:36', '127.0.0.1', '1');
INSERT INTO `user_login_log` VALUES ('90439c60-229e-44a9-9bd3-68294a3dcf60', 'eed51653-8344-4d27-baae-0fa0b0d5eab9', '2019-01-23 10:27:29', '127.0.0.1', '1');
INSERT INTO `user_login_log` VALUES ('abafb9c1-ab21-4aaf-b136-276957b5e65c', 'eed51653-8344-4d27-baae-0fa0b0d5eab9', '2019-01-23 10:37:37', '127.0.0.1', '1');
INSERT INTO `user_login_log` VALUES ('e173cdff-4d03-4398-9ab9-e3e024ddf884', 'eed51653-8344-4d27-baae-0fa0b0d5eab9', '2019-01-22 18:43:40', '127.0.0.1', '1');
INSERT INTO `user_login_log` VALUES ('e1828e9b-669f-4dd1-a593-a21d230bf205', 'eed51653-8344-4d27-baae-0fa0b0d5eab9', '2019-01-23 10:07:18', '127.0.0.1', '0');
INSERT INTO `user_login_log` VALUES ('ec037802-be33-4b87-9e11-7f39326c100c', 'eed51653-8344-4d27-baae-0fa0b0d5eab9', '2019-01-22 18:43:21', '127.0.0.1', '1');

-- ----------------------------
-- Table structure for user_master
-- ----------------------------
DROP TABLE IF EXISTS `user_master`;
CREATE TABLE `user_master` (
  `user_id` varchar(40) NOT NULL COMMENT '用户id',
  `login_name` varchar(40) DEFAULT NULL COMMENT '登录名',
  `password` varchar(50) DEFAULT NULL COMMENT '密码',
  `user_stats` varchar(1) DEFAULT '1' COMMENT '用户状态',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user_id` varchar(40) DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_user_id` varchar(40) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_master
-- ----------------------------
INSERT INTO `user_master` VALUES ('d629c855-d147-4701-b0e9-383b27bb5126', '212', '09b52b08540cc1703585c159b60a9378fb1ad38d9c53c811', '1', '2019-01-22 17:35:23', 'admin', '2019-01-22 17:35:23', 'admin');
INSERT INTO `user_master` VALUES ('eed51653-8344-4d27-baae-0fa0b0d5eab9', '2121', '855312a52a69337855e19b39281421d1b93a791713137e84', '1', '2019-01-22 17:36:10', 'admin', '2019-01-23 10:06:50', 'admin');
INSERT INTO `user_master` VALUES ('f2414da0-9b78-4152-955f-049c398d3990', '21', 'b8cd7bd1b57087269e347a9e549f5179620be2653b291245', '1', '2019-01-22 17:19:20', 'admin', '2019-01-22 17:19:20', 'admin');

-- ----------------------------
-- Table structure for user_point_log
-- ----------------------------
DROP TABLE IF EXISTS `user_point_log`;
CREATE TABLE `user_point_log` (
  `id` varchar(40) NOT NULL COMMENT '数据库主键',
  `user_id` varchar(40) DEFAULT NULL COMMENT '用户id',
  `point_source` varchar(2) DEFAULT NULL COMMENT '积分来源',
  `refer_number` varchar(40) DEFAULT NULL COMMENT '来源编号',
  `change_point` int(11) DEFAULT NULL COMMENT '变更积分数',
  `create_time` datetime DEFAULT NULL COMMENT '生成时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_point_log
-- ----------------------------
INSERT INTO `user_point_log` VALUES ('323122f9-9d10-44d3-a498-e42337603809', 'f2414da0-9b78-4152-955f-049c398d3990', '1', '5', '-10', '2019-01-24 11:24:13');
INSERT INTO `user_point_log` VALUES ('5dcd6dee-8263-4445-97d3-5d73f0b68310', 'f2414da0-9b78-4152-955f-049c398d3990', '1', '3', '-1000', '2019-01-24 11:17:48');
INSERT INTO `user_point_log` VALUES ('7c77c523-43e1-4a32-b47a-a06091b3e505', 'f2414da0-9b78-4152-955f-049c398d3990', '1', '4', '100', '2019-01-24 11:19:57');
INSERT INTO `user_point_log` VALUES ('7d2bb341-dbf3-4ffd-a18b-003ca9cbf937', 'f2414da0-9b78-4152-955f-049c398d3990', '1', '2', '0', '2019-01-24 11:12:20');
INSERT INTO `user_point_log` VALUES ('9e6ec909-dd7d-4258-84c1-2d4f320587fa', 'f2414da0-9b78-4152-955f-049c398d3990', '1', '1', '1000', '2019-01-24 11:09:12');

-- ----------------------------
-- Table structure for warehouse_info
-- ----------------------------
DROP TABLE IF EXISTS `warehouse_info`;
CREATE TABLE `warehouse_info` (
  `w_id` varchar(40) DEFAULT NULL COMMENT '仓库ID',
  `warehouse_sn` varchar(40) DEFAULT NULL COMMENT '仓库编码',
  `warehoust_name` varchar(40) DEFAULT NULL COMMENT '仓库名称',
  `warehouse_phone` varchar(40) DEFAULT NULL COMMENT '仓库电话',
  `contact` varchar(40) DEFAULT NULL COMMENT '仓库联系人',
  `address` varchar(40) DEFAULT NULL COMMENT '仓库地址',
  `warehouse_status` varchar(1) DEFAULT NULL COMMENT '仓库状态',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user_id` varchar(40) DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_user_id` varchar(40) DEFAULT NULL COMMENT '更新人'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of warehouse_info
-- ----------------------------

-- ----------------------------
-- Table structure for warehouse_product
-- ----------------------------
DROP TABLE IF EXISTS `warehouse_product`;
CREATE TABLE `warehouse_product` (
  `wp_id` varchar(40) DEFAULT NULL COMMENT '商品库存ID',
  `product_id` varchar(40) DEFAULT NULL COMMENT '商品ID',
  `w_id` varchar(40) DEFAULT NULL COMMENT '仓库ID',
  `current_cnt` int(11) DEFAULT NULL COMMENT '当前商品数量',
  `lock_cnt` int(11) DEFAULT NULL COMMENT '当前占用数据',
  `in_transit_cnt` int(11) DEFAULT NULL COMMENT '在途数据',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of warehouse_product
-- ----------------------------
