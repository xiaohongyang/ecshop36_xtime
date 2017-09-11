ALTER TABLE `ecs_users`
ADD COLUMN `real_name` VARCHAR(50)   NOT NULL DEFAULT '' COMMENT '真实姓名' AFTER `expire_rank`;


ALTER TABLE `ecs_users`
ADD COLUMN `wechat` VARCHAR(100)   NOT NULL DEFAULT '' COMMENT '微信' AFTER `real_name`;
