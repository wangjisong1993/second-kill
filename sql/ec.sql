/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : ec

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2019-01-29 18:32:22
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
-- Table structure for card_logs
-- ----------------------------
DROP TABLE IF EXISTS `card_logs`;
CREATE TABLE `card_logs` (
  `log_id` varchar(40) DEFAULT NULL COMMENT '记录id',
  `template_id` varchar(40) DEFAULT NULL COMMENT '模板id',
  `user_id` varchar(40) DEFAULT NULL COMMENT '用户id',
  `card_id` varchar(40) DEFAULT NULL COMMENT '卡id',
  `card_status` varchar(1) DEFAULT NULL COMMENT '卡状态',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of card_logs
-- ----------------------------
INSERT INTO `card_logs` VALUES ('618b0111-c1de-4353-8a8a-c7659bea8d98', '5', '5', '65aa38f0-362a-4180-a7a0-a39abd39cc6b', '0', '2019-01-29 10:58:09', '2019-01-29 11:14:32');
INSERT INTO `card_logs` VALUES ('36a3023e-68dd-47eb-b2f9-23b4e09937ab', '5', '5', '4002f119-c643-406c-9ac8-76e84a2184c7', '1', '2019-01-29 10:58:30', '2019-01-29 11:52:34');
INSERT INTO `card_logs` VALUES ('b8586ef1-7798-4e71-a728-06f767aa9cd8', '5', '2', '67ab64a3-67af-4eb9-baa5-57b3cfda7285', '1', '2019-01-29 11:02:06', '2019-01-29 11:02:06');
INSERT INTO `card_logs` VALUES ('8574cd24-6805-4485-ac40-cb71383fd378', '1', '2', '632020de-ad83-49d9-a578-c8243e0d8824', '1', '2019-01-29 11:03:21', '2019-01-29 11:03:21');
INSERT INTO `card_logs` VALUES ('776f3f33-18ce-44d5-9970-a0d88bc9f238', '2', '5', 'dd821a24-de0b-47c9-a103-2ab7a829bea4', '2', '2019-01-29 11:04:30', '2019-01-29 11:54:26');
INSERT INTO `card_logs` VALUES ('8ff4be8b-b0ca-4159-9659-d208791f7d44', '1', '5', '4eb86541-e352-4fdb-a8ec-b08ce0bb3484', '1', '2019-01-29 11:04:34', '2019-01-29 11:24:55');
INSERT INTO `card_logs` VALUES ('4676da53-4a10-4037-bf53-f545f707f7ff', '3', '5', '36c7938f-1371-4555-94a0-7bf3fc95441d', '2', '2019-01-29 11:04:41', '2019-01-29 11:54:26');
INSERT INTO `card_logs` VALUES ('c14bf02d-de7a-4560-a8cb-277bae582534', '1', '5', 'af5a696d-078d-43d6-9925-9233999d76c0', '2', '2019-01-29 11:04:43', '2019-01-29 11:54:26');
INSERT INTO `card_logs` VALUES ('3f52237c-cdf4-4e19-ac12-fefe739f3511', '2', '6', '375fe80f-3514-4c02-8a02-df48ea18ba26', '1', '2019-01-29 11:21:43', '2019-01-29 11:21:43');
INSERT INTO `card_logs` VALUES ('807126d5-75c4-44b7-8fbb-80567fc04716', '1', '7', '643e8b9c-26b7-4cbd-9924-cd3f7d3ad8cf', '1', '2019-01-29 11:21:50', '2019-01-29 11:21:50');
INSERT INTO `card_logs` VALUES ('3bb32363-e228-4a27-a42e-a6b71485f057', '4', '5', '7503e785-c87f-4fdb-b438-3b4d39f6973e', '2', '2019-01-29 11:21:53', '2019-01-29 11:54:26');
INSERT INTO `card_logs` VALUES ('8dd68a3a-10e7-4c6e-bfcb-f04d0060c83b', '4', '8', 'beda4878-5a62-4265-b77e-97314593291d', '1', '2019-01-29 11:21:55', '2019-01-29 11:21:55');
INSERT INTO `card_logs` VALUES ('f100f488-58fe-4c0f-80c0-23f135f350a1', '7', '5', 'f6205c8a-6e6f-4133-a9dd-d88aa1c2bea6', '2', '2019-01-29 11:52:34', '2019-01-29 11:54:26');
INSERT INTO `card_logs` VALUES ('f100f488-58fe-4c0f-80c0-23f135f350a2', '6', '4', 'f100f488-58fe-4c0f-80c0-23f135f350a2', '3', '2019-01-29 11:53:43', '2019-01-29 14:47:42');
INSERT INTO `card_logs` VALUES ('c734951b-6a36-477a-bb2b-87b1ea986983', '7', '5', '6c49c7fc-aa8e-4df2-a370-c004e617e16f', '1', '2019-01-29 11:54:26', '2019-01-29 11:54:26');
INSERT INTO `card_logs` VALUES ('405bff00-44ac-4a06-9ce1-4a55d5d5169f', '2', '9', '93d3c6af-b8f0-4e11-86e9-95dfb73d44f4', '1', '2019-01-29 14:50:39', '2019-01-29 14:50:39');
INSERT INTO `card_logs` VALUES ('0f11c9f3-c3f0-4f2e-885f-7dd41a2b4339', '3', '9', 'fc30fecb-288a-4a39-ada9-dec14b8cfc69', '1', '2019-01-29 14:50:44', '2019-01-29 14:50:44');
INSERT INTO `card_logs` VALUES ('45c3756c-dcbc-44d0-932e-b8364c2c5d70', '2', '30', '4ef6a4fa-a06b-4f67-ba94-67a5b91e4a32', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('f1396563-edb8-470c-9f29-a85db95c4b30', '2', '46', '018ccfaf-a36a-48bf-b1a5-6c5c13c63f18', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('b51b62d9-efde-4321-8724-30d109d6c81e', '2', '47', '8aa562a5-a65e-4a53-ae10-e1fa8ae912a7', '1', '2019-01-29 14:59:58', '2019-01-29 14:59:58');
INSERT INTO `card_logs` VALUES ('01f405f4-16b4-4f11-8e92-8e5ea1b93069', '1', '99', 'a922c9cc-7e6d-4b5f-98f5-e0801d1b4620', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('37c48ecf-bccc-41c7-8ae2-9e1edb3861ce', '1', '53', 'c28bef5b-7b09-42f5-a056-116466b9e39c', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('567b8267-cc60-4ab4-90e6-19475f68adb4', '1', '5', '20ce946f-8bf4-444e-b546-e5289a740abf', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('cf40faf4-c4e3-4704-a5f3-bc2324990322', '2', '98', 'e23e9d7b-73b7-4b1a-bc69-846e890d38b6', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('5917de9a-8b30-4e74-a131-14fb9bebef99', '1', '7', 'bb7e37e8-1d82-4dc7-98e6-e8a0dcdff18e', '1', '2019-01-29 14:59:58', '2019-01-29 14:59:58');
INSERT INTO `card_logs` VALUES ('db556304-4208-4290-bd39-1e76ff7cf466', '2', '33', '3b80ddf9-8f3c-4dea-a6ee-c74d1d9868cd', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('89f5e515-14f0-4db4-967f-34e6bd3c1cfa', '1', '13', '18845b46-384f-4bf0-9a51-7928e4a0b7c4', '1', '2019-01-29 14:59:58', '2019-01-29 14:59:58');
INSERT INTO `card_logs` VALUES ('78b0098b-07b2-4b65-aa22-41a34059bcbe', '4', '97', '50b26379-80dd-4bd8-a6bc-0bf8791c20cc', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('536ed38f-d870-4552-b5be-10fc3e552e36', '2', '16', '5ef857bc-f1e6-4e13-9bd0-2859288bd00b', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('53d44346-9e70-4b22-b905-9f3759407a85', '2', '88', 'c79580d5-20b3-44fe-8b64-786fec6251fa', '1', '2019-01-29 14:59:58', '2019-01-29 14:59:58');
INSERT INTO `card_logs` VALUES ('6e2b4d01-302b-4a16-a1a0-df03511d475f', '3', '71', '98512757-2466-4ccc-a09f-e1ba163cc570', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('c6859324-af46-41dd-9f3c-2923b2f35fb0', '2', '43', 'f6bec76c-df21-496c-98c7-0a5528822d57', '1', '2019-01-29 14:59:58', '2019-01-29 14:59:58');
INSERT INTO `card_logs` VALUES ('4dcbfa07-4164-45c8-b15c-6700d6b2806f', '4', '64', 'fab20510-af6f-42a3-8351-ce23cc944056', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('ebe2222f-2ba7-4146-8f39-aa70148d9c2c', '3', '58', '06c22703-7bb8-4487-8d7e-9313c55978a4', '1', '2019-01-29 14:59:58', '2019-01-29 14:59:58');
INSERT INTO `card_logs` VALUES ('0b1dea69-1e1c-46ca-b23f-e1bcf9dd0d32', '4', '14', '43db3c21-d37a-4361-bbd2-92b8b697d943', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('4bff17f9-c9b2-42f2-9fda-d94f1d60cda5', '4', '27', '72892980-245f-4dff-b8e8-0675f1e4dba2', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('8c54e00a-297c-4399-b215-50bf1703f56a', '1', '37', '34d93378-3807-40ff-8f85-79fb0901cf63', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('626780b2-2f54-4c58-afd9-30dc50ffded1', '2', '84', '288001b2-6c3f-4d02-834c-6fc92c663289', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('73190647-3bbb-471c-8326-66ad1b72bb79', '1', '95', 'e261d8d1-990f-40a2-abec-486aa9cd0e78', '1', '2019-01-29 14:59:58', '2019-01-29 14:59:58');
INSERT INTO `card_logs` VALUES ('cdbde5a6-6322-4861-ad23-7c9fce58fcc4', '1', '12', 'd1c2ce1d-ef39-414d-bb38-6bf28ee72d8c', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('f0fbe1a2-ea53-4066-8cc2-da56e4f32b81', '3', '60', '839bb179-d595-43b2-9d21-f5086023a3f0', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('55e5559a-2813-4617-a6f8-6dc567bdf986', '2', '76', '2b732dd0-de08-458d-9d3f-f23fb8bfeb54', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('99170493-969f-4537-acf9-3925998c932b', '4', '35', 'ee5640ff-cb3f-41a8-87a1-22e664f6519a', '1', '2019-01-29 15:00:00', '2019-01-29 15:00:00');
INSERT INTO `card_logs` VALUES ('7223924f-1a10-476c-a044-5badf027a084', '2', '51', '4de20fd1-d214-4c3a-b512-5e4678c9c9b9', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('4a55aa7a-a080-4d6c-8c8f-bf2c7931eefd', '2', '29', 'cd2d7ecd-9b12-4990-9899-080bbff25149', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('fc498833-f089-4805-bf43-eba17a0f4547', '3', '89', 'ee11a476-cbf4-4b37-867f-1212a7e6c40d', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('0ebb9f4a-4545-4123-ac4b-27b8e07e410f', '2', '74', '0b3713fe-6327-42ad-8fb5-54e4ec0dd358', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('cd4bff1b-64d8-40f8-9ac9-743aa122e213', '2', '39', '3e2fda7e-2c73-4f7f-89a7-e536c6fb4362', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('54a1b37c-2c47-4a24-b76d-bd75f9f968be', '1', '15', 'b19dc09a-989f-44b8-b7fc-ed98edd0132f', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('bb3b8b8a-32a5-4544-8589-2c848b23e520', '4', '19', '0ff564b7-11b8-4e1e-811e-86723cd6549e', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('8950be14-ce70-45aa-b754-efbb742051fd', '4', '70', '6417d249-eb28-44aa-bc53-14a2e6d76011', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('3727daea-e830-4354-8f85-8225e395354c', '2', '54', '56162d4f-eede-4db2-9109-d706dccbddbc', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('6561b401-1ab4-4f04-a66d-67c3581a6bf2', '2', '49', 'b22b005d-2a78-4a36-9445-4c6481d4c395', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('9d5a3bbd-89b5-40d5-a7f8-3ee82dff7b54', '3', '44', '50619bc3-2e92-423f-892f-6945615f98d9', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('f484660d-0395-4326-b4f3-20b2c298972f', '1', '68', '7e7f5680-7f39-4a45-b5b3-d0499c8a7300', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('3cf84e77-5763-40cf-a63b-8fec2e7fc2da', '2', '85', '0f75224c-4e8a-4274-b9c4-bc4d1c305387', '1', '2019-01-29 14:59:58', '2019-01-29 14:59:58');
INSERT INTO `card_logs` VALUES ('fe182f8a-d6ea-4382-8537-457cc6ff20ae', '1', '66', 'cfef9fec-43b5-4ad9-a9a9-2cdccecf6d8b', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('e5867dd6-c566-4a89-9e8d-e7b541799ab9', '1', '18', 'bd8c0272-fe3a-4443-a18a-7503770f3078', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('929ea9e8-7354-449f-b37b-1d662f62a0c8', '4', '90', '0558b875-a442-4527-9255-d6c50173af27', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('4e46c272-eb8f-41e8-8c6b-0dcea2c62cb1', '1', '0', 'c647eb04-fe71-43ac-9025-e885a17b9c77', '1', '2019-01-29 14:59:58', '2019-01-29 14:59:58');
INSERT INTO `card_logs` VALUES ('2a53af0d-86f5-492c-a3b4-c9a151708448', '1', '61', '0f75b0ed-01dd-4d3f-930d-d551fc955c38', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('f348c8f0-ed06-4496-9da5-2621e001decc', '2', '11', 'fc4fa716-7dad-471c-85d8-fa40fe8e58c9', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('86c662f3-8ae5-455b-b826-c6e06e5ddfd5', '2', '94', '7bf72901-c24d-4a53-90c9-1f54295aee8d', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('e2b65691-0cc8-492d-aca1-f676d0a51f38', '1', '45', '836c11c2-4f7c-4ab1-a5fd-5383f7b5be57', '1', '2019-01-29 14:59:58', '2019-01-29 14:59:58');
INSERT INTO `card_logs` VALUES ('07fd079d-fa8b-4ea2-9258-340b9ba29c5c', '4', '34', 'efc5feb2-3e56-4731-bda5-db997c1b6c14', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('fed042d7-3d81-453c-aa8a-fe913f70edad', '2', '57', '5c22a8ff-4960-481f-80bd-8c10e9c72a81', '1', '2019-01-29 14:59:58', '2019-01-29 14:59:58');
INSERT INTO `card_logs` VALUES ('3905f4d6-5e86-4018-a4d0-edc228c80397', '2', '79', '385cec66-f558-4ea7-a9bf-cb3be3666980', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('d10523fd-70b9-4087-856b-7e0f94a5c838', '2', '91', 'cd7d40c5-b921-43a0-8029-1751b91de56e', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('00ce843d-d6da-4c65-8ff4-058861c9a164', '1', '40', 'c3adf366-6f6b-4720-9bd8-ffd952810aa9', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('e26293e1-ed20-427b-801e-221148140038', '1', '80', 'baec3a25-4070-4728-a3c1-09cb933a8951', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('54e4fcc0-460a-4f78-818a-1ca5db95ea8c', '3', '24', '1e970c14-7f61-4495-8a2b-49384ec71ed4', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('276e5132-d4ae-4062-94c4-c362d7a408ca', '4', '78', 'c11a4d47-7392-4735-bfe8-27b510ae8dfe', '1', '2019-01-29 14:59:58', '2019-01-29 14:59:58');
INSERT INTO `card_logs` VALUES ('2d5d6761-7bc1-4934-86da-3458774f8982', '4', '83', '7be5d83b-cd8c-40e7-8a7d-ac6ae6ded6ff', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('8a9dbecf-ebc0-4eb0-8f12-19c60bfab4a0', '4', '28', '1e29f259-7b14-4fe8-aac7-eb67fc09aef6', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('4ac518b8-d4e1-4647-8cfe-86ae7908c224', '2', '36', '50a60534-5138-4d7b-8b48-386870889058', '1', '2019-01-29 14:59:58', '2019-01-29 14:59:58');
INSERT INTO `card_logs` VALUES ('00db36f8-fb4a-4a33-9833-a6f05cf80c60', '2', '77', 'd248b2da-2ffd-40f5-846f-7e5dfddbacc9', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('5101baf6-4258-43d2-a780-b3218b64b137', '4', '52', '467a0ec0-e187-47fa-b84c-ad54e261eb35', '1', '2019-01-29 14:59:58', '2019-01-29 14:59:58');
INSERT INTO `card_logs` VALUES ('1faac346-34a2-46a7-b956-d4f9da428799', '1', '21', 'a2b354e0-10a8-4f8b-bcf6-8132ac3ec2a9', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('d010cd30-5e15-40cc-ab6c-fe1625c46c93', '1', '81', 'f80e3eca-87d7-4232-bf36-ef1e0870ef29', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('3aca9228-8d0a-4e86-9f38-336c0fcaff45', '1', '62', 'b3183c19-814d-4285-9c3d-d438b1e042bf', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('8eeac84f-647d-4f24-a474-717cddedf834', '1', '65', '618aa98f-5074-4b64-bece-43ea79fc0db6', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('74437967-3b7c-4c0a-982f-527dc2e1f669', '3', '86', 'f338c4ef-aac0-4e09-b3fc-69c294848d8b', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('4969ecba-439a-41a0-bdfc-540e5075e0e4', '4', '41', '36ff8ba8-a518-4f02-b4ca-19cf309554f6', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('86080440-2238-46a3-ab77-5d1c54992e4f', '1', '75', 'ce26a202-0511-452f-baa2-8cb06c8c7e99', '1', '2019-01-29 14:59:58', '2019-01-29 14:59:58');
INSERT INTO `card_logs` VALUES ('6464866e-4570-41ea-81b9-206269945136', '2', '56', 'b355e7e1-1a72-4825-b476-53d717b5d4a6', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('0fdf4527-75f7-4cd6-bdbb-d057c8a40ff8', '1', '25', 'e93afead-6a43-43ac-b215-bc6c0102d3e5', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('4d4ff6b3-eb0f-48ae-a024-7d56ed2b0bac', '1', '38', '07a0316d-adf9-4296-961e-4f04a0eb9833', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('f1b4dbbc-2f92-4cb6-8695-5021e6e122c4', '1', '10', 'b5de8f0f-afd0-4870-a03f-2bedb1d3c55a', '1', '2019-01-29 14:59:58', '2019-01-29 14:59:58');
INSERT INTO `card_logs` VALUES ('1a3d3478-ff78-495a-bb32-053215d9a3d9', '2', '69', '458a8e3c-ff41-4a82-9033-e694e821e40a', '1', '2019-01-29 14:59:58', '2019-01-29 14:59:58');
INSERT INTO `card_logs` VALUES ('f326c482-7898-4746-9f0e-7394e56fe04b', '1', '55', '0613b32a-1b08-46ee-9e94-548f6d0b5ec9', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('26a78606-b2eb-40d8-8347-c8422080ab41', '1', '72', '5c254aa1-de09-4d42-8817-809439410a23', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('d4cb3458-3e86-421c-936d-a5401bfe555c', '1', '63', 'a2a87c47-d137-4bae-9f1f-6d4901d5ad20', '1', '2019-01-29 14:59:58', '2019-01-29 14:59:58');
INSERT INTO `card_logs` VALUES ('3169135b-cdb6-42e5-bc4b-b4bf78d1fef5', '2', '42', '3efb2305-345e-46f2-a26e-7ec73504ee2c', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('cddb0ab4-70d7-4e98-a7a6-a0e2d23baf00', '3', '22', '26705ef1-602c-49fe-85d5-3306e71092fb', '1', '2019-01-29 14:59:58', '2019-01-29 14:59:58');
INSERT INTO `card_logs` VALUES ('beeedc67-11bb-43be-9e01-92ae2ccbee04', '4', '32', '5ffc3614-f858-4465-9918-b1548d21edc3', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('c197d989-c171-4553-9f9b-757ef2e27e48', '2', '31', '9b755f96-5eb2-4cc8-a097-fefc428786bc', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('0f9f60ef-07b0-4858-bba2-d3f4b1753c0d', '1', '23', '5d227d7d-6912-4c52-8405-e7388783681d', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('e38ab264-9363-447a-a637-98d732c76eb1', '1', '92', 'e819765f-bbec-4a00-80c4-a4cc15c48431', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('659317d8-69e9-40ea-8257-a269746b1b69', '1', '67', '7cacda9e-8094-47c2-a5d5-6068fab81fd5', '1', '2019-01-29 14:59:59', '2019-01-29 14:59:59');
INSERT INTO `card_logs` VALUES ('dc3bd7dc-dba9-40b0-a4be-54719aa19f0a', '2', '53', 'a6747116-6a28-41c0-bc24-8e0bc33fb21d', '1', '2019-01-29 15:02:43', '2019-01-29 15:02:43');
INSERT INTO `card_logs` VALUES ('7ca49787-f3f8-4dc3-9798-19386e476a17', '1', '52', '0930f53a-bac0-4806-b026-9ff3616436cc', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('d7b25eb4-328e-41ca-b983-b4b29d2ff3db', '2', '57', '4c5d2165-2cab-4909-89af-cb4046a83b06', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('a1cb4588-7512-4918-9375-a20177d3b5ed', '1', '85', 'b9169f1b-2b73-45ee-be55-ee24c148f871', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('c42541f5-afc2-4571-8214-7147f2aaf9e6', '2', '78', 'cc2deafd-a808-41b9-a83a-c027da97b34f', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('7e8670bc-9b4c-4583-b972-8ded15c5e8f9', '1', '44', '4310a5c9-6112-4458-9d05-3e8113a1e763', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('5f6d4c19-63b7-4b83-80f7-178317738428', '1', '14', 'ec367915-25d5-45a2-9e8f-44d18590f831', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('49727ae5-1267-40f3-8fc8-73dd80e731a8', '3', '71', '218eecb9-4af3-44f3-9b63-13324d5143b6', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('c3a247a2-72d3-4612-bffb-79b48675af64', '1', '89', 'efbac27f-513b-4187-b594-b86bc7da201b', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('0bcb01d7-e9a0-4750-bb58-ebcafa2f766e', '2', '98', '33a2b1e8-de74-417d-ac7c-dc2408e95951', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('b2d93629-9269-4f1b-a9d5-91fda209b2ae', '1', '51', 'bc37c1cf-aa71-4f1b-915d-fe00c37f3b8c', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('8ddd046c-b3db-40f1-860b-189b12f4c0d8', '4', '21', '55ab868f-3430-4ce2-be00-97bb39ec465b', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('9fd34593-e683-4282-8970-bbd154423193', '1', '26', '3393bb83-0c76-49ab-b743-51c1499ec27d', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('f455ee20-10ad-4150-b0b5-3762f8914abe', '1', '23', 'ab6f4e80-5be4-415f-bbd9-a940ad8ba2e4', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('e4553b85-309b-4e90-aab9-7cb62e62b289', '2', '22', '928123a4-0edb-408b-a800-608cba23f027', '1', '2019-01-29 15:02:45', '2019-01-29 15:02:45');
INSERT INTO `card_logs` VALUES ('924ac944-ba8c-490f-b671-6a0de5a401cb', '1', '86', '9994c1a2-79d3-4ba8-afc4-4263b51c3875', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('d21ac259-5682-4480-9b6c-edfa23470c65', '2', '17', '0bfd7c12-af30-4891-95aa-e3f3a20a0e91', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('46c04c80-3705-466f-b4b5-aab2571099e0', '4', '36', 'a2e0d813-b66d-498a-ba27-7765fe52faee', '1', '2019-01-29 15:02:45', '2019-01-29 15:02:45');
INSERT INTO `card_logs` VALUES ('ef75e6c6-cedf-44d3-80cc-0638448b3867', '4', '34', '40b481dd-2aa3-4fd2-b1d7-5c985c6f0e9e', '1', '2019-01-29 15:02:45', '2019-01-29 15:02:45');
INSERT INTO `card_logs` VALUES ('3d63c160-9fc3-47df-b795-1d51f604b1a4', '2', '42', '78d4d006-eefb-41a8-8a7b-481980422ffa', '1', '2019-01-29 15:02:45', '2019-01-29 15:02:45');
INSERT INTO `card_logs` VALUES ('815b42b8-ec20-4cb6-8d33-4fd08065ad10', '1', '33', 'bd102aa6-49d6-4d1b-bb5b-37815c40aca2', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('9504b6bf-8eca-4e8d-86c9-6f30e4bb3d50', '2', '75', '576fc5aa-f1a8-413d-8539-c9f553b25d1e', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('0c84f042-e29d-44e7-a350-0a4c69f35307', '1', '95', 'e20ba1b1-2372-4449-b890-1697aa976ba4', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('636fc911-87ee-4e46-9152-e17cf1eb907e', '1', '32', '33df0a0a-1432-4e1f-9d39-aaee5bd95467', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:45');
INSERT INTO `card_logs` VALUES ('ad5f99da-595d-480d-8bfe-046fafb22dd7', '4', '49', 'a51cb027-df6f-4af6-b056-e61ceaa840da', '1', '2019-01-29 15:02:45', '2019-01-29 15:02:45');
INSERT INTO `card_logs` VALUES ('9ed055aa-896a-4ed5-b912-5295919f5161', '3', '82', '6cfd7fbb-f58a-4a19-ba20-eddeae48c1d7', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('6ba05295-2010-43e4-b620-1ecf22912d79', '2', '38', '8a1d9a35-df27-4886-848e-83c56c43d30b', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('82f9e8d2-a38b-499d-920e-11bc240b3f64', '1', '18', 'aff063a3-552a-4eed-b056-1f58be9a4884', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('de96cdc8-3436-483b-a3f8-b25bf9c0adec', '4', '70', '9da43b26-9b7a-48c3-8397-c9a96cdfb5c8', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('779cb154-c385-4887-ba90-7f4d4cecd8e1', '2', '35', '48d46bc5-e32f-42ab-95c7-6e84a2a3ff83', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('729a374d-5700-45ab-82f9-8f63c6cad688', '2', '39', '590da7c8-16f4-436f-b874-ce9f60cf680b', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('b17ba981-1cf5-4040-a0c8-9cefa9bf2a06', '2', '92', '98136d93-c530-436d-8539-14f57a20abaa', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('b68be42b-231a-4296-8929-fc0db6b967a5', '2', '43', 'c7a3e474-c516-44a3-b5a0-204b298d7ddf', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('53e021d5-aaf9-47f3-bd21-0e86157393e9', '2', '94', '025a942b-6182-45fb-87ac-e129fb33d8bb', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('c932a987-07ec-4147-86e6-8d2507067abe', '2', '12', '46cf16b6-002a-4032-b101-8c988627ecc1', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('d4763fc6-d53c-43d3-84af-968129d6a740', '4', '15', '04b8ea9d-98a5-411a-a2e3-066992b7fbbf', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('e097f13c-65aa-48eb-b5d8-af84c1cef12d', '1', '66', '65ce9578-ef37-4881-832e-410587655f74', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('55b4af03-0b12-43f2-a085-baff25da42c2', '4', '73', '100b3b44-7080-403c-b452-403a86252555', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('c7ce062e-a59f-4256-9ab5-3713aef23825', '2', '67', 'ce81be34-3e22-4206-aaa6-11d147621c19', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('43e72160-49db-49f0-bed9-6b9b6b6a92c0', '1', '30', 'ec4816a8-8645-45b7-9335-1e3fd8a8c7f0', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('2cec0da1-f79f-4a0e-8246-b44b76b012d3', '3', '55', 'd7fa22e2-6cd0-4ff9-b8e9-76823d30b472', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('85566ff6-2dbd-4029-91c1-30b394424d49', '1', '63', '201fd085-c50c-4487-94c4-190a435c849c', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('d575abab-6d22-4391-9f8a-319d93f74824', '1', '54', '8d85e91f-e702-428a-b2f4-63908103e4b2', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('a412d513-e7f1-4986-84e6-99b1177c20d1', '1', '83', '19a86cc9-5cc5-42c6-85d4-6501506878ac', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('4eaa0c23-a361-44e0-8ebc-4fbeb5511236', '2', '81', '88780649-7415-4fbf-b469-426281ab8a8b', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('64210478-acf1-4672-ba07-58c7e6e58ecc', '1', '25', '19624d88-4d05-49c2-bed2-3ecc101d08ae', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('f7913052-daf3-4896-8269-eeed77b830c8', '1', '93', '353c4cdd-8076-4e0d-8df0-43907120d390', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('8a229d41-68d5-4fa3-87a7-08933784d134', '1', '47', 'b4239d8b-21cd-4a4b-bea1-5c62b8ef6b0c', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('4a1d48ef-145a-4e6e-8eeb-1b22071e2188', '4', '13', '28e3afd7-7213-4579-bad5-00ded4c97639', '1', '2019-01-29 15:02:45', '2019-01-29 15:02:45');
INSERT INTO `card_logs` VALUES ('ffa8deb8-f852-4ce5-adf7-b5b03d998197', '2', '62', '33b063f4-a82d-4e42-be9d-78a0b084de48', '1', '2019-01-29 15:02:45', '2019-01-29 15:02:45');
INSERT INTO `card_logs` VALUES ('f8e77a8d-70ac-4f48-bd52-31f9cbccf6c3', '3', '20', '2aafa668-6fa7-451f-8d68-fb241e619b90', '1', '2019-01-29 15:02:45', '2019-01-29 15:02:45');
INSERT INTO `card_logs` VALUES ('fc9afbab-f92f-4b76-b6d7-42a23660c4f8', '2', '29', '7d969c2f-8986-4122-bbcd-aeae21f83d7b', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('dcaa4194-32d6-468c-9952-aa1c7bc3b74f', '2', '77', '76f58ba9-d064-405f-895c-26c41b507d99', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('cd3f11ff-f6af-4463-80ee-d40d2edcbbf6', '2', '96', '0b7d28f8-064c-4fb2-b6c0-95ded885c66e', '1', '2019-01-29 15:02:45', '2019-01-29 15:02:45');
INSERT INTO `card_logs` VALUES ('c54c6c60-a88a-4e3b-b0db-91b58192c882', '2', '0', '56bc7cd2-cee6-41d1-84e7-ee6e0af2db5a', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('73914e7f-26e7-4769-9750-82ccae09c0b6', '4', '11', '4b3ab71c-5434-41a4-931e-b3988a263a7c', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('a90f7f6d-88cf-4173-a0e7-bfd4db1d28d9', '4', '27', '9ac02ee1-4470-4a4c-9d42-0ac3b1e7532f', '1', '2019-01-29 15:02:45', '2019-01-29 15:02:45');
INSERT INTO `card_logs` VALUES ('142b5d0f-1f3e-4ce0-84a9-6524b1378ef7', '1', '37', '9537b3ae-4160-4235-acfd-0362f13d2f6b', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('e0c87107-bc09-4d9b-8020-8785bf77adb7', '2', '80', 'fe488bcf-525b-4117-891b-4ad8459b9fb6', '1', '2019-01-29 15:02:45', '2019-01-29 15:02:45');
INSERT INTO `card_logs` VALUES ('41773b5b-70b2-4244-ada8-f2da30f63506', '2', '74', 'c06b276e-07d9-4dc9-89d0-a0a8b089a552', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('e395c562-52e0-414c-b140-6cbb4dd21c6c', '1', '56', 'de73177c-0f76-4300-bc37-03c2a2d19471', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('3fc7d686-96a1-4400-b987-5d575b7e5885', '1', '64', '914cc2ec-6f3c-45e8-a551-ba0d6ca05a5c', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('302dc362-ca22-4dd1-a5ca-12cf3ad93072', '1', '5', '3ce9388f-51e1-48b0-a16a-554d56bb7dac', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('04661776-cb85-4610-9c0f-48ec335ccfc5', '1', '50', '38259a5a-7e60-4f22-94e1-bfef6d1b9eed', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('4d6b75d0-fd5f-42dd-bd8d-22bc7701fa3d', '1', '90', 'ec04219c-9dfc-4863-8345-9dd3f0894766', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('b76550d7-8a06-4b85-b8d5-61559c602206', '1', '28', '7e702ed5-c2f2-4ace-84e3-f99607cb3fe0', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('f57e0608-bce4-4e3a-9829-e1d358ac526a', '2', '65', 'ee23751b-9e0b-4575-8fc9-b9098e295d0c', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('a13dca77-1629-4212-9795-8d1f3cccb545', '2', '60', '3f0b276d-e4d2-4b96-813c-0d284495e903', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('70867a76-da6e-4eed-acba-63be6000b763', '1', '10', '58ab4be9-0e89-4241-9aee-bedb6c9c3dbf', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('8471513b-8f96-4c17-8ff6-bddce7966798', '1', '99', '0e571d2e-894f-4884-ae0c-1adcf9257965', '1', '2019-01-29 15:02:45', '2019-01-29 15:02:45');
INSERT INTO `card_logs` VALUES ('976e1abb-83d7-493f-8077-55748c119913', '1', '46', 'c1785aa0-deaa-4d5e-932a-b30db9ead526', '1', '2019-01-29 15:02:45', '2019-01-29 15:02:45');
INSERT INTO `card_logs` VALUES ('e211ae1b-477a-4fb6-aff5-1e843332a6fb', '2', '48', 'c5778a3f-3aec-44c1-b6d3-f2cc8b9b3f55', '1', '2019-01-29 15:02:45', '2019-01-29 15:02:45');
INSERT INTO `card_logs` VALUES ('f7063339-c3e6-4c09-b5a7-8256e3bf5163', '2', '84', 'a87df0cb-c916-4a8d-b30c-7a247218fe8b', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('044e4988-dd07-4c63-a706-71935497e374', '2', '40', '7e17afdb-3424-4725-a1de-95430cb1bddc', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('ae8d359f-b9d5-48e5-9205-cf5aaebb6ee4', '2', '97', 'b4ff28a4-df85-42a2-8359-5fdbce0d83f1', '1', '2019-01-29 15:02:45', '2019-01-29 15:02:45');
INSERT INTO `card_logs` VALUES ('2453374d-3a64-4249-aa86-c669b68b47c9', '1', '76', '47003886-a7cf-4856-97f5-eeea3f9b9729', '1', '2019-01-29 15:02:44', '2019-01-29 15:02:44');
INSERT INTO `card_logs` VALUES ('eb155f56-213d-4901-89d9-1da3eafd3375', '1', '61', '6bfa41c8-389f-4723-b11e-374cc5dd2ee3', '1', '2019-01-29 15:05:18', '2019-01-29 15:05:18');
INSERT INTO `card_logs` VALUES ('ff947b25-e271-463a-97ff-9e45250682b9', '2', '19', '528ed99f-12e6-4257-a7e1-4fe2f037274b', '1', '2019-01-29 15:05:18', '2019-01-29 15:05:18');
INSERT INTO `card_logs` VALUES ('1107e14e-1cd6-4b54-a68d-6e28ca5057ff', '1', '59', '0f274cc3-475e-4a0e-b65d-67830c8f0f33', '1', '2019-01-29 15:05:17', '2019-01-29 15:05:17');
INSERT INTO `card_logs` VALUES ('d1f5234a-e731-4d0a-af29-07fe00449ad9', '1', '45', '8a558145-24ac-4929-93e2-eb0d9cc6a4d0', '1', '2019-01-29 15:05:17', '2019-01-29 15:05:17');
INSERT INTO `card_logs` VALUES ('c1d91862-7ab7-4777-a4e7-fdbddd496a5f', '2', '58', '05741185-b56b-430e-826d-c78745f3f5af', '1', '2019-01-29 15:05:18', '2019-01-29 15:05:18');
INSERT INTO `card_logs` VALUES ('5d539c36-5881-4073-9e2d-d96abef9afff', '1', '72', '3d9cbefb-d167-406f-840e-9a744ba59adc', '1', '2019-01-29 15:05:18', '2019-01-29 15:05:18');
INSERT INTO `card_logs` VALUES ('0ebf7637-4025-4c50-97f5-8c596528e7cc', '4', '73', '69779e6f-2264-4a5a-9d18-554e9cca8b59', '1', '2019-01-29 15:05:18', '2019-01-29 15:05:18');
INSERT INTO `card_logs` VALUES ('d25e0ca7-b223-4e8e-80a8-041ce5465061', '1', '48', 'e10c7521-9d66-419a-a9ed-34a0c17510b5', '1', '2019-01-29 15:05:18', '2019-01-29 15:05:18');
INSERT INTO `card_logs` VALUES ('0130aaae-9331-40ca-a0d5-4a292dbce49e', '2', '50', '2f2f5e85-bf35-4b83-805f-a8312e03a7df', '1', '2019-01-29 15:05:18', '2019-01-29 15:05:18');
INSERT INTO `card_logs` VALUES ('13f20c90-697f-4e02-8fa6-f35037a6199c', '4', '59', 'b265c26b-88ce-41ee-aaa8-ca80a6b9da21', '1', '2019-01-29 15:05:18', '2019-01-29 15:05:18');
INSERT INTO `card_logs` VALUES ('22d0a12d-5011-439d-9806-ae88aee6b3db', '3', '79', '953b304e-cec5-496c-9ef0-8a72441ef837', '1', '2019-01-29 15:05:18', '2019-01-29 15:05:18');
INSERT INTO `card_logs` VALUES ('cc8de8bd-503e-4a58-9f57-9dabf813c841', '3', '69', 'efaa4574-9fe6-4f09-a1f2-e736988ea4ee', '1', '2019-01-29 15:05:17', '2019-01-29 15:05:17');
INSERT INTO `card_logs` VALUES ('1afbb03d-58c2-4d63-b4f5-69d92e02c960', '2', '59', '24bf4ac4-462d-4a46-bbb6-c55ab653187b', '1', '2019-01-29 15:05:17', '2019-01-29 15:05:17');
INSERT INTO `card_logs` VALUES ('454982cb-ac37-4383-a8d9-2c70deff8fa4', '2', '48', '0f84aaba-c058-4230-bace-fe95a1511bec', '1', '2019-01-29 15:05:18', '2019-01-29 15:05:18');
INSERT INTO `card_logs` VALUES ('4db4b830-bbdc-4be9-bc0e-ad997f9a4306', '1', '48', 'eceb9299-6b9b-40c5-ab2f-cfa6576c4fc2', '1', '2019-01-29 15:05:18', '2019-01-29 15:05:18');
INSERT INTO `card_logs` VALUES ('9b6c17d3-ac86-4dc6-80f4-213da3c28c26', '1', '31', 'f12c43cd-c4f1-4125-905e-5c749525a31f', '1', '2019-01-29 15:05:18', '2019-01-29 15:05:18');
INSERT INTO `card_logs` VALUES ('31272ee8-9df3-42d3-8e09-04e4c6773352', '1', '82', '1f473f44-9efd-4bc7-aad0-88dbd6a22005', '1', '2019-01-29 15:05:18', '2019-01-29 15:05:18');
INSERT INTO `card_logs` VALUES ('758b1a58-f78d-45fd-bbfa-8bd8dee97fe2', '2', '45', '21a7b259-7174-42be-a28d-f2b0d7e94d3f', '1', '2019-01-29 15:05:19', '2019-01-29 15:05:19');
INSERT INTO `card_logs` VALUES ('13cf5cfd-7f56-47d4-ba7d-de400abfba49', '4', '19', '1c977ddd-5ebc-49c2-8a0a-c1f8118adaa0', '1', '2019-01-29 15:05:18', '2019-01-29 15:05:18');
INSERT INTO `card_logs` VALUES ('ec13d859-c749-4ed3-8b91-a27a30c258f0', '2', '16', '88011c69-b4ba-4ea3-a017-8020ad70e1d1', '1', '2019-01-29 15:05:19', '2019-01-29 15:05:19');
INSERT INTO `card_logs` VALUES ('3c418525-c3a3-495a-a72b-fe209f3a852e', '1', '58', '8350ee76-23f6-47d9-9a6f-409cd8de1d90', '1', '2019-01-29 15:05:19', '2019-01-29 15:05:19');
INSERT INTO `card_logs` VALUES ('964c7e9c-cb91-4175-b837-9d166b81e3bf', '1', '45', '2b7a63be-e932-42cb-b163-a42f6cf9fbdc', '1', '2019-01-29 15:05:17', '2019-01-29 15:05:17');
INSERT INTO `card_logs` VALUES ('1448c30a-4766-4944-b0db-29a7952bb979', '1', '69', '4c81f362-37c7-4e6a-a235-d2dd33341b37', '1', '2019-01-29 15:05:17', '2019-01-29 15:05:17');
INSERT INTO `card_logs` VALUES ('d25a3762-7942-43d6-8c43-ade57e1bbf88', '1', '73', 'bae0ec99-e399-4c95-9c85-c17e82886066', '1', '2019-01-29 15:05:17', '2019-01-29 15:05:17');
INSERT INTO `card_logs` VALUES ('de7c5543-99b6-4c74-8cf6-80cff48bcc6c', '4', '61', '5f88f17a-e1fa-44f6-8373-17b2b65b1c10', '1', '2019-01-29 15:05:17', '2019-01-29 15:05:17');
INSERT INTO `card_logs` VALUES ('adb2d418-f97a-4127-a96f-41f0ba560c44', '2', '20', 'eae846fd-c250-41bf-ae85-2ca1338e9b2a', '1', '2019-01-29 15:05:18', '2019-01-29 15:05:18');
INSERT INTO `card_logs` VALUES ('bb776958-07fe-4d66-b36e-9347350ddefd', '3', '50', 'c50201b7-1f77-406f-b363-f7551f26baae', '1', '2019-01-29 15:05:17', '2019-01-29 15:05:17');
INSERT INTO `card_logs` VALUES ('8e2d231e-06dc-4080-89ea-4faff557eea3', '1', '31', 'a58a8651-04e5-4274-a52b-c2563a364992', '1', '2019-01-29 15:05:17', '2019-01-29 15:05:17');
INSERT INTO `card_logs` VALUES ('fc5213a4-f560-4b39-b5e5-1c874dae97bf', '1', '26', '008ae18e-3212-4245-94a0-6a8edd66eb64', '1', '2019-01-29 15:05:17', '2019-01-29 15:05:17');
INSERT INTO `card_logs` VALUES ('d2d9e389-494d-48c9-b5a3-b2d417fdc4fc', '2', '20', '7c26cbbf-8aa3-4153-9fd7-24840f275e88', '1', '2019-01-29 15:05:17', '2019-01-29 15:05:17');
INSERT INTO `card_logs` VALUES ('53ff4e5c-d8c6-426e-87ad-b408c2c285bf', '3', '72', 'cc8909be-b8fa-4834-80bf-305f88ebb00b', '1', '2019-01-29 15:05:17', '2019-01-29 15:05:17');
INSERT INTO `card_logs` VALUES ('19855246-51a9-4cbe-a76f-07d7d697c9fd', '1', '19', 'e9e57f2a-0f85-4ce1-b965-a1c1618d1b2a', '1', '2019-01-29 15:05:17', '2019-01-29 15:05:17');
INSERT INTO `card_logs` VALUES ('e7f50cdc-f10c-4d7f-9b68-e31440e19bd8', '4', '72', 'c74b1385-a234-4c4f-bacc-2595d89197b9', '1', '2019-01-29 15:05:17', '2019-01-29 15:05:17');
INSERT INTO `card_logs` VALUES ('fd0a65bb-15c7-41f9-889a-e2f104505a82', '1', '16', 'be02284e-c64d-4228-ac59-0d50fb537ff1', '1', '2019-01-29 15:05:17', '2019-01-29 15:05:17');
INSERT INTO `card_logs` VALUES ('f2bf929a-ad44-451b-9831-f0d98359b1c3', '1', '58', 'f3713665-2755-49ce-bc38-9eded730daa2', '1', '2019-01-29 15:05:17', '2019-01-29 15:05:17');
INSERT INTO `card_logs` VALUES ('d15dde4d-15df-485b-ac74-aae3758cf30b', '2', '6', '65745b8b-bae9-4c36-b478-629e37771dd0', '1', '2019-01-29 15:05:17', '2019-01-29 15:05:17');
INSERT INTO `card_logs` VALUES ('3a79e8bf-7bf6-4922-a30c-1f2612785313', '1', '73', '5d6911f2-48bf-4407-aa47-eaafad9d50d3', '1', '2019-01-29 15:05:17', '2019-01-29 15:05:17');
INSERT INTO `card_logs` VALUES ('a616a72f-6c21-4c1c-885f-24625da4dac4', '1', '24', '8f876eae-50d9-4144-a610-425debe8adb9', '1', '2019-01-29 15:05:18', '2019-01-29 15:05:18');
INSERT INTO `card_logs` VALUES ('0ef373d3-4a13-4d90-8b4e-b10dad99d5a2', '3', '58', 'e66c725a-6bf3-41bb-9a87-debc21a0fb91', '1', '2019-01-29 15:05:17', '2019-01-29 15:05:17');
INSERT INTO `card_logs` VALUES ('9c1e8ab2-bdc5-43da-b9b9-8360acae908f', '2', '61', '66ea677a-9fcc-4800-881d-045e7941f29b', '1', '2019-01-29 15:05:17', '2019-01-29 15:05:17');
INSERT INTO `card_logs` VALUES ('cfc8de84-1b7e-483b-ae42-5efb1abdeebf', '2', '68', '123624d1-19f6-40f4-badf-e3a8e452c386', '1', '2019-01-29 15:05:18', '2019-01-29 15:05:18');
INSERT INTO `card_logs` VALUES ('23d4eb3a-a9e0-4a0f-9b3a-1170864fec5f', '3', '20', '2376e672-4c96-4d86-a78f-f100e61bfdfa', '1', '2019-01-29 15:05:17', '2019-01-29 15:05:17');
INSERT INTO `card_logs` VALUES ('48df6883-300b-4448-933d-72d6d70c4af3', '4', '6', '2d1f0207-ac9b-4f15-850f-b4a30e8c993d', '1', '2019-01-29 15:05:17', '2019-01-29 15:05:17');
INSERT INTO `card_logs` VALUES ('c2bf05c8-06f1-4cbf-bca5-ba123121679b', '1', '24', '73b6296d-d4dd-4045-9547-d4791790aa33', '1', '2019-01-29 15:05:18', '2019-01-29 15:05:18');
INSERT INTO `card_logs` VALUES ('a8f6f409-08fb-4a39-8d5f-34e5c6e24c8f', '1', '26', '5dae33b6-2e4d-40ff-a351-65a05a5da22a', '1', '2019-01-29 15:05:17', '2019-01-29 15:05:17');
INSERT INTO `card_logs` VALUES ('68cb1f0e-b031-43d8-ba6b-41d16081e281', '2', '58', 'b6329da7-4eff-4da4-a55d-265d0d6f900a', '1', '2019-01-29 15:05:17', '2019-01-29 15:05:17');
INSERT INTO `card_logs` VALUES ('e3dd64ab-1487-4db0-b5f5-6c03dc1b5ac3', '2', '6', '01fb6082-8226-4819-bd9c-03bb7cc48ccb', '1', '2019-01-29 15:05:17', '2019-01-29 15:05:17');
INSERT INTO `card_logs` VALUES ('11b97930-3a67-4d14-bab2-27d08c4eb7da', '1', '24', '52bde85a-779d-4bdd-9f2a-aa3139d06399', '1', '2019-01-29 15:05:17', '2019-01-29 15:05:17');
INSERT INTO `card_logs` VALUES ('e10f8827-2235-44bd-a512-9429b7678a71', '2', '68', '965444a9-dc55-4192-853d-d2c3c12bf22e', '1', '2019-01-29 15:05:18', '2019-01-29 15:05:18');
INSERT INTO `card_logs` VALUES ('7d168376-5384-4243-9996-dba3f06b84c0', '2', '31', 'fd3df965-68a9-4474-a263-a6f7811a6484', '1', '2019-01-29 15:05:18', '2019-01-29 15:05:18');
INSERT INTO `card_logs` VALUES ('c0fb2ddd-f0c5-4eac-9ab4-013fbde4eba8', '1', '82', '919cba54-1669-4f11-9c17-3a4866ce7a3e', '1', '2019-01-29 15:05:17', '2019-01-29 15:05:17');
INSERT INTO `card_logs` VALUES ('06bc575a-faa7-42bf-afe6-36410e9f4557', '2', '72', '2580dd59-e1b9-4808-acab-951f7ef45db9', '1', '2019-01-29 15:05:17', '2019-01-29 15:05:17');
INSERT INTO `card_logs` VALUES ('31148750-1707-4078-aeb5-96dbe12beae7', '3', '6', 'dc92651b-d776-4573-b431-1ed10e1b0d5f', '1', '2019-01-29 15:05:17', '2019-01-29 15:05:17');
INSERT INTO `card_logs` VALUES ('c318e010-32e6-4003-82db-60bbdd000e39', '1', '6', '5f799dda-e189-45a7-ba2a-4781a1f8f569', '1', '2019-01-29 15:05:17', '2019-01-29 15:05:17');
INSERT INTO `card_logs` VALUES ('945dc179-c2e4-434a-aee9-9a02e04b7efc', '2', '68', '3056bbe8-736a-4314-a855-9ce7b21e37d0', '1', '2019-01-29 15:05:17', '2019-01-29 15:05:17');
INSERT INTO `card_logs` VALUES ('c3159902-1923-4ecc-8faf-2ec287dc1476', '1', '68', '47e0ddda-2ccd-4cd5-b86f-994d11d5b67a', '1', '2019-01-29 15:05:17', '2019-01-29 15:05:17');
INSERT INTO `card_logs` VALUES ('0abc6536-a9db-4253-9b27-d39891a9263e', '1', '41', '6f219d14-d78e-470a-a5ae-d143dbac2306', '1', '2019-01-29 15:05:18', '2019-01-29 15:05:18');
INSERT INTO `card_logs` VALUES ('9ecf7a02-54be-4c99-9122-eecc14012980', '1', '17', 'e761fd16-fe2d-4846-babf-fc8c354ca22b', '1', '2019-01-29 15:05:17', '2019-01-29 15:05:17');
INSERT INTO `card_logs` VALUES ('58df1c1e-c608-45d7-91e8-479fa7a0ef4f', '1', '79', '435ddb52-2868-46d2-8056-8cbc318e38bb', '1', '2019-01-29 15:05:18', '2019-01-29 15:05:18');
INSERT INTO `card_logs` VALUES ('4ea3965c-6817-4176-8411-a89d76fac8a4', '2', '26', 'cb748149-9798-4e79-ac67-e812124e062c', '1', '2019-01-29 15:05:18', '2019-01-29 15:05:18');
INSERT INTO `card_logs` VALUES ('e5ae8f98-57ca-4ebd-b1be-997b37fc8c36', '1', '31', '9adabf34-883d-4c08-813f-f426617fbf1f', '1', '2019-01-29 15:05:17', '2019-01-29 15:05:17');
INSERT INTO `card_logs` VALUES ('f505bd25-6bd6-42b3-96ba-04a5001b4972', '4', '79', 'be83279e-17a5-47c5-84a9-f102d040e49c', '1', '2019-01-29 15:05:18', '2019-01-29 15:05:18');
INSERT INTO `card_logs` VALUES ('215b4ae7-9257-4295-9b48-e1458a817eae', '4', '58', '276b6996-267e-41bb-a4dc-c9a4c3ae0815', '1', '2019-01-29 15:05:17', '2019-01-29 15:05:17');
INSERT INTO `card_logs` VALUES ('099d9bfc-c0ae-4afd-bab8-39c106ba049c', '4', '69', '07f126f9-a99d-45ff-9acc-7a57059f5bf3', '1', '2019-01-29 15:05:17', '2019-01-29 15:05:17');
INSERT INTO `card_logs` VALUES ('edaf6f65-ed70-4943-86d4-4558cecd6744', '2', '45', 'bb466f17-8adc-447a-a935-043658621f84', '1', '2019-01-29 15:05:18', '2019-01-29 15:05:18');
INSERT INTO `card_logs` VALUES ('44c6d7f1-1ca9-4afa-ab81-926d9e33b69d', '4', '72', '52923702-b2ac-43e7-9b9f-5d46451a429a', '1', '2019-01-29 15:05:17', '2019-01-29 15:05:17');
INSERT INTO `card_logs` VALUES ('0f88cb6c-d1ef-4a8a-832c-1ca93049fee9', '1', '31', '4bf36e3d-ef54-43de-a5b2-fc9746022ad0', '1', '2019-01-29 15:05:17', '2019-01-29 15:05:17');
INSERT INTO `card_logs` VALUES ('aef41458-f12b-4c80-a438-e57afe3e17d1', '2', '17', 'b7074211-d309-41c2-8603-3e49f7e55889', '1', '2019-01-29 15:05:18', '2019-01-29 15:05:18');
INSERT INTO `card_logs` VALUES ('2b8998c8-fa31-40de-b1e6-a3f1f61cffc9', '2', '59', '93e99ce4-5716-4855-aee6-51f31d5bcab7', '1', '2019-01-29 15:05:17', '2019-01-29 15:05:17');
INSERT INTO `card_logs` VALUES ('d6f0387f-6485-4d58-82f9-c1144b86af40', '2', '41', 'e04770d3-ccea-43cc-a9c9-c6c3191035f2', '1', '2019-01-29 15:05:17', '2019-01-29 15:05:17');
INSERT INTO `card_logs` VALUES ('e531732d-ecd3-4848-a0a6-88eb43518fba', '4', '68', 'd71d9883-01f8-4a76-8d14-130f40870827', '1', '2019-01-29 15:05:17', '2019-01-29 15:05:17');
INSERT INTO `card_logs` VALUES ('5e25aa10-ac94-4be1-b7b9-22deaaf993b2', '2', '45', '3bf3deb0-73b1-454d-9cb8-056b3b2b09a7', '1', '2019-01-29 15:05:17', '2019-01-29 15:05:17');
INSERT INTO `card_logs` VALUES ('5a03f205-6de7-4481-b194-faaea00ec1da', '2', '50', '0b609c44-73d4-40e8-ac37-bcd9476ddd71', '1', '2019-01-29 15:05:18', '2019-01-29 15:05:18');
INSERT INTO `card_logs` VALUES ('2bb3ad61-ce22-4fc8-9287-fe5524fb9b77', '1', '19', 'e82313be-6f0d-4305-baa3-4580c78e6fab', '1', '2019-01-29 15:05:18', '2019-01-29 15:05:18');
INSERT INTO `card_logs` VALUES ('42aff74f-a7fe-4cd4-bf0a-8a1cdcabb096', '2', '91', '17d1d484-2ca2-42ed-9867-be8295ba912d', '1', '2019-01-29 15:05:20', '2019-01-29 15:05:20');
INSERT INTO `card_logs` VALUES ('6894e3b7-decc-4fcc-b50a-c059e97ca62f', '2', '91', '0897f37d-42c6-4338-b8a5-2bff1739958a', '1', '2019-01-29 15:05:20', '2019-01-29 15:05:20');
INSERT INTO `card_logs` VALUES ('f82d54e8-7522-4603-bd3f-83e619ae82b2', '4', '93', '9784bf45-b77b-466d-bd75-778cc771a3ea', '1', '2019-01-29 15:05:20', '2019-01-29 15:05:20');
INSERT INTO `card_logs` VALUES ('f9e90647-708a-464f-b14d-02faafbc7486', '3', '91', '51303bce-2342-46bf-a00b-9d3fd51b59d2', '1', '2019-01-29 15:05:20', '2019-01-29 15:05:20');
INSERT INTO `card_logs` VALUES ('9410d681-b36b-4402-8153-6b70cd152740', '1', '91', '83ebfbd9-dffb-4dcf-9f24-e855ede61ac9', '1', '2019-01-29 15:05:20', '2019-01-29 15:05:20');
INSERT INTO `card_logs` VALUES ('72f3fbea-78c2-424f-895b-8ca1274bb2f2', '3', '93', '95a3c7b1-6824-4ed3-ae1f-f7d065d5bc9b', '1', '2019-01-29 15:05:20', '2019-01-29 15:05:20');
INSERT INTO `card_logs` VALUES ('037f5fb6-88f9-4a78-9268-cb5e14e29eac', '2', '96', 'ee5560af-77c1-44cd-abab-3863218977f1', '1', '2019-01-29 15:05:20', '2019-01-29 15:05:20');
INSERT INTO `card_logs` VALUES ('0c81ab2c-fb98-4b44-8a35-d4ede2429a82', '3', '96', 'fdb1c022-8f4e-4502-b457-d8f67a9c0e49', '1', '2019-01-29 15:05:20', '2019-01-29 15:05:20');
INSERT INTO `card_logs` VALUES ('75637314-86be-4fac-bf0b-fff5cb9df576', '1', '96', 'c1c9915e-830b-4bb4-8c07-766993391d28', '1', '2019-01-29 15:05:20', '2019-01-29 15:05:20');
INSERT INTO `card_logs` VALUES ('2e63191c-41ac-4d61-b9ed-1f1d88f8601b', '2', '96', '7026236c-081b-4eb4-8719-58b9a23fe9a0', '1', '2019-01-29 15:05:20', '2019-01-29 15:05:20');
INSERT INTO `card_logs` VALUES ('f5669831-0127-4127-864e-6559b6b6238c', '1', '96', 'e8d41d8c-83b4-4bba-aa70-4bcb493309a7', '1', '2019-01-29 15:05:20', '2019-01-29 15:05:20');
INSERT INTO `card_logs` VALUES ('fb581ce0-26a7-495f-b67c-fe3945e19bc8', '1', '87', '2915b898-db2a-49bd-bee1-ac8efa5722db', '1', '2019-01-29 15:05:20', '2019-01-29 15:05:20');
INSERT INTO `card_logs` VALUES ('8ab57bad-2294-41bf-b22d-8cc2ceb1aa81', '4', '91', '47b4957b-838c-4961-96db-2592a1861aff', '1', '2019-01-29 15:05:20', '2019-01-29 15:05:20');
INSERT INTO `card_logs` VALUES ('d5db460a-b28e-4209-81a0-65008de9a803', '1', '88', '745feb40-6725-4297-9fef-de6002080ba8', '1', '2019-01-29 15:05:20', '2019-01-29 15:05:20');
INSERT INTO `card_logs` VALUES ('eb307884-5530-4740-80ec-ed821ca24dad', '1', '88', '9d96dcc1-081f-46d6-ab44-0764ad397ed3', '1', '2019-01-29 15:05:20', '2019-01-29 15:05:20');
INSERT INTO `card_logs` VALUES ('2ad8fa1b-2b03-43f8-8142-94923a1cc3fd', '2', '91', '5ca875d1-7b90-4076-bf99-8b116b9956da', '1', '2019-01-29 15:05:20', '2019-01-29 15:05:20');
INSERT INTO `card_logs` VALUES ('c4f6cbd5-cb80-4e83-8b84-0b3e8ad5ccc8', '3', '88', 'c4524f0d-ea26-4692-ab2c-0c097f30336d', '1', '2019-01-29 15:05:20', '2019-01-29 15:05:20');
INSERT INTO `card_logs` VALUES ('b450e677-d982-42ce-8009-53b78cb60ef3', '2', '88', '7b957012-6f0f-4756-99d8-98c5256e7380', '1', '2019-01-29 15:05:20', '2019-01-29 15:05:20');
INSERT INTO `card_logs` VALUES ('9ee5b24d-4f4b-4278-a614-d0e20c1b6dc7', '1', '93', '747b3830-9ad5-48a4-b757-e49cf73d9d6e', '1', '2019-01-29 15:05:20', '2019-01-29 15:05:20');
INSERT INTO `card_logs` VALUES ('c8ce360c-2713-48e1-a843-ee2d9c92a045', '4', '88', '14fc0007-5b5d-4142-a26c-993d36efb029', '1', '2019-01-29 15:05:19', '2019-01-29 15:05:19');
INSERT INTO `card_logs` VALUES ('6ca5f2dc-f587-4f54-80bd-ab1282890bae', '2', '87', '8785671f-028a-44d9-875a-c9d2125c4174', '1', '2019-01-29 15:05:19', '2019-01-29 15:05:19');
INSERT INTO `card_logs` VALUES ('9a7c735e-dae1-4e69-a467-9ab26c6ac29d', '2', '87', '6d14fee9-c845-4e9a-b56b-c1792d32f0de', '1', '2019-01-29 15:05:19', '2019-01-29 15:05:19');
INSERT INTO `card_logs` VALUES ('1e53511d-4cd3-47df-9490-a3a469463ac0', '2', '87', '574dc4b7-5966-4c37-a153-33512258f761', '1', '2019-01-29 15:05:19', '2019-01-29 15:05:19');
INSERT INTO `card_logs` VALUES ('0d1f510a-d1dd-4f0f-b99c-26f0dcb76729', '1', '19', '9e47463d-6464-4d96-8f36-2466291c1c74', '1', '2019-01-29 15:05:18', '2019-01-29 15:05:18');
INSERT INTO `card_logs` VALUES ('96bad4fc-2054-4731-903f-f2fd2807ff1c', '1', '82', '062da92e-44d7-47d4-ae2d-253ae478fe4d', '1', '2019-01-29 15:05:19', '2019-01-29 15:05:19');
INSERT INTO `card_logs` VALUES ('8152f340-effd-40c7-83e6-442fbcd1f578', '2', '82', '02ecacec-496e-4fe2-bf41-d39ef85318b3', '1', '2019-01-29 15:05:19', '2019-01-29 15:05:19');
INSERT INTO `card_logs` VALUES ('01c06b30-8b27-414d-9b17-d7c344252886', '3', '72', '6b9cb505-164a-4343-9724-25d30e995c29', '1', '2019-01-29 15:05:17', '2019-01-29 15:05:17');
INSERT INTO `card_logs` VALUES ('17d1b2be-a706-400d-a94a-766fdba30896', '2', '69', 'd0295205-3bc9-4cb5-a2d7-854e5e4eea3f', '1', '2019-01-29 15:05:18', '2019-01-29 15:05:18');
INSERT INTO `card_logs` VALUES ('85a1fe2f-02c8-4742-8cc7-98f9dac90abe', '1', '61', '20d705c9-c797-48e8-ad13-e70a7c97d7e6', '1', '2019-01-29 15:05:18', '2019-01-29 15:05:18');
INSERT INTO `card_logs` VALUES ('23eb1ae2-e825-425f-92cc-5b2995b55f5f', '1', '79', 'ef413018-229b-4cae-99eb-99b670407757', '1', '2019-01-29 15:05:17', '2019-01-29 15:05:17');
INSERT INTO `card_logs` VALUES ('7b838507-fc6f-4376-8638-319011366fac', '1', '79', '153aa89a-7bfe-46da-bca0-affa1eaf3c27', '1', '2019-01-29 15:05:17', '2019-01-29 15:05:17');
INSERT INTO `card_logs` VALUES ('485525da-54ec-4166-99c6-e41db3ce1a52', '4', '69', '7a6cc6b3-5159-434a-ad2b-d2c36ffa8727', '1', '2019-01-29 15:05:17', '2019-01-29 15:05:17');
INSERT INTO `card_logs` VALUES ('1cba0d10-17dd-4f47-ba74-d2f0b1dd8763', '1', '48', '1db54b03-c364-4d09-9181-4a1efa200c56', '1', '2019-01-29 15:05:18', '2019-01-29 15:05:18');
INSERT INTO `card_logs` VALUES ('a6a6637b-9ab3-4dee-b2a8-815f44e4ac87', '3', '59', '55b95d53-3e23-4133-8793-2d5a64bc8709', '1', '2019-01-29 15:05:17', '2019-01-29 15:05:17');
INSERT INTO `card_logs` VALUES ('190023f7-1075-4bc1-a0fa-543256851f91', '2', '48', 'be278cd8-1bca-4ef1-95cc-85f3749f53ac', '1', '2019-01-29 15:05:19', '2019-01-29 15:05:19');
INSERT INTO `card_logs` VALUES ('109cd92d-dfbb-4001-9154-99b5f0466d9d', '4', '48', 'b5c60faa-b9a0-4b06-884f-ca3e7b62db16', '1', '2019-01-29 15:05:19', '2019-01-29 15:05:19');
INSERT INTO `card_logs` VALUES ('4ba4e1e7-a27a-4d15-9e52-00fb617eac00', '1', '17', '95c77793-9801-403d-a69f-cb5d71134be3', '1', '2019-01-29 15:05:19', '2019-01-29 15:05:19');
INSERT INTO `card_logs` VALUES ('cfdbb0e9-e9e9-4ee6-b1db-fe550e52dc74', '1', '41', '101a0daf-2275-4f99-b1b9-4abbd861750a', '1', '2019-01-29 15:05:19', '2019-01-29 15:05:19');
INSERT INTO `card_logs` VALUES ('262f5ce8-538a-4824-bae7-7c94fe90d279', '1', '41', '5dc65789-d7a8-43d4-a436-6c98c1135279', '1', '2019-01-29 15:05:19', '2019-01-29 15:05:19');
INSERT INTO `card_logs` VALUES ('6737363c-86b8-46ac-afdc-f40df0c617c6', '1', '17', '5dfdefe4-5862-4f51-9d4c-610b0021ff55', '1', '2019-01-29 15:05:19', '2019-01-29 15:05:19');
INSERT INTO `card_logs` VALUES ('0e61e0c3-8f72-4e57-9e01-f9dc2b39eccc', '2', '82', '8a7a5ce7-6c67-40dd-98e6-c8750e1eb43b', '1', '2019-01-29 15:05:19', '2019-01-29 15:05:19');
INSERT INTO `card_logs` VALUES ('15930684-7ee5-4054-a951-2e54a728fb4d', '2', '41', '82809d64-1b96-4949-81fc-b48dc2f2a7f7', '1', '2019-01-29 15:05:19', '2019-01-29 15:05:19');
INSERT INTO `card_logs` VALUES ('549588f1-715d-45a4-9286-6122928fe8b1', '2', '16', '42782539-454e-4d15-a31f-b17893b1c2d2', '1', '2019-01-29 15:05:19', '2019-01-29 15:05:19');
INSERT INTO `card_logs` VALUES ('251bb0fb-9a21-4366-a844-a94a5e239257', '1', '68', 'bbcde73d-f0d8-4287-aab6-f8b4b2299b2b', '1', '2019-01-29 15:05:17', '2019-01-29 15:05:17');
INSERT INTO `card_logs` VALUES ('1a930762-5a59-4353-8df4-3b87a14e70bc', '2', '31', 'ccac516d-1d46-4b09-8296-b92e07023dec', '1', '2019-01-29 15:05:17', '2019-01-29 15:05:17');
INSERT INTO `card_logs` VALUES ('58d5f9a4-57b0-46d9-9c73-413b3f930bf8', '4', '61', '20ed8dd9-fb80-440a-a920-e7ae3000aa44', '1', '2019-01-29 15:05:18', '2019-01-29 15:05:18');
INSERT INTO `card_logs` VALUES ('ae4a2f25-17ea-47a5-af24-bc1be1a6ebd8', '1', '16', 'c230511d-a20b-4504-b508-1a4cad41ffc9', '1', '2019-01-29 15:05:17', '2019-01-29 15:05:17');
INSERT INTO `card_logs` VALUES ('da877e88-becd-4867-87c8-d28ffe0e2d9c', '2', '33', '69d5245b-2eb0-4d55-a2f3-e0176bacba77', '1', '2019-01-29 17:12:49', '2019-01-29 17:12:49');
INSERT INTO `card_logs` VALUES ('a0a7f3b8-5472-4de2-9d30-0887e1d7a3e7', '4', '41', '2951f6f0-d95f-4250-b9d0-518e5843bd0f', '1', '2019-01-29 17:12:48', '2019-01-29 17:12:48');
INSERT INTO `card_logs` VALUES ('1a9cab8a-5362-4d21-b484-26e09a074a10', '4', '4', '129b07ff-905c-42c2-942e-70cd7b14998c', '1', '2019-01-29 17:12:48', '2019-01-29 17:12:48');
INSERT INTO `card_logs` VALUES ('ab77056e-e17a-4110-bb00-5560ef3068da', '1', '48', 'c19bb2a9-3aa0-4c77-be23-47a7820d9ba9', '1', '2019-01-29 17:12:48', '2019-01-29 17:12:48');
INSERT INTO `card_logs` VALUES ('afc8c2b5-bb75-4e0a-8ca2-9170711b1c07', '2', '22', '41b2478e-af06-4609-896d-f60d076816e0', '1', '2019-01-29 17:12:49', '2019-01-29 17:12:49');
INSERT INTO `card_logs` VALUES ('0ea77e79-baad-4cfa-a00f-6f2fa13e8240', '1', '50', 'b62fb0b6-6be2-4778-bbbe-2bf533266862', '1', '2019-01-29 17:12:49', '2019-01-29 17:12:49');
INSERT INTO `card_logs` VALUES ('909355b4-0f57-4ff0-9782-5d34d096bbdf', '3', '27', '67780f80-36d9-44ac-b8d1-501642fb8963', '1', '2019-01-29 17:12:49', '2019-01-29 17:12:49');
INSERT INTO `card_logs` VALUES ('e08fa122-9c7b-48a7-80a1-bef6a893582f', '1', '12', '38ca3ed3-be30-4a93-b373-c06aa5a0e06c', '1', '2019-01-29 17:12:49', '2019-01-29 17:12:49');
INSERT INTO `card_logs` VALUES ('7c288e94-9722-4b32-b934-4ab29e04a537', '1', '46', '4b141344-9506-434b-b568-d783837db606', '1', '2019-01-29 17:12:50', '2019-01-29 17:12:50');
INSERT INTO `card_logs` VALUES ('c4ed770f-12d0-4745-9be3-4dccd4fc51c1', '1', '45', '522d9e96-792e-4373-b54b-95d434f537c0', '1', '2019-01-29 17:12:50', '2019-01-29 17:12:50');
INSERT INTO `card_logs` VALUES ('33e6ceaa-83ad-41f7-bc34-547cf1e891c8', '1', '44', 'd78e7742-fb31-4524-b688-6696025292cd', '1', '2019-01-29 17:12:50', '2019-01-29 17:12:50');
INSERT INTO `card_logs` VALUES ('a02d4ec6-0eac-4721-883d-b23c2f54cfd5', '4', '49', '2a7c247e-cb73-4a77-95c3-29cef301c6f9', '1', '2019-01-29 17:12:50', '2019-01-29 17:12:50');
INSERT INTO `card_logs` VALUES ('ab8c54bf-744a-46bb-83c0-d9fca907fd88', '2', '10', '19424f59-be02-4db3-99f6-4ed938f7265d', '1', '2019-01-29 17:12:50', '2019-01-29 17:12:50');
INSERT INTO `card_logs` VALUES ('a5a27247-238e-4a76-8cc5-a6c827044e6f', '2', '2', 'c030ce7e-ff55-4cd6-bc87-3042522364ad', '1', '2019-01-29 17:12:50', '2019-01-29 17:12:50');
INSERT INTO `card_logs` VALUES ('9b262378-cb3a-465d-a998-fc3ea3a0df6a', '2', '93', '463f59bc-a798-475c-ba05-4946878cdad5', '1', '2019-01-29 17:12:51', '2019-01-29 17:12:51');
INSERT INTO `card_logs` VALUES ('f6488607-16a3-4fb8-aea5-89b75bd076b2', '2', '20', '3a3b79ee-2ac2-4605-89b3-1f983176e34b', '1', '2019-01-29 17:12:50', '2019-01-29 17:12:50');
INSERT INTO `card_logs` VALUES ('cdd4e3d9-240d-4eee-bdc2-16e232213a9b', '4', '92', 'f175d1ee-1eda-4a85-ab70-6b449bf238cf', '1', '2019-01-29 17:12:51', '2019-01-29 17:12:51');
INSERT INTO `card_logs` VALUES ('36f3e0e6-6de6-4b38-bedd-b20e4e84ac88', '2', '24', 'cc7773d6-9196-4792-8d24-0362d0790e87', '1', '2019-01-29 17:12:51', '2019-01-29 17:12:51');
INSERT INTO `card_logs` VALUES ('1906f8b1-acc3-4fd9-8467-a565e01c8439', '2', '7', '1f32aebb-761b-4424-90fc-5fccd36e0a6c', '1', '2019-01-29 17:12:51', '2019-01-29 17:12:51');
INSERT INTO `card_logs` VALUES ('9e69f8d2-d323-460c-9188-4b7fe1a73050', '3', '34', 'f07a43f1-9d8b-4a50-bf9b-1276a6be7bf6', '1', '2019-01-29 17:12:51', '2019-01-29 17:12:51');
INSERT INTO `card_logs` VALUES ('2860f4ba-657e-4776-98aa-9914bef961f1', '2', '90', '66d01447-b3d9-435d-92c7-ce17b85ecba3', '1', '2019-01-29 17:12:51', '2019-01-29 17:12:51');
INSERT INTO `card_logs` VALUES ('4325e161-5486-43bf-a791-67e188f89946', '3', '14', 'e5380266-5edb-473a-bb52-ff300267d846', '1', '2019-01-29 17:12:51', '2019-01-29 17:12:51');
INSERT INTO `card_logs` VALUES ('c572f37e-eebc-4f69-b70f-b371838d35b5', '1', '35', '494232c3-92ed-43a4-ba8f-f79c85dd8320', '1', '2019-01-29 17:12:51', '2019-01-29 17:12:51');
INSERT INTO `card_logs` VALUES ('43144935-a2be-4ce6-ba8c-42bad3be2f3d', '2', '26', 'cfd494ea-0897-42a6-a5f4-ba1343db37ca', '1', '2019-01-29 17:12:51', '2019-01-29 17:12:51');
INSERT INTO `card_logs` VALUES ('e7b578dd-a8af-4d83-bb22-096f9566635f', '1', '32', '0c15d5a7-fd61-43fd-8877-03f262d3af22', '1', '2019-01-29 17:12:51', '2019-01-29 17:12:51');
INSERT INTO `card_logs` VALUES ('4bffc58c-1665-462a-b27b-8bedf9b60cb8', '1', '5', '88185cc6-6dcb-45e5-b4c4-494a385e97ec', '1', '2019-01-29 17:12:51', '2019-01-29 17:12:51');
INSERT INTO `card_logs` VALUES ('5dc3a344-0d18-4781-92c2-63fe96ac8e38', '2', '89', 'bfa0851a-cae0-45b4-8569-f9e03b9e6e82', '1', '2019-01-29 17:12:51', '2019-01-29 17:12:51');
INSERT INTO `card_logs` VALUES ('d0835794-cb24-4980-bf55-f99abc147b4e', '2', '96', '7cfc2113-c7ff-4c2e-b7e6-6c38eec615cf', '1', '2019-01-29 17:12:50', '2019-01-29 17:12:50');
INSERT INTO `card_logs` VALUES ('be364717-4f20-4af3-8f51-c6a0f70c11db', '1', '56', '8a467375-fa6d-4c78-a49b-7114c95d7bc5', '1', '2019-01-29 17:12:50', '2019-01-29 17:12:50');
INSERT INTO `card_logs` VALUES ('bcef25bb-583c-4956-918c-d7636a568359', '2', '57', '601e2f4a-2376-42cd-88e4-330dab0fb7c4', '1', '2019-01-29 17:12:50', '2019-01-29 17:12:50');
INSERT INTO `card_logs` VALUES ('95fdc9fd-69ec-44bc-86c3-8f7a73e83672', '1', '86', '0dc9f493-02e0-435b-8e65-96734af94240', '1', '2019-01-29 17:12:50', '2019-01-29 17:12:50');
INSERT INTO `card_logs` VALUES ('367159f1-6359-4bea-8d7e-1e445d26d91f', '2', '29', '3bd6fb56-5c6c-46a1-bb06-b0adafb80c0d', '1', '2019-01-29 17:12:50', '2019-01-29 17:12:50');
INSERT INTO `card_logs` VALUES ('fc9fd1ec-0a0d-4cf6-89c5-096036c58307', '1', '17', '4ce3aab9-cd5e-429c-a85c-ab3671e09b7c', '1', '2019-01-29 17:12:51', '2019-01-29 17:12:51');
INSERT INTO `card_logs` VALUES ('522163fc-3a5c-44e2-a851-5824dc595e8a', '2', '52', '9771b59c-a835-4822-8a8b-5ce8858d8600', '1', '2019-01-29 17:12:51', '2019-01-29 17:12:51');
INSERT INTO `card_logs` VALUES ('b5fcb281-1edf-44d1-bbed-e2f3cfdeba17', '2', '54', '4d9c7637-4719-4a5b-98eb-82b42602b950', '1', '2019-01-29 17:12:51', '2019-01-29 17:12:51');
INSERT INTO `card_logs` VALUES ('440dbccb-3991-452c-9f07-b2d4e8e8edbe', '1', '43', 'de29484e-acac-4f43-af7f-6ef35bd021dc', '1', '2019-01-29 17:12:51', '2019-01-29 17:12:51');
INSERT INTO `card_logs` VALUES ('ef81aa7a-f710-435c-b1b4-398fc332e3ee', '4', '37', '4bf09d86-8ba0-4dbd-aab6-3ea2d7492336', '1', '2019-01-29 17:12:51', '2019-01-29 17:12:51');
INSERT INTO `card_logs` VALUES ('1fc792d2-33f5-4c1d-9940-29ffc008d216', '1', '53', '168b78ea-d000-4d53-9445-058b07244bcb', '1', '2019-01-29 17:12:51', '2019-01-29 17:12:51');
INSERT INTO `card_logs` VALUES ('af08900d-1b09-42d2-9b66-32629186adc1', '2', '1', '3fbb9689-b2c6-42e5-9148-6538997cdf2a', '1', '2019-01-29 17:12:51', '2019-01-29 17:12:51');
INSERT INTO `card_logs` VALUES ('d16a3508-11c9-4ce2-beb9-53d7f25d2e6b', '4', '9', 'd344bbdb-146e-4999-a53b-16c4ed3df7bb', '1', '2019-01-29 17:12:51', '2019-01-29 17:12:51');
INSERT INTO `card_logs` VALUES ('90d0c563-1d9f-4388-9a0f-a84a4a31198d', '2', '31', 'bbcecc5c-ad92-4c33-8c52-bd4a3816c8de', '1', '2019-01-29 17:12:51', '2019-01-29 17:12:51');
INSERT INTO `card_logs` VALUES ('e2a14b9d-bbd3-4767-b55f-7b85ab83a1ea', '1', '0', '4628b1f7-6e45-4881-8a94-15a8139b6547', '1', '2019-01-29 17:12:51', '2019-01-29 17:12:51');
INSERT INTO `card_logs` VALUES ('b9f2d9f7-52dc-4423-8ad2-bdae06857a09', '2', '87', '03ff1bf6-9db7-4169-ae81-9b3e191bcb16', '1', '2019-01-29 17:12:52', '2019-01-29 17:12:52');
INSERT INTO `card_logs` VALUES ('0505564b-6428-48a7-bb41-703b37f6e357', '1', '88', '37c59a27-0e52-47b1-8fae-babfe53d7e28', '1', '2019-01-29 17:12:52', '2019-01-29 17:12:52');
INSERT INTO `card_logs` VALUES ('5e90d2c3-14c1-44fa-afb7-d02276efd1a1', '3', '28', '15cb152b-c43b-4c47-bcc3-0f53b86d0c90', '1', '2019-01-29 17:12:52', '2019-01-29 17:12:52');
INSERT INTO `card_logs` VALUES ('e2f30361-2dfd-45da-a9dd-29dfd6065c05', '1', '95', 'ce5c03f4-b077-4818-961c-2149f6c251f2', '1', '2019-01-29 17:12:52', '2019-01-29 17:12:52');
INSERT INTO `card_logs` VALUES ('a388e6ce-8daf-4d05-bb26-6b405a075c20', '2', '77', 'c80c149d-e618-4d6b-b929-6d3b6b3718e0', '1', '2019-01-29 17:12:52', '2019-01-29 17:12:52');
INSERT INTO `card_logs` VALUES ('ea6a8f29-76e7-45d8-96d9-ab08eb87dc87', '1', '83', '3b51b4f1-03fa-41ce-90a6-94f15fc0f758', '1', '2019-01-29 17:12:52', '2019-01-29 17:12:52');
INSERT INTO `card_logs` VALUES ('5da5ad1c-4433-4d9a-9f76-5ee37a014ebc', '4', '81', '32d1d687-8a27-4566-862d-d1c2c6bd2699', '1', '2019-01-29 17:12:52', '2019-01-29 17:12:52');
INSERT INTO `card_logs` VALUES ('27b69c81-917d-4250-a1f2-0add5da928ed', '1', '99', '32f6a410-2766-4c4e-8ab7-a3870a54a92c', '1', '2019-01-29 17:12:52', '2019-01-29 17:12:52');
INSERT INTO `card_logs` VALUES ('91621dce-28fe-4953-b0be-a0fdc7bcee57', '2', '70', '756fe2da-ead2-4213-9518-a6e2f730facb', '1', '2019-01-29 17:12:52', '2019-01-29 17:12:52');
INSERT INTO `card_logs` VALUES ('a2755da9-eccd-4996-8369-07d154cf6f5d', '2', '36', '3b3a3f2e-b818-47cf-b21f-aa2b52b52baa', '1', '2019-01-29 17:12:52', '2019-01-29 17:12:52');
INSERT INTO `card_logs` VALUES ('4aa06747-8c10-4b90-b6ac-e10a10819383', '1', '61', 'f2154718-7978-4f61-bf95-75e26a77a6d5', '1', '2019-01-29 17:12:52', '2019-01-29 17:12:52');
INSERT INTO `card_logs` VALUES ('bfe6d29b-9012-4e7b-a2ef-f73c5a3e4456', '1', '59', '5d01f1a8-dd7f-44b3-8c00-d2c7f712d71c', '1', '2019-01-29 17:12:52', '2019-01-29 17:12:52');
INSERT INTO `card_logs` VALUES ('1e091ad9-075d-4fd6-b42e-3ef604e914f1', '4', '16', '89820001-a8fa-4b3c-ac9a-36b6bade59f6', '1', '2019-01-29 17:12:48', '2019-01-29 17:12:48');
INSERT INTO `card_logs` VALUES ('f2812081-3771-4ebe-bf17-f9ac3b60e824', '1', '13', '1073e1e5-b3ad-411d-9dfa-43dfb8118ab3', '1', '2019-01-29 17:12:48', '2019-01-29 17:12:48');
INSERT INTO `card_logs` VALUES ('7b80a19b-475b-470e-8e87-97ca70df7288', '2', '3', '6ca5a365-1eef-4371-9cdb-fbd18c8884ef', '1', '2019-01-29 17:12:48', '2019-01-29 17:12:48');
INSERT INTO `card_logs` VALUES ('8285570d-45a0-4ee4-923e-85fbb5dbb8da', '1', '40', 'f586839d-0bb1-4f0b-afbc-89ac37e07c0a', '1', '2019-01-29 17:12:52', '2019-01-29 17:12:52');
INSERT INTO `card_logs` VALUES ('f63239b3-f529-4061-92b3-02f34019687c', '1', '8', '55a7d871-2401-4085-8ad5-51ae7453204c', '1', '2019-01-29 17:12:48', '2019-01-29 17:12:48');
INSERT INTO `card_logs` VALUES ('f2d04b5d-c25d-45d6-9921-59d282c36462', '2', '38', '5d41c3de-d47a-483a-8740-fc1156f29c4a', '1', '2019-01-29 17:12:52', '2019-01-29 17:12:52');
INSERT INTO `card_logs` VALUES ('af0c025e-5569-40b3-9452-26959318b4be', '2', '6', '2e2875e8-f85c-4aec-86a6-22f564e8aa62', '1', '2019-01-29 17:12:48', '2019-01-29 17:12:48');
INSERT INTO `card_logs` VALUES ('b7690425-b75a-482d-938e-b51cdc4b3ef0', '2', '47', '1530c22d-bcac-4960-bce6-ef2cdbb68ac6', '1', '2019-01-29 17:12:52', '2019-01-29 17:12:52');
INSERT INTO `card_logs` VALUES ('d4445173-3e56-4e0d-b403-970c1d95be2d', '4', '23', 'f3b27336-8526-4f32-9ab4-24401d1a6ddf', '1', '2019-01-29 17:12:52', '2019-01-29 17:12:52');
INSERT INTO `card_logs` VALUES ('25bf1e06-9cd6-4864-8b6a-5f2a4b0f157f', '2', '62', '8efdeab4-4c2d-490c-b6ce-5c096ec9a54e', '1', '2019-01-29 17:12:52', '2019-01-29 17:12:52');
INSERT INTO `card_logs` VALUES ('a04562dc-644b-493c-9fbe-9c711aa71583', '2', '63', 'e3c331a8-c2c9-47ea-8163-26f9a4d8bbcc', '1', '2019-01-29 17:12:52', '2019-01-29 17:12:52');
INSERT INTO `card_logs` VALUES ('88349137-7182-4e39-be52-07ef9efb4ed0', '1', '60', '2e2322e7-0210-4927-bd85-85ab97f3fae1', '1', '2019-01-29 17:12:52', '2019-01-29 17:12:52');
INSERT INTO `card_logs` VALUES ('1639ad54-fb77-4a10-a532-7757595cbe7d', '1', '97', '128aeba2-37d0-42f7-b243-660d638e8c3a', '1', '2019-01-29 17:12:52', '2019-01-29 17:12:52');
INSERT INTO `card_logs` VALUES ('c5c0381d-07d8-4a64-b28e-43d17d3dc43a', '1', '84', '872ced5f-2601-4905-8a41-c1b6d4d456d2', '1', '2019-01-29 17:12:52', '2019-01-29 17:12:52');
INSERT INTO `card_logs` VALUES ('0b1060ac-403a-4b20-aaf3-6d522f9d9cce', '2', '55', '6ddfaabb-0b52-4247-b210-34104d02465c', '1', '2019-01-29 17:12:52', '2019-01-29 17:12:52');
INSERT INTO `card_logs` VALUES ('0fe0e0c2-f052-4422-be4f-a27205fc57c7', '2', '11', '085e4d00-4db1-4615-b48a-309b1beacb14', '1', '2019-01-29 17:12:52', '2019-01-29 17:12:52');
INSERT INTO `card_logs` VALUES ('3fb0a7cd-6be2-4c8f-9dc6-41d051d4d26b', '2', '98', '0f62589b-5075-44b1-b2ff-af2e9c001e2d', '1', '2019-01-29 17:12:52', '2019-01-29 17:12:52');
INSERT INTO `card_logs` VALUES ('77fb5a2d-d7fc-4219-bee2-9cce2687bc8f', '2', '19', '07bab0ee-7744-41a8-8c2a-2bea7ce84f9d', '1', '2019-01-29 17:12:52', '2019-01-29 17:12:52');
INSERT INTO `card_logs` VALUES ('443d6e0a-741a-4405-beab-f85df76f06c6', '1', '67', '8d4ffd0d-e6de-42db-ad1f-350051c74d22', '1', '2019-01-29 17:12:52', '2019-01-29 17:12:52');
INSERT INTO `card_logs` VALUES ('a18c80ba-3807-4313-839e-a3d8a1ef4879', '2', '65', '6d70b974-e1ef-4718-9df0-484f0bf9e149', '1', '2019-01-29 17:12:52', '2019-01-29 17:12:52');
INSERT INTO `card_logs` VALUES ('6d1b5aaf-d67b-45a3-9926-504f5fe3a24e', '2', '76', '0849b63a-e906-493c-ad52-974cece2e121', '1', '2019-01-29 17:12:52', '2019-01-29 17:12:52');
INSERT INTO `card_logs` VALUES ('981f7625-06f4-463d-9e8d-d05a5193ecc0', '4', '69', 'a85844d1-df13-4146-8367-ad779069885d', '1', '2019-01-29 17:12:52', '2019-01-29 17:12:52');
INSERT INTO `card_logs` VALUES ('915eeff5-1bc1-4bef-b17f-0976b3bcc2d7', '2', '68', '75efd45e-c313-41be-9412-e71b3c3e3d2e', '1', '2019-01-29 17:12:52', '2019-01-29 17:12:52');
INSERT INTO `card_logs` VALUES ('7c44a69b-faa5-4a86-8c19-75ef184926d6', '1', '58', '1c193eb6-4edd-4e50-b50d-f81146471520', '1', '2019-01-29 17:12:52', '2019-01-29 17:12:52');
INSERT INTO `card_logs` VALUES ('867237ad-1157-4c28-87c9-55969ac079f6', '2', '74', 'b0af9aa2-1e51-4b5a-86f1-4a396576b3d6', '1', '2019-01-29 17:12:52', '2019-01-29 17:12:52');
INSERT INTO `card_logs` VALUES ('4de360dc-d7df-4bbc-bbd1-519e59df775c', '1', '73', 'bd9ac76e-5348-4b28-b3e4-ea9d0ebc8954', '1', '2019-01-29 17:12:52', '2019-01-29 17:12:52');
INSERT INTO `card_logs` VALUES ('5c744e2a-dd4b-4cb8-b11c-c304b7dbe428', '3', '51', '97b2dc23-2853-468f-914c-a2c1bf9cc6fc', '1', '2019-01-29 17:12:52', '2019-01-29 17:12:52');
INSERT INTO `card_logs` VALUES ('acc9b54d-6ee8-4f7a-94dd-1b713bbd2e08', '2', '71', '7e21f1c3-9e89-46cd-9fdf-f407f670762b', '1', '2019-01-29 17:12:52', '2019-01-29 17:12:52');
INSERT INTO `card_logs` VALUES ('a6ae31ac-cae1-4107-807c-e5322b6cea7d', '1', '75', '0bfec220-af72-4816-abbf-242cce60b1e1', '1', '2019-01-29 17:12:53', '2019-01-29 17:12:53');
INSERT INTO `card_logs` VALUES ('417f39b9-01d4-43b4-9369-56ad4ba27020', '2', '66', 'dd8641f9-62ce-4f6f-b763-b7fde17691c8', '1', '2019-01-29 17:12:53', '2019-01-29 17:12:53');
INSERT INTO `card_logs` VALUES ('02f8267b-3a86-49f8-ba39-0733efd1605c', '3', '79', '232e4cbe-6660-4792-b199-ac41537eb449', '1', '2019-01-29 17:12:53', '2019-01-29 17:12:53');
INSERT INTO `card_logs` VALUES ('57e64fca-8f58-4d31-9985-08121b4c3b75', '1', '80', '5aa6f474-c501-4ef6-a62a-f56ba5e490b0', '1', '2019-01-29 17:12:53', '2019-01-29 17:12:53');
INSERT INTO `card_logs` VALUES ('7d88f306-935c-41f7-a153-79919063c65b', '2', '85', 'b30f1a4c-f90a-4979-a0d2-9cc3bb4dfcaa', '1', '2019-01-29 17:12:53', '2019-01-29 17:12:53');
INSERT INTO `card_logs` VALUES ('5cdd5c4a-b435-4e2e-b6b7-ad168e16bfe8', '2', '30', '8c83b3f7-757f-4060-9bcc-ba6d2224940a', '1', '2019-01-29 17:12:48', '2019-01-29 17:12:48');
INSERT INTO `card_logs` VALUES ('3d68da2d-630d-4393-9947-245e9e93a2a9', '4', '16', 'ac8fb3fe-71dc-496c-8c64-11df7dc2d942', '1', '2019-01-29 17:14:51', '2019-01-29 17:14:51');
INSERT INTO `card_logs` VALUES ('f07b5a12-1ec6-42be-8816-d94c94278222', '4', '11', '3fa89b75-4f78-4bee-b735-6083ec95e0bb', '1', '2019-01-29 17:14:51', '2019-01-29 17:14:51');
INSERT INTO `card_logs` VALUES ('97ec796d-2450-4861-938d-9aaab4e37189', '3', '3', 'fe4c99cd-acb6-49f3-8cd5-48b64ab55a72', '1', '2019-01-29 17:14:51', '2019-01-29 17:14:51');
INSERT INTO `card_logs` VALUES ('f1ac128e-9308-497c-930b-3dcdd0575f90', '1', '14', '1039092c-54f1-4c87-9adf-ed83cf7750f2', '1', '2019-01-29 17:14:51', '2019-01-29 17:14:51');
INSERT INTO `card_logs` VALUES ('7a79850e-b092-43d5-87ec-5d24a5104215', '2', '2', 'd8623147-c4e7-4894-9d81-e5307e817a6e', '1', '2019-01-29 17:14:51', '2019-01-29 17:14:51');
INSERT INTO `card_logs` VALUES ('638bbb68-45a4-4f46-afc2-ff0c1b468afe', '2', '6', 'b0b3c090-c6a1-4342-b2c0-3d54ad3cdd60', '1', '2019-01-29 17:14:51', '2019-01-29 17:14:51');
INSERT INTO `card_logs` VALUES ('275af9d3-a056-4dcc-9086-4ffb01056331', '2', '20', '441321d0-01f0-4214-9093-d42593639cfe', '1', '2019-01-29 17:14:51', '2019-01-29 17:14:51');
INSERT INTO `card_logs` VALUES ('b46b552c-09a9-4b8b-8995-dc06cdd8e818', '2', '13', '68d13537-1ef4-485b-b28a-97503ba3e69f', '1', '2019-01-29 17:14:51', '2019-01-29 17:14:51');
INSERT INTO `card_logs` VALUES ('b1c367c9-6254-4e6d-93ae-d41b3376f645', '2', '12', '4c0131e4-30cb-40fe-a0c8-2b91c8f4c6ae', '1', '2019-01-29 17:14:51', '2019-01-29 17:14:51');
INSERT INTO `card_logs` VALUES ('d6c2e31d-d5a0-4817-9686-112a3179358e', '1', '5', '35034a04-b715-41cd-bf64-8c813800fe32', '1', '2019-01-29 17:14:51', '2019-01-29 17:14:51');
INSERT INTO `card_logs` VALUES ('0da9e1bb-3125-4a3b-b801-e11a309cb604', '2', '7', '021d87a6-1684-4c00-bc62-219a73a65ed7', '1', '2019-01-29 17:14:51', '2019-01-29 17:14:51');
INSERT INTO `card_logs` VALUES ('94ad3d94-ae60-4263-b7d4-3a403f372de2', '2', '22', '3d19e829-98da-4015-826e-93ef97fc3b0d', '1', '2019-01-29 17:14:52', '2019-01-29 17:14:52');
INSERT INTO `card_logs` VALUES ('d65f3db9-2e6a-4a4c-8eea-f137f634eb56', '2', '0', '1e32c9ae-d7ee-4f47-a27a-adffa93ab21f', '1', '2019-01-29 17:14:52', '2019-01-29 17:14:52');
INSERT INTO `card_logs` VALUES ('56e90d29-68f2-45e8-b12a-924ef44d9440', '2', '4', 'c74dfa7c-5288-4d0c-ba1e-264affaf5de0', '1', '2019-01-29 17:14:52', '2019-01-29 17:14:52');
INSERT INTO `card_logs` VALUES ('27024eaa-b526-4fcc-ae44-a92978b4e52b', '1', '10', '6ebad1ce-3786-4bed-b80c-dbf345776d9e', '1', '2019-01-29 17:14:52', '2019-01-29 17:14:52');
INSERT INTO `card_logs` VALUES ('ef7a8c8f-9f2e-46fc-8a9f-1969e404f78c', '1', '9', '06643763-1d38-4c7a-b22f-89bfaaebffe4', '1', '2019-01-29 17:14:52', '2019-01-29 17:14:52');
INSERT INTO `card_logs` VALUES ('cf8fef90-5c40-4269-b757-becbe4952c6f', '2', '1', '40b325c0-d307-40da-8469-01befc456297', '1', '2019-01-29 17:14:52', '2019-01-29 17:14:52');
INSERT INTO `card_logs` VALUES ('8bec4f63-2f88-4753-914c-b62dc0062412', '1', '30', '2413641f-221a-4ff0-8216-b4036b5bb820', '1', '2019-01-29 17:14:52', '2019-01-29 17:14:52');
INSERT INTO `card_logs` VALUES ('44cb04ba-2251-4be4-b919-68d96ca1c9b6', '1', '25', '84357bcf-1c17-45da-8661-ad1336837547', '1', '2019-01-29 17:14:52', '2019-01-29 17:14:52');
INSERT INTO `card_logs` VALUES ('b6bb0c4f-830f-41f6-88d6-698f5ec18e66', '2', '26', '547086df-8373-474c-bf20-68e52fb3f160', '1', '2019-01-29 17:14:52', '2019-01-29 17:14:52');
INSERT INTO `card_logs` VALUES ('bee0770e-1ae4-4249-be75-8baf79ce2f6d', '2', '33', 'ff5286e7-b279-4e0a-b815-4affdc25e7f5', '1', '2019-01-29 17:14:52', '2019-01-29 17:14:52');
INSERT INTO `card_logs` VALUES ('98ceb93c-5c3d-4fd2-b751-6df2605a8dd5', '5', '17', '09e8e034-66fc-48aa-99dc-9795880e0443', '1', '2019-01-29 17:14:52', '2019-01-29 17:14:52');
INSERT INTO `card_logs` VALUES ('54ba73c2-0c4f-4303-b645-1744e25e4f5a', '1', '23', 'af6c4162-417b-4229-8b21-8077552d8ee1', '1', '2019-01-29 17:14:53', '2019-01-29 17:14:53');
INSERT INTO `card_logs` VALUES ('40912535-b43e-4a3a-867a-b7be99988e62', '2', '29', 'cc534d67-803d-493b-bba4-9db85a9c93be', '1', '2019-01-29 17:14:53', '2019-01-29 17:14:53');
INSERT INTO `card_logs` VALUES ('567e1f4f-4d3d-4447-9535-c933cce274b8', '2', '28', '19d649a5-f80f-48c8-8825-cb320405e8d0', '1', '2019-01-29 17:14:53', '2019-01-29 17:14:53');
INSERT INTO `card_logs` VALUES ('c244bb95-4361-4014-8511-5b8d903c3774', '1', '37', 'f88ae260-deb4-4ed4-a0ea-ee476eea5ba3', '1', '2019-01-29 17:14:53', '2019-01-29 17:14:53');
INSERT INTO `card_logs` VALUES ('ddc4344c-ffaa-4fce-8ee1-1bbe0b7ad258', '1', '35', '620cf8c7-b063-4937-8114-1624e0d254d5', '1', '2019-01-29 17:14:53', '2019-01-29 17:14:53');
INSERT INTO `card_logs` VALUES ('a89e9dc8-421b-4084-8bb0-de5794d4aa50', '2', '24', '938213fd-1ee3-4418-b1b6-d2c77378b425', '1', '2019-01-29 17:14:53', '2019-01-29 17:14:53');
INSERT INTO `card_logs` VALUES ('0fef0dba-d80f-4f36-aa8b-e817e8e534b4', '2', '15', '2fa9838c-d752-4b96-9379-a669128cb54c', '1', '2019-01-29 17:14:53', '2019-01-29 17:14:53');
INSERT INTO `card_logs` VALUES ('eb9efda5-efc7-46ed-8728-aa264d50c4cc', '2', '34', 'ba0706ac-fb6e-425b-ae0a-2e594386310c', '1', '2019-01-29 17:14:53', '2019-01-29 17:14:53');
INSERT INTO `card_logs` VALUES ('76debb41-6cc2-4622-b66f-2c7f2eafa14f', '4', '31', '8afbca59-00de-4e2a-94c0-922f71ba4aec', '1', '2019-01-29 17:14:53', '2019-01-29 17:14:53');
INSERT INTO `card_logs` VALUES ('9c83e4dd-54fe-4241-9c38-bf05d4dd308e', '1', '40', '3b9d04c9-7e00-433f-93e1-001dffc2a8fc', '1', '2019-01-29 17:14:53', '2019-01-29 17:14:53');
INSERT INTO `card_logs` VALUES ('b2e635b2-52fc-410e-a32c-2a2ba51c52fa', '1', '32', 'afb2742b-2838-45f0-99fe-9880d9f9e820', '1', '2019-01-29 17:14:53', '2019-01-29 17:14:53');
INSERT INTO `card_logs` VALUES ('a2c4205e-1539-43cc-b6b9-7a2e82f39d8e', '1', '22', 'db6ee2e9-c6a1-4022-9a21-d1deebf99640', '1', '2019-01-29 17:14:53', '2019-01-29 17:14:53');
INSERT INTO `card_logs` VALUES ('7a61609e-2e36-416e-bc0e-69aaf21eee86', '2', '44', 'a126666f-ed2e-4d92-ad17-ad51df56feab', '1', '2019-01-29 17:14:53', '2019-01-29 17:14:53');
INSERT INTO `card_logs` VALUES ('6cb29fea-7e47-40f2-af9d-498d6120b636', '3', '18', '4b7c9a0a-3feb-4426-9b5b-7d63fcf06cce', '1', '2019-01-29 17:14:53', '2019-01-29 17:14:53');
INSERT INTO `card_logs` VALUES ('6202fb64-d230-4af7-abb0-f7395a71a4ed', '1', '47', '7534bd76-909b-4055-830c-79f519b65534', '1', '2019-01-29 17:14:53', '2019-01-29 17:14:53');
INSERT INTO `card_logs` VALUES ('13a488f6-ab91-4ff3-acb5-16b9b5707bf5', '1', '39', '9c9b4d2e-0d98-4162-b63c-9f3e370aa584', '1', '2019-01-29 17:14:53', '2019-01-29 17:14:53');
INSERT INTO `card_logs` VALUES ('5014a930-8476-4711-a639-35dc4d31d99b', '2', '36', '70866ad0-a79c-4b1a-9bd0-eeb3741a05ef', '1', '2019-01-29 17:14:53', '2019-01-29 17:14:53');
INSERT INTO `card_logs` VALUES ('19ef6c1f-9c57-4e90-9937-009b01f8ca5a', '4', '45', 'ac57169b-6bd6-45fb-bc41-e0cee15d3cc2', '1', '2019-01-29 17:14:53', '2019-01-29 17:14:53');
INSERT INTO `card_logs` VALUES ('6ed70929-b0a8-4477-9b04-62c8f1470b82', '1', '25', 'c5e2ae75-f2c0-4344-b06a-f0dd64840933', '1', '2019-01-29 17:14:53', '2019-01-29 17:14:53');
INSERT INTO `card_logs` VALUES ('2c0bb422-5e79-47ca-afc1-e85e88a2ec8f', '3', '46', '66a2d423-e929-49e8-b98b-e9c15c888199', '1', '2019-01-29 17:14:54', '2019-01-29 17:14:54');
INSERT INTO `card_logs` VALUES ('00d1389b-2fe8-4fac-9193-7b54951cd62d', '2', '27', '03827eab-80cd-42b2-b840-b133fc148546', '1', '2019-01-29 17:14:54', '2019-01-29 17:14:54');
INSERT INTO `card_logs` VALUES ('ed526686-11ea-45ff-93bf-e5c6685482fa', '4', '51', 'ae0aa8a9-f15f-4d21-a89d-388fdbfe74fa', '1', '2019-01-29 17:14:54', '2019-01-29 17:14:54');
INSERT INTO `card_logs` VALUES ('efd83f47-ee4a-46c0-a31c-f57e4b80f8b3', '1', '37', '70ba6c52-585e-488d-a78d-a9076be380a5', '1', '2019-01-29 17:14:54', '2019-01-29 17:14:54');
INSERT INTO `card_logs` VALUES ('80b63a27-4971-43bb-b5bd-2a01835138f1', '1', '52', 'b9a3d1c9-7d03-4006-a21d-9d64c3f71dc7', '1', '2019-01-29 17:14:54', '2019-01-29 17:14:54');
INSERT INTO `card_logs` VALUES ('ee59390d-60b2-49ba-9790-336cf335a078', '3', '43', 'a53f51e0-160b-45fa-b674-5b38e9505ba4', '1', '2019-01-29 17:14:54', '2019-01-29 17:14:54');
INSERT INTO `card_logs` VALUES ('0b8a2383-04f3-4274-b68f-f5d742ccdb14', '3', '54', 'b299b209-2ba3-4c4a-806e-d3b75c8f0f8a', '1', '2019-01-29 17:14:54', '2019-01-29 17:14:54');
INSERT INTO `card_logs` VALUES ('1a43c539-b580-4bf5-b7a7-53942ba05af4', '2', '53', '5c9efb9e-6b6c-4f18-ae0d-186785292ced', '1', '2019-01-29 17:14:54', '2019-01-29 17:14:54');
INSERT INTO `card_logs` VALUES ('9a64e176-72d5-4b67-bb28-b714d034693a', '3', '50', 'e53f8a31-3d6e-422e-a96f-6ded6f2f8b64', '1', '2019-01-29 17:14:54', '2019-01-29 17:14:54');
INSERT INTO `card_logs` VALUES ('9cdd724e-f5b5-44ae-8b18-407db5fe7e5d', '2', '63', '58deec58-9a6a-4454-bf2d-47a3f949e22a', '1', '2019-01-29 17:14:54', '2019-01-29 17:14:54');
INSERT INTO `card_logs` VALUES ('43c032cf-65d5-4684-b78c-af3b6a661c6b', '2', '60', '9e0973f1-64e4-414d-9ea1-85d4d9468439', '1', '2019-01-29 17:14:54', '2019-01-29 17:14:54');
INSERT INTO `card_logs` VALUES ('d7b28596-9232-4d34-9406-dfbdd6698ae4', '3', '44', 'ca14e9cf-a9f4-4f72-9bf7-0c88c30244d5', '1', '2019-01-29 17:14:54', '2019-01-29 17:14:54');
INSERT INTO `card_logs` VALUES ('220fa31e-909f-4cce-87eb-025d8f8a7337', '2', '57', '2e1aa415-ba49-472f-95d7-aeea2776c860', '1', '2019-01-29 17:14:54', '2019-01-29 17:14:54');
INSERT INTO `card_logs` VALUES ('87f1688a-ce6c-4278-bd1a-76a00662a1e0', '2', '42', 'db1950fd-df7a-4379-a8c5-371b5da9a2ab', '1', '2019-01-29 17:14:54', '2019-01-29 17:14:54');
INSERT INTO `card_logs` VALUES ('f86ec997-7548-4307-b6fc-4d42c0d31dd4', '1', '62', 'd55ce3a2-08c1-4a2b-b08b-b202aa9ad91c', '1', '2019-01-29 17:14:54', '2019-01-29 17:14:54');
INSERT INTO `card_logs` VALUES ('dc0a438d-ae8b-42d9-b481-846ac11d6cba', '2', '59', 'ab87abc5-997f-42c4-a90e-b2b52aca78f1', '1', '2019-01-29 17:14:55', '2019-01-29 17:14:55');
INSERT INTO `card_logs` VALUES ('c38dc737-647c-412e-b2eb-1e4e07ead6b7', '3', '65', '2bad99cb-022b-472e-bfa0-3b9407ce83a4', '1', '2019-01-29 17:14:55', '2019-01-29 17:14:55');
INSERT INTO `card_logs` VALUES ('1ddcbac7-5024-4506-864e-5fa26839d9cf', '1', '66', '9d660dff-4ab4-4849-a804-497b62b18cde', '1', '2019-01-29 17:14:55', '2019-01-29 17:14:55');
INSERT INTO `card_logs` VALUES ('32d877e6-832a-4ef4-91c4-9fae0842d1a1', '1', '64', '9bfdeeac-5188-4f45-bfd4-9826dd56fb3f', '1', '2019-01-29 17:14:55', '2019-01-29 17:14:55');
INSERT INTO `card_logs` VALUES ('94d09dd0-80ca-4337-aa71-bce56b408d3a', '1', '70', '6dfb383e-eb2c-4fd4-8064-f723514442ed', '1', '2019-01-29 17:14:55', '2019-01-29 17:14:55');
INSERT INTO `card_logs` VALUES ('3ea53e3e-375e-494c-abce-6479f8ff5bef', '2', '72', '960e336d-4326-4d30-90d2-3a500c65311f', '1', '2019-01-29 17:14:55', '2019-01-29 17:14:55');
INSERT INTO `card_logs` VALUES ('ddaeaaae-9752-4219-9694-444e1b5f1343', '4', '76', '5b67b1e3-c1c4-4c9e-800f-7b37746c65d5', '1', '2019-01-29 17:14:55', '2019-01-29 17:14:55');
INSERT INTO `card_logs` VALUES ('44594131-96a7-4f79-8ffa-952185c46d24', '1', '61', 'a5b3ae80-b15e-4064-82c1-f75769525ede', '1', '2019-01-29 17:14:55', '2019-01-29 17:14:55');
INSERT INTO `card_logs` VALUES ('a332205d-3782-4709-9b85-a9486b596fbd', '2', '69', 'def26cb9-68ff-4904-94b8-cb36b52a11f8', '1', '2019-01-29 17:14:55', '2019-01-29 17:14:55');
INSERT INTO `card_logs` VALUES ('9a921b3c-dbbf-4dd9-ac1b-799b9379a919', '2', '79', '7b458522-049b-4fcf-b6ba-a6781981014e', '1', '2019-01-29 17:14:55', '2019-01-29 17:14:55');
INSERT INTO `card_logs` VALUES ('33f956fc-4ed5-440e-9c74-5f0934ae10ee', '1', '48', '4b261593-9114-4db4-86e5-14f01efa97f0', '1', '2019-01-29 17:14:55', '2019-01-29 17:14:55');
INSERT INTO `card_logs` VALUES ('eef97697-e94b-432b-bb8d-d80304a256de', '4', '77', '65d77d1a-a8c0-44bb-80d9-9bf9ae8175fa', '1', '2019-01-29 17:14:55', '2019-01-29 17:14:55');
INSERT INTO `card_logs` VALUES ('d449e8b3-bf5e-4061-a75a-47725c3bea7d', '1', '73', '982d1d9f-eaba-4a77-a088-ee06e4870f53', '1', '2019-01-29 17:14:55', '2019-01-29 17:14:55');
INSERT INTO `card_logs` VALUES ('2fbdf70e-009e-41d7-ac76-0cc462c7d0ab', '3', '56', '35b5da45-84d4-4755-b822-e445c0b82094', '1', '2019-01-29 17:14:55', '2019-01-29 17:14:55');
INSERT INTO `card_logs` VALUES ('3f106832-55b6-4308-910f-4d9544ba67e3', '3', '78', '11051d76-d380-406e-b4cb-6559a31ba1d9', '1', '2019-01-29 17:14:55', '2019-01-29 17:14:55');
INSERT INTO `card_logs` VALUES ('b99eeea3-0740-4458-9d7f-be0ca0122ffe', '1', '74', '0831b50c-b3c5-4970-9b0c-725cabd330d4', '1', '2019-01-29 17:14:55', '2019-01-29 17:14:55');
INSERT INTO `card_logs` VALUES ('b3b30975-7075-464c-b9f7-f69e1a1c2043', '1', '83', '899bc443-2da3-49a2-8b02-4bd5379ac08a', '1', '2019-01-29 17:14:55', '2019-01-29 17:14:55');
INSERT INTO `card_logs` VALUES ('6c490461-87bf-4868-b326-ea9a86408819', '3', '75', '829fd676-75fa-4c64-af3c-8603a1c3c321', '1', '2019-01-29 17:14:55', '2019-01-29 17:14:55');
INSERT INTO `card_logs` VALUES ('728fe1a9-45d7-4504-b6d6-f30408acb7c5', '1', '80', '894b2c53-16aa-4bd0-8a64-92a521c9d19b', '1', '2019-01-29 17:14:55', '2019-01-29 17:14:55');
INSERT INTO `card_logs` VALUES ('278ee8e0-4422-43c8-a5bc-351d49f6adcb', '1', '81', '932bd852-204f-4c6e-bce1-c9db6dc7413e', '1', '2019-01-29 17:14:56', '2019-01-29 17:14:56');
INSERT INTO `card_logs` VALUES ('6fef3883-c6e3-449e-8ecb-2b9df3624483', '2', '85', 'b4ced253-db8f-4965-b6a2-16c62c46463c', '1', '2019-01-29 17:14:56', '2019-01-29 17:14:56');
INSERT INTO `card_logs` VALUES ('15e33ff6-a755-4dca-8ab5-a9b5c4dcc3ed', '4', '86', '0f912b45-06c2-4823-9a19-ecbbb69219c3', '1', '2019-01-29 17:14:56', '2019-01-29 17:14:56');
INSERT INTO `card_logs` VALUES ('d00a66e7-8284-4235-ab5d-45350b8441a8', '1', '92', 'e02acff8-8e46-489c-939c-9a93f07d07d3', '1', '2019-01-29 17:14:56', '2019-01-29 17:14:56');
INSERT INTO `card_logs` VALUES ('74ff1cc8-695d-4805-af30-3db16fc23423', '4', '93', '84cff209-5a5e-4daf-aaf4-736df651f612', '1', '2019-01-29 17:14:56', '2019-01-29 17:14:56');
INSERT INTO `card_logs` VALUES ('18647bc7-88c5-4a39-ba14-cec35d44de5a', '4', '89', 'c4273ff4-f5ae-4a99-b7e2-98674a40cf17', '1', '2019-01-29 17:14:56', '2019-01-29 17:14:56');
INSERT INTO `card_logs` VALUES ('733c4705-c826-4bcc-a7b7-efd00f8d4f0d', '5', '95', 'ca63cc2b-0874-4a9c-81f2-57bedaf65b30', '1', '2019-01-29 17:14:56', '2019-01-29 17:14:56');
INSERT INTO `card_logs` VALUES ('dd85fd18-e674-446f-b5a7-4d76f07c2056', '1', '91', '272b6aa1-9dba-4ab6-ab74-60e5cf0b6cfb', '1', '2019-01-29 17:14:56', '2019-01-29 17:14:56');
INSERT INTO `card_logs` VALUES ('ffade28a-25f2-4881-8fd1-c1d41517cda9', '2', '88', '53a7a86d-cc92-4e1f-8252-009f767d62cb', '1', '2019-01-29 17:14:56', '2019-01-29 17:14:56');
INSERT INTO `card_logs` VALUES ('6e0bcc84-7d61-4188-8494-be4856e5d7e4', '1', '96', 'aeebbfce-d7a3-40dc-8a5d-db3df206e19b', '1', '2019-01-29 17:14:56', '2019-01-29 17:14:56');
INSERT INTO `card_logs` VALUES ('d5017adb-5a3f-4004-a6ef-3b9783c5045a', '2', '94', '1d19241d-4357-4ff4-a224-e6b25c365bc3', '1', '2019-01-29 17:14:56', '2019-01-29 17:14:56');
INSERT INTO `card_logs` VALUES ('bda64d17-0b24-4e43-b4ee-c00fa18bde8a', '1', '98', '896ebe3f-a14b-443b-851c-5953b684f2f7', '1', '2019-01-29 17:14:56', '2019-01-29 17:14:56');
INSERT INTO `card_logs` VALUES ('aa2f35e5-fc5d-4352-aff1-fa9c18cc0991', '2', '79', 'cf537a44-b00d-4cf0-a7eb-1ea13aebb2c8', '1', '2019-01-29 17:14:56', '2019-01-29 17:14:56');
INSERT INTO `card_logs` VALUES ('e79bf93b-e1a0-44a4-82c8-5817947effa5', '1', '101', '9b7d9d49-68c9-49f4-980c-402d9213e93b', '1', '2019-01-29 17:14:56', '2019-01-29 17:14:56');
INSERT INTO `card_logs` VALUES ('0f282777-c5d5-4048-8dd4-207a351b1bdc', '1', '97', '6bedacbe-9348-4199-a32b-0d00117c9cc9', '1', '2019-01-29 17:14:57', '2019-01-29 17:14:57');
INSERT INTO `card_logs` VALUES ('473f063b-8753-4695-b848-9f060a659270', '1', '82', 'fed82c06-54aa-4601-b17e-1e4b200b5242', '1', '2019-01-29 17:14:57', '2019-01-29 17:14:57');
INSERT INTO `card_logs` VALUES ('e93d6ce4-7b9a-4b40-a03e-5942f97b6db4', '4', '108', 'ec2d3b45-f82f-49d7-ba22-73db79defa51', '1', '2019-01-29 17:14:57', '2019-01-29 17:14:57');
INSERT INTO `card_logs` VALUES ('da692df9-9303-4e04-82a3-0c0b34b686d7', '1', '92', 'afc80032-e7e2-4077-831d-51dd4150ae31', '1', '2019-01-29 17:14:57', '2019-01-29 17:14:57');
INSERT INTO `card_logs` VALUES ('77219cc7-6f4f-48e5-979b-7caaa3fb329a', '2', '106', '559ae788-1582-4672-83af-ab6c9b52c4d1', '1', '2019-01-29 17:14:57', '2019-01-29 17:14:57');
INSERT INTO `card_logs` VALUES ('84b9e9c4-7d9b-410d-967e-f84ef6b35ec6', '2', '107', 'b2bedae5-0525-40ae-8ae9-15da7ee26ef9', '1', '2019-01-29 17:14:57', '2019-01-29 17:14:57');
INSERT INTO `card_logs` VALUES ('7c778174-55b2-4bfe-80de-ad2b5ccc505c', '2', '90', 'e910be81-1804-4a45-9c9f-41cefac1a622', '1', '2019-01-29 17:14:57', '2019-01-29 17:14:57');
INSERT INTO `card_logs` VALUES ('ba3cde1a-4ebc-488d-b87c-5d877cc1f9c1', '1', '81', '87a095ce-3469-4fe1-85bf-4a0357ee5dd1', '1', '2019-01-29 17:14:57', '2019-01-29 17:14:57');
INSERT INTO `card_logs` VALUES ('8652364d-c974-4cd2-9312-6839fdaf6450', '1', '109', '723a36e4-8aca-4543-a9d1-23e25ab2584a', '1', '2019-01-29 17:14:57', '2019-01-29 17:14:57');
INSERT INTO `card_logs` VALUES ('00d83bfb-2ac7-4967-9589-7c345ec1afa9', '2', '103', '2fac9925-2848-463b-97eb-3b4d858580ea', '1', '2019-01-29 17:14:57', '2019-01-29 17:14:57');
INSERT INTO `card_logs` VALUES ('8fc45fda-5762-43c6-9b02-0c7edfa24cd2', '1', '102', '28486174-2771-47a9-9d1d-38ae7d35fd17', '1', '2019-01-29 17:14:57', '2019-01-29 17:14:57');
INSERT INTO `card_logs` VALUES ('6f195c6f-8392-4a92-895f-06de7529640e', '2', '115', 'b773fd20-d8fd-49e9-a581-49ce5600b7be', '1', '2019-01-29 17:14:57', '2019-01-29 17:14:57');
INSERT INTO `card_logs` VALUES ('38481074-d2a4-463b-8cd8-9bcff5a94e65', '1', '116', '71956829-6430-4f8e-9e1b-cfb04189dabb', '1', '2019-01-29 17:14:57', '2019-01-29 17:14:57');
INSERT INTO `card_logs` VALUES ('4e18f2f1-50e0-49a1-96ad-5af95ae7446e', '1', '113', 'fc35bf1e-e47f-4deb-8da3-d95e941b5dc6', '1', '2019-01-29 17:14:57', '2019-01-29 17:14:57');
INSERT INTO `card_logs` VALUES ('a8cf7c6d-d9c8-419b-97e2-7a8e692210a3', '2', '112', '5395ba82-18b4-4774-ac66-9de71b4b9cc6', '1', '2019-01-29 17:14:58', '2019-01-29 17:14:58');
INSERT INTO `card_logs` VALUES ('00151bf8-b774-4eb8-9923-be6f3020be41', '1', '114', 'b43273d4-0589-4c89-b2ef-58c96b239129', '1', '2019-01-29 17:14:58', '2019-01-29 17:14:58');
INSERT INTO `card_logs` VALUES ('667bc5b7-a6da-4a87-a92e-f38d36c0e11d', '1', '122', 'bbe95a04-1908-47a1-8590-1a3dd6b6e87a', '1', '2019-01-29 17:14:58', '2019-01-29 17:14:58');
INSERT INTO `card_logs` VALUES ('c3c27ba8-99b2-4434-8172-e4340387b413', '2', '83', '8515468b-3dea-4cdd-ad22-6e1de658606a', '1', '2019-01-29 17:14:58', '2019-01-29 17:14:58');
INSERT INTO `card_logs` VALUES ('4a73531d-17cf-4b20-9312-a924bf41a599', '2', '124', 'dfe8c295-426e-42d8-8b9c-2c421961115a', '1', '2019-01-29 17:14:58', '2019-01-29 17:14:58');
INSERT INTO `card_logs` VALUES ('6a5eb29b-e54c-4e21-bfb1-4f02a3a05981', '2', '125', '2eeb5eab-70f3-4b81-af2a-efb91f995530', '1', '2019-01-29 17:14:58', '2019-01-29 17:14:58');
INSERT INTO `card_logs` VALUES ('0528c63c-937d-4b92-945b-151b55aa2fdd', '2', '127', '904bc5f9-8d99-4dc4-a036-8a5daf6ee6eb', '1', '2019-01-29 17:14:58', '2019-01-29 17:14:58');
INSERT INTO `card_logs` VALUES ('e4f8b2ac-005b-43cc-8502-3e1b383aff70', '2', '105', '725b1bbd-5064-4742-87a1-fe883682cf08', '1', '2019-01-29 17:14:58', '2019-01-29 17:14:58');
INSERT INTO `card_logs` VALUES ('8dae4547-0864-494f-93d2-5e64317706e2', '2', '120', 'f831ff28-e388-4cd6-81b5-ba57d0d99c88', '1', '2019-01-29 17:14:58', '2019-01-29 17:14:58');
INSERT INTO `card_logs` VALUES ('aac1c09a-2b35-489d-a349-fc9bbdd59863', '2', '121', '9e155960-ad46-4431-89c7-11f0b2561941', '1', '2019-01-29 17:14:58', '2019-01-29 17:14:58');
INSERT INTO `card_logs` VALUES ('6685f8a0-c10c-43f3-99a5-a303965c0f00', '3', '126', '3593f89a-7cd9-452d-acb4-1f575b0ee110', '1', '2019-01-29 17:14:58', '2019-01-29 17:14:58');
INSERT INTO `card_logs` VALUES ('fe6a4525-fd2c-4a10-9c3c-c9ee2c4c9193', '1', '111', '5e3373b1-f74c-4e62-ba93-1df4a7bc08d1', '1', '2019-01-29 17:14:58', '2019-01-29 17:14:58');
INSERT INTO `card_logs` VALUES ('d68d6590-134a-4c6a-ad85-022c8d6c0c47', '1', '104', '0932839e-09c2-4355-be38-0f59ce2c1e0c', '1', '2019-01-29 17:14:59', '2019-01-29 17:14:59');
INSERT INTO `card_logs` VALUES ('22e7b554-1d66-457c-b2f6-9f09fc551478', '2', '123', '9c19fc40-9fa6-428e-853c-87f9f6082df1', '1', '2019-01-29 17:14:59', '2019-01-29 17:14:59');
INSERT INTO `card_logs` VALUES ('de32330f-cbb4-48a4-908d-c7c33a856ad7', '1', '119', 'a87190ef-dba0-44c6-a0eb-56f99cc8caa5', '1', '2019-01-29 17:14:59', '2019-01-29 17:14:59');
INSERT INTO `card_logs` VALUES ('7b6edc87-dbfa-474b-8808-e774a35ebb5b', '2', '133', 'a2b9a461-eee6-407e-bcee-7aba1d6df078', '1', '2019-01-29 17:14:59', '2019-01-29 17:14:59');
INSERT INTO `card_logs` VALUES ('23dde5b3-db4e-4881-897d-96a176c05b2e', '3', '102', 'c7e5ed38-e847-4bee-a7d4-9ad25b8b5197', '1', '2019-01-29 17:14:59', '2019-01-29 17:14:59');
INSERT INTO `card_logs` VALUES ('e4846324-0f5c-4c96-b35b-49f9162603aa', '2', '143', 'f7860099-fedc-4414-8fce-5080ea62e66c', '1', '2019-01-29 17:14:59', '2019-01-29 17:14:59');
INSERT INTO `card_logs` VALUES ('a6134f64-818d-42d4-a5a1-68b094120fa1', '2', '144', '889c6240-e733-45fd-b936-b3d0aefb1dec', '1', '2019-01-29 17:14:59', '2019-01-29 17:14:59');
INSERT INTO `card_logs` VALUES ('809e534d-ed0a-4684-a92d-44e938efdd41', '5', '127', '46ab707b-8299-4f92-af74-25be760556d0', '1', '2019-01-29 17:14:59', '2019-01-29 17:14:59');
INSERT INTO `card_logs` VALUES ('4a29ed86-4d3d-4747-a344-029b86de9356', '2', '145', '90719bf7-83a9-49d4-babb-2ded78047680', '1', '2019-01-29 17:14:59', '2019-01-29 17:14:59');
INSERT INTO `card_logs` VALUES ('89d669fe-4954-429d-b44f-b7e37153f970', '3', '146', '952ba81b-9ff9-4441-9891-e216e9e639d8', '1', '2019-01-29 17:14:59', '2019-01-29 17:14:59');
INSERT INTO `card_logs` VALUES ('6ebcf26a-8423-42c4-9864-85fa638f43a6', '4', '147', '5a396b6f-55e9-47f7-af98-7502a56ed4d7', '1', '2019-01-29 17:14:59', '2019-01-29 17:14:59');
INSERT INTO `card_logs` VALUES ('6693b90d-98cf-4425-a13f-db164b1550cc', '3', '148', 'dec9a391-c9e6-445a-8ea7-599b7a299e9f', '1', '2019-01-29 17:15:00', '2019-01-29 17:15:00');
INSERT INTO `card_logs` VALUES ('ebf9a8f9-6607-4610-b993-b36006aa3cbc', '2', '149', '68a0a538-8a0d-454d-9714-01b3086e3247', '1', '2019-01-29 17:15:00', '2019-01-29 17:15:00');
INSERT INTO `card_logs` VALUES ('59d8947b-aebc-4a9d-a028-219d2ad65448', '2', '150', '90223187-080e-406f-a03d-fc696c1d0daf', '1', '2019-01-29 17:15:00', '2019-01-29 17:15:00');
INSERT INTO `card_logs` VALUES ('53b03136-1081-44fe-93e0-354327fc888e', '1', '129', '534350df-7c77-43a9-b126-029527323a66', '1', '2019-01-29 17:15:00', '2019-01-29 17:15:00');
INSERT INTO `card_logs` VALUES ('aa2c5672-ad07-407b-a059-f53ec7f70fb2', '2', '151', '1b491292-94fe-4b70-989f-1e20121b5609', '1', '2019-01-29 17:15:00', '2019-01-29 17:15:00');
INSERT INTO `card_logs` VALUES ('39385d46-b078-4a5d-b7ad-49a506355c9f', '2', '152', '2b568f63-67ec-4ef2-a089-3f981ee12aa8', '1', '2019-01-29 17:15:00', '2019-01-29 17:15:00');
INSERT INTO `card_logs` VALUES ('cac83fb7-d223-4447-889a-ccd257359a89', '1', '153', '02d0dcf5-6a13-413a-a1b7-b66634e6102b', '1', '2019-01-29 17:15:00', '2019-01-29 17:15:00');
INSERT INTO `card_logs` VALUES ('2d66dfb8-5440-4fba-941c-b20938ae3017', '1', '116', '22b3e206-bd95-4cec-8fdf-9b4aca52b393', '1', '2019-01-29 17:15:00', '2019-01-29 17:15:00');
INSERT INTO `card_logs` VALUES ('6dc69cb2-178b-4461-9237-25997bc027c4', '3', '103', '4e99662e-5476-440a-99ea-a57bf0a42cba', '1', '2019-01-29 17:15:00', '2019-01-29 17:15:00');
INSERT INTO `card_logs` VALUES ('6a62109f-2a18-4205-b254-1ef7b45d5489', '4', '154', '2f160bd7-5788-4bca-9906-90cad7807702', '1', '2019-01-29 17:15:00', '2019-01-29 17:15:00');
INSERT INTO `card_logs` VALUES ('0d5257df-202f-4fe9-be3d-ce19046a087b', '2', '110', '11b1c9c1-9d49-46a1-a563-53ed915356bf', '1', '2019-01-29 17:15:00', '2019-01-29 17:15:00');
INSERT INTO `card_logs` VALUES ('095a7b5a-425f-4a6e-87c1-440e2e6dfc51', '2', '142', '4f35acac-de43-4c15-aa66-27943767f7ff', '1', '2019-01-29 17:15:00', '2019-01-29 17:15:00');
INSERT INTO `card_logs` VALUES ('242f8bf8-8885-40b1-9a5c-a063f7bf14a6', '1', '93', 'bfc0fca2-6109-4998-ae3c-2e9f738f41de', '1', '2019-01-29 17:15:00', '2019-01-29 17:15:00');
INSERT INTO `card_logs` VALUES ('daab485e-580c-41e2-a00f-8fda331bd617', '4', '137', '0c6a8aa7-7576-4a8f-9fca-b2e8507e8dfc', '1', '2019-01-29 17:15:00', '2019-01-29 17:15:00');
INSERT INTO `card_logs` VALUES ('2fd528ce-a506-41bd-950a-6164d5f35094', '2', '135', 'e94cc0ee-2eaa-408f-81bb-9986cf0e7d98', '1', '2019-01-29 17:15:00', '2019-01-29 17:15:00');
INSERT INTO `card_logs` VALUES ('0bdc2bdb-ecb4-44b1-a003-4b33c55912de', '2', '159', '875252f0-fd41-45e1-a4a0-064e82e22a9d', '1', '2019-01-29 17:15:00', '2019-01-29 17:15:00');
INSERT INTO `card_logs` VALUES ('e37bb178-77f5-4bbf-9057-0385a56791a2', '1', '106', '73bb0ac7-cd82-4818-abec-bf8d306c47ee', '1', '2019-01-29 17:15:01', '2019-01-29 17:15:01');
INSERT INTO `card_logs` VALUES ('3d1ed07e-278e-4fbc-b204-bf378fa2de22', '1', '130', '85df4ca0-e530-4768-8a63-ac77f67a5732', '1', '2019-01-29 17:15:01', '2019-01-29 17:15:01');
INSERT INTO `card_logs` VALUES ('5d143c76-72bc-4ffd-af33-c0b7c68b40dc', '1', '138', '2a9ceda9-5e39-408f-a060-05be719c89a2', '1', '2019-01-29 17:15:01', '2019-01-29 17:15:01');
INSERT INTO `card_logs` VALUES ('c5b6b9cd-50bd-48b8-9dc9-82f20a3a8e80', '2', '141', 'd0211831-72e8-4ade-ae4d-7b8464376d47', '1', '2019-01-29 17:15:01', '2019-01-29 17:15:01');
INSERT INTO `card_logs` VALUES ('7ca20bbd-81a2-47fd-9ea7-f0ebfa839a15', '2', '155', 'c8eccd67-daaf-4670-a7fd-5e2dbeb10249', '1', '2019-01-29 17:15:01', '2019-01-29 17:15:01');
INSERT INTO `card_logs` VALUES ('4b391c1d-13fc-4ae0-bf0f-07ce4151a81b', '2', '163', '8c3b8a84-79e2-4c4a-bfc9-327174775611', '1', '2019-01-29 17:15:01', '2019-01-29 17:15:01');
INSERT INTO `card_logs` VALUES ('5733ce80-3ee7-499d-9b8c-fc5be25ad1a1', '1', '164', 'c79c1b01-888d-434b-90a8-7ffa6ae90ad4', '1', '2019-01-29 17:15:01', '2019-01-29 17:15:01');
INSERT INTO `card_logs` VALUES ('f0f63f39-711a-47c6-8394-c18ddb4979a3', '4', '161', '3fe6638b-b3d7-4092-b2de-2c6d1890a6ff', '1', '2019-01-29 17:15:01', '2019-01-29 17:15:01');
INSERT INTO `card_logs` VALUES ('811e9ad8-678d-427b-8c7d-da29420b245d', '1', '133', '352be950-add6-490a-95bb-e0f98d21bf21', '1', '2019-01-29 17:15:01', '2019-01-29 17:15:01');
INSERT INTO `card_logs` VALUES ('7f326ca5-8fb6-432d-b850-e624a6e3a9e0', '1', '140', '00d7a5af-ee94-4367-b4fc-e163d2de5c7e', '1', '2019-01-29 17:15:01', '2019-01-29 17:15:01');
INSERT INTO `card_logs` VALUES ('5a332e6a-44a1-41e6-976c-e5e03e308acb', '1', '160', 'c03eb287-461e-4c93-ad45-deeca447da1b', '1', '2019-01-29 17:15:01', '2019-01-29 17:15:01');
INSERT INTO `card_logs` VALUES ('a4c5923a-cf0d-4e48-a3ee-6a8deb71cc21', '4', '139', '3bb0741c-d4ba-418e-a6eb-9a1ff19dc7a1', '1', '2019-01-29 17:15:01', '2019-01-29 17:15:01');
INSERT INTO `card_logs` VALUES ('d6e71b53-2c8d-4b33-8b1d-1cc2d7601c4e', '2', '165', 'f198587b-219b-4a7f-9f0f-85e9177b6fe4', '1', '2019-01-29 17:15:01', '2019-01-29 17:15:01');
INSERT INTO `card_logs` VALUES ('8e1ea289-8476-45bc-a034-63bd403889e1', '3', '158', 'dba0e05d-1e8b-4072-b89b-ccb408a49168', '1', '2019-01-29 17:15:01', '2019-01-29 17:15:01');
INSERT INTO `card_logs` VALUES ('7a07fa10-7e96-4dcd-adc7-1e2c1c0ac987', '1', '166', '0ade09a3-9bab-4690-80d0-3d630bffa657', '1', '2019-01-29 17:15:01', '2019-01-29 17:15:01');
INSERT INTO `card_logs` VALUES ('ee7a197f-3374-4925-b663-7c76b46aae4c', '1', '168', '4bafcdcc-d993-4ec2-a85f-55d1b36f000b', '1', '2019-01-29 17:15:01', '2019-01-29 17:15:01');
INSERT INTO `card_logs` VALUES ('48764aa2-59a1-4942-ba22-91f62de4598c', '1', '157', '1429ef33-429f-4335-bf25-885467fb18a0', '1', '2019-01-29 17:15:02', '2019-01-29 17:15:02');
INSERT INTO `card_logs` VALUES ('e9e62550-d28b-4620-807f-aeee116a9ddf', '2', '162', '6a4bb002-c450-44e0-8e12-1c45b37874bf', '1', '2019-01-29 17:15:02', '2019-01-29 17:15:02');
INSERT INTO `card_logs` VALUES ('07d11054-466e-4d6a-83c5-e0995f727d77', '2', '169', '95ef57fe-4086-426d-b9c2-7ef1bb93b280', '1', '2019-01-29 17:15:02', '2019-01-29 17:15:02');
INSERT INTO `card_logs` VALUES ('62975c38-553f-4d87-bc74-e5f93989dd9b', '1', '170', 'c1d7df88-f2eb-4b05-a937-35b7447a4547', '1', '2019-01-29 17:15:02', '2019-01-29 17:15:02');
INSERT INTO `card_logs` VALUES ('c1346ca0-2f0a-40a2-840f-007e042b01af', '2', '134', 'cf2dfe90-c5c3-429e-aee7-a8e94f5c2850', '1', '2019-01-29 17:15:02', '2019-01-29 17:15:02');
INSERT INTO `card_logs` VALUES ('2d63fffe-2c40-4f44-9d71-4cc92e12aa54', '4', '184', '80fa4e44-2b09-4a1c-a70a-0fb0245d28d9', '1', '2019-01-29 17:15:02', '2019-01-29 17:15:02');
INSERT INTO `card_logs` VALUES ('5de83f1c-d690-498e-96ab-4b8ed62d765b', '1', '183', 'bb4e3abb-05be-4ab5-9d84-27e96f302d60', '1', '2019-01-29 17:15:02', '2019-01-29 17:15:02');
INSERT INTO `card_logs` VALUES ('811c7fa0-4953-4eff-9763-4fffe37b46d9', '2', '181', 'b97a1ee9-6ed6-43e5-b4c0-d285ba713bd6', '1', '2019-01-29 17:15:02', '2019-01-29 17:15:02');
INSERT INTO `card_logs` VALUES ('c3577d8e-6434-4f49-9898-a3fbdb33b4f3', '1', '175', 'bbe00ddc-b97d-4cd6-a262-de2adaecf334', '1', '2019-01-29 17:15:03', '2019-01-29 17:15:03');
INSERT INTO `card_logs` VALUES ('3f47ced1-c96f-47d0-8d02-add97a14bb06', '2', '189', '437651de-ef30-4f89-9800-6c80dea7b4c4', '1', '2019-01-29 17:15:03', '2019-01-29 17:15:03');
INSERT INTO `card_logs` VALUES ('7b06031c-bd25-4a08-b4bf-45db76575d2e', '2', '185', '9137a641-cef8-427a-a0ac-46276ed07c5a', '1', '2019-01-29 17:15:02', '2019-01-29 17:15:02');
INSERT INTO `card_logs` VALUES ('a51456c8-358e-4349-96cb-d5f68555145f', '2', '182', '7155da9a-2e01-4c7d-b993-ec38745c1323', '1', '2019-01-29 17:15:03', '2019-01-29 17:15:03');
INSERT INTO `card_logs` VALUES ('0e29ba13-bd44-4341-b161-6baee7e9540f', '4', '186', '9c06d7e6-e248-46e1-8f85-4a16596b33df', '1', '2019-01-29 17:15:03', '2019-01-29 17:15:03');
INSERT INTO `card_logs` VALUES ('6bcc609d-6723-4703-b3a3-85cd9795d9b2', '1', '190', '52e8d007-b1b0-4fe3-9f0c-3cea3537273e', '1', '2019-01-29 17:15:03', '2019-01-29 17:15:03');
INSERT INTO `card_logs` VALUES ('806fdd81-91a7-4e5d-afa1-501fa598c07f', '2', '170', 'f7c86876-e4f0-4a1a-a1bc-98fa7042d9f4', '1', '2019-01-29 17:15:03', '2019-01-29 17:15:03');
INSERT INTO `card_logs` VALUES ('ca57594f-2b8e-40aa-ba08-6c1745730b21', '3', '191', '1355ccaa-1921-4ac4-9f27-19d23c86d9e5', '1', '2019-01-29 17:15:03', '2019-01-29 17:15:03');
INSERT INTO `card_logs` VALUES ('a5a5a8eb-8c18-4fd5-8bc5-e312f4b69c77', '2', '177', '69e00f74-85b4-4c04-b6b5-5e5c764d1e1c', '1', '2019-01-29 17:15:03', '2019-01-29 17:15:03');
INSERT INTO `card_logs` VALUES ('3724b153-560c-420c-a5de-9b6e86129b33', '1', '192', 'deb09049-cea2-4d9e-8801-028ee8e39134', '1', '2019-01-29 17:15:04', '2019-01-29 17:15:04');
INSERT INTO `card_logs` VALUES ('e08d4889-7bd5-4cd0-b47e-16bb7b64ed6d', '3', '193', '03270a04-a11c-40eb-a4a8-ee5265688034', '1', '2019-01-29 17:15:04', '2019-01-29 17:15:04');
INSERT INTO `card_logs` VALUES ('a885c27d-d445-4054-9311-35c6cdbe3d7f', '1', '195', 'f0c6ba04-3cc2-454f-9ae4-9359d7f55582', '1', '2019-01-29 17:15:04', '2019-01-29 17:15:04');
INSERT INTO `card_logs` VALUES ('296e3532-c004-4a05-9cf6-fe2839ea047b', '2', '173', '675658fb-aa12-444b-99bf-c826244315e9', '1', '2019-01-29 17:15:04', '2019-01-29 17:15:04');
INSERT INTO `card_logs` VALUES ('37846f28-c182-4f4a-955f-d2c8adaefae1', '2', '179', '52a7fd07-ff72-4f45-8860-0f33f6f3c786', '1', '2019-01-29 17:15:04', '2019-01-29 17:15:04');
INSERT INTO `card_logs` VALUES ('f137ecd6-da8a-45ba-9219-00e61cc42526', '1', '176', '982b37d2-f32b-485a-92c1-c159eca6d5fb', '1', '2019-01-29 17:15:04', '2019-01-29 17:15:04');
INSERT INTO `card_logs` VALUES ('7be4e4ee-0024-47ef-9b4e-e738ca23ca89', '2', '178', 'f53c9e14-a681-4b29-8d74-5d3148b370e9', '1', '2019-01-29 17:15:04', '2019-01-29 17:15:04');
INSERT INTO `card_logs` VALUES ('eee41385-a141-40de-a99e-d1dbb2485507', '3', '188', '996ab278-0017-4e6a-a19b-10c3c5a70dd2', '1', '2019-01-29 17:15:04', '2019-01-29 17:15:04');
INSERT INTO `card_logs` VALUES ('404b98b0-ad3b-40f8-b7f1-d7da1ed622d2', '1', '171', '5ed48efd-d55a-4eff-ba47-67f5ae3b4a2f', '1', '2019-01-29 17:15:04', '2019-01-29 17:15:04');
INSERT INTO `card_logs` VALUES ('124a9bc0-1c54-4742-8f23-d9844fb92ac6', '1', '194', 'c3520523-5b61-40ec-91d5-c48b217b34a2', '1', '2019-01-29 17:15:04', '2019-01-29 17:15:04');
INSERT INTO `card_logs` VALUES ('d31e1a6e-6315-44ff-96f1-1bdd6a10a878', '3', '147', 'f88dc353-e4dc-4cd2-9f03-e40ea488fe3e', '1', '2019-01-29 17:15:04', '2019-01-29 17:15:04');
INSERT INTO `card_logs` VALUES ('de949b4c-8b20-40b8-9061-637fd63449cc', '1', '181', 'd28f0462-b37c-4d36-928a-d90f30b26c88', '1', '2019-01-29 17:15:04', '2019-01-29 17:15:04');
INSERT INTO `card_logs` VALUES ('c02a1367-4382-411e-89b0-a2546a9c5114', '3', '182', 'b9bde706-5ee9-4c83-8df3-ac0362c9f412', '1', '2019-01-29 17:15:04', '2019-01-29 17:15:04');
INSERT INTO `card_logs` VALUES ('9b604c3c-0857-4b30-9f58-172693c2553d', '3', '177', '59fde602-67df-42f4-aceb-46e2a54d33bc', '1', '2019-01-29 17:15:04', '2019-01-29 17:15:04');
INSERT INTO `card_logs` VALUES ('691c26ec-821b-40ac-8761-e6c84f82a202', '2', '198', '6d45d241-c06a-4eb5-8cbc-e22477b14a3e', '1', '2019-01-29 17:15:04', '2019-01-29 17:15:04');
INSERT INTO `card_logs` VALUES ('cb82b36a-91b8-4c22-9f84-5d3c1d45faee', '1', '196', '18d83bd7-3231-4a83-bfd2-50ba210447a9', '1', '2019-01-29 17:15:04', '2019-01-29 17:15:04');
INSERT INTO `card_logs` VALUES ('41fa6693-73da-43fe-9418-05d2e48600a5', '1', '175', '78e3b228-edf7-4406-9f1f-cc234b87749f', '1', '2019-01-29 17:15:04', '2019-01-29 17:15:04');
INSERT INTO `card_logs` VALUES ('3244f789-bb54-4f5b-b7ce-df4fb8d0bbef', '1', '184', '575e277f-1855-4dfb-8290-5e2b20cd7cec', '1', '2019-01-29 17:15:04', '2019-01-29 17:15:04');
INSERT INTO `card_logs` VALUES ('b684196b-d689-46cd-8600-c7ed7c2e0140', '2', '183', '4a64f6fe-740e-4820-bd60-ff45618497af', '1', '2019-01-29 17:15:04', '2019-01-29 17:15:04');
INSERT INTO `card_logs` VALUES ('f3ef3514-76b8-4c9a-891d-6e6423908157', '3', '10', '7b1855a6-f1b4-4caa-b429-1b017a978357', '1', '2019-01-29 17:28:16', '2019-01-29 17:28:16');
INSERT INTO `card_logs` VALUES ('5e8f62d7-c4d7-4556-9ec6-793e0a1bebc7', '2', '13', '099538ca-c20b-477a-abb3-3590d81e3c10', '1', '2019-01-29 17:28:17', '2019-01-29 17:28:17');
INSERT INTO `card_logs` VALUES ('29d5aae6-77ca-4a74-9ddd-7650286d978e', '2', '16', 'c258d3e4-2060-4d92-9b39-a466bcad99ad', '1', '2019-01-29 17:28:16', '2019-01-29 17:28:16');
INSERT INTO `card_logs` VALUES ('ddafa807-c877-4574-b001-ff8473bc8dbe', '3', '3', '031aaf15-5f3a-47bd-8682-e81a73a57795', '1', '2019-01-29 17:28:16', '2019-01-29 17:28:16');
INSERT INTO `card_logs` VALUES ('2ee2870f-a380-4ca1-a8d7-e837dbb7f65b', '1', '15', 'ac6fe097-2d04-41f2-9429-07ec5c95e40f', '1', '2019-01-29 17:28:17', '2019-01-29 17:28:17');
INSERT INTO `card_logs` VALUES ('ce8e0cf8-6cd1-4ae6-8f15-891d49c0e918', '3', '12', 'f58993af-c64b-421d-9b3a-7f1a65571fc6', '1', '2019-01-29 17:28:17', '2019-01-29 17:28:17');
INSERT INTO `card_logs` VALUES ('69bc9803-c680-494b-813a-7da43b467823', '1', '14', '205d35c5-1588-4401-97c6-53c920eeac67', '1', '2019-01-29 17:28:17', '2019-01-29 17:28:17');
INSERT INTO `card_logs` VALUES ('dbf94d5f-d113-4cee-91cf-fb161aa8008a', '1', '2', 'fdbfc80a-a159-421e-8554-6c8d9c29fbc5', '1', '2019-01-29 17:28:17', '2019-01-29 17:28:17');
INSERT INTO `card_logs` VALUES ('0b5064bc-b1f1-4e0c-87db-7c9935b833ff', '1', '17', '1df5c6fb-b148-4b37-88f9-0da52d4e29cb', '1', '2019-01-29 17:28:17', '2019-01-29 17:28:17');
INSERT INTO `card_logs` VALUES ('708b90c5-fd15-4e21-b1fd-37519d8a5645', '1', '1', 'abaf4c64-c8aa-40a5-aa1b-6205e803761f', '1', '2019-01-29 17:28:17', '2019-01-29 17:28:17');
INSERT INTO `card_logs` VALUES ('9579189e-72a3-4f07-a3b3-543259292ae5', '3', '8', 'bab86804-a95c-4fb0-850b-970d6b313c93', '1', '2019-01-29 17:28:17', '2019-01-29 17:28:17');
INSERT INTO `card_logs` VALUES ('f96b9cfd-106d-4de0-bfe2-45f32b9e6eb3', '2', '5', '2a1b7acf-eb51-4794-8417-a50bd5f1966f', '1', '2019-01-29 17:28:17', '2019-01-29 17:28:17');
INSERT INTO `card_logs` VALUES ('150016a1-2c05-40b7-97e5-1d035ad344ca', '2', '22', '8a3ddd64-8d0b-4c25-8bd9-bfa3cb53e059', '1', '2019-01-29 17:28:17', '2019-01-29 17:28:17');
INSERT INTO `card_logs` VALUES ('0d87d1d6-fd80-4713-b20c-db95c220d283', '1', '7', 'e4976e5e-021d-402f-9b7e-ff2b0e6dd3bb', '1', '2019-01-29 17:28:17', '2019-01-29 17:28:17');
INSERT INTO `card_logs` VALUES ('0af7f6cc-221e-4e81-a480-ee9ee682931a', '1', '25', '677f55df-0ca9-4612-9ef8-acd410f814fc', '1', '2019-01-29 17:28:18', '2019-01-29 17:28:18');
INSERT INTO `card_logs` VALUES ('9ca454c6-ab27-42ca-b4f4-1ac20dd2fc06', '1', '4', '8ffcf771-e2dd-4bb4-a947-6ac828225787', '1', '2019-01-29 17:28:18', '2019-01-29 17:28:18');
INSERT INTO `card_logs` VALUES ('db8feac4-4ec8-47d2-929e-9aa99ee6b1f1', '1', '23', 'd672f5e3-0b5e-4146-9829-2cce8d3db813', '1', '2019-01-29 17:28:18', '2019-01-29 17:28:18');
INSERT INTO `card_logs` VALUES ('724149ea-0a10-4b7e-9d17-ef188ee55bd6', '1', '20', '61b28520-0da5-4d2b-912b-7e387b596a0c', '1', '2019-01-29 17:28:18', '2019-01-29 17:28:18');
INSERT INTO `card_logs` VALUES ('dfcf63a1-5c55-4898-af8e-7972aa02b0ca', '2', '26', '54302cc2-3aec-428f-8c9b-64509bd2b85f', '1', '2019-01-29 17:28:18', '2019-01-29 17:28:18');
INSERT INTO `card_logs` VALUES ('13cbbf09-49ef-40ab-8440-2cdf04874206', '2', '6', '3c0948d5-0c2a-421b-8c74-cdf7a8199d03', '1', '2019-01-29 17:28:18', '2019-01-29 17:28:18');
INSERT INTO `card_logs` VALUES ('5c0d0818-1fa3-45ea-96ba-6aedf081d44f', '3', '32', 'cda6cc65-c824-4ff2-adfd-be0414cb0442', '1', '2019-01-29 17:28:18', '2019-01-29 17:28:18');
INSERT INTO `card_logs` VALUES ('d165901f-728e-4699-b7ff-a1b3059bfd5a', '3', '10', 'e8db5119-9672-4f90-b594-3d7bffe1b9f2', '1', '2019-01-29 17:28:18', '2019-01-29 17:28:18');
INSERT INTO `card_logs` VALUES ('dec8cd73-2156-453d-9953-023967923c51', '4', '3', '8e2d2fe0-88c1-4ce1-91b2-d0e50653f6fb', '1', '2019-01-29 17:28:18', '2019-01-29 17:28:18');
INSERT INTO `card_logs` VALUES ('5908afce-5f71-417a-a68d-640d046be12e', '2', '27', '94592958-d9b1-4caa-9d37-0235e853c5cc', '1', '2019-01-29 17:28:18', '2019-01-29 17:28:18');
INSERT INTO `card_logs` VALUES ('d598660c-344b-4a32-adeb-3e763746e4d9', '2', '31', '32d232dd-ae06-44f9-abed-525bf51df339', '1', '2019-01-29 17:28:18', '2019-01-29 17:28:18');
INSERT INTO `card_logs` VALUES ('bfdb19dd-fba9-4f63-8b39-ae7ac61ffd84', '1', '19', '864e083b-7b18-4bfa-80af-651ffaa4c021', '1', '2019-01-29 17:28:18', '2019-01-29 17:28:18');
INSERT INTO `card_logs` VALUES ('813f8a1a-9f76-43e7-a93c-10190e1c9b51', '1', '36', '9fe1e43d-9803-42bd-b952-ccfdae03031d', '1', '2019-01-29 17:28:18', '2019-01-29 17:28:18');
INSERT INTO `card_logs` VALUES ('f3920f01-b8b5-4d9e-8326-39644139f873', '1', '24', 'c79c7d93-7dfc-41f8-94a8-e66a531c491c', '1', '2019-01-29 17:28:18', '2019-01-29 17:28:18');
INSERT INTO `card_logs` VALUES ('0267fbb1-94e5-4160-9726-699b8d95e443', '1', '8', '1671813b-dc30-40cd-acfc-ee330e15d2e1', '1', '2019-01-29 17:28:19', '2019-01-29 17:28:19');
INSERT INTO `card_logs` VALUES ('6c87527d-5a67-4160-9067-62a3d48ef74b', '3', '29', 'd0230d4f-19cc-4a54-8412-216a929d37ae', '1', '2019-01-29 17:28:19', '2019-01-29 17:28:19');
INSERT INTO `card_logs` VALUES ('770f6212-8a7a-4333-8ef0-24a9fbefb85a', '1', '34', 'f3502e47-1ce8-41dc-86e8-9c37058026c9', '1', '2019-01-29 17:28:19', '2019-01-29 17:28:19');
INSERT INTO `card_logs` VALUES ('08aa20d5-dff1-42e6-b372-8b49fe595bc4', '3', '37', '4e0ae165-472a-430a-b0ce-4eef39df0f23', '1', '2019-01-29 17:28:19', '2019-01-29 17:28:19');
INSERT INTO `card_logs` VALUES ('8331a239-10d6-4b4d-a701-c1357ba77737', '4', '33', '17ce2de8-1f63-4f76-a980-7151e2f750d4', '1', '2019-01-29 17:28:19', '2019-01-29 17:28:19');
INSERT INTO `card_logs` VALUES ('b5fd2be8-2fd4-4130-897f-dee0361c9544', '2', '39', '1b8a302d-5c57-4853-8dc1-06b56e4a90b6', '1', '2019-01-29 17:28:19', '2019-01-29 17:28:19');
INSERT INTO `card_logs` VALUES ('9c785354-4aff-4d56-a49d-48dd45ee7ac7', '1', '35', '0571ee92-a5d9-4662-8fa2-12b1fb32d4d9', '1', '2019-01-29 17:28:19', '2019-01-29 17:28:19');
INSERT INTO `card_logs` VALUES ('c1da750d-ec9b-4317-9b73-e91d7a322c38', '1', '28', 'df2ab4a0-a1b6-42ba-9ccf-2fa653ebfc9e', '1', '2019-01-29 17:28:19', '2019-01-29 17:28:19');
INSERT INTO `card_logs` VALUES ('64bb1624-9c8e-46e7-8c68-185429ad5361', '1', '40', 'f4a1df0d-aca2-4d8d-a2b7-ef662a80e235', '1', '2019-01-29 17:28:19', '2019-01-29 17:28:19');
INSERT INTO `card_logs` VALUES ('936b4c72-2003-4ad9-bad2-260339746950', '2', '41', 'e08411b1-ba9f-4225-8365-fb9ec9be2b86', '1', '2019-01-29 17:28:19', '2019-01-29 17:28:19');
INSERT INTO `card_logs` VALUES ('f027f74d-9ace-4de8-b8ce-4d416fc6c01d', '3', '45', '69f1744c-de43-43aa-9a99-9dbc79d3cdab', '1', '2019-01-29 17:28:19', '2019-01-29 17:28:19');
INSERT INTO `card_logs` VALUES ('0aef7bb1-335e-4aed-bf56-28b8785f205e', '1', '26', '464ec566-72b3-4986-8cb4-999c602129a1', '1', '2019-01-29 17:28:19', '2019-01-29 17:28:19');
INSERT INTO `card_logs` VALUES ('905d501d-ab60-49c0-9c4d-78c7db9e81f0', '4', '31', '5d1b0bde-b787-4673-816b-d50ff49d27a6', '1', '2019-01-29 17:28:19', '2019-01-29 17:28:19');
INSERT INTO `card_logs` VALUES ('6f854f08-ea36-4b94-89ab-48e5f2516549', '1', '49', 'eab049c8-634f-4c66-8fd7-7be00b2109ff', '1', '2019-01-29 17:28:20', '2019-01-29 17:28:20');
INSERT INTO `card_logs` VALUES ('987e07aa-edfa-4108-a4be-15c263fd5e57', '1', '41', 'a191ae06-6640-4a6f-a2a4-b826dd03b1df', '1', '2019-01-29 17:28:20', '2019-01-29 17:28:20');
INSERT INTO `card_logs` VALUES ('0d6e03b3-756a-4ce8-9e01-d30349a6d2dd', '2', '56', 'e371ea86-eda0-4b91-ba51-a46cfc9d80df', '1', '2019-01-29 17:28:20', '2019-01-29 17:28:20');
INSERT INTO `card_logs` VALUES ('4be4be1b-0c70-40dc-a9dc-c0ee183cc6d0', '1', '44', '1cf11766-e2c5-4e43-b18e-ad42dea76bea', '1', '2019-01-29 17:28:20', '2019-01-29 17:28:20');
INSERT INTO `card_logs` VALUES ('55f920f8-7d66-489b-802f-84e794a94756', '1', '62', '780fa200-5c78-4165-9406-46b694bc0239', '1', '2019-01-29 17:28:20', '2019-01-29 17:28:20');
INSERT INTO `card_logs` VALUES ('d7723ef8-60a1-4afc-8383-c8a2ad9b3373', '1', '50', 'af14a15b-e7da-4f44-914f-1b0a49f40456', '1', '2019-01-29 17:28:20', '2019-01-29 17:28:20');
INSERT INTO `card_logs` VALUES ('653442a5-e0ad-4632-98cd-8938b77c0e3a', '3', '68', 'cbd3ee71-a584-4d56-aec7-08983692356f', '1', '2019-01-29 17:28:20', '2019-01-29 17:28:20');
INSERT INTO `card_logs` VALUES ('431686bb-4481-4818-a71c-c7fb30f2bfe4', '1', '38', 'd8aad207-58ac-4793-815b-b229ab9ec622', '1', '2019-01-29 17:28:20', '2019-01-29 17:28:20');
INSERT INTO `card_logs` VALUES ('e558c611-54bb-4a5f-a7ce-88432a0f852b', '2', '63', '58cfa3b6-b35a-4109-bae2-02f06224b02a', '1', '2019-01-29 17:28:20', '2019-01-29 17:28:20');
INSERT INTO `card_logs` VALUES ('539dca2a-85c1-4cba-a21d-aaaf08b8e2fd', '4', '51', '680e1302-3765-4bb1-8989-e72c32462dd7', '1', '2019-01-29 17:28:20', '2019-01-29 17:28:20');
INSERT INTO `card_logs` VALUES ('fd0df780-56d1-4008-b70b-0e370a0b3367', '2', '66', '42bb0ee7-87a6-4c8c-bb43-e96be5d18793', '1', '2019-01-29 17:28:20', '2019-01-29 17:28:20');
INSERT INTO `card_logs` VALUES ('c32e7f58-77a4-43c4-b00f-ab7337c8eed8', '3', '55', '4beff327-5fe3-4706-bf56-3ec0fce54968', '1', '2019-01-29 17:28:20', '2019-01-29 17:28:20');
INSERT INTO `card_logs` VALUES ('c5020092-a14d-4c97-a5d1-00c58ed767be', '2', '77', '6e6c3065-3f65-4f31-a031-58115fced397', '1', '2019-01-29 17:28:20', '2019-01-29 17:28:20');
INSERT INTO `card_logs` VALUES ('d263506b-51f1-4e0a-85a0-f57b7adfc687', '4', '78', 'faadcd9d-80c3-42a3-935f-51884e3abc05', '1', '2019-01-29 17:28:21', '2019-01-29 17:28:21');
INSERT INTO `card_logs` VALUES ('2f5ca677-02e8-45f3-85e7-67d7deaae02e', '3', '79', 'bc842b91-6cd0-452e-9cf0-1bcf54a56a7b', '1', '2019-01-29 17:28:21', '2019-01-29 17:28:21');
INSERT INTO `card_logs` VALUES ('9a2320f8-1dc9-440f-8355-708f8d0b1899', '2', '46', '4ed6dcc8-1f4e-41d3-b6d2-00d1b28b16b6', '1', '2019-01-29 17:28:21', '2019-01-29 17:28:21');
INSERT INTO `card_logs` VALUES ('64d7443b-f7d7-4660-aa77-fc841754cbc1', '2', '56', '1a856a4d-4e87-462b-ad5a-51b1609728db', '1', '2019-01-29 17:28:21', '2019-01-29 17:28:21');
INSERT INTO `card_logs` VALUES ('95a3f6e5-ab56-4032-b938-6d18030250a0', '2', '61', 'a338c879-71ef-4dda-8c7a-4ed3cbc26868', '1', '2019-01-29 17:28:20', '2019-01-29 17:28:20');
INSERT INTO `card_logs` VALUES ('6814510b-1954-4c82-ab10-6098ae9eb416', '1', '48', '385f7570-4ef7-4040-90a8-012cb0551d43', '1', '2019-01-29 17:28:21', '2019-01-29 17:28:21');
INSERT INTO `card_logs` VALUES ('17d379bd-41db-47cc-8cd9-1d5190930859', '1', '52', '894c513d-5342-4c6f-b25e-d941638c799f', '1', '2019-01-29 17:28:21', '2019-01-29 17:28:21');
INSERT INTO `card_logs` VALUES ('94084a37-61ba-4d73-8762-7d1bf2856935', '3', '83', '2b011266-979d-4126-8d4d-5a5f5f09fd2d', '1', '2019-01-29 17:28:21', '2019-01-29 17:28:21');
INSERT INTO `card_logs` VALUES ('e47c3f8d-47d0-4f47-a934-fdbe74995317', '2', '80', 'c1a31567-385f-4539-bd87-61fee92f61af', '1', '2019-01-29 17:28:21', '2019-01-29 17:28:21');
INSERT INTO `card_logs` VALUES ('fec10aea-8516-46ed-b03a-6e7f435652e4', '4', '102', '7eeaa5ea-aab2-4b7e-9f6c-d706664a1c0d', '1', '2019-01-29 17:28:21', '2019-01-29 17:28:21');
INSERT INTO `card_logs` VALUES ('3b5713cc-3bda-4aa6-9aa7-2cb75a14be2e', '2', '64', '2f978024-c3cb-454d-9037-fd460dca099c', '1', '2019-01-29 17:28:21', '2019-01-29 17:28:21');
INSERT INTO `card_logs` VALUES ('8ead9d43-2b2c-462d-a91b-7fa1b2d03370', '1', '104', 'dba78540-54b2-4290-af76-01d178962e57', '1', '2019-01-29 17:28:21', '2019-01-29 17:28:21');
INSERT INTO `card_logs` VALUES ('00ee32b1-a339-4208-aba8-b3ab24b22a9c', '2', '105', '4edbec19-42b8-41ab-a161-6ed32fdf762a', '1', '2019-01-29 17:28:21', '2019-01-29 17:28:21');
INSERT INTO `card_logs` VALUES ('55e2789c-e643-4a07-8896-787d5deca791', '1', '107', 'd12406ae-8b43-4d3a-b80f-71c12c03aca0', '1', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `card_logs` VALUES ('e194af3a-1bb6-4bc2-a723-b71661663bfa', '1', '72', '5755e1fd-292c-4101-99e6-47ccb9e760fd', '1', '2019-01-29 17:28:20', '2019-01-29 17:28:20');
INSERT INTO `card_logs` VALUES ('e0f069c5-eddb-465e-a316-721e7e622af8', '4', '112', '268b564e-68f8-46b8-af8e-a7a58e968236', '1', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `card_logs` VALUES ('910a48b0-f0ce-4ecd-a3bd-3033a141b212', '4', '23', 'a8e3f664-d779-4290-aa93-b059dc2c28aa', '1', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `card_logs` VALUES ('cdd01677-71ff-4e2b-aefe-fed74c1c2767', '4', '32', '7c4a16c9-3788-43e1-b469-262ac820f44f', '1', '2019-01-29 17:28:20', '2019-01-29 17:28:20');
INSERT INTO `card_logs` VALUES ('df2659a5-eaae-4dee-bb65-f3379dfcc9e4', '1', '60', '82ffbd73-caaa-4a63-8062-300bad579b5a', '1', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `card_logs` VALUES ('4a6a8398-2223-4fcd-8b5e-823cb4d04170', '1', '67', 'e1fc46b0-b455-449f-b38c-4f37c276a372', '1', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `card_logs` VALUES ('7a5a18f7-065c-43b2-8640-5edb6ea28e35', '2', '123', 'b7151539-3464-4999-b634-7db61e1f73df', '1', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `card_logs` VALUES ('6ffe78c5-f125-43b5-bcfa-7f35fd2a3af3', '1', '65', 'a8614003-e252-41c2-9926-ea5f896b639c', '1', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `card_logs` VALUES ('90e27546-5d0f-4ac2-bcbc-2aea3cb33880', '2', '47', '3fc9d52c-1a34-4117-81a6-c6e49957f0ae', '1', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `card_logs` VALUES ('0e116d76-8f4d-4fb4-80cd-723928feb47b', '3', '49', 'ceca683e-e5dc-41f5-970b-fab5edef1d11', '1', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `card_logs` VALUES ('a9cff397-873a-4f8e-9aa0-b8d2a1bb1d39', '2', '74', 'f5cc9c2e-3a07-4d64-a52a-fed580c6099d', '1', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `card_logs` VALUES ('4aa6de68-6319-4e7f-8b92-80b672ea5003', '3', '76', '2c0eda09-c1e9-4005-bb49-2ed9f45f12b1', '1', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `card_logs` VALUES ('0b8f75ea-d1d8-4db5-b54d-7897b2d42249', '2', '108', 'e0d3299e-ba3c-465d-b242-224486a3ce56', '1', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `card_logs` VALUES ('85729eef-3a00-4e60-bc52-49e41705999c', '2', '132', '1128ef35-dadb-4eed-9dd6-ca32b1c447e6', '1', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `card_logs` VALUES ('074ca4ca-b18f-48e6-98bb-7801a93e8417', '1', '53', 'b9a8555a-6e2d-46e3-831b-0c468beea426', '1', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `card_logs` VALUES ('9829787f-0afc-4d0c-88f3-436949d060f8', '2', '59', '76156d47-a2c5-44b7-abf1-69cf029c6379', '1', '2019-01-29 17:28:21', '2019-01-29 17:28:21');
INSERT INTO `card_logs` VALUES ('ffd14b3f-ce5d-4fae-b8e3-35f6fa842679', '3', '57', '9e98afe1-d951-4bc5-9521-d6e0950641ed', '1', '2019-01-29 17:28:20', '2019-01-29 17:28:20');
INSERT INTO `card_logs` VALUES ('711a45d2-6f6b-452c-b89f-086275730005', '2', '100', '07b3c7ca-362b-47bf-85db-ac60c240f827', '1', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `card_logs` VALUES ('4818c133-c119-4418-9163-19e54d8cfc94', '1', '109', '6afb9a9a-f61a-416d-bfbd-21ca6a276920', '1', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `card_logs` VALUES ('2d8fa5d4-8d5e-4381-9214-771a66dc87da', '2', '71', 'ba36aa93-bc91-429d-9b78-b45d0fa07e95', '1', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `card_logs` VALUES ('42cabdef-3297-4d97-81b9-d17b0a0b6fe7', '2', '86', '8b9f6118-5166-43f1-bc41-3b849db9b867', '1', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `card_logs` VALUES ('404eee64-4113-4a23-bf6d-72879c8d6a4a', '1', '85', 'd8783e59-c4cb-4ff7-95d8-036ca732cbeb', '1', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `card_logs` VALUES ('53db3228-a86a-40db-849c-97d1db913435', '1', '87', '9bcc9df8-c8a8-4460-8f93-2b2dbd54e808', '1', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `card_logs` VALUES ('55efde87-d9ed-4c13-a43a-6ceb41327be4', '2', '111', 'f59655d0-0bae-466a-8b27-e3f617c3985c', '1', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `card_logs` VALUES ('d6f21fae-51ac-4cd2-a295-ed59839a4da8', '4', '82', '1b3f9e9c-feb9-4142-8ec1-3c2fd218419f', '1', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `card_logs` VALUES ('cce4cf57-8600-4d94-b552-48c419a17f0a', '2', '135', '51c3cea0-91e6-4dbd-ba70-4a37d17fd57f', '1', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `card_logs` VALUES ('cdc40a74-adaa-414e-a168-d3a2aa837c74', '1', '88', 'd126b731-de0c-447d-abe7-e332425af664', '1', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `card_logs` VALUES ('3c283c06-cdb9-4830-bf76-a688a2670835', '1', '24', 'f9f08f82-8c59-4e47-96ea-19d63c781691', '1', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `card_logs` VALUES ('f9754ea9-92b1-4919-b2d9-d9d137ce3f85', '2', '106', 'dd50fa81-ba77-419f-bc02-9028fea3d65e', '1', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `card_logs` VALUES ('1cd2fe5b-b29f-42da-8116-242fcabd4cde', '1', '140', 'd985b88b-f367-4ba7-9745-877e4f2e206d', '1', '2019-01-29 17:28:23', '2019-01-29 17:28:23');
INSERT INTO `card_logs` VALUES ('3b26db3d-96fa-4cb5-82c8-7ddb5bf8317d', '2', '142', '6bbd8cc7-37ad-4b8b-818a-0acfbd666b1d', '1', '2019-01-29 17:28:23', '2019-01-29 17:28:23');
INSERT INTO `card_logs` VALUES ('3a132390-c0d7-4ba6-8021-f3a8455f3245', '3', '137', 'c91e4595-167c-4286-90a7-de64eb92a665', '1', '2019-01-29 17:28:23', '2019-01-29 17:28:23');
INSERT INTO `card_logs` VALUES ('caf442ec-ed74-4c71-9f9a-eedda1f344be', '1', '134', '298c9212-567a-47bf-812c-173caf823f05', '1', '2019-01-29 17:28:23', '2019-01-29 17:28:23');
INSERT INTO `card_logs` VALUES ('28095922-4206-4124-87f1-f697365a307e', '1', '129', '57ba1eb9-6e48-45ac-9e3e-71d76dbffd8f', '1', '2019-01-29 17:28:23', '2019-01-29 17:28:23');
INSERT INTO `card_logs` VALUES ('958bd3a3-fdc5-434f-a854-83c06d067792', '1', '130', '62c2437c-7498-476f-8e24-9f8fab471b1b', '1', '2019-01-29 17:28:23', '2019-01-29 17:28:23');
INSERT INTO `card_logs` VALUES ('59ab099d-ca83-465e-a709-8e5788703057', '2', '127', '8b2e83d9-6298-4dc0-beed-c121987c6eaf', '1', '2019-01-29 17:28:23', '2019-01-29 17:28:23');
INSERT INTO `card_logs` VALUES ('dc77627b-09a7-41a3-8f34-a8988db8533e', '1', '125', 'a3206741-eed4-4904-9e9f-fe30b3b84daf', '1', '2019-01-29 17:28:23', '2019-01-29 17:28:23');
INSERT INTO `card_logs` VALUES ('3ee7207b-e22c-4574-a14b-7136b8d801b7', '1', '118', 'dd20c53c-d79e-46fe-8f7e-93f8b7b99b11', '1', '2019-01-29 17:28:23', '2019-01-29 17:28:23');
INSERT INTO `card_logs` VALUES ('64f17081-f85b-4735-8968-def0d0fd9906', '1', '119', '71035bbd-c042-4009-86cd-93cb48953b03', '1', '2019-01-29 17:28:23', '2019-01-29 17:28:23');
INSERT INTO `card_logs` VALUES ('ace82478-3b49-4efc-8577-c70ecd938801', '2', '117', '56cdcfb8-1cc1-44af-b760-715f8670022d', '1', '2019-01-29 17:28:23', '2019-01-29 17:28:23');
INSERT INTO `card_logs` VALUES ('18aae87b-f8e9-4a49-a4d5-4e760d2ac310', '2', '115', '428d84a8-2128-487e-97c1-f77565b02ffb', '1', '2019-01-29 17:28:23', '2019-01-29 17:28:23');
INSERT INTO `card_logs` VALUES ('cb6402a7-83a1-4663-93dd-1313a125b24d', '4', '113', '815ebe07-0eb3-4f82-8139-f3dfeef2b35b', '1', '2019-01-29 17:28:23', '2019-01-29 17:28:23');
INSERT INTO `card_logs` VALUES ('2bd6f2f7-7e26-4410-b0a9-734015d6239c', '2', '149', 'c5047289-c987-46bf-87cb-bc9f7ed7ad5c', '1', '2019-01-29 17:28:23', '2019-01-29 17:28:23');
INSERT INTO `card_logs` VALUES ('35aed0a0-be24-4505-b659-ce112c1b2a68', '4', '103', '08ff48e1-a457-43aa-abcf-d0881b776356', '1', '2019-01-29 17:28:23', '2019-01-29 17:28:23');
INSERT INTO `card_logs` VALUES ('5858258c-d142-4a14-9745-4ecf6869af85', '1', '99', '39e00cbb-0b43-4b95-9f80-2d460423d35e', '1', '2019-01-29 17:28:23', '2019-01-29 17:28:23');
INSERT INTO `card_logs` VALUES ('7c8a1f01-42ca-479b-a97c-d48022e53ba0', '2', '151', 'd64d7f47-985a-4568-b22e-313d1f52554d', '1', '2019-01-29 17:28:23', '2019-01-29 17:28:23');
INSERT INTO `card_logs` VALUES ('674f7ad3-5467-46ea-a889-e5c978cf98dd', '2', '95', '39ea8868-0786-4306-aa3b-9fb30995b58b', '1', '2019-01-29 17:28:24', '2019-01-29 17:28:24');
INSERT INTO `card_logs` VALUES ('85268b44-981b-497d-be72-a50ace194157', '4', '92', '20d22bca-011c-4e18-a3fa-85d67b1d0ace', '1', '2019-01-29 17:28:24', '2019-01-29 17:28:24');
INSERT INTO `card_logs` VALUES ('84352008-d760-4672-a173-3a764d1d81be', '2', '90', '7ce55238-eb32-47f5-8626-fc3c94c7eba1', '1', '2019-01-29 17:28:24', '2019-01-29 17:28:24');
INSERT INTO `card_logs` VALUES ('a562cba9-57cc-4a4a-842c-501c183b1d5c', '1', '153', 'e2e3f910-a04d-4151-91c7-423fce580879', '1', '2019-01-29 17:28:24', '2019-01-29 17:28:24');
INSERT INTO `card_logs` VALUES ('23e42d64-54f3-4787-83fe-ddbd8712f1f0', '4', '141', '0f555dc5-8363-47f7-9733-9d08084cbcee', '1', '2019-01-29 17:28:24', '2019-01-29 17:28:24');
INSERT INTO `card_logs` VALUES ('ab03d26a-c5da-4871-8cf0-e83b43f202bc', '1', '131', 'd09ec465-ffaa-4431-bd12-6f4af6da91de', '1', '2019-01-29 17:28:24', '2019-01-29 17:28:24');
INSERT INTO `card_logs` VALUES ('776c63e1-272a-4be1-8fee-e0a2f0a83219', '2', '81', '10c38f73-e593-4a6b-a2ca-3c7b1705bc3e', '1', '2019-01-29 17:28:24', '2019-01-29 17:28:24');
INSERT INTO `card_logs` VALUES ('e2c1155c-27d0-4af8-9f09-a2fbbd4e73b9', '1', '143', '0683c82b-e58e-4ae9-ade0-b4e3c1a1c899', '1', '2019-01-29 17:28:24', '2019-01-29 17:28:24');
INSERT INTO `card_logs` VALUES ('eefa2e54-82dd-4bb6-806b-4afe3a836a5d', '2', '93', '094efafc-7a7d-4f22-bb4d-c1452fd916fd', '1', '2019-01-29 17:28:24', '2019-01-29 17:28:24');
INSERT INTO `card_logs` VALUES ('92491a03-0840-40cf-9b9c-d651a8004ae3', '3', '101', 'b93db02e-fb90-4cbd-b32c-9dcba5e9ff15', '1', '2019-01-29 17:28:23', '2019-01-29 17:28:23');
INSERT INTO `card_logs` VALUES ('9e536fd4-0db8-44de-910e-c39a3aa3f6af', '2', '150', '59feffa1-71a2-4e4a-bcae-991027419044', '1', '2019-01-29 17:28:24', '2019-01-29 17:28:24');
INSERT INTO `card_logs` VALUES ('4ff65a53-b948-449f-ab6f-0f19a81d89a0', '2', '120', 'eb3785ba-7bd8-444c-9548-dd8a2520bac6', '1', '2019-01-29 17:28:24', '2019-01-29 17:28:24');
INSERT INTO `card_logs` VALUES ('51562c01-1279-4eca-9b03-09dcfd2642b8', '4', '116', 'f5337de8-74b2-45bc-a07f-1a4846b0704c', '1', '2019-01-29 17:28:24', '2019-01-29 17:28:24');
INSERT INTO `card_logs` VALUES ('fe888975-0d91-44a8-b106-5bf81fc72148', '2', '126', '1b515f8b-bd94-4c9a-bd22-ebc0fd7bcca8', '1', '2019-01-29 17:28:23', '2019-01-29 17:28:23');
INSERT INTO `card_logs` VALUES ('40ab1f12-5be7-4c2c-958d-b1d77e10cfac', '2', '124', '4766b9ff-002e-4d2b-b09d-8fe48fe88ee0', '1', '2019-01-29 17:28:23', '2019-01-29 17:28:23');
INSERT INTO `card_logs` VALUES ('8feeb299-7e00-44ff-9ff8-7aa43865d065', '5', '122', '26beac43-4225-4663-a8d4-bb33baae4782', '1', '2019-01-29 17:28:24', '2019-01-29 17:28:24');
INSERT INTO `card_logs` VALUES ('45be475c-407f-4e43-b924-1af43bd45908', '3', '78', '23153436-2ff2-47b7-9550-2609afc08fe1', '1', '2019-01-29 17:28:24', '2019-01-29 17:28:24');
INSERT INTO `card_logs` VALUES ('68d0bc39-e71c-46ba-aca2-a83396762bc5', '2', '159', '0f71e248-eee5-4d4f-8d86-36493941891d', '1', '2019-01-29 17:28:24', '2019-01-29 17:28:24');
INSERT INTO `card_logs` VALUES ('7a8780a8-0d89-4fb7-9956-aabf6516dbb5', '4', '138', '51a5bfc5-2a36-4c61-b937-7bafe61719be', '1', '2019-01-29 17:28:24', '2019-01-29 17:28:24');
INSERT INTO `card_logs` VALUES ('48a93b63-2004-4133-a27f-6bd202c74da4', '1', '139', 'a1e87081-a69d-46c5-883e-50a158053604', '1', '2019-01-29 17:28:24', '2019-01-29 17:28:24');
INSERT INTO `card_logs` VALUES ('8e16a615-cd9e-4edf-b642-687195b6bbc4', '3', '121', '352e97b9-76e1-43f3-91a7-1602cfe76d4f', '1', '2019-01-29 17:28:24', '2019-01-29 17:28:24');
INSERT INTO `card_logs` VALUES ('affc0249-a921-48c1-805e-2dd73af2a318', '1', '164', '5643c279-39fc-4320-904c-41e7cf469a62', '1', '2019-01-29 17:28:24', '2019-01-29 17:28:24');
INSERT INTO `card_logs` VALUES ('11a5abfd-e3c3-4c76-a5c6-1e985fdbbf5e', '1', '97', '81371e1e-4cad-4f1a-a842-4f301471ea7a', '1', '2019-01-29 17:28:25', '2019-01-29 17:28:25');
INSERT INTO `card_logs` VALUES ('eedc0ed8-2ab7-43cf-a3b6-d5178b881fcc', '2', '98', '916244df-0beb-466d-8eeb-1307d915fb9c', '1', '2019-01-29 17:28:24', '2019-01-29 17:28:24');
INSERT INTO `card_logs` VALUES ('0efed38b-2bb6-447f-b5fd-c8b282041b24', '2', '158', 'd55a35c0-d8b6-48c5-9e69-088e0e1ab03b', '1', '2019-01-29 17:28:25', '2019-01-29 17:28:25');
INSERT INTO `card_logs` VALUES ('596e8558-5594-4e57-9840-0e772809723f', '2', '166', '69e3c525-ae77-486f-b232-7c13aac2f27c', '1', '2019-01-29 17:28:25', '2019-01-29 17:28:25');
INSERT INTO `card_logs` VALUES ('784b1819-3b48-4e08-9df4-e4f6a19f7b87', '1', '167', 'd74d5d8d-482b-46f4-8405-f15ddc6c4322', '1', '2019-01-29 17:28:25', '2019-01-29 17:28:25');
INSERT INTO `card_logs` VALUES ('8a91834e-99a7-44e4-b911-ab3b2660890e', '1', '170', 'b541283d-2160-4ec9-ac6f-cfcc6b4cd8b5', '1', '2019-01-29 17:28:25', '2019-01-29 17:28:25');
INSERT INTO `card_logs` VALUES ('bb64b3ce-7308-4b92-b1bc-cea6093b9e76', '2', '171', '88077e67-e3c1-4fb9-8925-0d3aa4e87fcc', '1', '2019-01-29 17:28:25', '2019-01-29 17:28:25');
INSERT INTO `card_logs` VALUES ('946bde44-9591-4f87-b943-70b653d1052a', '2', '157', 'becb1a16-937c-48c2-8705-7d19bd8b2cb4', '1', '2019-01-29 17:28:24', '2019-01-29 17:28:24');
INSERT INTO `card_logs` VALUES ('1d1d1fcc-a9b1-46b6-ad3e-0477802871ec', '4', '173', '1cd8bada-b80d-4c6e-be4f-d2ec5ac2dd72', '1', '2019-01-29 17:28:25', '2019-01-29 17:28:25');
INSERT INTO `card_logs` VALUES ('13449eae-ed72-4afe-a61e-4115d9aa99d9', '1', '168', '1d128ad4-faf6-41ef-9d96-e2b01830b8e4', '1', '2019-01-29 17:28:25', '2019-01-29 17:28:25');
INSERT INTO `card_logs` VALUES ('f03c1006-c8ff-4114-bafd-b86d69795025', '1', '144', 'dd285ff2-7d93-4eb0-829a-dfbb1b56ea24', '1', '2019-01-29 17:28:25', '2019-01-29 17:28:25');
INSERT INTO `card_logs` VALUES ('abb8ce0d-875c-4fc8-ac9f-b8b1deed7894', '1', '154', 'fe1e36a8-a80c-45c6-bca8-03ed5841fd2e', '1', '2019-01-29 17:28:25', '2019-01-29 17:28:25');
INSERT INTO `card_logs` VALUES ('0137a8ef-f97f-4c24-bb6d-967262ea1152', '2', '184', '31bf0b9b-8073-4c04-a176-67868b096ca7', '1', '2019-01-29 17:28:25', '2019-01-29 17:28:25');
INSERT INTO `card_logs` VALUES ('f3dc6cf2-0908-4281-8867-b2b0e5bd7b63', '2', '146', 'da331c21-5fc6-40f2-af34-19d6f2ee5046', '1', '2019-01-29 17:28:25', '2019-01-29 17:28:25');
INSERT INTO `card_logs` VALUES ('5f332016-7b31-4c8d-b1e7-b6a2c13b8584', '1', '156', '2dd12e53-68ff-49a4-9a28-56ddfc0c4b61', '1', '2019-01-29 17:28:25', '2019-01-29 17:28:25');
INSERT INTO `card_logs` VALUES ('8bb142f9-249c-403f-a045-992f9265ae1d', '3', '193', 'f84746c0-d7a7-4375-b591-d14c3a312b8a', '1', '2019-01-29 17:28:25', '2019-01-29 17:28:25');
INSERT INTO `card_logs` VALUES ('997932e1-58d4-41c8-afe7-2fd2d86daba7', '4', '196', '01fc4784-4173-4180-b95b-85d69a909ca3', '1', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `card_logs` VALUES ('1f778cc6-c1d9-4760-80f7-0668279e6eb3', '4', '169', '14dc89bd-a22e-4fe4-94d5-d4187001bcbe', '1', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `card_logs` VALUES ('0c202526-e0d8-4859-b31a-2903fe2a39a1', '3', '180', '9b403964-026b-431f-8d70-9dc0564395c8', '1', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `card_logs` VALUES ('66eef763-f109-41bc-accd-24ea34b68e36', '1', '194', 'c05004e5-b845-4d55-95e7-9e95c6d3a3a8', '1', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `card_logs` VALUES ('91f3d56e-8bd2-4614-aaa4-e8755e971d45', '3', '185', '713d2497-5192-4d44-88c0-142cec094276', '1', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `card_logs` VALUES ('7b6fe739-ce09-4b67-8e54-e059d6cb3e8b', '2', '182', '91043840-8a32-4349-9b9b-779147bab908', '1', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `card_logs` VALUES ('afa6823b-7d50-4dd6-8e7f-1c7d1a94d740', '2', '176', '3c7b3db6-9d63-4878-b9ec-058a38a88bef', '1', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `card_logs` VALUES ('853995c6-81dc-443a-a61d-e67d0845831f', '3', '174', 'bcb0c565-421e-4756-a05e-991a86c46adb', '1', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `card_logs` VALUES ('c8910b6d-deba-4800-b916-55fc68766978', '2', '197', '7865a4a2-c36f-429c-9e14-75a7a3d73676', '1', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `card_logs` VALUES ('40faf2e3-8285-4ebe-abf0-b1db2388c76f', '2', '198', 'dc9dd268-4f80-44fc-8d12-739abf50add3', '1', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `card_logs` VALUES ('162aff37-c0d4-4419-a074-066c5caac0bd', '3', '186', '9120b09e-532a-41e9-bcd8-88dc04479f57', '1', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `card_logs` VALUES ('7773d39f-3ddd-4fe7-94b8-a52fa9d5f95a', '3', '199', '30128cce-ba91-4102-86df-5dfe39e7d7f0', '1', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `card_logs` VALUES ('5b8ac48e-e8fa-466f-a182-b91fbfcfe2f7', '1', '187', 'de02903a-deb7-4f8d-8ff6-c175ee958981', '1', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `card_logs` VALUES ('7dfc2027-9ec6-462e-86ef-f3e77367dbac', '2', '177', '9d024611-5282-4fa4-bc45-f1f762f6071c', '1', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `card_logs` VALUES ('c6dc2875-9305-4699-b7cf-2c6048837061', '1', '189', 'e4bb95fb-32a9-43f5-b1b1-05c3bc30901a', '1', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `card_logs` VALUES ('d8f5b9c7-b85a-45c5-8f6c-fbd51af78634', '1', '178', 'dcbaf0e3-e317-4a37-8628-40b12829dd2d', '1', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `card_logs` VALUES ('6692d02a-2fa6-4a01-9ab5-ee9c4ba66a6b', '3', '190', 'cf96fbf8-357f-46bb-a08d-9d2e82b84fb8', '1', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `card_logs` VALUES ('7eadb8da-a85a-4e4e-a773-a4776fdf31af', '2', '175', '06e7f6d3-6978-4dab-b64b-a6dfe7aabd0b', '1', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `card_logs` VALUES ('677a8089-a8ba-4300-9aa6-b6edb8fd1aad', '1', '172', 'cfe8219c-0e2e-41f3-a320-522ab4df51b8', '1', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `card_logs` VALUES ('fa1acc9d-b1ba-487f-81fe-b530e0301bb8', '1', '94', '7f86a92e-2fbd-4ef8-93bf-9ea5f567b002', '1', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `card_logs` VALUES ('592190ad-7fee-42f1-b907-815428f8b1fb', '1', '179', '8ed9dd60-c801-4829-b70e-02056099cc6e', '1', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `card_logs` VALUES ('d1210cf9-6cef-459e-845d-f1a723d07e23', '2', '191', '6f2411e4-74e9-4c2d-98ad-c7e0c2401a42', '1', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `card_logs` VALUES ('51a5054b-314d-471e-998e-79fb40c2fd52', '2', '148', '2debfffd-8462-4762-8693-aeeb82baad42', '1', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `card_logs` VALUES ('d2202afe-7345-48e0-b747-727bf169765a', '2', '192', '8315f825-1f93-4acc-90f1-1785983aa258', '1', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `card_logs` VALUES ('13da7129-4d6f-4e0a-8195-64e7d9362803', '1', '147', '65d45031-0139-4e6d-b640-23f90cacaf8e', '1', '2019-01-29 17:28:25', '2019-01-29 17:28:25');
INSERT INTO `card_logs` VALUES ('7a7f780a-7450-4eb1-b716-9af129ba9663', '1', '165', '175cbef6-9b15-474a-84a4-362240d1477b', '1', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `card_logs` VALUES ('6e477214-f67a-4ade-aff9-5f129f9dd145', '1', '160', '0c0e4ca2-a2a5-4bb8-bd8c-052e1834bdc1', '1', '2019-01-29 17:28:25', '2019-01-29 17:28:25');
INSERT INTO `card_logs` VALUES ('59a76ed9-f839-4626-9fe1-408760115e4e', '2', '161', '30b88839-99fd-4c98-8c38-c29f807b06d2', '1', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `card_logs` VALUES ('1bbdff36-4a60-4b1b-a67b-746b89e04cec', '1', '91', '24f63450-d4c7-41ac-88b7-bcb428f41911', '1', '2019-01-29 17:28:24', '2019-01-29 17:28:24');
INSERT INTO `card_logs` VALUES ('dda5b9da-7b2a-4f93-a98c-1ae69a32841d', '4', '96', '7efaab00-a820-4035-904c-d6108a109dc0', '1', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `card_logs` VALUES ('b21de259-c4f5-47a6-9312-1becd932f8e7', '4', '163', '5ac93354-f5cb-468f-b751-1aec2f8904c9', '1', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `card_logs` VALUES ('b165c02e-d572-47c9-a3f1-96908892ef7d', '3', '162', 'a8ac86ad-8d09-43a0-a146-5b834db51b1f', '1', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `card_logs` VALUES ('1b596658-74cf-464e-ab88-4de4782830a3', '2', '195', '0019d639-9df5-4db9-b0a5-30521d6fa5ab', '1', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `card_logs` VALUES ('3a96ca1e-a730-46df-9a0a-2d6d7a8e62f9', '2', '16', '52e5c530-a4f7-48ce-aeae-42db759f9fd0', '1', '2019-01-29 18:31:38', '2019-01-29 18:31:38');
INSERT INTO `card_logs` VALUES ('58958153-7ef3-4e0b-8200-274d3e5afb68', '3', '13', '4b6ae14a-d6ea-42a0-839c-8324f6fdbe98', '1', '2019-01-29 18:31:38', '2019-01-29 18:31:38');
INSERT INTO `card_logs` VALUES ('68633be2-889b-4696-9105-89ed3d5f4e7a', '1', '18', '6084a48f-8e36-4b31-82f9-0203884e3a03', '1', '2019-01-29 18:31:38', '2019-01-29 18:31:38');
INSERT INTO `card_logs` VALUES ('db482edb-1cec-4a18-9091-c68d5cebc296', '3', '0', '5ed8a900-6580-4373-b4c9-e505dd546e0a', '1', '2019-01-29 18:31:39', '2019-01-29 18:31:39');
INSERT INTO `card_logs` VALUES ('c977d03c-ef0a-4de0-94ab-c175d9b40e34', '2', '4', 'e35cb021-4c57-41fe-83ec-48de3ce6b35d', '1', '2019-01-29 18:31:38', '2019-01-29 18:31:38');
INSERT INTO `card_logs` VALUES ('ce46defd-27e2-43d4-92ee-db65266dcebf', '2', '20', '5e37b77d-36b4-4229-bf16-1a814bb3346a', '1', '2019-01-29 18:31:38', '2019-01-29 18:31:38');
INSERT INTO `card_logs` VALUES ('9d2d8c7b-efde-4023-9f76-f718e4c90248', '4', '1', '6a472348-533f-49ce-8f5a-4a02b45a9c0d', '1', '2019-01-29 18:31:38', '2019-01-29 18:31:38');
INSERT INTO `card_logs` VALUES ('bf8bc965-e0c6-413f-bf8c-9a10121f2856', '4', '17', '8d482e8b-5b96-4cac-85de-305cc07645c5', '1', '2019-01-29 18:31:39', '2019-01-29 18:31:39');
INSERT INTO `card_logs` VALUES ('1fd62a9e-6a96-49e0-a762-95d473c466e9', '3', '2', '8517db6c-a904-4722-80e8-9f0cfc80b53b', '1', '2019-01-29 18:31:39', '2019-01-29 18:31:39');
INSERT INTO `card_logs` VALUES ('b584cf1b-fcaa-4064-bcd5-a0cf8f74255c', '2', '21', 'bbc59913-4b53-4c89-8f37-4de4cac00de5', '1', '2019-01-29 18:31:39', '2019-01-29 18:31:39');
INSERT INTO `card_logs` VALUES ('fad73a45-fc1f-4a7e-9239-70e5ec027d06', '1', '15', 'dd160477-f752-49e2-b2dc-e05958faa5cd', '1', '2019-01-29 18:31:39', '2019-01-29 18:31:39');
INSERT INTO `card_logs` VALUES ('b4029f73-b0a0-418d-8495-20048f6202e4', '2', '27', '2de9d393-b45a-48d7-a7db-bc6a5a49d297', '1', '2019-01-29 18:31:39', '2019-01-29 18:31:39');
INSERT INTO `card_logs` VALUES ('cd9e808c-44d9-495b-a7af-eeb2884c73a2', '3', '5', 'ba808c87-e947-4e64-bd7e-8453085273ea', '1', '2019-01-29 18:31:39', '2019-01-29 18:31:39');
INSERT INTO `card_logs` VALUES ('1c2ef8d1-4d99-44fa-9bad-27e826499419', '4', '12', '4fe5e8af-a119-4a5f-9bac-2f36dbe9e114', '1', '2019-01-29 18:31:39', '2019-01-29 18:31:39');
INSERT INTO `card_logs` VALUES ('e87b5d6e-8034-40c5-830f-5d938fb51eae', '4', '6', '2e2d9555-a3e1-4419-a9c7-9ac515ed95e3', '1', '2019-01-29 18:31:39', '2019-01-29 18:31:39');
INSERT INTO `card_logs` VALUES ('a2c52458-b7e1-476f-a471-143bcc9f3a2f', '3', '25', '757aa88a-15eb-4775-9d3f-18f6077a2eb2', '1', '2019-01-29 18:31:39', '2019-01-29 18:31:39');
INSERT INTO `card_logs` VALUES ('d10bf4e7-48d0-4ad5-b365-24d54a94d14f', '1', '28', '5f2563c6-e846-44d3-9e1b-a0cc810cd216', '1', '2019-01-29 18:31:39', '2019-01-29 18:31:39');
INSERT INTO `card_logs` VALUES ('f0d1bd9a-e6b1-448a-8263-5633a0f27fc5', '1', '33', '94745661-526a-4527-bf87-23fe3c5af2e5', '1', '2019-01-29 18:31:39', '2019-01-29 18:31:39');
INSERT INTO `card_logs` VALUES ('2f93c018-5a0f-44a3-b941-f371f0c0379c', '4', '30', 'a7cf801b-e359-4236-9965-7ca0630071d8', '1', '2019-01-29 18:31:39', '2019-01-29 18:31:39');
INSERT INTO `card_logs` VALUES ('21514349-561d-4b86-8ee5-96ddfdc42c3a', '1', '35', '3394a617-5471-4c40-a248-ea85ab1612ce', '1', '2019-01-29 18:31:40', '2019-01-29 18:31:40');
INSERT INTO `card_logs` VALUES ('4575866a-6916-4f29-8646-48ca398f8d3c', '1', '37', '2ce1b38e-0026-401b-9459-c671f3af7a9f', '1', '2019-01-29 18:31:40', '2019-01-29 18:31:40');
INSERT INTO `card_logs` VALUES ('1d4f0ba5-f594-4fe5-9234-2d800c754ecd', '1', '38', 'b432399d-6f8e-4f72-8bc7-a5b5b536ce37', '1', '2019-01-29 18:31:40', '2019-01-29 18:31:40');
INSERT INTO `card_logs` VALUES ('5b55d6a1-67c1-4bbc-8428-e06fbd658a09', '1', '36', '418b9995-0f56-47ae-bb15-fdf5762aefa2', '1', '2019-01-29 18:31:40', '2019-01-29 18:31:40');
INSERT INTO `card_logs` VALUES ('23739a96-78ab-4d39-a61e-ac1e3c752ec3', '1', '11', '42936ed6-ff12-4034-9dce-783e2526ab09', '1', '2019-01-29 18:31:40', '2019-01-29 18:31:40');
INSERT INTO `card_logs` VALUES ('5519d2fb-0026-4fa7-ba4f-d27e5ecfa524', '2', '14', '1c406b3c-7179-4522-8e1c-7844a7536078', '1', '2019-01-29 18:31:40', '2019-01-29 18:31:40');
INSERT INTO `card_logs` VALUES ('5c6d1179-6455-4b1c-977e-ff15fe5051f3', '2', '42', 'b173a6cf-3980-4cd1-b58e-0581d4be493f', '1', '2019-01-29 18:31:40', '2019-01-29 18:31:40');
INSERT INTO `card_logs` VALUES ('43c94d07-f787-40d6-82df-a557555d7168', '1', '34', '64ccf83d-cb32-4356-872b-ccdb8294491d', '1', '2019-01-29 18:31:40', '2019-01-29 18:31:40');
INSERT INTO `card_logs` VALUES ('48e8c547-f3b2-4ce3-ad14-f001ee1f62c8', '2', '40', '2d3f1e62-55df-408c-aa78-7ae8dabe05e3', '1', '2019-01-29 18:31:40', '2019-01-29 18:31:40');
INSERT INTO `card_logs` VALUES ('daa9308c-3305-4b4e-8db4-e3bdaea95192', '1', '44', '5448dcd7-b8e9-40ab-8c45-a2026b0fb725', '1', '2019-01-29 18:31:41', '2019-01-29 18:31:41');
INSERT INTO `card_logs` VALUES ('61519069-fed0-4d0b-bb00-389349562626', '2', '45', '96a16c17-e33f-468f-b309-7069b1368b21', '1', '2019-01-29 18:31:41', '2019-01-29 18:31:41');
INSERT INTO `card_logs` VALUES ('6e54c5fa-8c0b-4ec2-ab4c-bb70e5bdf450', '1', '54', '1c2d2aab-81ca-48a1-b935-1f428ae203a1', '1', '2019-01-29 18:31:41', '2019-01-29 18:31:41');
INSERT INTO `card_logs` VALUES ('31a50020-1b1b-409f-b5d8-2edd3a6b02f8', '2', '50', 'fd0b196f-73b3-4f3c-9592-7dfa3f75b43c', '1', '2019-01-29 18:31:41', '2019-01-29 18:31:41');
INSERT INTO `card_logs` VALUES ('9c54d226-ef34-49cd-96f6-4531fb847155', '5', '52', '2f534e74-7260-4dfb-9c4e-5941b426b0d5', '1', '2019-01-29 18:31:41', '2019-01-29 18:31:41');
INSERT INTO `card_logs` VALUES ('47921d6e-3483-4765-836c-c92b3de75296', '2', '57', '412b0175-f895-4902-a200-701dea17e056', '1', '2019-01-29 18:31:41', '2019-01-29 18:31:41');
INSERT INTO `card_logs` VALUES ('5b71100c-df52-4f7f-937e-3fe867732551', '3', '46', '506b4168-1c59-45dd-b1c6-7703c22a05a8', '1', '2019-01-29 18:31:41', '2019-01-29 18:31:41');
INSERT INTO `card_logs` VALUES ('537ba7ef-4d5c-4d58-b644-27d377768810', '1', '55', '9fbe6da3-2708-4998-8082-00840199aaa1', '1', '2019-01-29 18:31:41', '2019-01-29 18:31:41');
INSERT INTO `card_logs` VALUES ('d0bca80e-b5ba-4379-bcc9-3982a607a11b', '1', '47', '53d8dbd7-f7a8-4445-a6f1-6507bed031ce', '1', '2019-01-29 18:31:41', '2019-01-29 18:31:41');
INSERT INTO `card_logs` VALUES ('efc1b2a2-b321-4961-9ad9-993c05097ed3', '3', '62', 'dd053d8f-a90c-4ee0-9ff4-51b106b34557', '1', '2019-01-29 18:31:42', '2019-01-29 18:31:42');
INSERT INTO `card_logs` VALUES ('e0540271-0768-46d1-8ebe-91992fcae609', '1', '58', '9f7ecf24-4503-43a0-89cf-a26ab62d122f', '1', '2019-01-29 18:31:42', '2019-01-29 18:31:42');
INSERT INTO `card_logs` VALUES ('5aa95d9e-5264-42a1-8faa-320aab01e9b4', '2', '61', 'd1ea50ad-5e7a-4df6-bde5-8d7553427623', '1', '2019-01-29 18:31:42', '2019-01-29 18:31:42');
INSERT INTO `card_logs` VALUES ('7b48972f-ce36-48af-bc49-fdb2fcf92fc0', '1', '65', '7357a8f1-f10b-412f-97bb-a0c08ff799f8', '1', '2019-01-29 18:31:42', '2019-01-29 18:31:42');
INSERT INTO `card_logs` VALUES ('8b66260d-876f-4cd7-8aad-fbf20cab9594', '1', '63', 'fef12ff9-06e0-434b-8662-d0cb54996ddd', '1', '2019-01-29 18:31:42', '2019-01-29 18:31:42');
INSERT INTO `card_logs` VALUES ('b7ba9406-b3cc-4a4f-81ca-e9e47e14438a', '2', '66', '3b37cb35-dc6d-488d-a9e9-c3a7c59002f3', '1', '2019-01-29 18:31:42', '2019-01-29 18:31:42');
INSERT INTO `card_logs` VALUES ('61c61203-f157-4e63-bcb6-e0782c587ef0', '4', '59', 'e75ab9fc-ba39-461e-b00a-6170f5f8963d', '1', '2019-01-29 18:31:42', '2019-01-29 18:31:42');
INSERT INTO `card_logs` VALUES ('cbdc3543-967a-47b3-a9ca-be232164b804', '2', '64', '758af7c5-bad7-4fa5-b597-2f85452025a2', '1', '2019-01-29 18:31:42', '2019-01-29 18:31:42');
INSERT INTO `card_logs` VALUES ('013c4260-ecc5-4b5f-a13b-314ad019adc0', '2', '73', '29d3abf2-95ac-4b81-abed-da0cc80fb641', '1', '2019-01-29 18:31:42', '2019-01-29 18:31:42');
INSERT INTO `card_logs` VALUES ('00091e7a-d899-4dcc-80e5-f2198507a014', '1', '71', 'e99b403e-b8e7-4c61-b893-867e1dd931ae', '1', '2019-01-29 18:31:42', '2019-01-29 18:31:42');
INSERT INTO `card_logs` VALUES ('3b29a92a-40b2-4a38-b305-19f2ae48ba66', '2', '72', '9ffdf2f7-e998-4dcb-98dd-10b9b4c4bf83', '1', '2019-01-29 18:31:42', '2019-01-29 18:31:42');
INSERT INTO `card_logs` VALUES ('fce67e85-2dbe-4a38-9af3-715dd85657eb', '3', '69', '85a946d6-cf85-46ea-903b-45ba8777c904', '1', '2019-01-29 18:31:42', '2019-01-29 18:31:42');
INSERT INTO `card_logs` VALUES ('a7275491-3a3a-4531-bed9-166a2cc63933', '1', '75', '7d904fbb-631d-426f-acd4-0030028da213', '1', '2019-01-29 18:31:42', '2019-01-29 18:31:42');
INSERT INTO `card_logs` VALUES ('0fb421c5-c162-4c6b-80f3-997df40b8c5e', '1', '76', '6fe4272c-8c1e-4a55-b403-7c1613a040bd', '1', '2019-01-29 18:31:42', '2019-01-29 18:31:42');
INSERT INTO `card_logs` VALUES ('cd3819bc-583c-4263-ad97-0434e950ff4c', '2', '70', 'b0147ee1-7062-4c51-bf59-b47cc4da1780', '1', '2019-01-29 18:31:42', '2019-01-29 18:31:42');
INSERT INTO `card_logs` VALUES ('d3d04599-d4b1-4416-ba44-301e23117ca3', '3', '74', 'd591088e-cea1-4976-bc9d-c75bb507c8d4', '1', '2019-01-29 18:31:42', '2019-01-29 18:31:42');
INSERT INTO `card_logs` VALUES ('cedd978b-5bf8-47d7-922c-a062b0fce592', '1', '51', 'c33f34b8-a738-401e-8ea1-982bee34afb6', '1', '2019-01-29 18:31:42', '2019-01-29 18:31:42');
INSERT INTO `card_logs` VALUES ('772136a7-960f-4b4a-bb08-f7f1ac1b3a44', '3', '53', 'a51348ee-c15c-4325-b87d-674622c40fd7', '1', '2019-01-29 18:31:43', '2019-01-29 18:31:43');
INSERT INTO `card_logs` VALUES ('781c6678-f717-4be9-bd62-165731991f3e', '2', '81', '57bea2c7-10e7-44ec-afa2-d15e233257b2', '1', '2019-01-29 18:31:43', '2019-01-29 18:31:43');
INSERT INTO `card_logs` VALUES ('587cee03-ee42-41eb-9702-1fd647106779', '3', '85', 'c2705a35-2bf8-4705-ad88-386e55b53f13', '1', '2019-01-29 18:31:43', '2019-01-29 18:31:43');
INSERT INTO `card_logs` VALUES ('d4a0ef6e-49fe-4319-a654-5a9562c5cae6', '1', '82', '2cb2c5c1-f67a-4240-a514-dc15644d44db', '1', '2019-01-29 18:31:43', '2019-01-29 18:31:43');
INSERT INTO `card_logs` VALUES ('d7adf2df-e113-44c6-833d-d21a4154b44b', '4', '79', '91cbb482-ae44-4db1-83b8-93b40d104523', '1', '2019-01-29 18:31:43', '2019-01-29 18:31:43');
INSERT INTO `card_logs` VALUES ('9a98da55-02f1-4c00-867f-df148a614169', '2', '88', '103925ca-9218-48c1-82a4-2226d9409988', '1', '2019-01-29 18:31:43', '2019-01-29 18:31:43');
INSERT INTO `card_logs` VALUES ('e49d1c04-3eed-468a-b9af-e7f0bbfe352e', '2', '84', '1bd3e7f3-6160-4865-a1b9-328fe5d70b50', '1', '2019-01-29 18:31:43', '2019-01-29 18:31:43');
INSERT INTO `card_logs` VALUES ('97498972-57e6-4b5d-95aa-4b0a41c6b3d6', '2', '68', '2faf61c7-83a6-4a29-ba90-e5ead62df8d6', '1', '2019-01-29 18:31:43', '2019-01-29 18:31:43');
INSERT INTO `card_logs` VALUES ('811ceced-440f-48ae-b2da-70561b7852bd', '1', '86', 'e6ae9762-e7ec-428c-85ca-2a04ff4ae05f', '1', '2019-01-29 18:31:43', '2019-01-29 18:31:43');
INSERT INTO `card_logs` VALUES ('6dde5a6b-6637-4902-a861-d1b60f04b9dc', '1', '83', 'cfc6b8ef-b768-41b1-b38e-2f7feb284f40', '1', '2019-01-29 18:31:43', '2019-01-29 18:31:43');
INSERT INTO `card_logs` VALUES ('357232df-04b2-4261-ba6d-920813eae546', '1', '87', '3926b8f6-31ec-4113-a808-0c0f2d800a21', '1', '2019-01-29 18:31:43', '2019-01-29 18:31:43');
INSERT INTO `card_logs` VALUES ('158ef709-c642-4832-b0f1-89f8d7ddcaa8', '1', '94', 'cd9180ed-f89a-4e28-8124-3664065416d8', '1', '2019-01-29 18:31:43', '2019-01-29 18:31:43');
INSERT INTO `card_logs` VALUES ('44c8ffe2-3868-4bc9-b646-2b4bf0007fff', '1', '92', 'c9cf06c9-13af-4764-80e9-cd5e4a8875f7', '1', '2019-01-29 18:31:44', '2019-01-29 18:31:44');
INSERT INTO `card_logs` VALUES ('b12a5e98-f989-408a-91e9-daac1650b455', '1', '90', 'f260897e-5b53-4ccc-8657-1682ecf13b6d', '1', '2019-01-29 18:31:44', '2019-01-29 18:31:44');
INSERT INTO `card_logs` VALUES ('1121814b-f990-4a36-8d8e-e0e6a5029f22', '4', '95', '20596706-3b13-4f90-8e01-c3375272759b', '1', '2019-01-29 18:31:44', '2019-01-29 18:31:44');
INSERT INTO `card_logs` VALUES ('d7b18e23-a46d-4c3a-82dc-b076c6fdae0d', '1', '73', '4098ad62-77d1-46a4-a085-5ae68c5f26bc', '1', '2019-01-29 18:31:44', '2019-01-29 18:31:44');
INSERT INTO `card_logs` VALUES ('95588a0d-2927-4cf3-a10a-947f7e21d54b', '1', '99', '4374df46-9bec-4bbc-a1f7-e70b9c2246d6', '1', '2019-01-29 18:31:44', '2019-01-29 18:31:44');
INSERT INTO `card_logs` VALUES ('aeb1bea9-57dc-43e8-a701-7811a2470a90', '4', '96', '334ccef3-aff6-4934-bf10-e8660b227ec3', '1', '2019-01-29 18:31:44', '2019-01-29 18:31:44');
INSERT INTO `card_logs` VALUES ('3375b2f9-f134-43ce-93df-a32cff98c62a', '2', '97', '855b52bd-2529-4ee9-90e2-69e58fc403d4', '1', '2019-01-29 18:31:44', '2019-01-29 18:31:44');
INSERT INTO `card_logs` VALUES ('937167c7-6a65-4e9a-85c8-f1ade668dfd6', '2', '98', '6c41e0ef-3e36-4b66-bdab-a7a0943843c8', '1', '2019-01-29 18:31:44', '2019-01-29 18:31:44');
INSERT INTO `card_logs` VALUES ('209f34b6-4b78-45af-9a45-0085fe9e7e26', '3', '103', '71497ed4-cf05-4b0b-978c-cb122aef4cfd', '1', '2019-01-29 18:31:44', '2019-01-29 18:31:44');
INSERT INTO `card_logs` VALUES ('d0fa32be-3eae-45ce-abf7-c830e4a87bc6', '2', '91', 'cca2a849-e604-45d4-b844-9a9d8e2b3162', '1', '2019-01-29 18:31:44', '2019-01-29 18:31:44');
INSERT INTO `card_logs` VALUES ('14891f3d-3af0-47a7-bd78-e30fc543ca1d', '4', '102', 'd1e79163-b287-438d-b55f-41069fec2660', '1', '2019-01-29 18:31:44', '2019-01-29 18:31:44');
INSERT INTO `card_logs` VALUES ('bb83b9c3-6e68-42e2-b4fa-a754d93efcdf', '1', '105', 'f764750d-db90-444a-a878-938fa12365b3', '1', '2019-01-29 18:31:44', '2019-01-29 18:31:44');
INSERT INTO `card_logs` VALUES ('cb026b74-addb-48ae-b1ef-ef13cd3122e4', '1', '89', '678f912a-2012-43f6-84c2-afc21ad5f7ec', '1', '2019-01-29 18:31:44', '2019-01-29 18:31:44');
INSERT INTO `card_logs` VALUES ('a78560c7-77a7-468c-85ad-28d6a0073505', '2', '107', '1d3dd23d-c6dd-4a1f-9f8f-8c36e8a868fa', '1', '2019-01-29 18:31:44', '2019-01-29 18:31:44');
INSERT INTO `card_logs` VALUES ('af5c41fe-9679-4839-b389-5bccf327b83b', '2', '104', '4ff0b10f-a089-49fa-8240-3411afe27412', '1', '2019-01-29 18:31:44', '2019-01-29 18:31:44');
INSERT INTO `card_logs` VALUES ('0f1bf735-fcdf-4d47-b2db-170847c459db', '1', '111', 'd40ccdcf-3d2c-42d3-8e12-511efb88da1c', '1', '2019-01-29 18:31:44', '2019-01-29 18:31:44');
INSERT INTO `card_logs` VALUES ('5939e269-067c-4ce5-b47d-d0c156c8ea9e', '2', '101', '3a0efc3f-4bfc-44d5-9a5c-f1ba625d2de7', '1', '2019-01-29 18:31:44', '2019-01-29 18:31:44');
INSERT INTO `card_logs` VALUES ('a0e21505-dc6b-4c88-aeec-1000e47b6564', '1', '109', '78de06e0-31b2-4249-a3b3-7f9a1a545bbd', '1', '2019-01-29 18:31:44', '2019-01-29 18:31:44');
INSERT INTO `card_logs` VALUES ('a03ae174-670f-46aa-821a-1476d841be65', '3', '110', '75629a34-a285-414c-935f-7a9bb427202c', '1', '2019-01-29 18:31:44', '2019-01-29 18:31:44');
INSERT INTO `card_logs` VALUES ('ce43f751-bb76-43c0-a388-117b60119224', '2', '108', 'c04f1827-b3b8-403d-882f-7cc086dcdff4', '1', '2019-01-29 18:31:44', '2019-01-29 18:31:44');
INSERT INTO `card_logs` VALUES ('3b1ea5fe-fa67-40e6-bc3c-6ee11d9c890e', '4', '113', '57cf14cb-bdf0-4ca1-ae95-68705748ab83', '1', '2019-01-29 18:31:45', '2019-01-29 18:31:45');
INSERT INTO `card_logs` VALUES ('ca72dada-1e0a-4e23-879d-c7de5ab0a15e', '2', '117', '6dbfa782-f4e4-43e6-888a-32bc733e7154', '1', '2019-01-29 18:31:45', '2019-01-29 18:31:45');
INSERT INTO `card_logs` VALUES ('70c62fe4-530f-4f80-9a4c-4f15f8ed0ca0', '1', '114', '070901aa-73ab-4afa-ba1b-7900a39181bf', '1', '2019-01-29 18:31:45', '2019-01-29 18:31:45');
INSERT INTO `card_logs` VALUES ('84e4872c-0e4f-4847-9f00-b95bd3cfa878', '1', '119', '41b8720d-ae1f-4a66-aa98-035d169b7254', '1', '2019-01-29 18:31:45', '2019-01-29 18:31:45');
INSERT INTO `card_logs` VALUES ('95a4c4d2-3c2b-42bf-b02d-9599dabd27f9', '2', '112', '0e1e0f74-570b-4219-ad38-6e5baeb1d20c', '1', '2019-01-29 18:31:45', '2019-01-29 18:31:45');
INSERT INTO `card_logs` VALUES ('0b8a48be-45ce-4609-b285-08062c187560', '3', '118', 'e3ff97ee-b55b-4f9b-a38b-0df67e5aebd2', '1', '2019-01-29 18:31:45', '2019-01-29 18:31:45');
INSERT INTO `card_logs` VALUES ('0129dc0b-b84f-4bf0-b461-09b143984b13', '2', '115', '40b69cc7-cc28-4f64-97b9-3f49db06722a', '1', '2019-01-29 18:31:45', '2019-01-29 18:31:45');
INSERT INTO `card_logs` VALUES ('3c63a97f-de29-4676-bb27-f502d8fc4877', '1', '120', 'ecc4fce8-d3f0-456d-8b7c-54fc2a04fb85', '1', '2019-01-29 18:31:45', '2019-01-29 18:31:45');
INSERT INTO `card_logs` VALUES ('ea5eed04-689c-4d3d-a325-80cdca01f7c7', '1', '116', '1a051f84-1ef3-4f7e-8162-c1ec0d68f229', '1', '2019-01-29 18:31:45', '2019-01-29 18:31:45');
INSERT INTO `card_logs` VALUES ('98002f4b-a45a-4760-bf5d-964c4cef9f2e', '1', '127', '57d40ffa-de37-4c29-980c-9a65e0838398', '1', '2019-01-29 18:31:45', '2019-01-29 18:31:45');
INSERT INTO `card_logs` VALUES ('c9a3207e-e825-49bd-b70b-35f000734e8d', '2', '128', 'e0032a82-f607-4a3e-a1b9-62cd75692db1', '1', '2019-01-29 18:31:45', '2019-01-29 18:31:45');
INSERT INTO `card_logs` VALUES ('9daf1300-6897-4b69-bdb2-c6b553dd9fdf', '4', '124', 'bf15092b-fb1f-406d-bc8f-c5158360866c', '1', '2019-01-29 18:31:46', '2019-01-29 18:31:46');
INSERT INTO `card_logs` VALUES ('657d70f9-419e-4490-8497-9d97cb1ee5d9', '3', '131', '11652742-846c-4614-a565-9d1df6cee25d', '1', '2019-01-29 18:31:46', '2019-01-29 18:31:46');
INSERT INTO `card_logs` VALUES ('970111d3-1803-4911-af18-71245c84999a', '2', '140', 'f902a858-adee-4a42-9f7f-3463617348f3', '1', '2019-01-29 18:31:46', '2019-01-29 18:31:46');
INSERT INTO `card_logs` VALUES ('d0ae7d35-3521-41f0-a764-6a18b124a02e', '3', '142', '84979e91-2aca-4688-844a-96bf53ec09f1', '1', '2019-01-29 18:31:46', '2019-01-29 18:31:46');
INSERT INTO `card_logs` VALUES ('7abbee2c-95f6-427e-b501-9ab89ce69ece', '2', '130', '31051432-9eb0-412b-af9a-c5eff8d8150e', '1', '2019-01-29 18:31:46', '2019-01-29 18:31:46');
INSERT INTO `card_logs` VALUES ('81e6df9d-b867-4bca-899d-8d17137fbf91', '1', '143', 'edf01c77-80bb-4d0a-b635-dc57c8b38ff4', '1', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `card_logs` VALUES ('9870cc6b-b424-478e-ad0e-01a8687507f5', '2', '123', 'ad095398-aac8-4ba7-9505-d89a55e06c0e', '1', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `card_logs` VALUES ('e5b39fc3-eb06-40d0-b8b1-03c34f8f76da', '4', '132', '11090fb6-4942-44a3-8bbe-ee4411d85648', '1', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `card_logs` VALUES ('243d5e11-c2ed-4f5b-9b87-948a2b589c1c', '4', '144', 'bdfc6540-b687-45c3-a693-2bcad5d50dc2', '1', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `card_logs` VALUES ('5f6bac3a-9a4d-4f4f-b2a2-90941e0a1ead', '2', '145', '5278172a-3259-44ab-8992-309561db4da8', '1', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `card_logs` VALUES ('3ccb0b11-bb33-4021-b5ff-b84b05151a0a', '2', '146', '6392c289-5b70-42b5-972d-cf370016aab0', '1', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `card_logs` VALUES ('c09e0dbb-446b-4c7f-9fd3-773c907de0a1', '1', '125', '97c66eaa-99e7-4665-afa0-a0212f918861', '1', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `card_logs` VALUES ('7932d6c1-cc79-44f1-a30a-cbdbaaf20540', '2', '137', 'ae602c82-81ab-4a11-8976-ed75cd1a0a9b', '1', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `card_logs` VALUES ('43251e4a-d205-48c3-af77-314bde82c318', '1', '147', '74850cb8-fcaa-4680-a1ae-8fe7779d7ed5', '1', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `card_logs` VALUES ('a234920a-35de-4ca3-87d7-e1f0bd6671f2', '1', '148', 'dc46ab77-81a8-41a6-a829-60c2de09e7f6', '1', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `card_logs` VALUES ('2c414ab5-ff78-4e87-a936-058d3bf0c0d0', '2', '149', '111a9834-68c1-4fe1-ae24-80b9b193be3e', '1', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `card_logs` VALUES ('d1fa3f8f-9cda-4715-b5fd-25afd790b2dd', '2', '151', '4d1dc86e-e0d2-4eb1-89d6-04ac1bb48786', '1', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `card_logs` VALUES ('d54c70dc-515f-483d-96be-9b5b27376bef', '2', '152', '56f5ef08-df74-4cac-bd53-cd829cc1ebbe', '1', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `card_logs` VALUES ('51452e62-4832-4f91-8f91-ca58bfe32c9a', '1', '153', 'a1110bad-dc13-475b-b36c-789dbc8b3285', '1', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `card_logs` VALUES ('08ad5b09-0caf-4c86-b20f-44dbc8712e96', '2', '154', '95047fe2-f807-455a-aceb-1cf66a4568a9', '1', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `card_logs` VALUES ('8f48d991-4811-4b56-902b-786d7f4d1d7a', '4', '157', '889922fe-7e5c-4d4b-9122-3aa94e4acf03', '1', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `card_logs` VALUES ('b97da804-6a69-443c-8eac-00906048eb30', '1', '158', 'bf152e2b-b48e-44a2-9cb6-7c10a7318911', '1', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `card_logs` VALUES ('0dacf9bc-5e64-402b-ac5a-5119a41fcdcd', '2', '159', '5d9e80fc-dabd-4f27-a690-7619b4d48a9b', '1', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `card_logs` VALUES ('6cb586ed-505c-4beb-8eb1-ff672ee7f372', '1', '160', '5b293a2f-b291-4c36-aeaa-e77dfa359fa0', '1', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `card_logs` VALUES ('6a3fc523-fafd-4f4f-9fd0-3cc673c2e9a9', '1', '161', '1a9ce360-64e9-49a5-9ac2-a53ea74e7b8d', '1', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `card_logs` VALUES ('740a45eb-729c-4718-a1aa-f0ec1e590623', '1', '135', '9e317b8c-ff81-4068-a0eb-1a1e4d90d87b', '1', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `card_logs` VALUES ('b8409670-8435-4379-a06d-025e5fc6f693', '4', '129', 'c3cdf948-8581-4feb-91d2-89c7070d57d3', '1', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `card_logs` VALUES ('3e116b4f-d461-46e9-af22-ff960a535b44', '2', '126', '865cbfcd-ab83-4ed5-a435-1c417f7a77e2', '1', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `card_logs` VALUES ('f230a413-5d79-4581-9567-9e721948ef88', '2', '134', '93853b55-33d6-42bc-89cb-0964e3c21471', '1', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `card_logs` VALUES ('73b7e692-687e-486f-ad5c-55a2a8c8b29d', '4', '164', 'f988b22f-47bb-449b-9a42-220ebeea7840', '1', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `card_logs` VALUES ('b7c13176-4d37-4302-bd00-f1569785adf6', '1', '165', '2b82a740-0053-4640-880d-6e48c9411db4', '1', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `card_logs` VALUES ('4b60f240-9771-4c35-b0b2-f95b6d5fe238', '1', '166', 'cbc66e91-e39c-4f4c-9577-9fd87beab6b3', '1', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `card_logs` VALUES ('febc90b5-2a42-4d03-ab84-021c3098588e', '3', '167', '227879a4-a578-40b8-a559-377fac337c30', '1', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `card_logs` VALUES ('1c21df6d-6ca0-4bce-b61e-fc4bafff005e', '2', '169', '5af4ce48-3d27-452b-b4ea-5abcbce5a444', '1', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `card_logs` VALUES ('520b335c-8307-40e1-88a6-9b94b60a9e96', '2', '171', 'de0e9407-038f-4a09-a902-4b330ec9cfd1', '1', '2019-01-29 18:31:48', '2019-01-29 18:31:48');
INSERT INTO `card_logs` VALUES ('02ab4377-0662-4841-a6c4-6865bc233854', '4', '162', 'a8a17462-e453-4ad1-b751-41f770a8a252', '1', '2019-01-29 18:31:48', '2019-01-29 18:31:48');
INSERT INTO `card_logs` VALUES ('3cee1499-cde1-4dc5-bf2a-343edd5170c1', '3', '172', '49aa8c6d-1b26-43f0-a403-a4a4bb6b1dfa', '1', '2019-01-29 18:31:48', '2019-01-29 18:31:48');
INSERT INTO `card_logs` VALUES ('5e0b42ec-bf4a-42f2-a427-05de52ee6ac6', '1', '173', '79ee079c-c1ab-4e2b-be92-536ca26b0677', '1', '2019-01-29 18:31:48', '2019-01-29 18:31:48');
INSERT INTO `card_logs` VALUES ('9e4a791c-4249-416f-993b-7d27445b3484', '1', '174', 'fb33f3a9-75e5-4f23-b839-c3e00d11f4b4', '1', '2019-01-29 18:31:48', '2019-01-29 18:31:48');
INSERT INTO `card_logs` VALUES ('06cd46aa-248e-44fb-8853-05173d59d7b3', '2', '175', '01fc3419-6824-405e-a678-d3f00f318ba2', '1', '2019-01-29 18:31:48', '2019-01-29 18:31:48');
INSERT INTO `card_logs` VALUES ('3623dcf0-1e1f-42aa-b332-76d5077b49b9', '4', '176', 'e5f0758f-8e2d-444b-b103-6439ee5cda8b', '1', '2019-01-29 18:31:48', '2019-01-29 18:31:48');
INSERT INTO `card_logs` VALUES ('1ef41ce3-50ad-4e41-9be9-16ffa1315348', '1', '170', 'b4fdf600-e09a-40af-9cc2-23cb5629fa09', '1', '2019-01-29 18:31:48', '2019-01-29 18:31:48');
INSERT INTO `card_logs` VALUES ('f4a71fd8-5f14-40dd-adb7-a81e2a03b66c', '1', '177', '72101eb4-d486-490e-95a7-b568220e9ad2', '1', '2019-01-29 18:31:48', '2019-01-29 18:31:48');
INSERT INTO `card_logs` VALUES ('40b62d50-fa76-4801-8157-5a4af7de1525', '1', '178', 'b7534d76-6fbf-49c4-acef-3f2e0b71b739', '1', '2019-01-29 18:31:48', '2019-01-29 18:31:48');
INSERT INTO `card_logs` VALUES ('4fd6bda3-6c95-457f-ac00-dd6969110434', '4', '179', 'c3c2ddba-ce78-4316-af15-c2a75b057d48', '1', '2019-01-29 18:31:48', '2019-01-29 18:31:48');
INSERT INTO `card_logs` VALUES ('3e1f0410-1b45-43d2-86a6-dea7f6a9f216', '2', '180', '24bbfd62-67ee-4d39-a2bc-6a8818bcf2e8', '1', '2019-01-29 18:31:48', '2019-01-29 18:31:48');
INSERT INTO `card_logs` VALUES ('5b82f358-c141-4c44-9468-be471b7b1925', '1', '181', '731e77c7-0a46-4d69-8adb-f0fdd97427e5', '1', '2019-01-29 18:31:48', '2019-01-29 18:31:48');
INSERT INTO `card_logs` VALUES ('18317f74-644f-4450-bc35-91f8b7c8c371', '2', '163', '503b3ac9-f1ff-4266-ac41-74007016b6a0', '1', '2019-01-29 18:31:48', '2019-01-29 18:31:48');
INSERT INTO `card_logs` VALUES ('0990d4ad-5ac1-4036-9624-e1cc6f4d2425', '1', '182', 'aa8e8199-93e6-4df7-bb50-049943f67e78', '1', '2019-01-29 18:31:48', '2019-01-29 18:31:48');
INSERT INTO `card_logs` VALUES ('af8d61d0-e70a-48ad-8c0e-01602bcf4525', '3', '183', 'd97f5b77-8e3c-40f3-9e34-512efa44f82c', '1', '2019-01-29 18:31:49', '2019-01-29 18:31:49');
INSERT INTO `card_logs` VALUES ('2421519b-051a-44d2-80f7-3cc36a509d7d', '1', '184', '511e9e33-e8b8-4693-be0c-dc68fd554e0a', '1', '2019-01-29 18:31:49', '2019-01-29 18:31:49');
INSERT INTO `card_logs` VALUES ('68986611-b6dd-416c-9188-65123b853fdf', '3', '185', 'ac026b3b-42e1-4957-9f7c-8487e8785816', '1', '2019-01-29 18:31:49', '2019-01-29 18:31:49');
INSERT INTO `card_logs` VALUES ('befdae9c-8567-43c9-ba23-e55fac98d45b', '1', '188', 'eebcbaeb-5ab6-4e06-abd4-6e39c86d9cf8', '1', '2019-01-29 18:31:49', '2019-01-29 18:31:49');
INSERT INTO `card_logs` VALUES ('b6392d40-75a2-4fc8-824a-01b00f1c69b0', '2', '187', '7a0a4d67-c711-481d-acc9-300665ea5064', '1', '2019-01-29 18:31:49', '2019-01-29 18:31:49');
INSERT INTO `card_logs` VALUES ('d46473b0-dd7e-4a61-874d-44568d0f0d88', '2', '141', '1ab417bd-4592-4e72-9389-2df9bce5ab56', '1', '2019-01-29 18:31:49', '2019-01-29 18:31:49');
INSERT INTO `card_logs` VALUES ('fa471dfc-50f7-4cfc-bee9-064a225911a7', '1', '139', '2e044681-a7d0-4d3b-87cc-074f2fab35f0', '1', '2019-01-29 18:31:49', '2019-01-29 18:31:49');
INSERT INTO `card_logs` VALUES ('73b15a3b-718d-4115-a68b-f81b402e96d6', '3', '168', '50c77b83-c50f-4e17-99d9-0df16c51f5bd', '1', '2019-01-29 18:31:49', '2019-01-29 18:31:49');
INSERT INTO `card_logs` VALUES ('dba4602a-df0b-4f1e-8551-a090c787ff02', '1', '189', '482cc730-c529-4f9d-a3cd-53639a50443b', '1', '2019-01-29 18:31:49', '2019-01-29 18:31:49');
INSERT INTO `card_logs` VALUES ('e0d57860-317a-4378-8930-01da158140a7', '1', '194', 'c5ba7f7f-afc7-4a74-b8db-65170c0f2872', '1', '2019-01-29 18:31:49', '2019-01-29 18:31:49');
INSERT INTO `card_logs` VALUES ('dd351003-f4a9-4e32-9dd3-30c2355507b9', '1', '190', '7bf796fb-9679-42c6-a30f-093d8c622022', '1', '2019-01-29 18:31:49', '2019-01-29 18:31:49');
INSERT INTO `card_logs` VALUES ('50b99573-434e-466b-ab46-0bd0f32d150a', '2', '191', 'acde4895-713a-4d92-824c-2cf12bed3b20', '1', '2019-01-29 18:31:49', '2019-01-29 18:31:49');
INSERT INTO `card_logs` VALUES ('96cab1ac-298a-49a1-9262-fc2e8deb667d', '5', '150', '013d9623-0dd2-4bd3-8ef4-3280fc69d270', '1', '2019-01-29 18:31:49', '2019-01-29 18:31:49');
INSERT INTO `card_logs` VALUES ('4a3f4db9-f5d1-4426-a6f3-faa447e40a33', '2', '192', 'ab003c39-8fda-4ae3-b64e-b4c588a1babf', '1', '2019-01-29 18:31:49', '2019-01-29 18:31:49');
INSERT INTO `card_logs` VALUES ('2b5cdc9e-03d3-4d6b-8249-77c109a19f2b', '2', '196', '707d0eb6-e133-4169-88ae-0b19b042d00f', '1', '2019-01-29 18:31:49', '2019-01-29 18:31:49');
INSERT INTO `card_logs` VALUES ('7640a392-c8c4-49f3-924e-7003253a3bfd', '1', '188', '9ee51518-4cfd-49e3-9b83-f22d5766aaf2', '1', '2019-01-29 18:31:49', '2019-01-29 18:31:49');
INSERT INTO `card_logs` VALUES ('00ce7299-7fc1-4eb6-bf36-0af97f284fad', '2', '199', '2d2bbbe1-3955-43c7-800d-1940ffef5cae', '1', '2019-01-29 18:31:49', '2019-01-29 18:31:49');
INSERT INTO `card_logs` VALUES ('e75c8128-9fc0-47cb-b37e-470665e35da1', '2', '197', '86578d77-33c2-4146-80bc-f219d688ea20', '1', '2019-01-29 18:31:50', '2019-01-29 18:31:50');

-- ----------------------------
-- Table structure for card_rate
-- ----------------------------
DROP TABLE IF EXISTS `card_rate`;
CREATE TABLE `card_rate` (
  `record_id` varchar(40) DEFAULT NULL COMMENT '记录id',
  `template_id` varchar(40) DEFAULT NULL COMMENT '卡模板id',
  `card_rate` double DEFAULT NULL COMMENT '出现概率',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `rate_type` varchar(1) DEFAULT '1' COMMENT '概率类型'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of card_rate
-- ----------------------------
INSERT INTO `card_rate` VALUES ('4', '4', '0.1', '2019-01-28 22:20:17', '2019-01-28 22:20:19', '1');
INSERT INTO `card_rate` VALUES ('2', '2', '0.3', '2019-01-28 22:20:28', '2019-01-28 22:20:31', '1');
INSERT INTO `card_rate` VALUES ('3', '3', '0.1', '2019-01-28 22:20:17', '2019-01-28 22:20:19', '1');
INSERT INTO `card_rate` VALUES ('1', '1', '0.3', '2019-01-28 22:20:17', '2019-01-28 22:20:19', '1');
INSERT INTO `card_rate` VALUES ('5', '5', '0.01', '2019-01-28 22:20:17', '2019-01-28 22:20:19', '1');
INSERT INTO `card_rate` VALUES ('7', '7', '0.001', '2019-01-28 22:22:00', '2019-01-28 22:22:03', '1');
INSERT INTO `card_rate` VALUES ('6', '6', '0.4', '2019-01-29 14:09:23', '2019-01-29 14:09:26', '2');

-- ----------------------------
-- Table structure for card_template
-- ----------------------------
DROP TABLE IF EXISTS `card_template`;
CREATE TABLE `card_template` (
  `template_id` varchar(40) DEFAULT NULL COMMENT '模板id',
  `template_name` varchar(40) DEFAULT NULL COMMENT '模板名称',
  `card_type` varchar(2) DEFAULT NULL COMMENT '卡类型',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of card_template
-- ----------------------------
INSERT INTO `card_template` VALUES ('1', '爱国福', '1', '2019-01-28 22:18:06', '2019-01-28 22:18:09');
INSERT INTO `card_template` VALUES ('2', '富强福', '1', '2019-01-28 22:18:22', '2019-01-28 22:18:24');
INSERT INTO `card_template` VALUES ('3', '和谐福', '1', '2019-01-28 22:18:34', '2019-01-28 22:18:37');
INSERT INTO `card_template` VALUES ('4', '友善福', '1', '2019-01-28 22:18:47', '2019-01-28 22:18:50');
INSERT INTO `card_template` VALUES ('5', '敬业福', '1', '2019-01-28 22:19:01', '2019-01-28 22:19:03');
INSERT INTO `card_template` VALUES ('6', '沾福气', '2', '2019-01-28 22:19:29', '2019-01-28 22:19:31');
INSERT INTO `card_template` VALUES ('7', '万能福', '3', '2019-01-28 22:19:56', '2019-01-28 22:19:58');
INSERT INTO `card_template` VALUES ('8', '五福到', '4', '2019-01-28 23:12:35', '2019-01-28 23:12:37');

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
-- Table structure for present_card_log
-- ----------------------------
DROP TABLE IF EXISTS `present_card_log`;
CREATE TABLE `present_card_log` (
  `log_id` varchar(40) DEFAULT NULL COMMENT '记录id',
  `from_user_id` varchar(40) DEFAULT NULL COMMENT '来源人',
  `to_user_id` varchar(40) DEFAULT NULL COMMENT '接收人',
  `card_id` varchar(40) DEFAULT NULL COMMENT '卡id',
  `template_id` varchar(40) DEFAULT NULL COMMENT '卡模板id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of present_card_log
-- ----------------------------
INSERT INTO `present_card_log` VALUES ('e9bbc4b5-fc04-4577-809d-8c5c871ec970', '1', '5', '65aa38f0-362a-4180-a7a0-a39abd39cc6b', '5', '2019-01-29 11:14:32', '2019-01-29 11:14:32');
INSERT INTO `present_card_log` VALUES ('879075ba-6750-46ff-aea6-2e6d567a0d79', '1', '5', '4002f119-c643-406c-9ac8-76e84a2184c7', '5', '2019-01-29 11:17:29', '2019-01-29 11:17:29');
INSERT INTO `present_card_log` VALUES ('a84ae7ce-6184-4b89-ab14-89371f97978d', '8', '5', '7503e785-c87f-4fdb-b438-3b4d39f6973e', '4', '2019-01-29 11:22:58', '2019-01-29 11:22:58');
INSERT INTO `present_card_log` VALUES ('1c8e10b2-04ef-49a0-817b-dfff8fc2b1ec', '4', '5', '36c7938f-1371-4555-94a0-7bf3fc95441d', '3', '2019-01-29 11:23:25', '2019-01-29 11:23:25');
INSERT INTO `present_card_log` VALUES ('75a55c61-6d84-4530-b272-d905a6eecf7f', '4', '5', 'af5a696d-078d-43d6-9925-9233999d76c0', '1', '2019-01-29 11:23:51', '2019-01-29 11:23:51');
INSERT INTO `present_card_log` VALUES ('962ebdfa-a954-44ce-a9cc-0fcb51070adb', '3', '5', 'dd821a24-de0b-47c9-a103-2ab7a829bea4', '2', '2019-01-29 11:24:14', '2019-01-29 11:24:14');
INSERT INTO `present_card_log` VALUES ('59b926a9-8754-463b-983a-22cbc2b834e6', '3', '5', '4eb86541-e352-4fdb-a8ec-b08ce0bb3484', '1', '2019-01-29 11:24:56', '2019-01-29 11:24:56');
INSERT INTO `present_card_log` VALUES ('84683455-4c26-40cb-a9ca-7e44f5a70e5e', '5', '4', 'f100f488-58fe-4c0f-80c0-23f135f350a2', '6', '2019-01-29 14:43:07', '2019-01-29 14:43:07');

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
-- Table structure for receive_log
-- ----------------------------
DROP TABLE IF EXISTS `receive_log`;
CREATE TABLE `receive_log` (
  `log_id` varchar(40) DEFAULT NULL COMMENT '记录id',
  `user_id` varchar(40) DEFAULT NULL COMMENT '用户id',
  `card_id` varchar(40) DEFAULT NULL COMMENT '卡id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of receive_log
-- ----------------------------
INSERT INTO `receive_log` VALUES ('2cae067b-fcf4-4ab4-9017-12bf925f0339', '10', '7b1855a6-f1b4-4caa-b429-1b017a978357', '2019-01-29 17:28:17', '2019-01-29 17:28:17');
INSERT INTO `receive_log` VALUES ('c6f716b3-83c1-4f57-84d9-51a3effc7b19', '13', '099538ca-c20b-477a-abb3-3590d81e3c10', '2019-01-29 17:28:17', '2019-01-29 17:28:17');
INSERT INTO `receive_log` VALUES ('28f60cbb-1473-4d5d-862c-2baf39cf48f9', '16', 'c258d3e4-2060-4d92-9b39-a466bcad99ad', '2019-01-29 17:28:17', '2019-01-29 17:28:17');
INSERT INTO `receive_log` VALUES ('b5672873-6bed-4600-affb-a37392b805e5', '3', '031aaf15-5f3a-47bd-8682-e81a73a57795', '2019-01-29 17:28:17', '2019-01-29 17:28:17');
INSERT INTO `receive_log` VALUES ('eb4e7b14-fbde-4036-9b43-576326656ac8', '15', 'ac6fe097-2d04-41f2-9429-07ec5c95e40f', '2019-01-29 17:28:17', '2019-01-29 17:28:17');
INSERT INTO `receive_log` VALUES ('da51bc06-5325-4607-960c-a1f0a525e88a', '12', 'f58993af-c64b-421d-9b3a-7f1a65571fc6', '2019-01-29 17:28:17', '2019-01-29 17:28:17');
INSERT INTO `receive_log` VALUES ('14ab54ab-5bdf-4662-8889-305e40c1dfc3', '14', '205d35c5-1588-4401-97c6-53c920eeac67', '2019-01-29 17:28:17', '2019-01-29 17:28:17');
INSERT INTO `receive_log` VALUES ('f2667ccd-d753-4ae0-be08-0b2b23f61e6a', '2', 'fdbfc80a-a159-421e-8554-6c8d9c29fbc5', '2019-01-29 17:28:17', '2019-01-29 17:28:17');
INSERT INTO `receive_log` VALUES ('c31322e4-0a0f-4923-8391-759bb3a7f8fb', '17', '1df5c6fb-b148-4b37-88f9-0da52d4e29cb', '2019-01-29 17:28:17', '2019-01-29 17:28:17');
INSERT INTO `receive_log` VALUES ('35d1c54c-9c3e-471a-99b0-4224861c928e', '1', 'abaf4c64-c8aa-40a5-aa1b-6205e803761f', '2019-01-29 17:28:17', '2019-01-29 17:28:17');
INSERT INTO `receive_log` VALUES ('4630d500-8710-4a47-958a-ea22a7e4c38b', '8', 'bab86804-a95c-4fb0-850b-970d6b313c93', '2019-01-29 17:28:17', '2019-01-29 17:28:17');
INSERT INTO `receive_log` VALUES ('0f08400a-3ed0-4ae8-801e-570012402f36', '5', '2a1b7acf-eb51-4794-8417-a50bd5f1966f', '2019-01-29 17:28:17', '2019-01-29 17:28:17');
INSERT INTO `receive_log` VALUES ('1aeb30b9-2d43-4ce7-a427-61946f62508d', '22', '8a3ddd64-8d0b-4c25-8bd9-bfa3cb53e059', '2019-01-29 17:28:17', '2019-01-29 17:28:17');
INSERT INTO `receive_log` VALUES ('70c6a6c8-3545-40bf-9158-c28d8180c678', '7', 'e4976e5e-021d-402f-9b7e-ff2b0e6dd3bb', '2019-01-29 17:28:17', '2019-01-29 17:28:17');
INSERT INTO `receive_log` VALUES ('eeaa70a1-cb75-4bf0-92e1-7c4a354bc171', '25', '677f55df-0ca9-4612-9ef8-acd410f814fc', '2019-01-29 17:28:18', '2019-01-29 17:28:18');
INSERT INTO `receive_log` VALUES ('d7af00b7-8e57-4285-95de-58c9e81d3c84', '23', 'd672f5e3-0b5e-4146-9829-2cce8d3db813', '2019-01-29 17:28:18', '2019-01-29 17:28:18');
INSERT INTO `receive_log` VALUES ('3afd64a9-b1fe-4359-8970-5e657548fc92', '4', '8ffcf771-e2dd-4bb4-a947-6ac828225787', '2019-01-29 17:28:18', '2019-01-29 17:28:18');
INSERT INTO `receive_log` VALUES ('6d7e80ea-d0fc-4cd2-a83b-5641288dbaa9', '20', '61b28520-0da5-4d2b-912b-7e387b596a0c', '2019-01-29 17:28:18', '2019-01-29 17:28:18');
INSERT INTO `receive_log` VALUES ('0dcf520a-5195-46ce-a7a0-d424efe18d20', '26', '54302cc2-3aec-428f-8c9b-64509bd2b85f', '2019-01-29 17:28:18', '2019-01-29 17:28:18');
INSERT INTO `receive_log` VALUES ('4c19e525-3500-42cf-a7fa-c77cf49f2191', '6', '3c0948d5-0c2a-421b-8c74-cdf7a8199d03', '2019-01-29 17:28:18', '2019-01-29 17:28:18');
INSERT INTO `receive_log` VALUES ('4f37816d-3b6f-4dd8-9543-0fc93ae78149', '32', 'cda6cc65-c824-4ff2-adfd-be0414cb0442', '2019-01-29 17:28:18', '2019-01-29 17:28:18');
INSERT INTO `receive_log` VALUES ('3587798a-4050-4bc2-9945-ae679f4264f7', '10', 'e8db5119-9672-4f90-b594-3d7bffe1b9f2', '2019-01-29 17:28:18', '2019-01-29 17:28:18');
INSERT INTO `receive_log` VALUES ('51674e1e-6797-49d3-8d19-1d1d941bf5fd', '3', '8e2d2fe0-88c1-4ce1-91b2-d0e50653f6fb', '2019-01-29 17:28:18', '2019-01-29 17:28:18');
INSERT INTO `receive_log` VALUES ('9f5b9cdc-ea17-4cfe-9a91-3a7414aabae2', '27', '94592958-d9b1-4caa-9d37-0235e853c5cc', '2019-01-29 17:28:18', '2019-01-29 17:28:18');
INSERT INTO `receive_log` VALUES ('e8f0bee4-0981-4dcc-81cf-dffc6277ff91', '31', '32d232dd-ae06-44f9-abed-525bf51df339', '2019-01-29 17:28:18', '2019-01-29 17:28:18');
INSERT INTO `receive_log` VALUES ('5c01ef24-fd1e-419d-81aa-bc673176a40c', '19', '864e083b-7b18-4bfa-80af-651ffaa4c021', '2019-01-29 17:28:18', '2019-01-29 17:28:18');
INSERT INTO `receive_log` VALUES ('734df169-5d13-40f4-a596-8c16bb2ed4db', '36', '9fe1e43d-9803-42bd-b952-ccfdae03031d', '2019-01-29 17:28:18', '2019-01-29 17:28:18');
INSERT INTO `receive_log` VALUES ('c7cc21b3-4f08-4e35-bada-ba832b4ddc34', '24', 'c79c7d93-7dfc-41f8-94a8-e66a531c491c', '2019-01-29 17:28:18', '2019-01-29 17:28:18');
INSERT INTO `receive_log` VALUES ('a84d21e5-39ca-48d0-99b8-eb5fa810006a', '8', '1671813b-dc30-40cd-acfc-ee330e15d2e1', '2019-01-29 17:28:19', '2019-01-29 17:28:19');
INSERT INTO `receive_log` VALUES ('822872f4-261d-4f64-84a1-f2cc3c1dbfc1', '34', 'f3502e47-1ce8-41dc-86e8-9c37058026c9', '2019-01-29 17:28:19', '2019-01-29 17:28:19');
INSERT INTO `receive_log` VALUES ('2d815e88-0f90-4a90-990f-93cfdce5f444', '29', 'd0230d4f-19cc-4a54-8412-216a929d37ae', '2019-01-29 17:28:19', '2019-01-29 17:28:19');
INSERT INTO `receive_log` VALUES ('2cfc05f8-7596-49a4-9c83-990327fb5864', '37', '4e0ae165-472a-430a-b0ce-4eef39df0f23', '2019-01-29 17:28:19', '2019-01-29 17:28:19');
INSERT INTO `receive_log` VALUES ('fceb7f44-a586-4fab-9d89-b37b59d702c5', '33', '17ce2de8-1f63-4f76-a980-7151e2f750d4', '2019-01-29 17:28:19', '2019-01-29 17:28:19');
INSERT INTO `receive_log` VALUES ('aac28f1c-1b30-4de4-8d57-3d405f4ab012', '39', '1b8a302d-5c57-4853-8dc1-06b56e4a90b6', '2019-01-29 17:28:19', '2019-01-29 17:28:19');
INSERT INTO `receive_log` VALUES ('3d13b9c2-9a31-412d-a47f-da9f8eb5c7e5', '35', '0571ee92-a5d9-4662-8fa2-12b1fb32d4d9', '2019-01-29 17:28:19', '2019-01-29 17:28:19');
INSERT INTO `receive_log` VALUES ('c8b3aa68-99fe-4ed2-bf1c-ea438547b61d', '28', 'df2ab4a0-a1b6-42ba-9ccf-2fa653ebfc9e', '2019-01-29 17:28:19', '2019-01-29 17:28:19');
INSERT INTO `receive_log` VALUES ('62b5bd9d-f704-4256-9f80-6d6e55e550eb', '40', 'f4a1df0d-aca2-4d8d-a2b7-ef662a80e235', '2019-01-29 17:28:19', '2019-01-29 17:28:19');
INSERT INTO `receive_log` VALUES ('3e619c96-6796-4b67-92a7-f4fdbb8616ae', '41', 'e08411b1-ba9f-4225-8365-fb9ec9be2b86', '2019-01-29 17:28:19', '2019-01-29 17:28:19');
INSERT INTO `receive_log` VALUES ('61070fa6-0f71-4f37-a6ff-6fd73c047129', '45', '69f1744c-de43-43aa-9a99-9dbc79d3cdab', '2019-01-29 17:28:19', '2019-01-29 17:28:19');
INSERT INTO `receive_log` VALUES ('d3e23aca-864c-44b3-a0ff-eb94d589b874', '26', '464ec566-72b3-4986-8cb4-999c602129a1', '2019-01-29 17:28:19', '2019-01-29 17:28:19');
INSERT INTO `receive_log` VALUES ('5aee2a3d-408e-4f46-b026-fd60acd11a22', '31', '5d1b0bde-b787-4673-816b-d50ff49d27a6', '2019-01-29 17:28:19', '2019-01-29 17:28:19');
INSERT INTO `receive_log` VALUES ('e0888634-7f8b-47e4-a09e-2b9d51851a28', '49', 'eab049c8-634f-4c66-8fd7-7be00b2109ff', '2019-01-29 17:28:20', '2019-01-29 17:28:20');
INSERT INTO `receive_log` VALUES ('4ba37eeb-a873-47a1-8f15-52c0766b9516', '41', 'a191ae06-6640-4a6f-a2a4-b826dd03b1df', '2019-01-29 17:28:20', '2019-01-29 17:28:20');
INSERT INTO `receive_log` VALUES ('fefa3610-8a83-42ad-a3a9-55c3642dcbfe', '56', 'e371ea86-eda0-4b91-ba51-a46cfc9d80df', '2019-01-29 17:28:20', '2019-01-29 17:28:20');
INSERT INTO `receive_log` VALUES ('0033755c-b7dd-4227-b2f1-13c9b66c5d23', '44', '1cf11766-e2c5-4e43-b18e-ad42dea76bea', '2019-01-29 17:28:20', '2019-01-29 17:28:20');
INSERT INTO `receive_log` VALUES ('6a87e547-1b74-4c04-b1e5-9f80752f7764', '62', '780fa200-5c78-4165-9406-46b694bc0239', '2019-01-29 17:28:20', '2019-01-29 17:28:20');
INSERT INTO `receive_log` VALUES ('6824a68a-c027-450d-81dc-a5ecbbfa9a33', '50', 'af14a15b-e7da-4f44-914f-1b0a49f40456', '2019-01-29 17:28:20', '2019-01-29 17:28:20');
INSERT INTO `receive_log` VALUES ('021ba77a-1d06-4229-b924-9c7ee826ff87', '63', '58cfa3b6-b35a-4109-bae2-02f06224b02a', '2019-01-29 17:28:20', '2019-01-29 17:28:20');
INSERT INTO `receive_log` VALUES ('ca64248a-79c0-49f8-827c-fe1661bab1a9', '66', '42bb0ee7-87a6-4c8c-bb43-e96be5d18793', '2019-01-29 17:28:20', '2019-01-29 17:28:20');
INSERT INTO `receive_log` VALUES ('e86ef49f-99d3-48d2-82d8-a2da71b31f9c', '55', '4beff327-5fe3-4706-bf56-3ec0fce54968', '2019-01-29 17:28:20', '2019-01-29 17:28:20');
INSERT INTO `receive_log` VALUES ('651e438d-60fc-4f81-80aa-c312ce549ac2', '77', '6e6c3065-3f65-4f31-a031-58115fced397', '2019-01-29 17:28:20', '2019-01-29 17:28:20');
INSERT INTO `receive_log` VALUES ('1f448408-c294-497c-8850-7c335eff06f5', '78', 'faadcd9d-80c3-42a3-935f-51884e3abc05', '2019-01-29 17:28:21', '2019-01-29 17:28:21');
INSERT INTO `receive_log` VALUES ('17279753-4f2e-475a-ad80-bc38c54bba0f', '79', 'bc842b91-6cd0-452e-9cf0-1bcf54a56a7b', '2019-01-29 17:28:21', '2019-01-29 17:28:21');
INSERT INTO `receive_log` VALUES ('7aef8f80-a92d-411a-bad0-752e8dc1c35a', '46', '4ed6dcc8-1f4e-41d3-b6d2-00d1b28b16b6', '2019-01-29 17:28:21', '2019-01-29 17:28:21');
INSERT INTO `receive_log` VALUES ('d73008c7-3b73-4cd2-9698-608cd8676c24', '61', 'a338c879-71ef-4dda-8c7a-4ed3cbc26868', '2019-01-29 17:28:21', '2019-01-29 17:28:21');
INSERT INTO `receive_log` VALUES ('fea4c548-5c30-4280-b7be-69e864c9dd88', '48', '385f7570-4ef7-4040-90a8-012cb0551d43', '2019-01-29 17:28:21', '2019-01-29 17:28:21');
INSERT INTO `receive_log` VALUES ('d5ab0f47-81fa-467f-b915-fbe2ff98da75', '56', '1a856a4d-4e87-462b-ad5a-51b1609728db', '2019-01-29 17:28:21', '2019-01-29 17:28:21');
INSERT INTO `receive_log` VALUES ('2d674798-6b05-42f8-a9d3-1896436ba5a2', '83', '2b011266-979d-4126-8d4d-5a5f5f09fd2d', '2019-01-29 17:28:21', '2019-01-29 17:28:21');
INSERT INTO `receive_log` VALUES ('6d48570c-5ae6-4747-b77a-d73dc95b36cc', '80', 'c1a31567-385f-4539-bd87-61fee92f61af', '2019-01-29 17:28:21', '2019-01-29 17:28:21');
INSERT INTO `receive_log` VALUES ('a6342f84-8e58-435d-a3bd-b68612487b90', '102', '7eeaa5ea-aab2-4b7e-9f6c-d706664a1c0d', '2019-01-29 17:28:21', '2019-01-29 17:28:21');
INSERT INTO `receive_log` VALUES ('ac8a3b54-d5fc-42b5-8159-a87d96976989', '64', '2f978024-c3cb-454d-9037-fd460dca099c', '2019-01-29 17:28:21', '2019-01-29 17:28:21');
INSERT INTO `receive_log` VALUES ('a46b2392-76f1-493f-8e7a-7384ae549a3b', '104', 'dba78540-54b2-4290-af76-01d178962e57', '2019-01-29 17:28:21', '2019-01-29 17:28:21');
INSERT INTO `receive_log` VALUES ('96ac7d27-b2d8-4f96-bd0f-cdb0244385a9', '105', '4edbec19-42b8-41ab-a161-6ed32fdf762a', '2019-01-29 17:28:21', '2019-01-29 17:28:21');
INSERT INTO `receive_log` VALUES ('9551d416-a298-46ba-8df5-4c89a25eb16d', '107', 'd12406ae-8b43-4d3a-b80f-71c12c03aca0', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `receive_log` VALUES ('b8392ed6-9c3f-4fa1-81e8-631596447fff', '112', '268b564e-68f8-46b8-af8e-a7a58e968236', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `receive_log` VALUES ('b8e3d21c-4552-4a3e-be8a-ae15f0d76959', '51', '680e1302-3765-4bb1-8989-e72c32462dd7', '2019-01-29 17:28:20', '2019-01-29 17:28:20');
INSERT INTO `receive_log` VALUES ('b5ebea8c-aec0-4575-90af-cd73ad6891a6', '23', 'a8e3f664-d779-4290-aa93-b059dc2c28aa', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `receive_log` VALUES ('fed7c484-4ff0-4ce5-9cee-2798dbba0344', '32', '7c4a16c9-3788-43e1-b469-262ac820f44f', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `receive_log` VALUES ('ccbff187-ced2-41d2-ac76-f3432be4ebbb', '60', '82ffbd73-caaa-4a63-8062-300bad579b5a', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `receive_log` VALUES ('c7caea1d-f3ba-43a0-9231-a2a58c398018', '67', 'e1fc46b0-b455-449f-b38c-4f37c276a372', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `receive_log` VALUES ('fbe909f5-95a7-4b95-83d9-8c76f7023989', '123', 'b7151539-3464-4999-b634-7db61e1f73df', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `receive_log` VALUES ('dcb78815-ecee-4e74-94be-a20d4dabddf0', '65', 'a8614003-e252-41c2-9926-ea5f896b639c', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `receive_log` VALUES ('b65a8caa-cbd2-4753-bcf7-2e3aa281df9f', '68', 'cbd3ee71-a584-4d56-aec7-08983692356f', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `receive_log` VALUES ('401add96-4c27-4718-90e9-446f0c62e8fc', '38', 'd8aad207-58ac-4793-815b-b229ab9ec622', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `receive_log` VALUES ('3e75421e-cffe-461d-986e-8b377a9ace96', '47', '3fc9d52c-1a34-4117-81a6-c6e49957f0ae', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `receive_log` VALUES ('ba24d744-e7fc-4a5d-96c5-35aada56407d', '72', '5755e1fd-292c-4101-99e6-47ccb9e760fd', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `receive_log` VALUES ('143e05d2-1bf8-4095-a64c-875553f9c19f', '49', 'ceca683e-e5dc-41f5-970b-fab5edef1d11', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `receive_log` VALUES ('8638b12e-2ef7-425e-9abd-c53bb13253ef', '74', 'f5cc9c2e-3a07-4d64-a52a-fed580c6099d', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `receive_log` VALUES ('12c7f504-3cc1-413f-81ba-961ee3375dc1', '108', 'e0d3299e-ba3c-465d-b242-224486a3ce56', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `receive_log` VALUES ('7758fd14-c7b6-448d-9756-42de2965b8e7', '132', '1128ef35-dadb-4eed-9dd6-ca32b1c447e6', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `receive_log` VALUES ('754a60af-1233-409a-b902-b68838ef425f', '53', 'b9a8555a-6e2d-46e3-831b-0c468beea426', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `receive_log` VALUES ('0ebddc32-cdc8-4fb8-86ca-3879a0b10a88', '76', '2c0eda09-c1e9-4005-bb49-2ed9f45f12b1', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `receive_log` VALUES ('bfed3e1e-a40d-464e-800c-e9c329db9acc', '59', '76156d47-a2c5-44b7-abf1-69cf029c6379', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `receive_log` VALUES ('100dcda7-5b30-4bf0-ba04-9e473c5f3164', '100', '07b3c7ca-362b-47bf-85db-ac60c240f827', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `receive_log` VALUES ('ffd047a7-3575-4874-849a-5e61f1e97831', '109', '6afb9a9a-f61a-416d-bfbd-21ca6a276920', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `receive_log` VALUES ('d8c16fc4-3fbe-4cfc-b8f5-4d4e7e095530', '86', '8b9f6118-5166-43f1-bc41-3b849db9b867', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `receive_log` VALUES ('db4fab4f-1677-4da0-8db5-6bea2020548b', '85', 'd8783e59-c4cb-4ff7-95d8-036ca732cbeb', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `receive_log` VALUES ('990c7a0b-4023-4ddc-bfed-1300a3756922', '71', 'ba36aa93-bc91-429d-9b78-b45d0fa07e95', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `receive_log` VALUES ('9b56f04c-4014-4a97-b7e7-d745b4fe5526', '87', '9bcc9df8-c8a8-4460-8f93-2b2dbd54e808', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `receive_log` VALUES ('90a74bfb-ff34-4538-ae09-987afeecd832', '111', 'f59655d0-0bae-466a-8b27-e3f617c3985c', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `receive_log` VALUES ('3c4b6475-7a75-4b22-89a4-a6fd2c486db3', '82', '1b3f9e9c-feb9-4142-8ec1-3c2fd218419f', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `receive_log` VALUES ('8e727b08-ab49-409b-b971-2fed9c886aab', '135', '51c3cea0-91e6-4dbd-ba70-4a37d17fd57f', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `receive_log` VALUES ('76861cd8-3640-477c-afab-31d48acf3134', '52', '894c513d-5342-4c6f-b25e-d941638c799f', '2019-01-29 17:28:21', '2019-01-29 17:28:21');
INSERT INTO `receive_log` VALUES ('c206238b-c340-42e5-a39c-05fa8c7fd0b8', '57', '9e98afe1-d951-4bc5-9521-d6e0950641ed', '2019-01-29 17:28:22', '2019-01-29 17:28:22');
INSERT INTO `receive_log` VALUES ('62906c88-52f6-4f8a-b029-88187a909db2', '142', '6bbd8cc7-37ad-4b8b-818a-0acfbd666b1d', '2019-01-29 17:28:23', '2019-01-29 17:28:23');
INSERT INTO `receive_log` VALUES ('14f90a11-aed4-415c-a3aa-142fe7f5a070', '106', 'dd50fa81-ba77-419f-bc02-9028fea3d65e', '2019-01-29 17:28:23', '2019-01-29 17:28:23');
INSERT INTO `receive_log` VALUES ('5132d708-7cec-4061-b019-ccefa61a4fd1', '137', 'c91e4595-167c-4286-90a7-de64eb92a665', '2019-01-29 17:28:23', '2019-01-29 17:28:23');
INSERT INTO `receive_log` VALUES ('a3c931fd-879d-4610-9379-e9765f924f38', '134', '298c9212-567a-47bf-812c-173caf823f05', '2019-01-29 17:28:23', '2019-01-29 17:28:23');
INSERT INTO `receive_log` VALUES ('affbd6c9-6bcc-4229-8408-84499f5cc482', '129', '57ba1eb9-6e48-45ac-9e3e-71d76dbffd8f', '2019-01-29 17:28:23', '2019-01-29 17:28:23');
INSERT INTO `receive_log` VALUES ('9f633914-ea7a-46e4-8136-7e6b42ec3ace', '130', '62c2437c-7498-476f-8e24-9f8fab471b1b', '2019-01-29 17:28:23', '2019-01-29 17:28:23');
INSERT INTO `receive_log` VALUES ('a556225a-3351-463c-9a17-d85a6c40680f', '125', 'a3206741-eed4-4904-9e9f-fe30b3b84daf', '2019-01-29 17:28:23', '2019-01-29 17:28:23');
INSERT INTO `receive_log` VALUES ('3d02d4a5-8d6d-46e5-898e-89db4ad1f28d', '118', 'dd20c53c-d79e-46fe-8f7e-93f8b7b99b11', '2019-01-29 17:28:23', '2019-01-29 17:28:23');
INSERT INTO `receive_log` VALUES ('ca2a0b90-6fdd-4220-8474-fca80f70ae50', '119', '71035bbd-c042-4009-86cd-93cb48953b03', '2019-01-29 17:28:23', '2019-01-29 17:28:23');
INSERT INTO `receive_log` VALUES ('f9e6dd13-2f90-4517-ab78-1085340566c7', '117', '56cdcfb8-1cc1-44af-b760-715f8670022d', '2019-01-29 17:28:23', '2019-01-29 17:28:23');
INSERT INTO `receive_log` VALUES ('b3dd4167-5e44-436d-b160-20a410e0babb', '115', '428d84a8-2128-487e-97c1-f77565b02ffb', '2019-01-29 17:28:23', '2019-01-29 17:28:23');
INSERT INTO `receive_log` VALUES ('c26fec73-3880-4f67-b988-0e4dbc75061f', '113', '815ebe07-0eb3-4f82-8139-f3dfeef2b35b', '2019-01-29 17:28:23', '2019-01-29 17:28:23');
INSERT INTO `receive_log` VALUES ('cda6c14d-6a3e-4a79-b045-cda343668c59', '24', 'f9f08f82-8c59-4e47-96ea-19d63c781691', '2019-01-29 17:28:23', '2019-01-29 17:28:23');
INSERT INTO `receive_log` VALUES ('b5ba5366-cc2b-474c-878d-ac5ad717ac8c', '149', 'c5047289-c987-46bf-87cb-bc9f7ed7ad5c', '2019-01-29 17:28:23', '2019-01-29 17:28:23');
INSERT INTO `receive_log` VALUES ('733f8969-aba8-495f-a7d1-0d7317a8ef62', '103', '08ff48e1-a457-43aa-abcf-d0881b776356', '2019-01-29 17:28:23', '2019-01-29 17:28:23');
INSERT INTO `receive_log` VALUES ('8ae126a4-8680-4539-85c5-551e8ed6264b', '99', '39e00cbb-0b43-4b95-9f80-2d460423d35e', '2019-01-29 17:28:23', '2019-01-29 17:28:23');
INSERT INTO `receive_log` VALUES ('67640b67-a773-4a4a-90f6-bca89db8c6d9', '151', 'd64d7f47-985a-4568-b22e-313d1f52554d', '2019-01-29 17:28:24', '2019-01-29 17:28:24');
INSERT INTO `receive_log` VALUES ('f24638fc-f1eb-42f2-a90b-8c24cb6fe4db', '95', '39ea8868-0786-4306-aa3b-9fb30995b58b', '2019-01-29 17:28:24', '2019-01-29 17:28:24');
INSERT INTO `receive_log` VALUES ('99e7790e-42cc-41bd-9685-06b22fc446ef', '92', '20d22bca-011c-4e18-a3fa-85d67b1d0ace', '2019-01-29 17:28:24', '2019-01-29 17:28:24');
INSERT INTO `receive_log` VALUES ('b4012f12-4552-44cf-9517-03d1f0fe5491', '88', 'd126b731-de0c-447d-abe7-e332425af664', '2019-01-29 17:28:24', '2019-01-29 17:28:24');
INSERT INTO `receive_log` VALUES ('41e03083-af77-48a8-85cf-405eb3c147b6', '90', '7ce55238-eb32-47f5-8626-fc3c94c7eba1', '2019-01-29 17:28:24', '2019-01-29 17:28:24');
INSERT INTO `receive_log` VALUES ('a76f8b5c-a0c7-41c9-beb9-ea4725cfbcc9', '153', 'e2e3f910-a04d-4151-91c7-423fce580879', '2019-01-29 17:28:24', '2019-01-29 17:28:24');
INSERT INTO `receive_log` VALUES ('a7cf63f4-8df5-4b63-89d1-4385863db476', '131', 'd09ec465-ffaa-4431-bd12-6f4af6da91de', '2019-01-29 17:28:24', '2019-01-29 17:28:24');
INSERT INTO `receive_log` VALUES ('13f25f39-3693-4ce6-ba42-b5b904e50ca0', '81', '10c38f73-e593-4a6b-a2ca-3c7b1705bc3e', '2019-01-29 17:28:24', '2019-01-29 17:28:24');
INSERT INTO `receive_log` VALUES ('2adf98c9-59a6-4e82-9217-afd3059e5342', '141', '0f555dc5-8363-47f7-9733-9d08084cbcee', '2019-01-29 17:28:24', '2019-01-29 17:28:24');
INSERT INTO `receive_log` VALUES ('2c66c618-76b6-47af-a9ee-ef4784272c08', '143', '0683c82b-e58e-4ae9-ade0-b4e3c1a1c899', '2019-01-29 17:28:24', '2019-01-29 17:28:24');
INSERT INTO `receive_log` VALUES ('7ee6e724-7e7f-4e22-8e2c-0e4bcaac6bcc', '93', '094efafc-7a7d-4f22-bb4d-c1452fd916fd', '2019-01-29 17:28:24', '2019-01-29 17:28:24');
INSERT INTO `receive_log` VALUES ('f5e40f6d-ad0a-47d9-a936-7938d5e6c542', '101', 'b93db02e-fb90-4cbd-b32c-9dcba5e9ff15', '2019-01-29 17:28:24', '2019-01-29 17:28:24');
INSERT INTO `receive_log` VALUES ('7d34ce51-e0c8-4979-aa8a-60b00089fd4f', '120', 'eb3785ba-7bd8-444c-9548-dd8a2520bac6', '2019-01-29 17:28:24', '2019-01-29 17:28:24');
INSERT INTO `receive_log` VALUES ('17861b6d-bad7-42df-bef6-0533eade22e7', '126', '1b515f8b-bd94-4c9a-bd22-ebc0fd7bcca8', '2019-01-29 17:28:24', '2019-01-29 17:28:24');
INSERT INTO `receive_log` VALUES ('a19fe4f7-3be0-4a54-a360-40705b2506a9', '124', '4766b9ff-002e-4d2b-b09d-8fe48fe88ee0', '2019-01-29 17:28:24', '2019-01-29 17:28:24');
INSERT INTO `receive_log` VALUES ('5b072cd1-16f6-46a0-9ba1-92d97eb86010', '127', '8b2e83d9-6298-4dc0-beed-c121987c6eaf', '2019-01-29 17:28:23', '2019-01-29 17:28:23');
INSERT INTO `receive_log` VALUES ('7c88f35a-0712-4b1e-9975-53167d262212', '122', '26beac43-4225-4663-a8d4-bb33baae4782', '2019-01-29 17:28:24', '2019-01-29 17:28:24');
INSERT INTO `receive_log` VALUES ('1fa38e83-624f-40c7-96c5-fd4710c89600', '139', 'a1e87081-a69d-46c5-883e-50a158053604', '2019-01-29 17:28:24', '2019-01-29 17:28:24');
INSERT INTO `receive_log` VALUES ('eb0c64e2-d6a9-4c9e-b7c1-f7b9877f1534', '159', '0f71e248-eee5-4d4f-8d86-36493941891d', '2019-01-29 17:28:24', '2019-01-29 17:28:24');
INSERT INTO `receive_log` VALUES ('e79c9fd9-432d-4d6f-ae46-b235905e2d12', '140', 'd985b88b-f367-4ba7-9745-877e4f2e206d', '2019-01-29 17:28:24', '2019-01-29 17:28:24');
INSERT INTO `receive_log` VALUES ('43b1359b-b0ef-4fb1-9b29-e07f4810fe8d', '164', '5643c279-39fc-4320-904c-41e7cf469a62', '2019-01-29 17:28:24', '2019-01-29 17:28:24');
INSERT INTO `receive_log` VALUES ('55b1c81c-b657-4dd5-af77-9c9f72a3dbfd', '121', '352e97b9-76e1-43f3-91a7-1602cfe76d4f', '2019-01-29 17:28:25', '2019-01-29 17:28:25');
INSERT INTO `receive_log` VALUES ('f05cef88-775a-4349-82cf-daaefbc5f956', '138', '51a5bfc5-2a36-4c61-b937-7bafe61719be', '2019-01-29 17:28:24', '2019-01-29 17:28:24');
INSERT INTO `receive_log` VALUES ('41513c63-8f73-4b52-a578-f7eac5b9aed9', '78', '23153436-2ff2-47b7-9550-2609afc08fe1', '2019-01-29 17:28:24', '2019-01-29 17:28:24');
INSERT INTO `receive_log` VALUES ('b40274e6-20f9-4c17-887a-b519b8765ba8', '150', '59feffa1-71a2-4e4a-bcae-991027419044', '2019-01-29 17:28:25', '2019-01-29 17:28:25');
INSERT INTO `receive_log` VALUES ('c263e60a-f084-4bc1-8802-5ca0ee1c75ca', '116', 'f5337de8-74b2-45bc-a07f-1a4846b0704c', '2019-01-29 17:28:25', '2019-01-29 17:28:25');
INSERT INTO `receive_log` VALUES ('1de18e54-c745-4baf-9f71-1d5d5e9f8be8', '97', '81371e1e-4cad-4f1a-a842-4f301471ea7a', '2019-01-29 17:28:25', '2019-01-29 17:28:25');
INSERT INTO `receive_log` VALUES ('407ad7d0-11c4-4635-80a1-e5f11ca7962e', '166', '69e3c525-ae77-486f-b232-7c13aac2f27c', '2019-01-29 17:28:25', '2019-01-29 17:28:25');
INSERT INTO `receive_log` VALUES ('140e94d0-c567-47f8-82da-ad7cbae8f6d4', '158', 'd55a35c0-d8b6-48c5-9e69-088e0e1ab03b', '2019-01-29 17:28:25', '2019-01-29 17:28:25');
INSERT INTO `receive_log` VALUES ('a1afeaa0-5a28-4d89-b36b-ae5c7f2fe3f9', '167', 'd74d5d8d-482b-46f4-8405-f15ddc6c4322', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `receive_log` VALUES ('0d41c5fd-cb80-46ad-a29b-ce5785f6ffa5', '180', '9b403964-026b-431f-8d70-9dc0564395c8', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `receive_log` VALUES ('ba568cd7-6619-4675-9e9b-32152c6e8729', '194', 'c05004e5-b845-4d55-95e7-9e95c6d3a3a8', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `receive_log` VALUES ('29b6ddde-07b1-46d4-9274-3199e2954754', '185', '713d2497-5192-4d44-88c0-142cec094276', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `receive_log` VALUES ('286205a8-1d1f-4228-b8ff-c80e35fd3693', '182', '91043840-8a32-4349-9b9b-779147bab908', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `receive_log` VALUES ('c44c6a21-a2d2-47c7-9210-dc7439ac8947', '176', '3c7b3db6-9d63-4878-b9ec-058a38a88bef', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `receive_log` VALUES ('941e31c0-f58c-401e-9676-4e806b07b432', '174', 'bcb0c565-421e-4756-a05e-991a86c46adb', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `receive_log` VALUES ('3c470335-0236-4e92-aecd-9c4f82f38f11', '197', '7865a4a2-c36f-429c-9e14-75a7a3d73676', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `receive_log` VALUES ('554e4377-b9bf-4288-88b9-3cd5ee3b3642', '198', 'dc9dd268-4f80-44fc-8d12-739abf50add3', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `receive_log` VALUES ('8605395f-49f1-456c-a4db-9d7e971f21e9', '186', '9120b09e-532a-41e9-bcd8-88dc04479f57', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `receive_log` VALUES ('4709f23b-28c3-44bc-a818-043fbad95d1f', '199', '30128cce-ba91-4102-86df-5dfe39e7d7f0', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `receive_log` VALUES ('e9596cfd-e23d-4ca9-986a-79c039a7c98c', '187', 'de02903a-deb7-4f8d-8ff6-c175ee958981', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `receive_log` VALUES ('276b5fb6-7489-4f1a-9f6d-b1e9065908ea', '177', '9d024611-5282-4fa4-bc45-f1f762f6071c', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `receive_log` VALUES ('7f33a7d0-6679-47be-a7d4-4b651fd91a08', '189', 'e4bb95fb-32a9-43f5-b1b1-05c3bc30901a', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `receive_log` VALUES ('ec4edf97-6356-46aa-9612-14b21821056c', '178', 'dcbaf0e3-e317-4a37-8628-40b12829dd2d', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `receive_log` VALUES ('c20b4e8e-e945-4c59-94b6-5553f31bd305', '190', 'cf96fbf8-357f-46bb-a08d-9d2e82b84fb8', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `receive_log` VALUES ('8fe0b1aa-b622-4519-9bd1-56286087a6b5', '175', '06e7f6d3-6978-4dab-b64b-a6dfe7aabd0b', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `receive_log` VALUES ('0a9b95ea-f597-4e9a-b478-c0dd2a60b58c', '172', 'cfe8219c-0e2e-41f3-a320-522ab4df51b8', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `receive_log` VALUES ('8fa43545-a976-470c-b89d-632f6a7dd256', '94', '7f86a92e-2fbd-4ef8-93bf-9ea5f567b002', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `receive_log` VALUES ('25add943-f20f-458f-a2ef-44700f24fbe0', '179', '8ed9dd60-c801-4829-b70e-02056099cc6e', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `receive_log` VALUES ('da4cf29d-0259-4aec-b481-518d89fa3d9d', '148', '2debfffd-8462-4762-8693-aeeb82baad42', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `receive_log` VALUES ('4930be48-14dd-47e6-8371-69e4ecaa155d', '191', '6f2411e4-74e9-4c2d-98ad-c7e0c2401a42', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `receive_log` VALUES ('879f2fcb-0aaa-431d-b97d-0b9cc78adb58', '98', '916244df-0beb-466d-8eeb-1307d915fb9c', '2019-01-29 17:28:25', '2019-01-29 17:28:25');
INSERT INTO `receive_log` VALUES ('02b36ebb-04d7-4a4e-9fed-e57fc61d8842', '192', '8315f825-1f93-4acc-90f1-1785983aa258', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `receive_log` VALUES ('a1f258f5-4329-416a-bd4a-b5d565bd7190', '147', '65d45031-0139-4e6d-b640-23f90cacaf8e', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `receive_log` VALUES ('e1220168-1d3d-4d62-883c-a131d57b6492', '165', '175cbef6-9b15-474a-84a4-362240d1477b', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `receive_log` VALUES ('22e4a3ed-fa4f-4a15-ab45-88600c7202bc', '160', '0c0e4ca2-a2a5-4bb8-bd8c-052e1834bdc1', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `receive_log` VALUES ('5735d308-cb61-4f18-94b1-10f457336e43', '161', '30b88839-99fd-4c98-8c38-c29f807b06d2', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `receive_log` VALUES ('fd74c076-3354-4e0f-8473-cc77481cd245', '91', '24f63450-d4c7-41ac-88b7-bcb428f41911', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `receive_log` VALUES ('3db8eafb-8f86-4dcd-82d4-006d9e56707a', '96', '7efaab00-a820-4035-904c-d6108a109dc0', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `receive_log` VALUES ('a571df71-0943-46cd-a6fc-579f15b96284', '163', '5ac93354-f5cb-468f-b751-1aec2f8904c9', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `receive_log` VALUES ('ea9d7817-facf-46f8-9ff7-8d918133f888', '162', 'a8ac86ad-8d09-43a0-a146-5b834db51b1f', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `receive_log` VALUES ('4cf59184-3fd2-4f00-ac04-f43f690d7522', '196', '01fc4784-4173-4180-b95b-85d69a909ca3', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `receive_log` VALUES ('aba80d17-f896-41ad-aa2f-05c3031741e2', '171', '88077e67-e3c1-4fb9-8925-0d3aa4e87fcc', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `receive_log` VALUES ('d5192b50-31a4-40db-b2f2-6a86eaed6747', '193', 'f84746c0-d7a7-4375-b591-d14c3a312b8a', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `receive_log` VALUES ('b496d221-2d9f-47c1-aba6-67118c3ceff7', '170', 'b541283d-2160-4ec9-ac6f-cfcc6b4cd8b5', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `receive_log` VALUES ('e30c1e13-9bba-41fb-a752-14717cb77cca', '157', 'becb1a16-937c-48c2-8705-7d19bd8b2cb4', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `receive_log` VALUES ('6250dc73-7ea7-4ba9-b0cf-68dc9a3b174c', '195', '0019d639-9df5-4db9-b0a5-30521d6fa5ab', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `receive_log` VALUES ('822067c5-3810-4d5f-a40c-329cdf69a5c8', '146', 'da331c21-5fc6-40f2-af34-19d6f2ee5046', '2019-01-29 17:28:27', '2019-01-29 17:28:27');
INSERT INTO `receive_log` VALUES ('fe815ca1-da36-47de-a109-4349af216505', '184', '31bf0b9b-8073-4c04-a176-67868b096ca7', '2019-01-29 17:28:27', '2019-01-29 17:28:27');
INSERT INTO `receive_log` VALUES ('a3789a81-19d0-466f-8055-0f69688a82a0', '154', 'fe1e36a8-a80c-45c6-bca8-03ed5841fd2e', '2019-01-29 17:28:27', '2019-01-29 17:28:27');
INSERT INTO `receive_log` VALUES ('8660ef27-df45-46ed-9276-cb464f9e0191', '144', 'dd285ff2-7d93-4eb0-829a-dfbb1b56ea24', '2019-01-29 17:28:27', '2019-01-29 17:28:27');
INSERT INTO `receive_log` VALUES ('57b4240c-9f55-4927-99ec-c690869ec6b1', '168', '1d128ad4-faf6-41ef-9d96-e2b01830b8e4', '2019-01-29 17:28:27', '2019-01-29 17:28:27');
INSERT INTO `receive_log` VALUES ('8708c9f2-cf21-4b18-9a18-505fc2defa78', '173', '1cd8bada-b80d-4c6e-be4f-d2ec5ac2dd72', '2019-01-29 17:28:27', '2019-01-29 17:28:27');
INSERT INTO `receive_log` VALUES ('0c119c62-4c0e-44a1-842b-e019d44d7d02', '156', '2dd12e53-68ff-49a4-9a28-56ddfc0c4b61', '2019-01-29 17:28:27', '2019-01-29 17:28:27');
INSERT INTO `receive_log` VALUES ('0e6f60d7-288a-4473-b241-8bf5035e4e9e', '169', '14dc89bd-a22e-4fe4-94d5-d4187001bcbe', '2019-01-29 17:28:26', '2019-01-29 17:28:26');
INSERT INTO `receive_log` VALUES ('a2b41c9e-9ebd-4dbc-8c76-3ee9eb96433c', '13', '4b6ae14a-d6ea-42a0-839c-8324f6fdbe98', '2019-01-29 18:31:39', '2019-01-29 18:31:39');
INSERT INTO `receive_log` VALUES ('e21b9aa2-6440-4982-a239-3afbfbecbe9b', '0', '5ed8a900-6580-4373-b4c9-e505dd546e0a', '2019-01-29 18:31:39', '2019-01-29 18:31:39');
INSERT INTO `receive_log` VALUES ('398c19fb-dc16-4e74-bc36-ec0f2d97b1de', '16', '52e5c530-a4f7-48ce-aeae-42db759f9fd0', '2019-01-29 18:31:39', '2019-01-29 18:31:39');
INSERT INTO `receive_log` VALUES ('43034d89-f1d9-46c0-9345-f8acb4500267', '18', '6084a48f-8e36-4b31-82f9-0203884e3a03', '2019-01-29 18:31:39', '2019-01-29 18:31:39');
INSERT INTO `receive_log` VALUES ('39b8f307-b71a-49b2-89ee-de472f4b3911', '4', 'e35cb021-4c57-41fe-83ec-48de3ce6b35d', '2019-01-29 18:31:39', '2019-01-29 18:31:39');
INSERT INTO `receive_log` VALUES ('c744d8a3-b766-4356-a345-49a2b5277284', '20', '5e37b77d-36b4-4229-bf16-1a814bb3346a', '2019-01-29 18:31:39', '2019-01-29 18:31:39');
INSERT INTO `receive_log` VALUES ('588b7248-d69d-4b30-9e01-30a34d23a030', '1', '6a472348-533f-49ce-8f5a-4a02b45a9c0d', '2019-01-29 18:31:39', '2019-01-29 18:31:39');
INSERT INTO `receive_log` VALUES ('2ddddf0c-a010-427e-8450-04af9e97e88e', '2', '8517db6c-a904-4722-80e8-9f0cfc80b53b', '2019-01-29 18:31:39', '2019-01-29 18:31:39');
INSERT INTO `receive_log` VALUES ('b17a18cf-f3f3-4498-9dc1-ca1419818236', '17', '8d482e8b-5b96-4cac-85de-305cc07645c5', '2019-01-29 18:31:39', '2019-01-29 18:31:39');
INSERT INTO `receive_log` VALUES ('c48e08ef-9fd4-49c5-a7f4-7fac43e88a15', '21', 'bbc59913-4b53-4c89-8f37-4de4cac00de5', '2019-01-29 18:31:39', '2019-01-29 18:31:39');
INSERT INTO `receive_log` VALUES ('5e1268ba-cb59-4932-853f-3b2916fa1866', '15', 'dd160477-f752-49e2-b2dc-e05958faa5cd', '2019-01-29 18:31:39', '2019-01-29 18:31:39');
INSERT INTO `receive_log` VALUES ('916016a3-353b-4f3f-bcea-7e5234309644', '12', '4fe5e8af-a119-4a5f-9bac-2f36dbe9e114', '2019-01-29 18:31:39', '2019-01-29 18:31:39');
INSERT INTO `receive_log` VALUES ('c56a1caf-56b6-48a2-82d2-3c5169cf913e', '27', '2de9d393-b45a-48d7-a7db-bc6a5a49d297', '2019-01-29 18:31:39', '2019-01-29 18:31:39');
INSERT INTO `receive_log` VALUES ('4b3c5147-5b6c-4b0e-8c41-20ee3ca81bb0', '5', 'ba808c87-e947-4e64-bd7e-8453085273ea', '2019-01-29 18:31:39', '2019-01-29 18:31:39');
INSERT INTO `receive_log` VALUES ('a462c6d9-904c-4271-87dc-815cf8a2b6df', '6', '2e2d9555-a3e1-4419-a9c7-9ac515ed95e3', '2019-01-29 18:31:39', '2019-01-29 18:31:39');
INSERT INTO `receive_log` VALUES ('e73da54d-e346-470f-b075-31e9ff892a74', '25', '757aa88a-15eb-4775-9d3f-18f6077a2eb2', '2019-01-29 18:31:39', '2019-01-29 18:31:39');
INSERT INTO `receive_log` VALUES ('0572a8e8-ff4b-45e9-8bd2-612a9e0e7abf', '28', '5f2563c6-e846-44d3-9e1b-a0cc810cd216', '2019-01-29 18:31:39', '2019-01-29 18:31:39');
INSERT INTO `receive_log` VALUES ('99239813-b5a9-4d80-a5f1-cadfb2f5fb0d', '33', '94745661-526a-4527-bf87-23fe3c5af2e5', '2019-01-29 18:31:39', '2019-01-29 18:31:39');
INSERT INTO `receive_log` VALUES ('13d890a7-c63d-475a-8df9-8c03cddaeac4', '30', 'a7cf801b-e359-4236-9965-7ca0630071d8', '2019-01-29 18:31:39', '2019-01-29 18:31:39');
INSERT INTO `receive_log` VALUES ('7d8ca445-8123-4047-96c3-9448292ca434', '35', '3394a617-5471-4c40-a248-ea85ab1612ce', '2019-01-29 18:31:40', '2019-01-29 18:31:40');
INSERT INTO `receive_log` VALUES ('72afd24f-a50d-4cc9-8742-e7bde844c298', '37', '2ce1b38e-0026-401b-9459-c671f3af7a9f', '2019-01-29 18:31:40', '2019-01-29 18:31:40');
INSERT INTO `receive_log` VALUES ('dba1c012-06c9-4816-a338-6ae23f5fcdc6', '38', 'b432399d-6f8e-4f72-8bc7-a5b5b536ce37', '2019-01-29 18:31:40', '2019-01-29 18:31:40');
INSERT INTO `receive_log` VALUES ('5b253fed-c721-4200-89ed-2d2b409c3392', '36', '418b9995-0f56-47ae-bb15-fdf5762aefa2', '2019-01-29 18:31:40', '2019-01-29 18:31:40');
INSERT INTO `receive_log` VALUES ('1ca3e091-e834-413e-8cad-16216219be73', '11', '42936ed6-ff12-4034-9dce-783e2526ab09', '2019-01-29 18:31:40', '2019-01-29 18:31:40');
INSERT INTO `receive_log` VALUES ('f7d7ac31-77ec-436f-8844-d85c68ed7ff0', '14', '1c406b3c-7179-4522-8e1c-7844a7536078', '2019-01-29 18:31:40', '2019-01-29 18:31:40');
INSERT INTO `receive_log` VALUES ('387bae1b-1a65-4920-885d-e1dd69065dce', '42', 'b173a6cf-3980-4cd1-b58e-0581d4be493f', '2019-01-29 18:31:40', '2019-01-29 18:31:40');
INSERT INTO `receive_log` VALUES ('93695102-cb66-49d8-9c34-29f4eeb6d328', '34', '64ccf83d-cb32-4356-872b-ccdb8294491d', '2019-01-29 18:31:40', '2019-01-29 18:31:40');
INSERT INTO `receive_log` VALUES ('898b5224-da3c-4641-989b-57aee66b2f55', '40', '2d3f1e62-55df-408c-aa78-7ae8dabe05e3', '2019-01-29 18:31:40', '2019-01-29 18:31:40');
INSERT INTO `receive_log` VALUES ('02cf78a6-d2f1-40b6-b2a2-ee2905e057f5', '44', '5448dcd7-b8e9-40ab-8c45-a2026b0fb725', '2019-01-29 18:31:41', '2019-01-29 18:31:41');
INSERT INTO `receive_log` VALUES ('9a0b3726-5d9c-4bb1-8158-62f763352de4', '45', '96a16c17-e33f-468f-b309-7069b1368b21', '2019-01-29 18:31:41', '2019-01-29 18:31:41');
INSERT INTO `receive_log` VALUES ('79e5f07c-f198-427c-9536-b637041e806c', '54', '1c2d2aab-81ca-48a1-b935-1f428ae203a1', '2019-01-29 18:31:41', '2019-01-29 18:31:41');
INSERT INTO `receive_log` VALUES ('bc8a768e-0803-43a0-a24a-e69e4511aeeb', '50', 'fd0b196f-73b3-4f3c-9592-7dfa3f75b43c', '2019-01-29 18:31:41', '2019-01-29 18:31:41');
INSERT INTO `receive_log` VALUES ('a15e4101-c2ba-4d6d-bce2-a503cd309ba5', '52', '2f534e74-7260-4dfb-9c4e-5941b426b0d5', '2019-01-29 18:31:41', '2019-01-29 18:31:41');
INSERT INTO `receive_log` VALUES ('f00b6c1c-951d-4da3-986f-b83773b5b5aa', '57', '412b0175-f895-4902-a200-701dea17e056', '2019-01-29 18:31:41', '2019-01-29 18:31:41');
INSERT INTO `receive_log` VALUES ('711d72b2-b50b-4c5c-8d21-7b9ab2a5008b', '46', '506b4168-1c59-45dd-b1c6-7703c22a05a8', '2019-01-29 18:31:41', '2019-01-29 18:31:41');
INSERT INTO `receive_log` VALUES ('736f0b3f-580c-42fd-a4bf-4e02d45da0ed', '55', '9fbe6da3-2708-4998-8082-00840199aaa1', '2019-01-29 18:31:41', '2019-01-29 18:31:41');
INSERT INTO `receive_log` VALUES ('106b4621-360b-41cf-a6ba-d167af5354de', '47', '53d8dbd7-f7a8-4445-a6f1-6507bed031ce', '2019-01-29 18:31:41', '2019-01-29 18:31:41');
INSERT INTO `receive_log` VALUES ('ef8d8240-644c-4c33-ae94-ef4696bb6495', '62', 'dd053d8f-a90c-4ee0-9ff4-51b106b34557', '2019-01-29 18:31:42', '2019-01-29 18:31:42');
INSERT INTO `receive_log` VALUES ('afdd586d-1630-4cdf-9cf9-acaec4f1bfe8', '58', '9f7ecf24-4503-43a0-89cf-a26ab62d122f', '2019-01-29 18:31:42', '2019-01-29 18:31:42');
INSERT INTO `receive_log` VALUES ('4aac6532-363c-4cdf-b529-d4eb2a526ee8', '61', 'd1ea50ad-5e7a-4df6-bde5-8d7553427623', '2019-01-29 18:31:42', '2019-01-29 18:31:42');
INSERT INTO `receive_log` VALUES ('bb6873a9-ae6e-4745-b48d-c77bb2b626d3', '65', '7357a8f1-f10b-412f-97bb-a0c08ff799f8', '2019-01-29 18:31:42', '2019-01-29 18:31:42');
INSERT INTO `receive_log` VALUES ('2c2031db-2139-440f-b623-38e4a05a6978', '63', 'fef12ff9-06e0-434b-8662-d0cb54996ddd', '2019-01-29 18:31:42', '2019-01-29 18:31:42');
INSERT INTO `receive_log` VALUES ('9f9aa745-aacf-4dc2-8604-8489acdbab90', '66', '3b37cb35-dc6d-488d-a9e9-c3a7c59002f3', '2019-01-29 18:31:42', '2019-01-29 18:31:42');
INSERT INTO `receive_log` VALUES ('81f832b3-390b-4d80-ba6f-9ad5729f2a15', '59', 'e75ab9fc-ba39-461e-b00a-6170f5f8963d', '2019-01-29 18:31:42', '2019-01-29 18:31:42');
INSERT INTO `receive_log` VALUES ('0f0e3d3f-9ce9-459a-8c17-f48919d01751', '64', '758af7c5-bad7-4fa5-b597-2f85452025a2', '2019-01-29 18:31:42', '2019-01-29 18:31:42');
INSERT INTO `receive_log` VALUES ('36ec4097-253a-4509-a696-b61cec05d7e2', '73', '29d3abf2-95ac-4b81-abed-da0cc80fb641', '2019-01-29 18:31:42', '2019-01-29 18:31:42');
INSERT INTO `receive_log` VALUES ('5f471cb7-d0aa-42d0-82eb-e969f430652a', '71', 'e99b403e-b8e7-4c61-b893-867e1dd931ae', '2019-01-29 18:31:42', '2019-01-29 18:31:42');
INSERT INTO `receive_log` VALUES ('1ed95e91-92bf-4c8a-80fb-ab34a04d1b89', '72', '9ffdf2f7-e998-4dcb-98dd-10b9b4c4bf83', '2019-01-29 18:31:42', '2019-01-29 18:31:42');
INSERT INTO `receive_log` VALUES ('8165c711-5975-4846-b821-029be38d5977', '69', '85a946d6-cf85-46ea-903b-45ba8777c904', '2019-01-29 18:31:42', '2019-01-29 18:31:42');
INSERT INTO `receive_log` VALUES ('ece086f9-6542-4e01-9973-e27457d104cd', '75', '7d904fbb-631d-426f-acd4-0030028da213', '2019-01-29 18:31:42', '2019-01-29 18:31:42');
INSERT INTO `receive_log` VALUES ('fb6e069f-bb52-4948-bdbc-0cd763e94cac', '76', '6fe4272c-8c1e-4a55-b403-7c1613a040bd', '2019-01-29 18:31:42', '2019-01-29 18:31:42');
INSERT INTO `receive_log` VALUES ('4cc0ddc3-9693-420d-bd1b-ddd67acebfce', '70', 'b0147ee1-7062-4c51-bf59-b47cc4da1780', '2019-01-29 18:31:42', '2019-01-29 18:31:42');
INSERT INTO `receive_log` VALUES ('b05d7f8c-7c20-4288-82bf-67091ac334ca', '74', 'd591088e-cea1-4976-bc9d-c75bb507c8d4', '2019-01-29 18:31:42', '2019-01-29 18:31:42');
INSERT INTO `receive_log` VALUES ('97663c95-46d0-4119-a972-9c757d3fefa6', '51', 'c33f34b8-a738-401e-8ea1-982bee34afb6', '2019-01-29 18:31:42', '2019-01-29 18:31:42');
INSERT INTO `receive_log` VALUES ('c521ad15-1b65-4f08-a66d-264631de279e', '53', 'a51348ee-c15c-4325-b87d-674622c40fd7', '2019-01-29 18:31:43', '2019-01-29 18:31:43');
INSERT INTO `receive_log` VALUES ('8a3366b9-643e-4e09-958a-ed27997f8d7d', '81', '57bea2c7-10e7-44ec-afa2-d15e233257b2', '2019-01-29 18:31:43', '2019-01-29 18:31:43');
INSERT INTO `receive_log` VALUES ('de755327-7eda-4173-8d70-8e6d8006a917', '85', 'c2705a35-2bf8-4705-ad88-386e55b53f13', '2019-01-29 18:31:43', '2019-01-29 18:31:43');
INSERT INTO `receive_log` VALUES ('90622f21-7716-4f76-9d85-790ddb87b7a3', '82', '2cb2c5c1-f67a-4240-a514-dc15644d44db', '2019-01-29 18:31:43', '2019-01-29 18:31:43');
INSERT INTO `receive_log` VALUES ('32507d96-9bc7-46d8-93f3-d51da15af93a', '79', '91cbb482-ae44-4db1-83b8-93b40d104523', '2019-01-29 18:31:43', '2019-01-29 18:31:43');
INSERT INTO `receive_log` VALUES ('011b677a-a410-4db2-8cc0-2f3fcad04e80', '88', '103925ca-9218-48c1-82a4-2226d9409988', '2019-01-29 18:31:43', '2019-01-29 18:31:43');
INSERT INTO `receive_log` VALUES ('acdbd3eb-3800-476e-99dc-ce5964a083f9', '84', '1bd3e7f3-6160-4865-a1b9-328fe5d70b50', '2019-01-29 18:31:43', '2019-01-29 18:31:43');
INSERT INTO `receive_log` VALUES ('c151cf3c-f07f-44dd-a88b-a8ad62898e0e', '68', '2faf61c7-83a6-4a29-ba90-e5ead62df8d6', '2019-01-29 18:31:43', '2019-01-29 18:31:43');
INSERT INTO `receive_log` VALUES ('4e85a856-241d-41f8-a106-ca6b1fec5483', '86', 'e6ae9762-e7ec-428c-85ca-2a04ff4ae05f', '2019-01-29 18:31:43', '2019-01-29 18:31:43');
INSERT INTO `receive_log` VALUES ('779475b2-d3f7-4e10-b5ce-448575fe6396', '83', 'cfc6b8ef-b768-41b1-b38e-2f7feb284f40', '2019-01-29 18:31:43', '2019-01-29 18:31:43');
INSERT INTO `receive_log` VALUES ('39c37f68-038d-475d-aa4e-5c50003987f4', '87', '3926b8f6-31ec-4113-a808-0c0f2d800a21', '2019-01-29 18:31:43', '2019-01-29 18:31:43');
INSERT INTO `receive_log` VALUES ('2613dd68-6b81-4653-a88f-4e6deae59c77', '94', 'cd9180ed-f89a-4e28-8124-3664065416d8', '2019-01-29 18:31:43', '2019-01-29 18:31:43');
INSERT INTO `receive_log` VALUES ('85c34551-39c6-4fd1-ba6d-0ce5437ff981', '92', 'c9cf06c9-13af-4764-80e9-cd5e4a8875f7', '2019-01-29 18:31:44', '2019-01-29 18:31:44');
INSERT INTO `receive_log` VALUES ('a3ec48d3-f5ca-4793-9f46-35f21a0e9f08', '90', 'f260897e-5b53-4ccc-8657-1682ecf13b6d', '2019-01-29 18:31:44', '2019-01-29 18:31:44');
INSERT INTO `receive_log` VALUES ('6d8044ce-a4c9-48b3-900c-c93a94879ce3', '95', '20596706-3b13-4f90-8e01-c3375272759b', '2019-01-29 18:31:44', '2019-01-29 18:31:44');
INSERT INTO `receive_log` VALUES ('a7ec2344-8dbc-47b5-b4d0-2c34cee5467c', '73', '4098ad62-77d1-46a4-a085-5ae68c5f26bc', '2019-01-29 18:31:44', '2019-01-29 18:31:44');
INSERT INTO `receive_log` VALUES ('49e0df3d-18b9-4190-bee5-456806f0a105', '99', '4374df46-9bec-4bbc-a1f7-e70b9c2246d6', '2019-01-29 18:31:44', '2019-01-29 18:31:44');
INSERT INTO `receive_log` VALUES ('9a872af5-2a03-4341-9676-c2528b42e107', '96', '334ccef3-aff6-4934-bf10-e8660b227ec3', '2019-01-29 18:31:44', '2019-01-29 18:31:44');
INSERT INTO `receive_log` VALUES ('3b3128fe-5b48-4252-b63b-76bccb8c0029', '97', '855b52bd-2529-4ee9-90e2-69e58fc403d4', '2019-01-29 18:31:44', '2019-01-29 18:31:44');
INSERT INTO `receive_log` VALUES ('61c14411-f3aa-4680-8808-04e99d44a6fc', '98', '6c41e0ef-3e36-4b66-bdab-a7a0943843c8', '2019-01-29 18:31:44', '2019-01-29 18:31:44');
INSERT INTO `receive_log` VALUES ('c432a615-3f48-4ae0-9490-3df777e8b83f', '103', '71497ed4-cf05-4b0b-978c-cb122aef4cfd', '2019-01-29 18:31:44', '2019-01-29 18:31:44');
INSERT INTO `receive_log` VALUES ('16abde2d-86f7-422f-b1e6-d7898d6a975b', '91', 'cca2a849-e604-45d4-b844-9a9d8e2b3162', '2019-01-29 18:31:44', '2019-01-29 18:31:44');
INSERT INTO `receive_log` VALUES ('1035945e-4477-4b91-8fdd-8ceacacaf49b', '102', 'd1e79163-b287-438d-b55f-41069fec2660', '2019-01-29 18:31:44', '2019-01-29 18:31:44');
INSERT INTO `receive_log` VALUES ('d51695e3-41ed-4dbb-9f47-644926a59468', '105', 'f764750d-db90-444a-a878-938fa12365b3', '2019-01-29 18:31:44', '2019-01-29 18:31:44');
INSERT INTO `receive_log` VALUES ('1f1b57dd-ba8c-4188-81af-68c68fff7d3a', '89', '678f912a-2012-43f6-84c2-afc21ad5f7ec', '2019-01-29 18:31:44', '2019-01-29 18:31:44');
INSERT INTO `receive_log` VALUES ('33d9b891-8731-432e-b6e0-f959bd5f2306', '107', '1d3dd23d-c6dd-4a1f-9f8f-8c36e8a868fa', '2019-01-29 18:31:44', '2019-01-29 18:31:44');
INSERT INTO `receive_log` VALUES ('74438c6a-3721-4c1d-9ca8-06bc4bf10ffa', '104', '4ff0b10f-a089-49fa-8240-3411afe27412', '2019-01-29 18:31:44', '2019-01-29 18:31:44');
INSERT INTO `receive_log` VALUES ('4cacc0bf-1a75-4e76-a030-8667b4db5bac', '111', 'd40ccdcf-3d2c-42d3-8e12-511efb88da1c', '2019-01-29 18:31:44', '2019-01-29 18:31:44');
INSERT INTO `receive_log` VALUES ('4ddcdcc1-bf1d-498c-8c06-6fcc29595ac7', '109', '78de06e0-31b2-4249-a3b3-7f9a1a545bbd', '2019-01-29 18:31:44', '2019-01-29 18:31:44');
INSERT INTO `receive_log` VALUES ('0fb19c34-055f-4fbf-83b4-86e22b796578', '101', '3a0efc3f-4bfc-44d5-9a5c-f1ba625d2de7', '2019-01-29 18:31:44', '2019-01-29 18:31:44');
INSERT INTO `receive_log` VALUES ('3de6ffae-e591-4a8b-aa58-27266504a19c', '110', '75629a34-a285-414c-935f-7a9bb427202c', '2019-01-29 18:31:44', '2019-01-29 18:31:44');
INSERT INTO `receive_log` VALUES ('d4e80fed-b4cb-4046-9d3d-c1201d91fa78', '108', 'c04f1827-b3b8-403d-882f-7cc086dcdff4', '2019-01-29 18:31:44', '2019-01-29 18:31:44');
INSERT INTO `receive_log` VALUES ('0164fc45-e07b-4996-ba8f-342cc9a1e96d', '113', '57cf14cb-bdf0-4ca1-ae95-68705748ab83', '2019-01-29 18:31:45', '2019-01-29 18:31:45');
INSERT INTO `receive_log` VALUES ('8aa888df-ddf7-4ac5-9d62-30e0cedec5b4', '117', '6dbfa782-f4e4-43e6-888a-32bc733e7154', '2019-01-29 18:31:45', '2019-01-29 18:31:45');
INSERT INTO `receive_log` VALUES ('1f370d4c-c295-4df2-a40a-fdfca67507b7', '114', '070901aa-73ab-4afa-ba1b-7900a39181bf', '2019-01-29 18:31:45', '2019-01-29 18:31:45');
INSERT INTO `receive_log` VALUES ('f0c65964-2b59-4504-8071-3df940d09d6d', '119', '41b8720d-ae1f-4a66-aa98-035d169b7254', '2019-01-29 18:31:45', '2019-01-29 18:31:45');
INSERT INTO `receive_log` VALUES ('d3071b55-8b19-4c21-844b-784246074aec', '112', '0e1e0f74-570b-4219-ad38-6e5baeb1d20c', '2019-01-29 18:31:45', '2019-01-29 18:31:45');
INSERT INTO `receive_log` VALUES ('eed9479f-e2b3-41c7-9fa5-9864ce415710', '118', 'e3ff97ee-b55b-4f9b-a38b-0df67e5aebd2', '2019-01-29 18:31:45', '2019-01-29 18:31:45');
INSERT INTO `receive_log` VALUES ('4e6666e9-33ee-4af2-862e-1f04c8b6919e', '115', '40b69cc7-cc28-4f64-97b9-3f49db06722a', '2019-01-29 18:31:45', '2019-01-29 18:31:45');
INSERT INTO `receive_log` VALUES ('dcad5788-5c65-4726-b3d4-e5b1fbe7cbb3', '120', 'ecc4fce8-d3f0-456d-8b7c-54fc2a04fb85', '2019-01-29 18:31:45', '2019-01-29 18:31:45');
INSERT INTO `receive_log` VALUES ('45259b7f-4bd9-4864-9f08-f9fa0f1e770b', '116', '1a051f84-1ef3-4f7e-8162-c1ec0d68f229', '2019-01-29 18:31:45', '2019-01-29 18:31:45');
INSERT INTO `receive_log` VALUES ('e5b3b4a7-6c81-4a60-b095-f76af7aef0a0', '127', '57d40ffa-de37-4c29-980c-9a65e0838398', '2019-01-29 18:31:45', '2019-01-29 18:31:45');
INSERT INTO `receive_log` VALUES ('691ec426-2d03-42c6-8276-358ed5d544de', '128', 'e0032a82-f607-4a3e-a1b9-62cd75692db1', '2019-01-29 18:31:45', '2019-01-29 18:31:45');
INSERT INTO `receive_log` VALUES ('31f15caf-37bc-4759-afcc-898616b9de83', '124', 'bf15092b-fb1f-406d-bc8f-c5158360866c', '2019-01-29 18:31:46', '2019-01-29 18:31:46');
INSERT INTO `receive_log` VALUES ('480fc4c3-1704-4882-9eb8-fa589fab3c5a', '131', '11652742-846c-4614-a565-9d1df6cee25d', '2019-01-29 18:31:46', '2019-01-29 18:31:46');
INSERT INTO `receive_log` VALUES ('840928b0-f73a-45cb-a767-23e77755d81e', '140', 'f902a858-adee-4a42-9f7f-3463617348f3', '2019-01-29 18:31:46', '2019-01-29 18:31:46');
INSERT INTO `receive_log` VALUES ('adcd5f7f-ab39-4851-a577-37d94ff007ed', '142', '84979e91-2aca-4688-844a-96bf53ec09f1', '2019-01-29 18:31:46', '2019-01-29 18:31:46');
INSERT INTO `receive_log` VALUES ('143de676-ee7a-4b31-88b4-a6f9a4fcc62d', '130', '31051432-9eb0-412b-af9a-c5eff8d8150e', '2019-01-29 18:31:46', '2019-01-29 18:31:46');
INSERT INTO `receive_log` VALUES ('5b8c9964-2207-4dfb-9c38-af03b16cbc59', '143', 'edf01c77-80bb-4d0a-b635-dc57c8b38ff4', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `receive_log` VALUES ('3fe50021-e461-48e1-ab16-0d15dde4d85c', '123', 'ad095398-aac8-4ba7-9505-d89a55e06c0e', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `receive_log` VALUES ('8dd571f3-6306-4e9b-be06-08532b205068', '132', '11090fb6-4942-44a3-8bbe-ee4411d85648', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `receive_log` VALUES ('33310595-d8e6-4603-ac70-d7d65ab0ab40', '144', 'bdfc6540-b687-45c3-a693-2bcad5d50dc2', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `receive_log` VALUES ('f3607fa7-9dcd-449e-9a11-1c0fa98c5aac', '145', '5278172a-3259-44ab-8992-309561db4da8', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `receive_log` VALUES ('45262d80-0f9d-4ee5-afce-fb77226a6a1a', '146', '6392c289-5b70-42b5-972d-cf370016aab0', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `receive_log` VALUES ('d2c7d36a-4868-47ac-abc1-8ad162581f1e', '125', '97c66eaa-99e7-4665-afa0-a0212f918861', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `receive_log` VALUES ('fd0ee356-3f8e-46d4-88c0-4f4629e9d72f', '137', 'ae602c82-81ab-4a11-8976-ed75cd1a0a9b', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `receive_log` VALUES ('57c3b20b-1aad-4db6-810c-eee4e4f5622e', '147', '74850cb8-fcaa-4680-a1ae-8fe7779d7ed5', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `receive_log` VALUES ('444fc2d3-5ae9-408d-bbe1-da35ea3968ce', '148', 'dc46ab77-81a8-41a6-a829-60c2de09e7f6', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `receive_log` VALUES ('57d0d1d6-16bd-43b7-8d5f-bbe6beb23bb7', '149', '111a9834-68c1-4fe1-ae24-80b9b193be3e', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `receive_log` VALUES ('391ebcef-f66b-4b7e-ae29-cba0891d0467', '151', '4d1dc86e-e0d2-4eb1-89d6-04ac1bb48786', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `receive_log` VALUES ('360cd5be-4688-44b7-9470-313a81cbe4b1', '152', '56f5ef08-df74-4cac-bd53-cd829cc1ebbe', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `receive_log` VALUES ('c5d74551-520e-4ee9-851e-a5856e480235', '153', 'a1110bad-dc13-475b-b36c-789dbc8b3285', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `receive_log` VALUES ('51d67ee0-0657-41d9-af4f-cbec4d710e92', '154', '95047fe2-f807-455a-aceb-1cf66a4568a9', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `receive_log` VALUES ('2427880a-ad2c-4991-ae8f-fb95e25abf48', '157', '889922fe-7e5c-4d4b-9122-3aa94e4acf03', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `receive_log` VALUES ('102ac544-c1bc-4b8e-a1f7-bae5d1e0e090', '158', 'bf152e2b-b48e-44a2-9cb6-7c10a7318911', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `receive_log` VALUES ('32d628ec-b9f3-46a2-8b38-82926777a9be', '159', '5d9e80fc-dabd-4f27-a690-7619b4d48a9b', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `receive_log` VALUES ('9346a4a9-896e-4ac7-9315-75f5643532b8', '160', '5b293a2f-b291-4c36-aeaa-e77dfa359fa0', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `receive_log` VALUES ('f73c66e9-5009-4ca0-a358-b333d4555f3a', '161', '1a9ce360-64e9-49a5-9ac2-a53ea74e7b8d', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `receive_log` VALUES ('f7cac387-2d53-46e0-b0ce-3e874899afd7', '135', '9e317b8c-ff81-4068-a0eb-1a1e4d90d87b', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `receive_log` VALUES ('f2597047-6a87-42cb-bc41-c98916094ba5', '129', 'c3cdf948-8581-4feb-91d2-89c7070d57d3', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `receive_log` VALUES ('28d85e8f-568a-4040-b8c9-9b14d388e17d', '126', '865cbfcd-ab83-4ed5-a435-1c417f7a77e2', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `receive_log` VALUES ('6526f6d0-26c3-49f7-831d-f148e5e3e70c', '134', '93853b55-33d6-42bc-89cb-0964e3c21471', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `receive_log` VALUES ('fd015703-26e8-44d7-9980-95ea078dea9e', '164', 'f988b22f-47bb-449b-9a42-220ebeea7840', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `receive_log` VALUES ('c6d69767-e2a2-4663-a0e4-27d1c58d5e38', '165', '2b82a740-0053-4640-880d-6e48c9411db4', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `receive_log` VALUES ('88998ee2-ed2c-4593-a1a4-55d8d5ebc76a', '166', 'cbc66e91-e39c-4f4c-9577-9fd87beab6b3', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `receive_log` VALUES ('e7550fcd-a175-466d-b92c-074c748bb6c8', '167', '227879a4-a578-40b8-a559-377fac337c30', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `receive_log` VALUES ('96f76863-19c0-4321-8884-603b8b684d81', '169', '5af4ce48-3d27-452b-b4ea-5abcbce5a444', '2019-01-29 18:31:47', '2019-01-29 18:31:47');
INSERT INTO `receive_log` VALUES ('0a7c3b58-91c2-479c-af66-0cff919b64c5', '171', 'de0e9407-038f-4a09-a902-4b330ec9cfd1', '2019-01-29 18:31:48', '2019-01-29 18:31:48');
INSERT INTO `receive_log` VALUES ('aa2bf351-1927-4666-af8f-dad9dbaefc85', '162', 'a8a17462-e453-4ad1-b751-41f770a8a252', '2019-01-29 18:31:48', '2019-01-29 18:31:48');
INSERT INTO `receive_log` VALUES ('77d7b86c-caef-4e2f-ada5-a468c48de687', '172', '49aa8c6d-1b26-43f0-a403-a4a4bb6b1dfa', '2019-01-29 18:31:48', '2019-01-29 18:31:48');
INSERT INTO `receive_log` VALUES ('ddb6ebbb-1345-4886-8362-389e75b5096b', '173', '79ee079c-c1ab-4e2b-be92-536ca26b0677', '2019-01-29 18:31:48', '2019-01-29 18:31:48');
INSERT INTO `receive_log` VALUES ('e14b8fab-d16d-46f0-bb4e-c60eeef6108d', '174', 'fb33f3a9-75e5-4f23-b839-c3e00d11f4b4', '2019-01-29 18:31:48', '2019-01-29 18:31:48');
INSERT INTO `receive_log` VALUES ('f2035341-bff5-4cef-a620-d6cbcba5c35c', '175', '01fc3419-6824-405e-a678-d3f00f318ba2', '2019-01-29 18:31:48', '2019-01-29 18:31:48');
INSERT INTO `receive_log` VALUES ('024718ce-4263-42c5-9bab-452b78664968', '176', 'e5f0758f-8e2d-444b-b103-6439ee5cda8b', '2019-01-29 18:31:48', '2019-01-29 18:31:48');
INSERT INTO `receive_log` VALUES ('f80516b4-9622-4158-ad6a-9a24f8bf4b55', '170', 'b4fdf600-e09a-40af-9cc2-23cb5629fa09', '2019-01-29 18:31:48', '2019-01-29 18:31:48');
INSERT INTO `receive_log` VALUES ('468b0d19-dd6c-44ca-a94f-aa040d764d4c', '177', '72101eb4-d486-490e-95a7-b568220e9ad2', '2019-01-29 18:31:48', '2019-01-29 18:31:48');
INSERT INTO `receive_log` VALUES ('41216362-6e24-4f68-b864-2c606f528264', '178', 'b7534d76-6fbf-49c4-acef-3f2e0b71b739', '2019-01-29 18:31:48', '2019-01-29 18:31:48');
INSERT INTO `receive_log` VALUES ('855496d8-31b7-4693-ab99-f32f716644ae', '179', 'c3c2ddba-ce78-4316-af15-c2a75b057d48', '2019-01-29 18:31:48', '2019-01-29 18:31:48');
INSERT INTO `receive_log` VALUES ('88519a4f-6c60-42f7-bced-8f210c18ab60', '180', '24bbfd62-67ee-4d39-a2bc-6a8818bcf2e8', '2019-01-29 18:31:48', '2019-01-29 18:31:48');
INSERT INTO `receive_log` VALUES ('39e31a63-f80c-401a-9b2b-cedc940420ef', '181', '731e77c7-0a46-4d69-8adb-f0fdd97427e5', '2019-01-29 18:31:48', '2019-01-29 18:31:48');
INSERT INTO `receive_log` VALUES ('45eec1a1-af31-40d8-b9b2-c7c3d0b28373', '163', '503b3ac9-f1ff-4266-ac41-74007016b6a0', '2019-01-29 18:31:48', '2019-01-29 18:31:48');
INSERT INTO `receive_log` VALUES ('f53b5eec-8d0d-46a8-ac9f-7df8d9f83718', '182', 'aa8e8199-93e6-4df7-bb50-049943f67e78', '2019-01-29 18:31:48', '2019-01-29 18:31:48');
INSERT INTO `receive_log` VALUES ('128ae115-1e31-468a-b920-5882077622c1', '183', 'd97f5b77-8e3c-40f3-9e34-512efa44f82c', '2019-01-29 18:31:49', '2019-01-29 18:31:49');
INSERT INTO `receive_log` VALUES ('acf6e472-4787-4028-9ff8-143575d1530c', '184', '511e9e33-e8b8-4693-be0c-dc68fd554e0a', '2019-01-29 18:31:49', '2019-01-29 18:31:49');
INSERT INTO `receive_log` VALUES ('38560b66-97d9-45b6-b839-8f4ae47cf249', '185', 'ac026b3b-42e1-4957-9f7c-8487e8785816', '2019-01-29 18:31:49', '2019-01-29 18:31:49');
INSERT INTO `receive_log` VALUES ('79aadaf6-b68a-4fad-b6a8-6d52ef6634b1', '188', 'eebcbaeb-5ab6-4e06-abd4-6e39c86d9cf8', '2019-01-29 18:31:49', '2019-01-29 18:31:49');
INSERT INTO `receive_log` VALUES ('8b3097f2-a4b3-4b0c-a99c-904c101899d6', '187', '7a0a4d67-c711-481d-acc9-300665ea5064', '2019-01-29 18:31:49', '2019-01-29 18:31:49');
INSERT INTO `receive_log` VALUES ('997a227b-1727-4926-a1b6-3974d370a365', '141', '1ab417bd-4592-4e72-9389-2df9bce5ab56', '2019-01-29 18:31:49', '2019-01-29 18:31:49');
INSERT INTO `receive_log` VALUES ('8c3b5e79-86b3-46aa-a5cf-23a05f47fdb2', '139', '2e044681-a7d0-4d3b-87cc-074f2fab35f0', '2019-01-29 18:31:49', '2019-01-29 18:31:49');
INSERT INTO `receive_log` VALUES ('7a06f282-38b3-441c-b2aa-78fcc14f5770', '168', '50c77b83-c50f-4e17-99d9-0df16c51f5bd', '2019-01-29 18:31:49', '2019-01-29 18:31:49');
INSERT INTO `receive_log` VALUES ('e21e6ef2-2c24-40b9-a6c7-c112569cbd3b', '189', '482cc730-c529-4f9d-a3cd-53639a50443b', '2019-01-29 18:31:49', '2019-01-29 18:31:49');
INSERT INTO `receive_log` VALUES ('5d8beb48-6168-4b73-8ae8-95f2bf5ef3fe', '194', 'c5ba7f7f-afc7-4a74-b8db-65170c0f2872', '2019-01-29 18:31:49', '2019-01-29 18:31:49');
INSERT INTO `receive_log` VALUES ('621311cf-08e5-46a4-8d40-a4cc47712b72', '190', '7bf796fb-9679-42c6-a30f-093d8c622022', '2019-01-29 18:31:49', '2019-01-29 18:31:49');
INSERT INTO `receive_log` VALUES ('afba4768-aaa6-413d-a36b-3f77764ee2c2', '191', 'acde4895-713a-4d92-824c-2cf12bed3b20', '2019-01-29 18:31:49', '2019-01-29 18:31:49');
INSERT INTO `receive_log` VALUES ('aaef3cd8-e5a5-467f-9106-d34150f134e6', '150', '013d9623-0dd2-4bd3-8ef4-3280fc69d270', '2019-01-29 18:31:49', '2019-01-29 18:31:49');
INSERT INTO `receive_log` VALUES ('f7898388-00f8-442b-8d0d-8504a422a888', '192', 'ab003c39-8fda-4ae3-b64e-b4c588a1babf', '2019-01-29 18:31:49', '2019-01-29 18:31:49');
INSERT INTO `receive_log` VALUES ('8c1313d4-c095-47c7-b584-11583ed2885a', '196', '707d0eb6-e133-4169-88ae-0b19b042d00f', '2019-01-29 18:31:49', '2019-01-29 18:31:49');
INSERT INTO `receive_log` VALUES ('87139ec9-4f86-42ad-b67f-d9371b4d4040', '188', '9ee51518-4cfd-49e3-9b83-f22d5766aaf2', '2019-01-29 18:31:49', '2019-01-29 18:31:49');
INSERT INTO `receive_log` VALUES ('01a1d8aa-dafe-4460-938e-037dcb2eccef', '199', '2d2bbbe1-3955-43c7-800d-1940ffef5cae', '2019-01-29 18:31:49', '2019-01-29 18:31:49');
INSERT INTO `receive_log` VALUES ('90f7f116-e25c-4504-b03b-6f34f5ff2c78', '197', '86578d77-33c2-4146-80bc-f219d688ea20', '2019-01-29 18:31:50', '2019-01-29 18:31:50');

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
