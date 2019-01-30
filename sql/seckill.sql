/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50622
Source Host           : localhost:3306
Source Database       : seckill

Target Server Type    : MYSQL
Target Server Version : 50622
File Encoding         : 65001

Date: 2019-01-28 22:32:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for lottery_item
-- ----------------------------
DROP TABLE IF EXISTS `lottery_item`;
CREATE TABLE `lottery_item` (
  `id` varchar(40) DEFAULT NULL,
  `lottery_name` varchar(20) DEFAULT NULL,
  `lottery_rate` double DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `project_id` varchar(40) DEFAULT NULL,
  `stock_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lottery_item
-- ----------------------------
INSERT INTO `lottery_item` VALUES ('1', '一等奖', '0.01', '2019-01-06 17:12:29', '2019-01-06 17:12:31', '1', '1');
INSERT INTO `lottery_item` VALUES ('2', '二等奖', '0.2', '2019-01-06 17:12:43', '2019-01-06 17:12:46', '1', '20');
INSERT INTO `lottery_item` VALUES ('3', '三等奖', '0.5', '2019-01-06 17:13:01', '2019-01-06 17:13:04', '1', '50');

-- ----------------------------
-- Table structure for lottery_record
-- ----------------------------
DROP TABLE IF EXISTS `lottery_record`;
CREATE TABLE `lottery_record` (
  `id` varchar(40) DEFAULT NULL,
  `project_id` varchar(40) DEFAULT NULL,
  `lottery_name` varchar(40) DEFAULT NULL,
  `user_id` varchar(40) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `lottery_item_id` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lottery_record
-- ----------------------------
INSERT INTO `lottery_record` VALUES ('729872a6-6b08-4b48-b1c6-e732de71a2eb', '1', '二等奖', '1231', '2019-01-13 20:11:58', '2019-01-13 20:11:58', '2');
INSERT INTO `lottery_record` VALUES ('32ce153a-eadb-47dc-a211-d91cd8607bab', '1', '三等奖', '6621', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '3');
INSERT INTO `lottery_record` VALUES ('4ea64220-4ab7-4522-ba09-770ece9f6170', '1', '三等奖', '9340', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '3');
INSERT INTO `lottery_record` VALUES ('59788528-67e3-4290-957e-1c320fd50c69', '1', '三等奖', '8273', '2019-01-13 20:11:58', '2019-01-13 20:11:58', '3');
INSERT INTO `lottery_record` VALUES ('1cf40406-08f7-44c1-af67-5d64c8d29143', '1', '三等奖', '3039', '2019-01-13 20:11:58', '2019-01-13 20:11:58', '3');
INSERT INTO `lottery_record` VALUES ('6026f3fd-6b39-430a-8054-d964c80f1beb', '1', '三等奖', '3684', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '3');
INSERT INTO `lottery_record` VALUES ('fd44ffa7-9b20-4bbb-ab31-6c72c7f14933', '1', '三等奖', '2814', '2019-01-13 20:11:58', '2019-01-13 20:11:58', '3');
INSERT INTO `lottery_record` VALUES ('f755499c-d5a8-4804-9fe1-48bb9d75b18e', '1', '三等奖', '7455', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '3');
INSERT INTO `lottery_record` VALUES ('566d69c9-1cfb-45af-8648-88338e903dc2', '1', '三等奖', '35', '2019-01-13 20:11:58', '2019-01-13 20:11:58', '3');
INSERT INTO `lottery_record` VALUES ('a18c9aa7-1e66-4032-8979-e99d4ad91b08', '1', '二等奖', '7167', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '2');
INSERT INTO `lottery_record` VALUES ('25caf734-5c60-4e81-8b88-c41e27d3c089', '1', '三等奖', '1830', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '3');
INSERT INTO `lottery_record` VALUES ('ed46ab2d-0daa-45e4-98f5-01f62a7b101c', '1', '三等奖', '6174', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '3');
INSERT INTO `lottery_record` VALUES ('c8e31096-4602-48f0-af66-d48a42717dec', '1', '三等奖', '6583', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '3');
INSERT INTO `lottery_record` VALUES ('5ce90037-fcb1-4d7d-95f7-ffdab781e5d1', '1', '三等奖', '1538', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '3');
INSERT INTO `lottery_record` VALUES ('2ee1a576-0fbb-4a09-a3fb-5ce19ed089af', '1', '三等奖', '2687', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '3');
INSERT INTO `lottery_record` VALUES ('776b9c33-0672-442c-94b3-627b454cbeb6', '1', '三等奖', '5012', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '3');
INSERT INTO `lottery_record` VALUES ('14a56626-6dea-4bed-8d8f-bb743a78a503', '1', '三等奖', '7345', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '3');
INSERT INTO `lottery_record` VALUES ('fcca2f3b-909e-476a-a88a-a13a11305c95', '1', '三等奖', '2984', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '3');
INSERT INTO `lottery_record` VALUES ('bd1f589f-4265-420a-8046-5631e5fadd89', '1', '三等奖', '7404', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '3');
INSERT INTO `lottery_record` VALUES ('b5ce0509-c9bb-41e6-9309-741f30133646', '1', '二等奖', '7214', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '2');
INSERT INTO `lottery_record` VALUES ('13784bf8-9f27-4a65-887b-838395385d7e', '1', '二等奖', '8536', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '2');
INSERT INTO `lottery_record` VALUES ('bf5c1720-6ec0-4433-b423-038178ba59c7', '1', '三等奖', '7373', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '3');
INSERT INTO `lottery_record` VALUES ('f87c093e-35e4-4fd3-96df-2eabe26681a7', '1', '三等奖', '6591', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '3');
INSERT INTO `lottery_record` VALUES ('e2d8b52d-6d26-42fb-bdd1-48652b2d2e97', '1', '三等奖', '1228', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '3');
INSERT INTO `lottery_record` VALUES ('021e475d-32aa-4df4-a299-568f747dfe22', '1', '三等奖', '1076', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '3');
INSERT INTO `lottery_record` VALUES ('09a3776a-fa64-4ec5-b0a3-6d8786a0c0ac', '1', '三等奖', '3954', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '3');
INSERT INTO `lottery_record` VALUES ('69f1a8eb-9c00-4502-9068-c0113ded9a0b', '1', '三等奖', '6958', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '3');
INSERT INTO `lottery_record` VALUES ('5b35aa24-cfa2-4bd8-adc2-20947e0d76a9', '1', '三等奖', '1202', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '3');
INSERT INTO `lottery_record` VALUES ('6b1b306a-0b17-4643-934a-3a69e3849972', '1', '二等奖', '1877', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '2');
INSERT INTO `lottery_record` VALUES ('907d5243-a030-4369-b29f-a9c942935d36', '1', '二等奖', '2159', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '2');
INSERT INTO `lottery_record` VALUES ('79d708aa-6eb2-434d-9aa7-d9f859a4493e', '1', '三等奖', '2442', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '3');
INSERT INTO `lottery_record` VALUES ('2cc943d6-0ca0-4688-b5d3-dae0627def7e', '1', '一等奖', '9231', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '1');
INSERT INTO `lottery_record` VALUES ('6ea65cb9-5a69-4c3e-af91-d9722a2c6d40', '1', '三等奖', '8235', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '3');
INSERT INTO `lottery_record` VALUES ('fa8cf6e6-b26f-4345-b67a-c0ee427f97a2', '1', '三等奖', '3935', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '3');
INSERT INTO `lottery_record` VALUES ('d026b11c-0a2c-43fa-aa25-8abe34caaba2', '1', '二等奖', '8576', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '2');
INSERT INTO `lottery_record` VALUES ('13670746-8471-4500-a122-8df3d29e9c85', '1', '二等奖', '7880', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '2');
INSERT INTO `lottery_record` VALUES ('6bcdb217-9e5c-4cdf-9a5a-354caeb9eb88', '1', '二等奖', '6928', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '2');
INSERT INTO `lottery_record` VALUES ('2b83da75-4234-4887-9621-b0970e0df25b', '1', '三等奖', '2136', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '3');
INSERT INTO `lottery_record` VALUES ('10570fcd-ecf1-4921-8243-d2c58919878a', '1', '三等奖', '1734', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '3');
INSERT INTO `lottery_record` VALUES ('0337fced-956b-489d-8897-2478c8f74134', '1', '三等奖', '9669', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '3');
INSERT INTO `lottery_record` VALUES ('0302ffb6-96c0-400c-8df0-da2639567d0f', '1', '三等奖', '5153', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '3');
INSERT INTO `lottery_record` VALUES ('4a67217a-d142-4b11-b091-d0f2a939b213', '1', '二等奖', '4016', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '2');
INSERT INTO `lottery_record` VALUES ('0e992cdf-06a3-4c93-985b-5515b66008b4', '1', '三等奖', '3847', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '3');
INSERT INTO `lottery_record` VALUES ('90ed38b4-eb6c-465c-a4f8-112096b0d73e', '1', '三等奖', '4993', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '3');
INSERT INTO `lottery_record` VALUES ('21de81ef-6785-4844-b915-12f018728763', '1', '二等奖', '2644', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '2');
INSERT INTO `lottery_record` VALUES ('4f1fb9ff-eabb-4bb4-83e9-7a51fa6b96b5', '1', '二等奖', '4898', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '2');
INSERT INTO `lottery_record` VALUES ('fea5ffd5-bae9-4a93-92d1-28eaa10b0027', '1', '三等奖', '9843', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '3');
INSERT INTO `lottery_record` VALUES ('4e65df0e-f298-4770-bc77-70ca4ae823b1', '1', '三等奖', '7354', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '3');
INSERT INTO `lottery_record` VALUES ('d8ee7ed2-8ea1-4541-a1b8-76448d3715f5', '1', '二等奖', '2272', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '2');
INSERT INTO `lottery_record` VALUES ('4c68acdf-0e55-48b7-ac24-f9401f9e02de', '1', '三等奖', '9580', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '3');
INSERT INTO `lottery_record` VALUES ('eceaf89a-34a0-4ca0-b42c-73dc8f03a8a4', '1', '三等奖', '6001', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '3');
INSERT INTO `lottery_record` VALUES ('ca7e2e20-2482-41ec-8771-b9663060342a', '1', '二等奖', '9060', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '2');
INSERT INTO `lottery_record` VALUES ('04ad08df-468f-46b6-a99c-6b2285fc4611', '1', '三等奖', '7970', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '3');
INSERT INTO `lottery_record` VALUES ('6e7c3fa3-8b68-4341-88a6-65edb264a9a1', '1', '三等奖', '8820', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '3');
INSERT INTO `lottery_record` VALUES ('f29ea48c-f754-4d60-b294-9c58ce6ada69', '1', '三等奖', '8717', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '3');
INSERT INTO `lottery_record` VALUES ('eab7a7cd-8be4-40ed-b710-fd81abf9a18e', '1', '三等奖', '7542', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '3');
INSERT INTO `lottery_record` VALUES ('cb976d8e-3189-4cca-8f9b-1084adfe051e', '1', '二等奖', '4193', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '2');
INSERT INTO `lottery_record` VALUES ('e5d94771-c32c-47a1-821b-388f859ad297', '1', '三等奖', '3680', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '3');
INSERT INTO `lottery_record` VALUES ('73ba4852-991b-4208-97c0-8231afa02400', '1', '二等奖', '6472', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '2');
INSERT INTO `lottery_record` VALUES ('1c617354-6228-4312-abfc-4b3e333d252f', '1', '三等奖', '9136', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '3');
INSERT INTO `lottery_record` VALUES ('e3a1c101-db38-40e2-9560-97489165ae36', '1', '三等奖', '5624', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '3');
INSERT INTO `lottery_record` VALUES ('a4f53da1-6684-4c39-9ecd-9149d054064a', '1', '二等奖', '5007', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '2');
INSERT INTO `lottery_record` VALUES ('725d6ed6-bf6e-44b5-b0e9-9528141a8b78', '1', '三等奖', '3970', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '3');
INSERT INTO `lottery_record` VALUES ('d9b119bd-43b8-4523-b5a8-6d4d9aafc9a6', '1', '三等奖', '6265', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '3');
INSERT INTO `lottery_record` VALUES ('3e8e24b4-4f1a-43e1-8ddd-32cebf07eedb', '1', '二等奖', '3737', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '2');
INSERT INTO `lottery_record` VALUES ('76c2faa4-d902-4c90-9949-3125e25669cb', '1', '二等奖', '7918', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '2');
INSERT INTO `lottery_record` VALUES ('187cf645-f69e-4d27-a8ab-c211dd9e6397', '1', '三等奖', '9081', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '3');
INSERT INTO `lottery_record` VALUES ('c21654d4-8529-4c15-aaf0-e367810d584e', '1', '三等奖', '6767', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '3');
INSERT INTO `lottery_record` VALUES ('b1f6e727-df9a-458d-b89f-8021db266669', '1', '三等奖', '4591', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '3');
INSERT INTO `lottery_record` VALUES ('5f191684-3908-4805-bb1c-6d47c89552ec', '1', '三等奖', '7176', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '3');
INSERT INTO `lottery_record` VALUES ('7b7aa920-62de-4023-93be-f92c3ffe2a99', '1', '二等奖', '7703', '2019-01-13 20:11:59', '2019-01-13 20:11:59', '2');
INSERT INTO `lottery_record` VALUES ('f88b7b44-daf9-4807-8b1a-031eaed63577', '1', '三等奖', '1582', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '3');
INSERT INTO `lottery_record` VALUES ('d405b0b6-fc36-4de4-b8ca-36de1a73478e', '1', '二等奖', '6515', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '2');
INSERT INTO `lottery_record` VALUES ('a35a3828-4671-4927-aafa-65e191fbd2e3', '1', '三等奖', '6540', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '3');
INSERT INTO `lottery_record` VALUES ('8f19e92c-8d54-4919-b45e-91d4227fefd3', '1', '三等奖', '7683', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '3');
INSERT INTO `lottery_record` VALUES ('22270193-14e6-4c2f-b226-4e479d2f4ec2', '1', '二等奖', '8462', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '2');
INSERT INTO `lottery_record` VALUES ('badf6bef-0554-4311-b518-f50b6956e678', '1', '三等奖', '5147', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '3');
INSERT INTO `lottery_record` VALUES ('55e2b66d-003f-4f8a-a9b5-d3af757b9e73', '1', '三等奖', '2471', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '3');
INSERT INTO `lottery_record` VALUES ('33bd34d5-d5a8-4d9e-b951-7bb0daff7986', '1', '二等奖', '9469', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '2');
INSERT INTO `lottery_record` VALUES ('802cb94f-7faa-4251-8e21-447421ede115', '1', '三等奖', '6705', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '3');
INSERT INTO `lottery_record` VALUES ('8c5d48a5-15a3-4ca4-82b0-22639636d622', '1', '二等奖', '6605', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '2');
INSERT INTO `lottery_record` VALUES ('5663ac3a-5dda-4cd4-9344-cfae4260192d', '1', '三等奖', '2853', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '3');
INSERT INTO `lottery_record` VALUES ('bf539a06-3827-4bb1-a12e-e4b3bab15598', '1', '三等奖', '5322', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '3');
INSERT INTO `lottery_record` VALUES ('40d0aa8e-269b-41e8-9b89-5265807fe317', '1', '二等奖', '7755', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '2');
INSERT INTO `lottery_record` VALUES ('2fb58c59-84d2-4a57-a31b-6517c3ef1899', '1', '二等奖', '276', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '2');
INSERT INTO `lottery_record` VALUES ('cd449bd2-f2e2-4f85-a788-fd7aaf148fb0', '1', '二等奖', '5242', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '2');
INSERT INTO `lottery_record` VALUES ('1cf852c1-3595-4884-8cec-facbb42b0ad9', '1', '三等奖', '370', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '3');
INSERT INTO `lottery_record` VALUES ('cf3e7647-e321-493c-b357-b6cb7b4f18e7', '1', '三等奖', '6756', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '3');
INSERT INTO `lottery_record` VALUES ('9ec7f911-fdf7-4e55-9d13-72622daebb78', '1', '三等奖', '6933', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '3');
INSERT INTO `lottery_record` VALUES ('8ac84fb3-debc-4366-a939-aee8874a0424', '1', '三等奖', '1246', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '3');
INSERT INTO `lottery_record` VALUES ('b8611dad-cdee-4199-a019-1ef5eb7350bf', '1', '二等奖', '5307', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '2');
INSERT INTO `lottery_record` VALUES ('0b147001-049d-45c8-a582-c1eb86204ce7', '1', '三等奖', '7195', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '3');
INSERT INTO `lottery_record` VALUES ('ecf5fd8d-415d-4022-9647-59f7261e3642', '1', '三等奖', '6654', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '3');
INSERT INTO `lottery_record` VALUES ('4f7a7938-eaa5-4ee1-a33f-16f6c7cdaac5', '1', '三等奖', '4524', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '3');
INSERT INTO `lottery_record` VALUES ('6dc4fea3-2726-42cb-8065-bda7ee160060', '1', '二等奖', '9710', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '2');
INSERT INTO `lottery_record` VALUES ('57946872-f19b-47dc-a421-537e8122bc44', '1', '三等奖', '2208', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '3');
INSERT INTO `lottery_record` VALUES ('f4683949-2d7a-4dc8-8ae4-46021b329d52', '1', '三等奖', '6318', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '3');
INSERT INTO `lottery_record` VALUES ('7f33350b-dec3-4120-bcfd-bb654f6831c3', '1', '三等奖', '7672', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '3');
INSERT INTO `lottery_record` VALUES ('793c5d36-6fb9-4560-bd3b-effd0fd9dd21', '1', '二等奖', '9064', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '2');
INSERT INTO `lottery_record` VALUES ('957abdff-eea3-41e4-9316-9c8251d18669', '1', '三等奖', '8363', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '3');
INSERT INTO `lottery_record` VALUES ('c21be762-6a26-4081-833c-2319c540af0d', '1', '三等奖', '2931', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '3');
INSERT INTO `lottery_record` VALUES ('dec86de2-328b-466a-b717-07adf6b2a706', '1', '二等奖', '3987', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '2');
INSERT INTO `lottery_record` VALUES ('ad8d77c2-7114-44b0-b66b-6a21f63d62ee', '1', '二等奖', '8018', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '2');
INSERT INTO `lottery_record` VALUES ('8408d2dc-ed07-48bb-baf9-9d1456d83179', '1', '三等奖', '4788', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '3');
INSERT INTO `lottery_record` VALUES ('fc3493e4-783e-464f-a73e-9302a0375241', '1', '三等奖', '7972', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '3');
INSERT INTO `lottery_record` VALUES ('186062fd-4b7e-4ec6-8966-f773ee841a4c', '1', '二等奖', '2403', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '2');
INSERT INTO `lottery_record` VALUES ('ab640352-98ca-4d5f-b3a0-5abf5a9377fe', '1', '三等奖', '3512', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '3');
INSERT INTO `lottery_record` VALUES ('398ccca3-d0b8-49d6-9714-ec7cee857697', '1', '三等奖', '9308', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '3');
INSERT INTO `lottery_record` VALUES ('56b09748-fee9-4678-bad9-1ac4332c6d50', '1', '三等奖', '7991', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '3');
INSERT INTO `lottery_record` VALUES ('c14062fe-3196-4c8f-90ab-cd3c9b69a65c', '1', '二等奖', '7284', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '2');
INSERT INTO `lottery_record` VALUES ('1097a2c6-fa4a-4cc5-8540-109f08290a45', '1', '二等奖', '4733', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '2');
INSERT INTO `lottery_record` VALUES ('5bb1c9c4-2aa1-44f0-a2cf-a5e716e20a56', '1', '二等奖', '1165', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '2');
INSERT INTO `lottery_record` VALUES ('63eaf7fb-b6b3-4fc3-812e-ad022e079b17', '1', '三等奖', '1913', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '3');
INSERT INTO `lottery_record` VALUES ('542d5c8e-e2fb-45df-8e70-8689ba6be7d6', '1', '一等奖', '73', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '1');
INSERT INTO `lottery_record` VALUES ('e340bbd6-6d83-4b69-b028-07fb32bac063', '1', '三等奖', '9271', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '3');
INSERT INTO `lottery_record` VALUES ('77552d3e-8c5e-4df3-b8e9-620d355a42fd', '1', '二等奖', '9725', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '2');
INSERT INTO `lottery_record` VALUES ('84880214-a0eb-4a35-abc0-c8aa881fe4df', '1', '三等奖', '2371', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '3');
INSERT INTO `lottery_record` VALUES ('3ca4d8f2-9011-4d38-9a30-9096b09634a1', '1', '二等奖', '6285', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '2');
INSERT INTO `lottery_record` VALUES ('cc377760-8272-4fba-b541-41226db6ec98', '1', '二等奖', '2124', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '2');
INSERT INTO `lottery_record` VALUES ('126a27a8-4a66-47b5-b904-eea4fde1eee2', '1', '二等奖', '1578', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '2');
INSERT INTO `lottery_record` VALUES ('8a4c5cc5-e2d5-4cff-9bf9-3f29b1af0e61', '1', '三等奖', '4969', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '3');
INSERT INTO `lottery_record` VALUES ('9689d47a-406f-46a6-8953-038c00e2db5f', '1', '三等奖', '7060', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '3');
INSERT INTO `lottery_record` VALUES ('549405e4-9b3c-42ff-9a16-f29bf458e438', '1', '三等奖', '4767', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '3');
INSERT INTO `lottery_record` VALUES ('52dcc593-7667-47ef-858c-8aa2347be9f6', '1', '三等奖', '2385', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '3');
INSERT INTO `lottery_record` VALUES ('2643f590-cb8c-4440-971e-2471137244e8', '1', '三等奖', '3062', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '3');
INSERT INTO `lottery_record` VALUES ('dcbff18e-3ba2-4d2f-b5b0-376c46f798a9', '1', '三等奖', '2959', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '3');
INSERT INTO `lottery_record` VALUES ('29a45a4d-dfcc-49c4-8fef-e2403c263125', '1', '三等奖', '2202', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '3');
INSERT INTO `lottery_record` VALUES ('ed28e7df-d56c-46ac-a9aa-67e010873420', '1', '三等奖', '7966', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '3');
INSERT INTO `lottery_record` VALUES ('24441999-0de5-4281-9107-6abc66e2f88e', '1', '三等奖', '2306', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '3');
INSERT INTO `lottery_record` VALUES ('12b788a4-2bfb-424d-9ba7-ae16d5f15848', '1', '三等奖', '2897', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '3');
INSERT INTO `lottery_record` VALUES ('f5f09582-eabd-4a6a-a043-3c3a109b6c43', '1', '三等奖', '5795', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '3');
INSERT INTO `lottery_record` VALUES ('356c1bcf-5b45-4e85-bd9a-8c04beb64937', '1', '三等奖', '2384', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '3');
INSERT INTO `lottery_record` VALUES ('5c45e59b-10c1-469d-a94f-a27d70e63107', '1', '三等奖', '1970', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '3');
INSERT INTO `lottery_record` VALUES ('aa395ec4-f430-46c5-94d9-0a6b8b20901e', '1', '三等奖', '8256', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '3');
INSERT INTO `lottery_record` VALUES ('78db9793-6185-45c0-be11-bc54386c3dd1', '1', '三等奖', '5428', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '3');
INSERT INTO `lottery_record` VALUES ('d993d0a2-7eba-45be-8a5f-32588adc3eef', '1', '三等奖', '3030', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '3');
INSERT INTO `lottery_record` VALUES ('c94d3533-8ee9-472f-88d6-09d42c64cb2e', '1', '三等奖', '8509', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '3');
INSERT INTO `lottery_record` VALUES ('71460ec8-895d-4f78-904f-0c100b90d09c', '1', '三等奖', '1030', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '3');
INSERT INTO `lottery_record` VALUES ('b44bcb70-8e8b-46f4-b136-5ae4eec99554', '1', '三等奖', '5791', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '3');
INSERT INTO `lottery_record` VALUES ('29810ae7-eed0-4a5b-9b22-9aa0dda55d5b', '1', '三等奖', '3449', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '3');
INSERT INTO `lottery_record` VALUES ('926402d7-6e03-4531-8f74-5992e6fcea1c', '1', '三等奖', '8217', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '3');
INSERT INTO `lottery_record` VALUES ('ea4a393c-1ebc-496e-adc5-84b7936b6ec5', '1', '三等奖', '1578', '2019-01-13 20:12:35', '2019-01-13 20:12:35', '3');

-- ----------------------------
-- Table structure for sk_goods
-- ----------------------------
DROP TABLE IF EXISTS `sk_goods`;
CREATE TABLE `sk_goods` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '商品ID',
  `goods_name` varchar(30) DEFAULT NULL COMMENT '商品名称',
  `goods_title` varchar(64) DEFAULT NULL COMMENT '商品标题',
  `goods_img` varchar(64) DEFAULT NULL COMMENT '商品图片',
  `goods_detail` longtext COMMENT '商品详情',
  `goods_price` decimal(10,2) DEFAULT NULL,
  `goods_stock` int(11) DEFAULT '0' COMMENT '商品库存，-1表示没有限制',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sk_goods
-- ----------------------------
INSERT INTO `sk_goods` VALUES ('1', 'iphoneX', 'Apple/苹果iPhone X 全网通4G手机苹果X 10', '/img/iphonex.png', 'Apple/苹果iPhone X 全网通4G手机苹果X 10', '7788.00', '100');
INSERT INTO `sk_goods` VALUES ('2', '华为 Mate 10', 'Huawei/华为 Mate 10 6G+128G 全网通4G智能手机', '/img/meta10.png', 'Huawei/华为 Mate 10 6G+128G 全网通4G智能手机', '4199.00', '50');

-- ----------------------------
-- Table structure for sk_goods_seckill
-- ----------------------------
DROP TABLE IF EXISTS `sk_goods_seckill`;
CREATE TABLE `sk_goods_seckill` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '秒杀商品id',
  `goods_id` bigint(20) DEFAULT NULL COMMENT '商品id',
  `seckill_price` decimal(10,2) DEFAULT '0.00' COMMENT '秒杀价',
  `stock_count` int(11) DEFAULT NULL COMMENT '库存数量',
  `start_date` datetime DEFAULT NULL COMMENT '秒杀开始时间',
  `end_date` datetime DEFAULT NULL COMMENT '秒杀结束时间',
  `version` int(11) DEFAULT NULL COMMENT '并发版本控制',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sk_goods_seckill
-- ----------------------------
INSERT INTO `sk_goods_seckill` VALUES ('1', '1', '0.01', '0', '2018-05-22 17:22:52', '2018-05-22 18:23:00', '1');
INSERT INTO `sk_goods_seckill` VALUES ('2', '2', '0.01', '8', '2018-04-29 22:56:10', '2018-05-01 22:56:15', '0');

-- ----------------------------
-- Table structure for sk_order
-- ----------------------------
DROP TABLE IF EXISTS `sk_order`;
CREATE TABLE `sk_order` (
  `id` varchar(40) NOT NULL,
  `user_id` varchar(20) DEFAULT NULL,
  `order_id` varchar(40) DEFAULT NULL,
  `goods_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_uid_gid` (`user_id`,`goods_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sk_order
-- ----------------------------
INSERT INTO `sk_order` VALUES ('2dc5d1b1-b535-43b7-b0ea-654cc6290936', '769', '12b82cba-8687-431c-9cff-31b2646c08d2', '1');
INSERT INTO `sk_order` VALUES ('973d8652-b7db-45e8-afe8-bd4928b8c21b', '338', '777aeaee-d432-4d20-99a3-fddbd1986b3f', '1');
INSERT INTO `sk_order` VALUES ('9c4dd337-a212-478e-9ac3-602c6d7edec9', '4545', '61d7a234-f005-4f68-b7c6-7c8b9f2791ac', '1');
INSERT INTO `sk_order` VALUES ('9d60e510-d82b-41dc-9b9a-817181909d23', '8784', 'fc598126-ca6d-4fd9-a220-b59eeb8a7a2e', '1');
INSERT INTO `sk_order` VALUES ('a9ac8a65-89aa-46b3-92c8-79a39c2c6a27', '7702', '9c3bb3cf-a9ed-4ca2-8c29-9aebd071dff7', '1');
INSERT INTO `sk_order` VALUES ('c0a735f0-1aef-49a8-97c0-cb865279ccf7', '8948', '8c0ebc84-ae38-4f15-b5ac-1c6d47644caa', '1');
INSERT INTO `sk_order` VALUES ('c0c1dfc9-3cad-4313-9031-0db71de869b7', '1343', 'ad9fcef2-2ea7-48c9-a55a-cf719f4139aa', '1');
INSERT INTO `sk_order` VALUES ('df796790-9976-4603-9411-0b999b6f174e', '6377', 'efc70c0b-fbab-4a4c-b3e5-55586b2b248b', '1');
INSERT INTO `sk_order` VALUES ('f502b10f-22b3-40b1-a900-db6557764623', '7893', 'ee92d272-4ac3-48df-af4c-255d83a3d1cd', '1');

-- ----------------------------
-- Table structure for sk_order_info
-- ----------------------------
DROP TABLE IF EXISTS `sk_order_info`;
CREATE TABLE `sk_order_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `goods_id` bigint(20) DEFAULT NULL,
  `delivery_addr_id` bigint(20) DEFAULT NULL,
  `goods_name` varchar(30) DEFAULT NULL,
  `goods_count` int(11) DEFAULT NULL,
  `goods_price` decimal(10,2) DEFAULT NULL,
  `order_channel` tinyint(4) DEFAULT NULL COMMENT '订单渠道，1在线，2android，3ios',
  `status` tinyint(4) DEFAULT NULL COMMENT '订单状态，0新建未支付，1已支付，2已发货，3已收货，4已退款，5已完成',
  `create_date` datetime DEFAULT NULL,
  `pay_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sk_order_info
-- ----------------------------
INSERT INTO `sk_order_info` VALUES ('10', '18718185897', '1', null, 'iphoneX', '1', '7788.00', '1', '0', '2018-05-29 17:02:00', null);
INSERT INTO `sk_order_info` VALUES ('11', '18217272828', '1', null, 'iphoneX', '1', '7788.00', '1', '0', '2018-12-12 22:59:16', null);

-- ----------------------------
-- Table structure for sk_project
-- ----------------------------
DROP TABLE IF EXISTS `sk_project`;
CREATE TABLE `sk_project` (
  `project_id` varchar(40) DEFAULT NULL,
  `project_name` varchar(40) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `is_active` varchar(1) DEFAULT NULL,
  `goods_id` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sk_project
-- ----------------------------
INSERT INTO `sk_project` VALUES ('1', '测试1', '2019-01-03 19:38:43', '2019-01-27 20:38:48', '2019-01-03 20:38:52', '2019-01-03 20:38:54', '1', '1');

-- ----------------------------
-- Table structure for sk_user
-- ----------------------------
DROP TABLE IF EXISTS `sk_user`;
CREATE TABLE `sk_user` (
  `id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `nickname` varchar(255) NOT NULL COMMENT '昵称',
  `password` varchar(32) DEFAULT NULL COMMENT 'MD5(MD5(pass明文+固定salt)+salt',
  `salt` varchar(10) DEFAULT NULL COMMENT '混淆盐',
  `head` varchar(128) DEFAULT NULL COMMENT '头像，云存储的ID',
  `register_date` datetime DEFAULT NULL COMMENT '注册时间',
  `last_login_date` datetime DEFAULT NULL COMMENT '上次登录时间',
  `login_count` int(11) DEFAULT NULL COMMENT '登录次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sk_user
-- ----------------------------
INSERT INTO `sk_user` VALUES ('18181818181', 'jesper', 'b7797cce01b4b131b433b6acf4add449', '1a2b3c4d', null, '2018-05-21 21:10:21', '2018-05-21 21:10:25', '1');
INSERT INTO `sk_user` VALUES ('18217272828', 'jesper', 'b7797cce01b4b131b433b6acf4add449', '1a2b3c4d', null, '2018-05-21 21:10:21', '2018-05-21 21:10:25', '1');
