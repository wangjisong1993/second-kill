/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50622
Source Host           : localhost:3306
Source Database       : ec

Target Server Type    : MYSQL
Target Server Version : 50622
File Encoding         : 65001

Date: 2019-01-27 23:22:09
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
INSERT INTO `coupon_receive` VALUES ('12b9a92e-6741-461a-9b0f-160d01b5a8f5', 'd629c855-d147-4701-b0e9-383b27bb5126', 'ccd6df6d-0402-413e-bfd8-c4818fdb33b8', '10000', '2019-01-26 12:09:35', '0', '2', '6e322341-1e1a-435a-bc51-49286adba76f', '2019-01-27 23:08:19', 'adc7a9b0-27a6-4954-b46e-d5be4319b5fd');
INSERT INTO `coupon_receive` VALUES ('1b1e8001-3563-4396-af55-7d29c2c340eb', 'd629c855-d147-4701-b0e9-383b27bb5126', 'ccd6df6d-0402-413e-bfd8-c4818fdb33b8', '10000', '2019-01-26 12:09:35', '0', '1', '300948c0-ee91-4a24-a3c0-25a232aa34ee', '2019-01-27 23:11:19', null);
INSERT INTO `coupon_receive` VALUES ('1b434e81-30ab-4835-ae77-ec51c22c8380', 'd629c855-d147-4701-b0e9-383b27bb5126', 'ccd6df6d-0402-413e-bfd8-c4818fdb33b8', '10000', '2019-01-26 12:09:35', '0', '1', '86d73842-9c8b-4455-a6c7-b770a8e8b7bc', null, null);
INSERT INTO `coupon_receive` VALUES ('1c0210ab-396c-47e1-8110-101a56c2f579', 'd629c855-d147-4701-b0e9-383b27bb5126', 'ccd6df6d-0402-413e-bfd8-c4818fdb33b8', '10000', '2019-01-26 12:09:35', '0', '1', '14f57fd6-18cf-421e-9e39-f57d62f13bd8', null, null);
INSERT INTO `coupon_receive` VALUES ('6ebe4851-a671-4cba-9a9b-f0c100f4c118', 'd629c855-d147-4701-b0e9-383b27bb5126', 'ccd6df6d-0402-413e-bfd8-c4818fdb33b8', '10000', '2019-01-26 12:09:35', '0', '1', 'fc3acc4a-bfbb-45bc-a85e-0a6cee9a182d', null, null);
INSERT INTO `coupon_receive` VALUES ('7edb6d3f-d06c-4b5c-a233-353cf6301c97', 'd629c855-d147-4701-b0e9-383b27bb5126', 'ccd6df6d-0402-413e-bfd8-c4818fdb33b8', '10000', '2019-01-26 12:09:35', '0', '1', 'a09d470b-d5fb-4bf0-bb00-0b2372d1df43', null, null);
INSERT INTO `coupon_receive` VALUES ('9dc808a4-370d-4b9e-b655-06384d5f1484', 'd629c855-d147-4701-b0e9-383b27bb5126', 'ccd6df6d-0402-413e-bfd8-c4818fdb33b8', '10000', '2019-01-26 12:09:35', '0', '1', 'cbe81424-d1bc-4ccb-9e44-0613b91e8659', null, null);
INSERT INTO `coupon_receive` VALUES ('a12370e3-3649-43d7-af5d-efa9ee896f8e', 'd629c855-d147-4701-b0e9-383b27bb5126', 'ccd6df6d-0402-413e-bfd8-c4818fdb33b8', '10000', '2019-01-26 12:09:35', '0', '4', '112600f9-0b44-4d21-a26e-0b488455e18f', '2019-01-27 23:13:45', null);
INSERT INTO `coupon_receive` VALUES ('b7cc61a3-a3c9-4c16-853a-1fd63d8a6b61', 'd629c855-d147-4701-b0e9-383b27bb5126', 'ccd6df6d-0402-413e-bfd8-c4818fdb33b8', '10000', '2019-01-26 12:09:35', '0', '4', '056e8970-19bd-4e57-94b4-0eb43f087337', '2019-01-27 23:13:45', null);
INSERT INTO `coupon_receive` VALUES ('c5f8fcc0-ff09-470b-85ce-98236ecd2456', 'd629c855-d147-4701-b0e9-383b27bb5126', 'ccd6df6d-0402-413e-bfd8-c4818fdb33b8', '10000', '2019-01-26 12:09:35', '0', '1', '30333008-8e44-4a8a-b415-278fd7436327', null, null);

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
INSERT INTO `coupon_template` VALUES ('ccd6df6d-0402-413e-bfd8-c4818fdb33b8', '-1', '1', '100元优惠券', 'http://www.baidu.com', '2019-01-26 11:33:37', '2019-12-30 00:00:00', '10000', '1', null, null, '0');

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
INSERT INTO `order_detail` VALUES ('72c5edd1-32a2-42e0-a074-bd4fae04762c', 'adc7a9b0-27a6-4954-b46e-d5be4319b5fd', '1', '1', '100', '100', '0', '1', '2019-01-27 22:28:42', '2019-01-27 22:28:42');
INSERT INTO `order_detail` VALUES ('8fae8801-92b4-49ee-ada3-78c1410526d2', '9d10e7c2-deb9-4f28-b070-6a7f424ceb2b', '1', '1', '100', '100', '0', '1', '2019-01-27 23:08:29', '2019-01-27 23:08:29');
INSERT INTO `order_detail` VALUES ('d758ed40-1dec-4240-a63b-adaba9e494ab', 'bda0afd4-db7e-4fd7-a119-893302356a96', '1', '1', '1000', '100', '0', '1', '2019-01-27 23:08:54', '2019-01-27 23:08:54');

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
INSERT INTO `order_master` VALUES ('adc7a9b0-27a6-4954-b46e-d5be4319b5fd', 'ebf251a4-cfc5-496b-856a-1b61ccbaf895', 'd629c855-d147-4701-b0e9-383b27bb5126', '大傻逼', null, '10000', '0', '1000', '1000', null, '2019-01-27 22:28:42', null, null, null, '1', '0', '2019-01-27 23:08:19', '10000');
INSERT INTO `order_master` VALUES ('9d10e7c2-deb9-4f28-b070-6a7f424ceb2b', '50679df4-abd1-436e-8ab7-9f11897809e0', 'd629c855-d147-4701-b0e9-383b27bb5126', '大傻逼', null, '10000', '0', '1000', '11000', null, '2019-01-27 23:08:29', null, null, null, '1', '0', '2019-01-27 23:08:29', null);
INSERT INTO `order_master` VALUES ('bda0afd4-db7e-4fd7-a119-893302356a96', '172fa49b-a671-4e45-94d8-39ec6f537ecd', 'd629c855-d147-4701-b0e9-383b27bb5126', '大傻逼', '1', '100000', '0', '1000', '81000', null, '2019-01-27 23:08:54', null, '2019-01-27 23:13:44', null, '3', '81000', '2019-01-27 23:13:44', '20000');

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
-- Table structure for product_in_stock_logs
-- ----------------------------
DROP TABLE IF EXISTS `product_in_stock_logs`;
CREATE TABLE `product_in_stock_logs` (
  `id` varchar(40) DEFAULT NULL COMMENT '数据库主键',
  `product_id` varchar(40) DEFAULT NULL COMMENT '商品id',
  `w_id` varchar(40) DEFAULT NULL COMMENT '仓库id',
  `product_cnt` int(11) DEFAULT NULL COMMENT '入库数量',
  `supplier_id` varchar(40) DEFAULT NULL COMMENT '供应商',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `create_user_id` varchar(40) DEFAULT NULL COMMENT '创建人',
  `update_user_id` varchar(40) DEFAULT NULL COMMENT '更新人',
  `contract_no` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_in_stock_logs
-- ----------------------------
INSERT INTO `product_in_stock_logs` VALUES ('e44cbf05-9126-4cc2-88b8-7fecf7faf53a', '1', '1', '10000', '188624b1-e874-4651-9a68-b097fa6f04e4', '2019-01-27 21:08:03', '2019-01-27 21:08:03', 'd629c855-d147-4701-b0e9-383b27bb5126', 'd629c855-d147-4701-b0e9-383b27bb5126', '1');

-- ----------------------------
-- Table structure for product_lock_detail
-- ----------------------------
DROP TABLE IF EXISTS `product_lock_detail`;
CREATE TABLE `product_lock_detail` (
  `id` varchar(40) DEFAULT NULL COMMENT '数据库主键',
  `order_id` varchar(40) DEFAULT NULL COMMENT '订单id',
  `product_id` varchar(40) DEFAULT NULL COMMENT '占用的商品id',
  `lock_cnt` int(11) DEFAULT NULL COMMENT '占用数量',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `create_user_id` varchar(40) DEFAULT NULL COMMENT '创建人',
  `update_user_id` varchar(40) DEFAULT NULL COMMENT '更新人',
  `lock_status` varchar(1) DEFAULT NULL COMMENT '状态',
  `w_id` varchar(40) DEFAULT NULL COMMENT '仓库id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_lock_detail
-- ----------------------------
INSERT INTO `product_lock_detail` VALUES ('7e3584b5-93de-4ddf-bc4f-5e13d92327ec', '9b037a03-d6ab-4410-aa89-af24498815b8', '1', '100', '2019-01-27 21:08:36', '2019-01-27 21:08:36', 'admin', 'admin', '1', '1');
INSERT INTO `product_lock_detail` VALUES ('fd528c7f-163c-415b-a541-9d30e5b44347', 'f6c9f99a-b1cf-4d27-8d7b-0244e5e7bbf7', '1', '100', '2019-01-27 22:04:17', '2019-01-27 22:04:17', 'admin', 'admin', '1', '1');
INSERT INTO `product_lock_detail` VALUES ('42ee8625-edd2-46d5-a3db-f5fb64cc26dc', '4d468383-7dfe-45d8-97b1-e6290801d584', '1', '100', '2019-01-27 22:25:30', '2019-01-27 22:25:30', 'admin', 'admin', '1', '1');
INSERT INTO `product_lock_detail` VALUES ('fe7b79bf-1c50-4520-9308-f8b8bf062752', 'f4db71fd-5057-467e-998c-417cdac4227c', '1', '100', '2019-01-27 22:26:52', '2019-01-27 22:26:52', 'admin', 'admin', '1', '1');
INSERT INTO `product_lock_detail` VALUES ('93e59aac-7603-4bba-bf1b-0452a00a971b', '2f009a4f-1a4d-46d4-8328-b8b2b0649623', '1', '100', '2019-01-27 22:27:45', '2019-01-27 22:27:45', 'admin', 'admin', '1', '1');
INSERT INTO `product_lock_detail` VALUES ('bb954d56-529b-4f52-99e8-d0b90ffce50b', 'adc7a9b0-27a6-4954-b46e-d5be4319b5fd', '1', '100', '2019-01-27 22:28:42', '2019-01-27 22:28:42', 'admin', 'admin', '1', '1');
INSERT INTO `product_lock_detail` VALUES ('d747aec8-c96c-4e61-b681-9fdcf19148a5', '9d10e7c2-deb9-4f28-b070-6a7f424ceb2b', '1', '100', '2019-01-27 23:08:29', '2019-01-27 23:08:29', 'admin', 'admin', '1', '1');
INSERT INTO `product_lock_detail` VALUES ('3d32bd65-a42f-4b03-8880-d662fe69d741', 'bda0afd4-db7e-4fd7-a119-893302356a96', '1', '1000', '2019-01-27 23:08:54', '2019-01-27 23:08:54', 'admin', 'admin', '1', '1');

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
INSERT INTO `supplier_info` VALUES ('188624b1-e874-4651-9a68-b097fa6f04e4', '1', '大傻逼有限公司', '1', '250', '123456789', '1', '2019-01-27 21:00:06', 'admin', '2019-01-27 21:00:06', 'admin');

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` varchar(40) NOT NULL COMMENT 'id',
  `pid` varchar(40) DEFAULT '0' COMMENT ' 父ID ',
  `data_type` varchar(40) NOT NULL COMMENT ' 数据类别,首字母大写 ',
  `data_code` varchar(40) NOT NULL COMMENT ' 数据编码 ',
  `data_value` varchar(40) NOT NULL COMMENT ' 数据名称/值 ',
  `status` varchar(2) DEFAULT '0' COMMENT '0正常,1删除',
  `data_desc` varchar(100) DEFAULT NULL COMMENT '数据描述',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user_id` varchar(40) DEFAULT NULL COMMENT '创建人',
  `update_user_id` varchar(40) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `G_SYS_DICT_PK` (`id`),
  KEY `idx_dc_dt` (`data_type`,`data_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统字典表';

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('0d6b0026-e453-4fce-9108-a65e4950f956', '0', 'ORDERSTATUS', '4', '已发货', '1', '已发货', '2019-01-26 23:35:16', '2019-01-26 23:35:16', 'admin', 'admin');
INSERT INTO `sys_dict` VALUES ('10d73445-de6d-4b40-9ee7-ee7133f0828e', '0', 'ORDERSTATUS', '2', '支付中', '1', '支付中', '2019-01-26 23:35:04', '2019-01-26 23:35:04', 'admin', 'admin');
INSERT INTO `sys_dict` VALUES ('26b5e091-a682-4e02-bfc2-eb26001d469b', '0', 'ORDERSTATUS', '1', '新建', '1', '新建', '2019-01-26 23:34:58', '2019-01-26 23:34:58', 'admin', 'admin');
INSERT INTO `sys_dict` VALUES ('4607ca57-438b-49c2-82ad-ec7a6e6da2b0', '0', 'PAYMETHOD', '4', '银联支付', '1', '银联支付', '2019-01-26 22:41:47', '2019-01-26 22:41:47', 'admin', 'admin');
INSERT INTO `sys_dict` VALUES ('48728f02-4760-4ed9-9589-964fc4760ff6', '0', 'PAYMETHOD', '1', '微信支付', '1', '微信支付', '2019-01-26 22:41:22', '2019-01-26 22:41:22', 'admin', 'admin');
INSERT INTO `sys_dict` VALUES ('57f71e22-b9dd-4a11-9a77-491ead590bd7', '0', 'PAYMETHOD', '3', '京东支付', '1', '京东支付', '2019-01-26 22:41:38', '2019-01-26 22:41:38', 'admin', 'admin');
INSERT INTO `sys_dict` VALUES ('66c3c370-09a8-4027-ae87-93c084ef09af', '0', 'ORDERSTATUS', '6', '交易已关闭', '1', '交易已关闭', '2019-01-26 23:35:23', '2019-01-26 23:35:23', 'admin', 'admin');
INSERT INTO `sys_dict` VALUES ('6cb6abe9-8ac2-420c-9e2c-9bf77181f250', '0', 'ORDERSTATUS', '3', '支付成功', '1', '支付成功', '2019-01-26 23:35:09', '2019-01-26 23:35:09', 'admin', 'admin');
INSERT INTO `sys_dict` VALUES ('75e82d36-3cd4-4170-baf3-71deafd5de5e', '0', 'ORDERSTATUS', '9', '已退款', '1', '已退款', '2019-01-26 23:35:45', '2019-01-26 23:35:45', 'admin', 'admin');
INSERT INTO `sys_dict` VALUES ('9393a639-d640-4e10-8d58-b52282bb0dfb', '0', 'ORDERSTATUS', '8', '同意退款', '1', '同意退款', '2019-01-26 23:35:36', '2019-01-26 23:35:36', 'admin', 'admin');
INSERT INTO `sys_dict` VALUES ('a9f90b2f-0310-4ddf-b88c-0f2a31d34b9a', '0', 'PAYMETHOD', '2', '支付宝支付', '1', '支付宝支付', '2019-01-26 22:41:31', '2019-01-26 22:41:31', 'admin', 'admin');
INSERT INTO `sys_dict` VALUES ('b545dac3-fb23-4100-a18f-49b10a44af9a', '0', 'ORDERSTATUS', '5', '已收货', '1', '已收货', '2019-01-26 23:38:48', '2019-01-26 23:38:48', 'admin', 'admin');
INSERT INTO `sys_dict` VALUES ('dde5b2dd-2c08-4e2a-bfcf-364e79cdb48d', '0', 'ORDERSTATUS', '7', '申请退款', '1', '申请退款', '2019-01-26 23:35:30', '2019-01-26 23:35:30', 'admin', 'admin');

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
INSERT INTO `user_info` VALUES ('ac3d857c-17e8-48b7-8a08-2576705177dc', 'f2414da0-9b78-4152-955f-049c398d3990', '大傻逼', '4', '123456@qq.com', null, '0', '2019-01-22 17:19:20', null, '1', '0', '2019-01-22 17:19:20', 'admin', '2019-01-23 12:09:37', 'admin');
INSERT INTO `user_info` VALUES ('ac8cd388-cecb-4f70-b12a-88b279452996', 'd629c855-d147-4701-b0e9-383b27bb5126', null, '41', null, null, '91000', '2019-01-22 17:35:23', null, '1', '0', '2019-01-22 17:35:23', 'admin', '2019-01-22 17:35:23', 'admin');
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
INSERT INTO `user_point_log` VALUES ('1a33083f-6a28-4e46-a06a-4add39fc90f8', 'd629c855-d147-4701-b0e9-383b27bb5126', '2', '874cc1e5-a137-48b4-988b-d1c6cab93993', '10000', '2019-01-25 21:53:27');
INSERT INTO `user_point_log` VALUES ('cc99996a-c6c8-4c73-a1b3-6153b6ab0fda', 'd629c855-d147-4701-b0e9-383b27bb5126', '2', 'bda0afd4-db7e-4fd7-a119-893302356a96', '81000', '2019-01-27 23:13:45');

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
INSERT INTO `warehouse_product` VALUES ('b655e4d0-c58f-4be3-8cb0-b4e92bd4c163', '1', '1', '8300', '1700', '0', '2019-01-27 21:08:03', '2019-01-27 23:08:54');
