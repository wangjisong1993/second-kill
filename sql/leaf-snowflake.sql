CREATE TABLE `id_segment` (
  `biz_tag` varchar(50) DEFAULT NULL COMMENT '业务标识',
  `max_id` bigint(20) DEFAULT NULL COMMENT '分配的id号段的最大值',
  `p_step` bigint(20) DEFAULT NULL COMMENT '步长',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `current_update_time` datetime DEFAULT NULL COMMENT '当前更新时间',
  `last_update_time` datetime DEFAULT NULL COMMENT '上次更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='号段存储表';

