ALTER TABLE `ecs_users`
ADD COLUMN `real_name` VARCHAR(50)   NOT NULL DEFAULT '' COMMENT '真实姓名' AFTER `expire_rank`;


ALTER TABLE `ecs_users`
ADD COLUMN `wechat` VARCHAR(100)   NOT NULL DEFAULT '' COMMENT '微信' AFTER `real_name`;





--- 20170914 添加等级id
ALTER TABLE `ecs_goods`
ADD COLUMN `user_rank`  varchar(255) NOT NULL DEFAULT '' COMMENT '会员权限 1对多 逗号分隔' AFTER `is_vip`;


