ALTER TABLE `ecs_users`
ADD COLUMN `real_name` VARCHAR(50)   NOT NULL DEFAULT '' COMMENT '真实姓名' AFTER `expire_rank`;


ALTER TABLE `ecs_users`
ADD COLUMN `wechat` VARCHAR(100)   NOT NULL DEFAULT '' COMMENT '微信' AFTER `real_name`;





--- 20170914 添加等级id
ALTER TABLE `ecs_goods_activity`
DROP COLUMN `rank_id`,
ADD COLUMN `rank_id`  tinyint(1) NOT NULL DEFAULT 0 COMMENT '等级id 0不限等级' AFTER `ext_info`;

