-- phpMyAdmin SQL Dump
-- version 4.4.15.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2017-08-25 21:27:59
-- 服务器版本： 5.5.46
-- PHP Version: 5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sqlxtime`
--

-- --------------------------------------------------------

--
-- 表的结构 `ecs_account_log`
--

CREATE TABLE IF NOT EXISTS `ecs_account_log` (
  `log_id` mediumint(8) unsigned NOT NULL,
  `user_id` mediumint(8) unsigned NOT NULL,
  `user_money` decimal(10,2) NOT NULL,
  `frozen_money` decimal(10,2) NOT NULL,
  `rank_points` mediumint(9) NOT NULL,
  `pay_points` mediumint(9) NOT NULL,
  `change_time` int(10) unsigned NOT NULL,
  `change_desc` varchar(255) NOT NULL,
  `change_type` tinyint(3) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_account_log`
--

INSERT INTO `ecs_account_log` (`log_id`, `user_id`, `user_money`, `frozen_money`, `rank_points`, `pay_points`, `change_time`, `change_desc`, `change_type`) VALUES
(1, 2, '10000000.00', '0.00', 0, 0, 1495080447, '111', 2),
(2, 2, '-220.00', '0.00', 0, 0, 1495085039, '支付订单 2017051873684', 99),
(3, 2, '-1200.00', '0.00', 0, 0, 1495085423, '支付订单 2017051857482', 99),
(4, 2, '-297.00', '0.00', 0, 0, 1495086600, '支付订单 2017051896155', 99),
(5, 2, '-750.00', '0.00', 0, 0, 1495089482, '支付订单 2017051849891', 99),
(6, 2, '-99.00', '0.00', 0, 0, 1495089535, '支付订单 2017051875607', 99),
(7, 2, '-270.00', '0.00', 0, 0, 1495089586, '支付订单 2017051810620', 99),
(8, 2, '-810.00', '0.00', 0, 0, 1495089701, '支付订单 2017051890476', 99),
(9, 2, '0.00', '0.00', 810, 810, 1495092716, '订单 2017051890476 赠送的积分', 99),
(10, 2, '0.00', '0.00', 270, 270, 1495094304, '订单 2017051810620 赠送的积分', 99),
(11, 2, '-400.00', '0.00', 0, 0, 1495099306, '支付订单 2017051810572', 99),
(12, 2, '-390.00', '0.00', 0, 0, 1495542652, '支付订单 2017052397114', 99),
(13, 2, '-90.00', '0.00', 0, 0, 1495542763, '支付订单 2017052327790', 99),
(14, 4, '1000000.00', '0.00', 0, 0, 1495595573, '2345678', 2),
(15, 4, '-120.00', '0.00', 0, 0, 1495595644, '支付订单 2017052417535', 99),
(16, 4, '-480.00', '0.00', 0, 0, 1495597312, '支付订单 2017052426587', 99),
(17, 4, '-120.00', '0.00', 0, 0, 1495597406, '支付订单 2017052430181', 99),
(18, 4, '-228.00', '0.00', 0, 0, 1495597493, '支付订单 2017052420112', 99),
(19, 4, '-228.00', '0.00', 0, 0, 1495597788, '支付订单 2017052477279', 99),
(20, 2, '-313.00', '0.00', 0, 0, 1495606304, '支付订单 2017052463988', 99),
(21, 2, '-59.00', '0.00', 0, 0, 1495701472, '支付订单 2017052524189', 99),
(22, 2, '-1466.00', '0.00', 0, 0, 1495710901, '支付订单 2017052505860', 99),
(23, 4, '-320.00', '0.00', 0, 0, 1496906304, '支付订单 2017060868736', 99),
(24, 5, '-129.00', '0.00', 0, 0, 1497269065, '支付订单 2017061222511', 99),
(25, 5, '-418.00', '0.00', 0, 0, 1497269204, '支付订单 2017061256860', 99),
(26, 5, '-450.00', '0.00', 0, 0, 1497269995, '支付订单 2017061247205', 99),
(27, 5, '-829.00', '0.00', 0, 0, 1497270185, '支付订单 2017061230995', 99),
(28, 5, '-330.00', '0.00', 0, 0, 1497270232, '支付订单 2017061271927', 99),
(29, 5, '-229.00', '0.00', 0, 0, 1497270805, '支付订单 2017061228805', 99),
(30, 2, '-418.00', '0.00', 0, 0, 1498557416, '支付订单 2017062773878', 99),
(31, 2, '-703.00', '0.00', 0, 0, 1498557462, '支付订单 2017062734445', 99),
(32, 2, '-430.00', '0.00', 0, 0, 1498619212, '支付订单 2017062894418', 99),
(33, 2, '-328.00', '0.00', 0, 0, 1498619304, '支付订单 2017062825420', 99),
(34, 2, '-40.00', '0.00', 0, 0, 1500879120, '支付订单 2017072405576', 99),
(35, 2, '-6980.00', '0.00', 0, 0, 1500879644, '支付订单 2017072487038', 99),
(36, 2, '-40.00', '0.00', 0, 0, 1500879733, '支付订单 2017072468790', 99),
(37, 2, '-40.00', '0.00', 0, 0, 1500880142, '支付订单 2017072428665', 99),
(38, 2, '-40.00', '0.00', 0, 0, 1500880320, '支付订单 2017072451644', 99),
(39, 2, '-32.00', '0.00', 0, 0, 1500881078, '支付订单 2017072417088', 99),
(40, 2, '-40.00', '0.00', 0, 0, 1500883460, '支付订单 2017072446700', 99),
(41, 2, '-40.00', '0.00', 0, 0, 1500883690, '支付订单 2017072452075', 99),
(42, 2, '-930.00', '0.00', 0, 0, 1500883760, '支付订单 2017072404982', 99),
(43, 2, '-624.00', '0.00', 0, 0, 1500883825, '支付订单 2017072447466', 99),
(44, 2, '-180.00', '0.00', 0, 0, 1500883893, '支付订单 2017072426238', 99),
(45, 2, '-180.00', '0.00', 0, 0, 1500884765, '支付订单 2017072452722', 99),
(46, 2, '-389.00', '0.00', 0, 0, 1500885418, '支付订单 2017072478198', 99),
(47, 2, '-120.00', '0.00', 0, 0, 1501040516, '支付订单 2017072661989', 99),
(48, 2, '-200.00', '0.00', 0, 0, 1501058768, '支付订单 2017072645221', 99),
(49, 4, '-129.00', '0.00', 0, 0, 1501123282, '支付订单 2017072703393', 99),
(50, 4, '-332.00', '0.00', 0, 0, 1501123988, '支付订单 2017072769404', 99),
(51, 4, '-330.00', '0.00', 0, 0, 1501124099, '支付订单 2017072735595', 99),
(52, 4, '0.00', '0.00', 300, 300, 1501127896, '订单 2017072735595 赠送的积分', 99),
(53, 4, '-806.00', '0.00', 0, 0, 1501129070, '支付订单 2017072718898', 99),
(54, 4, '-40.00', '0.00', 0, 0, 1501129121, '支付订单 2017072716086', 99),
(55, 2, '-703.00', '0.00', 0, 0, 1502173722, '支付订单 2017080872178', 99),
(56, 2, '-122.00', '0.00', 0, 0, 1502173804, '支付订单 2017080876302', 99),
(57, 4, '-350.00', '0.00', 0, 0, 1502245837, '支付订单 2017080908190', 99),
(58, 4, '-280.00', '0.00', 0, 0, 1502245910, '支付订单 2017080969576', 99),
(59, 4, '0.00', '0.00', 250, 250, 1502246194, '订单 2017080969576 赠送的积分', 99),
(60, 4, '0.00', '0.00', 320, 320, 1502248120, '订单 2017080908190 赠送的积分', 99),
(61, 2, '0.00', '0.00', 0, 0, 1502766101, '兑换一年 N ', 3),
(62, 2, '0.00', '0.00', 0, 0, 1502766147, '兑换一年 N ', 3),
(63, 2, '0.00', '0.00', 0, 0, 1502766476, '兑换一年 R ', 3),
(64, 4, '0.00', '0.00', 0, 100000, 1502767393, '111', 2),
(65, 4, '0.00', '0.00', 0, -50000, 1502767504, '兑换一年 N ', 3),
(66, 4, '-75.00', '0.00', 0, 0, 1502770972, '支付订单 2017081515177', 99),
(67, 4, '-22.84', '0.00', 0, 0, 1502776198, '支付订单 2017081583790', 99),
(68, 2, '0.00', '0.00', 673, 673, 1502776423, '订单 2017080872178 赠送的积分', 99),
(69, 4, '0.00', '0.00', 7, 7, 1502776537, '订单 2017081583790 赠送的积分', 99),
(70, 4, '-18.92', '0.00', 0, 0, 1502776586, '支付订单 2017081508031', 99),
(71, 4, '0.00', '0.00', 60, 60, 1502776872, '订单 2017081515177 赠送的积分', 99),
(72, 2, '-50.00', '50.00', 0, 0, 1502855041, '冻结拍卖活动的保证金：121', 99),
(73, 2, '-1362469.85', '0.00', 0, 0, 1502867044, '支付订单 2017081698498', 99),
(74, 2, '-9.50', '0.00', 0, 0, 1502867893, '支付订单 2017081668827', 99),
(75, 2, '-9.50', '0.00', 0, 0, 1502867962, '支付订单 2017081637308', 99),
(76, 2, '-19.00', '0.00', 0, 0, 1502868118, '支付订单 2017081605704', 99),
(77, 2, '-19.00', '0.00', 0, 0, 1502868491, '支付订单 2017081666053', 99),
(78, 6, '99999999.99', '0.00', 0, 0, 1502868601, '充值', 0),
(79, 6, '-30.00', '0.00', 0, 0, 1502868834, '支付订单 2017081624441', 99),
(80, 6, '-19.98', '0.00', 0, 0, 1502869090, '支付订单 2017081689795', 99),
(81, 2, '-28.47', '0.00', 0, 0, 1502869203, '支付订单 2017081655950', 99),
(82, 2, '50.00', '-50.00', 0, 0, 1502869287, '解冻拍卖活动的保证金：121', 99),
(83, 6, '-50.00', '50.00', 0, 0, 1502869287, '冻结拍卖活动的保证金：121', 99),
(84, 2, '-20.70', '0.00', 0, 0, 1502877541, '支付订单 2017081655458', 99),
(85, 2, '-16.90', '0.00', 0, 0, 1502877597, '支付订单 2017081624221', 99),
(86, 2, '-585.00', '0.00', 0, 0, 1502957330, '支付订单 2017081701578', 99),
(87, 2, '-109.05', '0.00', 0, 0, 1502957440, '支付订单 2017081785368', 99),
(88, 2, '-2963.80', '0.00', 0, 0, 1502958129, '支付订单 2017081795221', 99),
(89, 2, '-579.30', '0.00', 0, 0, 1502958188, '支付订单 2017081727701', 99),
(90, 2, '-2963.80', '0.00', 0, 0, 1502958428, '支付订单 2017081707265', 99),
(91, 6, '-791.00', '0.00', 0, 0, 1502959089, '支付订单 2017081738624', 99),
(92, 2, '-109.05', '0.00', 0, 0, 1502959548, '支付订单 2017081753783', 99),
(93, 6, '-413.00', '0.00', 0, 0, 1502959550, '支付订单 2017081743288', 99),
(94, 2, '-2963.80', '0.00', 0, 0, 1502959702, '支付订单 2017081754870', 99),
(95, 6, '-1010.00', '0.00', 0, 0, 1502959797, '支付订单 2017081723452', 99),
(96, 2, '-18541.90', '0.00', 0, 0, 1502960565, '支付订单 2017081799401', 99),
(97, 2, '-960.25', '0.00', 0, 0, 1502960587, '支付订单 2017081775669', 99),
(98, 2, '-38718.00', '0.00', 0, 0, 1502961148, '支付订单 2017081796303', 99),
(99, 6, '-19716.00', '0.00', 0, 0, 1502961196, '支付订单 2017081704771', 99),
(100, 2, '-4363.15', '0.00', 0, 0, 1502961299, '支付订单 2017081752069', 99),
(101, 6, '-9717.00', '0.00', 0, 0, 1502961706, '支付订单 2017081733340', 99),
(102, 6, '-123248.00', '0.00', 0, 0, 1502962151, '支付订单 2017081764455', 99),
(103, 6, '-699321.00', '0.00', 0, 0, 1502962373, '支付订单 2017081749882', 99),
(104, 6, '-8881723.00', '0.00', 0, 0, 1502964333, '支付订单 2017081786038', 99),
(105, 6, '-3895.00', '0.00', 0, 0, 1502965039, '支付订单 2017081720313', 99),
(106, 2, '-210.00', '0.00', 0, 0, 1502965534, '支付订单 2017081734626', 99),
(107, 2, '-752.20', '0.00', 0, 0, 1503053135, '支付订单 2017081869783', 99),
(108, 2, '-2595.20', '0.00', 0, 0, 1503313054, '支付订单 2017082161519', 99);

-- --------------------------------------------------------

--
-- 表的结构 `ecs_account_other_log`
--

CREATE TABLE IF NOT EXISTS `ecs_account_other_log` (
  `user_id` mediumint(8) NOT NULL,
  `order_id` mediumint(8) NOT NULL,
  `order_sn` varchar(20) NOT NULL,
  `money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pay_type` varchar(20) NOT NULL,
  `pay_time` varchar(10) NOT NULL,
  `change_desc` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecs_ad`
--

CREATE TABLE IF NOT EXISTS `ecs_ad` (
  `ad_id` smallint(5) unsigned NOT NULL,
  `position_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `media_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ad_name` varchar(60) NOT NULL DEFAULT '',
  `ad_link` varchar(255) NOT NULL DEFAULT '',
  `ad_code` text NOT NULL,
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `link_man` varchar(60) NOT NULL DEFAULT '',
  `link_email` varchar(60) NOT NULL DEFAULT '',
  `link_phone` varchar(60) NOT NULL DEFAULT '',
  `click_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint(3) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_ad`
--

INSERT INTO `ecs_ad` (`ad_id`, `position_id`, `media_type`, `ad_name`, `ad_link`, `ad_code`, `start_time`, `end_time`, `link_man`, `link_email`, `link_phone`, `click_count`, `enabled`) VALUES
(1, 1, 0, '首页banner1', '', '1494921715323019867.png', 1494662400, 1498723200, '', '', '', 6, 1),
(2, 1, 0, '首页banner2', '', '1494921764901715465.png', 1494748800, 1498118400, '', '', '', 9, 1),
(3, 1, 0, '首页banner3', '', '1494922287043603472.png', 1494489600, 1508227200, '', '', '', 58, 1);

-- --------------------------------------------------------

--
-- 表的结构 `ecs_admin_action`
--

CREATE TABLE IF NOT EXISTS `ecs_admin_action` (
  `action_id` tinyint(3) unsigned NOT NULL,
  `parent_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `action_code` varchar(20) NOT NULL DEFAULT '',
  `relevance` varchar(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=136 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_admin_action`
--

INSERT INTO `ecs_admin_action` (`action_id`, `parent_id`, `action_code`, `relevance`) VALUES
(1, 0, 'goods', ''),
(2, 0, 'cms_manage', ''),
(3, 0, 'users_manage', ''),
(4, 0, 'priv_manage', ''),
(5, 0, 'sys_manage', ''),
(6, 0, 'order_manage', ''),
(7, 0, 'promotion', ''),
(8, 0, 'email', ''),
(9, 0, 'templates_manage', ''),
(10, 0, 'db_manage', ''),
(11, 0, 'sms_manage', ''),
(21, 1, 'goods_manage', ''),
(22, 1, 'remove_back', ''),
(23, 1, 'cat_manage', ''),
(24, 1, 'cat_drop', 'cat_manage'),
(25, 1, 'attr_manage', ''),
(26, 1, 'brand_manage', ''),
(27, 1, 'comment_priv', ''),
(84, 1, 'tag_manage', ''),
(30, 2, 'article_cat', ''),
(31, 2, 'article_manage', ''),
(32, 2, 'shopinfo_manage', ''),
(33, 2, 'shophelp_manage', ''),
(34, 2, 'vote_priv', ''),
(35, 7, 'topic_manage', ''),
(74, 4, 'template_manage', ''),
(73, 3, 'feedback_priv', ''),
(38, 3, 'integrate_users', ''),
(39, 3, 'sync_users', 'integrate_users'),
(40, 3, 'users_manage', ''),
(41, 3, 'users_drop', 'users_manage'),
(42, 3, 'user_rank', ''),
(85, 3, 'surplus_manage', 'account_manage'),
(43, 4, 'admin_manage', ''),
(44, 4, 'admin_drop', 'admin_manage'),
(45, 4, 'allot_priv', 'admin_manage'),
(46, 4, 'logs_manage', ''),
(47, 4, 'logs_drop', 'logs_manage'),
(48, 5, 'shop_config', ''),
(49, 5, 'ship_manage', ''),
(50, 5, 'payment', ''),
(51, 5, 'shiparea_manage', ''),
(52, 5, 'area_manage', ''),
(53, 6, 'order_os_edit', ''),
(54, 6, 'order_ps_edit', 'order_os_edit'),
(55, 6, 'order_ss_edit', 'order_os_edit'),
(56, 6, 'order_edit', 'order_os_edit'),
(57, 6, 'order_view', ''),
(58, 6, 'order_view_finished', ''),
(59, 6, 'repay_manage', ''),
(60, 6, 'booking', ''),
(61, 6, 'sale_order_stats', ''),
(62, 6, 'client_flow_stats', ''),
(78, 7, 'snatch_manage', ''),
(83, 7, 'ad_manage', ''),
(80, 7, 'gift_manage', ''),
(81, 7, 'card_manage', ''),
(70, 1, 'goods_type', ''),
(82, 7, 'pack', ''),
(79, 7, 'bonus_manage', ''),
(75, 5, 'friendlink', ''),
(76, 5, 'db_backup', ''),
(77, 5, 'db_renew', 'db_backup'),
(86, 4, 'agency_manage', ''),
(87, 3, 'account_manage', ''),
(88, 5, 'flash_manage', ''),
(89, 5, 'navigator', ''),
(90, 7, 'auction', ''),
(91, 7, 'group_by', ''),
(92, 7, 'favourable', ''),
(93, 7, 'whole_sale', ''),
(94, 1, 'goods_auto', ''),
(95, 2, 'article_auto', ''),
(96, 5, 'cron', ''),
(97, 5, 'affiliate', ''),
(98, 5, 'affiliate_ck', ''),
(99, 8, 'attention_list', ''),
(100, 8, 'email_list', ''),
(101, 8, 'magazine_list', ''),
(102, 8, 'view_sendlist', ''),
(103, 1, 'virualcard', ''),
(104, 7, 'package_manage', ''),
(105, 1, 'picture_batch', ''),
(106, 1, 'goods_export', ''),
(107, 1, 'goods_batch', ''),
(108, 1, 'gen_goods_script', ''),
(109, 5, 'sitemap', ''),
(110, 5, 'file_priv', ''),
(111, 5, 'file_check', ''),
(112, 9, 'template_select', ''),
(113, 9, 'template_setup', ''),
(114, 9, 'library_manage', ''),
(115, 9, 'lang_edit', ''),
(116, 9, 'backup_setting', ''),
(117, 9, 'mail_template', ''),
(118, 10, 'db_backup', ''),
(119, 10, 'db_renew', ''),
(120, 10, 'db_optimize', ''),
(121, 10, 'sql_query', ''),
(122, 10, 'convert', ''),
(124, 11, 'sms_send', ''),
(128, 7, 'exchange_goods', ''),
(129, 6, 'delivery_view', ''),
(130, 6, 'back_view', ''),
(131, 5, 'reg_fields', ''),
(132, 5, 'shop_authorized', ''),
(133, 5, 'webcollect_manage', ''),
(134, 4, 'suppliers_manage', ''),
(135, 4, 'role_manage', '');

-- --------------------------------------------------------

--
-- 表的结构 `ecs_admin_log`
--

CREATE TABLE IF NOT EXISTS `ecs_admin_log` (
  `log_id` int(10) unsigned NOT NULL,
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `log_info` varchar(255) NOT NULL DEFAULT '',
  `ip_address` varchar(15) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=169 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_admin_log`
--

INSERT INTO `ecs_admin_log` (`log_id`, `log_time`, `user_id`, `log_info`, `ip_address`) VALUES
(1, 1493176585, 1, '添加商品分类: 1大类', '180.168.202.246'),
(2, 1493176618, 1, '添加商品分类: 2小类', '180.168.202.246'),
(3, 1493176643, 1, '添加商品分类: 3小分类', '180.168.202.246'),
(4, 1493176672, 1, '添加商品分类: 周边商品', '180.168.202.246'),
(5, 1493176822, 1, '添加商品: 手机1', '180.168.202.246'),
(6, 1493176858, 1, '添加商品: 手机2', '180.168.202.246'),
(7, 1493176881, 1, '添加商品: 手机3', '180.168.202.246'),
(8, 1493176924, 1, '添加商品: 手机4', '180.168.202.246'),
(9, 1493176956, 1, '添加商品: 手机商品5', '180.168.202.246'),
(10, 1493177018, 1, '添加商品: 手机6', '180.168.202.246'),
(11, 1493177178, 1, '添加商品: 手机7', '180.168.202.246'),
(12, 1493266725, 1, '编辑商店设置: ', '180.168.202.246'),
(13, 1494746235, 1, '添加会员账号: test123', '180.168.202.246'),
(14, 1494900421, 1, '编辑商品: 手机3', '180.173.136.193'),
(15, 1494900592, 1, '编辑商品: 手机3', '180.173.136.193'),
(16, 1494901486, 1, '编辑商品: 手机3', '180.173.136.193'),
(17, 1494902517, 1, '添加广告位置: 首页banner', '180.168.202.246'),
(18, 1494909821, 1, '编辑商店设置: ', '180.173.136.193'),
(19, 1494909866, 1, '编辑商店设置: ', '180.173.136.193'),
(20, 1494912878, 1, '添加属性: 尺码', '180.173.136.193'),
(21, 1494912895, 1, '添加属性: 颜色', '180.173.136.193'),
(22, 1494913045, 1, '编辑商品: 手机7', '180.173.136.193'),
(23, 1494913588, 1, '编辑商品: 手机7', '180.173.136.193'),
(24, 1494913701, 1, '编辑商品: 手机7', '180.173.136.193'),
(25, 1494914317, 1, '编辑商品: 手机7', '180.173.136.193'),
(26, 1494916239, 1, '安装支付方式: 星辉币支付', '180.173.136.193'),
(27, 1494916268, 1, '安装支付方式: 支付宝', '180.173.136.193'),
(28, 1494921467, 1, '添加广告: 首页banner1', '180.173.136.193'),
(29, 1494921529, 1, '编辑广告位置: 首页banner', '180.173.136.193'),
(30, 1494921564, 1, '编辑广告位置: 首页banner', '180.173.136.193'),
(31, 1494921579, 1, '编辑广告位置: 750', '180.173.136.193'),
(32, 1494921587, 1, '编辑广告位置: 400', '180.173.136.193'),
(33, 1494921652, 1, '编辑广告位置: 640', '180.173.136.193'),
(34, 1494921715, 1, '编辑广告: 首页banner1', '180.173.136.193'),
(35, 1494921764, 1, '添加广告: 首页banner2', '180.173.136.193'),
(36, 1494921854, 1, '添加广告: 首页banner3', '180.173.136.193'),
(37, 1494922010, 1, '编辑广告: 首页banner3', '180.173.136.193'),
(38, 1494922287, 1, '编辑广告: 首页banner3', '180.173.136.193'),
(39, 1495079213, 1, '编辑商品: 手机7', '180.173.136.187'),
(40, 1495079370, 1, '编辑商店设置: ', '180.173.136.187'),
(41, 1495079456, 1, '编辑商品: 手机7', '180.173.136.187'),
(42, 1495079656, 1, '编辑商品: 手机7', '180.173.136.187'),
(43, 1495080273, 1, '编辑商店设置: ', '180.173.136.187'),
(44, 1495081013, 1, '编辑支付方式: 支付宝', '180.173.136.187'),
(45, 1495081026, 1, '编辑支付方式: 星辉币支付', '180.173.136.187'),
(46, 1495085034, 1, '安装配送方式: 顺丰速运', '180.173.136.187'),
(47, 1495089330, 1, '编辑商品: 手机6', '180.173.136.187'),
(48, 1495089400, 1, '编辑商品: 手机商品5', '180.173.136.187'),
(49, 1495098562, 1, '编辑商品: 手机7', '180.173.136.187'),
(50, 1495098731, 1, '编辑商品: 手机7', '180.173.136.187'),
(51, 1495099447, 1, '添加积分可兑换的商品: 6', '180.173.136.187'),
(52, 1495099477, 1, '添加积分可兑换的商品: 2', '180.173.136.187'),
(53, 1495451592, 1, '编辑商品: 手机6', '180.173.142.0'),
(54, 1495451620, 1, '编辑商品: 手机商品5', '180.173.142.0'),
(55, 1495451637, 1, '编辑商品: 手机4', '180.173.142.0'),
(56, 1495451654, 1, '编辑商品: 手机3', '180.173.142.0'),
(57, 1495451671, 1, '编辑商品: 手机2', '180.173.142.0'),
(58, 1495451688, 1, '编辑商品: 手机1', '180.173.142.0'),
(59, 1495451912, 1, '回收商品: 手机1', '180.173.142.0'),
(60, 1495453380, 1, '添加商品: 手机1', '180.173.142.0'),
(61, 1495453452, 1, '编辑商品: 手机1', '180.173.142.0'),
(62, 1495502527, 1, '编辑商店设置: ', '101.81.101.20'),
(63, 1495506144, 1, '安装配送方式: 圆通速递', '101.81.101.20'),
(64, 1495508520, 1, '编辑商品: 手机1', '101.81.101.20'),
(65, 1495520803, 1, '添加商品: 测试商品052301', '116.226.74.13'),
(66, 1495521567, 1, '编辑商品: 测试商品052301', '116.226.74.13'),
(67, 1495521609, 1, '编辑商品: 测试商品052301', '116.226.74.13'),
(68, 1495521968, 1, '编辑商品: 测试商品052301', '116.226.74.13'),
(69, 1495534325, 1, '编辑商品: 测试商品052301', '116.226.74.13'),
(70, 1495534351, 1, '商品: 9', '116.226.74.13'),
(71, 1495534351, 1, '商品: 9', '116.226.74.13'),
(72, 1495540719, 1, '编辑商品: 测试商品052301', '116.226.74.13'),
(73, 1495540759, 1, '编辑商品: 测试商品052301', '116.226.74.13'),
(74, 1495597286, 1, '添加配送区域: 中国', '180.173.141.104'),
(75, 1495610155, 1, '编辑商品: 测试商品052301', '116.226.74.13'),
(76, 1495610206, 1, '编辑商品: 测试商品052301', '116.226.74.13'),
(77, 1495695537, 1, '编辑商品: 测试商品052301', '116.226.74.13'),
(78, 1495697071, 1, '编辑商品: 测试商品052301', '116.226.74.13'),
(79, 1495697108, 1, '商品: 9', '116.226.74.13'),
(80, 1495697108, 1, '商品: 9', '116.226.74.13'),
(81, 1495697144, 1, '编辑商品: 测试商品052301', '116.226.74.13'),
(82, 1495697154, 1, '商品: ', '116.226.74.13'),
(83, 1495697154, 1, '回收: ', '116.226.74.13'),
(84, 1495697158, 1, '商品: ', '116.226.74.13'),
(85, 1495697158, 1, '回收: ', '116.226.74.13'),
(86, 1495697253, 1, '编辑商品: 测试商品052301', '116.226.74.13'),
(87, 1495700549, 1, '添加商品: 测试商品123321123321', '116.226.74.13'),
(88, 1495700579, 1, '编辑商品: 测试商品123321123321', '116.226.74.13'),
(89, 1495700638, 1, '编辑商品: 测试商品123321123321', '116.226.74.13'),
(90, 1495700648, 1, '商品: 10', '116.226.74.13'),
(91, 1495700739, 1, '编辑商品: 测试商品123321123321', '116.226.74.13'),
(92, 1495700747, 1, '商品: ', '116.226.74.13'),
(93, 1495700747, 1, '回收: ', '116.226.74.13'),
(94, 1496802329, 1, '卸载支付方式: alipay', '61.152.171.68'),
(95, 1497270527, 1, '编辑商品: 测试商品052301', '61.152.171.68'),
(96, 1497270676, 1, '编辑商品: 测试商品052301', '61.152.171.68'),
(97, 1497492600, 1, '编辑广告: 首页banner3', '180.168.202.246'),
(98, 1497492691, 1, '编辑广告: 首页banner2', '180.168.202.246'),
(99, 1497492701, 1, '编辑广告: 首页banner1', '180.168.202.246'),
(100, 1497599400, 1, '添加: 积分抵扣', '61.152.171.68'),
(101, 1497599417, 1, '添加: 限量活动', '61.152.171.68'),
(102, 1498617156, 1, '添加商品: 11', '180.168.202.246'),
(103, 1498617410, 1, '添加商品: 商品商品10', '116.226.59.47'),
(104, 1498619665, 1, '添加商品: 限时0629', '116.226.59.47'),
(105, 1498621502, 1, '编辑商品: 商品商品10', '180.173.56.206'),
(106, 1498629044, 1, '添加拍卖活动: 112312', '180.173.56.206'),
(107, 1498631064, 1, '编辑拍卖活动: 112312', '180.173.56.206'),
(108, 1500893955, 1, '编辑广告: 首页banner3', '180.168.202.246'),
(109, 1500970208, 1, '编辑商店设置: ', '180.168.202.246'),
(110, 1500970362, 1, '添加拍卖活动: 121', '180.168.202.246'),
(111, 1500971543, 1, '编辑商店设置: ', '180.168.202.246'),
(112, 1501037175, 1, '编辑商店设置: ', '180.168.202.246'),
(113, 1501037257, 1, '编辑商店设置: ', '180.168.202.246'),
(114, 1501039315, 1, '回收商品: 11', '180.168.202.246'),
(115, 1501039417, 1, '添加文章分类: 购物指南：', '180.168.202.246'),
(116, 1501039432, 1, '添加文章分类: 支付方式：', '180.168.202.246'),
(117, 1501039443, 1, '添加文章分类: 售后服务：', '180.168.202.246'),
(118, 1501039464, 1, '添加文章: 购物流程', '180.168.202.246'),
(119, 1501039545, 1, '添加文章: 物品验货及签收', '180.168.202.246'),
(120, 1501039570, 1, '添加文章: 订单状态说明', '180.168.202.246'),
(121, 1501039581, 1, '添加文章: 取消订单', '180.168.202.246'),
(122, 1501039604, 1, '添加文章: 星辉钱包使用', '180.168.202.246'),
(123, 1501039618, 1, '添加文章: 配送进度查询', '180.168.202.246'),
(124, 1501039635, 1, '添加文章: 配送范围及运费', '180.168.202.246'),
(125, 1501039648, 1, '添加文章: 星辉钱包', '180.168.202.246'),
(126, 1501039661, 1, '添加文章: 在线支付', '180.168.202.246'),
(127, 1501039675, 1, '添加文章: 退换货服务', '180.168.202.246'),
(128, 1501039694, 1, '添加文章: 联系客服', '180.168.202.246'),
(129, 1501041569, 1, '编辑会员账号: test123', '180.168.202.246'),
(130, 1501041814, 1, '编辑会员账号: test123', '180.168.202.246'),
(131, 1501060081, 1, '编辑商店设置: ', '180.168.202.246'),
(132, 1502246398, 1, '编辑商品: 商品商品10', '180.168.202.246'),
(133, 1502764791, 1, '添加会员等级: N', '180.168.202.246'),
(134, 1502764834, 1, '添加会员等级: R', '180.168.202.246'),
(135, 1502764877, 1, '添加会员等级: SR', '180.168.202.246'),
(136, 1502764903, 1, '添加会员等级: SSR', '180.168.202.246'),
(137, 1502764924, 1, '添加会员等级: UR', '180.168.202.246'),
(138, 1502767275, 1, '删除会员等级: ', '180.168.202.246'),
(139, 1502770805, 1, '删除配送区域: 中国', '180.168.202.246'),
(140, 1502770903, 1, '添加配送区域: 顺丰', '180.168.202.246'),
(141, 1502868241, 1, '添加会员账号: 123', '180.173.18.125'),
(142, 1502868601, 1, '添加会员余额: 123', '180.173.18.125'),
(143, 1502868916, 1, '编辑商品: 商品商品10', '180.173.18.125'),
(144, 1502869019, 1, '编辑商品: 商品商品10', '180.173.18.125'),
(145, 1502869511, 1, '添加拍卖活动: hhhhhhhhhhh', '180.173.18.125'),
(146, 1502869576, 1, '编辑拍卖活动: hhhhhhhhhhh', '180.173.18.125'),
(147, 1502869918, 1, '添加拍卖活动: sadsda', '180.173.18.125'),
(148, 1502869939, 1, '编辑拍卖活动: sadsda', '180.173.18.125'),
(149, 1502962108, 1, '还原商品: 11', '180.173.18.125'),
(150, 1502964964, 1, '编辑商品: 手机4', '180.173.18.125'),
(151, 1502965116, 1, '回收商品: 手机4', '180.173.18.125'),
(152, 1502965140, 1, '还原商品: 手机4', '180.173.18.125'),
(153, 1502965232, 1, '编辑商品: 手机4', '180.173.18.125'),
(154, 1502965286, 1, '编辑商品: 手机4', '180.173.18.125'),
(155, 1503577031, 1, '编辑会员等级: N', '183.209.111.58'),
(156, 1503577033, 1, '编辑会员等级: 注册用户', '183.209.111.58'),
(157, 1503577038, 1, '编辑会员等级: N', '183.209.111.58'),
(158, 1503577039, 1, '编辑会员等级: R', '183.209.111.58'),
(159, 1503577042, 1, '编辑会员等级: SSR', '183.209.111.58'),
(160, 1503577043, 1, '编辑会员等级: SR', '183.209.111.58'),
(161, 1503577044, 1, '编辑会员等级: R', '183.209.111.58'),
(162, 1503577047, 1, '编辑会员等级: N', '183.209.111.58'),
(163, 1503577050, 1, '编辑会员等级: SSR', '183.209.111.58'),
(164, 1503577051, 1, '编辑会员等级: N', '183.209.111.58'),
(165, 1503577058, 1, '编辑会员等级: SSR', '183.209.111.58'),
(166, 1503577082, 1, '编辑会员等级: SSR', '183.209.111.58'),
(167, 1503577096, 1, '编辑会员等级: N', '183.209.111.58'),
(168, 1503577693, 1, '编辑会员等级: SSR', '183.209.111.58');

-- --------------------------------------------------------

--
-- 表的结构 `ecs_admin_message`
--

CREATE TABLE IF NOT EXISTS `ecs_admin_message` (
  `message_id` smallint(5) unsigned NOT NULL,
  `sender_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `receiver_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sent_time` int(11) unsigned NOT NULL DEFAULT '0',
  `read_time` int(11) unsigned NOT NULL DEFAULT '0',
  `readed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `message` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecs_admin_user`
--

CREATE TABLE IF NOT EXISTS `ecs_admin_user` (
  `user_id` smallint(5) unsigned NOT NULL,
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `ec_salt` varchar(10) DEFAULT NULL,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `last_login` int(11) NOT NULL DEFAULT '0',
  `last_ip` varchar(15) NOT NULL DEFAULT '',
  `action_list` text NOT NULL,
  `nav_list` text NOT NULL,
  `lang_type` varchar(50) NOT NULL DEFAULT '',
  `agency_id` smallint(5) unsigned NOT NULL,
  `suppliers_id` smallint(5) unsigned DEFAULT '0',
  `todolist` longtext,
  `role_id` smallint(5) DEFAULT NULL,
  `passport_uid` varchar(20) DEFAULT NULL,
  `yq_create_time` smallint(11) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_admin_user`
--

INSERT INTO `ecs_admin_user` (`user_id`, `user_name`, `email`, `password`, `ec_salt`, `add_time`, `last_login`, `last_ip`, `action_list`, `nav_list`, `lang_type`, `agency_id`, `suppliers_id`, `todolist`, `role_id`, `passport_uid`, `yq_create_time`) VALUES
(1, 'admin', '', 'd86f1662180895a57ce3d1cdcf0c55b6', '3124', 1493176269, 1503585312, '36.149.143.232', 'all', '商品列表|goods.php?act=list,订单列表|order.php?act=list,用户评论|comment_manage.php?act=list,会员列表|users.php?act=list,商店设置|shop_config.php?act=list_edit,店铺二维码|lead.php?act=list,服务市场|service_market.php', '', 0, 0, NULL, NULL, NULL, NULL),
(2, '88170801790541', '88170801790541', 'shopex', NULL, 1502856071, 0, '', 'all', '商品列表|goods.php?act=list,订单列表|order.php?act=list,用户评论|comment_manage.php?act=list,会员列表|users.php?act=list,商店设置|shop_config.php?act=list_edit,店铺二维码|lead.php?act=list,服务市场|service_market.php', '', 0, 0, NULL, NULL, '88170801790541', 32767);

-- --------------------------------------------------------

--
-- 表的结构 `ecs_adsense`
--

CREATE TABLE IF NOT EXISTS `ecs_adsense` (
  `from_ad` smallint(5) NOT NULL DEFAULT '0',
  `referer` varchar(255) NOT NULL DEFAULT '',
  `clicks` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_adsense`
--

INSERT INTO `ecs_adsense` (`from_ad`, `referer`, `clicks`) VALUES
(1, '本站', 6),
(3, '本站', 58),
(2, '本站', 9),
(0, '本站', 2);

-- --------------------------------------------------------

--
-- 表的结构 `ecs_ad_custom`
--

CREATE TABLE IF NOT EXISTS `ecs_ad_custom` (
  `ad_id` mediumint(8) unsigned NOT NULL,
  `ad_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ad_name` varchar(60) DEFAULT NULL,
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext,
  `url` varchar(255) DEFAULT NULL,
  `ad_status` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecs_ad_position`
--

CREATE TABLE IF NOT EXISTS `ecs_ad_position` (
  `position_id` tinyint(3) unsigned NOT NULL,
  `position_name` varchar(60) NOT NULL DEFAULT '',
  `ad_width` varchar(10) NOT NULL DEFAULT '100%',
  `ad_height` varchar(10) NOT NULL DEFAULT '100%',
  `position_desc` varchar(255) NOT NULL DEFAULT '',
  `position_style` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_ad_position`
--

INSERT INTO `ecs_ad_position` (`position_id`, `position_name`, `ad_width`, `ad_height`, `position_desc`, `position_style`) VALUES
(1, '首页banner', '640', '400', '', '<div class="slider">\r\n         <div class="slider-previous"><</div>\r\n        <div class="slider-box">\r\n            <ul>\r\n{foreach from=$ads item=ad}\r\n                <li>{$ad}</li>\r\n               {/foreach}\r\n            </ul>\r\n        </div>\r\n        <div class="slider-next">></div>\r\n    </div>');

-- --------------------------------------------------------

--
-- 表的结构 `ecs_affiliate_log`
--

CREATE TABLE IF NOT EXISTS `ecs_affiliate_log` (
  `log_id` mediumint(8) NOT NULL,
  `order_id` mediumint(8) NOT NULL,
  `time` int(10) NOT NULL,
  `user_id` mediumint(8) NOT NULL,
  `user_name` varchar(60) DEFAULT NULL,
  `money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `point` int(10) NOT NULL DEFAULT '0',
  `separate_type` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecs_agency`
--

CREATE TABLE IF NOT EXISTS `ecs_agency` (
  `agency_id` smallint(5) unsigned NOT NULL,
  `agency_name` varchar(255) NOT NULL,
  `agency_desc` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecs_area_region`
--

CREATE TABLE IF NOT EXISTS `ecs_area_region` (
  `shipping_area_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `region_id` smallint(5) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_area_region`
--

INSERT INTO `ecs_area_region` (`shipping_area_id`, `region_id`) VALUES
(2, 1);

-- --------------------------------------------------------

--
-- 表的结构 `ecs_article`
--

CREATE TABLE IF NOT EXISTS `ecs_article` (
  `article_id` mediumint(8) unsigned NOT NULL,
  `cat_id` smallint(5) NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `content` longtext NOT NULL,
  `author` varchar(30) NOT NULL DEFAULT '',
  `author_email` varchar(60) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `article_type` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `is_open` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `file_url` varchar(255) NOT NULL DEFAULT '',
  `open_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `link` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_article`
--

INSERT INTO `ecs_article` (`article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description`) VALUES
(1, 2, '免责条款', '', '', '', '', 0, 1, 1493176269, '', 0, '', NULL),
(2, 2, '隐私保护', '', '', '', '', 0, 1, 1493176269, '', 0, '', NULL),
(3, 2, '咨询热点', '', '', '', '', 0, 1, 1493176269, '', 0, '', NULL),
(4, 2, '联系我们', '', '', '', '', 0, 1, 1493176269, '', 0, '', NULL),
(5, 2, '公司简介', '', '', '', '', 0, 1, 1493176269, '', 0, '', NULL),
(6, -1, '用户协议', '请在 文章管理》文章列表》用户协议 修改', '', '', '', 0, 1, 1493176269, '', 0, '', NULL),
(80, -2, '关于我们', '请在 文章管理》文章列表》关于我们 修改', '', '', '', 0, 1, 1493176269, '', 0, '', NULL),
(81, 4, '购物流程', '', '', '', '', 0, 1, 1501039464, '', 0, 'http://', ''),
(82, 4, '物品验货及签收', '', '', '', '', 0, 1, 1501039545, '', 0, 'http://', ''),
(83, 4, '订单状态说明', '', '', '', '', 0, 1, 1501039570, '', 0, 'http://', ''),
(84, 4, '取消订单', '', '', '', '', 0, 1, 1501039581, '', 0, 'http://', ''),
(85, 4, '星辉钱包使用', '', '', '', '', 0, 1, 1501039604, '', 0, 'http://', ''),
(86, 4, '配送进度查询', '', '', '', '', 0, 1, 1501039618, '', 0, 'http://', ''),
(87, 4, '配送范围及运费', '', '', '', '', 0, 1, 1501039635, '', 0, 'http://', ''),
(88, 5, '星辉钱包', '', '', '', '', 0, 1, 1501039648, '', 0, 'http://', ''),
(89, 5, '在线支付', '', '', '', '', 0, 1, 1501039661, '', 0, 'http://', ''),
(90, 6, '退换货服务', '', '', '', '', 0, 1, 1501039675, '', 0, 'http://', ''),
(91, 6, '联系客服', '', '', '', '', 0, 1, 1501039694, '', 0, 'http://', '');

-- --------------------------------------------------------

--
-- 表的结构 `ecs_article_cat`
--

CREATE TABLE IF NOT EXISTS `ecs_article_cat` (
  `cat_id` smallint(5) NOT NULL,
  `cat_name` varchar(255) NOT NULL DEFAULT '',
  `cat_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `cat_desc` varchar(255) NOT NULL DEFAULT '',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  `show_in_nav` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_article_cat`
--

INSERT INTO `ecs_article_cat` (`cat_id`, `cat_name`, `cat_type`, `keywords`, `cat_desc`, `sort_order`, `show_in_nav`, `parent_id`) VALUES
(1, '系统分类', 2, '', '系统保留分类', 50, 0, 0),
(2, '网店信息', 3, '', '网店信息分类', 50, 0, 1),
(3, '网店帮助分类', 4, '', '网店帮助分类', 50, 0, 1),
(4, '购物指南：', 5, '', '', 50, 0, 3),
(5, '支付方式：', 5, '', '', 50, 0, 3),
(6, '售后服务：', 5, '', '', 50, 0, 3);

-- --------------------------------------------------------

--
-- 表的结构 `ecs_attribute`
--

CREATE TABLE IF NOT EXISTS `ecs_attribute` (
  `attr_id` smallint(5) unsigned NOT NULL,
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attr_name` varchar(60) NOT NULL DEFAULT '',
  `attr_input_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `attr_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `attr_values` text NOT NULL,
  `attr_index` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_linked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `attr_group` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_attribute`
--

INSERT INTO `ecs_attribute` (`attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group`) VALUES
(1, 1, '尺码', 0, 1, '', 0, 0, 0, 0),
(2, 1, '颜色', 0, 1, '', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ecs_auction_log`
--

CREATE TABLE IF NOT EXISTS `ecs_auction_log` (
  `log_id` mediumint(8) unsigned NOT NULL,
  `act_id` mediumint(8) unsigned NOT NULL,
  `bid_user` mediumint(8) unsigned NOT NULL,
  `bid_price` decimal(10,2) unsigned NOT NULL,
  `bid_time` int(10) unsigned NOT NULL,
  `address_id` int(10) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_auction_log`
--

INSERT INTO `ecs_auction_log` (`log_id`, `act_id`, `bid_user`, `bid_price`, `bid_time`, `address_id`) VALUES
(1, 2, 2, '110.00', 1502855041, 17),
(2, 2, 6, '0.00', 1502869287, 30),
(3, 3, 6, '99999999.99', 1502869626, 30),
(4, 3, 2, '99999999.99', 1502869694, 17),
(5, 3, 6, '99999999.99', 1502869732, 30),
(6, 3, 2, '99999999.99', 1502869776, 17),
(7, 4, 2, '110.00', 1502869990, 17),
(8, 4, 6, '120.00', 1502870033, 30),
(9, 3, 6, '99999999.99', 1502871510, 30);

-- --------------------------------------------------------

--
-- 表的结构 `ecs_auto_manage`
--

CREATE TABLE IF NOT EXISTS `ecs_auto_manage` (
  `item_id` mediumint(8) NOT NULL,
  `type` varchar(10) NOT NULL,
  `starttime` int(10) NOT NULL,
  `endtime` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_auto_manage`
--

INSERT INTO `ecs_auto_manage` (`item_id`, `type`, `starttime`, `endtime`) VALUES
(4, 'goods', 0, 1502870400);

-- --------------------------------------------------------

--
-- 表的结构 `ecs_back_goods`
--

CREATE TABLE IF NOT EXISTS `ecs_back_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL,
  `back_id` mediumint(8) unsigned DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product_sn` varchar(60) DEFAULT NULL,
  `goods_name` varchar(120) DEFAULT NULL,
  `brand_name` varchar(60) DEFAULT NULL,
  `goods_sn` varchar(60) DEFAULT NULL,
  `is_real` tinyint(1) unsigned DEFAULT '0',
  `send_number` smallint(5) unsigned DEFAULT '0',
  `goods_attr` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecs_back_order`
--

CREATE TABLE IF NOT EXISTS `ecs_back_order` (
  `back_id` mediumint(8) unsigned NOT NULL,
  `delivery_sn` varchar(20) NOT NULL,
  `order_sn` varchar(20) NOT NULL,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `invoice_no` varchar(50) DEFAULT NULL,
  `add_time` int(10) unsigned DEFAULT '0',
  `shipping_id` tinyint(3) unsigned DEFAULT '0',
  `shipping_name` varchar(120) DEFAULT NULL,
  `user_id` mediumint(8) unsigned DEFAULT '0',
  `action_user` varchar(30) DEFAULT NULL,
  `consignee` varchar(60) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `country` smallint(5) unsigned DEFAULT '0',
  `province` smallint(5) unsigned DEFAULT '0',
  `city` smallint(5) unsigned DEFAULT '0',
  `district` smallint(5) unsigned DEFAULT '0',
  `sign_building` varchar(120) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `zipcode` varchar(60) DEFAULT NULL,
  `tel` varchar(60) DEFAULT NULL,
  `mobile` varchar(60) DEFAULT NULL,
  `best_time` varchar(120) DEFAULT NULL,
  `postscript` varchar(255) DEFAULT NULL,
  `how_oos` varchar(120) DEFAULT NULL,
  `insure_fee` decimal(10,2) unsigned DEFAULT '0.00',
  `shipping_fee` decimal(10,2) unsigned DEFAULT '0.00',
  `update_time` int(10) unsigned DEFAULT '0',
  `suppliers_id` smallint(5) DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `return_time` int(10) unsigned DEFAULT '0',
  `agency_id` smallint(5) unsigned DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecs_bonus_type`
--

CREATE TABLE IF NOT EXISTS `ecs_bonus_type` (
  `type_id` smallint(5) unsigned NOT NULL,
  `type_name` varchar(60) NOT NULL DEFAULT '',
  `type_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `send_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `min_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `max_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `send_start_date` int(11) NOT NULL DEFAULT '0',
  `send_end_date` int(11) NOT NULL DEFAULT '0',
  `use_start_date` int(11) NOT NULL DEFAULT '0',
  `use_end_date` int(11) NOT NULL DEFAULT '0',
  `min_goods_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecs_booking_goods`
--

CREATE TABLE IF NOT EXISTS `ecs_booking_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `email` varchar(60) NOT NULL DEFAULT '',
  `link_man` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_desc` varchar(255) NOT NULL DEFAULT '',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `booking_time` int(10) unsigned NOT NULL DEFAULT '0',
  `is_dispose` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dispose_user` varchar(30) NOT NULL DEFAULT '',
  `dispose_time` int(10) unsigned NOT NULL DEFAULT '0',
  `dispose_note` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecs_brand`
--

CREATE TABLE IF NOT EXISTS `ecs_brand` (
  `brand_id` smallint(5) unsigned NOT NULL,
  `brand_name` varchar(60) NOT NULL DEFAULT '',
  `brand_logo` varchar(80) NOT NULL DEFAULT '',
  `brand_desc` text NOT NULL,
  `site_url` varchar(255) NOT NULL DEFAULT '',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecs_callback_status`
--

CREATE TABLE IF NOT EXISTS `ecs_callback_status` (
  `id` bigint(20) unsigned NOT NULL,
  `msg_id` varchar(50) DEFAULT '',
  `type` varchar(100) DEFAULT NULL,
  `status` enum('true','false','running') DEFAULT 'false',
  `type_id` varchar(50) DEFAULT NULL,
  `date_time` int(11) DEFAULT NULL,
  `data` text,
  `disabled` enum('true','false') DEFAULT 'false',
  `times` tinyint(4) DEFAULT '0',
  `method` varchar(100) NOT NULL,
  `http_type` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecs_card`
--

CREATE TABLE IF NOT EXISTS `ecs_card` (
  `card_id` tinyint(3) unsigned NOT NULL,
  `card_name` varchar(120) NOT NULL DEFAULT '',
  `card_img` varchar(255) NOT NULL DEFAULT '',
  `card_fee` decimal(6,2) unsigned NOT NULL DEFAULT '0.00',
  `free_money` decimal(6,2) unsigned NOT NULL DEFAULT '0.00',
  `card_desc` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecs_cart`
--

CREATE TABLE IF NOT EXISTS `ecs_cart` (
  `rec_id` mediumint(8) unsigned NOT NULL,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_id` char(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `market_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_attr` text NOT NULL,
  `is_real` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rec_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_gift` smallint(5) unsigned NOT NULL DEFAULT '0',
  `is_shipping` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `can_handsel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `goods_attr_id` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=289 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_cart`
--

INSERT INTO `ecs_cart` (`rec_id`, `user_id`, `session_id`, `goods_id`, `goods_sn`, `product_id`, `goods_name`, `market_price`, `goods_price`, `goods_number`, `goods_attr`, `is_real`, `extension_code`, `parent_id`, `rec_type`, `is_gift`, `is_shipping`, `can_handsel`, `goods_attr_id`) VALUES
(284, 0, '1a29dff7268609a10c6f4f6496f054ac', 7, 'ECS000007', 0, '手机7', '200.00', '180.00', 2, '颜色:墨绿色[50] \n尺码:L 尺码标准[30] \n', 1, '', 0, 0, 0, 0, 0, '16,9'),
(285, 0, '1a29dff7268609a10c6f4f6496f054ac', 4, 'ECS000004', 0, '手机4', '465.60', '388.00', 5, '', 1, '', 0, 0, 0, 0, 0, 'undefined'),
(286, 0, '1a29dff7268609a10c6f4f6496f054ac', 7, 'ECS000007', 0, '手机7', '340.00', '320.00', 2, '颜色:深褐色[120] \n尺码:M 尺码标准[100] \n', 1, '', 0, 0, 0, 0, 0, '15,6'),
(287, 0, '1a29dff7268609a10c6f4f6496f054ac', 7, 'ECS000007', 0, '手机7', '270.00', '250.00', 1, '颜色:深褐色[120] \n尺码:L 尺码标准[30] \n', 1, '', 0, 0, 0, 0, 0, '16,6'),
(288, 0, '1a29dff7268609a10c6f4f6496f054ac', 7, 'ECS000007', 0, '手机7', '220.00', '200.00', 2, '颜色:墨绿色[50] \n尺码:XL 尺码标准[50] \n', 1, '', 0, 0, 0, 0, 0, '17,9');

-- --------------------------------------------------------

--
-- 表的结构 `ecs_category`
--

CREATE TABLE IF NOT EXISTS `ecs_category` (
  `cat_id` smallint(5) unsigned NOT NULL,
  `cat_name` varchar(90) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `cat_desc` varchar(255) NOT NULL DEFAULT '',
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sort_order` tinyint(1) unsigned NOT NULL DEFAULT '50',
  `template_file` varchar(50) NOT NULL DEFAULT '',
  `measure_unit` varchar(15) NOT NULL DEFAULT '',
  `show_in_nav` tinyint(1) NOT NULL DEFAULT '0',
  `style` varchar(150) NOT NULL,
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `grade` tinyint(4) NOT NULL DEFAULT '0',
  `filter_attr` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_category`
--

INSERT INTO `ecs_category` (`cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr`) VALUES
(1, '1大类', '', '', 0, 50, '', '', 0, '', 1, 0, ''),
(2, '2小类', '', '', 1, 50, '', '', 0, '', 1, 0, ''),
(3, '3小分类', '', '', 2, 50, '', '', 0, '', 1, 0, ''),
(4, '周边商品', '', '', 3, 50, '', '', 0, '', 1, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `ecs_cat_recommend`
--

CREATE TABLE IF NOT EXISTS `ecs_cat_recommend` (
  `cat_id` smallint(5) NOT NULL,
  `recommend_type` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecs_cert`
--

CREATE TABLE IF NOT EXISTS `ecs_cert` (
  `id` int(10) unsigned NOT NULL,
  `config_id` tinyint(4) NOT NULL COMMENT '配置id',
  `file` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecs_coincidence`
--

CREATE TABLE IF NOT EXISTS `ecs_coincidence` (
  `type_id` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `time` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecs_collect_goods`
--

CREATE TABLE IF NOT EXISTS `ecs_collect_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `is_attention` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_collect_goods`
--

INSERT INTO `ecs_collect_goods` (`rec_id`, `user_id`, `goods_id`, `add_time`, `is_attention`) VALUES
(24, 4, 12, 1502249913, 0),
(11, 4, 3, 1495604559, 0),
(28, 6, 0, 1502871410, 0),
(14, 4, 9, 1496803774, 0),
(12, 4, 5, 1495604774, 0),
(29, 2, 2, 1503053675, 0),
(15, 4, 7, 1496803934, 0),
(16, 4, 4, 1496804264, 0),
(17, 4, 10, 1496826436, 0),
(18, 5, 9, 1497269429, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ecs_comment`
--

CREATE TABLE IF NOT EXISTS `ecs_comment` (
  `comment_id` int(10) unsigned NOT NULL,
  `comment_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `id_value` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `email` varchar(60) NOT NULL DEFAULT '',
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `comment_rank` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `ip_address` varchar(15) NOT NULL DEFAULT '',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecs_config`
--

CREATE TABLE IF NOT EXISTS `ecs_config` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(50) NOT NULL,
  `config` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecs_crons`
--

CREATE TABLE IF NOT EXISTS `ecs_crons` (
  `cron_id` tinyint(3) unsigned NOT NULL,
  `cron_code` varchar(20) NOT NULL,
  `cron_name` varchar(120) NOT NULL,
  `cron_desc` text,
  `cron_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cron_config` text NOT NULL,
  `thistime` int(10) NOT NULL DEFAULT '0',
  `nextime` int(10) NOT NULL,
  `day` tinyint(2) NOT NULL,
  `week` varchar(1) NOT NULL,
  `hour` varchar(2) NOT NULL,
  `minute` varchar(255) NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `run_once` tinyint(1) NOT NULL DEFAULT '0',
  `allow_ip` varchar(100) NOT NULL DEFAULT '',
  `alow_files` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecs_delivery_goods`
--

CREATE TABLE IF NOT EXISTS `ecs_delivery_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL,
  `delivery_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product_id` mediumint(8) unsigned DEFAULT '0',
  `product_sn` varchar(60) DEFAULT NULL,
  `goods_name` varchar(120) DEFAULT NULL,
  `brand_name` varchar(60) DEFAULT NULL,
  `goods_sn` varchar(60) DEFAULT NULL,
  `is_real` tinyint(1) unsigned DEFAULT '0',
  `extension_code` varchar(30) DEFAULT NULL,
  `parent_id` mediumint(8) unsigned DEFAULT '0',
  `send_number` smallint(5) unsigned DEFAULT '0',
  `goods_attr` text
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_delivery_goods`
--

INSERT INTO `ecs_delivery_goods` (`rec_id`, `delivery_id`, `goods_id`, `product_id`, `product_sn`, `goods_name`, `brand_name`, `goods_sn`, `is_real`, `extension_code`, `parent_id`, `send_number`, `goods_attr`) VALUES
(1, 1, 7, 0, '', '手机7', '', 'ECS000007', 1, NULL, 0, 3, '颜色:深褐色[120] \n尺码:XL 尺码标准[50] \n'),
(2, 2, 7, 0, '', '手机7', '', 'ECS000007', 1, NULL, 0, 1, '颜色:深褐色[120] \n尺码:XL 尺码标准[50] \n'),
(3, 3, 5, 0, '', '手机商品5', '', 'ECS000005', 1, NULL, 0, 1, ''),
(4, 4, 7, 0, '', '手机7', '', 'ECS000007', 1, NULL, 0, 1, '颜色:深褐色[120] \n尺码:L 尺码标准[30] \n'),
(5, 5, 7, 0, '', '手机7', '', 'ECS000007', 1, NULL, 0, 1, '颜色:深褐色[120] \n尺码:M 尺码标准[100] \n'),
(6, 6, 2, 0, '', '手机2', '', 'ECS000002', 1, NULL, 0, 1, ''),
(7, 7, 12, 0, '', '商品商品10', '', 'ECS000012', 1, NULL, 0, 6, ''),
(8, 8, 13, 0, '', '限时0629', '', 'ECS000013', 1, NULL, 0, 4, '');

-- --------------------------------------------------------

--
-- 表的结构 `ecs_delivery_order`
--

CREATE TABLE IF NOT EXISTS `ecs_delivery_order` (
  `delivery_id` mediumint(8) unsigned NOT NULL,
  `delivery_sn` varchar(20) NOT NULL,
  `order_sn` varchar(20) NOT NULL,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `invoice_no` varchar(50) DEFAULT NULL,
  `add_time` int(10) unsigned DEFAULT '0',
  `shipping_id` tinyint(3) unsigned DEFAULT '0',
  `shipping_name` varchar(120) DEFAULT NULL,
  `user_id` mediumint(8) unsigned DEFAULT '0',
  `action_user` varchar(30) DEFAULT NULL,
  `consignee` varchar(60) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `country` smallint(5) unsigned DEFAULT '0',
  `province` smallint(5) unsigned DEFAULT '0',
  `city` smallint(5) unsigned DEFAULT '0',
  `district` smallint(5) unsigned DEFAULT '0',
  `sign_building` varchar(120) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `zipcode` varchar(60) DEFAULT NULL,
  `tel` varchar(60) DEFAULT NULL,
  `mobile` varchar(60) DEFAULT NULL,
  `best_time` varchar(120) DEFAULT NULL,
  `postscript` varchar(255) DEFAULT NULL,
  `how_oos` varchar(120) DEFAULT NULL,
  `insure_fee` decimal(10,2) unsigned DEFAULT '0.00',
  `shipping_fee` decimal(10,2) unsigned DEFAULT '0.00',
  `update_time` int(10) unsigned DEFAULT '0',
  `suppliers_id` smallint(5) DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `agency_id` smallint(5) unsigned DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_delivery_order`
--

INSERT INTO `ecs_delivery_order` (`delivery_id`, `delivery_sn`, `order_sn`, `order_id`, `invoice_no`, `add_time`, `shipping_id`, `shipping_name`, `user_id`, `action_user`, `consignee`, `address`, `country`, `province`, `city`, `district`, `sign_building`, `email`, `zipcode`, `tel`, `mobile`, `best_time`, `postscript`, `how_oos`, `insure_fee`, `shipping_fee`, `update_time`, `suppliers_id`, `status`, `agency_id`) VALUES
(1, '20170518153167401', '2017051890476', 8, '', 1495089701, 1, '顺丰速运', 2, 'admin', '张颜', '顾村镇宝安公路2003号', 1, 10, 109, 1219, '', '', '', '18896525512', '', '', '', '等待所有商品备齐后再发', '0.00', '0.00', 1495092704, 0, 0, 0),
(2, '20170518155822121', '2017051810620', 7, '', 1495089586, 1, '顺丰速运', 2, 'admin', '张颜', '顾村镇宝安公路2003号', 1, 10, 109, 1219, '', '', '', '18896525512', '', '', '', '等待所有商品备齐后再发', '0.00', '0.00', 1495094292, 0, 0, 0),
(3, '20170727115712922', '2017072735595', 48, '', 1501124099, 1, '顺丰速运', 4, 'admin', '11', '11', 1, 8, 94, 1054, '', '', '', '18896525512', '', '', '', '等待所有商品备齐后再发', '0.00', '30.00', 1501127867, 0, 0, 0),
(4, '20170809103657832', '2017080969576', 54, '', 1502245910, 1, '顺丰速运', 4, 'admin', '12', '1212', 1, 6, 70, 853, '', '', '', '18896525512', '', '', '', '等待所有商品备齐后再发', '0.00', '30.00', 1502246182, 0, 0, 0),
(5, '20170809110862191', '2017080908190', 53, '', 1502245837, 1, '顺丰速运', 4, 'admin', '张颜', '111', 1, 10, 109, 1225, '', '', '', '18896525512', '', '', '', '等待所有商品备齐后再发', '0.00', '30.00', 1502248109, 0, 0, 0),
(6, '20170809115926811', '2017080872178', 51, '', 1502173722, 1, '顺丰速运', 2, 'admin', '/efghh', 'fghg', 1, 24, 278, 2782, '', '', '', '13596542638', '', '', '', '等待所有商品备齐后再发', '0.00', '30.00', 1502251146, 0, 0, 0),
(7, '20170815122315858', '2017081515177', 55, '', 1502770972, 1, '顺丰速运', 4, 'admin', '12', '1212', 1, 6, 70, 853, '', '', '', '18896525512', '', '', '', '等待所有商品备齐后再发', '0.00', '15.00', 1502770996, 0, 0, 0),
(8, '20170815135538988', '2017081583790', 56, '', 1502776198, 1, '顺丰速运', 4, 'admin', '12', '1212', 1, 6, 70, 853, '', '', '', '18896525512', '', '', '', '等待所有商品备齐后再发', '0.00', '15.00', 1502776524, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ecs_device`
--

CREATE TABLE IF NOT EXISTS `ecs_device` (
  `user_id` int(11) NOT NULL,
  `device_id` varchar(200) NOT NULL COMMENT '设备id',
  `device_type` varchar(200) NOT NULL COMMENT '设备类型',
  `platform_type` varchar(200) NOT NULL COMMENT '平台类型',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '推送开关 0:关闭 1:开启 默认开启',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecs_email_list`
--

CREATE TABLE IF NOT EXISTS `ecs_email_list` (
  `id` mediumint(8) NOT NULL,
  `email` varchar(60) NOT NULL,
  `stat` tinyint(1) NOT NULL DEFAULT '0',
  `hash` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecs_email_sendlist`
--

CREATE TABLE IF NOT EXISTS `ecs_email_sendlist` (
  `id` mediumint(8) NOT NULL,
  `email` varchar(100) NOT NULL,
  `template_id` mediumint(8) NOT NULL,
  `email_content` text NOT NULL,
  `error` tinyint(1) NOT NULL DEFAULT '0',
  `pri` tinyint(10) NOT NULL,
  `last_send` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecs_error_log`
--

CREATE TABLE IF NOT EXISTS `ecs_error_log` (
  `id` int(10) NOT NULL,
  `info` varchar(255) NOT NULL,
  `file` varchar(100) NOT NULL,
  `time` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecs_exchange_goods`
--

CREATE TABLE IF NOT EXISTS `ecs_exchange_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `exchange_integral` int(10) unsigned NOT NULL DEFAULT '0',
  `is_exchange` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_exchange_goods`
--

INSERT INTO `ecs_exchange_goods` (`goods_id`, `exchange_integral`, `is_exchange`, `is_hot`) VALUES
(6, 500, 1, 1),
(2, 200, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `ecs_favourable_activity`
--

CREATE TABLE IF NOT EXISTS `ecs_favourable_activity` (
  `act_id` smallint(5) unsigned NOT NULL,
  `act_name` varchar(255) NOT NULL,
  `start_time` int(10) unsigned NOT NULL,
  `end_time` int(10) unsigned NOT NULL,
  `user_rank` varchar(255) NOT NULL,
  `act_range` tinyint(3) unsigned NOT NULL,
  `act_range_ext` varchar(255) NOT NULL,
  `min_amount` decimal(10,2) unsigned NOT NULL,
  `max_amount` decimal(10,2) unsigned NOT NULL,
  `act_type` tinyint(3) unsigned NOT NULL,
  `act_type_ext` decimal(10,2) unsigned NOT NULL,
  `gift` text NOT NULL,
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecs_feedback`
--

CREATE TABLE IF NOT EXISTS `ecs_feedback` (
  `msg_id` mediumint(8) unsigned NOT NULL,
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `user_email` varchar(60) NOT NULL DEFAULT '',
  `msg_title` varchar(200) NOT NULL DEFAULT '',
  `msg_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `msg_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `msg_content` text NOT NULL,
  `msg_time` int(10) unsigned NOT NULL DEFAULT '0',
  `message_img` varchar(255) NOT NULL DEFAULT '0',
  `order_id` int(11) unsigned NOT NULL DEFAULT '0',
  `msg_area` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecs_friend_link`
--

CREATE TABLE IF NOT EXISTS `ecs_friend_link` (
  `link_id` smallint(5) unsigned NOT NULL,
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_logo` varchar(255) NOT NULL DEFAULT '',
  `show_order` tinyint(3) unsigned NOT NULL DEFAULT '50'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_friend_link`
--

INSERT INTO `ecs_friend_link` (`link_id`, `link_name`, `link_url`, `link_logo`, `show_order`) VALUES
(1, 'ECSHOP 网上商店管理系统', 'http://www.ecshop.com/', 'http://www.ecshop.com/images/logo/ecshop_logo.gif', 50),
(2, '买否网', 'http://www.maifou.net/', '', 51),
(3, '免费开独立网店', 'http://www.wdwd.com/', '', 52);

-- --------------------------------------------------------

--
-- 表的结构 `ecs_goods`
--

CREATE TABLE IF NOT EXISTS `ecs_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL,
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `goods_name_style` varchar(60) NOT NULL DEFAULT '+',
  `click_count` int(10) unsigned NOT NULL DEFAULT '0',
  `brand_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `provider_name` varchar(100) NOT NULL DEFAULT '',
  `goods_number` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_weight` decimal(10,3) unsigned NOT NULL DEFAULT '0.000',
  `market_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `virtual_sales` smallint(5) unsigned NOT NULL DEFAULT '0',
  `shop_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `promote_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `promote_start_date` int(11) unsigned NOT NULL DEFAULT '0',
  `promote_end_date` int(11) unsigned NOT NULL DEFAULT '0',
  `warn_number` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `goods_brief` varchar(255) NOT NULL DEFAULT '',
  `goods_desc` text NOT NULL,
  `goods_thumb` varchar(255) NOT NULL DEFAULT '',
  `goods_img` varchar(255) NOT NULL DEFAULT '',
  `original_img` varchar(255) NOT NULL DEFAULT '',
  `is_real` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `is_on_sale` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_alone_sale` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_shipping` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `integral` int(10) unsigned NOT NULL DEFAULT '0',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `sort_order` smallint(4) unsigned NOT NULL DEFAULT '100',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_best` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_new` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_promote` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bonus_type_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `last_update` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seller_note` varchar(255) NOT NULL DEFAULT '',
  `give_integral` int(11) NOT NULL DEFAULT '-1',
  `rank_integral` int(11) NOT NULL DEFAULT '-1',
  `suppliers_id` smallint(5) unsigned DEFAULT NULL,
  `is_check` tinyint(1) unsigned DEFAULT NULL,
  `is_vip` tinyint(1) DEFAULT '0' COMMENT '是否会员专享'
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_goods`
--

INSERT INTO `ecs_goods` (`goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `virtual_sales`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check`, `is_vip`) VALUES
(1, 4, 'ECS000000', '手机1', '+', 10, 0, '', 23424, '0.000', '480.00', 0, '400.00', '0.00', 0, 0, 1, '', '', '', 'images/201705/thumb_img/1_thumb_G_1495451688180.jpg', 'images/201705/goods_img/1_G_1495451688011.jpg', 'images/201705/source_img/1_G_1495451688948.jpg', 1, '', 1, 1, 0, 0, 1493176822, 100, 1, 0, 0, 0, 0, 0, 1495451688, 0, '', -1, -1, 0, NULL, 0),
(2, 4, 'ECS000002', '手机2', '+', 101, 0, '', 0, '0.000', '807.60', 0, '673.00', '0.00', 0, 0, 1, '', '', '', 'images/201705/thumb_img/2_thumb_G_1495451671505.jpg', 'images/201705/goods_img/2_G_1495451671906.jpg', 'images/201705/source_img/2_G_1495451671015.jpg', 1, '', 1, 1, 0, 0, 1493176858, 100, 0, 0, 0, 0, 0, 0, 1495451671, 0, '', -1, -1, 0, NULL, 0),
(3, 4, 'ECS000003', '手机3', '+', 175, 0, '', 0, '0.000', '118.80', 0, '99.00', '0.00', 0, 0, 1, '', '', '', 'images/201705/thumb_img/3_thumb_G_1495451654905.jpg', 'images/201705/goods_img/3_G_1495451654162.jpg', 'images/201705/source_img/3_G_1495451654574.jpg', 1, '', 1, 1, 0, 0, 1493176881, 100, 0, 0, 0, 1, 0, 0, 1495451654, 0, '', -1, -1, 0, NULL, 0),
(4, 4, 'ECS000004', '手机4', '+', 98, 0, '', 981, '0.000', '465.60', 0, '388.00', '0.00', 0, 0, 1, '', '', '', 'images/201705/thumb_img/4_thumb_G_1495451637145.jpg', 'images/201705/goods_img/4_G_1495451637036.jpg', 'images/201705/source_img/4_G_1495451637901.jpg', 1, '', 1, 1, 0, 0, 1502965140, 100, 0, 0, 0, 1, 0, 0, 1502965286, 0, '', 2, 2, 0, NULL, 0),
(5, 4, 'ECS000005', '手机商品5', '+', 86, 0, '', 0, '0.000', '360.00', 0, '300.00', '0.00', 0, 0, 1, '', '', '', 'images/201705/thumb_img/5_thumb_G_1495451620560.jpg', 'images/201705/goods_img/5_G_1495451620903.jpg', 'images/201705/source_img/5_G_1495451620931.jpg', 1, '', 1, 1, 0, 0, 1493176956, 100, 0, 0, 0, 1, 0, 0, 1495451620, 0, '', -1, -1, 0, NULL, 0),
(6, 4, 'ECS000006', '手机6', '+', 84, 0, '', 0, '0.000', '238.80', 0, '199.00', '0.00', 0, 0, 1, '', '', '', 'images/201705/thumb_img/6_thumb_G_1495451592059.jpg', 'images/201705/goods_img/6_G_1495451592258.jpg', 'images/201705/source_img/6_G_1495451592258.jpg', 1, '', 1, 1, 0, 0, 1493177018, 100, 0, 0, 0, 1, 0, 0, 1502961885, 0, '', -1, -1, 0, NULL, 0),
(7, 4, 'ECS000007', '手机7', '+', 216, 0, '', 2305, '0.000', '120.00', 0, '100.00', '0.00', 0, 0, 1, '', '', '<p><img src="/images/upload/Image/未标题-4.png" alt="" />&nbsp;<img src="/images/upload/Image/未标题-4.png" alt="" /><img src="/images/upload/Image/12.png" width="750" height="750" alt="" /></p>', 'images/201705/thumb_img/7_thumb_G_1495079656336.jpg', 'images/201705/goods_img/7_G_1495079656218.jpg', 'images/201705/source_img/7_G_1495079656908.png', 1, '', 1, 1, 0, 0, 1493177178, 100, 0, 1, 0, 1, 0, 0, 1495098731, 1, '', -1, -1, 0, NULL, 0),
(8, 4, 'ECS000008', '手机1', '+', 35, 0, '', 0, '0.000', '144.00', 0, '120.00', '0.00', 0, 0, 1, '', '', '', 'images/201705/thumb_img/8_thumb_G_1495453452543.jpg', 'images/201705/goods_img/8_G_1495453452963.jpg', 'images/201705/source_img/8_G_1495453452934.jpg', 1, '', 1, 1, 1, 1, 1495453380, 100, 0, 0, 0, 0, 0, 0, 1495508520, 0, '', -1, -1, 0, NULL, 0),
(9, 4, 'ECS000009', '测试商品052301', '+', 228, 0, '', 100, '0.000', '105.00', 0, '88.00', '0.00', 0, 0, 3, '很好 非常好 极好', '有有有有有有有有有有有有有有有有有有有有有', '<p>&nbsp;<img src="/images/upload/Image/3w28.png" alt="" width="28" height="28" /></p>\r\n<p>试一试</p>\r\n<p><img src="/images/upload/Image/3w28.png" alt="" width="28" height="28" /></p>\r\n<p><img src="/images/upload/Image/12.png" alt="" /></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><img src="/images/upload/Image/u=703987839,927265106&amp;fm=21&amp;gp=0.jpg" alt="" width="0" height="0" /></p>', 'images/201705/thumb_img/9_thumb_G_1495521609673.jpg', 'images/201705/goods_img/9_G_1495521609992.jpg', 'images/201705/source_img/9_G_1495521609116.jpg', 1, '', 1, 1, 0, 0, 1495520803, 100, 0, 0, 0, 0, 0, 0, 1497270676, 1, '', -1, -1, 0, NULL, 0),
(10, 4, 'ECS000010', '测试商品123321123321', '+', 198, 0, '', 0, '0.000', '27.00', 0, '23.00', '0.00', 0, 0, 1, '', '', '<p>&nbsp;</p>\r\n<embed id="xunlei_com_thunder_helper_plugin_d462f475-c18e-46be-bd10-327458d045bd" type="application/thunder_download_plugin" height="0" width="0"></embed>', 'images/201705/thumb_img/10_thumb_G_1495700579211.jpg', 'images/201705/goods_img/10_G_1495700579152.jpg', 'images/201705/source_img/10_G_1495700579055.jpg', 1, '', 1, 1, 0, 0, 1495700549, 100, 0, 0, 0, 0, 0, 0, 1502855693, 1, '', -1, -1, 0, NULL, 0),
(11, 4, '1111', '11', '+', 9, 0, '', 0, '0.000', '147879.60', 0, '123233.00', '0.00', 0, 0, 1, '', '', '', '', '', '', 1, '', 1, 1, 0, 1232, 1502962108, 100, 0, 0, 0, 0, 0, 0, 1498617156, 0, '', -1, -1, 0, NULL, 0),
(12, 4, 'ECS000012', '商品商品10', '+', 177, 0, '', 0, '0.000', '11.99', 0, '9.99', '0.00', 0, 0, 1, '', '', '<p>&nbsp;</p>\r\n<embed id="xunlei_com_thunder_helper_plugin_d462f475-c18e-46be-bd10-327458d045bd" type="application/thunder_download_plugin" width="0" height="0"></embed>', 'images/201706/thumb_img/12_thumb_G_1498621502807.jpg', 'https://timgsa.baidu.com/timg?image&amp;quality=80&amp;size=b9999_10000&amp;sec=1498631103292&amp;di=715d3ef437694e8d19add69af7baa520&amp;imgtype=0&amp;src=http%3A%2F%2Fandroid-wallpapers.25pp.com%2Ffs01%2F2014%2F09%2F30%2F0_3675c5ca51a2f5fec8f756217ea66d', 'https://timgsa.baidu.com/timg?image&amp;quality=80&amp;size=b9999_10000&amp;sec=1498631103292&amp;di=715d3ef437694e8d19add69af7baa520&amp;imgtype=0&amp;src=http%3A%2F%2Fandroid-wallpapers.25pp.com%2Ffs01%2F2014%2F09%2F30%2F0_3675c5ca51a2f5fec8f756217ea66d', 1, '', 1, 1, 1, 0, 1498617410, 100, 0, 0, 0, 0, 0, 0, 1502869024, 0, '', -1, -1, 0, NULL, 0),
(13, 4, 'ECS000013', '限时0629', '+', 183, 0, '', 0, '0.000', '2.40', 0, '2.00', '1.00', 1498550400, 1498636800, 1, '', '', '<p>&nbsp;</p>\r\n<embed id="xunlei_com_thunder_helper_plugin_d462f475-c18e-46be-bd10-327458d045bd" type="application/thunder_download_plugin" height="0" width="0"></embed>', 'images/201706/thumb_img/13_thumb_G_1498619665566.jpg', 'images/201706/goods_img/13_G_1498619665207.jpg', 'images/201706/source_img/13_G_1498619665493.png', 1, '', 1, 1, 0, 0, 1498619665, 100, 0, 0, 0, 0, 1, 0, 1502855690, 0, '', -1, -1, 0, NULL, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ecs_goods_activity`
--

CREATE TABLE IF NOT EXISTS `ecs_goods_activity` (
  `act_id` mediumint(8) unsigned NOT NULL,
  `act_name` varchar(255) NOT NULL,
  `act_desc` text NOT NULL,
  `act_type` tinyint(3) unsigned NOT NULL,
  `goods_id` mediumint(8) unsigned NOT NULL,
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_name` varchar(255) NOT NULL,
  `start_time` int(10) unsigned NOT NULL,
  `end_time` int(10) unsigned NOT NULL,
  `is_finished` tinyint(3) unsigned NOT NULL,
  `ext_info` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_goods_activity`
--

INSERT INTO `ecs_goods_activity` (`act_id`, `act_name`, `act_desc`, `act_type`, `goods_id`, `product_id`, `goods_name`, `start_time`, `end_time`, `is_finished`, `ext_info`) VALUES
(1, '112312', '1231313', 2, 10, 0, '测试商品123321123321', 1498003200, 1500336000, 0, 'a:5:{s:7:"deposit";d:0;s:11:"start_price";d:1;s:9:"end_price";i:0;s:9:"amplitude";d:1;s:6:"no_top";i:1;}'),
(2, '121', '121', 2, 5, 0, '手机商品5', 1500969600, 1517212800, 0, 'a:5:{s:7:"deposit";d:50;s:11:"start_price";d:100;s:9:"end_price";i:0;s:9:"amplitude";d:10;s:6:"no_top";i:1;}'),
(3, 'hhhhhhhhhhh', 'hhhhhhhhhhhhhh', 2, 13, 0, '限时0629', 1502820000, 1503100800, 0, 'a:5:{s:7:"deposit";d:0;s:11:"start_price";d:100;s:9:"end_price";i:0;s:9:"amplitude";d:5;s:6:"no_top";i:1;}'),
(4, 'sadsda', 'sdaaaaaaaaaaaaaaaa', 2, 13, 0, '限时0629', 1502791200, 1503100800, 0, 'a:5:{s:7:"deposit";d:0;s:11:"start_price";d:100;s:9:"end_price";i:0;s:9:"amplitude";d:10;s:6:"no_top";i:1;}');

-- --------------------------------------------------------

--
-- 表的结构 `ecs_goods_article`
--

CREATE TABLE IF NOT EXISTS `ecs_goods_article` (
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `article_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `admin_id` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecs_goods_attr`
--

CREATE TABLE IF NOT EXISTS `ecs_goods_attr` (
  `goods_attr_id` int(10) unsigned NOT NULL,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `attr_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attr_value` text NOT NULL,
  `attr_price` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_goods_attr`
--

INSERT INTO `ecs_goods_attr` (`goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price`) VALUES
(17, 7, 1, 'XL 尺码标准', '50'),
(16, 7, 1, 'L 尺码标准', '30'),
(15, 7, 1, 'M 尺码标准', '100'),
(14, 7, 1, '2XL 尺码标准', '80'),
(5, 7, 2, '深红色', '20'),
(6, 7, 2, '深褐色', '120'),
(7, 7, 2, '黑色', '80'),
(8, 7, 2, '天蓝色', '100'),
(9, 7, 2, '墨绿色', '50'),
(18, 9, 1, '尺码1', '1'),
(19, 9, 1, '尺码2', '2'),
(20, 9, 2, '颜色1', '1'),
(21, 9, 2, '颜色3', '3'),
(22, 9, 2, '颜色2', '2'),
(35, 10, 2, '尺码321', '3'),
(34, 10, 1, '尺码123', '3');

-- --------------------------------------------------------

--
-- 表的结构 `ecs_goods_cat`
--

CREATE TABLE IF NOT EXISTS `ecs_goods_cat` (
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_goods_cat`
--

INSERT INTO `ecs_goods_cat` (`goods_id`, `cat_id`) VALUES
(10, 4);

-- --------------------------------------------------------

--
-- 表的结构 `ecs_goods_gallery`
--

CREATE TABLE IF NOT EXISTS `ecs_goods_gallery` (
  `img_id` mediumint(8) unsigned NOT NULL,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `img_url` varchar(255) NOT NULL DEFAULT '',
  `img_desc` varchar(255) NOT NULL DEFAULT '',
  `thumb_url` varchar(255) NOT NULL DEFAULT '',
  `img_original` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_goods_gallery`
--

INSERT INTO `ecs_goods_gallery` (`img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original`) VALUES
(1, 2, 'images/201704/goods_img/2_P_1493176858963.png', '', 'images/201704/thumb_img/2_thumb_P_1493176858668.jpg', 'images/201704/source_img/2_P_1493176858722.png'),
(2, 3, 'images/201704/goods_img/3_P_1493176881649.png', '', 'images/201704/thumb_img/3_thumb_P_1493176881519.jpg', 'images/201704/source_img/3_P_1493176881096.png'),
(3, 4, 'images/201704/goods_img/4_P_1493176925107.png', '', 'images/201704/thumb_img/4_thumb_P_1493176925531.jpg', 'images/201704/source_img/4_P_1493176925840.png'),
(4, 5, 'images/201704/goods_img/5_P_1493176957789.png', '', 'images/201704/thumb_img/5_thumb_P_1493176957860.jpg', 'images/201704/source_img/5_P_1493176957526.png'),
(11, 6, 'images/201705/goods_img/6_P_1495089330561.png', '', 'images/201705/thumb_img/6_thumb_P_1495089330797.jpg', 'images/201705/source_img/6_P_1495089330882.png'),
(6, 3, 'images/201705/goods_img/3_P_1494900592595.png', '', 'images/201705/thumb_img/3_thumb_P_1494900592548.jpg', 'images/201705/source_img/3_P_1494900592578.png'),
(7, 3, 'images/201705/goods_img/3_P_1494901486251.jpg', '', 'images/201705/thumb_img/3_thumb_P_1494901486761.jpg', 'images/201705/source_img/3_P_1494901486321.jpg'),
(12, 5, 'images/201705/goods_img/5_P_1495089400788.png', '', 'images/201705/thumb_img/5_thumb_P_1495089400764.jpg', 'images/201705/source_img/5_P_1495089400630.png'),
(9, 7, 'images/201705/goods_img/7_P_1495079456332.png', '', 'images/201705/thumb_img/7_thumb_P_1495079456337.jpg', 'images/201705/source_img/7_P_1495079456571.png'),
(10, 7, 'images/201705/goods_img/7_P_1495079656539.png', '', 'images/201705/thumb_img/7_thumb_P_1495079656798.jpg', 'images/201705/source_img/7_P_1495079656713.png'),
(13, 6, 'images/201705/goods_img/6_P_1495451593618.jpg', '', 'images/201705/thumb_img/6_thumb_P_1495451593112.jpg', 'images/201705/source_img/6_P_1495451593448.jpg'),
(14, 5, 'images/201705/goods_img/5_P_1495451621079.jpg', '', 'images/201705/thumb_img/5_thumb_P_1495451621190.jpg', 'images/201705/source_img/5_P_1495451621590.jpg'),
(15, 4, 'images/201705/goods_img/4_P_1495451638850.jpg', '', 'images/201705/thumb_img/4_thumb_P_1495451638897.jpg', 'images/201705/source_img/4_P_1495451637484.jpg'),
(16, 3, 'images/201705/goods_img/3_P_1495451654632.jpg', '', 'images/201705/thumb_img/3_thumb_P_1495451655434.jpg', 'images/201705/source_img/3_P_1495451654105.jpg'),
(17, 2, 'images/201705/goods_img/2_P_1495451671175.jpg', '', 'images/201705/thumb_img/2_thumb_P_1495451671230.jpg', 'images/201705/source_img/2_P_1495451671729.jpg'),
(18, 1, 'images/201705/goods_img/1_P_1495451688503.jpg', '', 'images/201705/thumb_img/1_thumb_P_1495451688338.jpg', 'images/201705/source_img/1_P_1495451688872.jpg'),
(19, 8, 'images/201705/goods_img/8_P_1495453380353.jpg', '', 'images/201705/thumb_img/8_thumb_P_1495453380195.jpg', 'images/201705/source_img/8_P_1495453380896.jpg'),
(20, 8, 'images/201705/goods_img/8_P_1495453452886.jpg', '', 'images/201705/thumb_img/8_thumb_P_1495453452928.jpg', 'images/201705/source_img/8_P_1495453452011.jpg'),
(21, 9, 'images/201705/goods_img/9_P_1495520803964.jpg', '', 'images/201705/thumb_img/9_thumb_P_1495520803895.jpg', 'images/201705/source_img/9_P_1495520803320.jpg'),
(22, 9, 'images/201705/goods_img/9_P_1495521609181.jpg', '', 'images/201705/thumb_img/9_thumb_P_1495521609201.jpg', 'images/201705/source_img/9_P_1495521609408.jpg'),
(23, 10, 'images/201705/goods_img/10_P_1495700579491.jpg', '', 'images/201705/thumb_img/10_thumb_P_1495700579666.jpg', 'images/201705/source_img/10_P_1495700579612.jpg'),
(24, 12, 'images/201706/goods_img/12_P_1498617410380.jpg', '', 'images/201706/thumb_img/12_thumb_P_1498617410007.jpg', 'images/201706/source_img/12_P_1498617410192.jpg'),
(25, 13, 'images/201706/goods_img/13_P_1498619665357.png', '', 'images/201706/thumb_img/13_thumb_P_1498619665475.jpg', 'images/201706/source_img/13_P_1498619665398.png'),
(26, 12, 'https://timgsa.baidu.com/timg?image&amp;quality=80&amp;size=b9999_10000&amp;sec=1498631103292&amp;di=715d3ef437694e8d19add69af7baa520&amp;imgtype=0&amp;src=http%3A%2F%2Fandroid-wallpapers.25pp.com%2Ffs01%2F2014%2F09%2F30%2F0_3675c5ca51a2f5fec8f756217ea66d', '', 'images/201706/thumb_img/12_thumb_P_1498621502618.jpg', 'https://timgsa.baidu.com/timg?image&amp;quality=80&amp;size=b9999_10000&amp;sec=1498631103292&amp;di=715d3ef437694e8d19add69af7baa520&amp;imgtype=0&amp;src=http%3A%2F%2Fandroid-wallpapers.25pp.com%2Ffs01%2F2014%2F09%2F30%2F0_3675c5ca51a2f5fec8f756217ea66d');

-- --------------------------------------------------------

--
-- 表的结构 `ecs_goods_type`
--

CREATE TABLE IF NOT EXISTS `ecs_goods_type` (
  `cat_id` smallint(5) unsigned NOT NULL,
  `cat_name` varchar(60) NOT NULL DEFAULT '',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `attr_group` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_goods_type`
--

INSERT INTO `ecs_goods_type` (`cat_id`, `cat_name`, `enabled`, `attr_group`) VALUES
(1, '商品规格', 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `ecs_group_goods`
--

CREATE TABLE IF NOT EXISTS `ecs_group_goods` (
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `admin_id` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecs_keywords`
--

CREATE TABLE IF NOT EXISTS `ecs_keywords` (
  `date` date NOT NULL DEFAULT '0000-00-00',
  `searchengine` varchar(20) NOT NULL DEFAULT '',
  `keyword` varchar(90) NOT NULL DEFAULT '',
  `count` mediumint(8) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_keywords`
--

INSERT INTO `ecs_keywords` (`date`, `searchengine`, `keyword`, `count`) VALUES
('2017-05-10', 'ecshop', 'g', 1),
('2017-05-14', 'ecshop', '1', 3),
('2017-05-16', 'ecshop', 'f', 1),
('2017-05-16', 'ecshop', '12312', 1),
('2017-05-16', 'ecshop', '手机', 1),
('2017-05-18', 'ecshop', '手机', 1),
('2017-05-22', 'ecshop', '手机', 3),
('2017-05-24', 'ecshop', '手机', 4),
('2017-05-24', 'ecshop', 'shou', 1),
('2017-05-26', 'ecshop', '手机', 6),
('2017-06-08', 'ecshop', '手机', 1),
('2017-06-15', 'ecshop', 'xx', 1),
('2017-06-15', 'ecshop', '2', 1),
('2017-08-01', 'ecshop', '限时', 5),
('2017-08-16', 'ecshop', ',777777', 3),
('2017-08-16', 'ecshop', '限时0629', 2),
('2017-08-16', 'ecshop', '限时062', 2),
('2017-08-16', 'ecshop', '10', 9),
('2017-08-16', 'ecshop', '12', 3),
('2017-08-16', 'ecshop', '23', 1),
('2017-08-16', 'ecshop', '商品', 1),
('2017-08-16', 'ecshop', '商品1', 2),
('2017-08-16', 'ecshop', 'hhhh', 1),
('2017-08-16', 'ecshop', 'yyyy', 1),
('2017-08-16', 'ecshop', 'retre', 1),
('2017-08-16', 'ecshop', 'fgfd', 1),
('2017-08-17', 'ecshop', '--&gt;\\\\\\''\\&quot;&gt;&lt;H1&gt;X5S@HERE&lt;/H1&gt;', 2),
('2017-08-17', 'ecshop', '88952634', 2),
('2017-08-17', 'ecshop', '88952634\\\\\\''`\\&quot;(', 2),
('2017-08-17', 'ecshop', '88952634-0', 1),
('2017-08-17', 'ecshop', '88952634s3', 1),
('2017-08-17', 'ecshop', '88952634\\\\\\''+\\\\\\''', 1),
('2017-08-17', 'ecshop', '88952634\\\\\\''', 2),
('2017-08-17', 'ecshop', '88952634\\\\\\''||\\\\\\''', 1),
('2017-08-17', 'ecshop', '88952634&lt;alert(88952634)&gt;', 1),
('2017-08-18', 'ecshop', '1', 1),
('2017-08-21', 'ecshop', '1111', 8),
('2017-08-21', 'ecshop', '手机', 2),
('2017-08-25', 'ecshop', '1', 7),
('2017-08-25', 'ecshop', '10', 3);

-- --------------------------------------------------------

--
-- 表的结构 `ecs_link_goods`
--

CREATE TABLE IF NOT EXISTS `ecs_link_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `link_goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `is_double` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `admin_id` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecs_mail_templates`
--

CREATE TABLE IF NOT EXISTS `ecs_mail_templates` (
  `template_id` tinyint(1) unsigned NOT NULL,
  `template_code` varchar(30) NOT NULL DEFAULT '',
  `is_html` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `template_subject` varchar(200) NOT NULL DEFAULT '',
  `template_content` text NOT NULL,
  `last_modify` int(10) unsigned NOT NULL DEFAULT '0',
  `last_send` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_mail_templates`
--

INSERT INTO `ecs_mail_templates` (`template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type`) VALUES
(1, 'send_password', 1, '密码找回', '{$user_name}您好！<br>\n<br>\n您已经进行了密码重置的操作，请点击以下链接(或者复制到您的浏览器):<br>\n<br>\n<a href="{$reset_email}" target="_blank">{$reset_email}</a><br>\n<br>\n以确认您的新密码重置操作！<br>\n<br>\n{$shop_name}<br>\n{$send_date}', 1194824789, 0, 'template'),
(2, 'order_confirm', 0, '订单确认通知', '亲爱的{$order.consignee}，你好！ \n\n我们已经收到您于 {$order.formated_add_time} 提交的订单，该订单编号为：{$order.order_sn} 请记住这个编号以便日后的查询。\n\n{$shop_name}\n{$sent_date}\n\n\n', 1158226370, 0, 'template'),
(3, 'deliver_notice', 1, '发货通知', '亲爱的{$order.consignee}。你好！</br></br>\n\n您的订单{$order.order_sn}已于{$send_time}按照您预定的配送方式给您发货了。</br>\n</br>\n{if $order.invoice_no}发货单号是{$order.invoice_no}。</br>{/if}\n</br>\n在您收到货物之后请点击下面的链接确认您已经收到货物：</br>\n<a href="{$confirm_url}" target="_blank">{$confirm_url}</a></br></br>\n如果您还没有收到货物可以点击以下链接给我们留言：</br></br>\n<a href="{$send_msg_url}" target="_blank">{$send_msg_url}</a></br>\n<br>\n再次感谢您对我们的支持。欢迎您的再次光临。 <br>\n<br>\n{$shop_name} </br>\n{$send_date}', 1194823291, 0, 'template'),
(4, 'order_cancel', 0, '订单取消', '亲爱的{$order.consignee}，你好！ \n\n您的编号为：{$order.order_sn}的订单已取消。\n\n{$shop_name}\n{$send_date}', 1156491130, 0, 'template'),
(5, 'order_invalid', 0, '订单无效', '亲爱的{$order.consignee}，你好！\n\n您的编号为：{$order.order_sn}的订单无效。\n\n{$shop_name}\n{$send_date}', 1156491164, 0, 'template'),
(6, 'send_bonus', 0, '发红包', '亲爱的{$user_name}您好！\n\n恭喜您获得了{$count}个红包，金额{if $count > 1}分别{/if}为{$money}\n\n{$shop_name}\n{$send_date}\n', 1156491184, 0, 'template'),
(7, 'group_buy', 1, '团购商品', '亲爱的{$consignee}，您好！<br>\n<br>\n您于{$order_time}在本店参加团购商品活动，所购买的商品名称为：{$goods_name}，数量：{$goods_number}，订单号为：{$order_sn}，订单金额为：{$order_amount}<br>\n<br>\n此团购商品现在已到结束日期，并达到最低价格，您现在可以对该订单付款。<br>\n<br>\n请点击下面的链接：<br>\n<a href="{$shop_url}" target="_blank">{$shop_url}</a><br>\n<br>\n请尽快登录到用户中心，查看您的订单详情信息。 <br>\n<br>\n{$shop_name} <br>\n<br>\n{$send_date}', 1194824668, 0, 'template'),
(8, 'register_validate', 1, '邮件验证', '{$user_name}您好！<br><br>\r\n\r\n这封邮件是 {$shop_name} 发送的。你收到这封邮件是为了验证你注册邮件地址是否有效。如果您已经通过验证了，请忽略这封邮件。<br>\r\n请点击以下链接(或者复制到您的浏览器)来验证你的邮件地址:<br>\r\n<a href="{$validate_email}" target="_blank">{$validate_email}</a><br><br>\r\n\r\n{$shop_name}<br>\r\n{$send_date}', 1162201031, 0, 'template'),
(9, 'virtual_card', 0, '虚拟卡片', '亲爱的{$order.consignee}\r\n你好！您的订单{$order.order_sn}中{$goods.goods_name} 商品的详细信息如下:\r\n{foreach from=$virtual_card item=card}\r\n{if $card.card_sn}卡号：{$card.card_sn}{/if}{if $card.card_password}卡片密码：{$card.card_password}{/if}{if $card.end_date}截至日期：{$card.end_date}{/if}\r\n{/foreach}\r\n再次感谢您对我们的支持。欢迎您的再次光临。\r\n\r\n{$shop_name} \r\n{$send_date}', 1162201031, 0, 'template'),
(10, 'attention_list', 0, '关注商品', '亲爱的{$user_name}您好~\n\n您关注的商品 : {$goods_name} 最近已经更新,请您查看最新的商品信息\n\n{$goods_url}\r\n\r\n{$shop_name} \r\n{$send_date}', 1183851073, 0, 'template'),
(11, 'remind_of_new_order', 0, '新订单通知', '亲爱的店长，您好：\n   快来看看吧，又有新订单了。\n    订单号:{$order.order_sn} \n 订单金额:{$order.order_amount}，\n 用户购买商品:{foreach from=$goods_list item=goods_data}{$goods_data.goods_name}(货号:{$goods_data.goods_sn})    {/foreach} \n\n 收货人:{$order.consignee}， \n 收货人地址:{$order.address}，\n 收货人电话:{$order.tel} {$order.mobile}, \n 配送方式:{$order.shipping_name}(费用:{$order.shipping_fee}), \n 付款方式:{$order.pay_name}(费用:{$order.pay_fee})。\n\n               系统提醒\n               {$send_date}', 1196239170, 0, 'template'),
(12, 'goods_booking', 1, '缺货回复', '亲爱的{$user_name}。你好！</br></br>{$dispose_note}</br></br>您提交的缺货商品链接为</br></br><a href="{$goods_link}" target="_blank">{$goods_name}</a></br><br>{$shop_name} </br>{$send_date}', 0, 0, 'template'),
(13, 'user_message', 1, '留言回复', '亲爱的{$user_name}。你好！</br></br>对您的留言：</br>{$message_content}</br></br>店主作了如下回复：</br>{$message_note}</br></br>您可以随时回到店中和店主继续沟通。</br>{$shop_name}</br>{$send_date}', 0, 0, 'template'),
(14, 'recomment', 1, '用户评论回复', '亲爱的{$user_name}。你好！</br></br>对您的评论：</br>“{$comment}”</br></br>店主作了如下回复：</br>“{$recomment}”</br></br>您可以随时回到店中和店主继续沟通。</br>{$shop_name}</br>{$send_date}', 0, 0, 'template');

-- --------------------------------------------------------

--
-- 表的结构 `ecs_member_price`
--

CREATE TABLE IF NOT EXISTS `ecs_member_price` (
  `price_id` mediumint(8) unsigned NOT NULL,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_rank` tinyint(3) NOT NULL DEFAULT '0',
  `user_price` decimal(10,2) NOT NULL DEFAULT '0.00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecs_nav`
--

CREATE TABLE IF NOT EXISTS `ecs_nav` (
  `id` mediumint(8) NOT NULL,
  `ctype` varchar(10) DEFAULT NULL,
  `cid` smallint(5) unsigned DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `ifshow` tinyint(1) NOT NULL,
  `vieworder` tinyint(1) NOT NULL,
  `opennew` tinyint(1) NOT NULL,
  `url` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecs_order_action`
--

CREATE TABLE IF NOT EXISTS `ecs_order_action` (
  `action_id` mediumint(8) unsigned NOT NULL,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `action_user` varchar(30) NOT NULL DEFAULT '',
  `order_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pay_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `action_place` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `action_note` varchar(255) NOT NULL DEFAULT '',
  `log_time` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_order_action`
--

INSERT INTO `ecs_order_action` (`action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time`) VALUES
(1, 8, 'admin', 5, 5, 2, 0, '', 1495092704),
(2, 8, 'admin', 1, 1, 2, 1, '', 1495092716),
(3, 8, '买家', 5, 2, 2, 0, '', 1495092906),
(4, 7, 'admin', 5, 5, 2, 0, '', 1495094292),
(5, 7, 'admin', 1, 1, 2, 1, '', 1495094304),
(6, 4, 'buyer', 2, 0, 0, 0, '用户取消', 1498554906),
(7, 48, 'admin', 5, 5, 2, 0, '', 1501127867),
(8, 48, 'admin', 1, 1, 2, 1, '', 1501127896),
(9, 48, '买家', 5, 2, 2, 0, '', 1501128446),
(10, 54, 'admin', 5, 5, 2, 0, '', 1502246182),
(11, 54, 'admin', 1, 1, 2, 1, '', 1502246194),
(12, 54, '买家', 5, 2, 2, 0, '', 1502246201),
(13, 53, 'admin', 5, 5, 2, 0, '', 1502248109),
(14, 53, 'admin', 1, 1, 2, 1, '', 1502248120),
(15, 53, '买家', 5, 2, 2, 0, '', 1502248160),
(16, 51, 'admin', 5, 5, 2, 0, '', 1502251146),
(17, 55, 'admin', 5, 5, 2, 0, '111', 1502770996),
(18, 51, 'admin', 1, 1, 2, 1, '11', 1502776423),
(19, 56, 'admin', 5, 5, 2, 0, '111', 1502776524),
(20, 51, '买家', 5, 2, 2, 0, '', 1502776537),
(21, 56, 'admin', 1, 1, 2, 1, '11', 1502776537),
(22, 56, '买家', 5, 2, 2, 0, '', 1502776728),
(23, 55, 'admin', 1, 1, 2, 1, '111', 1502776872),
(24, 55, '买家', 5, 2, 2, 0, '', 1502776883),
(25, 67, 'buyer', 2, 0, 0, 0, '用户取消', 1502872275),
(26, 58, 'buyer', 2, 0, 0, 0, '用户取消', 1502963679);

-- --------------------------------------------------------

--
-- 表的结构 `ecs_order_goods`
--

CREATE TABLE IF NOT EXISTS `ecs_order_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '1',
  `market_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `discount_fee` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '对接erp专用，商品优惠金额',
  `goods_attr` text NOT NULL,
  `send_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `is_real` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `is_gift` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_attr_id` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_order_goods`
--

INSERT INTO `ecs_order_goods` (`rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `discount_fee`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id`) VALUES
(1, 1, 7, '手机7', 'ECS000007', 0, 1, '240.00', '220.00', '0.00', '颜色:深红色[20] \n尺码:M 尺码标准[100] \n', 0, 1, '', 0, 0, '15,5'),
(2, 2, 5, '手机商品5', 'ECS000005', 0, 4, '360.00', '300.00', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(3, 3, 3, '手机3', 'ECS000003', 0, 3, '118.80', '99.00', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(4, 4, 7, '手机7', 'ECS000007', 0, 1, '270.00', '250.00', '0.00', '颜色:深褐色[120] \n尺码:L 尺码标准[30] \n', 0, 1, '', 0, 0, '16,6'),
(5, 5, 7, '手机7', 'ECS000007', 0, 3, '270.00', '250.00', '0.00', '颜色:深褐色[120] \n尺码:L 尺码标准[30] \n', 0, 1, '', 0, 0, '16,6'),
(6, 6, 3, '手机3', 'ECS000003', 0, 1, '118.80', '99.00', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(7, 7, 7, '手机7', 'ECS000007', 0, 1, '290.00', '270.00', '0.00', '颜色:深褐色[120] \n尺码:XL 尺码标准[50] \n', 1, 1, '', 0, 0, '17,6'),
(8, 8, 7, '手机7', 'ECS000007', 0, 3, '290.00', '270.00', '0.00', '颜色:深褐色[120] \n尺码:XL 尺码标准[50] \n', 3, 1, '', 0, 0, '17,6'),
(9, 9, 7, '手机7', 'ECS000007', 0, 1, '170.00', '150.00', '0.00', '颜色:深红色[20] \n尺码:L 尺码标准[30] \n', 0, 1, '', 0, 0, '16,5'),
(10, 9, 7, '手机7', 'ECS000007', 0, 1, '270.00', '250.00', '0.00', '颜色:深褐色[120] \n尺码:L 尺码标准[30] \n', 0, 1, '', 0, 0, '16,6'),
(11, 10, 5, '手机商品5', 'ECS000005', 0, 1, '360.00', '300.00', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(12, 10, 9, '测试商品052301', 'ECS000009', 2, 1, '107.00', '90.00', '0.00', '尺码:尺码1[1] \n颜色:颜色1[1] \n', 0, 1, '', 0, 0, '18,20'),
(13, 11, 9, '测试商品052301', 'ECS000009', 2, 1, '107.00', '90.00', '0.00', '尺码:尺码1[1] \n颜色:颜色1[1] \n', 0, 1, '', 0, 0, '18,20'),
(14, 12, 8, '手机1', 'ECS000008', 0, 1, '144.00', '120.00', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(15, 13, 7, '手机7', 'ECS000007', 0, 3, '170.00', '150.00', '0.00', '颜色:深红色[20] \n尺码:L 尺码标准[30] \n', 0, 1, '', 0, 0, '16,5'),
(16, 14, 8, '手机1', 'ECS000008', 0, 1, '144.00', '120.00', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(17, 15, 3, '手机3', 'ECS000003', 0, 2, '118.80', '99.00', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(18, 16, 3, '手机3', 'ECS000003', 0, 2, '118.80', '99.00', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(19, 17, 9, '测试商品052301', 'ECS000009', 1, 2, '109.00', '92.00', '0.00', '尺码:尺码1[1] \n颜色:颜色3[3] \n', 0, 1, '', 0, 0, '18,21'),
(20, 17, 3, '手机3', 'ECS000003', 0, 1, '118.80', '99.00', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(21, 18, 10, '测试商品123321123321', 'ECS000010', 5, 1, '33.00', '29.00', '0.00', '尺码:尺码123[3] \n颜色:尺码321[3] \n', 0, 1, '', 0, 0, '34,35'),
(22, 19, 9, '测试商品052301', 'ECS000009', 2, 1, '107.00', '90.00', '0.00', '尺码:尺码1[1] \n颜色:颜色1[1] \n', 0, 1, '', 0, 0, '18,20'),
(23, 19, 2, '手机2', 'ECS000002', 0, 2, '807.60', '673.00', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(24, 20, 8, '手机1', 'ECS000008', 0, 1, '144.00', '120.00', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(25, 20, 7, '手机7', 'ECS000007', 0, 1, '190.00', '170.00', '0.00', '颜色:深红色[20] \n尺码:XL 尺码标准[50] \n', 0, 1, '', 0, 0, '17,5'),
(26, 21, 3, '手机3', 'ECS000003', 0, 1, '118.80', '99.00', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(27, 22, 4, '手机4', 'ECS000004', 0, 1, '465.60', '388.00', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(28, 23, 7, '手机7', 'ECS000007', 0, 1, '320.00', '300.00', '0.00', '颜色:天蓝色[100] \n尺码:M 尺码标准[100] \n', 0, 1, '', 0, 0, '15,8'),
(29, 23, 8, '手机1', 'ECS000008', 0, 1, '144.00', '120.00', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(30, 24, 6, '手机6', 'ECS000006', 0, 1, '238.80', '199.00', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(31, 24, 5, '手机商品5', 'ECS000005', 0, 2, '360.00', '300.00', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(32, 25, 5, '手机商品5', 'ECS000005', 0, 1, '360.00', '300.00', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(33, 26, 6, '手机6', 'ECS000006', 0, 1, '238.80', '199.00', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(34, 27, 4, '手机4', 'ECS000004', 0, 1, '465.60', '388.00', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(35, 28, 2, '手机2', 'ECS000002', 0, 1, '807.60', '673.00', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(36, 29, 7, '手机7', 'ECS000007', 0, 1, '290.00', '270.00', '0.00', '颜色:深褐色[120] \n尺码:XL 尺码标准[50] \n', 0, 1, '', 0, 0, '17,6'),
(37, 29, 8, '手机1', 'ECS000008', 0, 1, '144.00', '120.00', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(38, 29, 12, '商品商品10', 'ECS000012', 0, 1, '12.00', '10.00', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(39, 30, 3, '手机3', 'ECS000003', 0, 1, '118.80', '99.00', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(40, 30, 6, '手机6', 'ECS000006', 0, 1, '238.80', '199.00', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(41, 31, 12, '商品商品10', 'ECS000012', 0, 1, '12.00', '10.00', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(42, 32, 7, '手机7', 'ECS000007', 0, 25, '280.00', '260.00', '0.00', '颜色:黑色[80] \n尺码:2XL 尺码标准[80] \n', 0, 1, '', 0, 0, '14,7'),
(43, 32, 7, '手机7', 'ECS000007', 0, 1, '270.00', '250.00', '0.00', '颜色:深褐色[120] \n尺码:L 尺码标准[30] \n', 0, 1, '', 0, 0, '16,6'),
(44, 32, 7, '手机7', 'ECS000007', 0, 1, '220.00', '200.00', '0.00', '颜色:墨绿色[50] \n尺码:XL 尺码标准[50] \n', 0, 1, '', 0, 0, '17,9'),
(45, 33, 12, '商品商品10', 'ECS000012', 0, 1, '12.00', '10.00', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(46, 34, 12, '商品商品10', 'ECS000012', 0, 1, '12.00', '10.00', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(47, 35, 12, '商品商品10', 'ECS000012', 0, 1, '12.00', '10.00', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(48, 36, 13, '限时0629', 'ECS000013', 0, 1, '2.40', '2.00', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(49, 37, 12, '商品商品10', 'ECS000012', 0, 1, '12.00', '10.00', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(50, 38, 12, '商品商品10', 'ECS000012', 0, 1, '12.00', '10.00', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(51, 39, 7, '手机7', 'ECS000007', 0, 6, '170.00', '150.00', '0.00', '颜色:深红色[20] \n尺码:L 尺码标准[30] \n', 0, 1, '', 0, 0, '16,5'),
(52, 40, 3, '手机3', 'ECS000003', 0, 6, '118.80', '99.00', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(53, 41, 7, '手机7', 'ECS000007', 0, 1, '170.00', '150.00', '0.00', '颜色:深红色[20] \n尺码:L 尺码标准[30] \n', 0, 1, '', 0, 0, '16,5'),
(54, 42, 7, '手机7', 'ECS000007', 0, 1, '170.00', '150.00', '0.00', '颜色:深红色[20] \n尺码:L 尺码标准[30] \n', 0, 1, '', 0, 0, '16,5'),
(55, 43, 12, '商品商品10', 'ECS000012', 0, 1, '12.00', '10.00', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(56, 43, 7, '手机7', 'ECS000007', 0, 1, '170.00', '150.00', '0.00', '颜色:深红色[20] \n尺码:L 尺码标准[30] \n', 0, 1, '', 0, 0, '16,5'),
(57, 43, 6, '手机6', 'ECS000006', 0, 1, '238.80', '199.00', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(58, 44, 9, '测试商品052301', 'ECS000009', 2, 1, '107.00', '90.00', '0.00', '尺码:尺码1[1] \n颜色:颜色1[1] \n', 0, 1, '', 0, 0, '18,20'),
(59, 45, 7, '手机7', 'ECS000007', 0, 1, '190.00', '170.00', '0.00', '颜色:深红色[20] \n尺码:XL 尺码标准[50] \n', 0, 1, '', 0, 0, '17,5'),
(60, 46, 3, '手机3', 'ECS000003', 0, 1, '118.80', '99.00', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(61, 47, 13, '限时0629', 'ECS000013', 0, 1, '2.40', '2.00', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(62, 47, 5, '手机商品5', 'ECS000005', 0, 1, '360.00', '300.00', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(63, 48, 5, '手机商品5', 'ECS000005', 0, 1, '360.00', '300.00', '0.00', '', 1, 1, '', 0, 0, 'undefined'),
(64, 49, 4, '手机4', 'ECS000004', 0, 2, '465.60', '388.00', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(65, 50, 12, '商品商品10', 'ECS000012', 0, 1, '12.00', '10.00', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(66, 51, 2, '手机2', 'ECS000002', 0, 1, '807.60', '673.00', '0.00', '', 1, 1, '', 0, 0, 'undefined'),
(67, 52, 9, '测试商品052301', 'ECS000009', 1, 1, '109.00', '92.00', '0.00', '尺码:尺码1[1] \n颜色:颜色3[3] \n', 0, 1, '', 0, 0, '18,21'),
(68, 53, 7, '手机7', 'ECS000007', 0, 1, '340.00', '320.00', '0.00', '颜色:深褐色[120] \n尺码:M 尺码标准[100] \n', 1, 1, '', 0, 0, '15,6'),
(69, 54, 7, '手机7', 'ECS000007', 0, 1, '270.00', '250.00', '0.00', '颜色:深褐色[120] \n尺码:L 尺码标准[30] \n', 1, 1, '', 0, 0, '16,6'),
(70, 55, 12, '商品商品10', 'ECS000012', 0, 6, '12.00', '10.00', '0.00', '', 6, 1, '', 0, 0, 'undefined'),
(71, 56, 13, '限时0629', 'ECS000013', 0, 4, '2.40', '1.96', '0.00', '', 4, 1, '', 0, 0, 'undefined'),
(72, 57, 13, '限时0629', 'ECS000013', 0, 2, '2.40', '1.96', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(73, 58, 7, '手机7', 'ECS000007', 0, 1, '220.00', '195.00', '0.00', '颜色:深红色[20] \n尺码:2XL 尺码标准[80] \n', 0, 1, '', 0, 0, '14,5'),
(74, 59, 2, '手机2', 'ECS000002', 0, 2131, '807.60', '639.35', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(75, 60, 12, '商品商品10', 'ECS000012', 0, 1, '12.00', '9.50', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(76, 61, 12, '商品商品10', 'ECS000012', 0, 1, '12.00', '9.50', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(77, 62, 12, '商品商品10', 'ECS000012', 0, 2, '12.00', '9.50', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(78, 63, 12, '商品商品10', 'ECS000012', 0, 2, '12.00', '9.50', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(79, 64, 12, '商品商品10', 'ECS000012', 0, 3, '12.00', '10.00', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(80, 65, 12, '商品商品10', 'ECS000012', 0, 2, '11.99', '9.99', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(81, 66, 12, '商品商品10', 'ECS000012', 0, 3, '11.99', '9.49', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(82, 67, 8, '手机1', 'ECS000008', 0, 1, '144.00', '120.00', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(83, 68, 13, '限时0629', 'ECS000013', 0, 3, '2.40', '1.90', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(84, 69, 13, '限时0629', 'ECS000013', 0, 1, '2.40', '1.90', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(85, 70, 5, '手机商品5', 'ECS000005', 0, 2, '360.00', '285.00', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(86, 71, 3, '手机3', 'ECS000003', 0, 1, '118.80', '94.05', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(87, 72, 4, '手机4', 'ECS000004', 0, 8, '465.60', '368.60', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(88, 73, 3, '手机3', 'ECS000003', 0, 6, '118.80', '94.05', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(89, 74, 4, '手机4', 'ECS000004', 0, 8, '465.60', '368.60', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(90, 75, 4, '手机4', 'ECS000004', 0, 2, '465.60', '388.00', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(91, 76, 3, '手机3', 'ECS000003', 0, 1, '118.80', '94.05', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(92, 77, 6, '手机6', 'ECS000006', 0, 2, '238.80', '199.00', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(93, 78, 4, '手机4', 'ECS000004', 0, 8, '465.60', '368.60', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(94, 79, 6, '手机6', 'ECS000006', 0, 5, '238.80', '199.00', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(95, 80, 6, '手机6', 'ECS000006', 0, 98, '238.80', '189.05', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(96, 81, 6, '手机6', 'ECS000006', 0, 5, '238.80', '189.05', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(97, 82, 4, '手机4', 'ECS000004', 0, 105, '465.60', '368.60', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(98, 83, 6, '手机6', 'ECS000006', 0, 99, '238.80', '199.00', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(99, 84, 6, '手机6', 'ECS000006', 0, 23, '238.80', '189.05', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(100, 85, 3, '手机3', 'ECS000003', 0, 98, '118.80', '99.00', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(101, 86, 11, '11', '1111', 0, 1, '147879.60', '123233.00', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(102, 87, 3, '手机3', 'ECS000003', 0, 226, '118.80', '99.00', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(103, 87, 8, '手机1', 'ECS000008', 0, 1, '144.00', '120.00', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(104, 87, 5, '手机商品5', 'ECS000005', 0, 2128, '360.00', '300.00', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(105, 87, 4, '手机4', 'ECS000004', 0, 99, '465.60', '388.00', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(106, 88, 4, '手机4', 'ECS000004', 0, 22891, '465.60', '388.00', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(107, 89, 4, '手机4', 'ECS000004', 0, 10, '465.60', '388.00', '0.00', '', 0, 1, '', 0, 0, 'undefined'),
(108, 90, 7, '手机7', 'ECS000007', 0, 1, '220.00', '195.00', '0.00', '颜色:墨绿色[50] \n尺码:XL 尺码标准[50] \n', 0, 1, '', 0, 0, '17,9'),
(109, 91, 4, '手机4', 'ECS000004', 0, 2, '465.60', '368.60', '0.00', '', 0, 1, '', 0, 0, '[object Object]'),
(110, 92, 4, '手机4', 'ECS000004', 0, 7, '465.60', '368.60', '0.00', '', 0, 1, '', 0, 0, '[object Object]');

-- --------------------------------------------------------

--
-- 表的结构 `ecs_order_info`
--

CREATE TABLE IF NOT EXISTS `ecs_order_info` (
  `order_id` mediumint(8) unsigned NOT NULL,
  `order_sn` varchar(20) NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `order_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pay_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `consignee` varchar(60) NOT NULL DEFAULT '',
  `country` smallint(5) unsigned NOT NULL DEFAULT '0',
  `province` smallint(5) unsigned NOT NULL DEFAULT '0',
  `city` smallint(5) unsigned NOT NULL DEFAULT '0',
  `district` smallint(5) unsigned NOT NULL DEFAULT '0',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zipcode` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `mobile` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `best_time` varchar(120) NOT NULL DEFAULT '',
  `sign_building` varchar(120) NOT NULL DEFAULT '',
  `postscript` varchar(255) NOT NULL DEFAULT '',
  `shipping_id` tinyint(3) NOT NULL DEFAULT '0',
  `shipping_name` varchar(120) NOT NULL DEFAULT '',
  `pay_id` tinyint(3) NOT NULL DEFAULT '0',
  `pay_name` varchar(120) NOT NULL DEFAULT '',
  `how_oos` varchar(120) NOT NULL DEFAULT '',
  `how_surplus` varchar(120) NOT NULL DEFAULT '',
  `pack_name` varchar(120) NOT NULL DEFAULT '',
  `card_name` varchar(120) NOT NULL DEFAULT '',
  `card_message` varchar(255) NOT NULL DEFAULT '',
  `inv_payee` varchar(120) NOT NULL DEFAULT '',
  `inv_content` varchar(120) NOT NULL DEFAULT '',
  `goods_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `shipping_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `insure_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pay_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pack_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `card_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_discount_fee` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '对接erp专用，商品优惠总金额',
  `money_paid` decimal(10,2) NOT NULL DEFAULT '0.00',
  `surplus` decimal(10,2) NOT NULL DEFAULT '0.00',
  `integral` int(10) unsigned NOT NULL DEFAULT '0',
  `integral_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `bonus` decimal(10,2) NOT NULL DEFAULT '0.00',
  `order_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `from_ad` smallint(5) NOT NULL DEFAULT '0',
  `referer` varchar(255) NOT NULL DEFAULT '',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `confirm_time` int(10) unsigned NOT NULL DEFAULT '0',
  `pay_time` int(10) unsigned NOT NULL DEFAULT '0',
  `shipping_time` int(10) unsigned NOT NULL DEFAULT '0',
  `pack_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `card_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `bonus_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `invoice_no` varchar(255) NOT NULL DEFAULT '',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `extension_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `to_buyer` varchar(255) NOT NULL DEFAULT '',
  `pay_note` varchar(255) NOT NULL DEFAULT '',
  `agency_id` smallint(5) unsigned NOT NULL,
  `inv_type` varchar(60) NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `is_separate` tinyint(1) NOT NULL DEFAULT '0',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `discount` decimal(10,2) NOT NULL,
  `callback_status` enum('true','false') DEFAULT 'true',
  `lastmodify` int(10) unsigned NOT NULL DEFAULT '0',
  `is_delete` tinyint(3) unsigned DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_order_info`
--

INSERT INTO `ecs_order_info` (`order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `goods_discount_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount`, `callback_status`, `lastmodify`, `is_delete`) VALUES
(1, '2017051873684', 2, 1, 0, 2, '韩帅', 1, 2, 37, 410, 'silk退咯off', '', '13046694269', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '220.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '220.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1495085039, 1495085039, 1495085039, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1495085039, 0),
(2, '2017051857482', 2, 1, 0, 2, '韩帅', 1, 2, 37, 410, 'silk退咯off', '', '13046694269', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '1200.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1200.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1495085423, 1495085423, 1495085423, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1495085423, 0),
(3, '2017051896155', 2, 1, 0, 2, '韩帅', 1, 2, 37, 410, 'silk退咯off', '', '13046694269', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '297.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '297.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1495086600, 1495086600, 1495086600, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1495086600, 0),
(4, '2017051840472', 2, 2, 0, 0, '韩帅', 1, 2, 37, 410, 'silk退咯off', '', '13046694269', '', '', '', '', '', 1, '顺丰速运', 2, '支付宝', '等待所有商品备齐后再发', '', '', '', '', '', '', '250.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0, '0.00', '0.00', '250.00', 0, '本站', 1495088357, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1498554906, 0),
(5, '2017051849891', 2, 1, 0, 2, '张颜', 1, 10, 109, 1219, '顾村镇宝安公路2003号', '', '18896525512', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '750.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '750.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1495089482, 1495089482, 1495089482, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1495089482, 0),
(6, '2017051875607', 2, 1, 0, 2, '张颜', 1, 10, 109, 1219, '顾村镇宝安公路2003号', '', '18896525512', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '99.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '99.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1495089535, 1495089535, 1495089535, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1495089535, 0),
(7, '2017051810620', 2, 5, 1, 2, '张颜', 1, 10, 109, 1219, '顾村镇宝安公路2003号', '', '18896525512', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '270.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '270.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1495089586, 1495089586, 1495089586, 1495094304, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1495094304, 0),
(8, '2017051890476', 2, 5, 2, 2, '张颜', 1, 10, 109, 1219, '顾村镇宝安公路2003号', '', '18896525512', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '810.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '810.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1495089701, 1495089701, 1495089701, 1495092716, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1495092906, 1),
(9, '2017051810572', 2, 1, 0, 2, '张颜', 1, 10, 109, 1219, '顾村镇宝安公路2003号', '', '18896525512', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '400.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '400.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1495099306, 1495099306, 1495099306, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1495099306, 0),
(10, '2017052397114', 2, 1, 0, 2, '张颜', 1, 10, 109, 1219, '顾村镇宝安公路2003号', '', '18896525512', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '390.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '390.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1495542652, 1495542652, 1495542652, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1495542652, 0),
(11, '2017052327790', 2, 1, 0, 2, '张颜', 1, 10, 109, 1219, '顾村镇宝安公路2003号', '', '18896525512', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '90.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '90.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1495542763, 1495542763, 1495542763, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1495542763, 0),
(12, '2017052417535', 4, 1, 0, 2, 'xxx', 1, 10, 109, 1225, '1121122', '', '18896525512', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '120.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '120.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1495595644, 1495595644, 1495595644, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1495595644, 0),
(13, '2017052426587', 4, 1, 0, 2, 'xxx', 1, 10, 109, 1225, '1121122', '', '18896525512', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '450.00', '30.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '480.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1495597312, 1495597312, 1495597312, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1495597312, 0),
(14, '2017052430181', 4, 1, 0, 2, 'xxx', 1, 10, 109, 1225, '1121122', '', '18896525512', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '120.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '120.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1495597406, 1495597406, 1495597406, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1495597406, 0),
(15, '2017052420112', 4, 1, 0, 2, 'xxx', 1, 10, 109, 1225, '1121122', '', '18896525512', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '198.00', '30.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '228.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1495597493, 1495597493, 1495597493, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1495597493, 0),
(16, '2017052477279', 4, 1, 0, 2, 'xxx', 1, 10, 109, 1225, '1121122', '', '18896525512', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '198.00', '30.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '228.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1495597788, 1495597788, 1495597788, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1495597788, 0),
(17, '2017052463988', 2, 1, 0, 2, '张颜', 1, 10, 109, 1219, '顾村镇宝安公路2003号', '', '18896525512', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '283.00', '30.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '313.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1495606304, 1495606304, 1495606304, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1495606304, 0),
(18, '2017052524189', 2, 1, 0, 2, '张颜', 1, 10, 109, 1219, '顾村镇宝安公路2003号', '', '18896525512', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '29.00', '30.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '59.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1495701472, 1495701472, 1495701472, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1495701472, 0),
(19, '2017052505860', 2, 1, 0, 2, '张颜', 1, 10, 109, 1219, '顾村镇宝安公路2003号', '', '18896525512', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '1436.00', '30.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1466.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1495710901, 1495710901, 1495710901, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1495710901, 0),
(20, '2017060868736', 4, 1, 0, 2, 'xxx', 1, 10, 109, 1225, '1121122', '', '18896525512', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '290.00', '30.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '320.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1496906304, 1496906304, 1496906304, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1496906304, 0),
(21, '2017061222511', 5, 1, 0, 2, '大放送', 1, 10, 109, 1222, '天潼路118号', '', '12345678945', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '99.00', '30.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '129.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1497269065, 1497269065, 1497269065, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1497269065, 0),
(22, '2017061256860', 5, 1, 0, 2, '大放送', 1, 10, 109, 1222, '天潼路118号', '', '12345678945', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '388.00', '30.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '418.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1497269204, 1497269204, 1497269204, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1497269204, 0),
(23, '2017061247205', 5, 1, 0, 2, '大放送', 1, 10, 109, 1222, '天潼路118号', '', '12345678945', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '420.00', '30.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '450.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1497269995, 1497269995, 1497269995, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1497269995, 0),
(24, '2017061230995', 5, 1, 0, 2, '大放送', 1, 10, 109, 1222, '天潼路118号', '', '12345678945', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '799.00', '30.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '829.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1497270185, 1497270185, 1497270185, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1497270185, 0),
(25, '2017061271927', 5, 1, 0, 2, '大放送', 1, 10, 109, 1222, '天潼路118号', '', '12345678945', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '300.00', '30.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '330.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1497270232, 1497270232, 1497270232, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1497270232, 0),
(26, '2017061228805', 5, 1, 0, 2, '大放送', 1, 10, 109, 1222, '天潼路118号', '', '12345678945', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '199.00', '30.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '229.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1497270805, 1497270805, 1497270805, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1497270805, 0),
(27, '2017062773878', 2, 1, 0, 2, '还会', 1, 4, 41, 484, '抱怨', '', '15800000000', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '388.00', '30.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '418.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1498557416, 1498557416, 1498557416, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1498557416, 0),
(28, '2017062734445', 2, 1, 0, 2, '还会', 1, 4, 41, 484, '抱怨', '', '15800000000', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '673.00', '30.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '703.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1498557462, 1498557462, 1498557462, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1498557462, 0),
(29, '2017062894418', 2, 1, 0, 2, '还会', 1, 4, 41, 484, '抱怨', '', '15800000000', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '400.00', '30.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '430.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1498619212, 1498619212, 1498619212, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1498619212, 0),
(30, '2017062825420', 2, 1, 0, 2, '还会', 1, 4, 41, 484, '抱怨', '', '15800000000', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '298.00', '30.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '328.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1498619304, 1498619304, 1498619304, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1498619304, 0),
(31, '2017072405576', 2, 1, 0, 2, '还会', 1, 4, 41, 484, '抱怨', '', '15800000000', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '10.00', '30.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '40.00', 0, '0.00', '0.00', '0.00', 0, '', 1500879120, 1500879120, 1500879120, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1500879120, 0),
(32, '2017072487038', 2, 1, 0, 2, '还会', 1, 4, 41, 484, '抱怨', '', '15800000000', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '6950.00', '30.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '6980.00', 0, '0.00', '0.00', '0.00', 0, '', 1500879644, 1500879644, 1500879644, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1500879644, 0),
(33, '2017072468790', 2, 1, 0, 2, '还会', 1, 4, 41, 484, '抱怨', '', '15800000000', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '10.00', '30.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '40.00', 0, '0.00', '0.00', '0.00', 0, '', 1500879733, 1500879733, 1500879733, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1500879733, 0),
(34, '2017072428665', 2, 1, 0, 2, '还会', 1, 4, 41, 484, '抱怨', '', '15800000000', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '10.00', '30.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '40.00', 0, '0.00', '0.00', '0.00', 0, '', 1500880142, 1500880142, 1500880142, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1500880142, 0),
(35, '2017072451644', 2, 1, 0, 2, '还会', 1, 4, 41, 484, '抱怨', '', '15800000000', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '10.00', '30.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '40.00', 0, '0.00', '0.00', '0.00', 0, '', 1500880319, 1500880319, 1500880319, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1500880319, 0),
(36, '2017072417088', 2, 1, 0, 2, '还会', 1, 4, 41, 484, '抱怨', '', '15800000000', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '2.00', '30.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '32.00', 0, '0.00', '0.00', '0.00', 0, '', 1500881078, 1500881078, 1500881078, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1500881078, 0),
(37, '2017072446700', 2, 1, 0, 2, '还会', 1, 4, 41, 484, '抱怨', '', '15800000000', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '10.00', '30.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '40.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1500883460, 1500883460, 1500883460, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1500883460, 0),
(38, '2017072452075', 2, 1, 0, 2, '/efghh', 1, 24, 278, 2782, 'fghg', '', '13596542638', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '10.00', '30.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '40.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1500883690, 1500883690, 1500883690, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1500883690, 0),
(39, '2017072404982', 2, 1, 0, 2, '/efghh', 1, 24, 278, 2782, 'fghg', '', '13596542638', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '900.00', '30.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '930.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1500883760, 1500883760, 1500883760, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1500883760, 0),
(40, '2017072447466', 2, 1, 0, 2, '84888', 1, 11, 120, 1343, '188878', '', '15566666666', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '594.00', '30.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '624.00', 0, '0.00', '0.00', '0.00', 0, '', 1500883825, 1500883825, 1500883825, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1500883825, 0),
(41, '2017072426238', 2, 1, 0, 2, '/efghh', 1, 24, 278, 2782, 'fghg', '', '13596542638', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '150.00', '30.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '180.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1500883893, 1500883893, 1500883893, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1500883893, 0),
(42, '2017072452722', 2, 1, 0, 2, '/efghh', 1, 24, 278, 2782, 'fghg', '', '13596542638', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '150.00', '30.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '180.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1500884765, 1500884765, 1500884765, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1500884765, 0),
(43, '2017072478198', 2, 1, 0, 2, '/efghh', 1, 24, 278, 2782, 'fghg', '', '13596542638', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '359.00', '30.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '389.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1500885418, 1500885418, 1500885418, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1500885418, 0),
(44, '2017072661989', 2, 1, 0, 2, '/efghh', 1, 24, 278, 2782, 'fghg', '', '13596542638', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '90.00', '30.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '120.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1501040516, 1501040516, 1501040516, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1501040516, 0),
(45, '2017072645221', 2, 1, 0, 2, '/efghh', 1, 24, 278, 2782, 'fghg', '', '13596542638', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '170.00', '30.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '200.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1501058768, 1501058768, 1501058768, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1501058768, 0),
(46, '2017072703393', 4, 1, 0, 2, '11', 1, 8, 94, 1054, '11', '', '18896525512', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '99.00', '30.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '129.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1501123282, 1501123282, 1501123282, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1501123282, 0),
(47, '2017072769404', 4, 1, 0, 2, '11', 1, 8, 94, 1054, '11', '', '18896525512', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '302.00', '30.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '332.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1501123988, 1501123988, 1501123988, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1501123988, 0),
(48, '2017072735595', 4, 5, 2, 2, '11', 1, 8, 94, 1054, '11', '', '18896525512', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '300.00', '30.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '330.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1501124099, 1501124099, 1501124099, 1501127896, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1501128446, 1),
(49, '2017072718898', 4, 1, 0, 2, '1111', 1, 10, 109, 1225, '125', '', '18896525545', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '776.00', '30.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '806.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1501129070, 1501129070, 1501129070, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1501129070, 0),
(50, '2017072716086', 4, 1, 0, 2, '1111', 1, 10, 109, 1225, '125', '', '18896525545', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '10.00', '30.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '40.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1501129121, 1501129121, 1501129121, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1501129121, 0),
(51, '2017080872178', 2, 5, 2, 2, '/efghh', 1, 24, 278, 2782, 'fghg', '', '13596542638', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '673.00', '30.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '703.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1502173722, 1502173722, 1502173722, 1502776423, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1502776537, 1),
(52, '2017080876302', 2, 1, 0, 2, '/efghh', 1, 24, 278, 2782, 'fghg', '', '13596542638', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '92.00', '30.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '122.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1502173804, 1502173804, 1502173804, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1502173804, 0),
(53, '2017080908190', 4, 5, 2, 2, '张颜', 1, 10, 109, 1225, '111', '', '18896525512', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '320.00', '30.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '350.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1502245837, 1502245837, 1502245837, 1502248120, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1502248160, 1),
(54, '2017080969576', 4, 5, 2, 2, '12', 1, 6, 70, 853, '1212', '', '18896525512', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '250.00', '30.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '280.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1502245910, 1502245910, 1502245910, 1502246194, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1502246201, 1),
(55, '2017081515177', 4, 5, 2, 2, '12', 1, 6, 70, 853, '1212', '', '18896525512', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '60.00', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '75.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1502770972, 1502770972, 1502770972, 1502776872, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1502776883, 1),
(56, '2017081583790', 4, 5, 2, 2, '12', 1, 6, 70, 853, '1212', '', '18896525512', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '7.84', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '22.84', 0, '0.00', '0.00', '0.00', 0, '本站', 1502776198, 1502776198, 1502776198, 1502776537, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1502776728, 1),
(57, '2017081508031', 4, 1, 0, 2, '张颜', 1, 10, 109, 1225, '111', '', '18896525512', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '3.92', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '18.92', 0, '0.00', '0.00', '0.00', 0, '本站', 1502776586, 1502776586, 1502776586, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1502776586, 0),
(58, '2017081643184', 2, 2, 0, 0, '/efghh', 1, 24, 278, 2782, 'fghg', '', '13596542638', '', '', '', '', '', 1, '顺丰速运', 3, '<font color="#FF0000">天工收银</font>', '等待所有商品备齐后再发', '', '', '', '', '', '', '195.00', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0, '0.00', '0.00', '210.00', 0, '本站', 1502862626, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1502963680, 0),
(59, '2017081698498', 2, 1, 0, 2, '/efghh', 1, 24, 278, 2782, 'fghg', '', '13596542638', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '1362454.85', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1362469.85', 0, '0.00', '0.00', '0.00', 0, '本站', 1502867044, 1502867044, 1502867044, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1502867044, 0),
(60, '2017081668827', 2, 1, 0, 2, '', 1, 3, 38, 422, '', '', '056-1105724', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '9.50', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '9.50', 0, '0.00', '0.00', '0.00', 0, '本站', 1502867893, 1502867893, 1502867893, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1502867893, 0),
(61, '2017081637308', 2, 1, 0, 2, '', 1, 3, 38, 422, '', '', '056-1105724', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '9.50', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '9.50', 0, '0.00', '0.00', '0.00', 0, '本站', 1502867962, 1502867962, 1502867962, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1502867962, 0),
(62, '2017081605704', 2, 1, 0, 2, '/efghh', 1, 24, 278, 2782, 'fghg', '', '13596542638', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '19.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '19.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1502868118, 1502868118, 1502868118, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1502868118, 0),
(63, '2017081666053', 2, 1, 0, 2, '/efghh', 1, 24, 278, 2782, 'fghg', '', '13596542638', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '19.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '19.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1502868491, 1502868491, 1502868491, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1502868491, 0),
(64, '2017081624441', 6, 1, 0, 2, '嘻嘻', 1, 3, 38, 422, '13111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111zzzqqqqqqq', '', '131111111111111111111111111111111111111111111111111111111111', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '30.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '30.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1502868834, 1502868834, 1502868834, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1502868834, 0),
(65, '2017081689795', 6, 1, 0, 2, '嘻嘻', 1, 3, 38, 422, '13111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111zzzqqqqqqq', '', '131111111111111111111111111111111111111111111111111111111111', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '19.98', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '19.98', 0, '0.00', '0.00', '0.00', 0, '本站', 1502869090, 1502869090, 1502869090, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1502869090, 0),
(66, '2017081655950', 2, 1, 0, 2, '/efghh', 1, 24, 278, 2782, 'fghg', '', '13596542638', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '28.47', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '28.47', 0, '0.00', '0.00', '0.00', 0, '本站', 1502869203, 1502869203, 1502869203, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1502869203, 0),
(67, '2017081687654', 6, 2, 0, 0, '嘻嘻', 1, 3, 38, 422, '13111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111zzzqqqqqqq', '', '131111111111111111111111111111111111111111111111111111111111', '', '', '', '', '', 1, '顺丰速运', 20, '', '等待所有商品备齐后再发', '', '', '', '', '', '', '120.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 0, '0.00', '0.00', '120.00', 0, '本站', 1502872116, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1502872275, 0),
(68, '2017081655458', 2, 1, 0, 2, '/efghh', 1, 24, 278, 2782, 'fghg', '', '13596542638', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '5.70', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '20.70', 0, '0.00', '0.00', '0.00', 0, '本站', 1502877541, 1502877541, 1502877541, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1502877541, 0),
(69, '2017081624221', 2, 1, 0, 2, '/efghh', 1, 24, 278, 2782, 'fghg', '', '13596542638', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '1.90', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '16.90', 0, '0.00', '0.00', '0.00', 0, '本站', 1502877597, 1502877597, 1502877597, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1502877597, 0),
(70, '2017081701578', 2, 1, 0, 2, '/efghh', 1, 24, 278, 2782, 'fghg', '', '13596542638', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '570.00', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '585.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1502957330, 1502957330, 1502957330, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1502957330, 0),
(71, '2017081785368', 2, 1, 0, 2, '/efghh', 1, 24, 278, 2782, 'fghg', '', '13596542638', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '94.05', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '109.05', 0, '0.00', '0.00', '0.00', 0, '本站', 1502957440, 1502957440, 1502957440, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1502957440, 0),
(72, '2017081795221', 2, 1, 0, 2, '/efghh', 1, 24, 278, 2782, 'fghg', '', '13596542638', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '2948.80', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2963.80', 0, '0.00', '0.00', '0.00', 0, '本站', 1502958129, 1502958129, 1502958129, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1502958129, 0),
(73, '2017081727701', 2, 1, 0, 2, '/efghh', 1, 24, 278, 2782, 'fghg', '', '13596542638', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '564.30', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '579.30', 0, '0.00', '0.00', '0.00', 0, '本站', 1502958188, 1502958188, 1502958188, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1502958188, 0),
(74, '2017081707265', 2, 1, 0, 2, '/efghh', 1, 24, 278, 2782, 'fghg', '', '13596542638', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '2948.80', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2963.80', 0, '0.00', '0.00', '0.00', 0, '本站', 1502958428, 1502958428, 1502958428, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1502958428, 0),
(75, '2017081738624', 6, 1, 0, 2, '嘻嘻', 1, 3, 38, 422, '13111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111zzzqqqqqqq', '', '131111111111111111111111111111111111111111111111111111111111', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '776.00', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '791.00', 0, '0.00', '0.00', '0.00', 3, '本站', 1502959089, 1502959089, 1502959089, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1502959089, 0),
(76, '2017081753783', 2, 1, 0, 2, '/efghh', 1, 24, 278, 2782, 'fghg', '', '13596542638', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '94.05', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '109.05', 0, '0.00', '0.00', '0.00', 0, '本站', 1502959548, 1502959548, 1502959548, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1502959548, 0),
(77, '2017081743288', 6, 1, 0, 2, '嘻嘻', 1, 3, 38, 422, '13111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111zzzqqqqqqq', '', '131111111111111111111111111111111111111111111111111111111111', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '398.00', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '413.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1502959550, 1502959550, 1502959550, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1502959550, 0),
(78, '2017081754870', 2, 1, 0, 2, '/efghh', 1, 24, 278, 2782, 'fghg', '', '13596542638', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '2948.80', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2963.80', 0, '0.00', '0.00', '0.00', 0, '本站', 1502959702, 1502959702, 1502959702, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1502959702, 0),
(79, '2017081723452', 6, 1, 0, 2, '嘻嘻', 1, 3, 38, 422, '13111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111zzzqqqqqqq', '', '131111111111111111111111111111111111111111111111111111111111', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '995.00', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1010.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1502959797, 1502959797, 1502959797, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1502959797, 0),
(80, '2017081799401', 2, 1, 0, 2, '/efghh', 1, 24, 278, 2782, 'fghg', '', '13596542638', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '18526.90', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '18541.90', 0, '0.00', '0.00', '0.00', 0, '本站', 1502960565, 1502960565, 1502960565, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1502960565, 0),
(81, '2017081775669', 2, 1, 0, 2, '/efghh', 1, 24, 278, 2782, 'fghg', '', '13596542638', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '945.25', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '960.25', 0, '0.00', '0.00', '0.00', 0, '本站', 1502960587, 1502960587, 1502960587, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1502960587, 0),
(82, '2017081796303', 2, 1, 0, 2, '/efghh', 1, 24, 278, 2782, 'fghg', '', '13596542638', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '38703.00', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '38718.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1502961148, 1502961148, 1502961148, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1502961148, 0),
(83, '2017081704771', 6, 1, 0, 2, '嘻嘻', 1, 3, 38, 422, '13111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111zzzqqqqqqq', '', '131111111111111111111111111111111111111111111111111111111111', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '19701.00', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '19716.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1502961196, 1502961196, 1502961196, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1502961196, 0),
(84, '2017081752069', 2, 1, 0, 2, '/efghh', 1, 24, 278, 2782, 'fghg', '', '13596542638', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '4348.15', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '4363.15', 0, '0.00', '0.00', '0.00', 0, '本站', 1502961299, 1502961299, 1502961299, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1502961299, 0),
(85, '2017081733340', 6, 1, 0, 2, '嘻嘻', 1, 3, 38, 422, '13111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111zzzqqqqqqq', '', '131111111111111111111111111111111111111111111111111111111111', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '9702.00', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '9717.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1502961706, 1502961706, 1502961706, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1502961706, 0),
(86, '2017081764455', 6, 1, 0, 2, '嘻嘻', 1, 3, 38, 422, '13111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111zzzqqqqqqq', '', '131111111111111111111111111111111111111111111111111111111111', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '123233.00', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '123248.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1502962151, 1502962151, 1502962151, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1502962151, 0),
(87, '2017081749882', 6, 1, 0, 2, '嘻嘻', 1, 3, 38, 422, '13111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111zzzqqqqqqq', '', '131111111111111111111111111111111111111111111111111111111111', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '699306.00', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '699321.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1502962373, 1502962373, 1502962373, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1502962373, 0),
(88, '2017081786038', 6, 1, 0, 2, '嘻嘻', 1, 3, 38, 422, '13111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111zzzqqqqqqq', '', '131111111111111111111111111111111111111111111111111111111111', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '8881708.00', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '8881723.00', 0, '0.00', '0.00', '0.00', 3, '本站', 1502964333, 1502964333, 1502964333, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1502964333, 0),
(89, '2017081720313', 6, 1, 0, 2, '嘻嘻', 1, 3, 38, 422, '13111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111zzzqqqqqqq', '', '131111111111111111111111111111111111111111111111111111111111', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '3880.00', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '3895.00', 0, '0.00', '0.00', '0.00', 3, '本站', 1502965039, 1502965039, 1502965039, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1502965039, 0),
(90, '2017081734626', 2, 1, 0, 2, 'wewq', 1, 2, 37, 403, 'wqeqw', '', '18656348525', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '195.00', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '210.00', 0, '0.00', '0.00', '0.00', 0, '本站', 1502965534, 1502965534, 1502965534, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1502965534, 0),
(91, '2017081869783', 2, 1, 0, 2, 'wewq', 1, 2, 37, 403, 'wqeqw', '', '18656348525', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '737.20', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '752.20', 0, '0.00', '0.00', '0.00', 0, '', 1503053135, 1503053135, 1503053135, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1503053135, 0),
(92, '2017082161519', 2, 1, 0, 2, '二恶烷认为', 1, 18, 205, 2149, '微软微软日日日日日日日日', '额为温热微软', '让微软我', '', '', '', '', '', 1, '顺丰速运', 1, '星辉币支付', '等待所有商品备齐后再发', '', '', '', '', '', '', '2580.20', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2595.20', 0, '0.00', '0.00', '0.00', 0, '', 1503313054, 1503313054, 1503313054, 0, 0, 0, 0, '', '', 0, '', '', 0, '', '0.00', 0, 0, '0.00', 'true', 1503313054, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ecs_order_review`
--

CREATE TABLE IF NOT EXISTS `ecs_order_review` (
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecs_pack`
--

CREATE TABLE IF NOT EXISTS `ecs_pack` (
  `pack_id` tinyint(3) unsigned NOT NULL,
  `pack_name` varchar(120) NOT NULL DEFAULT '',
  `pack_img` varchar(255) NOT NULL DEFAULT '',
  `pack_fee` decimal(6,2) unsigned NOT NULL DEFAULT '0.00',
  `free_money` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pack_desc` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecs_package_goods`
--

CREATE TABLE IF NOT EXISTS `ecs_package_goods` (
  `package_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '1',
  `admin_id` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecs_payment`
--

CREATE TABLE IF NOT EXISTS `ecs_payment` (
  `pay_id` tinyint(3) unsigned NOT NULL,
  `pay_code` varchar(20) NOT NULL DEFAULT '',
  `pay_name` varchar(120) NOT NULL DEFAULT '',
  `pay_fee` varchar(10) NOT NULL DEFAULT '0',
  `pay_desc` text NOT NULL,
  `pay_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pay_config` text NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_online` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ico` varchar(100) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_payment`
--

INSERT INTO `ecs_payment` (`pay_id`, `pay_code`, `pay_name`, `pay_fee`, `pay_desc`, `pay_order`, `pay_config`, `enabled`, `is_cod`, `is_online`, `ico`) VALUES
(1, 'balance', '星辉币支付', '0', '使用星辉币支付。只有会员才能使用。', 0, 'a:0:{}', 1, 0, 1, 'upload/image/20170518/1495081024104003.png'),
(2, 'alipay', '支付宝', '0', '支付宝网站(www.alipay.com) 是国内先进的网上支付平台。<br/>支付宝收款接口：在线即可开通，零预付，免年费，单笔阶梯费率，无流量限制。<br/><a href="https://b.alipay.com/order/productDetail.htm?productId=2015110218012942" target="_blank">立即在线申请</a>', 0, 'a:4:{i:0;a:3:{s:4:"name";s:14:"alipay_account";s:4:"type";s:4:"text";s:5:"value";s:0:"";}i:1;a:3:{s:4:"name";s:10:"alipay_key";s:4:"type";s:4:"text";s:5:"value";s:0:"";}i:2;a:3:{s:4:"name";s:14:"alipay_partner";s:4:"type";s:4:"text";s:5:"value";s:0:"";}i:3;a:3:{s:4:"name";s:17:"alipay_pay_method";s:4:"type";s:6:"select";s:5:"value";s:1:"2";}}', 0, 0, 1, 'upload/image/20170518/1495081011384613.png'),
(3, 'yunqi', '<font color="#FF0000">天工收银</font>', '0', '<font color="#FF0000">天工收银是上海商派2015年正式推出的专业集成支付平台，致力于为各类用户提供融合、便捷、安全的场景支付服务。</font>', 0, 'a:0:{}', 1, 0, 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `ecs_pay_log`
--

CREATE TABLE IF NOT EXISTS `ecs_pay_log` (
  `log_id` int(10) unsigned NOT NULL,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `order_amount` decimal(10,2) unsigned NOT NULL,
  `order_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_paid` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_pay_log`
--

INSERT INTO `ecs_pay_log` (`log_id`, `order_id`, `order_amount`, `order_type`, `is_paid`) VALUES
(1, 1, '0.00', 0, 0),
(2, 2, '0.00', 0, 0),
(3, 3, '0.00', 0, 0),
(4, 4, '250.00', 0, 0),
(5, 5, '0.00', 0, 0),
(6, 6, '0.00', 0, 0),
(7, 7, '0.00', 0, 0),
(8, 8, '0.00', 0, 0),
(9, 9, '0.00', 0, 0),
(10, 10, '0.00', 0, 0),
(11, 11, '0.00', 0, 0),
(12, 12, '0.00', 0, 0),
(13, 13, '0.00', 0, 0),
(14, 14, '0.00', 0, 0),
(15, 15, '0.00', 0, 0),
(16, 16, '0.00', 0, 0),
(17, 17, '0.00', 0, 0),
(18, 18, '0.00', 0, 0),
(19, 19, '0.00', 0, 0),
(20, 20, '0.00', 0, 0),
(21, 21, '0.00', 0, 0),
(22, 22, '0.00', 0, 0),
(23, 23, '0.00', 0, 0),
(24, 24, '0.00', 0, 0),
(25, 25, '0.00', 0, 0),
(26, 26, '0.00', 0, 0),
(27, 27, '0.00', 0, 0),
(28, 28, '0.00', 0, 0),
(29, 29, '0.00', 0, 0),
(30, 30, '0.00', 0, 0),
(31, 31, '0.00', 0, 0),
(32, 32, '0.00', 0, 0),
(33, 33, '0.00', 0, 0),
(34, 34, '0.00', 0, 0),
(35, 35, '0.00', 0, 0),
(36, 36, '0.00', 0, 0),
(37, 37, '0.00', 0, 0),
(38, 38, '0.00', 0, 0),
(39, 39, '0.00', 0, 0),
(40, 40, '0.00', 0, 0),
(41, 41, '0.00', 0, 0),
(42, 42, '0.00', 0, 0),
(43, 43, '0.00', 0, 0),
(44, 44, '0.00', 0, 0),
(45, 45, '0.00', 0, 0),
(46, 46, '0.00', 0, 0),
(47, 47, '0.00', 0, 0),
(48, 48, '0.00', 0, 0),
(49, 49, '0.00', 0, 0),
(50, 50, '0.00', 0, 0),
(51, 51, '0.00', 0, 0),
(52, 52, '0.00', 0, 0),
(53, 53, '0.00', 0, 0),
(54, 54, '0.00', 0, 0),
(55, 55, '0.00', 0, 0),
(56, 56, '0.00', 0, 0),
(57, 57, '0.00', 0, 0),
(58, 58, '210.00', 0, 0),
(59, 59, '0.00', 0, 0),
(60, 60, '0.00', 0, 0),
(61, 61, '0.00', 0, 0),
(62, 62, '0.00', 0, 0),
(63, 63, '0.00', 0, 0),
(64, 64, '0.00', 0, 0),
(65, 65, '0.00', 0, 0),
(66, 66, '0.00', 0, 0),
(67, 67, '120.00', 0, 0),
(68, 68, '0.00', 0, 0),
(69, 69, '0.00', 0, 0),
(70, 70, '0.00', 0, 0),
(71, 71, '0.00', 0, 0),
(72, 72, '0.00', 0, 0),
(73, 73, '0.00', 0, 0),
(74, 74, '0.00', 0, 0),
(75, 75, '0.00', 0, 0),
(76, 76, '0.00', 0, 0),
(77, 77, '0.00', 0, 0),
(78, 78, '0.00', 0, 0),
(79, 79, '0.00', 0, 0),
(80, 80, '0.00', 0, 0),
(81, 81, '0.00', 0, 0),
(82, 82, '0.00', 0, 0),
(83, 83, '0.00', 0, 0),
(84, 84, '0.00', 0, 0),
(85, 85, '0.00', 0, 0),
(86, 86, '0.00', 0, 0),
(87, 87, '0.00', 0, 0),
(88, 88, '0.00', 0, 0),
(89, 89, '0.00', 0, 0),
(90, 90, '0.00', 0, 0),
(91, 91, '0.00', 0, 0),
(92, 92, '0.00', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ecs_plugins`
--

CREATE TABLE IF NOT EXISTS `ecs_plugins` (
  `code` varchar(30) NOT NULL DEFAULT '',
  `version` varchar(10) NOT NULL DEFAULT '',
  `library` varchar(255) NOT NULL DEFAULT '',
  `assign` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `install_date` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecs_products`
--

CREATE TABLE IF NOT EXISTS `ecs_products` (
  `product_id` mediumint(8) unsigned NOT NULL,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_attr` varchar(50) DEFAULT NULL,
  `product_sn` varchar(60) DEFAULT NULL,
  `product_number` mediumint(8) unsigned DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_products`
--

INSERT INTO `ecs_products` (`product_id`, `goods_id`, `goods_attr`, `product_sn`, `product_number`) VALUES
(1, 9, '18|21', 'ECS000009g_p1', 99),
(2, 9, '18|20', 'ECS000009g_p2', 1);

-- --------------------------------------------------------

--
-- 表的结构 `ecs_push`
--

CREATE TABLE IF NOT EXISTS `ecs_push` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `content` varchar(200) NOT NULL COMMENT '内容',
  `photo` varchar(200) DEFAULT NULL COMMENT '图片',
  `objectId` varchar(200) DEFAULT NULL COMMENT 'leancloud返回的objectId',
  `link` varchar(200) DEFAULT NULL COMMENT '链接',
  `platform` tinyint(4) NOT NULL DEFAULT '3' COMMENT '平台类型',
  `push_type` tinyint(4) DEFAULT '0' COMMENT '任务类型 1 定时任务 0 即时推送',
  `message_type` tinyint(4) DEFAULT '1' COMMENT '消息类型 1　系统消息 ２ 物流消息',
  `isPush` tinyint(4) DEFAULT '0' COMMENT '定时任务是否已经推送',
  `push_at` timestamp NULL DEFAULT NULL COMMENT '定时推送时间',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态 0:关闭 1:开启 默认开启',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecs_rank_log`
--

CREATE TABLE IF NOT EXISTS `ecs_rank_log` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) NOT NULL,
  `rank_id` int(10) DEFAULT NULL,
  `rank_name` varchar(45) DEFAULT NULL,
  `pay_points` int(10) DEFAULT NULL,
  `create_at` int(10) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='等级兑换记录';

--
-- 转存表中的数据 `ecs_rank_log`
--

INSERT INTO `ecs_rank_log` (`id`, `user_id`, `rank_id`, `rank_name`, `pay_points`, `create_at`) VALUES
(1, 2, 1, '注册用户', 0, 1502766101),
(2, 2, 1, '注册用户', 0, 1502766147),
(3, 2, 2, 'N', 0, 1502766476),
(4, 4, 1, '注册用户', 50000, 1502767504);

-- --------------------------------------------------------

--
-- 表的结构 `ecs_region`
--

CREATE TABLE IF NOT EXISTS `ecs_region` (
  `region_id` smallint(5) unsigned NOT NULL,
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `region_name` varchar(120) NOT NULL DEFAULT '',
  `region_type` tinyint(1) NOT NULL DEFAULT '2',
  `agency_id` smallint(5) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=4044 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_region`
--

INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES
(1, 0, '中国', 0, 0),
(2, 1, '北京', 1, 0),
(3, 1, '天津', 1, 0),
(4, 1, '河北省', 1, 0),
(5, 1, '山西省', 1, 0),
(6, 1, '内蒙古自治区', 1, 0),
(7, 1, '辽宁省', 1, 0),
(8, 1, '吉林省', 1, 0),
(9, 1, '黑龙江省', 1, 0),
(10, 1, '上海', 1, 0),
(11, 1, '江苏省', 1, 0),
(12, 1, '浙江省', 1, 0),
(13, 1, '安徽省', 1, 0),
(14, 1, '福建省', 1, 0),
(15, 1, '江西省', 1, 0),
(16, 1, '山东省', 1, 0),
(17, 1, '河南省', 1, 0),
(18, 1, '湖北省', 1, 0),
(19, 1, '湖南省', 1, 0),
(20, 1, '广东省', 1, 0),
(21, 1, '广西壮族自治区', 1, 0),
(22, 1, '海南省', 1, 0),
(23, 1, '重庆', 1, 0),
(24, 1, '四川省', 1, 0),
(25, 1, '贵州省', 1, 0),
(26, 1, '云南省', 1, 0),
(27, 1, '西藏自治区', 1, 0),
(28, 1, '陕西省', 1, 0),
(29, 1, '甘肃省', 1, 0),
(30, 1, '青海省', 1, 0),
(31, 1, '宁夏回族自治区', 1, 0),
(32, 1, '新疆维吾尔自治区', 1, 0),
(33, 1, '台湾', 1, 0),
(34, 1, '香港特别行政区', 1, 0),
(35, 1, '澳门特别行政区', 1, 0),
(36, 1, '海外', 1, 0),
(37, 2, '北京市', 2, 0),
(38, 3, '天津市', 2, 0),
(39, 4, '石家庄市', 2, 0),
(40, 4, '唐山市', 2, 0),
(41, 4, '秦皇岛市', 2, 0),
(42, 4, '邯郸市', 2, 0),
(43, 4, '邢台市', 2, 0),
(44, 4, '保定市', 2, 0),
(45, 4, '张家口市', 2, 0),
(46, 4, '承德市', 2, 0),
(47, 4, '沧州市', 2, 0),
(48, 4, '廊坊市', 2, 0),
(49, 4, '衡水市', 2, 0),
(50, 5, '太原市', 2, 0),
(51, 5, '大同市', 2, 0),
(52, 5, '阳泉市', 2, 0),
(53, 5, '长治市', 2, 0),
(54, 5, '晋城市', 2, 0),
(55, 5, '朔州市', 2, 0),
(56, 5, '晋中市', 2, 0),
(57, 5, '运城市', 2, 0),
(58, 5, '忻州市', 2, 0),
(59, 5, '临汾市', 2, 0),
(60, 5, '吕梁市', 2, 0),
(61, 6, '呼和浩特市', 2, 0),
(62, 6, '包头市', 2, 0),
(63, 6, '乌海市', 2, 0),
(64, 6, '赤峰市', 2, 0),
(65, 6, '通辽市', 2, 0),
(66, 6, '鄂尔多斯市', 2, 0),
(67, 6, '呼伦贝尔市', 2, 0),
(68, 6, '巴彦淖尔市', 2, 0),
(69, 6, '乌兰察布市', 2, 0),
(70, 6, '兴安盟', 2, 0),
(71, 6, '锡林郭勒盟', 2, 0),
(72, 6, '阿拉善盟', 2, 0),
(73, 7, '沈阳市', 2, 0),
(74, 7, '大连市', 2, 0),
(75, 7, '鞍山市', 2, 0),
(76, 7, '抚顺市', 2, 0),
(77, 7, '本溪市', 2, 0),
(78, 7, '丹东市', 2, 0),
(79, 7, '锦州市', 2, 0),
(80, 7, '营口市', 2, 0),
(81, 7, '阜新市', 2, 0),
(82, 7, '辽阳市', 2, 0),
(83, 7, '盘锦市', 2, 0),
(84, 7, '铁岭市', 2, 0),
(85, 7, '朝阳市', 2, 0),
(86, 7, '葫芦岛市', 2, 0),
(87, 8, '长春市', 2, 0),
(88, 8, '吉林市', 2, 0),
(89, 8, '四平市', 2, 0),
(90, 8, '辽源市', 2, 0),
(91, 8, '通化市', 2, 0),
(92, 8, '白山市', 2, 0),
(93, 8, '松原市', 2, 0),
(94, 8, '白城市', 2, 0),
(95, 8, '延边朝鲜族自治州', 2, 0),
(96, 9, '哈尔滨市', 2, 0),
(97, 9, '齐齐哈尔市', 2, 0),
(98, 9, '鸡西市', 2, 0),
(99, 9, '鹤岗市', 2, 0),
(100, 9, '双鸭山市', 2, 0),
(101, 9, '大庆市', 2, 0),
(102, 9, '伊春市', 2, 0),
(103, 9, '佳木斯市', 2, 0),
(104, 9, '七台河市', 2, 0),
(105, 9, '牡丹江市', 2, 0),
(106, 9, '黑河市', 2, 0),
(107, 9, '绥化市', 2, 0),
(108, 9, '大兴安岭地区', 2, 0),
(109, 10, '上海市', 2, 0),
(110, 11, '南京市', 2, 0),
(111, 11, '无锡市', 2, 0),
(112, 11, '徐州市', 2, 0),
(113, 11, '常州市', 2, 0),
(114, 11, '苏州市', 2, 0),
(115, 11, '南通市', 2, 0),
(116, 11, '连云港市', 2, 0),
(117, 11, '淮安市', 2, 0),
(118, 11, '盐城市', 2, 0),
(119, 11, '扬州市', 2, 0),
(120, 11, '镇江市', 2, 0),
(121, 11, '泰州市', 2, 0),
(122, 11, '宿迁市', 2, 0),
(123, 12, '杭州市', 2, 0),
(124, 12, '宁波市', 2, 0),
(125, 12, '温州市', 2, 0),
(126, 12, '嘉兴市', 2, 0),
(127, 12, '湖州市', 2, 0),
(128, 12, '绍兴市', 2, 0),
(129, 12, '金华市', 2, 0),
(130, 12, '衢州市', 2, 0),
(131, 12, '舟山市', 2, 0),
(132, 12, '台州市', 2, 0),
(133, 12, '丽水市', 2, 0),
(134, 13, '合肥市', 2, 0),
(135, 13, '芜湖市', 2, 0),
(136, 13, '蚌埠市', 2, 0),
(137, 13, '淮南市', 2, 0),
(138, 13, '马鞍山市', 2, 0),
(139, 13, '淮北市', 2, 0),
(140, 13, '铜陵市', 2, 0),
(141, 13, '安庆市', 2, 0),
(142, 13, '黄山市', 2, 0),
(143, 13, '滁州市', 2, 0),
(144, 13, '阜阳市', 2, 0),
(145, 13, '宿州市', 2, 0),
(146, 13, '六安市', 2, 0),
(147, 13, '亳州市', 2, 0),
(148, 13, '池州市', 2, 0),
(149, 13, '宣城市', 2, 0),
(150, 14, '福州市', 2, 0),
(151, 14, '厦门市', 2, 0),
(152, 14, '莆田市', 2, 0),
(153, 14, '三明市', 2, 0),
(154, 14, '泉州市', 2, 0),
(155, 14, '漳州市', 2, 0),
(156, 14, '南平市', 2, 0),
(157, 14, '龙岩市', 2, 0),
(158, 14, '宁德市', 2, 0),
(159, 15, '南昌市', 2, 0),
(160, 15, '景德镇市', 2, 0),
(161, 15, '萍乡市', 2, 0),
(162, 15, '九江市', 2, 0),
(163, 15, '新余市', 2, 0),
(164, 15, '鹰潭市', 2, 0),
(165, 15, '赣州市', 2, 0),
(166, 15, '吉安市', 2, 0),
(167, 15, '宜春市', 2, 0),
(168, 15, '抚州市', 2, 0),
(169, 15, '上饶市', 2, 0),
(170, 16, '济南市', 2, 0),
(171, 16, '青岛市', 2, 0),
(172, 16, '淄博市', 2, 0),
(173, 16, '枣庄市', 2, 0),
(174, 16, '东营市', 2, 0),
(175, 16, '烟台市', 2, 0),
(176, 16, '潍坊市', 2, 0),
(177, 16, '济宁市', 2, 0),
(178, 16, '泰安市', 2, 0),
(179, 16, '威海市', 2, 0),
(180, 16, '日照市', 2, 0),
(181, 16, '莱芜市', 2, 0),
(182, 16, '临沂市', 2, 0),
(183, 16, '德州市', 2, 0),
(184, 16, '聊城市', 2, 0),
(185, 16, '滨州市', 2, 0),
(186, 16, '菏泽市', 2, 0),
(187, 17, '郑州市', 2, 0),
(188, 17, '开封市', 2, 0),
(189, 17, '洛阳市', 2, 0),
(190, 17, '平顶山市', 2, 0),
(191, 17, '安阳市', 2, 0),
(192, 17, '鹤壁市', 2, 0),
(193, 17, '新乡市', 2, 0),
(194, 17, '焦作市', 2, 0),
(195, 17, '濮阳市', 2, 0),
(196, 17, '许昌市', 2, 0),
(197, 17, '漯河市', 2, 0),
(198, 17, '三门峡市', 2, 0),
(199, 17, '南阳市', 2, 0),
(200, 17, '商丘市', 2, 0),
(201, 17, '信阳市', 2, 0),
(202, 17, '周口市', 2, 0),
(203, 17, '驻马店市', 2, 0),
(204, 18, '武汉市', 2, 0),
(205, 18, '黄石市', 2, 0),
(206, 18, '十堰市', 2, 0),
(207, 18, '宜昌市', 2, 0),
(208, 18, '襄阳市', 2, 0),
(209, 18, '鄂州市', 2, 0),
(210, 18, '荆门市', 2, 0),
(211, 18, '孝感市', 2, 0),
(212, 18, '荆州市', 2, 0),
(213, 18, '黄冈市', 2, 0),
(214, 18, '咸宁市', 2, 0),
(215, 18, '随州市', 2, 0),
(216, 18, '恩施土家族苗族自治州', 2, 0),
(217, 19, '长沙市', 2, 0),
(218, 19, '株洲市', 2, 0),
(219, 19, '湘潭市', 2, 0),
(220, 19, '衡阳市', 2, 0),
(221, 19, '邵阳市', 2, 0),
(222, 19, '岳阳市', 2, 0),
(223, 19, '常德市', 2, 0),
(224, 19, '张家界市', 2, 0),
(225, 19, '益阳市', 2, 0),
(226, 19, '郴州市', 2, 0),
(227, 19, '永州市', 2, 0),
(228, 19, '怀化市', 2, 0),
(229, 19, '娄底市', 2, 0),
(230, 19, '湘西土家族苗族自治州', 2, 0),
(231, 20, '广州市', 2, 0),
(232, 20, '韶关市', 2, 0),
(233, 20, '深圳市', 2, 0),
(234, 20, '珠海市', 2, 0),
(235, 20, '汕头市', 2, 0),
(236, 20, '佛山市', 2, 0),
(237, 20, '江门市', 2, 0),
(238, 20, '湛江市', 2, 0),
(239, 20, '茂名市', 2, 0),
(240, 20, '肇庆市', 2, 0),
(241, 20, '惠州市', 2, 0),
(242, 20, '梅州市', 2, 0),
(243, 20, '汕尾市', 2, 0),
(244, 20, '河源市', 2, 0),
(245, 20, '阳江市', 2, 0),
(246, 20, '清远市', 2, 0),
(247, 20, '东莞市', 2, 0),
(248, 20, '中山市', 2, 0),
(249, 20, '东沙群岛', 2, 0),
(250, 20, '潮州市', 2, 0),
(251, 20, '揭阳市', 2, 0),
(252, 20, '云浮市', 2, 0),
(253, 21, '南宁市', 2, 0),
(254, 21, '柳州市', 2, 0),
(255, 21, '桂林市', 2, 0),
(256, 21, '梧州市', 2, 0),
(257, 21, '北海市', 2, 0),
(258, 21, '防城港市', 2, 0),
(259, 21, '钦州市', 2, 0),
(260, 21, '贵港市', 2, 0),
(261, 21, '玉林市', 2, 0),
(262, 21, '百色市', 2, 0),
(263, 21, '贺州市', 2, 0),
(264, 21, '河池市', 2, 0),
(265, 21, '来宾市', 2, 0),
(266, 21, '崇左市', 2, 0),
(267, 22, '海口市', 2, 0),
(268, 22, '三亚市', 2, 0),
(269, 22, '三沙市', 2, 0),
(270, 23, '重庆市', 2, 0),
(271, 24, '成都市', 2, 0),
(272, 24, '自贡市', 2, 0),
(273, 24, '攀枝花市', 2, 0),
(274, 24, '泸州市', 2, 0),
(275, 24, '德阳市', 2, 0),
(276, 24, '绵阳市', 2, 0),
(277, 24, '广元市', 2, 0),
(278, 24, '遂宁市', 2, 0),
(279, 24, '内江市', 2, 0),
(280, 24, '乐山市', 2, 0),
(281, 24, '南充市', 2, 0),
(282, 24, '眉山市', 2, 0),
(283, 24, '宜宾市', 2, 0),
(284, 24, '广安市', 2, 0),
(285, 24, '达州市', 2, 0),
(286, 24, '雅安市', 2, 0),
(287, 24, '巴中市', 2, 0),
(288, 24, '资阳市', 2, 0),
(289, 24, '阿坝藏族羌族自治州', 2, 0),
(290, 24, '甘孜藏族自治州', 2, 0),
(291, 24, '凉山彝族自治州', 2, 0),
(292, 25, '贵阳市', 2, 0),
(293, 25, '六盘水市', 2, 0),
(294, 25, '遵义市', 2, 0),
(295, 25, '安顺市', 2, 0),
(296, 25, '铜仁市', 2, 0),
(297, 25, '黔西南布依族苗族自治州', 2, 0),
(298, 25, '毕节市', 2, 0),
(299, 25, '黔东南苗族侗族自治州', 2, 0),
(300, 25, '黔南布依族苗族自治州', 2, 0),
(301, 26, '昆明市', 2, 0),
(302, 26, '曲靖市', 2, 0),
(303, 26, '玉溪市', 2, 0),
(304, 26, '保山市', 2, 0),
(305, 26, '昭通市', 2, 0),
(306, 26, '丽江市', 2, 0),
(307, 26, '普洱市', 2, 0),
(308, 26, '临沧市', 2, 0),
(309, 26, '楚雄彝族自治州', 2, 0),
(310, 26, '红河哈尼族彝族自治州', 2, 0),
(311, 26, '文山壮族苗族自治州', 2, 0),
(312, 26, '西双版纳傣族自治州', 2, 0),
(313, 26, '大理白族自治州', 2, 0),
(314, 26, '德宏傣族景颇族自治州', 2, 0),
(315, 26, '怒江傈僳族自治州', 2, 0),
(316, 26, '迪庆藏族自治州', 2, 0),
(317, 27, '拉萨市', 2, 0),
(318, 27, '昌都市', 2, 0),
(319, 27, '山南地区', 2, 0),
(320, 27, '日喀则市', 2, 0),
(321, 27, '那曲地区', 2, 0),
(322, 27, '阿里地区', 2, 0),
(323, 27, '林芝市', 2, 0),
(324, 28, '西安市', 2, 0),
(325, 28, '铜川市', 2, 0),
(326, 28, '宝鸡市', 2, 0),
(327, 28, '咸阳市', 2, 0),
(328, 28, '渭南市', 2, 0),
(329, 28, '延安市', 2, 0),
(330, 28, '汉中市', 2, 0),
(331, 28, '榆林市', 2, 0),
(332, 28, '安康市', 2, 0),
(333, 28, '商洛市', 2, 0),
(334, 29, '兰州市', 2, 0),
(335, 29, '嘉峪关市', 2, 0),
(336, 29, '金昌市', 2, 0),
(337, 29, '白银市', 2, 0),
(338, 29, '天水市', 2, 0),
(339, 29, '武威市', 2, 0),
(340, 29, '张掖市', 2, 0),
(341, 29, '平凉市', 2, 0),
(342, 29, '酒泉市', 2, 0),
(343, 29, '庆阳市', 2, 0),
(344, 29, '定西市', 2, 0),
(345, 29, '陇南市', 2, 0),
(346, 29, '临夏回族自治州', 2, 0),
(347, 29, '甘南藏族自治州', 2, 0),
(348, 30, '西宁市', 2, 0),
(349, 30, '海东市', 2, 0),
(350, 30, '海北藏族自治州', 2, 0),
(351, 30, '黄南藏族自治州', 2, 0),
(352, 30, '海南藏族自治州', 2, 0),
(353, 30, '果洛藏族自治州', 2, 0),
(354, 30, '玉树藏族自治州', 2, 0),
(355, 30, '海西蒙古族藏族自治州', 2, 0),
(356, 31, '银川市', 2, 0),
(357, 31, '石嘴山市', 2, 0),
(358, 31, '吴忠市', 2, 0),
(359, 31, '固原市', 2, 0),
(360, 31, '中卫市', 2, 0),
(361, 32, '乌鲁木齐市', 2, 0),
(362, 32, '克拉玛依市', 2, 0),
(363, 32, '吐鲁番市', 2, 0),
(364, 32, '哈密地区', 2, 0),
(365, 32, '昌吉回族自治州', 2, 0),
(366, 32, '博尔塔拉蒙古自治州', 2, 0),
(367, 32, '巴音郭楞蒙古自治州', 2, 0),
(368, 32, '阿克苏地区', 2, 0),
(369, 32, '克孜勒苏柯尔克孜自治州', 2, 0),
(370, 32, '喀什地区', 2, 0),
(371, 32, '和田地区', 2, 0),
(372, 32, '伊犁哈萨克自治州', 2, 0),
(373, 32, '塔城地区', 2, 0),
(374, 32, '阿勒泰地区', 2, 0),
(375, 33, '台北市', 2, 0),
(376, 33, '高雄市', 2, 0),
(377, 33, '台南市', 2, 0),
(378, 33, '台中市', 2, 0),
(379, 33, '金门县', 2, 0),
(380, 33, '南投县', 2, 0),
(381, 33, '基隆市', 2, 0),
(382, 33, '新竹市', 2, 0),
(383, 33, '嘉义市', 2, 0),
(384, 33, '新北市', 2, 0),
(385, 33, '宜兰县', 2, 0),
(386, 33, '新竹县', 2, 0),
(387, 33, '桃园县', 2, 0),
(388, 33, '苗栗县', 2, 0),
(389, 33, '彰化县', 2, 0),
(390, 33, '嘉义县', 2, 0),
(391, 33, '云林县', 2, 0),
(392, 33, '屏东县', 2, 0),
(393, 33, '台东县', 2, 0),
(394, 33, '花莲县', 2, 0),
(395, 33, '澎湖县', 2, 0),
(396, 33, '连江县', 2, 0),
(397, 34, '香港岛', 2, 0),
(398, 34, '九龙', 2, 0),
(399, 34, '新界', 2, 0),
(400, 35, '澳门半岛', 2, 0),
(401, 35, '离岛', 2, 0),
(402, 36, '海外', 2, 0),
(403, 37, '东城区', 3, 0),
(404, 37, '西城区', 3, 0),
(405, 37, '崇文区', 3, 0),
(406, 37, '宣武区', 3, 0),
(407, 37, '朝阳区', 3, 0),
(408, 37, '丰台区', 3, 0),
(409, 37, '石景山区', 3, 0),
(410, 37, '海淀区', 3, 0),
(411, 37, '门头沟区', 3, 0),
(412, 37, '房山区', 3, 0),
(413, 37, '通州区', 3, 0),
(414, 37, '顺义区', 3, 0),
(415, 37, '昌平区', 3, 0),
(416, 37, '大兴区', 3, 0),
(417, 37, '怀柔区', 3, 0),
(418, 37, '平谷区', 3, 0),
(419, 37, '密云县', 3, 0),
(420, 37, '延庆县', 3, 0),
(421, 37, '其它区', 3, 0),
(422, 38, '和平区', 3, 0),
(423, 38, '河东区', 3, 0),
(424, 38, '河西区', 3, 0),
(425, 38, '南开区', 3, 0),
(426, 38, '河北区', 3, 0),
(427, 38, '红桥区', 3, 0),
(428, 38, '塘沽区', 3, 0),
(429, 38, '汉沽区', 3, 0),
(430, 38, '大港区', 3, 0),
(431, 38, '东丽区', 3, 0),
(432, 38, '西青区', 3, 0),
(433, 38, '津南区', 3, 0),
(434, 38, '北辰区', 3, 0),
(435, 38, '武清区', 3, 0),
(436, 38, '宝坻区', 3, 0),
(437, 38, '滨海新区', 3, 0),
(438, 38, '宁河县', 3, 0),
(439, 38, '静海县', 3, 0),
(440, 38, '蓟县', 3, 0),
(441, 38, '其它区', 3, 0),
(442, 39, '长安区', 3, 0),
(443, 39, '桥东区', 3, 0),
(444, 39, '桥西区', 3, 0),
(445, 39, '新华区', 3, 0),
(446, 39, '井陉矿区', 3, 0),
(447, 39, '裕华区', 3, 0),
(448, 39, '井陉县', 3, 0),
(449, 39, '正定县', 3, 0),
(450, 39, '栾城区', 3, 0),
(451, 39, '行唐县', 3, 0),
(452, 39, '灵寿县', 3, 0),
(453, 39, '高邑县', 3, 0),
(454, 39, '深泽县', 3, 0),
(455, 39, '赞皇县', 3, 0),
(456, 39, '无极县', 3, 0),
(457, 39, '平山县', 3, 0),
(458, 39, '元氏县', 3, 0),
(459, 39, '赵县', 3, 0),
(460, 39, '辛集市', 3, 0),
(461, 39, '藁城区', 3, 0),
(462, 39, '晋州市', 3, 0),
(463, 39, '新乐市', 3, 0),
(464, 39, '鹿泉区', 3, 0),
(465, 39, '其它区', 3, 0),
(466, 40, '路南区', 3, 0),
(467, 40, '路北区', 3, 0),
(468, 40, '古冶区', 3, 0),
(469, 40, '开平区', 3, 0),
(470, 40, '丰南区', 3, 0),
(471, 40, '丰润区', 3, 0),
(472, 40, '滦县', 3, 0),
(473, 40, '滦南县', 3, 0),
(474, 40, '乐亭县', 3, 0),
(475, 40, '迁西县', 3, 0),
(476, 40, '玉田县', 3, 0),
(477, 40, '曹妃甸区', 3, 0),
(478, 40, '遵化市', 3, 0),
(479, 40, '迁安市', 3, 0),
(480, 40, '其它区', 3, 0),
(481, 41, '海港区', 3, 0),
(482, 41, '山海关区', 3, 0),
(483, 41, '北戴河区', 3, 0),
(484, 41, '青龙满族自治县', 3, 0),
(485, 41, '昌黎县', 3, 0),
(486, 41, '抚宁县', 3, 0),
(487, 41, '卢龙县', 3, 0),
(488, 41, '其它区', 3, 0),
(489, 41, '经济技术开发区', 3, 0),
(490, 42, '邯山区', 3, 0),
(491, 42, '丛台区', 3, 0),
(492, 42, '复兴区', 3, 0),
(493, 42, '峰峰矿区', 3, 0),
(494, 42, '邯郸县', 3, 0),
(495, 42, '临漳县', 3, 0),
(496, 42, '成安县', 3, 0),
(497, 42, '大名县', 3, 0),
(498, 42, '涉县', 3, 0),
(499, 42, '磁县', 3, 0),
(500, 42, '肥乡县', 3, 0),
(501, 42, '永年县', 3, 0),
(502, 42, '邱县', 3, 0),
(503, 42, '鸡泽县', 3, 0),
(504, 42, '广平县', 3, 0),
(505, 42, '馆陶县', 3, 0),
(506, 42, '魏县', 3, 0),
(507, 42, '曲周县', 3, 0),
(508, 42, '武安市', 3, 0),
(509, 42, '其它区', 3, 0),
(510, 43, '桥东区', 3, 0),
(511, 43, '桥西区', 3, 0),
(512, 43, '邢台县', 3, 0),
(513, 43, '临城县', 3, 0),
(514, 43, '内丘县', 3, 0),
(515, 43, '柏乡县', 3, 0),
(516, 43, '隆尧县', 3, 0),
(517, 43, '任县', 3, 0),
(518, 43, '南和县', 3, 0),
(519, 43, '宁晋县', 3, 0),
(520, 43, '巨鹿县', 3, 0),
(521, 43, '新河县', 3, 0),
(522, 43, '广宗县', 3, 0),
(523, 43, '平乡县', 3, 0),
(524, 43, '威县', 3, 0),
(525, 43, '清河县', 3, 0),
(526, 43, '临西县', 3, 0),
(527, 43, '南宫市', 3, 0),
(528, 43, '沙河市', 3, 0),
(529, 43, '其它区', 3, 0),
(530, 44, '新市区', 3, 0),
(531, 44, '北市区', 3, 0),
(532, 44, '南市区', 3, 0),
(533, 44, '满城县', 3, 0),
(534, 44, '清苑县', 3, 0),
(535, 44, '涞水县', 3, 0),
(536, 44, '阜平县', 3, 0),
(537, 44, '徐水县', 3, 0),
(538, 44, '定兴县', 3, 0),
(539, 44, '唐县', 3, 0),
(540, 44, '高阳县', 3, 0),
(541, 44, '容城县', 3, 0),
(542, 44, '涞源县', 3, 0),
(543, 44, '望都县', 3, 0),
(544, 44, '安新县', 3, 0),
(545, 44, '易县', 3, 0),
(546, 44, '曲阳县', 3, 0),
(547, 44, '蠡县', 3, 0),
(548, 44, '顺平县', 3, 0),
(549, 44, '博野县', 3, 0),
(550, 44, '雄县', 3, 0),
(551, 44, '涿州市', 3, 0),
(552, 44, '定州市', 3, 0),
(553, 44, '安国市', 3, 0),
(554, 44, '高碑店市', 3, 0),
(555, 44, '高开区', 3, 0),
(556, 44, '其它区', 3, 0),
(557, 45, '桥东区', 3, 0),
(558, 45, '桥西区', 3, 0),
(559, 45, '宣化区', 3, 0),
(560, 45, '下花园区', 3, 0),
(561, 45, '宣化县', 3, 0),
(562, 45, '张北县', 3, 0),
(563, 45, '康保县', 3, 0),
(564, 45, '沽源县', 3, 0),
(565, 45, '尚义县', 3, 0),
(566, 45, '蔚县', 3, 0),
(567, 45, '阳原县', 3, 0),
(568, 45, '怀安县', 3, 0),
(569, 45, '万全县', 3, 0),
(570, 45, '怀来县', 3, 0),
(571, 45, '涿鹿县', 3, 0),
(572, 45, '赤城县', 3, 0),
(573, 45, '崇礼县', 3, 0),
(574, 45, '其它区', 3, 0),
(575, 46, '双桥区', 3, 0),
(576, 46, '双滦区', 3, 0),
(577, 46, '鹰手营子矿区', 3, 0),
(578, 46, '承德县', 3, 0),
(579, 46, '兴隆县', 3, 0),
(580, 46, '平泉县', 3, 0),
(581, 46, '滦平县', 3, 0),
(582, 46, '隆化县', 3, 0),
(583, 46, '丰宁满族自治县', 3, 0),
(584, 46, '宽城满族自治县', 3, 0),
(585, 46, '围场满族蒙古族自治县', 3, 0),
(586, 46, '其它区', 3, 0),
(587, 47, '新华区', 3, 0),
(588, 47, '运河区', 3, 0),
(589, 47, '沧县', 3, 0),
(590, 47, '青县', 3, 0),
(591, 47, '东光县', 3, 0),
(592, 47, '海兴县', 3, 0),
(593, 47, '盐山县', 3, 0),
(594, 47, '肃宁县', 3, 0),
(595, 47, '南皮县', 3, 0),
(596, 47, '吴桥县', 3, 0),
(597, 47, '献县', 3, 0),
(598, 47, '孟村回族自治县', 3, 0),
(599, 47, '泊头市', 3, 0),
(600, 47, '任丘市', 3, 0),
(601, 47, '黄骅市', 3, 0),
(602, 47, '河间市', 3, 0),
(603, 47, '其它区', 3, 0),
(604, 48, '安次区', 3, 0),
(605, 48, '广阳区', 3, 0),
(606, 48, '固安县', 3, 0),
(607, 48, '永清县', 3, 0),
(608, 48, '香河县', 3, 0),
(609, 48, '大城县', 3, 0),
(610, 48, '文安县', 3, 0),
(611, 48, '大厂回族自治县', 3, 0),
(612, 48, '开发区', 3, 0),
(613, 48, '燕郊经济技术开发区', 3, 0),
(614, 48, '霸州市', 3, 0),
(615, 48, '三河市', 3, 0),
(616, 48, '其它区', 3, 0),
(617, 49, '桃城区', 3, 0),
(618, 49, '枣强县', 3, 0),
(619, 49, '武邑县', 3, 0),
(620, 49, '武强县', 3, 0),
(621, 49, '饶阳县', 3, 0),
(622, 49, '安平县', 3, 0),
(623, 49, '故城县', 3, 0),
(624, 49, '景县', 3, 0),
(625, 49, '阜城县', 3, 0),
(626, 49, '冀州市', 3, 0),
(627, 49, '深州市', 3, 0),
(628, 49, '其它区', 3, 0),
(629, 50, '小店区', 3, 0),
(630, 50, '迎泽区', 3, 0),
(631, 50, '杏花岭区', 3, 0),
(632, 50, '尖草坪区', 3, 0),
(633, 50, '万柏林区', 3, 0),
(634, 50, '晋源区', 3, 0),
(635, 50, '清徐县', 3, 0),
(636, 50, '阳曲县', 3, 0),
(637, 50, '娄烦县', 3, 0),
(638, 50, '古交市', 3, 0),
(639, 50, '其它区', 3, 0),
(640, 51, '城区', 3, 0),
(641, 51, '矿区', 3, 0),
(642, 51, '南郊区', 3, 0),
(643, 51, '新荣区', 3, 0),
(644, 51, '阳高县', 3, 0),
(645, 51, '天镇县', 3, 0),
(646, 51, '广灵县', 3, 0),
(647, 51, '灵丘县', 3, 0),
(648, 51, '浑源县', 3, 0),
(649, 51, '左云县', 3, 0),
(650, 51, '大同县', 3, 0),
(651, 51, '其它区', 3, 0),
(652, 52, '城区', 3, 0),
(653, 52, '矿区', 3, 0),
(654, 52, '郊区', 3, 0),
(655, 52, '平定县', 3, 0),
(656, 52, '盂县', 3, 0),
(657, 52, '其它区', 3, 0),
(658, 53, '长治县', 3, 0),
(659, 53, '襄垣县', 3, 0),
(660, 53, '屯留县', 3, 0),
(661, 53, '平顺县', 3, 0),
(662, 53, '黎城县', 3, 0),
(663, 53, '壶关县', 3, 0),
(664, 53, '长子县', 3, 0),
(665, 53, '武乡县', 3, 0),
(666, 53, '沁县', 3, 0),
(667, 53, '沁源县', 3, 0),
(668, 53, '潞城市', 3, 0),
(669, 53, '城区', 3, 0),
(670, 53, '郊区', 3, 0),
(671, 53, '高新区', 3, 0),
(672, 53, '其它区', 3, 0),
(673, 54, '城区', 3, 0),
(674, 54, '沁水县', 3, 0),
(675, 54, '阳城县', 3, 0),
(676, 54, '陵川县', 3, 0),
(677, 54, '泽州县', 3, 0),
(678, 54, '高平市', 3, 0),
(679, 54, '其它区', 3, 0),
(680, 55, '朔城区', 3, 0),
(681, 55, '平鲁区', 3, 0),
(682, 55, '山阴县', 3, 0),
(683, 55, '应县', 3, 0),
(684, 55, '右玉县', 3, 0),
(685, 55, '怀仁县', 3, 0),
(686, 55, '其它区', 3, 0),
(687, 56, '榆次区', 3, 0),
(688, 56, '榆社县', 3, 0),
(689, 56, '左权县', 3, 0),
(690, 56, '和顺县', 3, 0),
(691, 56, '昔阳县', 3, 0),
(692, 56, '寿阳县', 3, 0),
(693, 56, '太谷县', 3, 0),
(694, 56, '祁县', 3, 0),
(695, 56, '平遥县', 3, 0),
(696, 56, '灵石县', 3, 0),
(697, 56, '介休市', 3, 0),
(698, 56, '其它区', 3, 0),
(699, 57, '盐湖区', 3, 0),
(700, 57, '临猗县', 3, 0),
(701, 57, '万荣县', 3, 0),
(702, 57, '闻喜县', 3, 0),
(703, 57, '稷山县', 3, 0),
(704, 57, '新绛县', 3, 0),
(705, 57, '绛县', 3, 0),
(706, 57, '垣曲县', 3, 0),
(707, 57, '夏县', 3, 0),
(708, 57, '平陆县', 3, 0),
(709, 57, '芮城县', 3, 0),
(710, 57, '永济市', 3, 0),
(711, 57, '河津市', 3, 0),
(712, 57, '其它区', 3, 0),
(713, 58, '忻府区', 3, 0),
(714, 58, '定襄县', 3, 0),
(715, 58, '五台县', 3, 0),
(716, 58, '代县', 3, 0),
(717, 58, '繁峙县', 3, 0),
(718, 58, '宁武县', 3, 0),
(719, 58, '静乐县', 3, 0),
(720, 58, '神池县', 3, 0),
(721, 58, '五寨县', 3, 0),
(722, 58, '岢岚县', 3, 0),
(723, 58, '河曲县', 3, 0),
(724, 58, '保德县', 3, 0),
(725, 58, '偏关县', 3, 0),
(726, 58, '原平市', 3, 0),
(727, 58, '其它区', 3, 0),
(728, 59, '尧都区', 3, 0),
(729, 59, '曲沃县', 3, 0),
(730, 59, '翼城县', 3, 0),
(731, 59, '襄汾县', 3, 0),
(732, 59, '洪洞县', 3, 0),
(733, 59, '古县', 3, 0),
(734, 59, '安泽县', 3, 0),
(735, 59, '浮山县', 3, 0),
(736, 59, '吉县', 3, 0),
(737, 59, '乡宁县', 3, 0),
(738, 59, '大宁县', 3, 0),
(739, 59, '隰县', 3, 0),
(740, 59, '永和县', 3, 0),
(741, 59, '蒲县', 3, 0),
(742, 59, '汾西县', 3, 0),
(743, 59, '侯马市', 3, 0),
(744, 59, '霍州市', 3, 0),
(745, 59, '其它区', 3, 0),
(746, 60, '离石区', 3, 0),
(747, 60, '文水县', 3, 0),
(748, 60, '交城县', 3, 0),
(749, 60, '兴县', 3, 0),
(750, 60, '临县', 3, 0),
(751, 60, '柳林县', 3, 0),
(752, 60, '石楼县', 3, 0),
(753, 60, '岚县', 3, 0),
(754, 60, '方山县', 3, 0),
(755, 60, '中阳县', 3, 0),
(756, 60, '交口县', 3, 0),
(757, 60, '孝义市', 3, 0),
(758, 60, '汾阳市', 3, 0),
(759, 60, '其它区', 3, 0),
(760, 61, '新城区', 3, 0),
(761, 61, '回民区', 3, 0),
(762, 61, '玉泉区', 3, 0),
(763, 61, '赛罕区', 3, 0),
(764, 61, '土默特左旗', 3, 0),
(765, 61, '托克托县', 3, 0),
(766, 61, '和林格尔县', 3, 0),
(767, 61, '清水河县', 3, 0),
(768, 61, '武川县', 3, 0),
(769, 61, '其它区', 3, 0),
(770, 62, '东河区', 3, 0),
(771, 62, '昆都仑区', 3, 0),
(772, 62, '青山区', 3, 0),
(773, 62, '石拐区', 3, 0),
(774, 62, '白云鄂博矿区', 3, 0),
(775, 62, '九原区', 3, 0),
(776, 62, '土默特右旗', 3, 0),
(777, 62, '固阳县', 3, 0),
(778, 62, '达尔罕茂明安联合旗', 3, 0),
(779, 62, '其它区', 3, 0),
(780, 63, '海勃湾区', 3, 0),
(781, 63, '海南区', 3, 0),
(782, 63, '乌达区', 3, 0),
(783, 63, '其它区', 3, 0),
(784, 64, '红山区', 3, 0),
(785, 64, '元宝山区', 3, 0),
(786, 64, '松山区', 3, 0),
(787, 64, '阿鲁科尔沁旗', 3, 0),
(788, 64, '巴林左旗', 3, 0),
(789, 64, '巴林右旗', 3, 0),
(790, 64, '林西县', 3, 0),
(791, 64, '克什克腾旗', 3, 0),
(792, 64, '翁牛特旗', 3, 0),
(793, 64, '喀喇沁旗', 3, 0),
(794, 64, '宁城县', 3, 0),
(795, 64, '敖汉旗', 3, 0),
(796, 64, '其它区', 3, 0),
(797, 65, '科尔沁区', 3, 0),
(798, 65, '科尔沁左翼中旗', 3, 0),
(799, 65, '科尔沁左翼后旗', 3, 0),
(800, 65, '开鲁县', 3, 0),
(801, 65, '库伦旗', 3, 0),
(802, 65, '奈曼旗', 3, 0),
(803, 65, '扎鲁特旗', 3, 0),
(804, 65, '霍林郭勒市', 3, 0),
(805, 65, '其它区', 3, 0),
(806, 66, '东胜区', 3, 0),
(807, 66, '达拉特旗', 3, 0),
(808, 66, '准格尔旗', 3, 0),
(809, 66, '鄂托克前旗', 3, 0),
(810, 66, '鄂托克旗', 3, 0),
(811, 66, '杭锦旗', 3, 0),
(812, 66, '乌审旗', 3, 0),
(813, 66, '伊金霍洛旗', 3, 0),
(814, 66, '其它区', 3, 0),
(815, 67, '海拉尔区', 3, 0),
(816, 67, '扎赉诺尔区', 3, 0),
(817, 67, '阿荣旗', 3, 0),
(818, 67, '莫力达瓦达斡尔族自治旗', 3, 0),
(819, 67, '鄂伦春自治旗', 3, 0),
(820, 67, '鄂温克族自治旗', 3, 0),
(821, 67, '陈巴尔虎旗', 3, 0),
(822, 67, '新巴尔虎左旗', 3, 0),
(823, 67, '新巴尔虎右旗', 3, 0),
(824, 67, '满洲里市', 3, 0),
(825, 67, '牙克石市', 3, 0),
(826, 67, '扎兰屯市', 3, 0),
(827, 67, '额尔古纳市', 3, 0),
(828, 67, '根河市', 3, 0),
(829, 67, '其它区', 3, 0),
(830, 68, '临河区', 3, 0),
(831, 68, '五原县', 3, 0),
(832, 68, '磴口县', 3, 0),
(833, 68, '乌拉特前旗', 3, 0),
(834, 68, '乌拉特中旗', 3, 0),
(835, 68, '乌拉特后旗', 3, 0),
(836, 68, '杭锦后旗', 3, 0),
(837, 68, '其它区', 3, 0),
(838, 69, '集宁区', 3, 0),
(839, 69, '卓资县', 3, 0),
(840, 69, '化德县', 3, 0),
(841, 69, '商都县', 3, 0),
(842, 69, '兴和县', 3, 0),
(843, 69, '凉城县', 3, 0),
(844, 69, '察哈尔右翼前旗', 3, 0),
(845, 69, '察哈尔右翼中旗', 3, 0),
(846, 69, '察哈尔右翼后旗', 3, 0),
(847, 69, '四子王旗', 3, 0),
(848, 69, '丰镇市', 3, 0),
(849, 69, '其它区', 3, 0),
(850, 70, '乌兰浩特市', 3, 0),
(851, 70, '阿尔山市', 3, 0),
(852, 70, '科尔沁右翼前旗', 3, 0),
(853, 70, '科尔沁右翼中旗', 3, 0),
(854, 70, '扎赉特旗', 3, 0),
(855, 70, '突泉县', 3, 0),
(856, 70, '其它区', 3, 0),
(857, 71, '二连浩特市', 3, 0),
(858, 71, '锡林浩特市', 3, 0),
(859, 71, '阿巴嘎旗', 3, 0),
(860, 71, '苏尼特左旗', 3, 0),
(861, 71, '苏尼特右旗', 3, 0),
(862, 71, '东乌珠穆沁旗', 3, 0),
(863, 71, '西乌珠穆沁旗', 3, 0),
(864, 71, '太仆寺旗', 3, 0),
(865, 71, '镶黄旗', 3, 0),
(866, 71, '正镶白旗', 3, 0),
(867, 71, '正蓝旗', 3, 0),
(868, 71, '多伦县', 3, 0),
(869, 71, '其它区', 3, 0),
(870, 72, '阿拉善左旗', 3, 0),
(871, 72, '阿拉善右旗', 3, 0),
(872, 72, '额济纳旗', 3, 0),
(873, 72, '其它区', 3, 0),
(874, 73, '和平区', 3, 0),
(875, 73, '沈河区', 3, 0),
(876, 73, '大东区', 3, 0),
(877, 73, '皇姑区', 3, 0),
(878, 73, '铁西区', 3, 0),
(879, 73, '苏家屯区', 3, 0),
(880, 73, '浑南区', 3, 0),
(881, 73, '新城子区', 3, 0),
(882, 73, '于洪区', 3, 0),
(883, 73, '辽中县', 3, 0),
(884, 73, '康平县', 3, 0),
(885, 73, '法库县', 3, 0),
(886, 73, '新民市', 3, 0),
(887, 73, '浑南新区', 3, 0),
(888, 73, '张士开发区', 3, 0),
(889, 73, '沈北新区', 3, 0),
(890, 73, '其它区', 3, 0),
(891, 74, '中山区', 3, 0),
(892, 74, '西岗区', 3, 0),
(893, 74, '沙河口区', 3, 0),
(894, 74, '甘井子区', 3, 0),
(895, 74, '旅顺口区', 3, 0),
(896, 74, '金州区', 3, 0),
(897, 74, '长海县', 3, 0),
(898, 74, '开发区', 3, 0),
(899, 74, '瓦房店市', 3, 0),
(900, 74, '普兰店市', 3, 0),
(901, 74, '庄河市', 3, 0),
(902, 74, '岭前区', 3, 0),
(903, 74, '其它区', 3, 0),
(904, 75, '铁东区', 3, 0),
(905, 75, '铁西区', 3, 0),
(906, 75, '立山区', 3, 0),
(907, 75, '千山区', 3, 0),
(908, 75, '台安县', 3, 0),
(909, 75, '岫岩满族自治县', 3, 0),
(910, 75, '高新区', 3, 0),
(911, 75, '海城市', 3, 0),
(912, 75, '其它区', 3, 0),
(913, 76, '新抚区', 3, 0),
(914, 76, '东洲区', 3, 0),
(915, 76, '望花区', 3, 0),
(916, 76, '顺城区', 3, 0),
(917, 76, '抚顺县', 3, 0),
(918, 76, '新宾满族自治县', 3, 0),
(919, 76, '清原满族自治县', 3, 0),
(920, 76, '其它区', 3, 0),
(921, 77, '平山区', 3, 0),
(922, 77, '溪湖区', 3, 0),
(923, 77, '明山区', 3, 0),
(924, 77, '南芬区', 3, 0),
(925, 77, '本溪满族自治县', 3, 0),
(926, 77, '桓仁满族自治县', 3, 0),
(927, 77, '其它区', 3, 0),
(928, 78, '元宝区', 3, 0),
(929, 78, '振兴区', 3, 0),
(930, 78, '振安区', 3, 0),
(931, 78, '宽甸满族自治县', 3, 0),
(932, 78, '东港市', 3, 0),
(933, 78, '凤城市', 3, 0),
(934, 78, '其它区', 3, 0),
(935, 79, '古塔区', 3, 0),
(936, 79, '凌河区', 3, 0),
(937, 79, '太和区', 3, 0),
(938, 79, '黑山县', 3, 0),
(939, 79, '义县', 3, 0),
(940, 79, '凌海市', 3, 0),
(941, 79, '北镇市', 3, 0),
(942, 79, '其它区', 3, 0),
(943, 80, '站前区', 3, 0),
(944, 80, '西市区', 3, 0),
(945, 80, '鲅鱼圈区', 3, 0),
(946, 80, '老边区', 3, 0),
(947, 80, '盖州市', 3, 0),
(948, 80, '大石桥市', 3, 0),
(949, 80, '其它区', 3, 0),
(950, 81, '海州区', 3, 0),
(951, 81, '新邱区', 3, 0),
(952, 81, '太平区', 3, 0),
(953, 81, '清河门区', 3, 0),
(954, 81, '细河区', 3, 0),
(955, 81, '阜新蒙古族自治县', 3, 0),
(956, 81, '彰武县', 3, 0),
(957, 81, '其它区', 3, 0),
(958, 82, '白塔区', 3, 0),
(959, 82, '文圣区', 3, 0),
(960, 82, '宏伟区', 3, 0),
(961, 82, '弓长岭区', 3, 0),
(962, 82, '太子河区', 3, 0),
(963, 82, '辽阳县', 3, 0),
(964, 82, '灯塔市', 3, 0),
(965, 82, '其它区', 3, 0),
(966, 83, '双台子区', 3, 0),
(967, 83, '兴隆台区', 3, 0),
(968, 83, '大洼县', 3, 0),
(969, 83, '盘山县', 3, 0),
(970, 83, '其它区', 3, 0),
(971, 84, '银州区', 3, 0),
(972, 84, '清河区', 3, 0),
(973, 84, '铁岭县', 3, 0),
(974, 84, '西丰县', 3, 0),
(975, 84, '昌图县', 3, 0),
(976, 84, '调兵山市', 3, 0),
(977, 84, '开原市', 3, 0),
(978, 84, '其它区', 3, 0),
(979, 85, '双塔区', 3, 0),
(980, 85, '龙城区', 3, 0),
(981, 85, '朝阳县', 3, 0),
(982, 85, '建平县', 3, 0),
(983, 85, '喀喇沁左翼蒙古族自治县', 3, 0),
(984, 85, '北票市', 3, 0),
(985, 85, '凌源市', 3, 0),
(986, 85, '其它区', 3, 0),
(987, 86, '连山区', 3, 0),
(988, 86, '龙港区', 3, 0),
(989, 86, '南票区', 3, 0),
(990, 86, '绥中县', 3, 0),
(991, 86, '建昌县', 3, 0),
(992, 86, '兴城市', 3, 0),
(993, 86, '其它区', 3, 0),
(994, 87, '南关区', 3, 0),
(995, 87, '宽城区', 3, 0),
(996, 87, '朝阳区', 3, 0),
(997, 87, '二道区', 3, 0),
(998, 87, '绿园区', 3, 0),
(999, 87, '双阳区', 3, 0),
(1000, 87, '农安县', 3, 0),
(1001, 87, '九台区', 3, 0),
(1002, 87, '榆树市', 3, 0),
(1003, 87, '德惠市', 3, 0),
(1004, 87, '高新技术产业开发区', 3, 0),
(1005, 87, '汽车产业开发区', 3, 0),
(1006, 87, '经济技术开发区', 3, 0),
(1007, 87, '净月旅游开发区', 3, 0),
(1008, 87, '其它区', 3, 0),
(1009, 88, '昌邑区', 3, 0),
(1010, 88, '龙潭区', 3, 0),
(1011, 88, '船营区', 3, 0),
(1012, 88, '丰满区', 3, 0),
(1013, 88, '永吉县', 3, 0),
(1014, 88, '蛟河市', 3, 0),
(1015, 88, '桦甸市', 3, 0),
(1016, 88, '舒兰市', 3, 0),
(1017, 88, '磐石市', 3, 0),
(1018, 88, '其它区', 3, 0),
(1019, 89, '铁西区', 3, 0),
(1020, 89, '铁东区', 3, 0),
(1021, 89, '梨树县', 3, 0),
(1022, 89, '伊通满族自治县', 3, 0),
(1023, 89, '公主岭市', 3, 0),
(1024, 89, '双辽市', 3, 0),
(1025, 89, '其它区', 3, 0),
(1026, 90, '龙山区', 3, 0),
(1027, 90, '西安区', 3, 0),
(1028, 90, '东丰县', 3, 0),
(1029, 90, '东辽县', 3, 0),
(1030, 90, '其它区', 3, 0),
(1031, 91, '东昌区', 3, 0),
(1032, 91, '二道江区', 3, 0),
(1033, 91, '通化县', 3, 0),
(1034, 91, '辉南县', 3, 0),
(1035, 91, '柳河县', 3, 0),
(1036, 91, '梅河口市', 3, 0),
(1037, 91, '集安市', 3, 0),
(1038, 91, '其它区', 3, 0),
(1039, 92, '浑江区', 3, 0),
(1040, 92, '抚松县', 3, 0),
(1041, 92, '靖宇县', 3, 0),
(1042, 92, '长白朝鲜族自治县', 3, 0),
(1043, 92, '江源区', 3, 0),
(1044, 92, '临江市', 3, 0),
(1045, 92, '其它区', 3, 0),
(1046, 93, '宁江区', 3, 0),
(1047, 93, '前郭尔罗斯蒙古族自治县', 3, 0),
(1048, 93, '长岭县', 3, 0),
(1049, 93, '乾安县', 3, 0),
(1050, 93, '扶余市', 3, 0),
(1051, 93, '其它区', 3, 0),
(1052, 94, '洮北区', 3, 0),
(1053, 94, '镇赉县', 3, 0),
(1054, 94, '通榆县', 3, 0),
(1055, 94, '洮南市', 3, 0),
(1056, 94, '大安市', 3, 0),
(1057, 94, '其它区', 3, 0),
(1058, 95, '延吉市', 3, 0),
(1059, 95, '图们市', 3, 0),
(1060, 95, '敦化市', 3, 0),
(1061, 95, '珲春市', 3, 0),
(1062, 95, '龙井市', 3, 0),
(1063, 95, '和龙市', 3, 0),
(1064, 95, '汪清县', 3, 0),
(1065, 95, '安图县', 3, 0),
(1066, 95, '其它区', 3, 0),
(1067, 96, '道里区', 3, 0),
(1068, 96, '南岗区', 3, 0),
(1069, 96, '道外区', 3, 0),
(1070, 96, '香坊区', 3, 0),
(1071, 96, '动力区', 3, 0),
(1072, 96, '平房区', 3, 0),
(1073, 96, '松北区', 3, 0),
(1074, 96, '呼兰区', 3, 0),
(1075, 96, '依兰县', 3, 0),
(1076, 96, '方正县', 3, 0),
(1077, 96, '宾县', 3, 0),
(1078, 96, '巴彦县', 3, 0),
(1079, 96, '木兰县', 3, 0),
(1080, 96, '通河县', 3, 0),
(1081, 96, '延寿县', 3, 0),
(1082, 96, '阿城区', 3, 0),
(1083, 96, '双城区', 3, 0),
(1084, 96, '尚志市', 3, 0),
(1085, 96, '五常市', 3, 0),
(1086, 96, '阿城市', 3, 0),
(1087, 96, '其它区', 3, 0),
(1088, 97, '龙沙区', 3, 0),
(1089, 97, '建华区', 3, 0),
(1090, 97, '铁锋区', 3, 0),
(1091, 97, '昂昂溪区', 3, 0),
(1092, 97, '富拉尔基区', 3, 0),
(1093, 97, '碾子山区', 3, 0),
(1094, 97, '梅里斯达斡尔族区', 3, 0),
(1095, 97, '龙江县', 3, 0),
(1096, 97, '依安县', 3, 0),
(1097, 97, '泰来县', 3, 0),
(1098, 97, '甘南县', 3, 0),
(1099, 97, '富裕县', 3, 0),
(1100, 97, '克山县', 3, 0),
(1101, 97, '克东县', 3, 0),
(1102, 97, '拜泉县', 3, 0),
(1103, 97, '讷河市', 3, 0),
(1104, 97, '其它区', 3, 0),
(1105, 98, '鸡冠区', 3, 0),
(1106, 98, '恒山区', 3, 0),
(1107, 98, '滴道区', 3, 0),
(1108, 98, '梨树区', 3, 0),
(1109, 98, '城子河区', 3, 0),
(1110, 98, '麻山区', 3, 0),
(1111, 98, '鸡东县', 3, 0),
(1112, 98, '虎林市', 3, 0),
(1113, 98, '密山市', 3, 0),
(1114, 98, '其它区', 3, 0),
(1115, 99, '向阳区', 3, 0),
(1116, 99, '工农区', 3, 0),
(1117, 99, '南山区', 3, 0),
(1118, 99, '兴安区', 3, 0),
(1119, 99, '东山区', 3, 0),
(1120, 99, '兴山区', 3, 0),
(1121, 99, '萝北县', 3, 0),
(1122, 99, '绥滨县', 3, 0),
(1123, 99, '其它区', 3, 0),
(1124, 100, '尖山区', 3, 0),
(1125, 100, '岭东区', 3, 0),
(1126, 100, '四方台区', 3, 0),
(1127, 100, '宝山区', 3, 0),
(1128, 100, '集贤县', 3, 0),
(1129, 100, '友谊县', 3, 0),
(1130, 100, '宝清县', 3, 0),
(1131, 100, '饶河县', 3, 0),
(1132, 100, '其它区', 3, 0),
(1133, 101, '萨尔图区', 3, 0),
(1134, 101, '龙凤区', 3, 0),
(1135, 101, '让胡路区', 3, 0),
(1136, 101, '红岗区', 3, 0),
(1137, 101, '大同区', 3, 0),
(1138, 101, '肇州县', 3, 0),
(1139, 101, '肇源县', 3, 0),
(1140, 101, '林甸县', 3, 0),
(1141, 101, '杜尔伯特蒙古族自治县', 3, 0),
(1142, 101, '其它区', 3, 0),
(1143, 102, '伊春区', 3, 0),
(1144, 102, '南岔区', 3, 0),
(1145, 102, '友好区', 3, 0),
(1146, 102, '西林区', 3, 0),
(1147, 102, '翠峦区', 3, 0),
(1148, 102, '新青区', 3, 0),
(1149, 102, '美溪区', 3, 0),
(1150, 102, '金山屯区', 3, 0),
(1151, 102, '五营区', 3, 0),
(1152, 102, '乌马河区', 3, 0),
(1153, 102, '汤旺河区', 3, 0),
(1154, 102, '带岭区', 3, 0),
(1155, 102, '乌伊岭区', 3, 0),
(1156, 102, '红星区', 3, 0),
(1157, 102, '上甘岭区', 3, 0),
(1158, 102, '嘉荫县', 3, 0),
(1159, 102, '铁力市', 3, 0),
(1160, 102, '其它区', 3, 0),
(1161, 103, '永红区', 3, 0),
(1162, 103, '向阳区', 3, 0),
(1163, 103, '前进区', 3, 0),
(1164, 103, '东风区', 3, 0),
(1165, 103, '郊区', 3, 0),
(1166, 103, '桦南县', 3, 0),
(1167, 103, '桦川县', 3, 0),
(1168, 103, '汤原县', 3, 0),
(1169, 103, '抚远县', 3, 0),
(1170, 103, '同江市', 3, 0),
(1171, 103, '富锦市', 3, 0),
(1172, 103, '其它区', 3, 0),
(1173, 104, '新兴区', 3, 0),
(1174, 104, '桃山区', 3, 0),
(1175, 104, '茄子河区', 3, 0),
(1176, 104, '勃利县', 3, 0),
(1177, 104, '其它区', 3, 0),
(1178, 105, '东安区', 3, 0),
(1179, 105, '阳明区', 3, 0),
(1180, 105, '爱民区', 3, 0),
(1181, 105, '西安区', 3, 0),
(1182, 105, '东宁县', 3, 0),
(1183, 105, '林口县', 3, 0),
(1184, 105, '绥芬河市', 3, 0),
(1185, 105, '海林市', 3, 0),
(1186, 105, '宁安市', 3, 0),
(1187, 105, '穆棱市', 3, 0),
(1188, 105, '其它区', 3, 0),
(1189, 106, '爱辉区', 3, 0),
(1190, 106, '嫩江县', 3, 0),
(1191, 106, '逊克县', 3, 0),
(1192, 106, '孙吴县', 3, 0),
(1193, 106, '北安市', 3, 0),
(1194, 106, '五大连池市', 3, 0),
(1195, 106, '其它区', 3, 0),
(1196, 107, '北林区', 3, 0),
(1197, 107, '望奎县', 3, 0),
(1198, 107, '兰西县', 3, 0),
(1199, 107, '青冈县', 3, 0),
(1200, 107, '庆安县', 3, 0),
(1201, 107, '明水县', 3, 0),
(1202, 107, '绥棱县', 3, 0),
(1203, 107, '安达市', 3, 0),
(1204, 107, '肇东市', 3, 0),
(1205, 107, '海伦市', 3, 0),
(1206, 107, '其它区', 3, 0),
(1207, 108, '松岭区', 3, 0),
(1208, 108, '新林区', 3, 0),
(1209, 108, '呼中区', 3, 0),
(1210, 108, '呼玛县', 3, 0),
(1211, 108, '塔河县', 3, 0),
(1212, 108, '漠河县', 3, 0),
(1213, 108, '加格达奇区', 3, 0),
(1214, 108, '其它区', 3, 0),
(1215, 109, '黄浦区', 3, 0),
(1216, 109, '卢湾区', 3, 0),
(1217, 109, '徐汇区', 3, 0),
(1218, 109, '长宁区', 3, 0),
(1219, 109, '静安区', 3, 0),
(1220, 109, '普陀区', 3, 0),
(1221, 109, '闸北区', 3, 0),
(1222, 109, '虹口区', 3, 0),
(1223, 109, '杨浦区', 3, 0),
(1224, 109, '闵行区', 3, 0),
(1225, 109, '宝山区', 3, 0),
(1226, 109, '嘉定区', 3, 0),
(1227, 109, '浦东新区', 3, 0),
(1228, 109, '金山区', 3, 0),
(1229, 109, '松江区', 3, 0),
(1230, 109, '青浦区', 3, 0),
(1231, 109, '南汇区', 3, 0),
(1232, 109, '奉贤区', 3, 0),
(1233, 109, '川沙区', 3, 0),
(1234, 109, '崇明县', 3, 0),
(1235, 109, '其它区', 3, 0),
(1236, 110, '玄武区', 3, 0),
(1237, 110, '白下区', 3, 0),
(1238, 110, '秦淮区', 3, 0),
(1239, 110, '建邺区', 3, 0),
(1240, 110, '鼓楼区', 3, 0),
(1241, 110, '下关区', 3, 0),
(1242, 110, '浦口区', 3, 0),
(1243, 110, '栖霞区', 3, 0),
(1244, 110, '雨花台区', 3, 0),
(1245, 110, '江宁区', 3, 0),
(1246, 110, '六合区', 3, 0),
(1247, 110, '溧水区', 3, 0),
(1248, 110, '高淳区', 3, 0),
(1249, 110, '其它区', 3, 0),
(1250, 111, '崇安区', 3, 0),
(1251, 111, '南长区', 3, 0),
(1252, 111, '北塘区', 3, 0),
(1253, 111, '锡山区', 3, 0),
(1254, 111, '惠山区', 3, 0),
(1255, 111, '滨湖区', 3, 0),
(1256, 111, '江阴市', 3, 0),
(1257, 111, '宜兴市', 3, 0),
(1258, 111, '新区', 3, 0),
(1259, 111, '其它区', 3, 0),
(1260, 112, '鼓楼区', 3, 0),
(1261, 112, '云龙区', 3, 0),
(1262, 112, '九里区', 3, 0),
(1263, 112, '贾汪区', 3, 0),
(1264, 112, '泉山区', 3, 0),
(1265, 112, '丰县', 3, 0),
(1266, 112, '沛县', 3, 0),
(1267, 112, '铜山区', 3, 0),
(1268, 112, '睢宁县', 3, 0),
(1269, 112, '新沂市', 3, 0),
(1270, 112, '邳州市', 3, 0),
(1271, 112, '其它区', 3, 0),
(1272, 113, '天宁区', 3, 0),
(1273, 113, '钟楼区', 3, 0),
(1274, 113, '戚墅堰区', 3, 0),
(1275, 113, '新北区', 3, 0),
(1276, 113, '武进区', 3, 0),
(1277, 113, '溧阳市', 3, 0),
(1278, 113, '金坛市', 3, 0),
(1279, 113, '其它区', 3, 0),
(1280, 114, '沧浪区', 3, 0),
(1281, 114, '平江区', 3, 0),
(1282, 114, '金阊区', 3, 0),
(1283, 114, '虎丘区', 3, 0),
(1284, 114, '吴中区', 3, 0),
(1285, 114, '相城区', 3, 0),
(1286, 114, '姑苏区', 3, 0),
(1287, 114, '常熟市', 3, 0),
(1288, 114, '张家港市', 3, 0),
(1289, 114, '昆山市', 3, 0),
(1290, 114, '吴江区', 3, 0),
(1291, 114, '太仓市', 3, 0),
(1292, 114, '新区', 3, 0),
(1293, 114, '园区', 3, 0),
(1294, 114, '其它区', 3, 0),
(1295, 115, '崇川区', 3, 0),
(1296, 115, '港闸区', 3, 0),
(1297, 115, '通州区', 3, 0),
(1298, 115, '海安县', 3, 0),
(1299, 115, '如东县', 3, 0),
(1300, 115, '启东市', 3, 0),
(1301, 115, '如皋市', 3, 0),
(1302, 115, '通州市', 3, 0),
(1303, 115, '海门市', 3, 0),
(1304, 115, '开发区', 3, 0),
(1305, 115, '其它区', 3, 0),
(1306, 116, '连云区', 3, 0),
(1307, 116, '新浦区', 3, 0),
(1308, 116, '海州区', 3, 0),
(1309, 116, '赣榆区', 3, 0),
(1310, 116, '东海县', 3, 0),
(1311, 116, '灌云县', 3, 0),
(1312, 116, '灌南县', 3, 0),
(1313, 116, '其它区', 3, 0),
(1314, 117, '清河区', 3, 0),
(1315, 117, '淮安区', 3, 0),
(1316, 117, '淮阴区', 3, 0),
(1317, 117, '清浦区', 3, 0),
(1318, 117, '涟水县', 3, 0),
(1319, 117, '洪泽县', 3, 0),
(1320, 117, '盱眙县', 3, 0),
(1321, 117, '金湖县', 3, 0),
(1322, 117, '其它区', 3, 0),
(1323, 118, '亭湖区', 3, 0),
(1324, 118, '盐都区', 3, 0),
(1325, 118, '响水县', 3, 0),
(1326, 118, '滨海县', 3, 0),
(1327, 118, '阜宁县', 3, 0),
(1328, 118, '射阳县', 3, 0),
(1329, 118, '建湖县', 3, 0),
(1330, 118, '东台市', 3, 0),
(1331, 118, '大丰市', 3, 0),
(1332, 118, '其它区', 3, 0),
(1333, 119, '广陵区', 3, 0),
(1334, 119, '邗江区', 3, 0),
(1335, 119, '维扬区', 3, 0),
(1336, 119, '宝应县', 3, 0),
(1337, 119, '仪征市', 3, 0),
(1338, 119, '高邮市', 3, 0),
(1339, 119, '江都区', 3, 0),
(1340, 119, '经济开发区', 3, 0),
(1341, 119, '其它区', 3, 0),
(1342, 120, '京口区', 3, 0),
(1343, 120, '润州区', 3, 0),
(1344, 120, '丹徒区', 3, 0),
(1345, 120, '丹阳市', 3, 0),
(1346, 120, '扬中市', 3, 0),
(1347, 120, '句容市', 3, 0),
(1348, 120, '其它区', 3, 0),
(1349, 121, '海陵区', 3, 0),
(1350, 121, '高港区', 3, 0),
(1351, 121, '兴化市', 3, 0),
(1352, 121, '靖江市', 3, 0),
(1353, 121, '泰兴市', 3, 0),
(1354, 121, '姜堰区', 3, 0),
(1355, 121, '其它区', 3, 0),
(1356, 122, '宿城区', 3, 0),
(1357, 122, '宿豫区', 3, 0),
(1358, 122, '沭阳县', 3, 0),
(1359, 122, '泗阳县', 3, 0),
(1360, 122, '泗洪县', 3, 0),
(1361, 122, '其它区', 3, 0),
(1362, 123, '上城区', 3, 0),
(1363, 123, '下城区', 3, 0),
(1364, 123, '江干区', 3, 0),
(1365, 123, '拱墅区', 3, 0),
(1366, 123, '西湖区', 3, 0),
(1367, 123, '滨江区', 3, 0),
(1368, 123, '萧山区', 3, 0),
(1369, 123, '余杭区', 3, 0),
(1370, 123, '桐庐县', 3, 0),
(1371, 123, '淳安县', 3, 0),
(1372, 123, '建德市', 3, 0),
(1373, 123, '富阳区', 3, 0),
(1374, 123, '临安市', 3, 0),
(1375, 123, '其它区', 3, 0),
(1376, 124, '海曙区', 3, 0),
(1377, 124, '江东区', 3, 0),
(1378, 124, '江北区', 3, 0),
(1379, 124, '北仑区', 3, 0),
(1380, 124, '镇海区', 3, 0),
(1381, 124, '鄞州区', 3, 0),
(1382, 124, '象山县', 3, 0),
(1383, 124, '宁海县', 3, 0),
(1384, 124, '余姚市', 3, 0),
(1385, 124, '慈溪市', 3, 0),
(1386, 124, '奉化市', 3, 0),
(1387, 124, '其它区', 3, 0),
(1388, 125, '鹿城区', 3, 0),
(1389, 125, '龙湾区', 3, 0),
(1390, 125, '瓯海区', 3, 0),
(1391, 125, '洞头县', 3, 0),
(1392, 125, '永嘉县', 3, 0),
(1393, 125, '平阳县', 3, 0),
(1394, 125, '苍南县', 3, 0),
(1395, 125, '文成县', 3, 0),
(1396, 125, '泰顺县', 3, 0),
(1397, 125, '瑞安市', 3, 0),
(1398, 125, '乐清市', 3, 0),
(1399, 125, '其它区', 3, 0),
(1400, 126, '南湖区', 3, 0),
(1401, 126, '秀洲区', 3, 0),
(1402, 126, '嘉善县', 3, 0),
(1403, 126, '海盐县', 3, 0),
(1404, 126, '海宁市', 3, 0),
(1405, 126, '平湖市', 3, 0),
(1406, 126, '桐乡市', 3, 0),
(1407, 126, '其它区', 3, 0),
(1408, 127, '吴兴区', 3, 0),
(1409, 127, '南浔区', 3, 0),
(1410, 127, '德清县', 3, 0),
(1411, 127, '长兴县', 3, 0),
(1412, 127, '安吉县', 3, 0),
(1413, 127, '其它区', 3, 0),
(1414, 128, '越城区', 3, 0),
(1415, 128, '柯桥区', 3, 0),
(1416, 128, '新昌县', 3, 0),
(1417, 128, '诸暨市', 3, 0),
(1418, 128, '上虞区', 3, 0),
(1419, 128, '嵊州市', 3, 0),
(1420, 128, '其它区', 3, 0),
(1421, 129, '婺城区', 3, 0),
(1422, 129, '金东区', 3, 0),
(1423, 129, '武义县', 3, 0),
(1424, 129, '浦江县', 3, 0),
(1425, 129, '磐安县', 3, 0),
(1426, 129, '兰溪市', 3, 0),
(1427, 129, '义乌市', 3, 0),
(1428, 129, '东阳市', 3, 0),
(1429, 129, '永康市', 3, 0),
(1430, 129, '其它区', 3, 0),
(1431, 130, '柯城区', 3, 0),
(1432, 130, '衢江区', 3, 0),
(1433, 130, '常山县', 3, 0),
(1434, 130, '开化县', 3, 0),
(1435, 130, '龙游县', 3, 0),
(1436, 130, '江山市', 3, 0),
(1437, 130, '其它区', 3, 0),
(1438, 131, '定海区', 3, 0),
(1439, 131, '普陀区', 3, 0),
(1440, 131, '岱山县', 3, 0),
(1441, 131, '嵊泗县', 3, 0),
(1442, 131, '其它区', 3, 0),
(1443, 132, '椒江区', 3, 0),
(1444, 132, '黄岩区', 3, 0),
(1445, 132, '路桥区', 3, 0),
(1446, 132, '玉环县', 3, 0),
(1447, 132, '三门县', 3, 0),
(1448, 132, '天台县', 3, 0),
(1449, 132, '仙居县', 3, 0),
(1450, 132, '温岭市', 3, 0),
(1451, 132, '临海市', 3, 0),
(1452, 132, '其它区', 3, 0),
(1453, 133, '莲都区', 3, 0),
(1454, 133, '青田县', 3, 0),
(1455, 133, '缙云县', 3, 0),
(1456, 133, '遂昌县', 3, 0),
(1457, 133, '松阳县', 3, 0),
(1458, 133, '云和县', 3, 0),
(1459, 133, '庆元县', 3, 0),
(1460, 133, '景宁畲族自治县', 3, 0),
(1461, 133, '龙泉市', 3, 0),
(1462, 133, '其它区', 3, 0),
(1463, 134, '瑶海区', 3, 0),
(1464, 134, '庐阳区', 3, 0),
(1465, 134, '蜀山区', 3, 0),
(1466, 134, '包河区', 3, 0),
(1467, 134, '长丰县', 3, 0),
(1468, 134, '肥东县', 3, 0),
(1469, 134, '肥西县', 3, 0),
(1470, 134, '高新区', 3, 0),
(1471, 134, '中区', 3, 0),
(1472, 134, '其它区', 3, 0),
(1473, 135, '镜湖区', 3, 0),
(1474, 135, '弋江区', 3, 0),
(1475, 135, '鸠江区', 3, 0),
(1476, 135, '三山区', 3, 0),
(1477, 135, '芜湖县', 3, 0),
(1478, 135, '繁昌县', 3, 0),
(1479, 135, '南陵县', 3, 0),
(1480, 135, '其它区', 3, 0),
(1481, 136, '龙子湖区', 3, 0),
(1482, 136, '蚌山区', 3, 0),
(1483, 136, '禹会区', 3, 0),
(1484, 136, '淮上区', 3, 0),
(1485, 136, '怀远县', 3, 0),
(1486, 136, '五河县', 3, 0),
(1487, 136, '固镇县', 3, 0),
(1488, 136, '其它区', 3, 0),
(1489, 137, '大通区', 3, 0),
(1490, 137, '田家庵区', 3, 0),
(1491, 137, '谢家集区', 3, 0),
(1492, 137, '八公山区', 3, 0),
(1493, 137, '潘集区', 3, 0),
(1494, 137, '凤台县', 3, 0),
(1495, 137, '其它区', 3, 0),
(1496, 138, '金家庄区', 3, 0),
(1497, 138, '花山区', 3, 0),
(1498, 138, '雨山区', 3, 0),
(1499, 138, '博望区', 3, 0),
(1500, 138, '当涂县', 3, 0),
(1501, 138, '其它区', 3, 0),
(1502, 139, '杜集区', 3, 0),
(1503, 139, '相山区', 3, 0),
(1504, 139, '烈山区', 3, 0),
(1505, 139, '濉溪县', 3, 0),
(1506, 139, '其它区', 3, 0),
(1507, 140, '铜官山区', 3, 0),
(1508, 140, '狮子山区', 3, 0),
(1509, 140, '郊区', 3, 0),
(1510, 140, '铜陵县', 3, 0),
(1511, 140, '其它区', 3, 0),
(1512, 141, '迎江区', 3, 0),
(1513, 141, '大观区', 3, 0),
(1514, 141, '宜秀区', 3, 0),
(1515, 141, '怀宁县', 3, 0),
(1516, 141, '枞阳县', 3, 0),
(1517, 141, '潜山县', 3, 0),
(1518, 141, '太湖县', 3, 0),
(1519, 141, '宿松县', 3, 0),
(1520, 141, '望江县', 3, 0),
(1521, 141, '岳西县', 3, 0),
(1522, 141, '桐城市', 3, 0),
(1523, 141, '其它区', 3, 0),
(1524, 142, '屯溪区', 3, 0),
(1525, 142, '黄山区', 3, 0),
(1526, 142, '徽州区', 3, 0),
(1527, 142, '歙县', 3, 0),
(1528, 142, '休宁县', 3, 0),
(1529, 142, '黟县', 3, 0),
(1530, 142, '祁门县', 3, 0),
(1531, 142, '其它区', 3, 0),
(1532, 143, '琅琊区', 3, 0),
(1533, 143, '南谯区', 3, 0),
(1534, 143, '来安县', 3, 0),
(1535, 143, '全椒县', 3, 0),
(1536, 143, '定远县', 3, 0),
(1537, 143, '凤阳县', 3, 0),
(1538, 143, '天长市', 3, 0),
(1539, 143, '明光市', 3, 0),
(1540, 143, '其它区', 3, 0),
(1541, 144, '颍州区', 3, 0),
(1542, 144, '颍东区', 3, 0),
(1543, 144, '颍泉区', 3, 0),
(1544, 144, '临泉县', 3, 0),
(1545, 144, '太和县', 3, 0),
(1546, 144, '阜南县', 3, 0),
(1547, 144, '颍上县', 3, 0),
(1548, 144, '界首市', 3, 0),
(1549, 144, '其它区', 3, 0),
(1550, 145, '埇桥区', 3, 0),
(1551, 145, '砀山县', 3, 0),
(1552, 145, '萧县', 3, 0),
(1553, 145, '灵璧县', 3, 0),
(1554, 145, '泗县', 3, 0),
(1555, 145, '其它区', 3, 0),
(1556, 134, '巢湖市', 3, 0),
(1557, 134, '居巢区', 3, 0),
(1558, 134, '庐江县', 3, 0),
(1559, 135, '无为县', 3, 0),
(1560, 138, '含山县', 3, 0),
(1561, 138, '和县', 3, 0),
(1562, 146, '金安区', 3, 0),
(1563, 146, '裕安区', 3, 0),
(1564, 146, '寿县', 3, 0),
(1565, 146, '霍邱县', 3, 0),
(1566, 146, '舒城县', 3, 0),
(1567, 146, '金寨县', 3, 0),
(1568, 146, '霍山县', 3, 0),
(1569, 146, '其它区', 3, 0),
(1570, 147, '谯城区', 3, 0),
(1571, 147, '涡阳县', 3, 0),
(1572, 147, '蒙城县', 3, 0),
(1573, 147, '利辛县', 3, 0),
(1574, 147, '其它区', 3, 0),
(1575, 148, '贵池区', 3, 0),
(1576, 148, '东至县', 3, 0),
(1577, 148, '石台县', 3, 0),
(1578, 148, '青阳县', 3, 0),
(1579, 148, '其它区', 3, 0),
(1580, 149, '宣州区', 3, 0),
(1581, 149, '郎溪县', 3, 0),
(1582, 149, '广德县', 3, 0),
(1583, 149, '泾县', 3, 0),
(1584, 149, '绩溪县', 3, 0),
(1585, 149, '旌德县', 3, 0),
(1586, 149, '宁国市', 3, 0),
(1587, 149, '其它区', 3, 0),
(1588, 150, '鼓楼区', 3, 0),
(1589, 150, '台江区', 3, 0),
(1590, 150, '仓山区', 3, 0),
(1591, 150, '马尾区', 3, 0),
(1592, 150, '晋安区', 3, 0),
(1593, 150, '闽侯县', 3, 0),
(1594, 150, '连江县', 3, 0),
(1595, 150, '罗源县', 3, 0),
(1596, 150, '闽清县', 3, 0),
(1597, 150, '永泰县', 3, 0),
(1598, 150, '平潭县', 3, 0),
(1599, 150, '福清市', 3, 0),
(1600, 150, '长乐市', 3, 0),
(1601, 150, '其它区', 3, 0),
(1602, 151, '思明区', 3, 0),
(1603, 151, '海沧区', 3, 0),
(1604, 151, '湖里区', 3, 0),
(1605, 151, '集美区', 3, 0),
(1606, 151, '同安区', 3, 0),
(1607, 151, '翔安区', 3, 0),
(1608, 151, '其它区', 3, 0),
(1609, 152, '城厢区', 3, 0),
(1610, 152, '涵江区', 3, 0),
(1611, 152, '荔城区', 3, 0),
(1612, 152, '秀屿区', 3, 0),
(1613, 152, '仙游县', 3, 0),
(1614, 152, '其它区', 3, 0),
(1615, 153, '梅列区', 3, 0),
(1616, 153, '三元区', 3, 0),
(1617, 153, '明溪县', 3, 0),
(1618, 153, '清流县', 3, 0),
(1619, 153, '宁化县', 3, 0),
(1620, 153, '大田县', 3, 0),
(1621, 153, '尤溪县', 3, 0),
(1622, 153, '沙县', 3, 0),
(1623, 153, '将乐县', 3, 0),
(1624, 153, '泰宁县', 3, 0),
(1625, 153, '建宁县', 3, 0),
(1626, 153, '永安市', 3, 0),
(1627, 153, '其它区', 3, 0),
(1628, 154, '鲤城区', 3, 0),
(1629, 154, '丰泽区', 3, 0),
(1630, 154, '洛江区', 3, 0),
(1631, 154, '泉港区', 3, 0),
(1632, 154, '惠安县', 3, 0),
(1633, 154, '安溪县', 3, 0),
(1634, 154, '永春县', 3, 0),
(1635, 154, '德化县', 3, 0),
(1636, 154, '金门县', 3, 0),
(1637, 154, '石狮市', 3, 0),
(1638, 154, '晋江市', 3, 0),
(1639, 154, '南安市', 3, 0),
(1640, 154, '其它区', 3, 0),
(1641, 155, '芗城区', 3, 0),
(1642, 155, '龙文区', 3, 0),
(1643, 155, '云霄县', 3, 0),
(1644, 155, '漳浦县', 3, 0),
(1645, 155, '诏安县', 3, 0),
(1646, 155, '长泰县', 3, 0),
(1647, 155, '东山县', 3, 0),
(1648, 155, '南靖县', 3, 0),
(1649, 155, '平和县', 3, 0),
(1650, 155, '华安县', 3, 0),
(1651, 155, '龙海市', 3, 0),
(1652, 155, '其它区', 3, 0),
(1653, 156, '延平区', 3, 0),
(1654, 156, '顺昌县', 3, 0),
(1655, 156, '浦城县', 3, 0),
(1656, 156, '光泽县', 3, 0),
(1657, 156, '松溪县', 3, 0),
(1658, 156, '政和县', 3, 0),
(1659, 156, '邵武市', 3, 0),
(1660, 156, '武夷山市', 3, 0),
(1661, 156, '建瓯市', 3, 0),
(1662, 156, '建阳区', 3, 0),
(1663, 156, '其它区', 3, 0),
(1664, 157, '新罗区', 3, 0),
(1665, 157, '长汀县', 3, 0),
(1666, 157, '永定区', 3, 0),
(1667, 157, '上杭县', 3, 0),
(1668, 157, '武平县', 3, 0),
(1669, 157, '连城县', 3, 0),
(1670, 157, '漳平市', 3, 0),
(1671, 157, '其它区', 3, 0),
(1672, 158, '蕉城区', 3, 0),
(1673, 158, '霞浦县', 3, 0),
(1674, 158, '古田县', 3, 0),
(1675, 158, '屏南县', 3, 0),
(1676, 158, '寿宁县', 3, 0),
(1677, 158, '周宁县', 3, 0),
(1678, 158, '柘荣县', 3, 0),
(1679, 158, '福安市', 3, 0),
(1680, 158, '福鼎市', 3, 0),
(1681, 158, '其它区', 3, 0),
(1682, 159, '东湖区', 3, 0),
(1683, 159, '西湖区', 3, 0),
(1684, 159, '青云谱区', 3, 0),
(1685, 159, '湾里区', 3, 0),
(1686, 159, '青山湖区', 3, 0),
(1687, 159, '南昌县', 3, 0),
(1688, 159, '新建县', 3, 0),
(1689, 159, '安义县', 3, 0),
(1690, 159, '进贤县', 3, 0),
(1691, 159, '红谷滩新区', 3, 0),
(1692, 159, '经济技术开发区', 3, 0),
(1693, 159, '昌北区', 3, 0),
(1694, 159, '其它区', 3, 0),
(1695, 160, '昌江区', 3, 0),
(1696, 160, '珠山区', 3, 0),
(1697, 160, '浮梁县', 3, 0),
(1698, 160, '乐平市', 3, 0),
(1699, 160, '其它区', 3, 0),
(1700, 161, '安源区', 3, 0),
(1701, 161, '湘东区', 3, 0),
(1702, 161, '莲花县', 3, 0),
(1703, 161, '上栗县', 3, 0),
(1704, 161, '芦溪县', 3, 0),
(1705, 161, '其它区', 3, 0),
(1706, 162, '庐山区', 3, 0),
(1707, 162, '浔阳区', 3, 0),
(1708, 162, '九江县', 3, 0),
(1709, 162, '武宁县', 3, 0),
(1710, 162, '修水县', 3, 0),
(1711, 162, '永修县', 3, 0),
(1712, 162, '德安县', 3, 0),
(1713, 162, '星子县', 3, 0),
(1714, 162, '都昌县', 3, 0),
(1715, 162, '湖口县', 3, 0),
(1716, 162, '彭泽县', 3, 0),
(1717, 162, '瑞昌市', 3, 0),
(1718, 162, '其它区', 3, 0),
(1719, 162, '共青城市', 3, 0),
(1720, 163, '渝水区', 3, 0),
(1721, 163, '分宜县', 3, 0),
(1722, 163, '其它区', 3, 0),
(1723, 164, '月湖区', 3, 0),
(1724, 164, '余江县', 3, 0),
(1725, 164, '贵溪市', 3, 0),
(1726, 164, '其它区', 3, 0),
(1727, 165, '章贡区', 3, 0),
(1728, 165, '赣县', 3, 0),
(1729, 165, '信丰县', 3, 0),
(1730, 165, '大余县', 3, 0),
(1731, 165, '上犹县', 3, 0),
(1732, 165, '崇义县', 3, 0),
(1733, 165, '安远县', 3, 0),
(1734, 165, '龙南县', 3, 0),
(1735, 165, '定南县', 3, 0),
(1736, 165, '全南县', 3, 0),
(1737, 165, '宁都县', 3, 0),
(1738, 165, '于都县', 3, 0),
(1739, 165, '兴国县', 3, 0),
(1740, 165, '会昌县', 3, 0),
(1741, 165, '寻乌县', 3, 0),
(1742, 165, '石城县', 3, 0),
(1743, 165, '黄金区', 3, 0),
(1744, 165, '瑞金市', 3, 0),
(1745, 165, '南康区', 3, 0),
(1746, 165, '其它区', 3, 0),
(1747, 166, '吉州区', 3, 0),
(1748, 166, '青原区', 3, 0),
(1749, 166, '吉安县', 3, 0),
(1750, 166, '吉水县', 3, 0),
(1751, 166, '峡江县', 3, 0),
(1752, 166, '新干县', 3, 0),
(1753, 166, '永丰县', 3, 0),
(1754, 166, '泰和县', 3, 0),
(1755, 166, '遂川县', 3, 0),
(1756, 166, '万安县', 3, 0),
(1757, 166, '安福县', 3, 0),
(1758, 166, '永新县', 3, 0),
(1759, 166, '井冈山市', 3, 0),
(1760, 166, '其它区', 3, 0),
(1761, 167, '袁州区', 3, 0),
(1762, 167, '奉新县', 3, 0),
(1763, 167, '万载县', 3, 0),
(1764, 167, '上高县', 3, 0),
(1765, 167, '宜丰县', 3, 0),
(1766, 167, '靖安县', 3, 0),
(1767, 167, '铜鼓县', 3, 0),
(1768, 167, '丰城市', 3, 0),
(1769, 167, '樟树市', 3, 0),
(1770, 167, '高安市', 3, 0),
(1771, 167, '其它区', 3, 0),
(1772, 168, '临川区', 3, 0),
(1773, 168, '南城县', 3, 0),
(1774, 168, '黎川县', 3, 0),
(1775, 168, '南丰县', 3, 0),
(1776, 168, '崇仁县', 3, 0),
(1777, 168, '乐安县', 3, 0),
(1778, 168, '宜黄县', 3, 0),
(1779, 168, '金溪县', 3, 0),
(1780, 168, '资溪县', 3, 0),
(1781, 168, '东乡县', 3, 0),
(1782, 168, '广昌县', 3, 0),
(1783, 168, '其它区', 3, 0),
(1784, 169, '信州区', 3, 0),
(1785, 169, '上饶县', 3, 0),
(1786, 169, '广丰区', 3, 0),
(1787, 169, '玉山县', 3, 0),
(1788, 169, '铅山县', 3, 0),
(1789, 169, '横峰县', 3, 0),
(1790, 169, '弋阳县', 3, 0),
(1791, 169, '余干县', 3, 0),
(1792, 169, '鄱阳县', 3, 0),
(1793, 169, '万年县', 3, 0),
(1794, 169, '婺源县', 3, 0),
(1795, 169, '德兴市', 3, 0),
(1796, 169, '其它区', 3, 0),
(1797, 170, '历下区', 3, 0),
(1798, 170, '市中区', 3, 0),
(1799, 170, '槐荫区', 3, 0),
(1800, 170, '天桥区', 3, 0),
(1801, 170, '历城区', 3, 0),
(1802, 170, '长清区', 3, 0),
(1803, 170, '平阴县', 3, 0),
(1804, 170, '济阳县', 3, 0),
(1805, 170, '商河县', 3, 0),
(1806, 170, '章丘市', 3, 0),
(1807, 170, '其它区', 3, 0),
(1808, 171, '市南区', 3, 0),
(1809, 171, '市北区', 3, 0),
(1810, 171, '四方区', 3, 0),
(1811, 171, '黄岛区', 3, 0),
(1812, 171, '崂山区', 3, 0),
(1813, 171, '李沧区', 3, 0),
(1814, 171, '城阳区', 3, 0),
(1815, 171, '开发区', 3, 0),
(1816, 171, '胶州市', 3, 0),
(1817, 171, '即墨市', 3, 0),
(1818, 171, '平度市', 3, 0),
(1819, 171, '胶南市', 3, 0),
(1820, 171, '莱西市', 3, 0),
(1821, 171, '其它区', 3, 0),
(1822, 172, '淄川区', 3, 0),
(1823, 172, '张店区', 3, 0),
(1824, 172, '博山区', 3, 0),
(1825, 172, '临淄区', 3, 0),
(1826, 172, '周村区', 3, 0),
(1827, 172, '桓台县', 3, 0),
(1828, 172, '高青县', 3, 0),
(1829, 172, '沂源县', 3, 0),
(1830, 172, '其它区', 3, 0),
(1831, 173, '市中区', 3, 0),
(1832, 173, '薛城区', 3, 0),
(1833, 173, '峄城区', 3, 0),
(1834, 173, '台儿庄区', 3, 0),
(1835, 173, '山亭区', 3, 0),
(1836, 173, '滕州市', 3, 0),
(1837, 173, '其它区', 3, 0),
(1838, 174, '东营区', 3, 0),
(1839, 174, '河口区', 3, 0),
(1840, 174, '垦利县', 3, 0),
(1841, 174, '利津县', 3, 0),
(1842, 174, '广饶县', 3, 0),
(1843, 174, '西城区', 3, 0),
(1844, 174, '东城区', 3, 0),
(1845, 174, '其它区', 3, 0),
(1846, 175, '芝罘区', 3, 0),
(1847, 175, '福山区', 3, 0),
(1848, 175, '牟平区', 3, 0),
(1849, 175, '莱山区', 3, 0),
(1850, 175, '长岛县', 3, 0),
(1851, 175, '龙口市', 3, 0),
(1852, 175, '莱阳市', 3, 0),
(1853, 175, '莱州市', 3, 0),
(1854, 175, '蓬莱市', 3, 0),
(1855, 175, '招远市', 3, 0),
(1856, 175, '栖霞市', 3, 0),
(1857, 175, '海阳市', 3, 0),
(1858, 175, '其它区', 3, 0),
(1859, 176, '潍城区', 3, 0),
(1860, 176, '寒亭区', 3, 0),
(1861, 176, '坊子区', 3, 0),
(1862, 176, '奎文区', 3, 0),
(1863, 176, '临朐县', 3, 0),
(1864, 176, '昌乐县', 3, 0),
(1865, 176, '开发区', 3, 0),
(1866, 176, '青州市', 3, 0),
(1867, 176, '诸城市', 3, 0),
(1868, 176, '寿光市', 3, 0),
(1869, 176, '安丘市', 3, 0),
(1870, 176, '高密市', 3, 0),
(1871, 176, '昌邑市', 3, 0),
(1872, 176, '其它区', 3, 0),
(1873, 177, '市中区', 3, 0),
(1874, 177, '任城区', 3, 0),
(1875, 177, '微山县', 3, 0),
(1876, 177, '鱼台县', 3, 0),
(1877, 177, '金乡县', 3, 0),
(1878, 177, '嘉祥县', 3, 0),
(1879, 177, '汶上县', 3, 0),
(1880, 177, '泗水县', 3, 0),
(1881, 177, '梁山县', 3, 0),
(1882, 177, '曲阜市', 3, 0),
(1883, 177, '兖州区', 3, 0),
(1884, 177, '邹城市', 3, 0),
(1885, 177, '其它区', 3, 0),
(1886, 178, '泰山区', 3, 0),
(1887, 178, '岱岳区', 3, 0),
(1888, 178, '宁阳县', 3, 0),
(1889, 178, '东平县', 3, 0),
(1890, 178, '新泰市', 3, 0),
(1891, 178, '肥城市', 3, 0),
(1892, 178, '其它区', 3, 0),
(1893, 179, '环翠区', 3, 0),
(1894, 179, '文登区', 3, 0),
(1895, 179, '荣成市', 3, 0),
(1896, 179, '乳山市', 3, 0),
(1897, 179, '其它区', 3, 0),
(1898, 180, '东港区', 3, 0),
(1899, 180, '岚山区', 3, 0),
(1900, 180, '五莲县', 3, 0),
(1901, 180, '莒县', 3, 0),
(1902, 180, '其它区', 3, 0),
(1903, 181, '莱城区', 3, 0),
(1904, 181, '钢城区', 3, 0),
(1905, 181, '其它区', 3, 0),
(1906, 182, '兰山区', 3, 0),
(1907, 182, '罗庄区', 3, 0),
(1908, 182, '河东区', 3, 0),
(1909, 182, '沂南县', 3, 0),
(1910, 182, '郯城县', 3, 0),
(1911, 182, '沂水县', 3, 0),
(1912, 182, '兰陵县', 3, 0),
(1913, 182, '费县', 3, 0),
(1914, 182, '平邑县', 3, 0),
(1915, 182, '莒南县', 3, 0),
(1916, 182, '蒙阴县', 3, 0),
(1917, 182, '临沭县', 3, 0),
(1918, 182, '其它区', 3, 0),
(1919, 183, '德城区', 3, 0),
(1920, 183, '陵城区', 3, 0),
(1921, 183, '宁津县', 3, 0),
(1922, 183, '庆云县', 3, 0),
(1923, 183, '临邑县', 3, 0),
(1924, 183, '齐河县', 3, 0),
(1925, 183, '平原县', 3, 0),
(1926, 183, '夏津县', 3, 0),
(1927, 183, '武城县', 3, 0),
(1928, 183, '开发区', 3, 0),
(1929, 183, '乐陵市', 3, 0),
(1930, 183, '禹城市', 3, 0),
(1931, 183, '其它区', 3, 0),
(1932, 184, '东昌府区', 3, 0),
(1933, 184, '阳谷县', 3, 0),
(1934, 184, '莘县', 3, 0),
(1935, 184, '茌平县', 3, 0),
(1936, 184, '东阿县', 3, 0),
(1937, 184, '冠县', 3, 0),
(1938, 184, '高唐县', 3, 0),
(1939, 184, '临清市', 3, 0),
(1940, 184, '其它区', 3, 0),
(1941, 185, '滨城区', 3, 0),
(1942, 185, '惠民县', 3, 0),
(1943, 185, '阳信县', 3, 0),
(1944, 185, '无棣县', 3, 0),
(1945, 185, '沾化区', 3, 0),
(1946, 185, '博兴县', 3, 0),
(1947, 185, '邹平县', 3, 0),
(1948, 185, '其它区', 3, 0),
(1949, 186, '牡丹区', 3, 0),
(1950, 186, '曹县', 3, 0),
(1951, 186, '单县', 3, 0),
(1952, 186, '成武县', 3, 0),
(1953, 186, '巨野县', 3, 0),
(1954, 186, '郓城县', 3, 0),
(1955, 186, '鄄城县', 3, 0),
(1956, 186, '定陶县', 3, 0),
(1957, 186, '东明县', 3, 0),
(1958, 186, '其它区', 3, 0),
(1959, 187, '中原区', 3, 0),
(1960, 187, '二七区', 3, 0),
(1961, 187, '管城回族区', 3, 0),
(1962, 187, '金水区', 3, 0),
(1963, 187, '上街区', 3, 0),
(1964, 187, '惠济区', 3, 0),
(1965, 187, '中牟县', 3, 0),
(1966, 187, '巩义市', 3, 0),
(1967, 187, '荥阳市', 3, 0),
(1968, 187, '新密市', 3, 0),
(1969, 187, '新郑市', 3, 0),
(1970, 187, '登封市', 3, 0),
(1971, 187, '郑东新区', 3, 0),
(1972, 187, '高新区', 3, 0),
(1973, 187, '其它区', 3, 0),
(1974, 188, '龙亭区', 3, 0),
(1975, 188, '顺河回族区', 3, 0),
(1976, 188, '鼓楼区', 3, 0),
(1977, 188, '禹王台区', 3, 0),
(1978, 188, '金明区', 3, 0),
(1979, 188, '杞县', 3, 0),
(1980, 188, '通许县', 3, 0),
(1981, 188, '尉氏县', 3, 0),
(1982, 188, '祥符区', 3, 0),
(1983, 188, '兰考县', 3, 0),
(1984, 188, '其它区', 3, 0),
(1985, 189, '老城区', 3, 0),
(1986, 189, '西工区', 3, 0),
(1987, 189, '瀍河回族区', 3, 0),
(1988, 189, '涧西区', 3, 0),
(1989, 189, '吉利区', 3, 0),
(1990, 189, '洛龙区', 3, 0),
(1991, 189, '孟津县', 3, 0),
(1992, 189, '新安县', 3, 0),
(1993, 189, '栾川县', 3, 0),
(1994, 189, '嵩县', 3, 0),
(1995, 189, '汝阳县', 3, 0),
(1996, 189, '宜阳县', 3, 0),
(1997, 189, '洛宁县', 3, 0),
(1998, 189, '伊川县', 3, 0),
(1999, 189, '偃师市', 3, 0),
(2000, 190, '新华区', 3, 0),
(2001, 190, '卫东区', 3, 0),
(2002, 190, '石龙区', 3, 0),
(2003, 190, '湛河区', 3, 0),
(2004, 190, '宝丰县', 3, 0),
(2005, 190, '叶县', 3, 0),
(2006, 190, '鲁山县', 3, 0),
(2007, 190, '郏县', 3, 0),
(2008, 190, '舞钢市', 3, 0),
(2009, 190, '汝州市', 3, 0),
(2010, 190, '其它区', 3, 0),
(2011, 191, '文峰区', 3, 0),
(2012, 191, '北关区', 3, 0),
(2013, 191, '殷都区', 3, 0),
(2014, 191, '龙安区', 3, 0),
(2015, 191, '安阳县', 3, 0),
(2016, 191, '汤阴县', 3, 0),
(2017, 191, '滑县', 3, 0),
(2018, 191, '内黄县', 3, 0),
(2019, 191, '林州市', 3, 0),
(2020, 191, '其它区', 3, 0),
(2021, 192, '鹤山区', 3, 0),
(2022, 192, '山城区', 3, 0),
(2023, 192, '淇滨区', 3, 0),
(2024, 192, '浚县', 3, 0),
(2025, 192, '淇县', 3, 0),
(2026, 192, '其它区', 3, 0),
(2027, 193, '红旗区', 3, 0),
(2028, 193, '卫滨区', 3, 0),
(2029, 193, '凤泉区', 3, 0),
(2030, 193, '牧野区', 3, 0),
(2031, 193, '新乡县', 3, 0),
(2032, 193, '获嘉县', 3, 0),
(2033, 193, '原阳县', 3, 0),
(2034, 193, '延津县', 3, 0),
(2035, 193, '封丘县', 3, 0),
(2036, 193, '长垣县', 3, 0),
(2037, 193, '卫辉市', 3, 0),
(2038, 193, '辉县市', 3, 0),
(2039, 193, '其它区', 3, 0),
(2040, 194, '解放区', 3, 0),
(2041, 194, '中站区', 3, 0),
(2042, 194, '马村区', 3, 0),
(2043, 194, '山阳区', 3, 0),
(2044, 194, '修武县', 3, 0),
(2045, 194, '博爱县', 3, 0),
(2046, 194, '武陟县', 3, 0),
(2047, 194, '温县', 3, 0),
(2048, 194, '沁阳市', 3, 0),
(2049, 194, '孟州市', 3, 0),
(2050, 194, '其它区', 3, 0),
(2051, 195, '华龙区', 3, 0),
(2052, 195, '清丰县', 3, 0),
(2053, 195, '南乐县', 3, 0),
(2054, 195, '范县', 3, 0),
(2055, 195, '台前县', 3, 0),
(2056, 195, '濮阳县', 3, 0),
(2057, 195, '其它区', 3, 0),
(2058, 196, '魏都区', 3, 0),
(2059, 196, '许昌县', 3, 0),
(2060, 196, '鄢陵县', 3, 0),
(2061, 196, '襄城县', 3, 0),
(2062, 196, '禹州市', 3, 0),
(2063, 196, '长葛市', 3, 0),
(2064, 196, '其它区', 3, 0),
(2065, 197, '源汇区', 3, 0),
(2066, 197, '郾城区', 3, 0),
(2067, 197, '召陵区', 3, 0),
(2068, 197, '舞阳县', 3, 0),
(2069, 197, '临颍县', 3, 0),
(2070, 197, '其它区', 3, 0),
(2071, 198, '湖滨区', 3, 0),
(2072, 198, '渑池县', 3, 0),
(2073, 198, '陕州区', 3, 0),
(2074, 198, '卢氏县', 3, 0),
(2075, 198, '义马市', 3, 0),
(2076, 198, '灵宝市', 3, 0),
(2077, 198, '其它区', 3, 0),
(2078, 199, '宛城区', 3, 0),
(2079, 199, '卧龙区', 3, 0),
(2080, 199, '南召县', 3, 0),
(2081, 199, '方城县', 3, 0),
(2082, 199, '西峡县', 3, 0),
(2083, 199, '镇平县', 3, 0),
(2084, 199, '内乡县', 3, 0),
(2085, 199, '淅川县', 3, 0),
(2086, 199, '社旗县', 3, 0),
(2087, 199, '唐河县', 3, 0),
(2088, 199, '新野县', 3, 0),
(2089, 199, '桐柏县', 3, 0),
(2090, 199, '邓州市', 3, 0),
(2091, 199, '其它区', 3, 0),
(2092, 200, '梁园区', 3, 0),
(2093, 200, '睢阳区', 3, 0),
(2094, 200, '民权县', 3, 0),
(2095, 200, '睢县', 3, 0),
(2096, 200, '宁陵县', 3, 0),
(2097, 200, '柘城县', 3, 0),
(2098, 200, '虞城县', 3, 0),
(2099, 200, '夏邑县', 3, 0),
(2100, 200, '永城市', 3, 0),
(2101, 200, '其它区', 3, 0),
(2102, 201, '浉河区', 3, 0),
(2103, 201, '平桥区', 3, 0),
(2104, 201, '罗山县', 3, 0),
(2105, 201, '光山县', 3, 0),
(2106, 201, '新县', 3, 0),
(2107, 201, '商城县', 3, 0),
(2108, 201, '固始县', 3, 0),
(2109, 201, '潢川县', 3, 0),
(2110, 201, '淮滨县', 3, 0),
(2111, 201, '息县', 3, 0),
(2112, 201, '其它区', 3, 0),
(2113, 202, '川汇区', 3, 0),
(2114, 202, '扶沟县', 3, 0),
(2115, 202, '西华县', 3, 0),
(2116, 202, '商水县', 3, 0),
(2117, 202, '沈丘县', 3, 0),
(2118, 202, '郸城县', 3, 0),
(2119, 202, '淮阳县', 3, 0),
(2120, 202, '太康县', 3, 0),
(2121, 202, '鹿邑县', 3, 0),
(2122, 202, '项城市', 3, 0),
(2123, 202, '其它区', 3, 0),
(2124, 203, '驿城区', 3, 0),
(2125, 203, '西平县', 3, 0),
(2126, 203, '上蔡县', 3, 0),
(2127, 203, '平舆县', 3, 0),
(2128, 203, '正阳县', 3, 0),
(2129, 203, '确山县', 3, 0),
(2130, 203, '泌阳县', 3, 0),
(2131, 203, '汝南县', 3, 0),
(2132, 203, '遂平县', 3, 0),
(2133, 203, '新蔡县', 3, 0),
(2134, 203, '其它区', 3, 0),
(2135, 204, '江岸区', 3, 0),
(2136, 204, '江汉区', 3, 0),
(2137, 204, '硚口区', 3, 0),
(2138, 204, '汉阳区', 3, 0),
(2139, 204, '武昌区', 3, 0),
(2140, 204, '青山区', 3, 0),
(2141, 204, '洪山区', 3, 0),
(2142, 204, '东西湖区', 3, 0),
(2143, 204, '汉南区', 3, 0),
(2144, 204, '蔡甸区', 3, 0),
(2145, 204, '江夏区', 3, 0),
(2146, 204, '黄陂区', 3, 0),
(2147, 204, '新洲区', 3, 0),
(2148, 204, '其它区', 3, 0),
(2149, 205, '黄石港区', 3, 0),
(2150, 205, '西塞山区', 3, 0),
(2151, 205, '下陆区', 3, 0),
(2152, 205, '铁山区', 3, 0),
(2153, 205, '阳新县', 3, 0),
(2154, 205, '大冶市', 3, 0),
(2155, 205, '其它区', 3, 0);
INSERT INTO `ecs_region` (`region_id`, `parent_id`, `region_name`, `region_type`, `agency_id`) VALUES
(2156, 206, '茅箭区', 3, 0),
(2157, 206, '张湾区', 3, 0),
(2158, 206, '郧阳区', 3, 0),
(2159, 206, '郧西县', 3, 0),
(2160, 206, '竹山县', 3, 0),
(2161, 206, '竹溪县', 3, 0),
(2162, 206, '房县', 3, 0),
(2163, 206, '丹江口市', 3, 0),
(2164, 206, '城区', 3, 0),
(2165, 206, '其它区', 3, 0),
(2166, 207, '西陵区', 3, 0),
(2167, 207, '伍家岗区', 3, 0),
(2168, 207, '点军区', 3, 0),
(2169, 207, '猇亭区', 3, 0),
(2170, 207, '夷陵区', 3, 0),
(2171, 207, '远安县', 3, 0),
(2172, 207, '兴山县', 3, 0),
(2173, 207, '秭归县', 3, 0),
(2174, 207, '长阳土家族自治县', 3, 0),
(2175, 207, '五峰土家族自治县', 3, 0),
(2176, 207, '葛洲坝区', 3, 0),
(2177, 207, '开发区', 3, 0),
(2178, 207, '宜都市', 3, 0),
(2179, 207, '当阳市', 3, 0),
(2180, 207, '枝江市', 3, 0),
(2181, 207, '其它区', 3, 0),
(2182, 208, '襄城区', 3, 0),
(2183, 208, '樊城区', 3, 0),
(2184, 208, '襄州区', 3, 0),
(2185, 208, '南漳县', 3, 0),
(2186, 208, '谷城县', 3, 0),
(2187, 208, '保康县', 3, 0),
(2188, 208, '老河口市', 3, 0),
(2189, 208, '枣阳市', 3, 0),
(2190, 208, '宜城市', 3, 0),
(2191, 208, '其它区', 3, 0),
(2192, 209, '梁子湖区', 3, 0),
(2193, 209, '华容区', 3, 0),
(2194, 209, '鄂城区', 3, 0),
(2195, 209, '其它区', 3, 0),
(2196, 210, '东宝区', 3, 0),
(2197, 210, '掇刀区', 3, 0),
(2198, 210, '京山县', 3, 0),
(2199, 210, '沙洋县', 3, 0),
(2200, 210, '钟祥市', 3, 0),
(2201, 210, '其它区', 3, 0),
(2202, 211, '孝南区', 3, 0),
(2203, 211, '孝昌县', 3, 0),
(2204, 211, '大悟县', 3, 0),
(2205, 211, '云梦县', 3, 0),
(2206, 211, '应城市', 3, 0),
(2207, 211, '安陆市', 3, 0),
(2208, 211, '汉川市', 3, 0),
(2209, 211, '其它区', 3, 0),
(2210, 212, '沙市区', 3, 0),
(2211, 212, '荆州区', 3, 0),
(2212, 212, '公安县', 3, 0),
(2213, 212, '监利县', 3, 0),
(2214, 212, '江陵县', 3, 0),
(2215, 212, '石首市', 3, 0),
(2216, 212, '洪湖市', 3, 0),
(2217, 212, '松滋市', 3, 0),
(2218, 212, '其它区', 3, 0),
(2219, 213, '黄州区', 3, 0),
(2220, 213, '团风县', 3, 0),
(2221, 213, '红安县', 3, 0),
(2222, 213, '罗田县', 3, 0),
(2223, 213, '英山县', 3, 0),
(2224, 213, '浠水县', 3, 0),
(2225, 213, '蕲春县', 3, 0),
(2226, 213, '黄梅县', 3, 0),
(2227, 213, '麻城市', 3, 0),
(2228, 213, '武穴市', 3, 0),
(2229, 213, '其它区', 3, 0),
(2230, 214, '咸安区', 3, 0),
(2231, 214, '嘉鱼县', 3, 0),
(2232, 214, '通城县', 3, 0),
(2233, 214, '崇阳县', 3, 0),
(2234, 214, '通山县', 3, 0),
(2235, 214, '赤壁市', 3, 0),
(2236, 214, '温泉城区', 3, 0),
(2237, 214, '其它区', 3, 0),
(2238, 215, '曾都区', 3, 0),
(2239, 215, '随县', 3, 0),
(2240, 215, '广水市', 3, 0),
(2241, 215, '其它区', 3, 0),
(2242, 216, '恩施市', 3, 0),
(2243, 216, '利川市', 3, 0),
(2244, 216, '建始县', 3, 0),
(2245, 216, '巴东县', 3, 0),
(2246, 216, '宣恩县', 3, 0),
(2247, 216, '咸丰县', 3, 0),
(2248, 216, '来凤县', 3, 0),
(2249, 216, '鹤峰县', 3, 0),
(2250, 216, '其它区', 3, 0),
(2251, 217, '芙蓉区', 3, 0),
(2252, 217, '天心区', 3, 0),
(2253, 217, '岳麓区', 3, 0),
(2254, 217, '开福区', 3, 0),
(2255, 217, '雨花区', 3, 0),
(2256, 217, '长沙县', 3, 0),
(2257, 217, '望城区', 3, 0),
(2258, 217, '宁乡县', 3, 0),
(2259, 217, '浏阳市', 3, 0),
(2260, 217, '其它区', 3, 0),
(2261, 218, '荷塘区', 3, 0),
(2262, 218, '芦淞区', 3, 0),
(2263, 218, '石峰区', 3, 0),
(2264, 218, '天元区', 3, 0),
(2265, 218, '株洲县', 3, 0),
(2266, 218, '攸县', 3, 0),
(2267, 218, '茶陵县', 3, 0),
(2268, 218, '炎陵县', 3, 0),
(2269, 218, '醴陵市', 3, 0),
(2270, 218, '其它区', 3, 0),
(2271, 219, '雨湖区', 3, 0),
(2272, 219, '岳塘区', 3, 0),
(2273, 219, '湘潭县', 3, 0),
(2274, 219, '湘乡市', 3, 0),
(2275, 219, '韶山市', 3, 0),
(2276, 219, '其它区', 3, 0),
(2277, 220, '珠晖区', 3, 0),
(2278, 220, '雁峰区', 3, 0),
(2279, 220, '石鼓区', 3, 0),
(2280, 220, '蒸湘区', 3, 0),
(2281, 220, '南岳区', 3, 0),
(2282, 220, '衡阳县', 3, 0),
(2283, 220, '衡南县', 3, 0),
(2284, 220, '衡山县', 3, 0),
(2285, 220, '衡东县', 3, 0),
(2286, 220, '祁东县', 3, 0),
(2287, 220, '耒阳市', 3, 0),
(2288, 220, '常宁市', 3, 0),
(2289, 220, '其它区', 3, 0),
(2290, 221, '双清区', 3, 0),
(2291, 221, '大祥区', 3, 0),
(2292, 221, '北塔区', 3, 0),
(2293, 221, '邵东县', 3, 0),
(2294, 221, '新邵县', 3, 0),
(2295, 221, '邵阳县', 3, 0),
(2296, 221, '隆回县', 3, 0),
(2297, 221, '洞口县', 3, 0),
(2298, 221, '绥宁县', 3, 0),
(2299, 221, '新宁县', 3, 0),
(2300, 221, '城步苗族自治县', 3, 0),
(2301, 221, '武冈市', 3, 0),
(2302, 221, '其它区', 3, 0),
(2303, 222, '岳阳楼区', 3, 0),
(2304, 222, '云溪区', 3, 0),
(2305, 222, '君山区', 3, 0),
(2306, 222, '岳阳县', 3, 0),
(2307, 222, '华容县', 3, 0),
(2308, 222, '湘阴县', 3, 0),
(2309, 222, '平江县', 3, 0),
(2310, 222, '汨罗市', 3, 0),
(2311, 222, '临湘市', 3, 0),
(2312, 222, '其它区', 3, 0),
(2313, 223, '武陵区', 3, 0),
(2314, 223, '鼎城区', 3, 0),
(2315, 223, '安乡县', 3, 0),
(2316, 223, '汉寿县', 3, 0),
(2317, 223, '澧县', 3, 0),
(2318, 223, '临澧县', 3, 0),
(2319, 223, '桃源县', 3, 0),
(2320, 223, '石门县', 3, 0),
(2321, 223, '津市市', 3, 0),
(2322, 223, '其它区', 3, 0),
(2323, 224, '永定区', 3, 0),
(2324, 224, '武陵源区', 3, 0),
(2325, 224, '慈利县', 3, 0),
(2326, 224, '桑植县', 3, 0),
(2327, 224, '其它区', 3, 0),
(2328, 225, '资阳区', 3, 0),
(2329, 225, '赫山区', 3, 0),
(2330, 225, '南县', 3, 0),
(2331, 225, '桃江县', 3, 0),
(2332, 225, '安化县', 3, 0),
(2333, 225, '沅江市', 3, 0),
(2334, 225, '其它区', 3, 0),
(2335, 226, '北湖区', 3, 0),
(2336, 226, '苏仙区', 3, 0),
(2337, 226, '桂阳县', 3, 0),
(2338, 226, '宜章县', 3, 0),
(2339, 226, '永兴县', 3, 0),
(2340, 226, '嘉禾县', 3, 0),
(2341, 226, '临武县', 3, 0),
(2342, 226, '汝城县', 3, 0),
(2343, 226, '桂东县', 3, 0),
(2344, 226, '安仁县', 3, 0),
(2345, 226, '资兴市', 3, 0),
(2346, 226, '其它区', 3, 0),
(2347, 227, '零陵区', 3, 0),
(2348, 227, '冷水滩区', 3, 0),
(2349, 227, '祁阳县', 3, 0),
(2350, 227, '东安县', 3, 0),
(2351, 227, '双牌县', 3, 0),
(2352, 227, '道县', 3, 0),
(2353, 227, '江永县', 3, 0),
(2354, 227, '宁远县', 3, 0),
(2355, 227, '蓝山县', 3, 0),
(2356, 227, '新田县', 3, 0),
(2357, 227, '江华瑶族自治县', 3, 0),
(2358, 227, '其它区', 3, 0),
(2359, 228, '鹤城区', 3, 0),
(2360, 228, '中方县', 3, 0),
(2361, 228, '沅陵县', 3, 0),
(2362, 228, '辰溪县', 3, 0),
(2363, 228, '溆浦县', 3, 0),
(2364, 228, '会同县', 3, 0),
(2365, 228, '麻阳苗族自治县', 3, 0),
(2366, 228, '新晃侗族自治县', 3, 0),
(2367, 228, '芷江侗族自治县', 3, 0),
(2368, 228, '靖州苗族侗族自治县', 3, 0),
(2369, 228, '通道侗族自治县', 3, 0),
(2370, 228, '洪江市', 3, 0),
(2371, 228, '其它区', 3, 0),
(2372, 229, '娄星区', 3, 0),
(2373, 229, '双峰县', 3, 0),
(2374, 229, '新化县', 3, 0),
(2375, 229, '冷水江市', 3, 0),
(2376, 229, '涟源市', 3, 0),
(2377, 229, '其它区', 3, 0),
(2378, 230, '吉首市', 3, 0),
(2379, 230, '泸溪县', 3, 0),
(2380, 230, '凤凰县', 3, 0),
(2381, 230, '花垣县', 3, 0),
(2382, 230, '保靖县', 3, 0),
(2383, 230, '古丈县', 3, 0),
(2384, 230, '永顺县', 3, 0),
(2385, 230, '龙山县', 3, 0),
(2386, 230, '其它区', 3, 0),
(2387, 231, '荔湾区', 3, 0),
(2388, 231, '越秀区', 3, 0),
(2389, 231, '海珠区', 3, 0),
(2390, 231, '天河区', 3, 0),
(2391, 231, '白云区', 3, 0),
(2392, 231, '黄埔区', 3, 0),
(2393, 231, '番禺区', 3, 0),
(2394, 231, '花都区', 3, 0),
(2395, 231, '南沙区', 3, 0),
(2396, 231, '萝岗区', 3, 0),
(2397, 231, '增城区', 3, 0),
(2398, 231, '从化区', 3, 0),
(2399, 231, '东山区', 3, 0),
(2400, 231, '其它区', 3, 0),
(2401, 232, '武江区', 3, 0),
(2402, 232, '浈江区', 3, 0),
(2403, 232, '曲江区', 3, 0),
(2404, 232, '始兴县', 3, 0),
(2405, 232, '仁化县', 3, 0),
(2406, 232, '翁源县', 3, 0),
(2407, 232, '乳源瑶族自治县', 3, 0),
(2408, 232, '新丰县', 3, 0),
(2409, 232, '乐昌市', 3, 0),
(2410, 232, '南雄市', 3, 0),
(2411, 232, '其它区', 3, 0),
(2412, 233, '罗湖区', 3, 0),
(2413, 233, '福田区', 3, 0),
(2414, 233, '南山区', 3, 0),
(2415, 233, '宝安区', 3, 0),
(2416, 233, '龙岗区', 3, 0),
(2417, 233, '盐田区', 3, 0),
(2418, 233, '其它区', 3, 0),
(2419, 233, '光明新区', 3, 0),
(2420, 233, '坪山新区', 3, 0),
(2421, 233, '大鹏新区', 3, 0),
(2422, 233, '龙华新区', 3, 0),
(2423, 234, '香洲区', 3, 0),
(2424, 234, '斗门区', 3, 0),
(2425, 234, '金湾区', 3, 0),
(2426, 234, '金唐区', 3, 0),
(2427, 234, '南湾区', 3, 0),
(2428, 234, '其它区', 3, 0),
(2429, 235, '龙湖区', 3, 0),
(2430, 235, '金平区', 3, 0),
(2431, 235, '濠江区', 3, 0),
(2432, 235, '潮阳区', 3, 0),
(2433, 235, '潮南区', 3, 0),
(2434, 235, '澄海区', 3, 0),
(2435, 235, '南澳县', 3, 0),
(2436, 235, '其它区', 3, 0),
(2437, 236, '禅城区', 3, 0),
(2438, 236, '南海区', 3, 0),
(2439, 236, '顺德区', 3, 0),
(2440, 236, '三水区', 3, 0),
(2441, 236, '高明区', 3, 0),
(2442, 236, '其它区', 3, 0),
(2443, 237, '蓬江区', 3, 0),
(2444, 237, '江海区', 3, 0),
(2445, 237, '新会区', 3, 0),
(2446, 237, '台山市', 3, 0),
(2447, 237, '开平市', 3, 0),
(2448, 237, '鹤山市', 3, 0),
(2449, 237, '恩平市', 3, 0),
(2450, 237, '其它区', 3, 0),
(2451, 238, '赤坎区', 3, 0),
(2452, 238, '霞山区', 3, 0),
(2453, 238, '坡头区', 3, 0),
(2454, 238, '麻章区', 3, 0),
(2455, 238, '遂溪县', 3, 0),
(2456, 238, '徐闻县', 3, 0),
(2457, 238, '廉江市', 3, 0),
(2458, 238, '雷州市', 3, 0),
(2459, 238, '吴川市', 3, 0),
(2460, 238, '其它区', 3, 0),
(2461, 239, '茂南区', 3, 0),
(2462, 239, '电白区', 3, 0),
(2463, 239, '电白县', 3, 0),
(2464, 239, '高州市', 3, 0),
(2465, 239, '化州市', 3, 0),
(2466, 239, '信宜市', 3, 0),
(2467, 239, '其它区', 3, 0),
(2468, 240, '端州区', 3, 0),
(2469, 240, '鼎湖区', 3, 0),
(2470, 240, '广宁县', 3, 0),
(2471, 240, '怀集县', 3, 0),
(2472, 240, '封开县', 3, 0),
(2473, 240, '德庆县', 3, 0),
(2474, 240, '高要市', 3, 0),
(2475, 240, '四会市', 3, 0),
(2476, 240, '其它区', 3, 0),
(2477, 241, '惠城区', 3, 0),
(2478, 241, '惠阳区', 3, 0),
(2479, 241, '博罗县', 3, 0),
(2480, 241, '惠东县', 3, 0),
(2481, 241, '龙门县', 3, 0),
(2482, 241, '其它区', 3, 0),
(2483, 242, '梅江区', 3, 0),
(2484, 242, '梅县区', 3, 0),
(2485, 242, '大埔县', 3, 0),
(2486, 242, '丰顺县', 3, 0),
(2487, 242, '五华县', 3, 0),
(2488, 242, '平远县', 3, 0),
(2489, 242, '蕉岭县', 3, 0),
(2490, 242, '兴宁市', 3, 0),
(2491, 242, '其它区', 3, 0),
(2492, 243, '城区', 3, 0),
(2493, 243, '海丰县', 3, 0),
(2494, 243, '陆河县', 3, 0),
(2495, 243, '陆丰市', 3, 0),
(2496, 243, '其它区', 3, 0),
(2497, 244, '源城区', 3, 0),
(2498, 244, '紫金县', 3, 0),
(2499, 244, '龙川县', 3, 0),
(2500, 244, '连平县', 3, 0),
(2501, 244, '和平县', 3, 0),
(2502, 244, '东源县', 3, 0),
(2503, 244, '其它区', 3, 0),
(2504, 245, '江城区', 3, 0),
(2505, 245, '阳西县', 3, 0),
(2506, 245, '阳东区', 3, 0),
(2507, 245, '阳春市', 3, 0),
(2508, 245, '其它区', 3, 0),
(2509, 246, '清城区', 3, 0),
(2510, 246, '佛冈县', 3, 0),
(2511, 246, '阳山县', 3, 0),
(2512, 246, '连山壮族瑶族自治县', 3, 0),
(2513, 246, '连南瑶族自治县', 3, 0),
(2514, 246, '清新区', 3, 0),
(2515, 246, '英德市', 3, 0),
(2516, 246, '连州市', 3, 0),
(2517, 246, '其它区', 3, 0),
(2518, 250, '湘桥区', 3, 0),
(2519, 250, '潮安区', 3, 0),
(2520, 250, '饶平县', 3, 0),
(2521, 250, '枫溪区', 3, 0),
(2522, 250, '其它区', 3, 0),
(2523, 251, '榕城区', 3, 0),
(2524, 251, '揭东区', 3, 0),
(2525, 251, '揭西县', 3, 0),
(2526, 251, '惠来县', 3, 0),
(2527, 251, '普宁市', 3, 0),
(2528, 251, '东山区', 3, 0),
(2529, 251, '其它区', 3, 0),
(2530, 252, '云城区', 3, 0),
(2531, 252, '新兴县', 3, 0),
(2532, 252, '郁南县', 3, 0),
(2533, 252, '云安区', 3, 0),
(2534, 252, '罗定市', 3, 0),
(2535, 252, '其它区', 3, 0),
(2536, 253, '兴宁区', 3, 0),
(2537, 253, '青秀区', 3, 0),
(2538, 253, '江南区', 3, 0),
(2539, 253, '西乡塘区', 3, 0),
(2540, 253, '良庆区', 3, 0),
(2541, 253, '邕宁区', 3, 0),
(2542, 253, '武鸣区', 3, 0),
(2543, 253, '隆安县', 3, 0),
(2544, 253, '马山县', 3, 0),
(2545, 253, '上林县', 3, 0),
(2546, 253, '宾阳县', 3, 0),
(2547, 253, '横县', 3, 0),
(2548, 253, '其它区', 3, 0),
(2549, 254, '城中区', 3, 0),
(2550, 254, '鱼峰区', 3, 0),
(2551, 254, '柳南区', 3, 0),
(2552, 254, '柳北区', 3, 0),
(2553, 254, '柳江县', 3, 0),
(2554, 254, '柳城县', 3, 0),
(2555, 254, '鹿寨县', 3, 0),
(2556, 254, '融安县', 3, 0),
(2557, 254, '融水苗族自治县', 3, 0),
(2558, 254, '三江侗族自治县', 3, 0),
(2559, 254, '其它区', 3, 0),
(2560, 255, '秀峰区', 3, 0),
(2561, 255, '叠彩区', 3, 0),
(2562, 255, '象山区', 3, 0),
(2563, 255, '七星区', 3, 0),
(2564, 255, '雁山区', 3, 0),
(2565, 255, '阳朔县', 3, 0),
(2566, 255, '临桂区', 3, 0),
(2567, 255, '灵川县', 3, 0),
(2568, 255, '全州县', 3, 0),
(2569, 255, '兴安县', 3, 0),
(2570, 255, '永福县', 3, 0),
(2571, 255, '灌阳县', 3, 0),
(2572, 255, '龙胜各族自治县', 3, 0),
(2573, 255, '资源县', 3, 0),
(2574, 255, '平乐县', 3, 0),
(2575, 255, '荔浦县', 3, 0),
(2576, 255, '恭城瑶族自治县', 3, 0),
(2577, 255, '其它区', 3, 0),
(2578, 256, '万秀区', 3, 0),
(2579, 256, '蝶山区', 3, 0),
(2580, 256, '长洲区', 3, 0),
(2581, 256, '龙圩区', 3, 0),
(2582, 256, '苍梧县', 3, 0),
(2583, 256, '藤县', 3, 0),
(2584, 256, '蒙山县', 3, 0),
(2585, 256, '岑溪市', 3, 0),
(2586, 256, '其它区', 3, 0),
(2587, 257, '海城区', 3, 0),
(2588, 257, '银海区', 3, 0),
(2589, 257, '铁山港区', 3, 0),
(2590, 257, '合浦县', 3, 0),
(2591, 257, '其它区', 3, 0),
(2592, 258, '港口区', 3, 0),
(2593, 258, '防城区', 3, 0),
(2594, 258, '上思县', 3, 0),
(2595, 258, '东兴市', 3, 0),
(2596, 258, '其它区', 3, 0),
(2597, 259, '钦南区', 3, 0),
(2598, 259, '钦北区', 3, 0),
(2599, 259, '灵山县', 3, 0),
(2600, 259, '浦北县', 3, 0),
(2601, 259, '其它区', 3, 0),
(2602, 260, '港北区', 3, 0),
(2603, 260, '港南区', 3, 0),
(2604, 260, '覃塘区', 3, 0),
(2605, 260, '平南县', 3, 0),
(2606, 260, '桂平市', 3, 0),
(2607, 260, '其它区', 3, 0),
(2608, 261, '玉州区', 3, 0),
(2609, 261, '福绵区', 3, 0),
(2610, 261, '容县', 3, 0),
(2611, 261, '陆川县', 3, 0),
(2612, 261, '博白县', 3, 0),
(2613, 261, '兴业县', 3, 0),
(2614, 261, '北流市', 3, 0),
(2615, 261, '其它区', 3, 0),
(2616, 262, '右江区', 3, 0),
(2617, 262, '田阳县', 3, 0),
(2618, 262, '田东县', 3, 0),
(2619, 262, '平果县', 3, 0),
(2620, 262, '德保县', 3, 0),
(2621, 262, '靖西县', 3, 0),
(2622, 262, '那坡县', 3, 0),
(2623, 262, '凌云县', 3, 0),
(2624, 262, '乐业县', 3, 0),
(2625, 262, '田林县', 3, 0),
(2626, 262, '西林县', 3, 0),
(2627, 262, '隆林各族自治县', 3, 0),
(2628, 262, '其它区', 3, 0),
(2629, 263, '八步区', 3, 0),
(2630, 263, '平桂管理区', 3, 0),
(2631, 263, '昭平县', 3, 0),
(2632, 263, '钟山县', 3, 0),
(2633, 263, '富川瑶族自治县', 3, 0),
(2634, 263, '其它区', 3, 0),
(2635, 264, '金城江区', 3, 0),
(2636, 264, '南丹县', 3, 0),
(2637, 264, '天峨县', 3, 0),
(2638, 264, '凤山县', 3, 0),
(2639, 264, '东兰县', 3, 0),
(2640, 264, '罗城仫佬族自治县', 3, 0),
(2641, 264, '环江毛南族自治县', 3, 0),
(2642, 264, '巴马瑶族自治县', 3, 0),
(2643, 264, '都安瑶族自治县', 3, 0),
(2644, 264, '大化瑶族自治县', 3, 0),
(2645, 264, '宜州市', 3, 0),
(2646, 264, '其它区', 3, 0),
(2647, 265, '兴宾区', 3, 0),
(2648, 265, '忻城县', 3, 0),
(2649, 265, '象州县', 3, 0),
(2650, 265, '武宣县', 3, 0),
(2651, 265, '金秀瑶族自治县', 3, 0),
(2652, 265, '合山市', 3, 0),
(2653, 265, '其它区', 3, 0),
(2654, 266, '江州区', 3, 0),
(2655, 266, '扶绥县', 3, 0),
(2656, 266, '宁明县', 3, 0),
(2657, 266, '龙州县', 3, 0),
(2658, 266, '大新县', 3, 0),
(2659, 266, '天等县', 3, 0),
(2660, 266, '凭祥市', 3, 0),
(2661, 266, '其它区', 3, 0),
(2662, 267, '秀英区', 3, 0),
(2663, 267, '龙华区', 3, 0),
(2664, 267, '琼山区', 3, 0),
(2665, 267, '美兰区', 3, 0),
(2666, 267, '其它区', 3, 0),
(2667, 269, '西沙群岛', 3, 0),
(2668, 269, '南沙群岛', 3, 0),
(2669, 269, '中沙群岛的岛礁及其海域', 3, 0),
(2670, 189, '高新区', 3, 0),
(2671, 189, '其它区', 3, 0),
(2672, 270, '万州区', 3, 0),
(2673, 270, '涪陵区', 3, 0),
(2674, 270, '渝中区', 3, 0),
(2675, 270, '大渡口区', 3, 0),
(2676, 270, '江北区', 3, 0),
(2677, 270, '沙坪坝区', 3, 0),
(2678, 270, '九龙坡区', 3, 0),
(2679, 270, '南岸区', 3, 0),
(2680, 270, '北碚区', 3, 0),
(2681, 270, '万盛区', 3, 0),
(2682, 270, '双桥区', 3, 0),
(2683, 270, '渝北区', 3, 0),
(2684, 270, '巴南区', 3, 0),
(2685, 270, '黔江区', 3, 0),
(2686, 270, '长寿区', 3, 0),
(2687, 270, '綦江区', 3, 0),
(2688, 270, '潼南县', 3, 0),
(2689, 270, '铜梁区', 3, 0),
(2690, 270, '大足区', 3, 0),
(2691, 270, '荣昌县', 3, 0),
(2692, 270, '璧山区', 3, 0),
(2693, 270, '梁平县', 3, 0),
(2694, 270, '城口县', 3, 0),
(2695, 270, '丰都县', 3, 0),
(2696, 270, '垫江县', 3, 0),
(2697, 270, '武隆县', 3, 0),
(2698, 270, '忠县', 3, 0),
(2699, 270, '开县', 3, 0),
(2700, 270, '云阳县', 3, 0),
(2701, 270, '奉节县', 3, 0),
(2702, 270, '巫山县', 3, 0),
(2703, 270, '巫溪县', 3, 0),
(2704, 270, '石柱土家族自治县', 3, 0),
(2705, 270, '秀山土家族苗族自治县', 3, 0),
(2706, 270, '酉阳土家族苗族自治县', 3, 0),
(2707, 270, '彭水苗族土家族自治县', 3, 0),
(2708, 270, '江津区', 3, 0),
(2709, 270, '合川区', 3, 0),
(2710, 270, '永川区', 3, 0),
(2711, 270, '南川区', 3, 0),
(2712, 270, '其它区', 3, 0),
(2713, 271, '锦江区', 3, 0),
(2714, 271, '青羊区', 3, 0),
(2715, 271, '金牛区', 3, 0),
(2716, 271, '武侯区', 3, 0),
(2717, 271, '成华区', 3, 0),
(2718, 271, '龙泉驿区', 3, 0),
(2719, 271, '青白江区', 3, 0),
(2720, 271, '新都区', 3, 0),
(2721, 271, '温江区', 3, 0),
(2722, 271, '金堂县', 3, 0),
(2723, 271, '双流县', 3, 0),
(2724, 271, '郫县', 3, 0),
(2725, 271, '大邑县', 3, 0),
(2726, 271, '蒲江县', 3, 0),
(2727, 271, '新津县', 3, 0),
(2728, 271, '都江堰市', 3, 0),
(2729, 271, '彭州市', 3, 0),
(2730, 271, '邛崃市', 3, 0),
(2731, 271, '崇州市', 3, 0),
(2732, 271, '其它区', 3, 0),
(2733, 272, '自流井区', 3, 0),
(2734, 272, '贡井区', 3, 0),
(2735, 272, '大安区', 3, 0),
(2736, 272, '沿滩区', 3, 0),
(2737, 272, '荣县', 3, 0),
(2738, 272, '富顺县', 3, 0),
(2739, 272, '其它区', 3, 0),
(2740, 273, '东区', 3, 0),
(2741, 273, '西区', 3, 0),
(2742, 273, '仁和区', 3, 0),
(2743, 273, '米易县', 3, 0),
(2744, 273, '盐边县', 3, 0),
(2745, 273, '其它区', 3, 0),
(2746, 274, '江阳区', 3, 0),
(2747, 274, '纳溪区', 3, 0),
(2748, 274, '龙马潭区', 3, 0),
(2749, 274, '泸县', 3, 0),
(2750, 274, '合江县', 3, 0),
(2751, 274, '叙永县', 3, 0),
(2752, 274, '古蔺县', 3, 0),
(2753, 274, '其它区', 3, 0),
(2754, 275, '旌阳区', 3, 0),
(2755, 275, '中江县', 3, 0),
(2756, 275, '罗江县', 3, 0),
(2757, 275, '广汉市', 3, 0),
(2758, 275, '什邡市', 3, 0),
(2759, 275, '绵竹市', 3, 0),
(2760, 275, '其它区', 3, 0),
(2761, 276, '涪城区', 3, 0),
(2762, 276, '游仙区', 3, 0),
(2763, 276, '三台县', 3, 0),
(2764, 276, '盐亭县', 3, 0),
(2765, 276, '安县', 3, 0),
(2766, 276, '梓潼县', 3, 0),
(2767, 276, '北川羌族自治县', 3, 0),
(2768, 276, '平武县', 3, 0),
(2769, 276, '高新区', 3, 0),
(2770, 276, '江油市', 3, 0),
(2771, 276, '其它区', 3, 0),
(2772, 277, '利州区', 3, 0),
(2773, 277, '昭化区', 3, 0),
(2774, 277, '朝天区', 3, 0),
(2775, 277, '旺苍县', 3, 0),
(2776, 277, '青川县', 3, 0),
(2777, 277, '剑阁县', 3, 0),
(2778, 277, '苍溪县', 3, 0),
(2779, 277, '其它区', 3, 0),
(2780, 278, '船山区', 3, 0),
(2781, 278, '安居区', 3, 0),
(2782, 278, '蓬溪县', 3, 0),
(2783, 278, '射洪县', 3, 0),
(2784, 278, '大英县', 3, 0),
(2785, 278, '其它区', 3, 0),
(2786, 279, '市中区', 3, 0),
(2787, 279, '东兴区', 3, 0),
(2788, 279, '威远县', 3, 0),
(2789, 279, '资中县', 3, 0),
(2790, 279, '隆昌县', 3, 0),
(2791, 279, '其它区', 3, 0),
(2792, 280, '市中区', 3, 0),
(2793, 280, '沙湾区', 3, 0),
(2794, 280, '五通桥区', 3, 0),
(2795, 280, '金口河区', 3, 0),
(2796, 280, '犍为县', 3, 0),
(2797, 280, '井研县', 3, 0),
(2798, 280, '夹江县', 3, 0),
(2799, 280, '沐川县', 3, 0),
(2800, 280, '峨边彝族自治县', 3, 0),
(2801, 280, '马边彝族自治县', 3, 0),
(2802, 280, '峨眉山市', 3, 0),
(2803, 280, '其它区', 3, 0),
(2804, 281, '顺庆区', 3, 0),
(2805, 281, '高坪区', 3, 0),
(2806, 281, '嘉陵区', 3, 0),
(2807, 281, '南部县', 3, 0),
(2808, 281, '营山县', 3, 0),
(2809, 281, '蓬安县', 3, 0),
(2810, 281, '仪陇县', 3, 0),
(2811, 281, '西充县', 3, 0),
(2812, 281, '阆中市', 3, 0),
(2813, 281, '其它区', 3, 0),
(2814, 282, '东坡区', 3, 0),
(2815, 282, '仁寿县', 3, 0),
(2816, 282, '彭山区', 3, 0),
(2817, 282, '洪雅县', 3, 0),
(2818, 282, '丹棱县', 3, 0),
(2819, 282, '青神县', 3, 0),
(2820, 282, '其它区', 3, 0),
(2821, 283, '翠屏区', 3, 0),
(2822, 283, '宜宾县', 3, 0),
(2823, 283, '南溪区', 3, 0),
(2824, 283, '江安县', 3, 0),
(2825, 283, '长宁县', 3, 0),
(2826, 283, '高县', 3, 0),
(2827, 283, '珙县', 3, 0),
(2828, 283, '筠连县', 3, 0),
(2829, 283, '兴文县', 3, 0),
(2830, 283, '屏山县', 3, 0),
(2831, 283, '其它区', 3, 0),
(2832, 284, '广安区', 3, 0),
(2833, 284, '前锋区', 3, 0),
(2834, 284, '岳池县', 3, 0),
(2835, 284, '武胜县', 3, 0),
(2836, 284, '邻水县', 3, 0),
(2837, 284, '华蓥市', 3, 0),
(2838, 284, '市辖区', 3, 0),
(2839, 284, '其它区', 3, 0),
(2840, 285, '通川区', 3, 0),
(2841, 285, '达川区', 3, 0),
(2842, 285, '宣汉县', 3, 0),
(2843, 285, '开江县', 3, 0),
(2844, 285, '大竹县', 3, 0),
(2845, 285, '渠县', 3, 0),
(2846, 285, '万源市', 3, 0),
(2847, 285, '其它区', 3, 0),
(2848, 286, '雨城区', 3, 0),
(2849, 286, '名山区', 3, 0),
(2850, 286, '荥经县', 3, 0),
(2851, 286, '汉源县', 3, 0),
(2852, 286, '石棉县', 3, 0),
(2853, 286, '天全县', 3, 0),
(2854, 286, '芦山县', 3, 0),
(2855, 286, '宝兴县', 3, 0),
(2856, 286, '其它区', 3, 0),
(2857, 287, '巴州区', 3, 0),
(2858, 287, '恩阳区', 3, 0),
(2859, 287, '通江县', 3, 0),
(2860, 287, '南江县', 3, 0),
(2861, 287, '平昌县', 3, 0),
(2862, 287, '其它区', 3, 0),
(2863, 288, '雁江区', 3, 0),
(2864, 288, '安岳县', 3, 0),
(2865, 288, '乐至县', 3, 0),
(2866, 288, '简阳市', 3, 0),
(2867, 288, '其它区', 3, 0),
(2868, 289, '汶川县', 3, 0),
(2869, 289, '理县', 3, 0),
(2870, 289, '茂县', 3, 0),
(2871, 289, '松潘县', 3, 0),
(2872, 289, '九寨沟县', 3, 0),
(2873, 289, '金川县', 3, 0),
(2874, 289, '小金县', 3, 0),
(2875, 289, '黑水县', 3, 0),
(2876, 289, '马尔康县', 3, 0),
(2877, 289, '壤塘县', 3, 0),
(2878, 289, '阿坝县', 3, 0),
(2879, 289, '若尔盖县', 3, 0),
(2880, 289, '红原县', 3, 0),
(2881, 289, '其它区', 3, 0),
(2882, 290, '康定市', 3, 0),
(2883, 290, '泸定县', 3, 0),
(2884, 290, '丹巴县', 3, 0),
(2885, 290, '九龙县', 3, 0),
(2886, 290, '雅江县', 3, 0),
(2887, 290, '道孚县', 3, 0),
(2888, 290, '炉霍县', 3, 0),
(2889, 290, '甘孜县', 3, 0),
(2890, 290, '新龙县', 3, 0),
(2891, 290, '德格县', 3, 0),
(2892, 290, '白玉县', 3, 0),
(2893, 290, '石渠县', 3, 0),
(2894, 290, '色达县', 3, 0),
(2895, 290, '理塘县', 3, 0),
(2896, 290, '巴塘县', 3, 0),
(2897, 290, '乡城县', 3, 0),
(2898, 290, '稻城县', 3, 0),
(2899, 290, '得荣县', 3, 0),
(2900, 290, '其它区', 3, 0),
(2901, 291, '西昌市', 3, 0),
(2902, 291, '木里藏族自治县', 3, 0),
(2903, 291, '盐源县', 3, 0),
(2904, 291, '德昌县', 3, 0),
(2905, 291, '会理县', 3, 0),
(2906, 291, '会东县', 3, 0),
(2907, 291, '宁南县', 3, 0),
(2908, 291, '普格县', 3, 0),
(2909, 291, '布拖县', 3, 0),
(2910, 291, '金阳县', 3, 0),
(2911, 291, '昭觉县', 3, 0),
(2912, 291, '喜德县', 3, 0),
(2913, 291, '冕宁县', 3, 0),
(2914, 291, '越西县', 3, 0),
(2915, 291, '甘洛县', 3, 0),
(2916, 291, '美姑县', 3, 0),
(2917, 291, '雷波县', 3, 0),
(2918, 291, '其它区', 3, 0),
(2919, 292, '南明区', 3, 0),
(2920, 292, '云岩区', 3, 0),
(2921, 292, '花溪区', 3, 0),
(2922, 292, '乌当区', 3, 0),
(2923, 292, '白云区', 3, 0),
(2924, 292, '小河区', 3, 0),
(2925, 292, '开阳县', 3, 0),
(2926, 292, '息烽县', 3, 0),
(2927, 292, '修文县', 3, 0),
(2928, 292, '观山湖区', 3, 0),
(2929, 292, '清镇市', 3, 0),
(2930, 292, '其它区', 3, 0),
(2931, 293, '钟山区', 3, 0),
(2932, 293, '六枝特区', 3, 0),
(2933, 293, '水城县', 3, 0),
(2934, 293, '盘县', 3, 0),
(2935, 293, '其它区', 3, 0),
(2936, 294, '红花岗区', 3, 0),
(2937, 294, '汇川区', 3, 0),
(2938, 294, '遵义县', 3, 0),
(2939, 294, '桐梓县', 3, 0),
(2940, 294, '绥阳县', 3, 0),
(2941, 294, '正安县', 3, 0),
(2942, 294, '道真仡佬族苗族自治县', 3, 0),
(2943, 294, '务川仡佬族苗族自治县', 3, 0),
(2944, 294, '凤冈县', 3, 0),
(2945, 294, '湄潭县', 3, 0),
(2946, 294, '余庆县', 3, 0),
(2947, 294, '习水县', 3, 0),
(2948, 294, '赤水市', 3, 0),
(2949, 294, '仁怀市', 3, 0),
(2950, 294, '其它区', 3, 0),
(2951, 295, '西秀区', 3, 0),
(2952, 295, '平坝区', 3, 0),
(2953, 295, '普定县', 3, 0),
(2954, 295, '镇宁布依族苗族自治县', 3, 0),
(2955, 295, '关岭布依族苗族自治县', 3, 0),
(2956, 295, '紫云苗族布依族自治县', 3, 0),
(2957, 295, '其它区', 3, 0),
(2958, 296, '碧江区', 3, 0),
(2959, 296, '江口县', 3, 0),
(2960, 296, '玉屏侗族自治县', 3, 0),
(2961, 296, '石阡县', 3, 0),
(2962, 296, '思南县', 3, 0),
(2963, 296, '印江土家族苗族自治县', 3, 0),
(2964, 296, '德江县', 3, 0),
(2965, 296, '沿河土家族自治县', 3, 0),
(2966, 296, '松桃苗族自治县', 3, 0),
(2967, 296, '万山区', 3, 0),
(2968, 296, '其它区', 3, 0),
(2969, 297, '兴义市', 3, 0),
(2970, 297, '兴仁县', 3, 0),
(2971, 297, '普安县', 3, 0),
(2972, 297, '晴隆县', 3, 0),
(2973, 297, '贞丰县', 3, 0),
(2974, 297, '望谟县', 3, 0),
(2975, 297, '册亨县', 3, 0),
(2976, 297, '安龙县', 3, 0),
(2977, 297, '其它区', 3, 0),
(2978, 298, '七星关区', 3, 0),
(2979, 298, '大方县', 3, 0),
(2980, 298, '黔西县', 3, 0),
(2981, 298, '金沙县', 3, 0),
(2982, 298, '织金县', 3, 0),
(2983, 298, '纳雍县', 3, 0),
(2984, 298, '威宁彝族回族苗族自治县', 3, 0),
(2985, 298, '赫章县', 3, 0),
(2986, 298, '其它区', 3, 0),
(2987, 299, '凯里市', 3, 0),
(2988, 299, '黄平县', 3, 0),
(2989, 299, '施秉县', 3, 0),
(2990, 299, '三穗县', 3, 0),
(2991, 299, '镇远县', 3, 0),
(2992, 299, '岑巩县', 3, 0),
(2993, 299, '天柱县', 3, 0),
(2994, 299, '锦屏县', 3, 0),
(2995, 299, '剑河县', 3, 0),
(2996, 299, '台江县', 3, 0),
(2997, 299, '黎平县', 3, 0),
(2998, 299, '榕江县', 3, 0),
(2999, 299, '从江县', 3, 0),
(3000, 299, '雷山县', 3, 0),
(3001, 299, '麻江县', 3, 0),
(3002, 299, '丹寨县', 3, 0),
(3003, 299, '其它区', 3, 0),
(3004, 300, '都匀市', 3, 0),
(3005, 300, '福泉市', 3, 0),
(3006, 300, '荔波县', 3, 0),
(3007, 300, '贵定县', 3, 0),
(3008, 300, '瓮安县', 3, 0),
(3009, 300, '独山县', 3, 0),
(3010, 300, '平塘县', 3, 0),
(3011, 300, '罗甸县', 3, 0),
(3012, 300, '长顺县', 3, 0),
(3013, 300, '龙里县', 3, 0),
(3014, 300, '惠水县', 3, 0),
(3015, 300, '三都水族自治县', 3, 0),
(3016, 300, '其它区', 3, 0),
(3017, 301, '五华区', 3, 0),
(3018, 301, '盘龙区', 3, 0),
(3019, 301, '官渡区', 3, 0),
(3020, 301, '西山区', 3, 0),
(3021, 301, '东川区', 3, 0),
(3022, 301, '呈贡区', 3, 0),
(3023, 301, '晋宁县', 3, 0),
(3024, 301, '富民县', 3, 0),
(3025, 301, '宜良县', 3, 0),
(3026, 301, '石林彝族自治县', 3, 0),
(3027, 301, '嵩明县', 3, 0),
(3028, 301, '禄劝彝族苗族自治县', 3, 0),
(3029, 301, '寻甸回族彝族自治县', 3, 0),
(3030, 301, '安宁市', 3, 0),
(3031, 301, '其它区', 3, 0),
(3032, 302, '麒麟区', 3, 0),
(3033, 302, '马龙县', 3, 0),
(3034, 302, '陆良县', 3, 0),
(3035, 302, '师宗县', 3, 0),
(3036, 302, '罗平县', 3, 0),
(3037, 302, '富源县', 3, 0),
(3038, 302, '会泽县', 3, 0),
(3039, 302, '沾益县', 3, 0),
(3040, 302, '宣威市', 3, 0),
(3041, 302, '其它区', 3, 0),
(3042, 303, '红塔区', 3, 0),
(3043, 303, '江川县', 3, 0),
(3044, 303, '澄江县', 3, 0),
(3045, 303, '通海县', 3, 0),
(3046, 303, '华宁县', 3, 0),
(3047, 303, '易门县', 3, 0),
(3048, 303, '峨山彝族自治县', 3, 0),
(3049, 303, '新平彝族傣族自治县', 3, 0),
(3050, 303, '元江哈尼族彝族傣族自治县', 3, 0),
(3051, 303, '其它区', 3, 0),
(3052, 304, '隆阳区', 3, 0),
(3053, 304, '施甸县', 3, 0),
(3054, 304, '腾冲县', 3, 0),
(3055, 304, '龙陵县', 3, 0),
(3056, 304, '昌宁县', 3, 0),
(3057, 304, '其它区', 3, 0),
(3058, 305, '昭阳区', 3, 0),
(3059, 305, '鲁甸县', 3, 0),
(3060, 305, '巧家县', 3, 0),
(3061, 305, '盐津县', 3, 0),
(3062, 305, '大关县', 3, 0),
(3063, 305, '永善县', 3, 0),
(3064, 305, '绥江县', 3, 0),
(3065, 305, '镇雄县', 3, 0),
(3066, 305, '彝良县', 3, 0),
(3067, 305, '威信县', 3, 0),
(3068, 305, '水富县', 3, 0),
(3069, 305, '其它区', 3, 0),
(3070, 306, '古城区', 3, 0),
(3071, 306, '玉龙纳西族自治县', 3, 0),
(3072, 306, '永胜县', 3, 0),
(3073, 306, '华坪县', 3, 0),
(3074, 306, '宁蒗彝族自治县', 3, 0),
(3075, 306, '其它区', 3, 0),
(3076, 307, '思茅区', 3, 0),
(3077, 307, '宁洱哈尼族彝族自治县', 3, 0),
(3078, 307, '墨江哈尼族自治县', 3, 0),
(3079, 307, '景东彝族自治县', 3, 0),
(3080, 307, '景谷傣族彝族自治县', 3, 0),
(3081, 307, '镇沅彝族哈尼族拉祜族自治县', 3, 0),
(3082, 307, '江城哈尼族彝族自治县', 3, 0),
(3083, 307, '孟连傣族拉祜族佤族自治县', 3, 0),
(3084, 307, '澜沧拉祜族自治县', 3, 0),
(3085, 307, '西盟佤族自治县', 3, 0),
(3086, 307, '其它区', 3, 0),
(3087, 308, '临翔区', 3, 0),
(3088, 308, '凤庆县', 3, 0),
(3089, 308, '云县', 3, 0),
(3090, 308, '永德县', 3, 0),
(3091, 308, '镇康县', 3, 0),
(3092, 308, '双江拉祜族佤族布朗族傣族自治县', 3, 0),
(3093, 308, '耿马傣族佤族自治县', 3, 0),
(3094, 308, '沧源佤族自治县', 3, 0),
(3095, 308, '其它区', 3, 0),
(3096, 309, '楚雄市', 3, 0),
(3097, 309, '双柏县', 3, 0),
(3098, 309, '牟定县', 3, 0),
(3099, 309, '南华县', 3, 0),
(3100, 309, '姚安县', 3, 0),
(3101, 309, '大姚县', 3, 0),
(3102, 309, '永仁县', 3, 0),
(3103, 309, '元谋县', 3, 0),
(3104, 309, '武定县', 3, 0),
(3105, 309, '禄丰县', 3, 0),
(3106, 309, '其它区', 3, 0),
(3107, 310, '个旧市', 3, 0),
(3108, 310, '开远市', 3, 0),
(3109, 310, '蒙自市', 3, 0),
(3110, 310, '屏边苗族自治县', 3, 0),
(3111, 310, '建水县', 3, 0),
(3112, 310, '石屏县', 3, 0),
(3113, 310, '弥勒市', 3, 0),
(3114, 310, '泸西县', 3, 0),
(3115, 310, '元阳县', 3, 0),
(3116, 310, '红河县', 3, 0),
(3117, 310, '金平苗族瑶族傣族自治县', 3, 0),
(3118, 310, '绿春县', 3, 0),
(3119, 310, '河口瑶族自治县', 3, 0),
(3120, 310, '其它区', 3, 0),
(3121, 311, '文山市', 3, 0),
(3122, 311, '砚山县', 3, 0),
(3123, 311, '西畴县', 3, 0),
(3124, 311, '麻栗坡县', 3, 0),
(3125, 311, '马关县', 3, 0),
(3126, 311, '丘北县', 3, 0),
(3127, 311, '广南县', 3, 0),
(3128, 311, '富宁县', 3, 0),
(3129, 311, '其它区', 3, 0),
(3130, 312, '景洪市', 3, 0),
(3131, 312, '勐海县', 3, 0),
(3132, 312, '勐腊县', 3, 0),
(3133, 312, '其它区', 3, 0),
(3134, 313, '大理市', 3, 0),
(3135, 313, '漾濞彝族自治县', 3, 0),
(3136, 313, '祥云县', 3, 0),
(3137, 313, '宾川县', 3, 0),
(3138, 313, '弥渡县', 3, 0),
(3139, 313, '南涧彝族自治县', 3, 0),
(3140, 313, '巍山彝族回族自治县', 3, 0),
(3141, 313, '永平县', 3, 0),
(3142, 313, '云龙县', 3, 0),
(3143, 313, '洱源县', 3, 0),
(3144, 313, '剑川县', 3, 0),
(3145, 313, '鹤庆县', 3, 0),
(3146, 313, '其它区', 3, 0),
(3147, 314, '瑞丽市', 3, 0),
(3148, 314, '芒市', 3, 0),
(3149, 314, '梁河县', 3, 0),
(3150, 314, '盈江县', 3, 0),
(3151, 314, '陇川县', 3, 0),
(3152, 314, '其它区', 3, 0),
(3153, 315, '泸水县', 3, 0),
(3154, 315, '福贡县', 3, 0),
(3155, 315, '贡山独龙族怒族自治县', 3, 0),
(3156, 315, '兰坪白族普米族自治县', 3, 0),
(3157, 315, '其它区', 3, 0),
(3158, 316, '香格里拉市', 3, 0),
(3159, 316, '德钦县', 3, 0),
(3160, 316, '维西傈僳族自治县', 3, 0),
(3161, 316, '其它区', 3, 0),
(3162, 317, '城关区', 3, 0),
(3163, 317, '林周县', 3, 0),
(3164, 317, '当雄县', 3, 0),
(3165, 317, '尼木县', 3, 0),
(3166, 317, '曲水县', 3, 0),
(3167, 317, '堆龙德庆县', 3, 0),
(3168, 317, '达孜县', 3, 0),
(3169, 317, '墨竹工卡县', 3, 0),
(3170, 317, '其它区', 3, 0),
(3171, 318, '卡若区', 3, 0),
(3172, 318, '江达县', 3, 0),
(3173, 318, '贡觉县', 3, 0),
(3174, 318, '类乌齐县', 3, 0),
(3175, 318, '丁青县', 3, 0),
(3176, 318, '察雅县', 3, 0),
(3177, 318, '八宿县', 3, 0),
(3178, 318, '左贡县', 3, 0),
(3179, 318, '芒康县', 3, 0),
(3180, 318, '洛隆县', 3, 0),
(3181, 318, '边坝县', 3, 0),
(3182, 318, '其它区', 3, 0),
(3183, 319, '乃东县', 3, 0),
(3184, 319, '扎囊县', 3, 0),
(3185, 319, '贡嘎县', 3, 0),
(3186, 319, '桑日县', 3, 0),
(3187, 319, '琼结县', 3, 0),
(3188, 319, '曲松县', 3, 0),
(3189, 319, '措美县', 3, 0),
(3190, 319, '洛扎县', 3, 0),
(3191, 319, '加查县', 3, 0),
(3192, 319, '隆子县', 3, 0),
(3193, 319, '错那县', 3, 0),
(3194, 319, '浪卡子县', 3, 0),
(3195, 319, '其它区', 3, 0),
(3196, 320, '桑珠孜区', 3, 0),
(3197, 320, '南木林县', 3, 0),
(3198, 320, '江孜县', 3, 0),
(3199, 320, '定日县', 3, 0),
(3200, 320, '萨迦县', 3, 0),
(3201, 320, '拉孜县', 3, 0),
(3202, 320, '昂仁县', 3, 0),
(3203, 320, '谢通门县', 3, 0),
(3204, 320, '白朗县', 3, 0),
(3205, 320, '仁布县', 3, 0),
(3206, 320, '康马县', 3, 0),
(3207, 320, '定结县', 3, 0),
(3208, 320, '仲巴县', 3, 0),
(3209, 320, '亚东县', 3, 0),
(3210, 320, '吉隆县', 3, 0),
(3211, 320, '聂拉木县', 3, 0),
(3212, 320, '萨嘎县', 3, 0),
(3213, 320, '岗巴县', 3, 0),
(3214, 320, '其它区', 3, 0),
(3215, 321, '那曲县', 3, 0),
(3216, 321, '嘉黎县', 3, 0),
(3217, 321, '比如县', 3, 0),
(3218, 321, '聂荣县', 3, 0),
(3219, 321, '安多县', 3, 0),
(3220, 321, '申扎县', 3, 0),
(3221, 321, '索县', 3, 0),
(3222, 321, '班戈县', 3, 0),
(3223, 321, '巴青县', 3, 0),
(3224, 321, '尼玛县', 3, 0),
(3225, 321, '其它区', 3, 0),
(3226, 321, '双湖县', 3, 0),
(3227, 322, '普兰县', 3, 0),
(3228, 322, '札达县', 3, 0),
(3229, 322, '噶尔县', 3, 0),
(3230, 322, '日土县', 3, 0),
(3231, 322, '革吉县', 3, 0),
(3232, 322, '改则县', 3, 0),
(3233, 322, '措勤县', 3, 0),
(3234, 322, '其它区', 3, 0),
(3235, 323, '巴宜区', 3, 0),
(3236, 323, '工布江达县', 3, 0),
(3237, 323, '米林县', 3, 0),
(3238, 323, '墨脱县', 3, 0),
(3239, 323, '波密县', 3, 0),
(3240, 323, '察隅县', 3, 0),
(3241, 323, '朗县', 3, 0),
(3242, 323, '其它区', 3, 0),
(3243, 324, '新城区', 3, 0),
(3244, 324, '碑林区', 3, 0),
(3245, 324, '莲湖区', 3, 0),
(3246, 324, '灞桥区', 3, 0),
(3247, 324, '未央区', 3, 0),
(3248, 324, '雁塔区', 3, 0),
(3249, 324, '阎良区', 3, 0),
(3250, 324, '临潼区', 3, 0),
(3251, 324, '长安区', 3, 0),
(3252, 324, '蓝田县', 3, 0),
(3253, 324, '周至县', 3, 0),
(3254, 324, '户县', 3, 0),
(3255, 324, '高陵区', 3, 0),
(3256, 324, '其它区', 3, 0),
(3257, 325, '王益区', 3, 0),
(3258, 325, '印台区', 3, 0),
(3259, 325, '耀州区', 3, 0),
(3260, 325, '宜君县', 3, 0),
(3261, 325, '其它区', 3, 0),
(3262, 326, '渭滨区', 3, 0),
(3263, 326, '金台区', 3, 0),
(3264, 326, '陈仓区', 3, 0),
(3265, 326, '凤翔县', 3, 0),
(3266, 326, '岐山县', 3, 0),
(3267, 326, '扶风县', 3, 0),
(3268, 326, '眉县', 3, 0),
(3269, 326, '陇县', 3, 0),
(3270, 326, '千阳县', 3, 0),
(3271, 326, '麟游县', 3, 0),
(3272, 326, '凤县', 3, 0),
(3273, 326, '太白县', 3, 0),
(3274, 326, '其它区', 3, 0),
(3275, 327, '秦都区', 3, 0),
(3276, 327, '杨陵区', 3, 0),
(3277, 327, '渭城区', 3, 0),
(3278, 327, '三原县', 3, 0),
(3279, 327, '泾阳县', 3, 0),
(3280, 327, '乾县', 3, 0),
(3281, 327, '礼泉县', 3, 0),
(3282, 327, '永寿县', 3, 0),
(3283, 327, '彬县', 3, 0),
(3284, 327, '长武县', 3, 0),
(3285, 327, '旬邑县', 3, 0),
(3286, 327, '淳化县', 3, 0),
(3287, 327, '武功县', 3, 0),
(3288, 327, '兴平市', 3, 0),
(3289, 327, '其它区', 3, 0),
(3290, 328, '临渭区', 3, 0),
(3291, 328, '华县', 3, 0),
(3292, 328, '潼关县', 3, 0),
(3293, 328, '大荔县', 3, 0),
(3294, 328, '合阳县', 3, 0),
(3295, 328, '澄城县', 3, 0),
(3296, 328, '蒲城县', 3, 0),
(3297, 328, '白水县', 3, 0),
(3298, 328, '富平县', 3, 0),
(3299, 328, '韩城市', 3, 0),
(3300, 328, '华阴市', 3, 0),
(3301, 328, '其它区', 3, 0),
(3302, 329, '宝塔区', 3, 0),
(3303, 329, '延长县', 3, 0),
(3304, 329, '延川县', 3, 0),
(3305, 329, '子长县', 3, 0),
(3306, 329, '安塞县', 3, 0),
(3307, 329, '志丹县', 3, 0),
(3308, 329, '吴起县', 3, 0),
(3309, 329, '甘泉县', 3, 0),
(3310, 329, '富县', 3, 0),
(3311, 329, '洛川县', 3, 0),
(3312, 329, '宜川县', 3, 0),
(3313, 329, '黄龙县', 3, 0),
(3314, 329, '黄陵县', 3, 0),
(3315, 329, '其它区', 3, 0),
(3316, 330, '汉台区', 3, 0),
(3317, 330, '南郑县', 3, 0),
(3318, 330, '城固县', 3, 0),
(3319, 330, '洋县', 3, 0),
(3320, 330, '西乡县', 3, 0),
(3321, 330, '勉县', 3, 0),
(3322, 330, '宁强县', 3, 0),
(3323, 330, '略阳县', 3, 0),
(3324, 330, '镇巴县', 3, 0),
(3325, 330, '留坝县', 3, 0),
(3326, 330, '佛坪县', 3, 0),
(3327, 330, '其它区', 3, 0),
(3328, 331, '榆阳区', 3, 0),
(3329, 331, '神木县', 3, 0),
(3330, 331, '府谷县', 3, 0),
(3331, 331, '横山县', 3, 0),
(3332, 331, '靖边县', 3, 0),
(3333, 331, '定边县', 3, 0),
(3334, 331, '绥德县', 3, 0),
(3335, 331, '米脂县', 3, 0),
(3336, 331, '佳县', 3, 0),
(3337, 331, '吴堡县', 3, 0),
(3338, 331, '清涧县', 3, 0),
(3339, 331, '子洲县', 3, 0),
(3340, 331, '其它区', 3, 0),
(3341, 332, '汉滨区', 3, 0),
(3342, 332, '汉阴县', 3, 0),
(3343, 332, '石泉县', 3, 0),
(3344, 332, '宁陕县', 3, 0),
(3345, 332, '紫阳县', 3, 0),
(3346, 332, '岚皋县', 3, 0),
(3347, 332, '平利县', 3, 0),
(3348, 332, '镇坪县', 3, 0),
(3349, 332, '旬阳县', 3, 0),
(3350, 332, '白河县', 3, 0),
(3351, 332, '其它区', 3, 0),
(3352, 333, '商州区', 3, 0),
(3353, 333, '洛南县', 3, 0),
(3354, 333, '丹凤县', 3, 0),
(3355, 333, '商南县', 3, 0),
(3356, 333, '山阳县', 3, 0),
(3357, 333, '镇安县', 3, 0),
(3358, 333, '柞水县', 3, 0),
(3359, 333, '其它区', 3, 0),
(3360, 334, '城关区', 3, 0),
(3361, 334, '七里河区', 3, 0),
(3362, 334, '西固区', 3, 0),
(3363, 334, '安宁区', 3, 0),
(3364, 334, '红古区', 3, 0),
(3365, 334, '永登县', 3, 0),
(3366, 334, '皋兰县', 3, 0),
(3367, 334, '榆中县', 3, 0),
(3368, 334, '其它区', 3, 0),
(3369, 336, '金川区', 3, 0),
(3370, 336, '永昌县', 3, 0),
(3371, 336, '其它区', 3, 0),
(3372, 337, '白银区', 3, 0),
(3373, 337, '平川区', 3, 0),
(3374, 337, '靖远县', 3, 0),
(3375, 337, '会宁县', 3, 0),
(3376, 337, '景泰县', 3, 0),
(3377, 337, '其它区', 3, 0),
(3378, 338, '秦州区', 3, 0),
(3379, 338, '麦积区', 3, 0),
(3380, 338, '清水县', 3, 0),
(3381, 338, '秦安县', 3, 0),
(3382, 338, '甘谷县', 3, 0),
(3383, 338, '武山县', 3, 0),
(3384, 338, '张家川回族自治县', 3, 0),
(3385, 338, '其它区', 3, 0),
(3386, 339, '凉州区', 3, 0),
(3387, 339, '民勤县', 3, 0),
(3388, 339, '古浪县', 3, 0),
(3389, 339, '天祝藏族自治县', 3, 0),
(3390, 339, '其它区', 3, 0),
(3391, 340, '甘州区', 3, 0),
(3392, 340, '肃南裕固族自治县', 3, 0),
(3393, 340, '民乐县', 3, 0),
(3394, 340, '临泽县', 3, 0),
(3395, 340, '高台县', 3, 0),
(3396, 340, '山丹县', 3, 0),
(3397, 340, '其它区', 3, 0),
(3398, 341, '崆峒区', 3, 0),
(3399, 341, '泾川县', 3, 0),
(3400, 341, '灵台县', 3, 0),
(3401, 341, '崇信县', 3, 0),
(3402, 341, '华亭县', 3, 0),
(3403, 341, '庄浪县', 3, 0),
(3404, 341, '静宁县', 3, 0),
(3405, 341, '其它区', 3, 0),
(3406, 342, '肃州区', 3, 0),
(3407, 342, '金塔县', 3, 0),
(3408, 342, '瓜州县', 3, 0),
(3409, 342, '肃北蒙古族自治县', 3, 0),
(3410, 342, '阿克塞哈萨克族自治县', 3, 0),
(3411, 342, '玉门市', 3, 0),
(3412, 342, '敦煌市', 3, 0),
(3413, 342, '其它区', 3, 0),
(3414, 343, '西峰区', 3, 0),
(3415, 343, '庆城县', 3, 0),
(3416, 343, '环县', 3, 0),
(3417, 343, '华池县', 3, 0),
(3418, 343, '合水县', 3, 0),
(3419, 343, '正宁县', 3, 0),
(3420, 343, '宁县', 3, 0),
(3421, 343, '镇原县', 3, 0),
(3422, 343, '其它区', 3, 0),
(3423, 344, '安定区', 3, 0),
(3424, 344, '通渭县', 3, 0),
(3425, 344, '陇西县', 3, 0),
(3426, 344, '渭源县', 3, 0),
(3427, 344, '临洮县', 3, 0),
(3428, 344, '漳县', 3, 0),
(3429, 344, '岷县', 3, 0),
(3430, 344, '其它区', 3, 0),
(3431, 345, '武都区', 3, 0),
(3432, 345, '成县', 3, 0),
(3433, 345, '文县', 3, 0),
(3434, 345, '宕昌县', 3, 0),
(3435, 345, '康县', 3, 0),
(3436, 345, '西和县', 3, 0),
(3437, 345, '礼县', 3, 0),
(3438, 345, '徽县', 3, 0),
(3439, 345, '两当县', 3, 0),
(3440, 345, '其它区', 3, 0),
(3441, 346, '临夏市', 3, 0),
(3442, 346, '临夏县', 3, 0),
(3443, 346, '康乐县', 3, 0),
(3444, 346, '永靖县', 3, 0),
(3445, 346, '广河县', 3, 0),
(3446, 346, '和政县', 3, 0),
(3447, 346, '东乡族自治县', 3, 0),
(3448, 346, '积石山保安族东乡族撒拉族自治县', 3, 0),
(3449, 346, '其它区', 3, 0),
(3450, 347, '合作市', 3, 0),
(3451, 347, '临潭县', 3, 0),
(3452, 347, '卓尼县', 3, 0),
(3453, 347, '舟曲县', 3, 0),
(3454, 347, '迭部县', 3, 0),
(3455, 347, '玛曲县', 3, 0),
(3456, 347, '碌曲县', 3, 0),
(3457, 347, '夏河县', 3, 0),
(3458, 347, '其它区', 3, 0),
(3459, 348, '城东区', 3, 0),
(3460, 348, '城中区', 3, 0),
(3461, 348, '城西区', 3, 0),
(3462, 348, '城北区', 3, 0),
(3463, 348, '大通回族土族自治县', 3, 0),
(3464, 348, '湟中县', 3, 0),
(3465, 348, '湟源县', 3, 0),
(3466, 348, '其它区', 3, 0),
(3467, 349, '平安区', 3, 0),
(3468, 349, '民和回族土族自治县', 3, 0),
(3469, 349, '乐都区', 3, 0),
(3470, 349, '互助土族自治县', 3, 0),
(3471, 349, '化隆回族自治县', 3, 0),
(3472, 349, '循化撒拉族自治县', 3, 0),
(3473, 349, '其它区', 3, 0),
(3474, 350, '门源回族自治县', 3, 0),
(3475, 350, '祁连县', 3, 0),
(3476, 350, '海晏县', 3, 0),
(3477, 350, '刚察县', 3, 0),
(3478, 350, '其它区', 3, 0),
(3479, 351, '同仁县', 3, 0),
(3480, 351, '尖扎县', 3, 0),
(3481, 351, '泽库县', 3, 0),
(3482, 351, '河南蒙古族自治县', 3, 0),
(3483, 351, '其它区', 3, 0),
(3484, 352, '共和县', 3, 0),
(3485, 352, '同德县', 3, 0),
(3486, 352, '贵德县', 3, 0),
(3487, 352, '兴海县', 3, 0),
(3488, 352, '贵南县', 3, 0),
(3489, 352, '其它区', 3, 0),
(3490, 353, '玛沁县', 3, 0),
(3491, 353, '班玛县', 3, 0),
(3492, 353, '甘德县', 3, 0),
(3493, 353, '达日县', 3, 0),
(3494, 353, '久治县', 3, 0),
(3495, 353, '玛多县', 3, 0),
(3496, 353, '其它区', 3, 0),
(3497, 354, '玉树市', 3, 0),
(3498, 354, '杂多县', 3, 0),
(3499, 354, '称多县', 3, 0),
(3500, 354, '治多县', 3, 0),
(3501, 354, '囊谦县', 3, 0),
(3502, 354, '曲麻莱县', 3, 0),
(3503, 354, '其它区', 3, 0),
(3504, 355, '格尔木市', 3, 0),
(3505, 355, '德令哈市', 3, 0),
(3506, 355, '乌兰县', 3, 0),
(3507, 355, '都兰县', 3, 0),
(3508, 355, '天峻县', 3, 0),
(3509, 355, '其它区', 3, 0),
(3510, 356, '兴庆区', 3, 0),
(3511, 356, '西夏区', 3, 0),
(3512, 356, '金凤区', 3, 0),
(3513, 356, '永宁县', 3, 0),
(3514, 356, '贺兰县', 3, 0),
(3515, 356, '灵武市', 3, 0),
(3516, 356, '其它区', 3, 0),
(3517, 357, '大武口区', 3, 0),
(3518, 357, '惠农区', 3, 0),
(3519, 357, '平罗县', 3, 0),
(3520, 357, '其它区', 3, 0),
(3521, 358, '利通区', 3, 0),
(3522, 358, '红寺堡区', 3, 0),
(3523, 358, '盐池县', 3, 0),
(3524, 358, '同心县', 3, 0),
(3525, 358, '青铜峡市', 3, 0),
(3526, 358, '其它区', 3, 0),
(3527, 359, '原州区', 3, 0),
(3528, 359, '西吉县', 3, 0),
(3529, 359, '隆德县', 3, 0),
(3530, 359, '泾源县', 3, 0),
(3531, 359, '彭阳县', 3, 0),
(3532, 359, '其它区', 3, 0),
(3533, 360, '沙坡头区', 3, 0),
(3534, 360, '中宁县', 3, 0),
(3535, 360, '海原县', 3, 0),
(3536, 360, '其它区', 3, 0),
(3537, 361, '天山区', 3, 0),
(3538, 361, '沙依巴克区', 3, 0),
(3539, 361, '新市区', 3, 0),
(3540, 361, '水磨沟区', 3, 0),
(3541, 361, '头屯河区', 3, 0),
(3542, 361, '达坂城区', 3, 0),
(3543, 361, '东山区', 3, 0),
(3544, 361, '米东区', 3, 0),
(3545, 361, '乌鲁木齐县', 3, 0),
(3546, 361, '其它区', 3, 0),
(3547, 362, '独山子区', 3, 0),
(3548, 362, '克拉玛依区', 3, 0),
(3549, 362, '白碱滩区', 3, 0),
(3550, 362, '乌尔禾区', 3, 0),
(3551, 362, '其它区', 3, 0),
(3552, 363, '高昌区', 3, 0),
(3553, 363, '鄯善县', 3, 0),
(3554, 363, '托克逊县', 3, 0),
(3555, 363, '其它区', 3, 0),
(3556, 364, '哈密市', 3, 0),
(3557, 364, '巴里坤哈萨克自治县', 3, 0),
(3558, 364, '伊吾县', 3, 0),
(3559, 364, '其它区', 3, 0),
(3560, 365, '昌吉市', 3, 0),
(3561, 365, '阜康市', 3, 0),
(3562, 365, '米泉市', 3, 0),
(3563, 365, '呼图壁县', 3, 0),
(3564, 365, '玛纳斯县', 3, 0),
(3565, 365, '奇台县', 3, 0),
(3566, 365, '吉木萨尔县', 3, 0),
(3567, 365, '木垒哈萨克自治县', 3, 0),
(3568, 365, '其它区', 3, 0),
(3569, 366, '博乐市', 3, 0),
(3570, 366, '阿拉山口市', 3, 0),
(3571, 366, '精河县', 3, 0),
(3572, 366, '温泉县', 3, 0),
(3573, 366, '其它区', 3, 0),
(3574, 367, '库尔勒市', 3, 0),
(3575, 367, '轮台县', 3, 0),
(3576, 367, '尉犁县', 3, 0),
(3577, 367, '若羌县', 3, 0),
(3578, 367, '且末县', 3, 0),
(3579, 367, '焉耆回族自治县', 3, 0),
(3580, 367, '和静县', 3, 0),
(3581, 367, '和硕县', 3, 0),
(3582, 367, '博湖县', 3, 0),
(3583, 367, '其它区', 3, 0),
(3584, 368, '阿克苏市', 3, 0),
(3585, 368, '温宿县', 3, 0),
(3586, 368, '库车县', 3, 0),
(3587, 368, '沙雅县', 3, 0),
(3588, 368, '新和县', 3, 0),
(3589, 368, '拜城县', 3, 0),
(3590, 368, '乌什县', 3, 0),
(3591, 368, '阿瓦提县', 3, 0),
(3592, 368, '柯坪县', 3, 0),
(3593, 368, '其它区', 3, 0),
(3594, 369, '阿图什市', 3, 0),
(3595, 369, '阿克陶县', 3, 0),
(3596, 369, '阿合奇县', 3, 0),
(3597, 369, '乌恰县', 3, 0),
(3598, 369, '其它区', 3, 0),
(3599, 370, '喀什市', 3, 0),
(3600, 370, '疏附县', 3, 0),
(3601, 370, '疏勒县', 3, 0),
(3602, 370, '英吉沙县', 3, 0),
(3603, 370, '泽普县', 3, 0),
(3604, 370, '莎车县', 3, 0),
(3605, 370, '叶城县', 3, 0),
(3606, 370, '麦盖提县', 3, 0),
(3607, 370, '岳普湖县', 3, 0),
(3608, 370, '伽师县', 3, 0),
(3609, 370, '巴楚县', 3, 0),
(3610, 370, '塔什库尔干塔吉克自治县', 3, 0),
(3611, 370, '其它区', 3, 0),
(3612, 371, '和田市', 3, 0),
(3613, 371, '和田县', 3, 0),
(3614, 371, '墨玉县', 3, 0),
(3615, 371, '皮山县', 3, 0),
(3616, 371, '洛浦县', 3, 0),
(3617, 371, '策勒县', 3, 0),
(3618, 371, '于田县', 3, 0),
(3619, 371, '民丰县', 3, 0),
(3620, 371, '其它区', 3, 0),
(3621, 372, '伊宁市', 3, 0),
(3622, 372, '奎屯市', 3, 0),
(3623, 372, '伊宁县', 3, 0),
(3624, 372, '察布查尔锡伯自治县', 3, 0),
(3625, 372, '霍城县', 3, 0),
(3626, 372, '巩留县', 3, 0),
(3627, 372, '新源县', 3, 0),
(3628, 372, '昭苏县', 3, 0),
(3629, 372, '特克斯县', 3, 0),
(3630, 372, '尼勒克县', 3, 0),
(3631, 372, '其它区', 3, 0),
(3632, 373, '塔城市', 3, 0),
(3633, 373, '乌苏市', 3, 0),
(3634, 373, '额敏县', 3, 0),
(3635, 373, '沙湾县', 3, 0),
(3636, 373, '托里县', 3, 0),
(3637, 373, '裕民县', 3, 0),
(3638, 373, '和布克赛尔蒙古自治县', 3, 0),
(3639, 373, '其它区', 3, 0),
(3640, 374, '阿勒泰市', 3, 0),
(3641, 374, '布尔津县', 3, 0),
(3642, 374, '富蕴县', 3, 0),
(3643, 374, '福海县', 3, 0),
(3644, 374, '哈巴河县', 3, 0),
(3645, 374, '青河县', 3, 0),
(3646, 374, '吉木乃县', 3, 0),
(3647, 374, '其它区', 3, 0),
(3648, 375, '中正区', 3, 0),
(3649, 375, '大同区', 3, 0),
(3650, 375, '中山区', 3, 0),
(3651, 375, '松山区', 3, 0),
(3652, 375, '大安区', 3, 0),
(3653, 375, '万华区', 3, 0),
(3654, 375, '信义区', 3, 0),
(3655, 375, '士林区', 3, 0),
(3656, 375, '北投区', 3, 0),
(3657, 375, '内湖区', 3, 0),
(3658, 375, '南港区', 3, 0),
(3659, 375, '文山区', 3, 0),
(3660, 375, '其它区', 3, 0),
(3661, 376, '新兴区', 3, 0),
(3662, 376, '前金区', 3, 0),
(3663, 376, '芩雅区', 3, 0),
(3664, 376, '盐埕区', 3, 0),
(3665, 376, '鼓山区', 3, 0),
(3666, 376, '旗津区', 3, 0),
(3667, 376, '前镇区', 3, 0),
(3668, 376, '三民区', 3, 0),
(3669, 376, '左营区', 3, 0),
(3670, 376, '楠梓区', 3, 0),
(3671, 376, '小港区', 3, 0),
(3672, 376, '其它区', 3, 0),
(3673, 376, '苓雅区', 3, 0),
(3674, 376, '仁武区', 3, 0),
(3675, 376, '大社区', 3, 0),
(3676, 376, '冈山区', 3, 0),
(3677, 376, '路竹区', 3, 0),
(3678, 376, '阿莲区', 3, 0),
(3679, 376, '田寮区', 3, 0),
(3680, 376, '燕巢区', 3, 0),
(3681, 376, '桥头区', 3, 0),
(3682, 376, '梓官区', 3, 0),
(3683, 376, '弥陀区', 3, 0),
(3684, 376, '永安区', 3, 0),
(3685, 376, '湖内区', 3, 0),
(3686, 376, '凤山区', 3, 0),
(3687, 376, '大寮区', 3, 0),
(3688, 376, '林园区', 3, 0),
(3689, 376, '鸟松区', 3, 0),
(3690, 376, '大树区', 3, 0),
(3691, 376, '旗山区', 3, 0),
(3692, 376, '美浓区', 3, 0),
(3693, 376, '六龟区', 3, 0),
(3694, 376, '内门区', 3, 0),
(3695, 376, '杉林区', 3, 0),
(3696, 376, '甲仙区', 3, 0),
(3697, 376, '桃源区', 3, 0),
(3698, 376, '那玛夏区', 3, 0),
(3699, 376, '茂林区', 3, 0),
(3700, 376, '茄萣区', 3, 0),
(3701, 377, '中西区', 3, 0),
(3702, 377, '东区', 3, 0),
(3703, 377, '南区', 3, 0),
(3704, 377, '北区', 3, 0),
(3705, 377, '安平区', 3, 0),
(3706, 377, '安南区', 3, 0),
(3707, 377, '其它区', 3, 0),
(3708, 377, '永康区', 3, 0),
(3709, 377, '归仁区', 3, 0),
(3710, 377, '新化区', 3, 0),
(3711, 377, '左镇区', 3, 0),
(3712, 377, '玉井区', 3, 0),
(3713, 377, '楠西区', 3, 0),
(3714, 377, '南化区', 3, 0),
(3715, 377, '仁德区', 3, 0),
(3716, 377, '关庙区', 3, 0),
(3717, 377, '龙崎区', 3, 0),
(3718, 377, '官田区', 3, 0),
(3719, 377, '麻豆区', 3, 0),
(3720, 377, '佳里区', 3, 0),
(3721, 377, '西港区', 3, 0),
(3722, 377, '七股区', 3, 0),
(3723, 377, '将军区', 3, 0),
(3724, 377, '学甲区', 3, 0),
(3725, 377, '北门区', 3, 0),
(3726, 377, '新营区', 3, 0),
(3727, 377, '后壁区', 3, 0),
(3728, 377, '白河区', 3, 0),
(3729, 377, '东山区', 3, 0),
(3730, 377, '六甲区', 3, 0),
(3731, 377, '下营区', 3, 0),
(3732, 377, '柳营区', 3, 0),
(3733, 377, '盐水区', 3, 0),
(3734, 377, '善化区', 3, 0),
(3735, 377, '大内区', 3, 0),
(3736, 377, '山上区', 3, 0),
(3737, 377, '新市区', 3, 0),
(3738, 377, '安定区', 3, 0),
(3739, 378, '中区', 3, 0),
(3740, 378, '东区', 3, 0),
(3741, 378, '南区', 3, 0),
(3742, 378, '西区', 3, 0),
(3743, 378, '北区', 3, 0),
(3744, 378, '北屯区', 3, 0),
(3745, 378, '西屯区', 3, 0),
(3746, 378, '南屯区', 3, 0),
(3747, 378, '其它区', 3, 0),
(3748, 378, '太平区', 3, 0),
(3749, 378, '大里区', 3, 0),
(3750, 378, '雾峰区', 3, 0),
(3751, 378, '乌日区', 3, 0),
(3752, 378, '丰原区', 3, 0),
(3753, 378, '后里区', 3, 0),
(3754, 378, '石冈区', 3, 0),
(3755, 378, '东势区', 3, 0),
(3756, 378, '和平区', 3, 0),
(3757, 378, '新社区', 3, 0),
(3758, 378, '潭子区', 3, 0),
(3759, 378, '大雅区', 3, 0),
(3760, 378, '神冈区', 3, 0),
(3761, 378, '大肚区', 3, 0),
(3762, 378, '沙鹿区', 3, 0),
(3763, 378, '龙井区', 3, 0),
(3764, 378, '梧栖区', 3, 0),
(3765, 378, '清水区', 3, 0),
(3766, 378, '大甲区', 3, 0),
(3767, 378, '外埔区', 3, 0),
(3768, 378, '大安区', 3, 0),
(3769, 379, '金沙镇', 3, 0),
(3770, 379, '金湖镇', 3, 0),
(3771, 379, '金宁乡', 3, 0),
(3772, 379, '金城镇', 3, 0),
(3773, 379, '烈屿乡', 3, 0),
(3774, 379, '乌坵乡', 3, 0),
(3775, 380, '南投市', 3, 0),
(3776, 380, '中寮乡', 3, 0),
(3777, 380, '草屯镇', 3, 0),
(3778, 380, '国姓乡', 3, 0),
(3779, 380, '埔里镇', 3, 0),
(3780, 380, '仁爱乡', 3, 0),
(3781, 380, '名间乡', 3, 0),
(3782, 380, '集集镇', 3, 0),
(3783, 380, '水里乡', 3, 0),
(3784, 380, '鱼池乡', 3, 0),
(3785, 380, '信义乡', 3, 0),
(3786, 380, '竹山镇', 3, 0),
(3787, 380, '鹿谷乡', 3, 0),
(3788, 381, '仁爱区', 3, 0),
(3789, 381, '信义区', 3, 0),
(3790, 381, '中正区', 3, 0),
(3791, 381, '中山区', 3, 0),
(3792, 381, '安乐区', 3, 0),
(3793, 381, '暖暖区', 3, 0),
(3794, 381, '七堵区', 3, 0),
(3795, 381, '其它区', 3, 0),
(3796, 382, '东区', 3, 0),
(3797, 382, '北区', 3, 0),
(3798, 382, '香山区', 3, 0),
(3799, 382, '其它区', 3, 0),
(3800, 383, '东区', 3, 0),
(3801, 383, '西区', 3, 0),
(3802, 383, '其它区', 3, 0),
(3803, 384, '万里区', 3, 0),
(3804, 384, '金山区', 3, 0),
(3805, 384, '板桥区', 3, 0),
(3806, 384, '汐止区', 3, 0),
(3807, 384, '深坑区', 3, 0),
(3808, 384, '石碇区', 3, 0),
(3809, 384, '瑞芳区', 3, 0),
(3810, 384, '平溪区', 3, 0),
(3811, 384, '双溪区', 3, 0),
(3812, 384, '贡寮区', 3, 0),
(3813, 384, '新店区', 3, 0),
(3814, 384, '坪林区', 3, 0),
(3815, 384, '乌来区', 3, 0),
(3816, 384, '永和区', 3, 0),
(3817, 384, '中和区', 3, 0),
(3818, 384, '土城区', 3, 0),
(3819, 384, '三峡区', 3, 0),
(3820, 384, '树林区', 3, 0),
(3821, 384, '莺歌区', 3, 0),
(3822, 384, '三重区', 3, 0),
(3823, 384, '新庄区', 3, 0),
(3824, 384, '泰山区', 3, 0),
(3825, 384, '林口区', 3, 0),
(3826, 384, '芦洲区', 3, 0),
(3827, 384, '五股区', 3, 0),
(3828, 384, '八里区', 3, 0),
(3829, 384, '淡水区', 3, 0),
(3830, 384, '三芝区', 3, 0),
(3831, 384, '石门区', 3, 0),
(3832, 385, '宜兰市', 3, 0),
(3833, 385, '头城镇', 3, 0),
(3834, 385, '礁溪乡', 3, 0),
(3835, 385, '壮围乡', 3, 0),
(3836, 385, '员山乡', 3, 0),
(3837, 385, '罗东镇', 3, 0),
(3838, 385, '三星乡', 3, 0),
(3839, 385, '大同乡', 3, 0),
(3840, 385, '五结乡', 3, 0),
(3841, 385, '冬山乡', 3, 0),
(3842, 385, '苏澳镇', 3, 0),
(3843, 385, '南澳乡', 3, 0),
(3844, 385, '钓鱼台', 3, 0),
(3845, 386, '竹北市', 3, 0),
(3846, 386, '湖口乡', 3, 0),
(3847, 386, '新丰乡', 3, 0),
(3848, 386, '新埔镇', 3, 0),
(3849, 386, '关西镇', 3, 0),
(3850, 386, '芎林乡', 3, 0),
(3851, 386, '宝山乡', 3, 0),
(3852, 386, '竹东镇', 3, 0),
(3853, 386, '五峰乡', 3, 0),
(3854, 386, '横山乡', 3, 0),
(3855, 386, '尖石乡', 3, 0),
(3856, 386, '北埔乡', 3, 0),
(3857, 386, '峨眉乡', 3, 0),
(3858, 387, '中坜市', 3, 0),
(3859, 387, '平镇市', 3, 0),
(3860, 387, '龙潭乡', 3, 0),
(3861, 387, '杨梅市', 3, 0),
(3862, 387, '新屋乡', 3, 0),
(3863, 387, '观音乡', 3, 0),
(3864, 387, '桃园市', 3, 0),
(3865, 387, '龟山乡', 3, 0),
(3866, 387, '八德市', 3, 0),
(3867, 387, '大溪镇', 3, 0),
(3868, 387, '复兴乡', 3, 0),
(3869, 387, '大园乡', 3, 0),
(3870, 387, '芦竹乡', 3, 0),
(3871, 388, '竹南镇', 3, 0),
(3872, 388, '头份镇', 3, 0),
(3873, 388, '三湾乡', 3, 0),
(3874, 388, '南庄乡', 3, 0),
(3875, 388, '狮潭乡', 3, 0),
(3876, 388, '后龙镇', 3, 0),
(3877, 388, '通霄镇', 3, 0),
(3878, 388, '苑里镇', 3, 0),
(3879, 388, '苗栗市', 3, 0),
(3880, 388, '造桥乡', 3, 0),
(3881, 388, '头屋乡', 3, 0),
(3882, 388, '公馆乡', 3, 0),
(3883, 388, '大湖乡', 3, 0),
(3884, 388, '泰安乡', 3, 0),
(3885, 388, '铜锣乡', 3, 0),
(3886, 388, '三义乡', 3, 0),
(3887, 388, '西湖乡', 3, 0),
(3888, 388, '卓兰镇', 3, 0),
(3889, 389, '彰化市', 3, 0),
(3890, 389, '芬园乡', 3, 0),
(3891, 389, '花坛乡', 3, 0),
(3892, 389, '秀水乡', 3, 0),
(3893, 389, '鹿港镇', 3, 0),
(3894, 389, '福兴乡', 3, 0),
(3895, 389, '线西乡', 3, 0),
(3896, 389, '和美镇', 3, 0),
(3897, 389, '伸港乡', 3, 0),
(3898, 389, '员林镇', 3, 0),
(3899, 389, '社头乡', 3, 0),
(3900, 389, '永靖乡', 3, 0),
(3901, 389, '埔心乡', 3, 0),
(3902, 389, '溪湖镇', 3, 0),
(3903, 389, '大村乡', 3, 0),
(3904, 389, '埔盐乡', 3, 0),
(3905, 389, '田中镇', 3, 0),
(3906, 389, '北斗镇', 3, 0),
(3907, 389, '田尾乡', 3, 0),
(3908, 389, '埤头乡', 3, 0),
(3909, 389, '溪州乡', 3, 0),
(3910, 389, '竹塘乡', 3, 0),
(3911, 389, '二林镇', 3, 0),
(3912, 389, '大城乡', 3, 0),
(3913, 389, '芳苑乡', 3, 0),
(3914, 389, '二水乡', 3, 0),
(3915, 390, '番路乡', 3, 0),
(3916, 390, '梅山乡', 3, 0),
(3917, 390, '竹崎乡', 3, 0),
(3918, 390, '阿里山乡', 3, 0),
(3919, 390, '中埔乡', 3, 0),
(3920, 390, '大埔乡', 3, 0),
(3921, 390, '水上乡', 3, 0),
(3922, 390, '鹿草乡', 3, 0),
(3923, 390, '太保市', 3, 0),
(3924, 390, '朴子市', 3, 0),
(3925, 390, '东石乡', 3, 0),
(3926, 390, '六脚乡', 3, 0),
(3927, 390, '新港乡', 3, 0),
(3928, 390, '民雄乡', 3, 0),
(3929, 390, '大林镇', 3, 0),
(3930, 390, '溪口乡', 3, 0),
(3931, 390, '义竹乡', 3, 0),
(3932, 390, '布袋镇', 3, 0),
(3933, 391, '斗南镇', 3, 0),
(3934, 391, '大埤乡', 3, 0),
(3935, 391, '虎尾镇', 3, 0),
(3936, 391, '土库镇', 3, 0),
(3937, 391, '褒忠乡', 3, 0),
(3938, 391, '东势乡', 3, 0),
(3939, 391, '台西乡', 3, 0),
(3940, 391, '仑背乡', 3, 0),
(3941, 391, '麦寮乡', 3, 0),
(3942, 391, '斗六市', 3, 0),
(3943, 391, '林内乡', 3, 0),
(3944, 391, '古坑乡', 3, 0),
(3945, 391, '莿桐乡', 3, 0),
(3946, 391, '西螺镇', 3, 0),
(3947, 391, '二仑乡', 3, 0),
(3948, 391, '北港镇', 3, 0),
(3949, 391, '水林乡', 3, 0),
(3950, 391, '口湖乡', 3, 0),
(3951, 391, '四湖乡', 3, 0),
(3952, 391, '元长乡', 3, 0),
(3953, 392, '屏东市', 3, 0),
(3954, 392, '三地门乡', 3, 0),
(3955, 392, '雾台乡', 3, 0),
(3956, 392, '玛家乡', 3, 0),
(3957, 392, '九如乡', 3, 0),
(3958, 392, '里港乡', 3, 0),
(3959, 392, '高树乡', 3, 0),
(3960, 392, '盐埔乡', 3, 0),
(3961, 392, '长治乡', 3, 0),
(3962, 392, '麟洛乡', 3, 0),
(3963, 392, '竹田乡', 3, 0),
(3964, 392, '内埔乡', 3, 0),
(3965, 392, '万丹乡', 3, 0),
(3966, 392, '潮州镇', 3, 0),
(3967, 392, '泰武乡', 3, 0),
(3968, 392, '来义乡', 3, 0),
(3969, 392, '万峦乡', 3, 0),
(3970, 392, '崁顶乡', 3, 0),
(3971, 392, '新埤乡', 3, 0),
(3972, 392, '南州乡', 3, 0),
(3973, 392, '林边乡', 3, 0),
(3974, 392, '东港镇', 3, 0),
(3975, 392, '琉球乡', 3, 0),
(3976, 392, '佳冬乡', 3, 0),
(3977, 392, '新园乡', 3, 0),
(3978, 392, '枋寮乡', 3, 0),
(3979, 392, '枋山乡', 3, 0),
(3980, 392, '春日乡', 3, 0),
(3981, 392, '狮子乡', 3, 0),
(3982, 392, '车城乡', 3, 0),
(3983, 392, '牡丹乡', 3, 0),
(3984, 392, '恒春镇', 3, 0),
(3985, 392, '满州乡', 3, 0),
(3986, 393, '台东市', 3, 0),
(3987, 393, '绿岛乡', 3, 0),
(3988, 393, '兰屿乡', 3, 0),
(3989, 393, '延平乡', 3, 0),
(3990, 393, '卑南乡', 3, 0),
(3991, 393, '鹿野乡', 3, 0),
(3992, 393, '关山镇', 3, 0),
(3993, 393, '海端乡', 3, 0),
(3994, 393, '池上乡', 3, 0),
(3995, 393, '东河乡', 3, 0),
(3996, 393, '成功镇', 3, 0),
(3997, 393, '长滨乡', 3, 0),
(3998, 393, '金峰乡', 3, 0),
(3999, 393, '大武乡', 3, 0),
(4000, 393, '达仁乡', 3, 0),
(4001, 393, '太麻里乡', 3, 0),
(4002, 394, '花莲市', 3, 0),
(4003, 394, '新城乡', 3, 0),
(4004, 394, '太鲁阁', 3, 0),
(4005, 394, '秀林乡', 3, 0),
(4006, 394, '吉安乡', 3, 0),
(4007, 394, '寿丰乡', 3, 0),
(4008, 394, '凤林镇', 3, 0),
(4009, 394, '光复乡', 3, 0),
(4010, 394, '丰滨乡', 3, 0),
(4011, 394, '瑞穗乡', 3, 0),
(4012, 394, '万荣乡', 3, 0),
(4013, 394, '玉里镇', 3, 0),
(4014, 394, '卓溪乡', 3, 0),
(4015, 394, '富里乡', 3, 0),
(4016, 395, '马公市', 3, 0),
(4017, 395, '西屿乡', 3, 0),
(4018, 395, '望安乡', 3, 0),
(4019, 395, '七美乡', 3, 0),
(4020, 395, '白沙乡', 3, 0),
(4021, 395, '湖西乡', 3, 0),
(4022, 396, '南竿乡', 3, 0),
(4023, 396, '北竿乡', 3, 0),
(4024, 396, '莒光乡', 3, 0),
(4025, 396, '东引乡', 3, 0),
(4026, 397, '中西区', 3, 0),
(4027, 397, '湾仔', 3, 0),
(4028, 397, '东区', 3, 0),
(4029, 397, '南区', 3, 0),
(4030, 398, '九龙城区', 3, 0),
(4031, 398, '油尖旺区', 3, 0),
(4032, 398, '深水埗区', 3, 0),
(4033, 398, '黄大仙区', 3, 0),
(4034, 398, '观塘区', 3, 0),
(4035, 399, '北区', 3, 0),
(4036, 399, '大埔区', 3, 0),
(4037, 399, '沙田区', 3, 0),
(4038, 399, '西贡区', 3, 0),
(4039, 399, '元朗区', 3, 0),
(4040, 399, '屯门区', 3, 0),
(4041, 399, '荃湾区', 3, 0),
(4042, 399, '葵青区', 3, 0),
(4043, 399, '离岛区', 3, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ecs_reg_extend_info`
--

CREATE TABLE IF NOT EXISTS `ecs_reg_extend_info` (
  `Id` int(10) unsigned NOT NULL,
  `user_id` mediumint(8) unsigned NOT NULL,
  `reg_field_id` int(10) unsigned NOT NULL,
  `content` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecs_reg_fields`
--

CREATE TABLE IF NOT EXISTS `ecs_reg_fields` (
  `id` tinyint(3) unsigned NOT NULL,
  `reg_field_name` varchar(60) NOT NULL,
  `dis_order` tinyint(3) unsigned NOT NULL DEFAULT '100',
  `display` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_need` tinyint(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_reg_fields`
--

INSERT INTO `ecs_reg_fields` (`id`, `reg_field_name`, `dis_order`, `display`, `type`, `is_need`) VALUES
(2, 'QQ', 0, 1, 1, 0),
(3, '办公电话', 0, 1, 1, 0),
(4, '家庭电话', 0, 1, 1, 0),
(5, '手机', 0, 1, 1, 1),
(6, '密码找回问题', 0, 1, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ecs_role`
--

CREATE TABLE IF NOT EXISTS `ecs_role` (
  `role_id` smallint(5) unsigned NOT NULL,
  `role_name` varchar(60) NOT NULL DEFAULT '',
  `action_list` text NOT NULL,
  `role_describe` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecs_searchengine`
--

CREATE TABLE IF NOT EXISTS `ecs_searchengine` (
  `date` date NOT NULL DEFAULT '0000-00-00',
  `searchengine` varchar(20) NOT NULL DEFAULT '',
  `count` mediumint(8) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecs_search_history`
--

CREATE TABLE IF NOT EXISTS `ecs_search_history` (
  `id` int(10) unsigned NOT NULL,
  `keyword` char(50) NOT NULL,
  `count` int(11) NOT NULL,
  `type` enum('goods','store') NOT NULL,
  `store_id` int(11) NOT NULL,
  `updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecs_sessions`
--

CREATE TABLE IF NOT EXISTS `ecs_sessions` (
  `sesskey` char(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `expiry` int(10) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `adminid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `user_name` varchar(60) NOT NULL,
  `user_rank` tinyint(3) NOT NULL,
  `discount` decimal(3,2) NOT NULL,
  `email` varchar(60) NOT NULL,
  `data` char(255) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_sessions`
--

INSERT INTO `ecs_sessions` (`sesskey`, `expiry`, `userid`, `adminid`, `ip`, `user_name`, `user_rank`, `discount`, `email`, `data`) VALUES
('0e6fdb877ff2ad43ad5e0128d95eddbb', 1503649630, 0, 0, '107.178.194.18', '0', 0, '1.00', '0', 'a:3:{s:7:"from_ad";i:0;s:7:"referer";s:6:"本站";s:10:"login_fail";i:0;}');

-- --------------------------------------------------------

--
-- 表的结构 `ecs_sessions_data`
--

CREATE TABLE IF NOT EXISTS `ecs_sessions_data` (
  `sesskey` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `expiry` int(10) unsigned NOT NULL DEFAULT '0',
  `data` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_sessions_data`
--

INSERT INTO `ecs_sessions_data` (`sesskey`, `expiry`, `data`) VALUES
('8641cb8b71ae72b3a66e9dbcab9e5bfd', 4294967295, 'a:8:{s:7:"from_ad";i:0;s:7:"referer";s:6:"本站";s:10:"login_fail";i:0;s:9:"last_time";s:10:"1494757739";s:7:"last_ip";s:15:"180.168.202.246";s:9:"flow_type";s:1:"0";s:10:"flow_order";a:1:{s:14:"extension_code";s:0:"";}s:14:"display_search";s:4:"grid";}'),
('d0ee855fad13a1b1a5b0f0b77137f774', 4294967295, 'a:8:{s:7:"from_ad";i:0;s:7:"referer";s:6:"本站";s:10:"login_fail";i:0;s:9:"last_time";s:10:"1495099296";s:7:"last_ip";s:15:"180.173.136.187";s:9:"flow_type";s:1:"0";s:10:"flow_order";a:8:{s:14:"extension_code";s:0:"";s:11:"shipping_id";s:1:"1";s:6:"pay_id";s:1:"1";s:7:"pack_id";i:0;s:7:"card_id";i:0;s:5:"bonus";i:0;s:8:"integral";i:0;s:7:"surplus";i:0;}s:14:"flow_consignee";a:15:{s:10:"address_id";s:1:"4";s:12:"address_name";s:0:"";s:7:"user_id";s:1:"2";s:9:"consignee";s:6:"张颜";s:5:"email";s:0:"";s:7:"country";s:1:"1";s:8:"province";s:2:"10";s:4:"city";s:3:"109";s:8:"district";s:4:"1219";s:7:"address";s:28:"顾村镇宝安公路2003号";s:7:"zipcode";s:0:"";s:3:"tel";s:11:"18896525512";s:6:"mobile";s:0:"";s:13:"sign_building";s:0:"";s:9:"best_time";s:0:"";}}'),
('629815666c6074c0276d063c75de056a', 4294967295, 'a:8:{s:7:"from_ad";i:0;s:7:"referer";s:6:"本站";s:10:"login_fail";i:0;s:9:"last_time";s:10:"1494917895";s:7:"last_ip";s:15:"180.168.202.246";s:9:"flow_type";s:1:"0";s:10:"flow_order";a:8:{s:14:"extension_code";s:0:"";s:11:"shipping_id";i:0;s:6:"pay_id";i:0;s:7:"pack_id";i:0;s:7:"card_id";i:0;s:5:"bonus";i:0;s:8:"integral";i:0;s:7:"surplus";i:0;}s:14:"flow_consignee";a:15:{s:10:"address_id";s:1:"1";s:12:"address_name";s:0:"";s:7:"user_id";s:1:"2";s:9:"consignee";s:5:"13123";s:5:"email";s:0:"";s:7:"country";s:1:"1";s:8:"province";s:1:"7";s:4:"city";s:2:"80";s:8:"district";s:3:"944";s:7:"address";s:11:"12312312312";s:7:"zipcode";s:0:"";s:3:"tel";s:12:"123123123123";s:6:"mobile";s:0:"";s:13:"sign_building";s:0:"";s:9:"best_time";s:0:"";}}'),
('1d064caa1ae14652be58cb88e808e635', 4294967295, 'a:8:{s:7:"from_ad";i:0;s:7:"referer";s:6:"本站";s:10:"login_fail";i:0;s:9:"last_time";s:10:"1495089691";s:7:"last_ip";s:15:"180.173.136.187";s:9:"flow_type";s:1:"0";s:10:"flow_order";a:8:{s:14:"extension_code";s:0:"";s:11:"shipping_id";s:1:"1";s:6:"pay_id";s:1:"1";s:7:"pack_id";i:0;s:7:"card_id";i:0;s:5:"bonus";i:0;s:8:"integral";i:0;s:7:"surplus";i:0;}s:14:"flow_consignee";a:15:{s:10:"address_id";s:1:"4";s:12:"address_name";s:0:"";s:7:"user_id";s:1:"2";s:9:"consignee";s:6:"张颜";s:5:"email";s:0:"";s:7:"country";s:1:"1";s:8:"province";s:2:"10";s:4:"city";s:3:"109";s:8:"district";s:4:"1219";s:7:"address";s:28:"顾村镇宝安公路2003号";s:7:"zipcode";s:0:"";s:3:"tel";s:11:"18896525512";s:6:"mobile";s:0:"";s:13:"sign_building";s:0:"";s:9:"best_time";s:0:"";}}'),
('8ff839fe13c621dbfd131d10aabf3a48', 4294967295, 'a:8:{s:7:"from_ad";i:0;s:7:"referer";s:6:"本站";s:10:"login_fail";i:0;s:9:"last_time";s:10:"1495437323";s:7:"last_ip";s:13:"180.173.142.0";s:9:"flow_type";s:1:"0";s:10:"flow_order";a:8:{s:14:"extension_code";s:0:"";s:11:"shipping_id";i:0;s:6:"pay_id";i:0;s:7:"pack_id";i:0;s:7:"card_id";i:0;s:5:"bonus";i:0;s:8:"integral";i:0;s:7:"surplus";i:0;}s:14:"flow_consignee";a:15:{s:10:"address_id";s:2:"11";s:12:"address_name";s:0:"";s:7:"user_id";s:1:"4";s:9:"consignee";s:3:"xxx";s:5:"email";s:0:"";s:7:"country";s:1:"1";s:8:"province";s:2:"10";s:4:"city";s:3:"109";s:8:"district";s:4:"1225";s:7:"address";s:7:"1121122";s:7:"zipcode";s:0:"";s:3:"tel";s:11:"18896525512";s:6:"mobile";s:0:"";s:13:"sign_building";s:0:"";s:9:"best_time";s:0:"";}}'),
('be452a0d809f69198a9fdc8baeea7065', 4294967295, 'a:8:{s:7:"from_ad";i:0;s:7:"referer";s:6:"本站";s:10:"login_fail";i:0;s:9:"last_time";s:10:"1495503649";s:7:"last_ip";s:15:"180.168.202.246";s:9:"flow_type";s:1:"0";s:10:"flow_order";a:8:{s:14:"extension_code";s:0:"";s:11:"shipping_id";i:0;s:6:"pay_id";i:0;s:7:"pack_id";i:0;s:7:"card_id";i:0;s:5:"bonus";i:0;s:8:"integral";i:0;s:7:"surplus";i:0;}s:14:"flow_consignee";a:15:{s:10:"address_id";s:2:"11";s:12:"address_name";s:0:"";s:7:"user_id";s:1:"4";s:9:"consignee";s:3:"xxx";s:5:"email";s:0:"";s:7:"country";s:1:"1";s:8:"province";s:2:"10";s:4:"city";s:3:"109";s:8:"district";s:4:"1225";s:7:"address";s:7:"1121122";s:7:"zipcode";s:0:"";s:3:"tel";s:11:"18896525512";s:6:"mobile";s:0:"";s:13:"sign_building";s:0:"";s:9:"best_time";s:0:"";}}'),
('59ec7c9d40f989de65b8b9763df4b659', 2991085394, 'a:8:{s:7:"from_ad";i:0;s:7:"referer";s:6:"本站";s:10:"login_fail";i:0;s:9:"last_time";s:10:"1495542749";s:7:"last_ip";s:13:"116.226.74.13";s:9:"flow_type";s:1:"0";s:10:"flow_order";a:8:{s:14:"extension_code";s:0:"";s:11:"shipping_id";s:1:"1";s:6:"pay_id";s:1:"1";s:7:"pack_id";i:0;s:7:"card_id";i:0;s:5:"bonus";i:0;s:8:"integral";i:0;s:7:"surplus";i:0;}s:14:"flow_consignee";a:15:{s:10:"address_id";s:1:"4";s:12:"address_name";s:0:"";s:7:"user_id";s:1:"2";s:9:"consignee";s:6:"张颜";s:5:"email";s:0:"";s:7:"country";s:1:"1";s:8:"province";s:2:"10";s:4:"city";s:3:"109";s:8:"district";s:4:"1219";s:7:"address";s:28:"顾村镇宝安公路2003号";s:7:"zipcode";s:0:"";s:3:"tel";s:11:"18896525512";s:6:"mobile";s:0:"";s:13:"sign_building";s:0:"";s:9:"best_time";s:0:"";}}'),
('ef62aa5d013bfafc40af7c6b67e01297', 4294967295, 'a:8:{s:7:"from_ad";i:0;s:7:"referer";s:6:"本站";s:10:"login_fail";i:0;s:9:"last_time";s:10:"1495597154";s:7:"last_ip";s:15:"180.173.141.104";s:9:"flow_type";s:1:"0";s:10:"flow_order";a:8:{s:14:"extension_code";s:0:"";s:11:"shipping_id";s:1:"1";s:6:"pay_id";s:1:"1";s:7:"pack_id";i:0;s:7:"card_id";i:0;s:5:"bonus";i:0;s:8:"integral";i:0;s:7:"surplus";i:0;}s:14:"flow_consignee";a:15:{s:10:"address_id";s:2:"11";s:12:"address_name";s:0:"";s:7:"user_id";s:1:"4";s:9:"consignee";s:3:"xxx";s:5:"email";s:0:"";s:7:"country";s:1:"1";s:8:"province";s:2:"10";s:4:"city";s:3:"109";s:8:"district";s:4:"1225";s:7:"address";s:7:"1121122";s:7:"zipcode";s:0:"";s:3:"tel";s:11:"18896525512";s:6:"mobile";s:0:"";s:13:"sign_building";s:0:"";s:9:"best_time";s:0:"";}}'),
('c5272f7ebd9d635b889b49fd2a139ac5', 4294967295, 'a:8:{s:7:"from_ad";i:0;s:7:"referer";s:6:"本站";s:10:"login_fail";i:0;s:9:"flow_type";s:1:"0";s:10:"flow_order";a:8:{s:14:"extension_code";s:0:"";s:11:"shipping_id";s:1:"1";s:6:"pay_id";s:1:"1";s:7:"pack_id";i:0;s:7:"card_id";i:0;s:5:"bonus";i:0;s:8:"integral";i:0;s:7:"surplus";i:0;}s:9:"last_time";s:10:"1495597758";s:7:"last_ip";s:13:"116.226.74.13";s:14:"flow_consignee";a:15:{s:10:"address_id";s:1:"4";s:12:"address_name";s:0:"";s:7:"user_id";s:1:"2";s:9:"consignee";s:6:"张颜";s:5:"email";s:0:"";s:7:"country";s:1:"1";s:8:"province";s:2:"10";s:4:"city";s:3:"109";s:8:"district";s:4:"1219";s:7:"address";s:28:"顾村镇宝安公路2003号";s:7:"zipcode";s:0:"";s:3:"tel";s:11:"18896525512";s:6:"mobile";s:0:"";s:13:"sign_building";s:0:"";s:9:"best_time";s:0:"";}}'),
('498ebfd70534ab4ac2a644a169e6e2d5', 4294967295, 'a:8:{s:7:"from_ad";i:0;s:7:"referer";s:6:"本站";s:10:"login_fail";i:0;s:9:"flow_type";s:1:"0";s:9:"last_time";s:10:"1495597779";s:7:"last_ip";s:15:"180.168.202.246";s:10:"flow_order";a:8:{s:14:"extension_code";s:0:"";s:11:"shipping_id";s:1:"1";s:6:"pay_id";s:1:"1";s:7:"pack_id";i:0;s:7:"card_id";i:0;s:5:"bonus";i:0;s:8:"integral";i:0;s:7:"surplus";i:0;}s:14:"flow_consignee";a:15:{s:10:"address_id";s:2:"11";s:12:"address_name";s:0:"";s:7:"user_id";s:1:"4";s:9:"consignee";s:3:"xxx";s:5:"email";s:0:"";s:7:"country";s:1:"1";s:8:"province";s:2:"10";s:4:"city";s:3:"109";s:8:"district";s:4:"1225";s:7:"address";s:7:"1121122";s:7:"zipcode";s:0:"";s:3:"tel";s:11:"18896525512";s:6:"mobile";s:0:"";s:13:"sign_building";s:0:"";s:9:"best_time";s:0:"";}}'),
('003ffc3217ba45c5741e6cb87109ec50', 4294967295, 'a:8:{s:7:"from_ad";i:0;s:7:"referer";s:6:"本站";s:10:"login_fail";i:0;s:9:"last_time";s:10:"1495611445";s:7:"last_ip";s:13:"116.226.74.13";s:9:"flow_type";s:1:"0";s:10:"flow_order";a:8:{s:14:"extension_code";s:0:"";s:11:"shipping_id";s:1:"1";s:6:"pay_id";s:1:"1";s:7:"pack_id";i:0;s:7:"card_id";i:0;s:5:"bonus";i:0;s:8:"integral";i:0;s:7:"surplus";i:0;}s:14:"flow_consignee";a:15:{s:10:"address_id";s:1:"4";s:12:"address_name";s:0:"";s:7:"user_id";s:1:"2";s:9:"consignee";s:6:"张颜";s:5:"email";s:0:"";s:7:"country";s:1:"1";s:8:"province";s:2:"10";s:4:"city";s:3:"109";s:8:"district";s:4:"1219";s:7:"address";s:28:"顾村镇宝安公路2003号";s:7:"zipcode";s:0:"";s:3:"tel";s:11:"18896525512";s:6:"mobile";s:0:"";s:13:"sign_building";s:0:"";s:9:"best_time";s:0:"";}}'),
('64454f11fc8c7d7f100eb348750cd27f', 4294967295, 'a:8:{s:7:"from_ad";i:0;s:7:"referer";s:6:"本站";s:10:"login_fail";i:0;s:9:"last_time";s:10:"1495701452";s:7:"last_ip";s:12:"124.74.139.6";s:9:"flow_type";s:1:"0";s:10:"flow_order";a:8:{s:14:"extension_code";s:0:"";s:11:"shipping_id";s:1:"1";s:6:"pay_id";s:1:"1";s:7:"pack_id";i:0;s:7:"card_id";i:0;s:5:"bonus";i:0;s:8:"integral";i:0;s:7:"surplus";i:0;}s:14:"flow_consignee";a:15:{s:10:"address_id";s:1:"4";s:12:"address_name";s:0:"";s:7:"user_id";s:1:"2";s:9:"consignee";s:6:"张颜";s:5:"email";s:0:"";s:7:"country";s:1:"1";s:8:"province";s:2:"10";s:4:"city";s:3:"109";s:8:"district";s:4:"1219";s:7:"address";s:28:"顾村镇宝安公路2003号";s:7:"zipcode";s:0:"";s:3:"tel";s:11:"18896525512";s:6:"mobile";s:0:"";s:13:"sign_building";s:0:"";s:9:"best_time";s:0:"";}}'),
('4c8857bedde7c2db8500fa2efa548ab7', 4294967295, 'a:8:{s:7:"from_ad";i:0;s:7:"referer";s:6:"本站";s:10:"login_fail";i:0;s:9:"last_time";s:10:"1495710894";s:7:"last_ip";s:13:"116.226.74.13";s:9:"flow_type";s:1:"0";s:10:"flow_order";a:8:{s:14:"extension_code";s:0:"";s:11:"shipping_id";s:1:"1";s:6:"pay_id";s:1:"1";s:7:"pack_id";i:0;s:7:"card_id";i:0;s:5:"bonus";i:0;s:8:"integral";i:0;s:7:"surplus";i:0;}s:14:"flow_consignee";a:15:{s:10:"address_id";s:1:"4";s:12:"address_name";s:0:"";s:7:"user_id";s:1:"2";s:9:"consignee";s:6:"张颜";s:5:"email";s:0:"";s:7:"country";s:1:"1";s:8:"province";s:2:"10";s:4:"city";s:3:"109";s:8:"district";s:4:"1219";s:7:"address";s:28:"顾村镇宝安公路2003号";s:7:"zipcode";s:0:"";s:3:"tel";s:11:"18896525512";s:6:"mobile";s:0:"";s:13:"sign_building";s:0:"";s:9:"best_time";s:0:"";}}'),
('0a901842f58d7d7594ba89135ebae877', 4294967295, 'a:9:{s:9:"send_code";s:6:"417952";s:10:"login_fail";i:0;s:10:"sms_mobile";s:0:"";s:15:"sms_mobile_code";s:0:"";s:9:"last_time";i:1496802376;s:7:"last_ip";s:0:"";s:9:"flow_type";s:1:"0";s:10:"flow_order";a:38:{s:11:"shipping_id";i:1;s:6:"pay_id";i:1;s:7:"pack_id";i:0;s:7:"card_id";i:0;s:12:"card_message";s:0:"";s:7:"surplus";i:0;s:8:"integral";i:0;s:8:"bonus_id";i:0;s:8:"need_inv";i:0;s:8:"inv_type";s:0:"";s:9:"inv_payee";s:0:"";s:11:"inv_content";s:0:"";s:10:"postscript";s:0:"";s:7:"how_oos";s:33:"等待所有商品备齐后再发";s:11:"need_insure";i:0;s:7:"user_id";s:1:"5";s:8:"add_time";i:1496802459;s:10:"lastmodify";i:1496802459;s:12:"order_status";i:0;s:15:"shipping_status";i:0;s:10:"pay_status";i:0;s:9:"agency_id";i:0;s:14:"extension_code";s:0:"";s:12:"extension_id";i:0;s:10:"address_id";s:2:"13";s:12:"address_name";s:0:"";s:9:"consignee";s:9:"大放送";s:5:"email";s:0:"";s:7:"country";s:1:"1";s:8:"province";s:2:"10";s:4:"city";s:3:"109";s:8:"district";s:4:"1222";s:7:"address";s:15:"天潼路118号";s:7:"zipcode";s:0:"";s:3:"tel";s:11:"12345678945";s:6:"mobile";s:0:"";s:13:"sign_building";s:0:"";s:9:"best_time";s:0:"";}s:14:"flow_consignee";a:15:{s:10:"address_id";s:2:"13";s:12:"address_name";s:0:"";s:7:"user_id";s:1:"5";s:9:"consignee";s:9:"大放送";s:5:"email";s:0:"";s:7:"country";s:1:"1";s:8:"province";s:2:"10";s:4:"city";s:3:"109";s:8:"district";s:4:"1222";s:7:"address";s:15:"天潼路118号";s:7:"zipcode";s:0:"";s:3:"tel";s:11:"12345678945";s:6:"mobile";s:0:"";s:13:"sign_building";s:0:"";s:9:"best_time";s:0:"";}}'),
('f5531f1493cf153c5cb86aca537e3c1d', 4294967295, 'a:8:{s:7:"from_ad";i:0;s:7:"referer";s:6:"本站";s:10:"login_fail";i:0;s:9:"last_time";s:10:"1496808513";s:7:"last_ip";s:15:"180.173.143.139";s:9:"flow_type";s:1:"0";s:10:"flow_order";a:8:{s:14:"extension_code";s:0:"";s:11:"shipping_id";s:1:"1";s:6:"pay_id";s:1:"1";s:7:"pack_id";i:0;s:7:"card_id";i:0;s:5:"bonus";i:0;s:8:"integral";i:0;s:7:"surplus";i:0;}s:14:"flow_consignee";a:15:{s:10:"address_id";s:2:"11";s:12:"address_name";s:0:"";s:7:"user_id";s:1:"4";s:9:"consignee";s:3:"xxx";s:5:"email";s:0:"";s:7:"country";s:1:"1";s:8:"province";s:2:"10";s:4:"city";s:3:"109";s:8:"district";s:4:"1225";s:7:"address";s:7:"1121122";s:7:"zipcode";s:0:"";s:3:"tel";s:11:"18896525512";s:6:"mobile";s:0:"";s:13:"sign_building";s:0:"";s:9:"best_time";s:0:"";}}'),
('82e22a11cbe70d45749dd521388583e0', 4294967295, 'a:8:{s:7:"from_ad";i:0;s:7:"referer";s:6:"本站";s:10:"login_fail";i:0;s:9:"last_time";s:10:"1496906265";s:7:"last_ip";s:15:"180.168.202.246";s:9:"flow_type";s:1:"0";s:10:"flow_order";a:8:{s:14:"extension_code";s:0:"";s:11:"shipping_id";s:1:"1";s:6:"pay_id";s:1:"1";s:7:"pack_id";i:0;s:7:"card_id";i:0;s:5:"bonus";i:0;s:8:"integral";i:0;s:7:"surplus";i:0;}s:14:"flow_consignee";a:15:{s:10:"address_id";s:2:"11";s:12:"address_name";s:0:"";s:7:"user_id";s:1:"4";s:9:"consignee";s:3:"xxx";s:5:"email";s:0:"";s:7:"country";s:1:"1";s:8:"province";s:2:"10";s:4:"city";s:3:"109";s:8:"district";s:4:"1225";s:7:"address";s:7:"1121122";s:7:"zipcode";s:0:"";s:3:"tel";s:11:"18896525512";s:6:"mobile";s:0:"";s:13:"sign_building";s:0:"";s:9:"best_time";s:0:"";}}'),
('6e46e560179b40060ef51cfda4c60f53', 4294967295, 'a:8:{s:7:"from_ad";i:0;s:7:"referer";s:6:"本站";s:10:"login_fail";i:0;s:9:"last_time";s:10:"1497270798";s:7:"last_ip";s:13:"61.152.171.68";s:9:"flow_type";s:1:"0";s:10:"flow_order";a:8:{s:14:"extension_code";s:0:"";s:11:"shipping_id";s:1:"1";s:6:"pay_id";s:1:"1";s:7:"pack_id";i:0;s:7:"card_id";i:0;s:5:"bonus";i:0;s:8:"integral";i:0;s:7:"surplus";i:0;}s:14:"flow_consignee";a:15:{s:10:"address_id";s:2:"13";s:12:"address_name";s:0:"";s:7:"user_id";s:1:"5";s:9:"consignee";s:9:"大放送";s:5:"email";s:0:"";s:7:"country";s:1:"1";s:8:"province";s:2:"10";s:4:"city";s:3:"109";s:8:"district";s:4:"1222";s:7:"address";s:15:"天潼路118号";s:7:"zipcode";s:0:"";s:3:"tel";s:11:"12345678945";s:6:"mobile";s:0:"";s:13:"sign_building";s:0:"";s:9:"best_time";s:0:"";}}'),
('12d8baed249e288ea58a6621bf99d6e1', 4294967295, 'a:9:{s:7:"from_ad";i:0;s:7:"referer";s:6:"本站";s:10:"login_fail";i:0;s:9:"last_time";s:10:"1498535277";s:7:"last_ip";s:13:"116.226.59.47";s:9:"send_code";s:16:"wFcqOZcrhdQVzbpr";s:9:"flow_type";s:1:"0";s:10:"flow_order";a:8:{s:14:"extension_code";s:0:"";s:11:"shipping_id";s:1:"1";s:6:"pay_id";s:1:"1";s:7:"pack_id";i:0;s:7:"card_id";i:0;s:5:"bonus";i:0;s:8:"integral";i:0;s:7:"surplus";i:0;}s:14:"flow_consignee";a:15:{s:10:"address_id";s:1:"4";s:12:"address_name";s:0:"";s:7:"user_id";s:1:"2";s:9:"consignee";s:6:"张颜";s:5:"email";s:0:"";s:7:"country";s:1:"1";s:8:"province";s:2:"10";s:4:"city";s:3:"109";s:8:"district";s:4:"1219";s:7:"address";s:28:"顾村镇宝安公路2003号";s:7:"zipcode";s:0:"";s:3:"tel";s:11:"18896525512";s:6:"mobile";s:0:"";s:13:"sign_building";s:0:"";s:9:"best_time";s:0:"";}}'),
('c107d42afc92bb7f8125f1f6b7f497aa', 4294967295, 'a:8:{s:7:"from_ad";i:0;s:7:"referer";s:6:"本站";s:10:"login_fail";i:0;s:9:"last_time";s:10:"1498552555";s:7:"last_ip";s:13:"116.226.59.47";s:9:"flow_type";s:1:"0";s:10:"flow_order";a:8:{s:14:"extension_code";s:0:"";s:11:"shipping_id";s:1:"1";s:6:"pay_id";s:1:"1";s:7:"pack_id";i:0;s:7:"card_id";i:0;s:5:"bonus";i:0;s:8:"integral";i:0;s:7:"surplus";i:0;}s:14:"flow_consignee";a:15:{s:10:"address_id";s:2:"12";s:12:"address_name";s:0:"";s:7:"user_id";s:1:"2";s:9:"consignee";s:9:"踏踏ABC";s:5:"email";s:0:"";s:7:"country";s:1:"1";s:8:"province";s:2:"10";s:4:"city";s:3:"109";s:8:"district";s:4:"1223";s:7:"address";s:29:"人事任命通知书01号哈";s:7:"zipcode";s:0:"";s:3:"tel";s:11:"15800800000";s:6:"mobile";s:0:"";s:13:"sign_building";s:0:"";s:9:"best_time";s:0:"";}}'),
('5327d10bc7ef72b86ed2b9f97e5959de', 2997114861, 'a:8:{s:7:"from_ad";i:0;s:7:"referer";s:6:"本站";s:10:"login_fail";i:0;s:9:"last_time";s:10:"1498557453";s:7:"last_ip";s:13:"116.226.59.47";s:9:"flow_type";s:1:"0";s:10:"flow_order";a:8:{s:14:"extension_code";s:0:"";s:11:"shipping_id";s:1:"1";s:6:"pay_id";s:1:"1";s:7:"pack_id";i:0;s:7:"card_id";i:0;s:5:"bonus";i:0;s:8:"integral";i:0;s:7:"surplus";i:0;}s:14:"flow_consignee";a:15:{s:10:"address_id";s:2:"15";s:12:"address_name";s:0:"";s:7:"user_id";s:1:"2";s:9:"consignee";s:6:"还会";s:5:"email";s:0:"";s:7:"country";s:1:"1";s:8:"province";s:1:"4";s:4:"city";s:2:"41";s:8:"district";s:3:"484";s:7:"address";s:6:"抱怨";s:7:"zipcode";s:0:"";s:3:"tel";s:11:"15800000000";s:6:"mobile";s:0:"";s:13:"sign_building";s:0:"";s:9:"best_time";s:0:"";}}'),
('1f6e78083c3a259bf81f945a2ba4e89b', 4294967295, 'a:8:{s:7:"from_ad";i:0;s:7:"referer";s:6:"本站";s:10:"login_fail";i:0;s:9:"last_time";s:10:"1498619293";s:7:"last_ip";s:13:"116.226.59.47";s:9:"flow_type";s:1:"0";s:10:"flow_order";a:8:{s:14:"extension_code";s:0:"";s:11:"shipping_id";s:1:"1";s:6:"pay_id";s:1:"1";s:7:"pack_id";i:0;s:7:"card_id";i:0;s:5:"bonus";i:0;s:8:"integral";i:0;s:7:"surplus";i:0;}s:14:"flow_consignee";a:15:{s:10:"address_id";s:2:"15";s:12:"address_name";s:0:"";s:7:"user_id";s:1:"2";s:9:"consignee";s:6:"还会";s:5:"email";s:0:"";s:7:"country";s:1:"1";s:8:"province";s:1:"4";s:4:"city";s:2:"41";s:8:"district";s:3:"484";s:7:"address";s:6:"抱怨";s:7:"zipcode";s:0:"";s:3:"tel";s:11:"15800000000";s:6:"mobile";s:0:"";s:13:"sign_building";s:0:"";s:9:"best_time";s:0:"";}}'),
('060eca125dde4596a522e9ba30d67b86', 2997279798, 'a:6:{s:7:"from_ad";i:0;s:7:"referer";s:6:"本站";s:10:"login_fail";i:0;s:9:"last_time";s:10:"1498639894";s:7:"last_ip";s:14:"180.173.56.206";s:15:"auction_address";a:16:{s:10:"address_id";s:2:"15";s:12:"address_name";s:0:"";s:7:"user_id";s:1:"2";s:9:"consignee";s:6:"还会";s:5:"email";s:0:"";s:7:"country";s:1:"1";s:8:"province";s:1:"4";s:4:"city";s:2:"41";s:8:"district";s:3:"484";s:7:"address";s:6:"抱怨";s:7:"zipcode";s:0:"";s:3:"tel";s:11:"15800000000";s:6:"mobile";s:0:"";s:13:"sign_building";s:0:"";s:9:"best_time";s:0:"";s:6:"region";s:46:"河北省  秦皇岛市  青龙满族自治县";}}'),
('afaea514444370555c30628d7a85eec9', 4294967295, 'a:7:{s:9:"send_code";s:16:"gMkd5LNLQmsILQYr";s:10:"login_fail";i:0;s:9:"flow_type";s:1:"0";s:9:"last_time";s:10:"1500880258";s:7:"last_ip";s:14:"180.173.18.125";s:10:"flow_order";a:8:{s:14:"extension_code";s:0:"";s:11:"shipping_id";s:1:"1";s:6:"pay_id";s:1:"1";s:7:"pack_id";i:0;s:7:"card_id";i:0;s:5:"bonus";i:0;s:8:"integral";i:0;s:7:"surplus";i:0;}s:14:"flow_consignee";a:15:{s:10:"address_id";s:2:"15";s:12:"address_name";s:0:"";s:7:"user_id";s:1:"2";s:9:"consignee";s:6:"还会";s:5:"email";s:0:"";s:7:"country";s:1:"1";s:8:"province";s:1:"4";s:4:"city";s:2:"41";s:8:"district";s:3:"484";s:7:"address";s:6:"抱怨";s:7:"zipcode";s:0:"";s:3:"tel";s:11:"15800000000";s:6:"mobile";s:0:"";s:13:"sign_building";s:0:"";s:9:"best_time";s:0:"";}}'),
('54299d281d8a9064adc681d9bbab3538', 4294967295, 'a:7:{s:9:"send_code";s:16:"AiZmdTQy1PwWbMPd";s:10:"login_fail";i:0;s:9:"flow_type";s:1:"0";s:9:"last_time";s:10:"1500883813";s:7:"last_ip";s:14:"180.173.18.125";s:10:"flow_order";a:8:{s:14:"extension_code";s:0:"";s:11:"shipping_id";s:1:"1";s:6:"pay_id";s:1:"1";s:7:"pack_id";i:0;s:7:"card_id";i:0;s:5:"bonus";i:0;s:8:"integral";i:0;s:7:"surplus";i:0;}s:14:"flow_consignee";a:15:{s:10:"address_id";s:2:"16";s:12:"address_name";s:0:"";s:7:"user_id";s:1:"2";s:9:"consignee";s:5:"84888";s:5:"email";s:0:"";s:7:"country";s:1:"1";s:8:"province";s:2:"11";s:4:"city";s:3:"120";s:8:"district";s:4:"1343";s:7:"address";s:6:"188878";s:7:"zipcode";s:0:"";s:3:"tel";s:11:"15566666666";s:6:"mobile";s:0:"";s:13:"sign_building";s:0:"";s:9:"best_time";s:0:"";}}'),
('a47ed83c70a49aa549a91b11301d5f3f', 4294967295, 'a:8:{s:7:"from_ad";i:0;s:7:"referer";s:6:"本站";s:10:"login_fail";i:0;s:9:"last_time";s:10:"1500885559";s:7:"last_ip";s:13:"211.95.63.218";s:9:"flow_type";s:1:"0";s:10:"flow_order";a:8:{s:14:"extension_code";s:0:"";s:11:"shipping_id";s:1:"1";s:6:"pay_id";s:1:"1";s:7:"pack_id";i:0;s:7:"card_id";i:0;s:5:"bonus";i:0;s:8:"integral";i:0;s:7:"surplus";i:0;}s:14:"flow_consignee";a:15:{s:10:"address_id";s:2:"17";s:12:"address_name";s:0:"";s:7:"user_id";s:1:"2";s:9:"consignee";s:6:"/efghh";s:5:"email";s:0:"";s:7:"country";s:1:"1";s:8:"province";s:2:"24";s:4:"city";s:3:"278";s:8:"district";s:4:"2782";s:7:"address";s:4:"fghg";s:7:"zipcode";s:0:"";s:3:"tel";s:11:"13596542638";s:6:"mobile";s:0:"";s:13:"sign_building";s:0:"";s:9:"best_time";s:0:"";}}'),
('305c9a5e4a6dfd7e8e78915785cc7048', 3002266012, 'a:9:{s:7:"from_ad";i:0;s:7:"referer";s:6:"本站";s:10:"login_fail";i:0;s:9:"flow_type";s:1:"0";s:10:"cart_value";s:4:"183,";s:10:"flow_order";a:8:{s:14:"extension_code";s:0:"";s:11:"shipping_id";s:1:"1";s:6:"pay_id";s:1:"1";s:7:"pack_id";i:0;s:7:"card_id";i:0;s:5:"bonus";i:0;s:8:"integral";i:0;s:7:"surplus";i:0;}s:9:"last_time";s:10:"1501129712";s:7:"last_ip";s:15:"180.168.202.246";s:14:"flow_consignee";a:15:{s:10:"address_id";s:2:"22";s:12:"address_name";s:0:"";s:7:"user_id";s:1:"4";s:9:"consignee";s:4:"1111";s:5:"email";s:0:"";s:7:"country";s:1:"1";s:8:"province";s:2:"10";s:4:"city";s:3:"109";s:8:"district";s:4:"1225";s:7:"address";s:3:"125";s:7:"zipcode";s:0:"";s:3:"tel";s:11:"18896525545";s:6:"mobile";s:0:"";s:13:"sign_building";s:0:"";s:9:"best_time";s:0:"";}}'),
('faf8b2a81b503f7e3ff9f5bf9a8c8114', 3003118641, 'a:8:{s:7:"from_ad";i:0;s:7:"referer";s:6:"本站";s:10:"login_fail";i:0;s:9:"flow_type";s:1:"0";s:9:"last_time";s:10:"1501133002";s:7:"last_ip";s:15:"180.168.202.246";s:9:"send_code";s:16:"61hzJZTQFiBz2aMR";s:14:"display_search";s:4:"grid";}'),
('3813e6cf61b0cfc018402d53898c170b', 4294967295, 'a:9:{s:7:"from_ad";i:0;s:7:"referer";s:6:"本站";s:10:"login_fail";i:0;s:9:"flow_type";s:1:"0";s:10:"cart_value";s:3:"188";s:9:"last_time";s:10:"1501060235";s:7:"last_ip";s:15:"180.168.202.246";s:10:"flow_order";a:8:{s:14:"extension_code";s:0:"";s:11:"shipping_id";s:1:"1";s:6:"pay_id";s:1:"1";s:7:"pack_id";i:0;s:7:"card_id";i:0;s:5:"bonus";i:0;s:8:"integral";i:0;s:7:"surplus";i:0;}s:14:"flow_consignee";a:15:{s:10:"address_id";s:2:"17";s:12:"address_name";s:0:"";s:7:"user_id";s:1:"2";s:9:"consignee";s:6:"/efghh";s:5:"email";s:0:"";s:7:"country";s:1:"1";s:8:"province";s:2:"24";s:4:"city";s:3:"278";s:8:"district";s:4:"2782";s:7:"address";s:4:"fghg";s:7:"zipcode";s:0:"";s:3:"tel";s:11:"13596542638";s:6:"mobile";s:0:"";s:13:"sign_building";s:0:"";s:9:"best_time";s:0:"";}}'),
('02ac633550a8a9b78bc9df5592e0b1ce', 3004487529, 'a:10:{s:7:"from_ad";i:0;s:7:"referer";s:6:"本站";s:10:"login_fail";i:0;s:9:"last_time";s:10:"1502241128";s:7:"last_ip";s:15:"180.168.202.246";s:9:"flow_type";s:1:"0";s:10:"cart_value";s:4:"191,";s:10:"flow_order";a:8:{s:14:"extension_code";s:0:"";s:11:"shipping_id";s:1:"1";s:6:"pay_id";s:1:"1";s:7:"pack_id";i:0;s:7:"card_id";i:0;s:5:"bonus";i:0;s:8:"integral";i:0;s:7:"surplus";i:0;}s:14:"flow_consignee";a:15:{s:10:"address_id";s:2:"22";s:12:"address_name";s:0:"";s:7:"user_id";s:1:"4";s:9:"consignee";s:4:"1111";s:5:"email";s:0:"";s:7:"country";s:1:"1";s:8:"province";s:2:"10";s:4:"city";s:3:"109";s:8:"district";s:4:"1225";s:7:"address";s:3:"125";s:7:"zipcode";s:0:"";s:3:"tel";s:11:"18896525545";s:6:"mobile";s:0:"";s:13:"sign_building";s:0:"";s:9:"best_time";s:0:"";}s:7:"backUrl";s:69:"http://xtime.netdns.com.cn/flow.php?step=checkout&amp;cart_value=191,";}'),
('921ee126ee8fc50aaa92c9c567f86d21', 4294967295, 'a:10:{s:7:"from_ad";i:0;s:7:"referer";s:6:"本站";s:10:"login_fail";i:0;s:9:"last_time";s:10:"1502241621";s:7:"last_ip";s:15:"180.168.202.246";s:9:"flow_type";s:1:"0";s:10:"cart_value";s:3:"196";s:10:"flow_order";a:8:{s:14:"extension_code";s:0:"";s:11:"shipping_id";s:1:"1";s:6:"pay_id";s:1:"1";s:7:"pack_id";i:0;s:7:"card_id";i:0;s:5:"bonus";i:0;s:8:"integral";i:0;s:7:"surplus";i:0;}s:14:"flow_consignee";a:15:{s:10:"address_id";s:2:"26";s:12:"address_name";s:0:"";s:7:"user_id";s:1:"4";s:9:"consignee";s:6:"张颜";s:5:"email";s:0:"";s:7:"country";s:1:"1";s:8:"province";s:2:"10";s:4:"city";s:3:"109";s:8:"district";s:4:"1225";s:7:"address";s:3:"111";s:7:"zipcode";s:0:"";s:3:"tel";s:11:"18896525512";s:6:"mobile";s:0:"";s:13:"sign_building";s:0:"";s:9:"best_time";s:0:"";}s:7:"backUrl";s:69:"http://xtime.netdns.com.cn/flow.php?step=checkout&amp;cart_value=197,";}'),
('00d339819d6fb6e9c6113208939f4a4f', 3005539894, 'a:9:{s:7:"from_ad";i:0;s:7:"referer";s:6:"本站";s:10:"login_fail";i:0;s:9:"last_time";s:10:"1502245061";s:7:"last_ip";s:14:"180.173.18.125";s:9:"flow_type";s:1:"0";s:10:"cart_value";s:15:"添加成功！";s:10:"flow_order";a:8:{s:14:"extension_code";s:0:"";s:11:"shipping_id";s:1:"1";s:6:"pay_id";s:1:"1";s:7:"pack_id";i:0;s:7:"card_id";i:0;s:5:"bonus";i:0;s:8:"integral";i:0;s:7:"surplus";i:0;}s:14:"flow_consignee";a:15:{s:10:"address_id";s:2:"17";s:12:"address_name";s:0:"";s:7:"user_id";s:1:"2";s:9:"consignee";s:6:"/efghh";s:5:"email";s:0:"";s:7:"country";s:1:"1";s:8:"province";s:2:"24";s:4:"city";s:3:"278";s:8:"district";s:4:"2782";s:7:"address";s:4:"fghg";s:7:"zipcode";s:0:"";s:3:"tel";s:11:"13596542638";s:6:"mobile";s:0:"";s:13:"sign_building";s:0:"";s:9:"best_time";s:0:"";}}'),
('06eee78e350d4f30000b39fa3d4664ad', 4294967295, 'a:9:{s:7:"from_ad";i:0;s:7:"referer";s:6:"本站";s:10:"login_fail";i:0;s:9:"last_time";s:10:"1502327043";s:7:"last_ip";s:15:"180.168.202.246";s:10:"cart_value";s:3:"199";s:10:"flow_order";a:8:{s:14:"extension_code";s:0:"";s:11:"shipping_id";s:1:"1";s:6:"pay_id";s:1:"1";s:7:"pack_id";i:0;s:7:"card_id";i:0;s:5:"bonus";i:0;s:8:"integral";i:0;s:7:"surplus";i:0;}s:14:"flow_consignee";a:15:{s:10:"address_id";s:2:"26";s:12:"address_name";s:0:"";s:7:"user_id";s:1:"4";s:9:"consignee";s:6:"张颜";s:5:"email";s:0:"";s:7:"country";s:1:"1";s:8:"province";s:2:"10";s:4:"city";s:3:"109";s:8:"district";s:4:"1225";s:7:"address";s:3:"111";s:7:"zipcode";s:0:"";s:3:"tel";s:11:"18896525512";s:6:"mobile";s:0:"";s:13:"sign_building";s:0:"";s:9:"best_time";s:0:"";}s:7:"backUrl";s:68:"http://xtime.netdns.com.cn/flow.php?step=checkout&amp;cart_value=199";}'),
('9aff1d3603f482616d3f425765c84409', 4294967295, 'a:10:{s:7:"from_ad";i:0;s:7:"referer";s:6:"本站";s:10:"login_fail";i:0;s:9:"last_time";s:10:"1502327902";s:7:"last_ip";s:15:"180.168.202.246";s:9:"flow_type";s:1:"0";s:10:"cart_value";s:4:"210,";s:10:"flow_order";a:8:{s:14:"extension_code";s:0:"";s:11:"shipping_id";s:1:"1";s:6:"pay_id";s:1:"1";s:7:"pack_id";i:0;s:7:"card_id";i:0;s:5:"bonus";i:0;s:8:"integral";i:0;s:7:"surplus";i:0;}s:7:"backUrl";s:69:"http://xtime.netdns.com.cn/flow.php?step=checkout&amp;cart_value=209,";s:14:"flow_consignee";a:15:{s:10:"address_id";s:2:"27";s:12:"address_name";s:0:"";s:7:"user_id";s:1:"4";s:9:"consignee";s:2:"12";s:5:"email";s:0:"";s:7:"country";s:1:"1";s:8:"province";s:1:"6";s:4:"city";s:2:"70";s:8:"district";s:3:"853";s:7:"address";s:4:"1212";s:7:"zipcode";s:0:"";s:3:"tel";s:11:"18896525512";s:6:"mobile";s:0:"";s:13:"sign_building";s:0:"";s:9:"best_time";s:0:"";}}'),
('eff47be0f03e0c8b202370f9831b6d85', 4294967295, 'a:9:{s:7:"from_ad";i:0;s:7:"referer";s:6:"本站";s:10:"login_fail";i:0;s:9:"flow_type";s:1:"0";s:10:"cart_value";s:4:"214,";s:10:"flow_order";a:8:{s:14:"extension_code";s:0:"";s:11:"shipping_id";s:1:"1";s:6:"pay_id";s:1:"1";s:7:"pack_id";i:0;s:7:"card_id";i:0;s:5:"bonus";i:0;s:8:"integral";i:0;s:7:"surplus";i:0;}s:9:"last_time";s:10:"1502775183";s:7:"last_ip";s:15:"180.168.202.246";s:14:"flow_consignee";a:15:{s:10:"address_id";s:2:"17";s:12:"address_name";s:0:"";s:7:"user_id";s:1:"2";s:9:"consignee";s:6:"/efghh";s:5:"email";s:0:"";s:7:"country";s:1:"1";s:8:"province";s:2:"24";s:4:"city";s:3:"278";s:8:"district";s:4:"2782";s:7:"address";s:4:"fghg";s:7:"zipcode";s:0:"";s:3:"tel";s:11:"13596542638";s:6:"mobile";s:0:"";s:13:"sign_building";s:0:"";s:9:"best_time";s:0:"";}}'),
('fe819cb990b9353289197e922dd647c2', 4294967295, 'a:8:{s:7:"from_ad";i:0;s:7:"referer";s:6:"本站";s:10:"login_fail";i:0;s:10:"cart_value";s:3:"236";s:9:"last_time";s:10:"1502876310";s:7:"last_ip";s:14:"180.173.18.125";s:10:"flow_order";a:8:{s:14:"extension_code";s:0:"";s:11:"shipping_id";s:1:"1";s:6:"pay_id";s:1:"1";s:7:"pack_id";i:0;s:7:"card_id";i:0;s:5:"bonus";i:0;s:8:"integral";i:0;s:7:"surplus";i:0;}s:14:"flow_consignee";a:15:{s:10:"address_id";s:2:"17";s:12:"address_name";s:0:"";s:7:"user_id";s:1:"2";s:9:"consignee";s:6:"/efghh";s:5:"email";s:0:"";s:7:"country";s:1:"1";s:8:"province";s:2:"24";s:4:"city";s:3:"278";s:8:"district";s:4:"2782";s:7:"address";s:4:"fghg";s:7:"zipcode";s:0:"";s:3:"tel";s:11:"13596542638";s:6:"mobile";s:0:"";s:13:"sign_building";s:0:"";s:9:"best_time";s:0:"";}}'),
('1ec0cee62e94fb2e78c39de645d0d0b7', 4294967295, 'a:10:{s:7:"from_ad";i:0;s:7:"referer";s:6:"本站";s:10:"login_fail";i:0;s:9:"last_time";s:10:"1502775176";s:7:"last_ip";s:15:"180.168.202.246";s:9:"flow_type";s:1:"0";s:10:"cart_value";s:8:"216,218,";s:10:"flow_order";a:8:{s:14:"extension_code";s:0:"";s:11:"shipping_id";s:1:"1";s:6:"pay_id";s:1:"1";s:7:"pack_id";i:0;s:7:"card_id";i:0;s:5:"bonus";i:0;s:8:"integral";i:0;s:7:"surplus";i:0;}s:14:"flow_consignee";a:15:{s:10:"address_id";s:2:"27";s:12:"address_name";s:0:"";s:7:"user_id";s:1:"4";s:9:"consignee";s:2:"12";s:5:"email";s:0:"";s:7:"country";s:1:"1";s:8:"province";s:1:"6";s:4:"city";s:2:"70";s:8:"district";s:3:"853";s:7:"address";s:4:"1212";s:7:"zipcode";s:0:"";s:3:"tel";s:11:"18896525512";s:6:"mobile";s:0:"";s:13:"sign_building";s:0:"";s:9:"best_time";s:0:"";}s:7:"backUrl";s:69:"http://xtime.netdns.com.cn/flow.php?step=checkout&amp;cart_value=215,";}'),
('be96757e04f7d5bf871e01d4edabf058', 4294967295, 'a:10:{s:7:"from_ad";i:0;s:7:"referer";s:6:"本站";s:10:"login_fail";i:0;s:9:"flow_type";s:1:"0";s:10:"cart_value";s:3:"227";s:9:"last_time";s:10:"1502866844";s:7:"last_ip";s:13:"211.95.63.220";s:14:"display_search";s:4:"grid";s:10:"flow_order";a:8:{s:14:"extension_code";s:0:"";s:11:"shipping_id";s:1:"1";s:6:"pay_id";s:1:"1";s:7:"pack_id";i:0;s:7:"card_id";i:0;s:5:"bonus";i:0;s:8:"integral";i:0;s:7:"surplus";i:0;}s:14:"flow_consignee";a:15:{s:10:"address_id";s:2:"17";s:12:"address_name";s:0:"";s:7:"user_id";s:1:"2";s:9:"consignee";s:6:"/efghh";s:5:"email";s:0:"";s:7:"country";s:1:"1";s:8:"province";s:2:"24";s:4:"city";s:3:"278";s:8:"district";s:4:"2782";s:7:"address";s:4:"fghg";s:7:"zipcode";s:0:"";s:3:"tel";s:11:"13596542638";s:6:"mobile";s:0:"";s:13:"sign_building";s:0:"";s:9:"best_time";s:0:"";}}'),
('f6fcc6406f8844675892fa7a1ec9a1ed', 4294967295, 'a:10:{s:7:"from_ad";i:0;s:7:"referer";s:6:"本站";s:10:"login_fail";i:0;s:9:"last_time";s:10:"1502880163";s:7:"last_ip";s:14:"180.173.18.125";s:9:"flow_type";s:1:"0";s:15:"auction_address";a:16:{s:10:"address_id";s:2:"17";s:12:"address_name";s:0:"";s:7:"user_id";s:1:"2";s:9:"consignee";s:6:"/efghh";s:5:"email";s:0:"";s:7:"country";s:1:"1";s:8:"province";s:2:"24";s:4:"city";s:3:"278";s:8:"district";s:4:"2782";s:7:"address";s:4:"fghg";s:7:"zipcode";s:0:"";s:3:"tel";s:11:"13596542638";s:6:"mobile";s:0:"";s:13:"sign_building";s:0:"";s:9:"best_time";s:0:"";s:6:"region";s:31:"四川省  遂宁市  蓬溪县";}s:10:"cart_value";s:4:"237,";s:10:"flow_order";a:8:{s:14:"extension_code";s:0:"";s:11:"shipping_id";s:1:"1";s:6:"pay_id";s:1:"1";s:7:"pack_id";i:0;s:7:"card_id";i:0;s:5:"bonus";i:0;s:8:"integral";i:0;s:7:"surplus";i:0;}s:14:"flow_consignee";a:15:{s:10:"address_id";s:2:"17";s:12:"address_name";s:0:"";s:7:"user_id";s:1:"2";s:9:"consignee";s:6:"/efghh";s:5:"email";s:0:"";s:7:"country";s:1:"1";s:8:"province";s:2:"24";s:4:"city";s:3:"278";s:8:"district";s:4:"2782";s:7:"address";s:4:"fghg";s:7:"zipcode";s:0:"";s:3:"tel";s:11:"13596542638";s:6:"mobile";s:0:"";s:13:"sign_building";s:0:"";s:9:"best_time";s:0:"";}}'),
('6f2b7f40dc40ba12ba2bf38ad3d3e08d', 4294967295, 'a:9:{s:7:"from_ad";i:0;s:7:"referer";s:6:"本站";s:10:"login_fail";i:0;s:9:"flow_type";s:1:"0";s:10:"cart_value";s:4:"232,";s:10:"flow_order";a:1:{s:14:"extension_code";s:0:"";}s:9:"last_time";s:10:"1502871112";s:7:"last_ip";s:14:"180.173.18.125";s:14:"display_search";s:4:"grid";}'),
('97c09bc7f470b7737c555c520ddb8e09', 4294967295, 'a:10:{s:7:"from_ad";i:0;s:7:"referer";s:6:"本站";s:10:"login_fail";i:0;s:9:"last_time";s:10:"1502866861";s:7:"last_ip";s:14:"180.173.18.125";s:9:"flow_type";s:1:"0";s:10:"cart_value";s:4:"233,";s:15:"auction_address";a:16:{s:10:"address_id";s:2:"17";s:12:"address_name";s:0:"";s:7:"user_id";s:1:"2";s:9:"consignee";s:6:"/efghh";s:5:"email";s:0:"";s:7:"country";s:1:"1";s:8:"province";s:2:"24";s:4:"city";s:3:"278";s:8:"district";s:4:"2782";s:7:"address";s:4:"fghg";s:7:"zipcode";s:0:"";s:3:"tel";s:11:"13596542638";s:6:"mobile";s:0:"";s:13:"sign_building";s:0:"";s:9:"best_time";s:0:"";s:6:"region";s:31:"四川省  遂宁市  蓬溪县";}s:7:"backUrl";s:55:"http://xtime.netdns.com.cn/auction.php?act=bid&amp;id=3";s:14:"display_search";s:4:"grid";}'),
('fb8f759e3369142d9f2228b5acac149a', 4294967295, 'a:11:{s:7:"from_ad";i:0;s:7:"referer";s:6:"本站";s:10:"login_fail";i:0;s:9:"last_time";s:10:"1502868319";s:7:"last_ip";s:14:"180.173.18.125";s:15:"auction_address";a:16:{s:10:"address_id";s:2:"30";s:12:"address_name";s:0:"";s:7:"user_id";s:1:"6";s:9:"consignee";s:6:"嘻嘻";s:5:"email";s:0:"";s:7:"country";s:1:"1";s:8:"province";s:1:"3";s:4:"city";s:2:"38";s:8:"district";s:3:"422";s:7:"address";s:120:"13111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111zzzqqqqqqq";s:7:"zipcode";s:0:"";s:3:"tel";s:60:"131111111111111111111111111111111111111111111111111111111111";s:6:"mobile";s:0:"";s:13:"sign_building";s:0:"";s:9:"best_time";s:0:"";s:6:"region";s:28:"天津  天津市  和平区";}s:14:"display_search";s:4:"grid";s:9:"flow_type";s:1:"0";s:10:"cart_value";s:4:"235,";s:10:"flow_order";a:38:{s:11:"shipping_id";i:1;s:6:"pay_id";i:20;s:7:"pack_id";i:0;s:7:"card_id";i:0;s:12:"card_message";s:0:"";s:7:"surplus";i:0;s:8:"integral";i:0;s:8:"bonus_id";i:0;s:8:"need_inv";i:0;s:8:"inv_type";s:0:"";s:9:"inv_payee";s:0:"";s:11:"inv_content";s:0:"";s:10:"postscript";s:0:"";s:7:"how_oos";s:33:"等待所有商品备齐后再发";s:11:"need_insure";i:0;s:7:"user_id";s:1:"6";s:8:"add_time";i:1502872116;s:10:"lastmodify";i:1502872116;s:12:"order_status";i:0;s:15:"shipping_status";i:0;s:10:"pay_status";i:0;s:9:"agency_id";i:0;s:14:"extension_code";s:0:"";s:12:"extension_id";i:0;s:10:"address_id";s:2:"30";s:12:"address_name";s:0:"";s:9:"consignee";s:6:"嘻嘻";s:5:"email";s:0:"";s:7:"country";s:1:"1";s:8:"province";s:1:"3";s:4:"city";s:2:"38";s:8:"district";s:3:"422";s:7:"address";s:120:"13111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111zzzqqqqqqq";s:7:"zipcode";s:0:"";s:3:"tel";s:60:"131111111111111111111111111111111111111111111111111111111111";s:6:"mobile";s:0:"";s:13:"sign_building";s:0:"";s:9:"best_time";s:0:"";}s:14:"flow_consignee";a:15:{s:10:"address_id";s:2:"30";s:12:"address_name";s:0:"";s:7:"user_id";s:1:"6";s:9:"consignee";s:6:"嘻嘻";s:5:"email";s:0:"";s:7:"country";s:1:"1";s:8:"province";s:1:"3";s:4:"city";s:2:"38";s:8:"district";s:3:"422";s:7:"address";s:120:"13111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111zzzqqqqqqq";s:7:"zipcode";s:0:"";s:3:"tel";s:60:"131111111111111111111111111111111111111111111111111111111111";s:6:"mobile";s:0:"";s:13:"sign_building";s:0:"";s:9:"best_time";s:0:"";}}'),
('a07c6bd695c7e0d76d72e326dce95ed6', 4294967295, 'a:9:{s:7:"from_ad";i:0;s:7:"referer";s:6:"本站";s:10:"login_fail";i:0;s:9:"last_time";s:10:"1502954893";s:7:"last_ip";s:14:"180.173.18.125";s:9:"flow_type";s:1:"0";s:10:"cart_value";s:4:"281,";s:10:"flow_order";a:8:{s:14:"extension_code";s:0:"";s:11:"shipping_id";s:1:"1";s:6:"pay_id";s:1:"1";s:7:"pack_id";i:0;s:7:"card_id";i:0;s:5:"bonus";i:0;s:8:"integral";i:0;s:7:"surplus";i:0;}s:14:"flow_consignee";a:15:{s:10:"address_id";s:2:"32";s:12:"address_name";s:0:"";s:7:"user_id";s:1:"2";s:9:"consignee";s:4:"wewq";s:5:"email";s:0:"";s:7:"country";s:1:"1";s:8:"province";s:1:"2";s:4:"city";s:2:"37";s:8:"district";s:3:"403";s:7:"address";s:5:"wqeqw";s:7:"zipcode";s:0:"";s:3:"tel";s:11:"18656348525";s:6:"mobile";s:0:"";s:13:"sign_building";s:0:"";s:9:"best_time";s:0:"";}}'),
('49fd52f3c87d2808c979e24956fe81a5', 4294967295, 'a:8:{s:7:"from_ad";i:3;s:7:"referer";s:6:"本站";s:10:"login_fail";i:0;s:9:"last_time";s:10:"1502959760";s:7:"last_ip";s:14:"180.173.18.125";s:9:"flow_type";s:1:"0";s:10:"cart_value";s:3:"280";s:12:"captcha_word";s:16:"ODYwNjg1ZWYzMw==";}'),
('1f283a9937a65f3fcd6ce10d5731e1e3', 4294967295, 'a:9:{s:7:"from_ad";i:0;s:7:"referer";s:6:"本站";s:10:"login_fail";i:0;s:9:"last_time";s:10:"1502960854";s:7:"last_ip";s:15:"180.168.202.246";s:10:"cart_value";s:3:"275";s:10:"flow_order";a:8:{s:14:"extension_code";s:0:"";s:11:"shipping_id";s:1:"1";s:6:"pay_id";s:1:"1";s:7:"pack_id";i:0;s:7:"card_id";i:0;s:5:"bonus";i:0;s:8:"integral";i:0;s:7:"surplus";i:0;}s:14:"flow_consignee";a:15:{s:10:"address_id";s:2:"26";s:12:"address_name";s:0:"";s:7:"user_id";s:1:"4";s:9:"consignee";s:6:"张颜";s:5:"email";s:0:"";s:7:"country";s:1:"1";s:8:"province";s:2:"10";s:4:"city";s:3:"109";s:8:"district";s:4:"1225";s:7:"address";s:3:"111";s:7:"zipcode";s:0:"";s:3:"tel";s:11:"18896525512";s:6:"mobile";s:0:"";s:13:"sign_building";s:0:"";s:9:"best_time";s:0:"";}s:9:"flow_type";s:1:"0";}'),
('da119dcf6830916ef06b2860db9cd7b9', 4294967295, 'a:9:{s:7:"from_ad";i:0;s:7:"referer";s:6:"本站";s:10:"login_fail";i:0;s:10:"cart_value";s:3:"273";s:10:"flow_order";a:8:{s:14:"extension_code";s:0:"";s:11:"shipping_id";s:1:"1";s:6:"pay_id";s:1:"1";s:7:"pack_id";i:0;s:7:"card_id";i:0;s:5:"bonus";i:0;s:8:"integral";i:0;s:7:"surplus";i:0;}s:9:"last_time";s:10:"1502962523";s:7:"last_ip";s:14:"112.65.189.118";s:9:"flow_type";s:1:"0";s:14:"flow_consignee";a:15:{s:10:"address_id";s:2:"17";s:12:"address_name";s:0:"";s:7:"user_id";s:1:"2";s:9:"consignee";s:6:"/efghh";s:5:"email";s:0:"";s:7:"country";s:1:"1";s:8:"province";s:2:"24";s:4:"city";s:3:"278";s:8:"district";s:4:"2782";s:7:"address";s:4:"fghg";s:7:"zipcode";s:0:"";s:3:"tel";s:11:"13596542638";s:6:"mobile";s:0:"";s:13:"sign_building";s:0:"";s:9:"best_time";s:0:"";}}');

-- --------------------------------------------------------

--
-- 表的结构 `ecs_shipping`
--

CREATE TABLE IF NOT EXISTS `ecs_shipping` (
  `shipping_id` tinyint(3) unsigned NOT NULL,
  `shipping_code` varchar(20) NOT NULL DEFAULT '',
  `shipping_name` varchar(120) NOT NULL DEFAULT '',
  `shipping_desc` varchar(255) NOT NULL DEFAULT '',
  `insure` varchar(10) NOT NULL DEFAULT '0',
  `support_cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_print` text NOT NULL,
  `print_bg` varchar(255) DEFAULT NULL,
  `config_lable` text,
  `print_model` tinyint(1) DEFAULT '0',
  `shipping_order` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_shipping`
--

INSERT INTO `ecs_shipping` (`shipping_id`, `shipping_code`, `shipping_name`, `shipping_desc`, `insure`, `support_cod`, `enabled`, `shipping_print`, `print_bg`, `config_lable`, `print_model`, `shipping_order`) VALUES
(1, 'sf_express', '顺丰速运', '江、浙、沪地区首重15元/KG，续重2元/KG，其余城市首重20元/KG', '0', 0, 1, '', '/images/receipt/dly_sf_express.jpg', 't_shop_name,网店-名称,150,29,112,137,b_shop_name||,||t_shop_address,网店-地址,268,55,105,168,b_shop_address||,||t_shop_tel,网店-联系电话,55,25,177,224,b_shop_tel||,||t_customer_name,收件人-姓名,78,23,299,265,b_customer_name||,||t_customer_address,收件人-详细地址,271,94,104,293,b_customer_address||,||', 2, 0),
(2, 'yto', '圆通速递', '上海圆通物流（速递）有限公司经过多年的网络快速发展，在中国速递行业中一直处于领先地位。为了能更好的发展国际快件市场，加快与国际市场的接轨，强化圆通的整体实力，圆通已在东南亚、欧美、中东、北美洲、非洲等许多城市运作国际快件业务', '0', 1, 1, '', '/images/receipt/dly_yto.jpg', 't_shop_province,网店-省份,132,24,279.6,105.7,b_shop_province||,||t_shop_name,网店-名称,268,29,142.95,133.85,b_shop_name||,||t_shop_address,网店-地址,346,40,67.3,199.95,b_shop_address||,||t_shop_city,网店-城市,64,35,223.8,163.95,b_shop_city||,||t_shop_district,网店-区/县,56,35,314.9,164.25,b_shop_district||,||t_pigeon,√-对号,21,21,143.1,263.2,b_pigeon||,||t_customer_name,收件人-姓名,89,25,488.65,121.05,b_customer_name||,||t_customer_tel,收件人-电话,136,21,656,110.6,b_customer_tel||,||t_customer_mobel,收件人-手机,137,21,655.6,132.8,b_customer_mobel||,||t_customer_province,收件人-省份,115,24,480.2,173.5,b_customer_province||,||t_customer_city,收件人-城市,60,27,609.3,172.5,b_customer_city||,||t_customer_district,收件人-区/县,58,28,696.8,173.25,b_customer_district||,||t_customer_post,收件人-邮编,93,21,701.1,240.25,b_customer_post||,||', 2, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ecs_shipping_area`
--

CREATE TABLE IF NOT EXISTS `ecs_shipping_area` (
  `shipping_area_id` smallint(5) unsigned NOT NULL,
  `shipping_area_name` varchar(150) NOT NULL DEFAULT '',
  `shipping_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `configure` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_shipping_area`
--

INSERT INTO `ecs_shipping_area` (`shipping_area_id`, `shipping_area_name`, `shipping_id`, `configure`) VALUES
(2, '顺丰', 1, 'a:5:{i:0;a:2:{s:4:"name";s:8:"item_fee";s:5:"value";s:2:"20";}i:1;a:2:{s:4:"name";s:8:"base_fee";s:5:"value";s:2:"15";}i:2;a:2:{s:4:"name";s:8:"step_fee";s:5:"value";s:1:"2";}i:3;a:2:{s:4:"name";s:10:"free_money";s:5:"value";s:0:"";}i:4;a:2:{s:4:"name";s:16:"fee_compute_mode";s:5:"value";s:9:"by_weight";}}');

-- --------------------------------------------------------

--
-- 表的结构 `ecs_shop_bind`
--

CREATE TABLE IF NOT EXISTS `ecs_shop_bind` (
  `shop_id` int(8) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `node_id` varchar(32) DEFAULT NULL COMMENT '节点',
  `node_type` varchar(128) DEFAULT NULL COMMENT '节点类型',
  `status` enum('bind','unbind') DEFAULT NULL COMMENT '状态',
  `app_url` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecs_shop_config`
--

CREATE TABLE IF NOT EXISTS `ecs_shop_config` (
  `id` smallint(5) unsigned NOT NULL,
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `code` varchar(30) NOT NULL DEFAULT '',
  `type` varchar(10) NOT NULL DEFAULT '',
  `store_range` varchar(255) NOT NULL DEFAULT '',
  `store_dir` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=906 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_shop_config`
--

INSERT INTO `ecs_shop_config` (`id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order`) VALUES
(1, 0, 'shop_info', 'group', '', '', '', 1),
(2, 0, 'basic', 'group', '', '', '', 1),
(3, 0, 'display', 'group', '', '', '', 1),
(4, 0, 'shopping_flow', 'group', '', '', '', 1),
(5, 0, 'smtp', 'group', '', '', '', 1),
(6, 0, 'hidden', 'hidden', '', '', '', 1),
(7, 0, 'goods', 'group', '', '', '', 1),
(8, 0, 'sms', 'group', '', '', '', 1),
(101, 1, 'shop_name', 'text', '', '', 'x-time', 1),
(102, 1, 'shop_title', 'text', '', '', 'x-time', 1),
(103, 1, 'shop_desc', 'text', '', '', 'x-time', 1),
(104, 1, 'shop_keywords', 'text', '', '', 'x-time', 1),
(105, 1, 'shop_country', 'manual', '', '', '1', 1),
(106, 1, 'shop_province', 'manual', '', '', '2', 1),
(107, 1, 'shop_city', 'manual', '', '', '', 1),
(108, 1, 'shop_address', 'text', '', '', '', 1),
(109, 1, 'qq', 'text', '', '', '', 1),
(110, 1, 'ww', 'text', '', '', '', 1),
(111, 1, 'skype', 'text', '', '', '', 1),
(112, 1, 'ym', 'text', '', '', '', 1),
(113, 1, 'msn', 'text', '', '', '', 1),
(114, 1, 'service_email', 'text', '', '', '', 1),
(115, 1, 'service_phone', 'text', '', '', '', 1),
(116, 1, 'shop_closed', 'select', '0,1', '', '0', 1),
(117, 1, 'close_comment', 'textarea', '', '', '', 1),
(118, 1, 'shop_logo', 'file', '', '../themes/{$template}/images/', '', 1),
(119, 1, 'licensed', 'select', '0,1', '', '1', 1),
(120, 1, 'user_notice', 'textarea', '', '', '用户中心公告！', 1),
(121, 1, 'shop_notice', 'textarea', '', '', '', 1),
(122, 1, 'shop_reg_closed', 'select', '1,0', '', '0', 1),
(201, 2, 'lang', 'manual', '', '', 'zh_cn', 1),
(202, 2, 'icp_number', 'text', '', '', '', 1),
(203, 2, 'icp_file', 'file', '', '../cert/', '', 1),
(204, 2, 'watermark', 'file', '', '../images/', '', 1),
(205, 2, 'watermark_place', 'select', '0,1,2,3,4,5', '', '1', 1),
(206, 2, 'watermark_alpha', 'text', '', '', '65', 1),
(207, 2, 'use_storage', 'select', '1,0', '', '1', 1),
(208, 2, 'market_price_rate', 'text', '', '', '1.2', 1),
(209, 2, 'rewrite', 'select', '0,1,2', '', '0', 1),
(210, 2, 'integral_name', 'text', '', '', '积分', 1),
(211, 2, 'integral_scale', 'text', '', '', '1', 1),
(212, 2, 'integral_percent', 'text', '', '', '1', 1),
(213, 2, 'sn_prefix', 'text', '', '', 'ECS', 1),
(214, 2, 'comment_check', 'select', '0,1', '', '1', 1),
(215, 2, 'no_picture', 'file', '', '../images/', '', 1),
(218, 2, 'stats_code', 'textarea', '', '', '', 1),
(219, 2, 'cache_time', 'text', '', '', '3600', 1),
(220, 2, 'register_points', 'text', '', '', '0', 1),
(221, 2, 'enable_gzip', 'select', '0,1', '', '0', 1),
(222, 2, 'top10_time', 'select', '0,1,2,3,4', '', '0', 1),
(223, 2, 'timezone', 'options', '-12,-11,-10,-9,-8,-7,-6,-5,-4,-3.5,-3,-2,-1,0,1,2,3,3.5,4,4.5,5,5.5,5.75,6,6.5,7,8,9,9.5,10,11,12', '', '8', 1),
(224, 2, 'upload_size_limit', 'options', '-1,0,64,128,256,512,1024,2048,4096', '', '64', 1),
(226, 2, 'cron_method', 'select', '0,1', '', '0', 1),
(227, 2, 'comment_factor', 'select', '0,1,2,3', '', '0', 1),
(228, 2, 'enable_order_check', 'select', '0,1', '', '1', 1),
(229, 2, 'default_storage', 'text', '', '', '1', 1),
(230, 2, 'bgcolor', 'text', '', '', '#FFFFFF', 1),
(231, 2, 'visit_stats', 'select', 'on,off', '', 'on', 1),
(232, 2, 'send_mail_on', 'select', 'on,off', '', 'off', 1),
(233, 2, 'auto_generate_gallery', 'select', '1,0', '', '1', 1),
(234, 2, 'retain_original_img', 'select', '1,0', '', '1', 1),
(235, 2, 'member_email_validate', 'select', '1,0', '', '1', 1),
(236, 2, 'message_board', 'select', '1,0', '', '1', 1),
(239, 2, 'certificate_id', 'hidden', '', '', '', 1),
(240, 2, 'token', 'hidden', '', '', '', 1),
(241, 2, 'certi', 'hidden', '', '', 'http://service.shopex.cn/openapi/api.php', 1),
(242, 2, 'send_verify_email', 'select', '1,0', '', '0', 1),
(243, 2, 'ent_id', 'hidden', '', '', '', 1),
(244, 2, 'ent_ac', 'hidden', '', '', '', 1),
(245, 2, 'ent_sign', 'hidden', '', '', '', 1),
(246, 2, 'ent_email', 'hidden', '', '', '', 1),
(247, 2, 'logistics_trace', 'select', '1,0', '', '0', 1),
(301, 3, 'date_format', 'hidden', '', '', 'Y-m-d', 1),
(302, 3, 'time_format', 'text', '', '', 'Y-m-d H:i:s', 1),
(303, 3, 'currency_format', 'text', '', '', '%s 星辉币', 1),
(304, 3, 'thumb_width', 'text', '', '', '250', 1),
(305, 3, 'thumb_height', 'text', '', '', '250', 1),
(306, 3, 'image_width', 'text', '', '', '640', 1),
(307, 3, 'image_height', 'text', '', '', '640', 1),
(312, 3, 'top_number', 'text', '', '', '10', 1),
(313, 3, 'history_number', 'text', '', '', '5', 1),
(314, 3, 'comments_number', 'text', '', '', '5', 1),
(315, 3, 'bought_goods', 'text', '', '', '3', 1),
(316, 3, 'article_number', 'text', '', '', '8', 1),
(317, 3, 'goods_name_length', 'text', '', '', '7', 1),
(318, 3, 'price_format', 'select', '0,1,2,3,4,5', '', '5', 1),
(319, 3, 'page_size', 'text', '', '', '10', 1),
(320, 3, 'sort_order_type', 'select', '0,1,2', '', '0', 1),
(321, 3, 'sort_order_method', 'select', '0,1', '', '0', 1),
(322, 3, 'show_order_type', 'select', '0,1,2', '', '1', 1),
(323, 3, 'attr_related_number', 'text', '', '', '5', 1),
(324, 3, 'goods_gallery_number', 'text', '', '', '5', 1),
(325, 3, 'article_title_length', 'text', '', '', '16', 1),
(326, 3, 'name_of_region_1', 'text', '', '', '国家', 1),
(327, 3, 'name_of_region_2', 'text', '', '', '省', 1),
(328, 3, 'name_of_region_3', 'text', '', '', '市', 1),
(329, 3, 'name_of_region_4', 'text', '', '', '区', 1),
(330, 3, 'search_keywords', 'text', '', '', '', 0),
(332, 3, 'related_goods_number', 'text', '', '', '4', 1),
(333, 3, 'help_open', 'select', '0,1', '', '1', 1),
(334, 3, 'article_page_size', 'text', '', '', '10', 1),
(335, 3, 'page_style', 'select', '0,1', '', '1', 1),
(336, 3, 'recommend_order', 'select', '0,1', '', '0', 1),
(337, 3, 'index_ad', 'hidden', '', '', 'sys', 1),
(401, 4, 'can_invoice', 'select', '1,0', '', '1', 1),
(402, 4, 'use_integral', 'select', '1,0', '', '1', 1),
(403, 4, 'use_bonus', 'select', '1,0', '', '1', 1),
(404, 4, 'use_surplus', 'select', '1,0', '', '1', 1),
(405, 4, 'use_how_oos', 'select', '1,0', '', '1', 1),
(406, 4, 'send_confirm_email', 'select', '1,0', '', '0', 1),
(407, 4, 'send_ship_email', 'select', '1,0', '', '0', 1),
(408, 4, 'send_cancel_email', 'select', '1,0', '', '0', 1),
(409, 4, 'send_invalid_email', 'select', '1,0', '', '0', 1),
(410, 4, 'order_pay_note', 'select', '1,0', '', '1', 1),
(411, 4, 'order_unpay_note', 'select', '1,0', '', '1', 1),
(412, 4, 'order_ship_note', 'select', '1,0', '', '1', 1),
(413, 4, 'order_receive_note', 'select', '1,0', '', '1', 1),
(414, 4, 'order_unship_note', 'select', '1,0', '', '1', 1),
(415, 4, 'order_return_note', 'select', '1,0', '', '1', 1),
(416, 4, 'order_invalid_note', 'select', '1,0', '', '1', 1),
(417, 4, 'order_cancel_note', 'select', '1,0', '', '1', 1),
(418, 4, 'invoice_content', 'textarea', '', '', 'demo', 1),
(419, 4, 'anonymous_buy', 'select', '1,0', '', '1', 1),
(420, 4, 'min_goods_amount', 'text', '', '', '0', 1),
(421, 4, 'one_step_buy', 'select', '1,0', '', '0', 1),
(422, 4, 'invoice_type', 'manual', '', '', 'a:2:{s:4:"type";a:3:{i:0;s:1:"1";i:1;s:1:"2";i:2;s:0:"";}s:4:"rate";a:3:{i:0;d:1;i:1;d:1.5;i:2;d:0;}}', 1),
(423, 4, 'stock_dec_time', 'select', '1,0', '', '1', 1),
(424, 4, 'cart_confirm', 'options', '1,2,3,4', '', '3', 0),
(425, 4, 'send_service_email', 'select', '1,0', '', '0', 1),
(426, 4, 'show_goods_in_cart', 'select', '1,2,3', '', '3', 1),
(427, 4, 'show_attr_in_cart', 'select', '1,0', '', '1', 1),
(501, 5, 'smtp_host', 'text', '', '', 'localhost', 1),
(502, 5, 'smtp_port', 'text', '', '', '25', 1),
(503, 5, 'smtp_user', 'text', '', '', '', 1),
(504, 5, 'smtp_pass', 'password', '', '', '', 1),
(505, 5, 'smtp_mail', 'text', '', '', '', 1),
(506, 5, 'mail_charset', 'select', 'UTF8,GB2312,BIG5', '', 'UTF8', 1),
(507, 5, 'mail_service', 'select', '0,1', '', '0', 0),
(508, 5, 'smtp_ssl', 'select', '0,1', '', '0', 0),
(601, 6, 'integrate_code', 'hidden', '', '', 'ecshop', 1),
(602, 6, 'integrate_config', 'hidden', '', '', '', 1),
(603, 6, 'hash_code', 'hidden', '', '', '81d2cea7c8b0227ca95c651d4cbc6f13', 1),
(604, 6, 'template', 'hidden', '', '', 'default', 1),
(605, 6, 'install_date', 'hidden', '', '', '1493176273', 1),
(606, 6, 'ecs_version', 'hidden', '', '', 'v3.6.0', 1),
(607, 6, 'sms_user_name', 'hidden', '', '', '', 1),
(608, 6, 'sms_password', 'hidden', '', '', '', 1),
(609, 6, 'sms_auth_str', 'hidden', '', '', '', 1),
(610, 6, 'sms_domain', 'hidden', '', '', '', 1),
(611, 6, 'sms_count', 'hidden', '', '', '', 1),
(612, 6, 'sms_total_money', 'hidden', '', '', '', 1),
(613, 6, 'sms_balance', 'hidden', '', '', '', 1),
(614, 6, 'sms_last_request', 'hidden', '', '', '', 1),
(616, 6, 'affiliate', 'hidden', '', '', 'a:3:{s:6:"config";a:7:{s:6:"expire";d:24;s:11:"expire_unit";s:4:"hour";s:11:"separate_by";i:0;s:15:"level_point_all";s:2:"5%";s:15:"level_money_all";s:2:"1%";s:18:"level_register_all";i:2;s:17:"level_register_up";i:60;}s:4:"item";a:4:{i:0;a:2:{s:11:"level_point";s:3:"60%";s:11:"level_money";s:3:"60%";}i:1;a:2:{s:11:"level_point";s:3:"30%";s:11:"level_money";s:3:"30%";}i:2;a:2:{s:11:"level_point";s:2:"7%";s:11:"level_money";s:2:"7%";}i:3;a:2:{s:11:"level_point";s:2:"3%";s:11:"level_money";s:2:"3%";}}s:2:"on";i:1;}', 1),
(617, 6, 'captcha', 'hidden', '', '', '12', 1),
(618, 6, 'captcha_width', 'hidden', '', '', '100', 1),
(619, 6, 'captcha_height', 'hidden', '', '', '20', 1),
(620, 6, 'sitemap', 'hidden', '', '', 'a:6:{s:19:"homepage_changefreq";s:6:"hourly";s:17:"homepage_priority";s:3:"0.9";s:19:"category_changefreq";s:6:"hourly";s:17:"category_priority";s:3:"0.8";s:18:"content_changefreq";s:6:"weekly";s:16:"content_priority";s:3:"0.7";}', 0),
(621, 6, 'points_rule', 'hidden', '', '', '', 0),
(622, 6, 'flash_theme', 'hidden', '', '', 'dynfocus', 1),
(623, 6, 'stylename', 'hidden', '', '', '', 1),
(701, 7, 'show_goodssn', 'select', '1,0', '', '1', 1),
(702, 7, 'show_brand', 'select', '1,0', '', '1', 1),
(703, 7, 'show_goodsweight', 'select', '1,0', '', '1', 1),
(704, 7, 'show_goodsnumber', 'select', '1,0', '', '1', 1),
(705, 7, 'show_addtime', 'select', '1,0', '', '1', 1),
(706, 7, 'goodsattr_style', 'select', '1,0', '', '1', 1),
(707, 7, 'show_marketprice', 'select', '1,0', '', '1', 1),
(801, 8, 'sms_shop_mobile', 'text', '', '', '', 1),
(802, 8, 'sms_order_placed', 'select', '1,0', '', '0', 1),
(803, 8, 'sms_order_payed', 'select', '1,0', '', '0', 1),
(804, 8, 'sms_order_payed_to_customer', 'select', '1,0', '', '0', 1),
(805, 8, 'sms_order_shipped', 'select', '1,0', '', '0', 1),
(806, 2, 'snlist_code', 'hidden', '', '', '{"erp":"goods_1109","fy":"goods_1137","taodali":"goods_1103","HDT":"goods_1500"}', 1),
(903, 2, 'message_check', 'select', '1,0', '', '1', 1),
(904, 0, 'showerpPanel', 'hidden', '', '', '0', 1),
(905, 2, 'certificate', 'hidden', '', '', 'a:7:{s:15:"use_yunqi_login";b:1;s:14:"certificate_id";s:10:"1865587933";s:5:"token";s:64:"b63939d31d948a4a53c64c77a16b3311a9aaf9711f5fcdda849f1ac3685703c0";s:7:"node_id";s:10:"1911182131";s:12:"passport_uid";s:14:"88170801790541";s:10:"yunqi_code";s:32:"11e8ad743d458f489d6d6c8b0280f01c";s:15:"yunqiexp_active";b:1;}', 1),
(248, 2, 'sms_sign', 'hidden', '', '', '', 1),
(249, 2, 'default_sms_sign', 'hidden', '', '', '', 1);

-- --------------------------------------------------------

--
-- 表的结构 `ecs_snatch_log`
--

CREATE TABLE IF NOT EXISTS `ecs_snatch_log` (
  `log_id` mediumint(8) unsigned NOT NULL,
  `snatch_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `bid_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `bid_time` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecs_sns`
--

CREATE TABLE IF NOT EXISTS `ecs_sns` (
  `user_id` int(11) NOT NULL,
  `open_id` varchar(255) NOT NULL,
  `vendor` tinyint(4) NOT NULL COMMENT '第三方平台类型',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecs_stats`
--

CREATE TABLE IF NOT EXISTS `ecs_stats` (
  `access_time` int(10) unsigned NOT NULL DEFAULT '0',
  `ip_address` varchar(15) NOT NULL DEFAULT '',
  `visit_times` smallint(5) unsigned NOT NULL DEFAULT '1',
  `browser` varchar(60) NOT NULL DEFAULT '',
  `system` varchar(20) NOT NULL DEFAULT '',
  `language` varchar(20) NOT NULL DEFAULT '',
  `area` varchar(30) NOT NULL DEFAULT '',
  `referer_domain` varchar(100) NOT NULL DEFAULT '',
  `referer_path` varchar(200) NOT NULL DEFAULT '',
  `access_url` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_stats`
--

INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES
(1493176274, '127.0.0.1', 1, 'FireFox 52.0', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://my.ecec.com', '/install/index.php?lang=zh_cn&step=setting_ui&ui=', '/yunqi_check.php'),
(1493178037, '61.152.171.68', 2, 'FireFox 52.0', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1493233662, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1493245682, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1493266679, '180.168.202.246', 2, 'FireFox 52.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1493273212, '180.169.8.10', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1493273685, '61.152.171.68', 3, 'FireFox 53.0', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1493274242, '180.169.8.10', 2, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1493322903, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1493329527, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1493350856, '101.226.89.116', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1493410429, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1493417992, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1493495207, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1493501973, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1493581123, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1493589625, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1493668398, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1493675711, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1493687597, '180.168.202.246', 1, 'FireFox 53.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1493691809, '180.168.202.246', 2, 'FireFox 53.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/', '/index.php'),
(1493706403, '180.168.202.246', 3, 'FireFox 53.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1493706403, '180.168.202.246', 3, 'FireFox 53.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1493706404, '180.168.202.246', 3, 'FireFox 53.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1493732522, '61.152.171.68', 4, 'FireFox 53.0', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1493732532, '101.226.66.177', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1493732561, '211.95.59.20', 1, 'Safari 601.1', 'Unknown', 'zh-cn', '', '', '', '/index.php'),
(1493737617, '112.64.216.63', 2, 'Safari 601.1', 'Unknown', 'zh-cn', 'IANA', '', '', '/user.php'),
(1493754421, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1493762867, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1493775363, '61.152.171.68', 5, 'FireFox 53.0', 'Windows NT', 'zh-CN,zh', '', 'http://xtime.netdns.com.cn', '/', '/index.php'),
(1493775373, '61.151.226.189', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', '', 'http://xtime.netdns.com.cn', '/', '/index.php'),
(1493775593, '101.226.66.192', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/index.php?sort=total_asc', '/index.php'),
(1493781083, '180.168.202.246', 4, 'FireFox 53.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1493782010, '180.168.202.246', 5, 'FireFox 53.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1493791062, '180.168.202.246', 6, 'FireFox 53.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1493812631, '180.168.202.246', 7, 'FireFox 53.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1493816867, '61.152.171.68', 6, 'FireFox 53.0', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1493817480, '180.168.202.246', 8, 'FireFox 53.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/user.php'),
(1493840743, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1493849090, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1493859666, '180.168.202.246', 9, 'FireFox 53.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1493874973, '180.168.202.246', 10, 'FireFox 53.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1493880831, '180.168.202.246', 11, 'FireFox 53.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/', '/user.php'),
(1493899911, '180.168.202.246', 11, 'FireFox 53.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1493901975, '61.152.171.68', 7, 'FireFox 53.0', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1493928888, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1493937416, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1493947081, '180.168.202.246', 11, 'FireFox 53.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1493950173, '180.168.202.246', 12, 'FireFox 53.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1494014844, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1494023241, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1494032727, '180.168.202.246', 13, 'FireFox 53.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1494039110, '180.168.202.246', 14, 'FireFox 53.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/index.php?sort=total_asc', '/index.php'),
(1494065710, '180.168.202.246', 14, 'FireFox 53.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/index.php?sort=total_asc', '/index.php'),
(1494101191, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1494110379, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1494188060, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1494193723, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1494205939, '180.168.202.246', 14, 'FireFox 53.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1494274661, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1494281372, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1494292459, '180.168.202.246', 15, 'FireFox 53.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1494294705, '180.168.202.246', 16, 'FireFox 53.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1494297822, '61.152.171.68', 8, 'FireFox 53.0', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1494297837, '101.226.125.100', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1494300395, '180.168.202.246', 1, 'Safari 603.1.30', 'Unknown', 'zh-cn', '[δ֪IP0801]', '', '', '/index.php'),
(1494359581, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1494367131, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1494386263, '180.168.202.246', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1494389664, '180.168.202.246', 2, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/index.php?sort=total_asc', '/flow.php'),
(1494399385, '180.168.202.246', 3, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1494413571, '180.168.202.246', 1, 'FireFox 53.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1494446758, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1494453220, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1494531004, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1494537568, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1494619488, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1494624935, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1494705393, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1494710250, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1494738601, '180.168.202.246', 4, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1494743572, '180.168.202.246', 5, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/', '/flow.php'),
(1494745663, '180.168.202.246', 2, 'FireFox 53.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1494749216, '180.168.202.246', 6, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php', '/user.php'),
(1494749277, '180.168.202.246', 3, 'FireFox 53.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php', '/user.php'),
(1494753148, '180.168.202.246', 7, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php', '/index.php'),
(1494789787, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1494795951, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1494811784, '180.168.202.246', 4, 'FireFox 53.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1494812148, '183.60.15.14', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-cn', '[δ֪IP0801]', '', '', '/index.php'),
(1494812157, '180.153.205.253', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1494812163, '180.168.202.246', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1494813365, '180.153.211.172', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1494813748, '101.226.33.226', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1494813829, '101.226.99.197', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1494814638, '101.226.51.227', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1494814650, '101.226.51.228', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1494815269, '140.207.185.109', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', '', '', '', '/flow.php'),
(1494816864, '101.226.89.121', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1494817633, '101.226.89.120', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1494817647, '101.226.99.195', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1494820165, '101.226.68.213', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1494821546, '101.226.125.16', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1494827132, '180.168.202.246', 2, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php', '/user.php'),
(1494827169, '101.226.66.181', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1494829909, '101.226.33.218', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1494829915, '180.153.206.18', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/flow.php'),
(1494829931, '180.153.214.180', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/flow.php'),
(1494830068, '180.153.214.152', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/user.php'),
(1494830974, '101.226.66.181', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1494831080, '180.153.214.191', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/user.php'),
(1494831672, '180.153.214.199', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/user.php'),
(1494832154, '101.226.99.197', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1494832245, '180.153.205.253', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/user.php'),
(1494832264, '180.153.211.190', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/user.php'),
(1494834162, '180.168.202.246', 1, 'Safari 602.1', 'Unknown', 'zh-cn', '[δ֪IP0801]', '', '', '/index.php'),
(1494834238, '180.168.202.246', 1, 'Unknow browser', 'Unknown', 'zh-cn', '[δ֪IP0801]', '', '', '/index.php'),
(1494834248, '101.226.125.104', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1494834324, '180.168.202.246', 1, 'Unknow browser', 'Unknown', 'zh-cn', '[δ֪IP0801]', '', '', '/index.php'),
(1494834756, '101.226.125.104', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1494836475, '180.168.202.246', 8, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1494837935, '180.153.214.182', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1494837959, '101.226.89.115', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1494837962, '101.226.64.177', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1494837962, '101.226.51.229', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1494837962, '101.226.33.237', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1494837962, '180.153.205.254', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1494837965, '101.226.33.205', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1494838825, '61.151.226.199', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1494839093, '101.226.65.102', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1494839139, '101.226.66.173', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1494839662, '180.153.205.254', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/user.php'),
(1494840827, '180.168.202.246', 9, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/', '/goods.php'),
(1494846983, '180.168.202.246', 10, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php', '/user.php'),
(1494875875, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1494880540, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1494897037, '180.168.202.246', 11, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1494897290, '180.168.202.246', 2, 'Safari 603.1.30', 'Unknown', 'zh-cn', '[δ֪IP0801]', '', '', '/index.php'),
(1494897322, '113.108.13.36', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-cn', 'IANA', '', '', '/index.php'),
(1494897516, '180.173.136.193', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1494899058, '180.168.202.246', 12, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php?act=address_list', '/user.php'),
(1494900326, '180.168.202.246', 1, 'Safari 602.1', 'Unknown', 'zh-cn', '[δ֪IP0801]', '', '', '/index.php'),
(1494900657, '180.168.202.246', 3, 'Safari 603.1.30', 'Unknown', 'zh-cn', '[δ֪IP0801]', '', '', '/index.php'),
(1494901171, '180.168.202.246', 1, 'FireFox 53.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1494901239, '180.173.136.193', 2, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1494904339, '180.168.202.246', 1, 'Safari 537.36', 'Windows 95', 'zh-Hans-CN,zh-Hans', '[δ֪IP0801]', '', '', '/index.php'),
(1494904968, '180.168.202.246', 1, 'Safari 602.1', 'Unknown', 'zh-cn', '[δ֪IP0801]', '', '', '/index.php'),
(1494906720, '113.108.80.205', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-cn', 'IANA', '', '', '/user.php'),
(1494906738, '180.168.202.246', 2, 'Safari 602.1', 'Unknown', 'zh-cn', '[δ֪IP0801]', '', '', '/index.php'),
(1494909319, '180.173.136.193', 3, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1494909979, '180.168.202.246', 1, 'Safari 602.1', 'Unknown', 'zh-cn', '[δ֪IP0801]', '', '', '/index.php'),
(1494912654, '180.168.202.246', 3, 'Safari 602.1', 'Unknown', 'zh-cn', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/', '/index.php'),
(1494912698, '180.173.136.193', 4, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1494914176, '180.168.202.246', 3, 'Safari 602.1', 'Unknown', 'zh-cn', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/', '/index.php'),
(1494915147, '180.168.202.246', 2, 'Safari 602.1', 'Unknown', 'zh-cn', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php?act=address', '/zd.php'),
(1494915791, '180.168.202.246', 2, 'FireFox 53.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1494919054, '180.168.202.246', 13, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php', '/flow.php'),
(1494920723, '180.168.202.246', 4, 'Safari 602.1', 'Unknown', 'zh-cn', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/', '/user.php'),
(1494922324, '180.168.202.246', 3, 'Safari 603.1.30', 'Unknown', 'zh-cn', '[δ֪IP0801]', '', '', '/index.php'),
(1494922337, '112.90.82.218', 1, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', '', '', '/index.php'),
(1494922347, '101.226.33.201', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1494922552, '223.104.5.224', 1, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', '', '', '/index.php'),
(1494922560, '112.90.82.218', 1, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', '', '', '/index.php'),
(1494922611, '101.226.51.227', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1494922725, '116.226.76.94', 1, 'Safari 537.36', 'Linux', 'zh-CN,en-US', '', '', '', '/index.php'),
(1494922731, '101.226.64.177', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1494922762, '117.185.27.115', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', '', '', '', '/goods.php'),
(1494922803, '116.226.76.94', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1494922804, '180.168.202.246', 5, 'Safari 602.1', 'Unknown', 'zh-cn', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php?act=logout', '/index.php'),
(1494922823, '116.226.76.94', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1494922853, '180.168.202.246', 14, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php?act=logout', '/index.php'),
(1494922853, '180.168.202.246', 14, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php?act=logout', '/index.php'),
(1494922892, '101.226.65.104', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1494923005, '101.226.89.122', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/user.php', '/user.php'),
(1494923025, '116.226.76.94', 2, 'Safari 537.36', 'Linux', 'zh-CN,zh', '', 'http://xtime.netdns.com.cn', '/user.php?act=logout', '/index.php'),
(1494923029, '101.226.51.230', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/user.php', '/user.php'),
(1494923034, '101.226.66.178', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/user.php?act=logout', '/index.php'),
(1494923037, '180.153.214.152', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php?act=profile', '/user.php'),
(1494923225, '180.173.136.193', 5, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php?act=logout', '/index.php'),
(1494929161, '180.168.202.246', 3, 'Safari 602.1', 'Unknown', 'zh-cn', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/goods.php?id=5', '/index.php'),
(1494932940, '117.136.8.76', 2, 'Safari 602.1', 'Unknown', 'zh-cn', '', 'http://xtime.netdns.com.cn', '/flow.php', '/index.php'),
(1494962287, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1494967798, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1495003405, '180.173.137.119', 6, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1495011659, '157.55.39.111', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/user.php'),
(1495011664, '207.46.13.47', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/user.php'),
(1495033345, '157.55.39.111', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/user.php'),
(1495047379, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1495052139, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1495070191, '180.173.136.187', 7, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1495070408, '180.173.136.187', 8, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1495072915, '180.173.136.187', 9, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php?act=logout', '/index.php'),
(1495073675, '180.168.202.246', 15, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1495075784, '180.168.202.246', 16, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php', '/user.php'),
(1495077209, '180.173.136.187', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1495077743, '180.173.136.187', 2, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1495077950, '180.168.202.246', 17, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1495079900, '180.168.202.246', 6, 'Safari 602.1', 'Unknown', 'zh-cn', '[δ֪IP0801]', '', '', '/index.php'),
(1495084777, '180.173.136.187', 3, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/flow.php', '/flow.php'),
(1495084995, '180.168.202.246', 18, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php?act=address_list&mode=select', '/flow.php'),
(1495089250, '180.168.202.246', 3, 'Safari 603.1.30', 'Unknown', 'zh-cn', '[δ֪IP0801]', '', '', '/index.php'),
(1495089432, '180.168.202.246', 19, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/flow.php', '/flow.php'),
(1495095650, '180.173.136.187', 4, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1495095728, '180.168.202.246', 3, 'Safari 603.1.30', 'Unknown', 'zh-cn', '[δ֪IP0801]', '', '', '/index.php'),
(1495101472, '180.173.136.187', 5, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/?filter=zk', '/goods.php'),
(1495149550, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1495151040, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1495164508, '101.226.64.174', 1, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', '', '', '/index.php'),
(1495164510, '223.104.5.225', 2, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', '', '', '/index.php'),
(1495164538, '180.153.205.253', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/flow.php'),
(1495164570, '101.226.66.181', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1495164592, '183.57.53.177', 1, 'Unknow browser', 'Unknown', 'zh-cn', '[δ֪IP0801]', '', '', '/index.php'),
(1495164601, '101.226.66.177', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1495164604, '101.226.125.104', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1495164945, '180.153.214.188', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/flow.php'),
(1495164945, '101.226.69.246', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1495164945, '180.153.206.20', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/flow.php'),
(1495164945, '101.226.61.207', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1495164952, '101.226.65.105', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1495164972, '101.226.51.230', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1495165026, '180.153.163.190', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1495165152, '101.226.65.105', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1495165192, '180.168.202.246', 20, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1495165206, '180.168.202.246', 21, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php?act=logout', '/index.php'),
(1495165334, '223.104.5.225', 3, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', '', '', '/index.php'),
(1495165344, '180.153.214.198', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1495165372, '112.90.82.218', 1, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', '', '', '/goods.php'),
(1495165381, '101.226.125.104', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1495168749, '180.168.202.246', 22, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php?act=profile', '/user.php'),
(1495169173, '180.168.202.246', 23, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php?act=act_edit_password', '/user.php'),
(1495173858, '180.168.202.246', 24, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php?act=profile', '/user.php'),
(1495233634, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1495234774, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1495308723, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1495311106, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1495409714, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1495410799, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1495417831, '180.173.142.0', 6, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1495421829, '61.151.218.119', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1495421847, '180.173.142.0', 7, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/user.php'),
(1495421863, '180.173.142.0', 8, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php?act=logout', '/index.php'),
(1495422050, '180.173.142.0', 9, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php?act=act_edit_password', '/user.php'),
(1495422993, '180.168.202.246', 25, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/user.php'),
(1495423646, '180.173.142.0', 10, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php?act=logout', '/index.php'),
(1495426647, '180.173.142.0', 11, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/', '/user.php'),
(1495429841, '180.173.142.0', 12, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php', '/user.php'),
(1495430473, '180.168.202.246', 26, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1495430538, '180.168.202.246', 27, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php?act=logout', '/index.php'),
(1495430889, '180.168.202.246', 28, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php?act=act_edit_password', '/user.php'),
(1495437254, '180.173.142.0', 13, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php', '/user.php'),
(1495437538, '140.207.185.111', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1495439028, '223.104.212.168', 4, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', '', '', '/index.php'),
(1495439055, '101.226.33.202', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1495443704, '223.104.212.168', 5, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', 'http://xtime.netdns.com.cn', '/?filter=zk', '/goods.php'),
(1495443705, '101.226.64.174', 1, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', '', '', '/goods.php'),
(1495443767, '223.104.212.168', 1, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', '', '', '/goods.php'),
(1495443776, '61.151.226.202', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '', '', '', '/goods.php'),
(1495443831, '101.226.89.119', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1495443843, '101.226.99.195', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1495444145, '112.65.193.15', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1495444239, '101.226.33.203', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1495444281, '140.207.185.109', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '', '', '', '/goods.php'),
(1495444314, '101.226.65.108', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1495444321, '101.226.51.226', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1495445035, '183.57.53.222', 1, 'Unknow browser', 'Unknown', 'zh-cn', '[δ֪IP0801]', '', '', '/user.php'),
(1495445047, '101.226.33.224', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1495445232, '101.226.51.228', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1495445242, '180.153.214.152', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/goods.php'),
(1495445285, '101.226.33.226', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1495445289, '207.46.13.47', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/user.php'),
(1495445292, '101.226.85.67', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1495445310, '180.163.2.88', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1495445640, '180.153.214.191', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1495446405, '101.226.51.226', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1495447872, '180.153.206.17', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1495448784, '101.226.125.104', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/search.php?keywords=%E6%89%8B%E6%9C%BA', '/search.php'),
(1495449172, '116.226.74.13', 2, 'Unknow browser', 'Unknown', 'zh-cn', '', '', '', '/goods.php'),
(1495449261, '101.226.51.229', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1495449376, '101.226.79.182', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1495450287, '101.226.66.177', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/affiche.php'),
(1495450301, '180.163.2.116', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1495450434, '101.226.68.197', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1495450947, '180.173.142.0', 14, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1495451680, '180.168.202.246', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1495452624, '180.168.202.246', 7, 'Safari 602.1', 'Unknown', 'zh-cn', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/', '/goods.php'),
(1495453251, '180.173.142.0', 15, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php?act=logout', '/index.php'),
(1495459224, '157.55.39.146', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/user.php'),
(1495459685, '157.55.39.146', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/user.php'),
(1495497346, '120.198.244.44', 3, 'Unknow browser', 'Unknown', '', 'APNIC', '', '', '/goods.php'),
(1495501746, '180.168.202.246', 8, 'Safari 602.1', 'Unknown', 'zh-cn', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/', '/user.php'),
(1495501787, '101.81.101.20', 16, 'Safari 601.1', 'Unknown', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/', '/goods.php'),
(1495503725, '180.168.202.246', 9, 'Safari 602.1', 'Unknown', 'zh-cn', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php', '/user.php'),
(1495504140, '116.226.74.13', 5, 'Unknow browser', 'Unknown', 'zh-cn', '', '', '', '/index.php'),
(1495504243, '180.168.202.246', 10, 'Safari 602.1', 'Unknown', 'zh-cn', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/goods.php?id=3', '/user.php'),
(1495507632, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1495507740, '101.81.101.20', 17, 'Safari 601.1', 'Unknown', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/user.php?act=logout', '/index.php'),
(1495507947, '180.168.202.246', 11, 'Safari 602.1', 'Unknown', 'zh-cn', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/', '/user.php'),
(1495508072, '101.81.101.20', 18, 'Safari 601.1', 'Unknown', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/user.php?act=logout', '/index.php'),
(1495508229, '101.81.101.20', 19, 'Safari 601.1', 'Unknown', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/user.php?act=logout', '/index.php'),
(1495508475, '180.168.202.246', 12, 'Safari 602.1', 'Unknown', 'zh-cn', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php?act=logout', '/index.php'),
(1495508633, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1495509654, '180.168.202.246', 13, 'Safari 602.1', 'Unknown', 'zh-cn', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php?act=logout', '/index.php'),
(1495509971, '101.81.101.20', 20, 'Safari 601.1', 'Unknown', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/user.php?act=logout', '/index.php'),
(1495510155, '180.168.202.246', 14, 'Safari 602.1', 'Unknown', 'zh-cn', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php?act=logout', '/index.php'),
(1495513792, '180.168.202.246', 29, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1495516691, '101.81.101.20', 21, 'Safari 601.1', 'Unknown', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/index.php?sort=time&order=asc', '/index.php'),
(1495519599, '101.81.101.20', 22, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1495521400, '124.74.139.6', 3, 'Unknow browser', 'Unknown', 'zh-cn', '', '', '', '/goods.php'),
(1495521449, '116.226.74.13', 1, 'Safari 603.1.30', 'Unknown', 'zh-cn', '', 'http://xtime.netdns.com.cn', '/admin/goods.php?act=list', '/goods.php'),
(1495521996, '117.185.27.114', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '', '', '', '/goods.php'),
(1495522023, '180.153.206.23', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1495522039, '101.226.33.200', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1495522060, '180.153.206.23', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1495522424, '180.168.202.246', 15, 'Safari 602.1', 'Unknown', 'zh-cn', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/goods.php?id=7', '/index.php'),
(1495532414, '101.81.101.20', 23, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1495532508, '116.226.74.13', 6, 'Unknow browser', 'Unknown', 'zh-cn', '', '', '', '/index.php'),
(1495532533, '183.57.53.222', 1, 'Unknow browser', 'Unknown', 'zh-cn', '[δ֪IP0801]', '', '', '/goods.php'),
(1495532637, '112.90.82.218', 1, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', '', '', '/goods.php'),
(1495532723, '116.226.74.13', 4, 'Unknow browser', 'Unknown', 'zh-cn', '', '', '', '/goods.php'),
(1495532990, '140.207.124.105', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '', '', '', '/goods.php'),
(1495533042, '61.151.228.22', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '', '', '', '/goods.php'),
(1495534506, '116.226.74.13', 7, 'Unknow browser', 'Unknown', 'zh-cn', '', 'http://xtime.netdns.com.cn', '/goods.php?id=3', '/index.php'),
(1495534675, '116.226.74.13', 2, 'Safari 603.1.30', 'Unknown', 'zh-cn', '', 'http://xtime.netdns.com.cn', '/admin/goods.php?act=list', '/goods.php'),
(1495534757, '101.81.101.20', 24, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1495538039, '116.226.74.13', 8, 'Unknow browser', 'Unknown', 'zh-cn', '', '', '', '/index.php'),
(1495539064, '116.226.74.13', 9, 'Unknow browser', 'Unknown', 'zh-cn', '', '', '', '/index.php'),
(1495539496, '101.226.64.174', 1, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', '', '', '/index.php'),
(1495540410, '101.226.64.174', 1, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', '', '', '/index.php'),
(1495540419, '101.226.65.108', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1495542379, '101.226.64.177', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1495542629, '101.226.68.215', 1, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', '', '', '/user.php'),
(1495542641, '180.153.206.23', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/flow.php'),
(1495542661, '101.226.51.227', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1495543256, '116.226.74.13', 5, 'Unknow browser', 'Unknown', 'zh-cn', '', '', '', '/goods.php'),
(1495543273, '101.226.33.202', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1495544803, '101.226.33.217', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1495588042, '180.173.141.104', 25, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1495588493, '180.168.202.246', 16, 'Safari 602.1', 'Unknown', 'zh-cn', '[δ֪IP0801]', '', '', '/index.php'),
(1495590238, '180.168.202.246', 30, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1495591875, '180.168.202.246', 1, 'Unknow browser', 'Unknown', 'zh-cn', '[δ֪IP0801]', '', '', '/index.php'),
(1495591883, '180.153.206.21', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1495591898, '101.226.51.229', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1495591908, '61.151.226.191', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/goods.php'),
(1495591946, '101.226.89.116', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1495591953, '101.226.79.182', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1495592028, '101.226.65.108', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1495592028, '180.153.206.16', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/user.php'),
(1495592028, '101.226.33.239', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1495592163, '180.153.201.28', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/user.php'),
(1495592774, '180.168.202.246', 31, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1495593244, '101.226.66.187', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/affiche.php'),
(1495593301, '101.226.66.192', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1495593990, '61.151.226.189', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '', '', '', '/user.php'),
(1495594335, '61.151.226.202', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '', '', '', '/flow.php'),
(1495594603, '180.153.205.254', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/user.php'),
(1495594612, '61.151.218.118', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '', '', '', '/user.php'),
(1495594612, '101.226.51.229', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1495594612, '101.226.33.239', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1495594612, '180.153.201.79', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/user.php'),
(1495594615, '101.226.66.180', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1495594617, '101.226.89.120', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1495594738, '180.163.2.116', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/user.php'),
(1495594917, '101.226.65.108', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1495594953, '140.207.185.112', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '', '', '', '/user.php'),
(1495594990, '101.226.51.229', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1495595054, '180.168.202.246', 2, 'Unknow browser', 'Unknown', 'zh-cn', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php?act=logout', '/index.php'),
(1495595113, '180.173.141.104', 26, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php?act=logout', '/index.php'),
(1495595168, '180.153.214.178', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/user.php'),
(1495595264, '180.168.202.246', 3, 'Unknow browser', 'Unknown', 'zh-cn', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php?act=logout', '/index.php'),
(1495595419, '101.226.33.239', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1495595625, '101.226.33.217', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1495595686, '101.226.65.102', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1495595970, '180.168.202.246', 4, 'Unknow browser', 'Unknown', 'zh-cn', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php?act=logout', '/index.php'),
(1495595980, '61.151.228.22', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '', '', '', '/index.php'),
(1495596499, '116.226.74.13', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1495596709, '116.226.74.13', 1, 'Unknow browser', 'Unknown', 'zh-cn', '', '', '', '/index.php'),
(1495596835, '180.153.211.172', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/affiche.php'),
(1495597588, '101.226.33.240', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1495597614, '101.226.79.182', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1495597614, '180.163.2.117', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1495597614, '180.153.211.190', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1495597614, '101.226.89.119', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1495597671, '101.226.66.174', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1495597733, '61.151.226.202', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '', '', '', '/index.php'),
(1495597767, '61.151.228.22', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '', '', '', '/index.php'),
(1495598986, '180.168.202.246', 5, 'Unknow browser', 'Unknown', 'zh-cn', '[δ֪IP0801]', '', '', '/index.php'),
(1495599986, '180.168.202.246', 17, 'Safari 602.1', 'Unknown', 'zh-cn', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/flow.php', '/user.php'),
(1495602619, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1495604131, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1495604200, '180.168.202.246', 18, 'Safari 602.1', 'Unknown', 'zh-cn', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/', '/goods.php'),
(1495604287, '180.173.141.104', 27, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/goods.php?id=5', '/user.php'),
(1495604535, '116.226.74.13', 2, 'Unknow browser', 'Unknown', 'zh-cn', '', '', '', '/index.php'),
(1495604647, '180.168.202.246', 6, 'Unknow browser', 'Unknown', 'zh-cn', '[δ֪IP0801]', '', '', '/index.php'),
(1495604705, '101.226.51.226', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1495604918, '101.226.51.228', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1495605240, '180.153.214.176', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/flow.php'),
(1495606354, '180.153.214.152', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/user.php'),
(1495607685, '116.226.74.13', 2, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', 'http://xtime.netdns.com.cn', '/admin/goods.php?act=list', '/goods.php'),
(1495607697, '101.226.125.111', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=9', '/user.php'),
(1495607862, '101.226.33.223', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1495610000, '124.74.139.6', 6, 'Unknow browser', 'Unknown', 'zh-cn', '', '', '', '/goods.php'),
(1495610015, '101.226.33.239', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1495610033, '101.226.33.216', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/affiche.php'),
(1495611018, '101.226.125.100', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1495611035, '101.226.66.178', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1495611041, '101.226.33.227', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1495611141, '180.153.201.79', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/user.php'),
(1495611214, '180.163.2.119', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/user.php'),
(1495616464, '116.226.74.13', 7, 'Unknow browser', 'Unknown', 'zh-cn', '', '', '', '/goods.php'),
(1495616898, '116.226.74.13', 10, 'Unknow browser', 'Unknown', 'zh-cn', '', '', '', '/index.php'),
(1495616904, '101.226.68.215', 1, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', '', '', '/goods.php'),
(1495617510, '112.90.82.218', 1, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', '', '', '/index.php'),
(1495617512, '183.57.53.222', 1, 'Unknow browser', 'Unknown', 'zh-cn', '[δ֪IP0801]', '', '', '/user.php'),
(1495617521, '101.226.33.206', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1495617552, '116.226.74.13', 3, 'Unknow browser', 'Unknown', 'zh-cn', '', '', '', '/index.php'),
(1495617672, '183.57.53.196', 1, 'Unknow browser', 'Unknown', 'zh-cn', '[δ֪IP0801]', '', '', '/user.php'),
(1495617685, '183.57.53.197', 1, 'Unknow browser', 'Unknown', 'zh-cn', '[δ֪IP0801]', '', '', '/user.php'),
(1495665760, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1495693126, '180.168.202.246', 4, 'Safari 603.1.30', 'Unknown', 'zh-cn', '[δ֪IP0801]', '', '', '/index.php'),
(1495694126, '116.226.74.13', 4, 'Unknow browser', 'Unknown', 'zh-cn', '', '', '', '/index.php'),
(1495694143, '101.226.89.121', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1495694799, '180.153.206.17', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1495694829, '180.163.1.46', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1495694903, '101.226.33.218', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1495696894, '116.226.74.13', 5, 'Unknow browser', 'Unknown', 'zh-cn', '', '', '', '/index.php'),
(1495700373, '116.226.74.13', 8, 'Unknow browser', 'Unknown', 'zh-cn', '', '', '', '/goods.php'),
(1495700382, '140.207.185.109', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '', '', '', '/goods.php'),
(1495700598, '180.153.206.20', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/goods.php'),
(1495701465, '117.185.27.113', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '', '', '', '/flow.php'),
(1495705033, '116.226.74.13', 9, 'Unknow browser', 'Unknown', 'zh-cn', '', '', '', '/index.php'),
(1495705998, '180.153.201.79', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/flow.php'),
(1495709817, '116.226.74.13', 10, 'Unknow browser', 'Unknown', 'zh-cn', '', '', '', '/index.php'),
(1495709846, '101.226.33.239', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1495710904, '101.226.51.229', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1495710906, '101.226.33.216', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1495711030, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1495711121, '101.226.64.177', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1495766554, '116.226.74.13', 11, 'Unknow browser', 'Unknown', 'zh-cn', '', '', '', '/index.php'),
(1495766599, '180.153.201.66', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/search.php?keywords=%E6%89%8B%E6%9C%BA', '/search.php'),
(1495766869, '101.226.33.219', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1495766924, '101.226.65.107', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1495766952, '101.226.99.196', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1495767113, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1495772284, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1495826782, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1495831011, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1495915023, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1495916400, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1496021458, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1496023922, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1496065509, '222.67.105.52', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1496085885, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1496087724, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1496158110, '222.67.105.52', 2, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES
(1496172418, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1496176920, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1496258581, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1496263124, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1496344751, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1496348453, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1496410989, '61.152.171.68', 1, 'FireFox 53.0', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1496410998, '101.226.33.201', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1496431882, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1496435127, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1496462353, '36.4.99.77', 4, 'Safari 603.1.30', 'Unknown', 'zh-cn', 'IANA', '', '', '/index.php'),
(1496497128, '123.158.61.186', 1, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '', '', '', '/index.php'),
(1496518181, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1496522211, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1496604445, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1496609366, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1496690671, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1496695528, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1496778717, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1496783437, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1496799047, '180.168.202.246', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1496800453, '61.152.171.68', 2, 'FireFox 53.0', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1496800462, '101.226.33.201', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1496800479, '180.153.205.253', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/goods.php?id=3', '/user.php'),
(1496800483, '180.153.201.28', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/goods.php?id=3', '/goods.php'),
(1496800792, '101.226.51.229', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=3', '/flow.php'),
(1496800851, '112.65.193.14', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/', '/goods.php'),
(1496800874, '101.226.61.207', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=10', '/user.php'),
(1496800882, '101.226.99.197', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/', '/goods.php'),
(1496800905, '61.151.228.22', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', 'http://xtime.netdns.com.cn', '/goods.php?id=3', '/flow.php'),
(1496800933, '101.226.125.100', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/flow.php', '/flow.php'),
(1496800959, '101.226.89.116', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/flow.php', '/user.php'),
(1496801251, '120.92.32.244', 1, 'Safari 537.36', 'Windows NT', 'zh,zh-CN', 'APNIC', '', '', '/goods.php'),
(1496802348, '101.226.33.205', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/user.php', '/user.php'),
(1496802355, '180.163.1.46', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php?act=register', '/user.php'),
(1496802407, '101.226.79.182', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/user.php?act=address', '/zd.php'),
(1496802450, '101.226.33.205', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/user.php?act=address', '/user.php'),
(1496802465, '180.153.163.190', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php?act=address', '/zd.php'),
(1496802747, '180.153.206.17', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php?act=address', '/zd.php'),
(1496802827, '101.226.33.202', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/user.php?act=address', '/zd.php'),
(1496803492, '180.168.202.246', 2, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/', '/goods.php'),
(1496803620, '180.173.143.139', 7, 'Unknow browser', 'Unknown', 'zh-cn', '[δ֪IP0801]', '', '', '/index.php'),
(1496803914, '180.173.143.139', 19, 'Safari 602.1', 'Unknown', 'zh-cn', '[δ֪IP0801]', '', '', '/index.php'),
(1496804285, '117.185.27.114', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '', '', '', '/index.php'),
(1496804294, '101.226.61.206', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1496804427, '101.226.125.111', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1496804857, '180.173.143.139', 8, 'Unknow browser', 'Unknown', 'zh-cn', '[δ֪IP0801]', '', '', '/index.php'),
(1496804874, '101.226.33.208', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1496804882, '101.226.33.220', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1496804887, '101.226.66.177', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1496804894, '101.226.65.102', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1496804951, '101.226.99.196', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1496804976, '180.173.143.139', 9, 'Unknow browser', 'Unknown', 'zh-cn', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php?act=profile', '/user.php'),
(1496804980, '180.173.143.139', 10, 'Unknow browser', 'Unknown', 'zh-cn', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php?act=logout', '/index.php'),
(1496804985, '61.151.217.45', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '', '', '', '/user.php'),
(1496804990, '101.226.89.115', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1496805039, '101.226.69.246', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1496805067, '101.226.125.104', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1496805150, '180.153.81.212', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/user.php'),
(1496805169, '180.173.143.139', 11, 'Unknow browser', 'Unknown', 'zh-cn', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php?act=logout', '/index.php'),
(1496805392, '101.226.33.208', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1496805426, '180.168.202.246', 3, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php?act=logout', '/index.php'),
(1496805502, '140.207.124.105', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '', '', '', '/user.php'),
(1496805818, '61.151.218.118', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '', '', '', '/flow.php'),
(1496806621, '180.173.143.139', 20, 'Safari 602.1', 'Unknown', 'zh-cn', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/goods.php?id=3', '/index.php'),
(1496813150, '180.168.202.246', 4, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/goods.php?id=9', '/index.php'),
(1496825411, '180.168.202.246', 5, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1496827244, '180.168.202.246', 6, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1496828596, '180.168.202.246', 7, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1496832483, '180.168.202.246', 8, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/flow.php', '/index.php'),
(1496863073, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1496871695, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1496887373, '180.168.202.246', 9, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1496887873, '180.173.60.242', 21, 'Safari 602.1', 'Unknown', 'zh-cn', '[δ֪IP0801]', '', '', '/index.php'),
(1496887886, '180.173.60.242', 22, 'Safari 602.1', 'Unknown', 'zh-cn', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php?act=logout', '/index.php'),
(1496890799, '180.168.202.246', 10, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/goods.php?id=9', '/flow.php'),
(1496899804, '180.168.202.246', 11, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/', '/goods.php'),
(1496905215, '180.168.202.246', 12, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/goods.php?id=9', '/index.php'),
(1496949409, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1496955865, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1497036067, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1497041993, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1497122740, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1497131291, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1497209187, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1497214882, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1497266732, '61.152.171.68', 3, 'FireFox 53.0', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1497266741, '101.226.33.225', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1497266745, '101.226.125.111', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=10', '/user.php'),
(1497268968, '61.152.171.68', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1497268982, '101.226.33.227', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/', '/goods.php'),
(1497268984, '61.151.226.189', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', 'http://xtime.netdns.com.cn', '/', '/flow.php'),
(1497268990, '101.226.125.104', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/', '/user.php'),
(1497269007, '112.65.193.14', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/', '/flow.php'),
(1497269010, '101.226.33.239', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/flow.php', '/flow.php'),
(1497269013, '61.152.171.68', 4, 'FireFox 53.0', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1497269078, '180.163.2.117', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/flow.php', '/user.php'),
(1497269165, '180.153.81.212', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php?act=order_list', '/user.php'),
(1497269169, '101.226.66.173', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/user.php?act=order_list&type=2', '/user.php'),
(1497269176, '140.207.185.112', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', '', 'http://xtime.netdns.com.cn', '/', '/goods.php'),
(1497269177, '101.226.33.200', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=6', '/user.php'),
(1497269194, '101.226.65.104', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=4', '/user.php'),
(1497269197, '101.226.66.179', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=4', '/goods.php'),
(1497269199, '101.226.64.177', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=4', '/flow.php'),
(1497269241, '101.226.33.226', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/', '/goods.php'),
(1497269243, '140.207.185.112', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', '', 'http://xtime.netdns.com.cn', '/goods.php?id=7', '/user.php'),
(1497269273, '101.226.66.173', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/', '/goods.php'),
(1497269274, '101.226.64.177', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=8', '/user.php'),
(1497269275, '101.226.99.196', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=8', '/goods.php'),
(1497269277, '101.226.125.16', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=8', '/flow.php'),
(1497269414, '101.226.33.227', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/', '/goods.php'),
(1497269414, '101.226.89.121', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/', '/goods.php'),
(1497269414, '101.226.33.228', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/', '/goods.php'),
(1497269414, '101.226.99.197', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/', '/goods.php'),
(1497269415, '140.207.185.112', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', '', 'http://xtime.netdns.com.cn', '/goods.php?id=9', '/user.php'),
(1497269439, '101.226.33.221', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=9', '/user.php'),
(1497269488, '101.226.89.121', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/flow.php', '/flow.php'),
(1497269919, '101.226.68.200', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/user.php', '/user.php'),
(1497269969, '101.226.89.121', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=7', '/user.php'),
(1497269970, '101.226.125.105', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=7', '/goods.php'),
(1497269970, '101.226.33.223', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=7', '/goods.php'),
(1497269970, '101.226.33.205', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=7', '/goods.php'),
(1497269970, '117.185.27.115', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', '', 'http://xtime.netdns.com.cn', '/goods.php?id=7', '/goods.php'),
(1497269986, '101.226.66.173', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=7', '/goods.php'),
(1497269987, '101.226.33.228', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=7', '/goods.php'),
(1497269987, '101.226.125.111', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=7', '/flow.php'),
(1497270152, '180.163.1.46', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/', '/goods.php'),
(1497270154, '101.226.33.201', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/', '/flow.php'),
(1497270157, '101.226.33.203', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/', '/goods.php'),
(1497270159, '101.226.89.120', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=5', '/user.php'),
(1497270159, '101.226.66.178', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=5', '/user.php'),
(1497270159, '101.226.33.227', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=5', '/user.php'),
(1497270160, '101.226.33.200', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=5', '/goods.php'),
(1497270162, '101.226.102.97', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=5', '/flow.php'),
(1497270248, '101.226.89.115', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/user.php?act=order_list', '/user.php'),
(1497270282, '180.163.1.46', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/goods.php?id=9', '/goods.php'),
(1497270285, '101.226.66.177', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=9', '/goods.php'),
(1497270413, '101.226.66.180', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=9', '/user.php'),
(1497270475, '101.226.68.197', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=9', '/goods.php'),
(1497270476, '101.226.125.111', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=9', '/goods.php'),
(1497270487, '101.226.33.208', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=9', '/flow.php'),
(1497270587, '101.226.125.105', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=9', '/goods.php'),
(1497270588, '61.151.217.45', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', 'http://xtime.netdns.com.cn', '/goods.php?id=9', '/flow.php'),
(1497270646, '101.226.33.216', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=9', '/goods.php'),
(1497270648, '101.226.64.177', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=9', '/goods.php'),
(1497270652, '101.226.125.105', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=9', '/flow.php'),
(1497270750, '101.226.33.203', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=9', '/goods.php'),
(1497270751, '101.226.125.16', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=9', '/flow.php'),
(1497270759, '140.207.185.109', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', 'http://xtime.netdns.com.cn', '/goods.php?id=9', '/goods.php'),
(1497270763, '101.226.89.119', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=9', '/goods.php'),
(1497270766, '101.226.33.204', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=9', '/flow.php'),
(1497270785, '101.226.99.196', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/flow.php', '/flow.php'),
(1497270865, '101.226.33.218', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/', '/flow.php'),
(1497271005, '101.226.64.177', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1497296291, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1497304922, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1497316472, '180.168.202.246', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1497316537, '180.173.57.143', 1, 'Safari 602.1', 'Unknown', 'zh-cn', '[δ֪IP0801]', '', '', '/index.php'),
(1497316812, '180.173.57.143', 2, 'Safari 602.1', 'Unknown', 'zh-cn', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php?act=logout', '/index.php'),
(1497382545, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1497388413, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1497423511, '180.173.61.140', 1, 'Safari 602.1', 'Unknown', 'zh-cn', '[δ֪IP0801]', '', '', '/index.php'),
(1497468417, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1497475818, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1497489672, '180.168.202.246', 2, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1497489891, '61.152.171.68', 5, 'FireFox 53.0', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1497489900, '101.226.33.206', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1497489933, '61.151.218.118', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', '', 'http://xtime.netdns.com.cn', '/', '/goods.php'),
(1497489935, '140.207.124.105', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', 'http://xtime.netdns.com.cn', '/goods.php?id=6', '/user.php'),
(1497489954, '61.152.171.68', 2, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/goods.php'),
(1497489965, '101.226.33.219', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=6', '/user.php'),
(1497491993, '61.152.171.68', 3, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '', 'http://xtime.netdns.com.cn', '/goods.php?id=6', '/index.php'),
(1497492016, '101.226.66.177', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/', '/index.php'),
(1497492020, '101.226.33.208', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/?filter=zk', '/index.php'),
(1497492023, '101.226.66.180', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/?filter=zk&filter=xg', '/index.php'),
(1497492030, '101.226.66.181', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/?filter=zk&filter=xg&filter=hy', '/index.php'),
(1497492071, '101.226.102.97', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/?filter=zk&filter=xg&filter=hy&filter=zk', '/index.php'),
(1497492107, '101.226.125.105', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/?filter=zk&filter=xg&filter=hy&filter=zk&filter=xg', '/index.php'),
(1497492188, '61.152.171.68', 6, 'FireFox 53.0', 'Windows NT', 'zh-CN,zh', '', 'http://xtime.netdns.com.cn', '/goods.php?id=6', '/index.php'),
(1497492372, '211.95.59.20', 1, 'Safari 601.1', 'Unknown', 'zh-cn', '', '', '', '/index.php'),
(1497492554, '180.168.202.246', 3, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1497499766, '114.81.254.164', 2, 'Safari 601.1', 'Unknown', 'zh-cn', 'IANA', '', '', '/index.php'),
(1497508134, '61.152.171.68', 7, 'FireFox 53.0', 'Windows NT', 'zh-CN,zh', '', 'http://xtime.netdns.com.cn', '/', '/index.php'),
(1497523904, '61.152.171.68', 8, 'FireFox 53.0', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1497524282, '114.81.254.167', 3, 'Safari 601.1', 'Unknown', 'zh-cn', 'IANA', '', '', '/index.php'),
(1497530494, '211.95.59.20', 4, 'Safari 601.1', 'Unknown', 'zh-cn', '', 'http://xtime.netdns.com.cn', '/', '/goods.php'),
(1497530579, '117.184.140.233', 3, 'Safari 602.1', 'Unknown', 'zh-cn', '', '', '', '/index.php'),
(1497540006, '112.64.216.42', 5, 'Safari 601.1', 'Unknown', 'zh-cn', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=7', '/user.php'),
(1497555104, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1497559403, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1497575728, '180.168.202.246', 3, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1497578469, '61.152.171.68', 9, 'FireFox 53.0', 'Windows NT', 'zh-CN,zh', '', 'http://xtime.netdns.com.cn', '/', '/goods.php'),
(1497596024, '61.152.171.68', 10, 'FireFox 53.0', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1497599337, '61.152.171.68', 11, 'FireFox 53.0', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1497599574, '180.168.202.246', 4, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1497641783, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1497647290, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1497668021, '180.173.60.114', 32, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1497729731, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1497735476, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1497756171, '117.136.8.234', 4, 'Safari 602.1', 'Unknown', 'zh-cn', '', 'http://xtime.netdns.com.cn', '/', '/goods.php'),
(1497816027, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1497821667, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1497903350, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1497907846, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1497988423, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1497993874, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1498076105, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1498081415, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1498159031, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1498167847, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1498200468, '116.226.59.47', 12, 'Unknow browser', 'Unknown', 'zh-cn', '', '', '', '/index.php'),
(1498200477, '117.185.27.115', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '', '', '', '/index.php'),
(1498200488, '101.226.79.182', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1498200494, '101.226.68.200', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1498200681, '101.226.125.104', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1498200695, '140.207.185.112', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '', '', '', '/goods.php'),
(1498200871, '112.65.193.15', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1498204685, '116.226.59.47', 13, 'Unknow browser', 'Unknown', 'zh-cn', '', '', '', '/index.php'),
(1498204694, '101.226.89.115', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1498248342, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1498250462, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1498333260, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1498339571, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1498419483, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1498424365, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1498440740, '180.168.202.246', 5, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1498469711, '116.226.59.47', 14, 'Unknow browser', 'Unknown', 'zh-cn', '', '', '', '/index.php'),
(1498469718, '101.226.64.177', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1498469729, '61.151.226.202', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '', '', '', '/user.php'),
(1498470371, '101.226.99.196', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1498470441, '101.226.65.107', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1498485084, '219.235.1.16', 1, 'Unknow browser', 'Windows NT', 'zh-CN', '', 'http://114.215.198.4:8080', '/IdcCheckDomain.V2016/checkdomain.jsp', '/index.php'),
(1498505328, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1498511444, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1498527973, '180.168.202.246', 6, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1498529387, '116.226.59.47', 15, 'Unknow browser', 'Unknown', 'zh-cn', '', '', '', '/index.php'),
(1498529396, '101.226.85.67', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1498529403, '101.226.66.193', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1498529406, '117.185.27.113', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '', '', '', '/user.php'),
(1498529453, '101.226.66.193', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1498529515, '112.65.193.14', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1498529774, '61.151.228.22', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '', '', '', '/user.php'),
(1498530097, '112.65.193.15', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1498530111, '101.226.33.206', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1498530994, '101.226.61.207', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1498531052, '101.226.89.115', 1, 'Safari 600.1.4', 'Unknown', 'en,*', 'IANA', '', '', '/user.php'),
(1498531279, '101.226.33.225', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1498531375, '101.226.33.240', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1498531943, '101.226.33.223', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1498531997, '101.226.89.116', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1498532036, '101.226.33.237', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1498532046, '101.226.125.16', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1498532815, '101.226.125.105', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1498533054, '101.226.33.202', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1498533278, '101.226.61.207', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1498533677, '101.226.33.228', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1498534658, '101.226.68.200', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1498534833, '101.226.66.174', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1498534842, '101.226.125.16', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1498534941, '180.153.163.190', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/goods.php'),
(1498535287, '101.226.66.180', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1498535727, '61.151.226.199', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '', '', '', '/user.php'),
(1498541452, '116.226.59.47', 16, 'Unknow browser', 'Unknown', 'zh-cn', '', '', '', '/index.php'),
(1498541461, '180.153.81.203', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1498541478, '61.151.226.189', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/user.php'),
(1498541531, '180.168.202.246', 7, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/goods.php?id=9', '/index.php'),
(1498542173, '101.226.102.97', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1498542442, '101.226.89.122', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1498546316, '116.226.59.47', 17, 'Unknow browser', 'Unknown', 'zh-cn', '', 'http://xtime.netdns.com.cn', '/goods.php?id=4', '/index.php'),
(1498546959, '101.226.85.67', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1498547122, '61.151.217.45', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '', '', '', '/goods.php'),
(1498547686, '101.226.33.217', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1498547801, '101.226.66.174', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1498547902, '101.226.125.100', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1498547922, '61.151.228.22', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '', '', '', '/index.php'),
(1498547932, '180.153.81.203', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1498547942, '101.226.33.225', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1498548560, '112.65.193.14', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1498548602, '117.185.27.115', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1498548782, '101.226.89.119', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1498549074, '101.226.65.108', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1498549214, '101.226.89.119', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1498549218, '61.151.226.199', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '', '', '', '/user.php'),
(1498549739, '180.153.81.212', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/user.php'),
(1498552210, '116.226.59.47', 18, 'Unknow browser', 'Unknown', 'zh-cn', '', '', '', '/index.php'),
(1498552244, '101.226.33.228', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1498552260, '180.163.2.116', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/user.php'),
(1498552448, '101.226.99.196', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1498552603, '101.226.89.122', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1498552860, '101.226.33.205', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1498552920, '101.226.68.213', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1498552994, '101.226.66.177', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1498553208, '101.226.89.119', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1498553232, '101.226.61.206', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1498554756, '116.226.59.47', 19, 'Unknow browser', 'Unknown', 'zh-cn', '', '', '', '/index.php'),
(1498554800, '101.226.99.197', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1498554879, '101.226.33.200', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1498554916, '101.226.33.237', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1498592227, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1498596832, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1498615406, '116.226.59.47', 20, 'Unknow browser', 'Unknown', 'zh-cn', '', '', '', '/index.php'),
(1498615464, '61.151.218.119', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '', '', '', '/goods.php'),
(1498616052, '101.226.125.105', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1498616302, '101.226.79.182', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1498617074, '180.168.202.246', 8, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1498617787, '180.173.56.206', 33, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1498618304, '101.226.33.200', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1498619193, '101.226.99.195', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1498620342, '101.226.66.191', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1498628173, '180.173.56.206', 34, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1498633655, '180.173.56.206', 35, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/auction.php', '/auction.php'),
(1498639067, '180.173.56.206', 36, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/auction.php'),
(1498679726, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1498688312, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1498702221, '180.173.57.191', 37, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1498704086, '180.173.57.191', 38, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1498765219, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1498769434, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1498787533, '116.226.59.47', 1, 'Unknow browser', 'Unknown', 'zh-cn', '', '', '', '/index.php'),
(1498787543, '61.151.226.16', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '', '', '', '/index.php'),
(1498787547, '101.226.125.105', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1498787667, '61.151.226.199', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '', '', '', '/goods.php'),
(1498808952, '180.173.138.114', 39, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1498809130, '116.226.59.47', 21, 'Unknow browser', 'Unknown', 'zh-cn', '', '', '', '/index.php'),
(1498809139, '101.226.33.208', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1498809144, '101.226.33.201', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1498810277, '101.226.33.240', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1498812116, '180.173.138.114', 40, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/auction.php?act=view&id=1', '/auction.php'),
(1498819523, '116.226.59.47', 2, 'Unknow browser', 'Unknown', 'zh-cn', '', '', '', '/index.php'),
(1498819536, '101.226.65.104', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1498819583, '101.226.89.121', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1498819586, '101.226.66.179', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1498851676, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1498857708, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1498873074, '180.168.202.246', 1, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1498896719, '180.173.138.228', 1, 'Unknow browser', 'Windows NT', 'zh-CN', '[δ֪IP0801]', '', '', '/index.php'),
(1498938415, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1498942998, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1498974400, '202.112.51.112', 1, 'Unknow browser', 'Unknown', '', '', '', '', '/index.php'),
(1499022801, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1499028364, '114.215.198.4', 1, '', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1499047134, '116.226.59.47', 22, 'Unknow browser', 'Unknown', 'zh-cn', '', '', '', '/index.php'),
(1499047153, '140.207.185.112', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '', '', '', '/user.php'),
(1499047154, '101.226.85.67', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1499047753, '180.163.1.46', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/user.php'),
(1499152498, '180.173.56.123', 41, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/pc/index.php'),
(1499155924, '180.173.56.123', 42, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/pc/index.php'),
(1499160708, '180.173.56.123', 43, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1499160715, '180.173.56.123', 44, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/pc/index.php'),
(1499236731, '180.173.137.155', 45, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1499236747, '180.173.137.155', 46, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/pc/index.php'),
(1499855883, '180.168.202.246', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1499932756, '180.168.202.246', 2, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1500602452, '180.168.202.246', 47, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1500865083, '180.173.18.125', 3, 'Safari 603.2.4', 'Unknown', 'zh-cn', '[δ֪IP0801]', '', '', '/index.php'),
(1500865650, '112.65.193.14', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1500868354, '180.173.18.125', 1, 'Safari 537.36', 'Linux', 'zh-CN,en-US', '[δ֪IP0801]', '', '', '/index.php'),
(1500868361, '180.173.18.125', 1, 'Safari 537.36', 'Linux', 'zh-CN,en-US', '[δ֪IP0801]', '', '', '/index.php'),
(1500868373, '180.173.18.125', 1, 'Safari 537.36', 'Linux', 'zh-CN,en-US', '[δ֪IP0801]', '', '', '/index.php'),
(1500868548, '140.207.62.163', 1, 'FireFox 3.0b4', 'Windows XP', '', '', '', '', '/index.php'),
(1500868611, '140.207.54.140', 1, 'FireFox 3.0b4', 'Windows XP', '', '', '', '', '/index.php'),
(1500868964, '101.226.65.108', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1500869057, '180.153.160.24', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/user.php'),
(1500869131, '101.226.66.180', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1500869135, '101.226.66.181', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1500869153, '101.226.68.161', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1500869220, '101.226.33.221', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/auction.php'),
(1500869222, '101.226.33.223', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1500869328, '117.185.27.114', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/user.php'),
(1500869426, '101.226.33.217', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1500869440, '101.226.66.172', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1500871208, '180.173.18.125', 2, 'Safari 537.36', 'Linux', 'zh-CN,en-US', '[δ֪IP0801]', '', '', '/index.php'),
(1500871320, '180.163.2.117', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1500872149, '180.163.2.88', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/user.php'),
(1500873200, '180.173.18.125', 1, 'Safari 537.36', 'Linux', 'zh-CN,en-US', '[δ֪IP0801]', '', '', '/index.php'),
(1500873202, '180.173.18.125', 1, 'Safari 537.36', 'Linux', 'zh-CN,en-US', '[δ֪IP0801]', '', '', '/index.php'),
(1500873239, '140.207.62.210', 1, 'FireFox 3.0b4', 'Windows XP', '', '', '', '', '/index.php'),
(1500873249, '101.226.33.238', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1500873326, '101.226.33.223', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1500873671, '101.226.33.203', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1500874159, '101.226.65.104', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1500875277, '140.207.54.144', 1, 'FireFox 3.0b4', 'Windows XP', '', '', '', '', '/index.php'),
(1500875277, '101.226.125.119', 1, 'FireFox 3.0b4', 'Windows XP', '', 'IANA', '', '', '/index.php'),
(1500875293, '101.226.33.240', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1500876182, '140.207.185.124', 1, 'FireFox 3.0b4', 'Windows XP', '', '', '', '', '/index.php'),
(1500876628, '101.226.33.238', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1500877007, '180.173.18.125', 1, 'Safari 537.36', 'Linux', 'zh-CN,en-US', '[δ֪IP0801]', '', '', '/index.php'),
(1500877009, '180.173.18.125', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1500877019, '180.173.18.125', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1500877045, '101.226.85.67', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1500877053, '61.151.226.199', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/user.php'),
(1500877075, '112.65.193.14', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1500877098, '140.207.54.197', 1, 'FireFox 3.0b4', 'Windows XP', '', '', '', '', '/index.php'),
(1500877261, '180.173.18.125', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1500877312, '101.226.66.177', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1500877312, '101.226.64.177', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1500877380, '180.173.18.125', 2, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php?act=logout', '/index.php'),
(1500877388, '101.226.125.105', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1500877483, '61.151.218.118', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '', '', '', '/goods.php'),
(1500877485, '101.226.33.206', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1500877496, '101.226.33.238', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1500877534, '61.151.228.22', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', '', '', '', '/goods.php'),
(1500877890, '101.226.33.228', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1500878255, '140.207.54.218', 1, 'FireFox 3.0b4', 'Windows XP', '', '', '', '', '/index.php'),
(1500878265, '117.185.24.151', 1, 'FireFox 3.0b4', 'Windows XP', '', '', '', '', '/index.php'),
(1500878317, '101.226.102.97', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1500878363, '101.226.33.218', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1500878422, '180.163.2.88', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/goods.php'),
(1500878585, '101.226.66.174', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1500878612, '180.163.2.116', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/goods.php'),
(1500878648, '61.151.226.189', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/flow.php'),
(1500878793, '101.226.33.208', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1500878817, '101.226.89.119', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1500878832, '101.226.33.201', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1500879076, '101.226.65.102', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1500879085, '117.185.27.114', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/auction.php'),
(1500879102, '101.226.66.193', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1500879154, '101.226.66.178', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1500879237, '61.151.218.119', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/goods.php'),
(1500879241, '140.207.185.107', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', '', '', '', '/index.php'),
(1500879282, '101.226.33.208', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1500879333, '101.226.66.179', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1500879341, '101.226.89.122', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1500879361, '101.226.65.105', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1500879381, '180.163.2.119', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/goods.php'),
(1500879447, '101.226.85.67', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1500879650, '180.163.2.119', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/auction.php'),
(1500879675, '101.226.33.219', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1500879833, '101.226.33.238', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1500879877, '101.226.66.174', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1500880395, '61.151.226.16', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', '', '', '', '/user.php'),
(1500880414, '140.207.185.111', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/user.php'),
(1500880465, '101.226.125.105', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1500880501, '101.226.33.220', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1500880525, '101.226.33.205', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1500880665, '180.163.1.46', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1500880688, '101.226.33.200', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1500880724, '101.226.33.205', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1500880905, '101.226.33.200', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1500880931, '101.226.66.173', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1500881063, '101.226.66.180', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1500881068, '61.151.226.199', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '', '', '', '/flow.php'),
(1500881096, '101.226.66.192', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1500881416, '101.226.33.226', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1500881508, '101.226.66.172', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1500881594, '180.163.2.116', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/user.php'),
(1500881619, '140.207.185.107', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '', '', '', '/user.php'),
(1500881621, '140.207.128.193', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', '', '', '', '/goods.php'),
(1500881651, '101.226.66.174', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/user.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES
(1500881724, '101.226.99.197', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1500882747, '211.95.63.218', 2, 'Safari 537.36', 'Linux', 'zh-CN,en-US', '', '', '', '/goods.php'),
(1500882747, '140.207.62.163', 1, 'FireFox 3.0b4', 'Windows XP', '', '', '', '', '/index.php'),
(1500882767, '101.226.33.219', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1500882786, '101.226.33.205', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1500882916, '101.226.33.221', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1500883243, '101.226.33.220', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1500883668, '117.185.27.142', 1, 'FireFox 3.0b4', 'Windows XP', '', '', '', '', '/index.php'),
(1500883668, '140.207.63.102', 1, 'FireFox 3.0b4', 'Windows XP', '', '', '', '', '/index.php'),
(1500884615, '140.207.62.210', 1, 'FireFox 3.0b4', 'Windows XP', '', '', '', '', '/index.php'),
(1500884874, '180.163.2.119', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/flow.php'),
(1500885518, '140.207.63.102', 1, 'FireFox 3.0b4', 'Windows XP', '', '', '', '', '/index.php'),
(1500890890, '180.168.202.246', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1500890943, '120.92.32.139', 1, 'Safari 537.36', 'Windows NT', 'zh,zh-CN', 'APNIC', '', '', '/index.php'),
(1500893148, '180.168.202.246', 2, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1500893365, '180.168.202.246', 1, 'FireFox 54.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1500944907, '180.168.202.246', 3, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1500944924, '180.168.202.246', 3, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1500945232, '180.168.202.246', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1500945291, '180.168.202.246', 2, 'FireFox 54.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1500948767, '180.168.202.246', 3, 'FireFox 54.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php?act=logout', '/index.php'),
(1500949069, '180.168.202.246', 4, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1500949084, '180.168.202.246', 5, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php?act=logout', '/index.php'),
(1500963103, '180.168.202.246', 6, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1500963136, '180.168.202.246', 7, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1500965398, '180.168.202.246', 8, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/goods.php?id=13', '/index.php'),
(1500966912, '180.168.202.246', 48, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1500969446, '180.168.202.246', 2, 'Unknow browser', 'Windows NT', 'zh-CN', '[δ֪IP0801]', '', '', '/index.php'),
(1500969695, '180.168.202.246', 9, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php', '/index.php'),
(1500973360, '180.168.202.246', 4, 'Safari 602.1', 'Unknown', 'zh-cn', '[δ֪IP0801]', '', '', '/index.php'),
(1500973486, '180.168.202.246', 4, 'FireFox 54.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1500973541, '180.168.202.246', 49, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1500975862, '180.168.202.246', 50, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1500976813, '180.168.202.246', 10, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php', '/index.php'),
(1500976901, '180.168.202.246', 51, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/pc/user.php'),
(1500977340, '180.168.202.246', 52, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/user.php'),
(1500979956, '180.168.202.246', 11, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php', '/index.php'),
(1500980428, '180.173.18.125', 3, 'Safari 537.36', 'Linux', 'zh-CN,en-US', '[δ֪IP0801]', '', '', '/index.php'),
(1500981769, '180.168.202.246', 3, 'Unknow browser', 'Windows NT', 'zh-CN', '[δ֪IP0801]', '', '', '/index.php'),
(1500981843, '180.168.202.246', 5, 'FireFox 54.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1500981895, '180.168.202.246', 1, 'Unknow browser', 'Windows NT', 'zh-Hans-CN,zh-Hans', '[δ֪IP0801]', '', '', '/index.php'),
(1501032385, '180.168.202.246', 12, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1501033146, '180.168.202.246', 13, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/pc/index.php'),
(1501033880, '180.168.202.246', 14, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/pc/index.php'),
(1501035189, '183.3.239.169', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-cn', '[δ֪IP0801]', '', '', '/pc/index.php'),
(1501035247, '180.168.202.246', 3, 'Unknow browser', 'Windows NT', 'zh-CN', '[δ֪IP0801]', '', '', '/pc/index.php'),
(1501035380, '117.185.27.113', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', 'http://xtime.netdns.com.cn', '/pc', '/pc/index.php'),
(1501035884, '180.168.202.246', 15, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/pc/index.php'),
(1501036262, '183.3.239.163', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-cn', '[δ֪IP0801]', '', '', '/index.php'),
(1501036262, '101.226.64.174', 1, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', '', '', '/index.php'),
(1501037279, '180.168.202.246', 16, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1501037591, '180.168.202.246', 53, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1501037770, '111.113.229.154', 1, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', '', '', '/index.php'),
(1501037828, '113.108.21.80', 1, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', '', '', '/user.php'),
(1501038001, '180.168.202.246', 17, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/pc/auction.php', '/pc/index.php'),
(1501038142, '180.168.202.246', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/pc/index.php'),
(1501038628, '140.207.124.105', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/goods.php'),
(1501039064, '101.226.99.196', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc', '/pc/index.php'),
(1501040154, '101.226.33.206', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/pc/goods.php'),
(1501040246, '101.226.33.206', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/pc/goods.php'),
(1501041468, '180.168.202.246', 2, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/pc/user.php?act=register', '/user.php'),
(1501041522, '180.163.1.46', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/pc/user.php'),
(1501041528, '180.163.2.117', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/pc/goods.php'),
(1501041629, '180.168.202.246', 3, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/pc/user.php?act=register', '/pc/user.php'),
(1501041730, '101.226.99.195', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/pc/flow.php'),
(1501042020, '61.151.226.191', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', '', '', '', '/pc/user.php'),
(1501042105, '61.151.226.199', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', '', '', '', '/pc/user.php'),
(1501042107, '101.226.64.177', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/pc/user.php'),
(1501042273, '101.226.33.223', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/pc/user.php'),
(1501042380, '61.151.218.119', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/pc/index.php'),
(1501042744, '101.226.33.237', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/pc/flow.php'),
(1501042894, '140.207.185.112', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/pc/user.php'),
(1501043253, '101.226.65.108', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/pc/user.php'),
(1501043317, '101.226.89.119', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/pc/user.php'),
(1501045719, '180.168.202.246', 4, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/pc/user.php', '/pc/flow.php'),
(1501046299, '180.168.202.246', 54, 'Safari 537.36', 'Linux', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php', '/user.php'),
(1501046607, '101.226.99.197', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc', '/pc/index.php'),
(1501046659, '117.185.27.113', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/pc/user.php'),
(1501046998, '101.226.65.105', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/pc/user.php'),
(1501047019, '180.168.202.246', 5, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1501047297, '180.153.163.190', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/pc/user.php'),
(1501047424, '180.168.202.246', 6, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/pc/user.php?act=account', '/pc/user.php'),
(1501047482, '61.151.218.118', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/pc/user.php'),
(1501047526, '101.226.33.238', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/pc/goods.php'),
(1501048427, '180.163.2.88', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/pc/user.php'),
(1501048810, '101.226.66.180', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/pc/user.php'),
(1501048820, '101.226.66.187', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/pc/user.php'),
(1501048874, '140.207.124.105', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/pc/search.php'),
(1501048957, '180.163.2.88', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/pc/user.php'),
(1501049233, '101.226.33.205', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/pc/user.php'),
(1501049264, '101.226.33.227', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/pc/user.php'),
(1501049421, '101.226.33.225', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/pc/user.php'),
(1501050250, '101.226.64.177', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/pc/user.php'),
(1501050335, '180.168.202.246', 18, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1501050401, '101.226.33.221', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/pc/user.php'),
(1501050424, '101.226.33.237', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/pc/user.php'),
(1501050556, '101.226.89.119', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/pc/user.php'),
(1501055300, '180.168.202.246', 55, 'Safari 537.36', 'Linux', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/', '/goods.php'),
(1501057669, '180.168.202.246', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1501059828, '183.57.53.177', 1, 'Unknow browser', 'Unknown', 'zh-cn', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/pc', '/pc/index.php'),
(1501060239, '180.168.202.246', 56, 'Safari 537.36', 'Linux', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php?act=logout', '/index.php'),
(1501061083, '180.168.202.246', 7, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1501061094, '140.206.161.160', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1501061171, '101.226.125.100', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1501061969, '101.226.33.216', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1501062291, '180.168.202.246', 8, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/pc/user.php?act=address_list', '/pc/user.php'),
(1501064947, '180.168.202.246', 57, 'Safari 537.36', 'Linux', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/flow.php', '/index.php'),
(1501067931, '180.168.202.246', 9, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/pc/user.php?act=address_list', '/pc/user.php'),
(1501067971, '180.168.202.246', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/pc/user.php?act=address_list', '/pc/user.php'),
(1501068061, '180.163.2.118', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/pc/goods.php'),
(1501117745, '180.168.202.246', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/pc/index.php'),
(1501118954, '101.226.65.108', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/pc/auction.php'),
(1501119048, '180.168.202.246', 2, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1501119115, '120.92.32.172', 1, 'Safari 537.36', 'Windows NT', 'zh,zh-CN', 'APNIC', '', '', '/index.php'),
(1501122354, '180.168.202.246', 3, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1501123196, '180.168.202.246', 1, 'Safari 537.36', 'Linux', 'zh-CN,en-US', '[δ֪IP0801]', '', '', '/index.php'),
(1501123325, '180.168.202.246', 2, 'Safari 537.36', 'Linux', 'zh-CN,en-US', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php?act=logout', '/index.php'),
(1501123714, '101.226.89.119', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1501123789, '123.151.64.201', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', '', '', '', '/flow.php'),
(1501123790, '61.151.226.16', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', '', '', '', '/flow.php'),
(1501124124, '101.226.66.174', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1501124415, '101.226.33.227', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1501124433, '180.163.2.116', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/user.php'),
(1501124523, '180.163.2.88', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/flow.php'),
(1501124541, '101.226.99.197', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1501124712, '180.168.202.246', 4, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php?act=logout', '/index.php'),
(1501124793, '101.226.33.228', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1501124876, '101.226.66.187', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1501125164, '101.226.85.67', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1501125232, '101.226.89.120', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1501125326, '101.226.66.193', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1501125338, '101.226.33.217', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1501126083, '101.226.85.67', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1501126100, '101.226.33.240', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1501126236, '101.226.33.221', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1501126591, '101.226.33.204', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1501126627, '101.226.66.177', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1501126651, '180.153.160.61', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/user.php'),
(1501126679, '101.226.33.206', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1501126727, '61.151.217.45', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', '', '', '', '/flow.php'),
(1501126733, '101.226.125.105', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1501126895, '101.226.66.179', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1501126991, '101.226.33.220', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1501127028, '180.163.2.116', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/flow.php'),
(1501127151, '61.151.217.45', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', '', '', '', '/flow.php'),
(1501127418, '101.226.33.226', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1501127731, '101.226.33.228', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1501127775, '101.226.102.97', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1501127820, '101.226.125.104', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1501127876, '180.163.2.119', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/user.php'),
(1501128070, '101.226.66.178', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1501128221, '101.226.68.161', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1501128236, '101.226.33.205', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1501128241, '101.226.66.177', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1501128339, '101.226.33.205', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1501128607, '101.226.33.206', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1501129000, '101.226.33.238', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1501129204, '101.226.125.103', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1501129325, '101.226.85.67', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1501129342, '101.226.85.67', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1501129380, '180.163.2.117', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/flow.php'),
(1501129446, '180.168.202.246', 5, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php?act=logout', '/index.php'),
(1501129927, '101.226.33.218', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1501130060, '101.226.99.196', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1501131335, '42.156.251.194', 1, 'Unknow browser', '', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1501131341, '42.156.251.194', 1, 'Unknow browser', '', 'zh-CN,en,*', 'IANA', '', '', '/index.php'),
(1501132659, '180.168.202.246', 6, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/index.php', '/goods.php'),
(1501132871, '101.226.33.205', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1501132895, '101.226.33.237', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1501133877, '101.226.33.200', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1501135439, '180.168.202.246', 7, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/pc/', '/pc/auction.php'),
(1501135451, '101.226.66.181', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/pc/auction.php'),
(1501206972, '180.168.202.246', 2, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1501206982, '180.168.202.246', 3, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/pc/index.php'),
(1501550819, '113.108.13.36', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-cn', 'IANA', '', '', '/index.php'),
(1501550820, '119.147.207.144', 1, 'Unknow browser', 'Unknown', 'zh-cn', 'APNIC', '', '', '/index.php'),
(1501550846, '180.168.202.246', 3, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1501550855, '183.57.53.222', 1, 'Unknow browser', 'Unknown', 'zh-cn', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/pc', '/pc/index.php'),
(1501550865, '101.226.33.218', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc', '/pc/index.php'),
(1501551159, '101.226.65.102', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1501551241, '180.163.2.119', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/goods.php'),
(1501551245, '101.226.89.121', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1501551508, '140.207.185.109', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1501551727, '101.226.89.122', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1501551728, '101.226.99.195', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1501551950, '120.92.32.140', 1, 'Safari 537.36', 'Windows NT', 'zh,zh-CN', 'APNIC', '', '', '/index.php'),
(1501552022, '180.163.1.46', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1501552024, '61.151.226.199', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1501552030, '101.226.125.103', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1501552444, '101.226.125.105', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1501553009, '101.226.33.219', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1501553065, '101.226.33.240', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1501553269, '101.226.66.177', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/auction.php'),
(1501554041, '101.226.66.172', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/auction.php'),
(1501554775, '101.226.89.121', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1501554799, '101.226.33.223', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1501554823, '101.226.33.204', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1501555086, '101.226.66.192', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1501555254, '101.226.89.120', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1501555784, '101.226.79.182', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1501555801, '180.163.2.119', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/user.php'),
(1501556840, '180.163.2.119', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/user.php'),
(1501557073, '61.151.228.22', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', '', '', '', '/user.php'),
(1501557143, '101.226.66.181', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1501557166, '101.226.33.240', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1501557195, '61.151.226.199', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/user.php'),
(1501557205, '101.226.33.238', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1501557442, '101.226.125.16', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1501557849, '123.151.64.201', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/user.php'),
(1501558311, '101.226.33.225', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1501558316, '101.226.33.203', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1501558375, '180.153.160.61', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/user.php'),
(1501558378, '101.226.33.216', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1501558399, '101.226.33.238', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1501559047, '101.226.33.208', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1501559144, '101.226.33.223', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1501559176, '101.226.33.221', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1501559183, '101.226.66.173', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1501559241, '101.226.125.103', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/search.php'),
(1501559399, '101.226.125.103', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1501559479, '180.168.202.246', 2, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1501559911, '61.151.226.202', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/search.php'),
(1501561546, '180.168.202.246', 3, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1501567074, '180.168.202.246', 4, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/user.php'),
(1501567884, '101.226.66.187', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1501723873, '180.168.202.246', 4, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/user.php'),
(1501723894, '101.226.66.187', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1501724092, '101.226.125.111', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1501750820, '180.168.202.246', 5, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1501750859, '101.226.89.122', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/user.php', '/user.php'),
(1501750978, '180.168.202.246', 1, 'Safari 537.36', 'Windows NT', 'zh-CN', '[δ֪IP0801]', '', '', '/user.php'),
(1501750978, '180.168.202.246', 1, 'Safari 537.36', 'Windows NT', 'zh-CN', '[δ֪IP0801]', '', '', '/user.php'),
(1501751239, '120.92.32.154', 1, 'Safari 537.36', 'Windows NT', 'zh,zh-CN', 'APNIC', '', '', '/index.php'),
(1501751620, '123.151.64.201', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1501751645, '101.226.33.219', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/', '/user.php'),
(1501752354, '180.168.202.246', 5, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/affiche.php'),
(1501814204, '180.168.202.246', 4, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1501834630, '180.168.202.246', 5, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1501841582, '180.168.202.246', 6, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1501841588, '183.3.239.170', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-cn', '[δ֪IP0801]', '', '', '/index.php'),
(1501841588, '101.226.68.215', 1, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', '', '', '/index.php'),
(1501841887, '180.168.202.246', 6, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1502069680, '61.152.171.68', 12, 'FireFox 54.0', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1502069686, '61.152.171.68', 4, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1502069975, '101.226.89.121', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1502070011, '101.226.65.108', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/', '/user.php'),
(1502076137, '61.152.171.68', 13, 'FireFox 54.0', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1502076146, '61.152.171.68', 5, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1502076721, '101.226.33.203', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/', '/goods.php'),
(1502076734, '61.151.217.45', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', 'http://xtime.netdns.com.cn', '/goods.php?id=10', '/goods.php'),
(1502076990, '101.226.125.111', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/', '/goods.php'),
(1502076994, '101.226.65.107', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=12', '/flow.php'),
(1502076994, '101.226.33.226', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=12', '/goods.php'),
(1502077002, '101.226.85.67', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=9', '/user.php'),
(1502077017, '101.226.99.196', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=9', '/goods.php'),
(1502077017, '101.226.33.221', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=9', '/flow.php'),
(1502077018, '101.226.66.193', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=9', '/goods.php'),
(1502077019, '61.151.226.202', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', 'http://xtime.netdns.com.cn', '/goods.php?id=9', '/flow.php'),
(1502077025, '61.151.226.16', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', '', 'http://xtime.netdns.com.cn', '/goods.php?id=9', '/goods.php'),
(1502077027, '101.226.125.111', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=9', '/flow.php'),
(1502077203, '101.226.99.196', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=12', '/user.php'),
(1502077225, '101.226.33.237', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=9', '/flow.php'),
(1502077239, '101.226.102.97', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=9', '/user.php'),
(1502172923, '112.65.190.157', 1, 'Safari 537.36', 'Linux', 'zh-CN,en-US', 'IANA', '', '', '/index.php'),
(1502172933, '61.151.226.199', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '', '', '', '/index.php'),
(1502172953, '140.207.54.144', 1, 'FireFox 3.0b4', 'Windows XP', '', '', '', '', '/index.php'),
(1502172956, '101.226.89.122', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1502172992, '101.226.33.205', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1502173034, '101.226.33.205', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1502173259, '101.226.33.225', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/auction.php'),
(1502173269, '101.226.125.111', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/auction.php'),
(1502173279, '101.226.66.180', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/auction.php'),
(1502173508, '101.226.66.181', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1502173521, '180.153.160.61', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/user.php'),
(1502173702, '101.226.33.224', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1502173706, '101.226.66.177', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1502173757, '101.226.65.107', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1502173806, '61.151.226.199', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '', '', '', '/flow.php'),
(1502173807, '101.226.125.100', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1502174018, '101.226.99.195', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1502174039, '180.163.2.117', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1502174331, '117.185.27.98', 1, 'FireFox 3.0b4', 'Windows XP', '', '', '', '', '/index.php'),
(1502174477, '101.226.102.97', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1502182415, '180.173.18.125', 2, 'Safari 537.36', 'Linux', 'zh-CN,en-US', '[δ֪IP0801]', '', '', '/index.php'),
(1502182630, '101.226.66.174', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/auction.php'),
(1502196750, '61.152.171.68', 6, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1502196768, '101.226.33.224', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/', '/goods.php'),
(1502196770, '101.226.64.177', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=4', '/user.php'),
(1502196773, '101.226.33.223', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=4', '/flow.php'),
(1502196815, '101.226.68.161', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/flow.php?step=checkout&cart_value=189', '/user.php'),
(1502197020, '101.226.33.208', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=4', '/flow.php'),
(1502241103, '180.168.202.246', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1502241198, '180.168.202.246', 6, 'FireFox 54.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1502243829, '180.168.202.246', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1502243891, '101.226.33.223', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1502243998, '101.226.125.16', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1502244009, '101.226.33.217', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1502244012, '61.151.218.119', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/flow.php'),
(1502244713, '61.151.226.191', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', '', '', '', '/user.php'),
(1502244899, '101.226.65.107', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1502244900, '101.226.33.219', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1502244909, '101.226.33.237', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1502244915, '101.226.66.179', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1502244956, '101.226.68.161', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1502244989, '101.226.33.217', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1502245023, '101.226.99.197', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1502245033, '180.173.18.125', 3, 'Safari 537.36', 'Linux', 'zh-CN,en-US', '[δ֪IP0801]', '', '', '/index.php'),
(1502245034, '180.173.18.125', 3, 'Safari 537.36', 'Linux', 'zh-CN,en-US', '[δ֪IP0801]', '', '', '/index.php'),
(1502245140, '101.226.66.177', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1502245163, '61.151.226.189', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '', '', '', '/user.php'),
(1502245534, '101.226.33.224', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1502245630, '101.226.99.197', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1502245702, '180.163.1.46', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/user.php'),
(1502245703, '101.226.33.219', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1502245712, '101.226.33.227', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1502245810, '180.153.160.61', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1502245819, '101.226.89.122', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1502245836, '101.226.33.240', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1502245850, '101.226.66.173', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1502245944, '101.226.65.102', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1502245954, '61.151.226.202', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', '', '', '', '/flow.php'),
(1502245981, '61.151.226.199', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/flow.php'),
(1502245986, '180.163.2.88', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/user.php'),
(1502245988, '61.151.226.202', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/flow.php'),
(1502246225, '101.226.99.197', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1502246442, '101.226.65.108', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1502246461, '61.151.218.118', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', '', '', '', '/user.php'),
(1502246513, '101.226.66.177', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1502246520, '101.226.33.202', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1502246577, '101.226.125.103', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1502246613, '61.151.226.199', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', '', '', '', '/flow.php'),
(1502246661, '101.226.33.227', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1502246678, '180.163.2.119', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/flow.php'),
(1502246699, '101.226.33.201', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1502246945, '101.226.33.218', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1502246954, '101.226.65.107', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1502246979, '61.151.226.199', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', '', '', '', '/flow.php'),
(1502247262, '101.226.33.238', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1502247267, '101.226.33.204', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1502247545, '180.163.2.118', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/flow.php'),
(1502247621, '101.226.33.219', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1502247736, '61.151.228.22', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', '', '', '', '/flow.php'),
(1502248061, '101.226.89.116', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1502249263, '101.226.33.226', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1502249567, '101.226.66.174', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1502250612, '101.226.65.108', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1502250950, '101.226.33.218', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1502251929, '61.151.226.189', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/user.php'),
(1502251944, '180.168.202.246', 2, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php', '/index.php'),
(1502251966, '101.226.33.226', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/auction.php'),
(1502251970, '61.151.226.202', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/auction.php'),
(1502252055, '101.226.99.195', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1502252468, '101.226.85.67', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1502253257, '140.206.88.158', 4, 'Safari 537.36', 'Linux', 'zh-CN,en-US', '', '', '', '/index.php'),
(1502253257, '101.226.125.119', 1, 'FireFox 3.0b4', 'Windows XP', '', 'IANA', '', '', '/index.php'),
(1502253267, '180.163.2.116', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1502253269, '117.185.27.99', 1, 'FireFox 3.0b4', 'Windows XP', '', '', '', '', '/index.php'),
(1502327004, '180.168.202.246', 2, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1502327875, '180.168.202.246', 7, 'FireFox 54.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1502337390, '180.168.202.246', 3, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1502337400, '101.226.102.97', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1502337444, '101.226.79.182', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1502337469, '101.226.33.239', 1, 'Safari 600.1.4', 'Unknown', 'en,*', 'IANA', '', '', '/index.php'),
(1502337486, '116.231.23.192', 1, 'FireFox 54.0', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1502337503, '140.207.185.109', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', '', 'http://xtime.netdns.com.cn', '/', '/goods.php'),
(1502337522, '140.206.161.160', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', '', 'http://xtime.netdns.com.cn', '/', '/goods.php'),
(1502337547, '140.207.185.109', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', 'http://xtime.netdns.com.cn', '/', '/flow.php'),
(1502338075, '112.65.193.14', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/', '/flow.php'),
(1502338083, '140.207.185.111', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', '', 'http://xtime.netdns.com.cn', '/', '/goods.php'),
(1502339559, '116.231.23.192', 1, 'Safari 537.36', 'Linux', 'zh-CN,en-US', '', '', '', '/index.php'),
(1502339564, '101.226.68.215', 1, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', '', '', '/goods.php'),
(1502339573, '101.226.33.224', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1502339574, '14.17.21.58', 1, 'Unknow browser', 'Unknown', 'zh-cn', '', '', '', '/auction.php'),
(1502339577, '112.90.82.218', 1, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', '', '', '/flow.php'),
(1502339583, '101.226.33.218', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/auction.php'),
(1502441369, '124.224.39.253', 2, 'Unknow browser', 'Unknown', 'zh-cn', '', '', '', '/index.php'),
(1502441369, '119.147.207.152', 1, 'Unknow browser', 'Unknown', 'zh-cn', 'APNIC', 'http://xtime.netdns.com.cn', '/pc', '/pc/index.php'),
(1502441396, '124.224.39.253', 3, 'Unknow browser', 'Unknown', 'zh-cn', '', '', '', '/pc/index.php'),
(1502442212, '101.226.33.226', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1502530537, '180.168.202.246', 1, 'FireFox 54.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1502530650, '180.168.202.246', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/flow.php'),
(1502530660, '180.153.160.61', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/flow.php'),
(1502530670, '101.226.66.193', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1502532534, '180.168.202.246', 1, 'FireFox 54.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1502532663, '180.168.202.246', 1, 'FireFox 54.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1502533385, '180.168.202.246', 1, 'FireFox 54.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1502535155, '180.168.202.246', 2, 'FireFox 54.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1502539826, '180.168.202.246', 3, 'FireFox 54.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/flow.php'),
(1502706454, '1.50.67.162', 4, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', '', '', '/index.php'),
(1502706455, '112.90.82.218', 1, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', 'http://xtime.netdns.com.cn', '/pc', '/pc/index.php'),
(1502706460, '101.226.68.215', 1, 'Unknow browser', 'Unknown', 'zh-cn', 'IANA', '', '', '/user.php'),
(1502706463, '101.226.125.100', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc', '/pc/index.php'),
(1502706470, '101.226.66.173', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1502706969, '101.226.66.173', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1502707310, '101.226.102.97', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1502707459, '61.151.218.118', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', '', '', '', '/user.php'),
(1502759460, '180.168.202.246', 8, 'FireFox 54.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1502759674, '180.168.202.246', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1502759853, '180.168.202.246', 9, 'FireFox 54.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1502760268, '180.168.202.246', 58, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1502760269, '101.226.66.187', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1502760782, '61.151.226.199', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/user.php'),
(1502761292, '101.226.65.104', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1502764795, '180.168.202.246', 59, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/admin/index.php?act=top', '/index.php'),
(1502765660, '180.168.202.246', 2, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php', '/user.php'),
(1502765699, '101.226.64.177', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1502766549, '101.226.33.239', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1502766585, '61.151.226.189', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/goods.php'),
(1502767185, '61.151.226.202', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/user.php'),
(1502767476, '101.226.65.104', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1502767542, '101.226.66.193', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1502767625, '101.226.66.173', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1502767912, '101.226.66.193', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1502768157, '61.151.228.22', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', '', '', '', '/user.php'),
(1502768543, '180.168.202.246', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1502769161, '101.226.66.179', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1502769734, '101.226.125.104', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1502769876, '101.226.125.105', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1502774871, '180.168.202.246', 60, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/pc/index.php'),
(1502775163, '180.168.202.246', 10, 'FireFox 54.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php?act=order_list', '/user.php'),
(1502775171, '180.168.202.246', 61, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1502775449, '180.168.202.246', 1, 'Unknow browser', 'Unknown', 'zh-cn', '[δ֪IP0801]', '', '', '/index.php'),
(1502776084, '117.185.27.113', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '', '', '', '/user.php'),
(1502776204, '117.185.27.115', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/flow.php'),
(1502776218, '117.185.27.115', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '', '', '', '/goods.php'),
(1502776247, '117.185.27.113', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/user.php'),
(1502776536, '117.185.27.115', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '', '', '', '/user.php'),
(1502776907, '117.185.27.114', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '', '', '', '/user.php'),
(1502776942, '117.185.27.113', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '', '', '', '/user.php'),
(1502777033, '180.168.202.246', 62, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/', '/goods.php'),
(1502777214, '117.185.27.113', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '', '', '', '/user.php'),
(1502777302, '117.185.27.114', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/goods.php'),
(1502777693, '140.207.185.111', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '', '', '', '/flow.php'),
(1502777745, '180.168.202.246', 63, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/pc/index.php'),
(1502845732, '140.206.89.202', 1, 'Safari 537.36', 'Linux', 'zh-CN,en-US', '', '', '', '/index.php'),
(1502845784, '117.185.27.114', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '', '', '', '/goods.php'),
(1502845818, '140.207.54.158', 1, 'FireFox 3.0b4', 'Windows XP', '', '', '', '', '/index.php'),
(1502845986, '117.185.27.113', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '', '', '', '/flow.php'),
(1502846246, '117.185.27.113', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '', '', '', '/goods.php'),
(1502846408, '117.185.27.114', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '', '', '', '/flow.php'),
(1502846574, '117.185.27.115', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '', '', '', '/user.php'),
(1502853815, '101.226.125.113', 1, 'FireFox 3.0b4', 'Windows XP', '', 'IANA', '', '', '/index.php'),
(1502853815, '140.206.88.67', 2, 'Safari 537.36', 'Linux', 'zh-CN,en-US', '', '', '', '/index.php'),
(1502853815, '117.185.24.151', 1, 'FireFox 3.0b4', 'Windows XP', '', '', '', '', '/index.php'),
(1502853856, '117.185.27.114', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '', '', '', '/index.php'),
(1502853867, '117.185.27.114', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '', '', '', '/index.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES
(1502854697, '117.185.27.113', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '', '', '', '/goods.php'),
(1502854753, '117.185.27.99', 1, 'FireFox 3.0b4', 'Windows XP', '', '', '', '', '/index.php'),
(1502854926, '117.185.27.115', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '', '', '', '/user.php'),
(1502855040, '117.185.27.113', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '', '', '', '/auction.php'),
(1502855212, '117.185.27.114', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '', '', '', '/auction.php'),
(1502855612, '117.185.27.113', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '', '', '', '/auction.php'),
(1502855698, '180.173.18.125', 1, 'FireFox 55.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/admin/goods.php?act=list', '/goods.php'),
(1502855763, '117.185.27.115', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/user.php'),
(1502855779, '117.185.27.113', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '', '', '', '/auction.php'),
(1502856072, '106.2.45.22', 1, 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/yunqi_check.php'),
(1502856164, '117.185.27.113', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '', '', '', '/goods.php'),
(1502862329, '140.206.88.233', 3, 'Safari 537.36', 'Linux', 'zh-CN,en-US', '', '', '', '/index.php'),
(1502862329, '101.226.125.113', 1, 'FireFox 3.0b4', 'Windows XP', '', 'IANA', '', '', '/index.php'),
(1502862329, '117.144.246.147', 1, 'FireFox 3.0b4', 'Windows XP', '', '', '', '', '/index.php'),
(1502862944, '140.207.185.107', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/goods.php'),
(1502863200, '117.185.27.113', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '', '', '', '/flow.php'),
(1502866636, '211.95.63.220', 4, 'Safari 537.36', 'Linux', 'zh-CN,en-US', '', '', '', '/index.php'),
(1502866636, '101.226.102.237', 1, 'FireFox 3.0b4', 'Windows XP', '', 'IANA', '', '', '/index.php'),
(1502866636, '117.185.27.98', 1, 'FireFox 3.0b4', 'Windows XP', '', '', '', '', '/index.php'),
(1502866675, '180.173.18.125', 1, 'Safari 537.36', 'Linux', 'zh-CN,en-US', '[δ֪IP0801]', '', '', '/index.php'),
(1502866798, '117.185.27.115', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '', '', '', '/index.php'),
(1502867471, '117.185.27.114', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '', '', '', '/index.php'),
(1502867474, '117.185.27.113', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '', '', '', '/index.php'),
(1502867824, '117.185.27.103', 1, 'FireFox 3.0b4', 'Windows XP', '', '', '', '', '/index.php'),
(1502867980, '117.185.27.113', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '', '', '', '/user.php'),
(1502868162, '117.185.27.115', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '', '', '', '/index.php'),
(1502868307, '180.173.18.125', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1502868558, '117.185.27.115', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '', '', '', '/flow.php'),
(1502868625, '117.185.27.115', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '', '', '', '/flow.php'),
(1502868634, '117.185.27.114', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '', '', '', '/flow.php'),
(1502868680, '117.185.27.114', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '', '', '', '/user.php'),
(1502868738, '117.185.27.113', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '', '', '', '/flow.php'),
(1502869068, '117.185.27.114', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '', '', '', '/flow.php'),
(1502869127, '180.173.18.125', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1502869202, '117.185.27.113', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/flow.php'),
(1502869291, '61.151.218.118', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '', '', '', '/flow.php'),
(1502869543, '117.185.27.113', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '', '', '', '/auction.php'),
(1502869950, '117.185.27.113', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '', '', '', '/auction.php'),
(1502869962, '117.185.27.114', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '', '', '', '/auction.php'),
(1502870130, '117.185.24.151', 1, 'FireFox 3.0b4', 'Windows XP', '', '', '', '', '/index.php'),
(1502870130, '101.226.102.60', 1, 'FireFox 3.0b4', 'Windows XP', '', 'IANA', '', '', '/index.php'),
(1502870134, '180.173.18.125', 1, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/auction.php'),
(1502870298, '101.226.33.218', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', 'IANA', '', '', '/auction.php'),
(1502871079, '180.173.18.125', 2, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/', '/goods.php'),
(1502871644, '101.226.99.197', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=9', '/goods.php'),
(1502872109, '101.226.66.192', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/', '/user.php'),
(1502872171, '101.226.33.228', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/user.php?act=order_list', '/user.php'),
(1502872906, '101.226.65.107', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=8', '/user.php'),
(1502875295, '180.173.18.125', 2, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1502875973, '180.173.18.125', 2, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/search.php?encode=YToyOntzOjg6ImtleXdvcmRzIjtzOjc6IuWVhuWTgTEiO3M6MTg6InNlYXJjaF9lbmNvZGVfdGltZSI7aToxNTAyODcxMzIyO30=', '/index.php'),
(1502876338, '117.185.27.115', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1502876793, '117.185.27.115', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '', '', '', '/index.php'),
(1502876969, '117.185.27.113', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '', '', '', '/index.php'),
(1502877289, '101.226.89.14', 1, 'FireFox 3.0b4', 'Windows XP', '', 'IANA', '', '', '/index.php'),
(1502877289, '211.95.63.210', 5, 'Safari 537.36', 'Linux', 'zh-CN,en-US', '', '', '', '/index.php'),
(1502877289, '117.135.173.56', 1, 'FireFox 3.0b4', 'Windows XP', '', '', '', '', '/index.php'),
(1502877525, '117.185.27.113', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '', '', '', '/flow.php'),
(1502877603, '117.185.27.114', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/flow.php'),
(1502878261, '117.185.27.146', 1, 'FireFox 3.0b4', 'Windows XP', '', '', '', '', '/index.php'),
(1502879214, '117.185.27.113', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '', '', '', '/flow.php'),
(1502880153, '180.173.18.125', 2, 'FireFox 55.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/user.php'),
(1502880207, '180.173.18.125', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/user.php'),
(1502883722, '211.95.63.210', 6, 'Safari 537.36', 'Linux', 'zh-CN,en-US', '', '', '', '/index.php'),
(1502883722, '101.226.102.140', 1, 'FireFox 3.0b4', 'Windows XP', '', 'IANA', '', '', '/index.php'),
(1502939399, '180.173.18.125', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1502939409, '180.173.18.125', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1502947234, '180.168.202.246', 11, 'FireFox 54.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/pc/index.php'),
(1502947332, '101.226.33.205', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/pc/user.php'),
(1502947475, '1.85.2.120', 1, 'Safari 537.36', 'Windows NT', '', 'IANA', '', '', '/index.php'),
(1502947475, '1.85.2.120', 1, 'Safari 537.36', 'Windows NT', '', 'IANA', '', '', '/index.php'),
(1502947475, '1.85.2.120', 1, 'Safari 537.36', 'Windows NT', '', 'IANA', '', '', '/index.php'),
(1502947475, '1.85.2.120', 1, 'Safari 537.36', 'Windows NT', '', 'IANA', '', '', '/index.php'),
(1502947475, '1.85.2.120', 1, 'Safari 537.36', 'Windows NT', '', 'IANA', '', '', '/index.php'),
(1502947475, '1.85.2.120', 1, 'Safari 537.36', 'Windows NT', '', 'IANA', '', '', '/index.php'),
(1502947475, '1.85.2.120', 1, 'Safari 537.36', 'Windows NT', '', 'IANA', '', '', '/index.php'),
(1502947475, '1.85.2.120', 1, 'Safari 537.36', 'Windows NT', '', 'IANA', '', '', '/index.php'),
(1502947476, '1.85.2.120', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/', '/index.php'),
(1502947476, '1.85.2.120', 1, 'Safari 537.36', 'Windows NT', '', 'IANA', '', '', '/index.php'),
(1502947476, '1.85.2.120', 1, 'Safari 537.36', 'Windows NT', '', 'IANA', '', '', '/index.php'),
(1502947476, '1.85.2.120', 1, 'Safari 537.36', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1502947476, '1.85.2.120', 1, 'Safari 537.36', 'Windows NT', '', 'IANA', '', '', '/index.php'),
(1502947476, '1.85.2.120', 1, 'Safari 537.36', 'Windows NT', '', 'IANA', '-->''"><H1>X5S@HERE<', '/H1>', '/index.php'),
(1502947476, '1.85.2.120', 1, 'Safari 537.36', 'Windows NT', '', 'IANA', '', '', '/index.php'),
(1502947476, '1.85.2.120', 1, 'Safari 537.36', 'Unknown', '', 'IANA', '', '', '/index.php'),
(1502947476, '1.85.2.120', 1, 'Safari 537.36', 'Windows NT', '', 'IANA', '', '', '/index.php'),
(1502947476, '1.85.2.120', 1, 'Safari 537.36', 'Windows NT', '', 'IANA', '', '', '/search.php'),
(1502947476, '1.85.2.120', 1, 'Safari 537.36', 'Windows NT', '', 'IANA', '', '', '/index.php/api/xmlrpc'),
(1502947476, '1.85.2.120', 1, 'Safari 537.36', 'Windows NT', '', 'IANA', '', '', '/index.php'),
(1502947476, '1.85.2.120', 1, 'Safari 537.36', 'Windows NT', '', 'IANA', '', '', '/index.php'),
(1502947477, '1.85.2.120', 1, 'Safari 537.36', 'Windows NT', '', 'IANA', '', '', '/search.php'),
(1502947477, '1.85.2.120', 1, 'Safari 537.36', 'Windows NT', '', 'IANA', '', '', '/index.php/api/search.php'),
(1502947478, '1.85.2.120', 1, 'Safari 537.36', 'Windows NT', '', 'IANA', '', '', '/index.php'),
(1502947479, '1.85.2.120', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/', '/index.php'),
(1502947480, '1.85.2.120', 1, 'Safari 537.36', 'Windows NT', '', 'IANA', '', '', '/affiche.php'),
(1502947480, '1.85.2.120', 1, 'Safari 537.36', 'Windows NT', '', 'IANA', '', '', '/affiche.php'),
(1502947480, '1.85.2.120', 1, 'Safari 537.36', 'Windows NT', '', 'IANA', '', '', '/affiche.php'),
(1502947486, '1.85.2.120', 1, 'Safari 537.36', 'Windows NT', '', 'IANA', '', '', '/user.php'),
(1502947504, '1.85.2.120', 1, 'Safari 537.36', 'Windows NT', '', 'IANA', '', '', '/respond.php'),
(1502947505, '1.85.2.120', 1, 'Safari 537.36', 'Windows NT', '', 'IANA', '', '', '/flow.php'),
(1502947505, '1.85.2.120', 1, 'Safari 537.36', 'Windows NT', '', 'IANA', '', '', '/category.php'),
(1502947505, '1.85.2.120', 1, 'Safari 537.36', 'Windows NT', '', 'IANA', '', '', '/respond.php'),
(1502947505, '1.85.2.120', 1, 'Safari 537.36', 'Windows NT', '', 'IANA', '', '', '/flow.php'),
(1502947505, '1.85.2.120', 1, 'Safari 537.36', 'Windows NT', '', 'IANA', '', '', '/category.php'),
(1502947611, '180.168.202.246', 12, 'FireFox 54.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1502947701, '180.168.202.246', 2, 'Unknow browser', 'Windows NT', 'zh-Hans-CN,zh-Hans', '[δ֪IP0801]', '', '', '/index.php'),
(1502947951, '116.231.17.55', 2, 'FireFox 54.0', 'Windows NT', 'zh-CN,zh', '', '', '', '/pc/user.php'),
(1502953775, '180.168.202.246', 13, 'FireFox 54.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1502954078, '140.206.254.177', 7, 'Safari 537.36', 'Linux', 'zh-CN,en-US', '', '', '', '/index.php'),
(1502954080, '140.207.54.215', 1, 'FireFox 3.0b4', 'Windows XP', '', '', '', '', '/index.php'),
(1502954129, '117.185.27.114', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', '', '', '', '/auction.php'),
(1502954192, '180.173.18.125', 1, 'FireFox 55.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1502954232, '180.173.18.125', 2, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1502954581, '180.173.18.125', 3, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php?act=logout', '/index.php'),
(1502954858, '180.173.18.125', 4, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php?act=logout', '/index.php'),
(1502957525, '101.226.125.103', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/', '/goods.php'),
(1502958160, '101.226.99.195', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=8', '/user.php'),
(1502958683, '180.173.18.125', 1, 'Internet Explorer 8.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958684, '180.173.18.125', 1, 'Internet Explorer 8.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/affiche.php'),
(1502958684, '180.173.18.125', 1, 'Internet Explorer 8.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958685, '180.173.18.125', 1, 'Internet Explorer 8.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/goods.php'),
(1502958685, '180.173.18.125', 1, 'Internet Explorer 8.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958686, '180.173.18.125', 1, 'Internet Explorer 8.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958686, '180.173.18.125', 1, 'Internet Explorer 8.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958686, '180.173.18.125', 1, 'Internet Explorer 8.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/', '/index.php'),
(1502958687, '180.173.18.125', 1, 'Internet Explorer 8.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958687, '180.173.18.125', 1, 'Internet Explorer 8.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958688, '180.173.18.125', 1, 'Internet Explorer 8.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958688, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958689, '180.173.18.125', 1, 'Internet Explorer 8.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/goods.php'),
(1502958689, '180.173.18.125', 1, 'Internet Explorer 8.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958690, '180.173.18.125', 1, 'Internet Explorer 8.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958690, '180.173.18.125', 1, 'Internet Explorer 8.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958691, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/goods.php'),
(1502958692, '180.173.18.125', 1, 'Internet Explorer 8.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958693, '180.173.18.125', 1, 'Internet Explorer 8.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958693, '180.173.18.125', 1, 'Internet Explorer 8.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958694, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958694, '180.173.18.125', 1, 'Internet Explorer 8.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958695, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/affiche.php'),
(1502958695, '180.173.18.125', 1, 'Internet Explorer 8.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958696, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958696, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/goods.php'),
(1502958697, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958697, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958698, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958699, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958700, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/goods.php'),
(1502958700, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958701, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958701, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958702, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958702, '180.173.18.125', 1, 'Internet Explorer 8.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/zd.php'),
(1502958703, '180.173.18.125', 1, 'Internet Explorer 8.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958703, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958704, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958704, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958705, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958705, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958706, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/goods.php'),
(1502958706, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958707, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958707, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958708, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/goods.php'),
(1502958708, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958709, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958709, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958710, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958710, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958711, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958711, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/zd.php'),
(1502958712, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958712, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958713, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958713, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/affiche.php'),
(1502958714, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958714, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958715, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958715, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958716, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958717, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/goods.php'),
(1502958717, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958718, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958718, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958719, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958719, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958720, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958720, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/zd.php'),
(1502958721, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958721, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958722, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/goods.php'),
(1502958722, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958724, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958725, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958726, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958736, '180.173.18.125', 1, 'Internet Explorer 8.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958737, '180.173.18.125', 1, 'Internet Explorer 8.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958737, '180.173.18.125', 1, 'Internet Explorer 8.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/affiche.php'),
(1502958738, '180.173.18.125', 1, 'Internet Explorer 8.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/', '/index.php'),
(1502958738, '180.173.18.125', 1, 'Internet Explorer 8.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/goods.php'),
(1502958738, '180.173.18.125', 1, 'Internet Explorer 8.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958739, '180.173.18.125', 1, 'Internet Explorer 8.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958739, '180.173.18.125', 1, 'Internet Explorer 8.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958740, '180.173.18.125', 1, 'Internet Explorer 8.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958740, '180.173.18.125', 1, 'Internet Explorer 8.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958741, '180.173.18.125', 1, 'Internet Explorer 8.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/goods.php'),
(1502958741, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958742, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/goods.php'),
(1502958742, '180.173.18.125', 1, 'Internet Explorer 8.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958743, '180.173.18.125', 1, 'Internet Explorer 8.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958743, '180.173.18.125', 1, 'Internet Explorer 8.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958744, '180.173.18.125', 1, 'Internet Explorer 8.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958744, '180.173.18.125', 1, 'Internet Explorer 8.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958745, '180.173.18.125', 1, 'Internet Explorer 8.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958745, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958746, '180.173.18.125', 1, 'Internet Explorer 8.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958746, '180.173.18.125', 1, 'Internet Explorer 8.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958747, '180.173.18.125', 1, 'Internet Explorer 8.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958748, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/goods.php'),
(1502958748, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958749, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958750, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/goods.php'),
(1502958750, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/affiche.php'),
(1502958751, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958751, '180.173.18.125', 1, 'Internet Explorer 8.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958752, '180.173.18.125', 1, 'Internet Explorer 8.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/zd.php'),
(1502958752, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958753, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958753, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958754, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958755, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958755, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958756, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958756, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958757, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/goods.php'),
(1502958757, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958758, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958759, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/goods.php'),
(1502958759, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958760, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958760, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958761, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958761, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/zd.php'),
(1502958762, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958762, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958763, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958763, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958764, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958764, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958765, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958765, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958766, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958766, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958766, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958766, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958767, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958767, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958767, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958767, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/goods.php'),
(1502958767, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958768, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958768, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/goods.php'),
(1502958768, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958768, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958768, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958768, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958768, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958769, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/search.php'),
(1502958769, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/affiche.php'),
(1502958769, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958769, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958769, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958769, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958769, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/goods.php'),
(1502958769, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958769, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/goods.php'),
(1502958769, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958770, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958770, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/zd.php'),
(1502958770, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/search.php'),
(1502958770, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958770, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958770, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958770, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958770, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958770, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/goods.php'),
(1502958770, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958770, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958770, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958771, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958771, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958771, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958771, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/zd.php'),
(1502958771, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958771, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958771, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/goods.php'),
(1502958771, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/affiche.php'),
(1502958771, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958771, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/goods.php'),
(1502958771, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958771, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958771, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958771, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/search.php'),
(1502958772, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958772, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958772, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958772, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/zd.php'),
(1502958772, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958772, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958772, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958772, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958772, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958772, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958772, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958772, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/goods.php'),
(1502958772, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958772, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958773, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958773, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958773, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958773, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/search.php'),
(1502958773, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958773, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958773, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/zd.php'),
(1502958773, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958773, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958773, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958773, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958773, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958773, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/goods.php'),
(1502958773, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/goods.php'),
(1502958773, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/affiche.php'),
(1502958773, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958774, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958774, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958774, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958774, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/zd.php'),
(1502958774, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958774, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958774, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958774, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958774, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958774, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958774, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958774, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958774, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958774, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958774, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958775, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958775, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/search.php'),
(1502958775, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958775, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958775, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958775, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/zd.php'),
(1502958775, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958775, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958775, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958775, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958775, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/goods.php'),
(1502958775, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958775, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958775, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958775, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958775, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958776, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/affiche.php'),
(1502958776, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958776, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/search.php'),
(1502958776, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958776, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958776, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958776, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/zd.php'),
(1502958776, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958776, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958776, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958776, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958776, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958776, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958776, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958776, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958777, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958777, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958777, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958777, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958777, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/search.php'),
(1502958777, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958777, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958777, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/zd.php'),
(1502958777, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958777, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958777, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958777, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958777, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/goods.php'),
(1502958777, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958777, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958777, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958778, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958778, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958778, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/affiche.php'),
(1502958778, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958778, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958778, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958778, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/search.php'),
(1502958778, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958778, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958778, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958778, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958778, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958778, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958779, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958779, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958779, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958779, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958779, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958779, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958779, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958779, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958779, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958779, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958779, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958780, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958780, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/goods.php'),
(1502958780, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958780, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958780, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958780, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958780, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/affiche.php'),
(1502958780, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958780, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958780, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958780, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958780, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958781, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958781, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958781, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958781, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958781, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958781, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958781, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958781, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958781, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958781, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958781, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/auction.php'),
(1502958781, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958782, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/goods.php'),
(1502958782, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958782, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958782, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958782, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/affiche.php'),
(1502958782, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958782, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958782, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958782, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php');
INSERT INTO `ecs_stats` (`access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url`) VALUES
(1502958782, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958783, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/goods.php'),
(1502958783, '180.173.18.125', 1, 'Internet Explorer 8.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958783, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958783, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958783, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958783, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958783, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958783, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958783, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958784, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/goods.php'),
(1502958784, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958784, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958784, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/affiche.php'),
(1502958784, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958784, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958784, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958785, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958785, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/goods.php'),
(1502958785, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958785, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958785, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958785, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958785, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958786, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958786, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/goods.php'),
(1502958786, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958786, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958786, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/affiche.php'),
(1502958786, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958786, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958787, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/goods.php'),
(1502958787, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958787, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958787, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958787, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958788, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/goods.php'),
(1502958788, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958788, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/affiche.php'),
(1502958788, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958789, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958789, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/goods.php'),
(1502958789, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958789, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958789, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958790, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958790, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502958790, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/affiche.php'),
(1502958790, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958791, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958791, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958791, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958791, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958792, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958792, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/affiche.php'),
(1502958792, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958793, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958793, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958793, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958794, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958794, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/affiche.php'),
(1502958794, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958795, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958795, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958795, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958796, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958796, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/affiche.php'),
(1502958796, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958797, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958797, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958797, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958798, '180.173.18.125', 1, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1502958798, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958799, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958799, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/affiche.php'),
(1502958799, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958800, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958800, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958800, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958801, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958801, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/affiche.php'),
(1502958801, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958802, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/index.php'),
(1502958802, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958802, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958803, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958803, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958804, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958804, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958805, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958805, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958806, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958806, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958807, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958807, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958808, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958808, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958809, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958809, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958810, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958810, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958811, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958811, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958812, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958812, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958813, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958813, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958814, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958815, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958816, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958816, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958817, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958817, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958818, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958818, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958819, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958819, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958820, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958820, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958821, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958821, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958822, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958823, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958824, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958825, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958826, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958827, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958828, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958829, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502958830, '180.173.18.125', 1, 'Internet Explorer 7.0', 'Windows XP', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502959479, '180.173.18.125', 2, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php?act=logout', '/index.php'),
(1502959510, '101.226.33.203', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=6', '/flow.php'),
(1502959659, '180.173.18.125', 1, 'Unknow browser', 'Unknown', '', '[δ֪IP0801]', '', '', '/goods.php'),
(1502959704, '180.173.18.125', 1, 'Unknow browser', 'Unknown', '', '[δ֪IP0801]', '', '', '/user.php'),
(1502959747, '180.173.18.125', 3, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php?act=logout', '/index.php'),
(1502959832, '180.173.18.125', 1, 'Unknow browser', 'Unknown', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502959858, '180.173.18.125', 1, 'Unknow browser', 'Unknown', '', '[δ֪IP0801]', '', '', '/flow.php'),
(1502959976, '101.226.33.208', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/', '/goods.php'),
(1502960593, '101.226.33.225', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=6', '/flow.php'),
(1502960837, '180.168.202.246', 14, 'FireFox 54.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1502961132, '101.226.68.161', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/', '/flow.php'),
(1502961254, '101.226.89.119', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=6', '/flow.php'),
(1502961281, '101.226.85.67', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=6', '/flow.php'),
(1502961304, '101.226.33.227', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=6', '/flow.php'),
(1502961313, '101.226.66.173', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/flow.php', '/flow.php'),
(1502961422, '180.173.137.59', 64, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1502962194, '101.226.89.119', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=4', '/flow.php'),
(1502962301, '112.65.189.118', 8, 'Safari 537.36', 'Linux', 'zh-CN,en-US', 'IANA', 'http://xtime.netdns.com.cn', '/flow.php', '/index.php'),
(1502962301, '140.207.63.103', 1, 'FireFox 3.0b4', 'Windows XP', '', '', '', '', '/index.php'),
(1502962301, '101.226.69.112', 1, 'FireFox 3.0b4', 'Windows XP', '', 'IANA', '', '', '/index.php'),
(1502962375, '101.226.65.107', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/flow.php', '/flow.php'),
(1502962485, '101.226.33.208', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=4', '/flow.php'),
(1502962514, '117.185.27.113', 1, 'Safari 537.36', 'Linux', 'zh-CN,zh', '', '', '', '/flow.php'),
(1502962593, '180.163.2.117', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/flow.php', '/flow.php'),
(1502962879, '180.168.202.246', 15, 'FireFox 54.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1502963308, '101.226.89.119', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/flow.php', '/flow.php'),
(1502964158, '101.226.79.182', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/index.php?sort=time&order=asc', '/index.php'),
(1502964881, '101.226.33.239', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/user.php?act=address_list', '/user.php'),
(1502965028, '101.226.33.240', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/user.php', '/user.php'),
(1502965141, '101.226.89.119', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/user.php?act=address_list', '/user.php'),
(1502965159, '101.226.65.107', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/goods.php?id=7', '/goods.php'),
(1503052054, '101.81.96.236', 65, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1503052061, '101.81.96.236', 66, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/pc/index.php'),
(1503053878, '101.81.96.236', 4, 'Safari 603.2.4', 'Unknown', 'zh-cn', 'IANA', '', '', '/index.php'),
(1503053955, '101.81.96.236', 5, 'Safari 603.2.4', 'Unknown', 'zh-cn', 'IANA', '', '', '/pc/index.php'),
(1503054098, '101.81.96.236', 6, 'Safari 603.2.4', 'Unknown', 'zh-cn', 'IANA', 'http://xtime.netdns.com.cn', '/pc/user.php?act=register', '/user.php'),
(1503107451, '120.92.32.247', 1, 'Safari 537.36', 'Windows NT', 'zh,zh-CN', 'APNIC', '', '', '/index.php'),
(1503108038, '180.173.139.192', 7, 'Safari 603.2.4', 'Unknown', 'zh-cn', '[δ֪IP0801]', '', '', '/index.php'),
(1503108043, '180.173.139.192', 8, 'Safari 603.2.4', 'Unknown', 'zh-cn', '[δ֪IP0801]', '', '', '/pc/index.php'),
(1503108052, '183.3.239.163', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-cn', '[δ֪IP0801]', '', '', '/pc/index.php'),
(1503108054, '123.151.64.201', 1, 'Safari 600.1.4', 'Unknown', 'en,*', '', '', '', '/pc/index.php'),
(1503108054, '14.17.21.58', 1, 'Unknow browser', 'Unknown', 'zh-cn', '', 'http://xtime.netdns.com.cn', '/pc', '/pc/index.php'),
(1503108935, '180.168.202.246', 16, 'FireFox 54.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/pc/index.php'),
(1503110145, '183.131.67.206', 1, 'Safari 537.36', 'Linux', 'zh-CN,en-US', '[δ֪IP0801]', '', '', '/pc/index.php'),
(1503110172, '222.46.201.216', 1, 'Safari 537.36', 'Linux', 'zh-CN,en-US', '', '', '', '/pc/index.php'),
(1503111361, '180.168.202.246', 17, 'FireFox 54.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/pc/index.php'),
(1503119821, '115.239.138.180', 1, 'FireFox 50.0', 'Unknown', '', 'IANA', '', '', '/pc/index.php'),
(1503138204, '180.168.202.246', 18, 'FireFox 54.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/pc/index.php'),
(1503277312, '180.173.18.125', 5, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/pc/index.php'),
(1503277322, '101.226.89.121', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc', '/pc/index.php'),
(1503277331, '101.226.33.218', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/', '/pc/flow.php'),
(1503277354, '101.226.33.223', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/', '/pc/category.php'),
(1503277374, '101.226.125.104', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/category.php?id=1', '/pc/auction.php'),
(1503277386, '101.226.89.120', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/auction.php', '/pc/auction.php'),
(1503277436, '101.226.65.108', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/auction.php', '/pc/index.php'),
(1503277445, '101.226.33.200', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/index.php', '/pc/user.php'),
(1503277445, '101.226.99.197', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/user.php', '/pc/tool.php'),
(1503277452, '180.173.18.125', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/pc/auction.php'),
(1503277468, '61.151.226.202', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', '', 'http://xtime.netdns.com.cn', '/pc/user.php', '/pc/tool.php'),
(1503277543, '180.163.2.118', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/pc/index.php', '/pc/user.php'),
(1503277596, '101.226.33.228', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/auction.php?act=view&id=3', '/pc/goods.php'),
(1503277617, '101.226.89.116', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/index.php', '/pc/category.php'),
(1503277650, '101.226.33.228', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/auction.php', '/pc/auction.php'),
(1503277651, '101.226.33.204', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/auction.php?act=view&id=2', '/pc/goods.php'),
(1503277652, '101.226.33.218', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/auction.php?act=view&id=2', '/pc/auction.php'),
(1503277662, '101.226.66.177', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/index.php', '/pc/goods.php'),
(1503277667, '101.226.33.216', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/goods.php?id=2', '/pc/flow.php'),
(1503277886, '101.226.33.219', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/search.php?keywords=', '/pc/goods.php'),
(1503277888, '180.163.2.118', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/pc/goods.php?id=13', '/pc/flow.php'),
(1503277902, '180.173.18.125', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-CN', '[δ֪IP0801]', '', '', '/pc/search.php'),
(1503277990, '180.173.18.125', 1, 'Safari 537.36', 'Windows NT', 'zh-CN', '[δ֪IP0801]', '', '', '/pc/index.php'),
(1503278032, '101.226.66.177', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/auction.php', '/pc/search.php'),
(1503278854, '180.173.59.200', 67, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/pc/index.php'),
(1503278906, '180.168.202.246', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1503279030, '180.168.202.246', 19, 'FireFox 54.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1503279038, '180.168.202.246', 20, 'FireFox 54.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/pc/index.php'),
(1503284383, '180.173.59.200', 68, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/pc/index.php'),
(1503286497, '180.173.18.125', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1503286510, '101.226.33.217', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1503286559, '180.173.59.200', 69, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/pc/category.php?id=1', '/index.php'),
(1503286602, '180.173.59.200', 70, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/pc/', '/pc/category.php'),
(1503286610, '180.173.18.125', 2, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/pc/search.php?keywords=1111', '/pc/index.php'),
(1503286656, '101.226.33.204', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/auction.php', '/pc/search.php'),
(1503286662, '61.151.228.22', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', 'http://xtime.netdns.com.cn', '/pc/search.php?keywords=1111', '/pc/auction.php'),
(1503287165, '61.151.228.22', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', 'http://xtime.netdns.com.cn', '/pc/auction.php', '/pc/auction.php'),
(1503287173, '101.226.79.182', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/auction.php?act=view&id=1', '/pc/auction.php'),
(1503287827, '101.226.89.122', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/auction.php?act=view&id=1', '/pc/goods.php'),
(1503287846, '101.226.125.111', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/auction.php?act=view&id=1', '/pc/flow.php'),
(1503288068, '101.226.33.238', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/user.php', '/pc/user.php'),
(1503288069, '61.151.218.118', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', 'http://xtime.netdns.com.cn', '/pc/user.php?act=address_list', '/pc/region.php'),
(1503288075, '101.226.66.180', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/user.php?act=address_list', '/pc/user.php'),
(1503288694, '171.113.153.104', 1, 'Unknow browser', 'Unknown', 'zh-CN,zh', 'RIPE', '', '', '/pc/index.php'),
(1503289070, '101.226.66.180', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/user.php?act=order_list', '/pc/user.php'),
(1503289741, '101.226.66.173', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc', '/pc/index.php'),
(1503291639, '180.173.18.125', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/pc/index.php'),
(1503292129, '180.173.18.125', 4, 'Safari 603.2.4', 'Unknown', 'zh-cn', '[δ֪IP0801]', '', '', '/pc/index.php'),
(1503293178, '61.151.226.191', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', 'http://xtime.netdns.com.cn', '/pc/auction.php', '/pc/auction.php'),
(1503293354, '101.226.99.197', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/pc/auction.php'),
(1503293375, '101.226.33.237', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/pc/auction.php'),
(1503293379, '101.226.66.174', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/pc/auction.php'),
(1503293398, '180.173.18.125', 1, 'FireFox 54.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/pc/auction.php'),
(1503293479, '180.173.18.125', 3, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/pc/index.php'),
(1503293618, '180.173.18.125', 1, 'FireFox 54.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/pc/auction.php?act=view&id=3', '/pc/user.php'),
(1503293863, '101.226.125.16', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/auction.php?act=view&id=4', '/pc/auction.php'),
(1503293906, '101.226.65.107', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/auction.php?act=view&id=4', '/pc/goods.php'),
(1503294102, '101.226.33.239', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/pc/auction.php'),
(1503294105, '101.226.33.202', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/pc/auction.php'),
(1503294117, '101.226.65.107', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/pc/auction.php'),
(1503294144, '101.226.79.182', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/pc/auction.php'),
(1503294341, '101.226.66.177', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/user.php', '/pc/tool.php'),
(1503297453, '180.173.59.200', 7, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1503297480, '101.226.99.195', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1503297480, '123.151.64.201', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/goods.php'),
(1503298077, '101.226.66.179', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1503300652, '180.168.202.246', 21, 'FireFox 54.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1503300657, '180.168.202.246', 22, 'FireFox 54.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/pc/index.php'),
(1503300875, '180.168.202.246', 23, 'FireFox 54.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1503300880, '180.168.202.246', 24, 'FireFox 54.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/pc/index.php'),
(1503302110, '180.168.202.246', 25, 'FireFox 54.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/pc/user.php?act=register', '/user.php'),
(1503302162, '180.173.18.125', 4, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/pc/index.php'),
(1503302185, '180.168.202.246', 26, 'FireFox 54.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/pc/search.php?keywords=%E6%89%8B%E6%9C%BA', '/pc/user.php'),
(1503302337, '180.173.18.125', 5, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/pc/index.php'),
(1503302689, '61.151.228.22', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', 'http://xtime.netdns.com.cn', '/pc/index.php', '/pc/flow.php'),
(1503307490, '180.173.18.125', 6, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/pc/index.php', '/pc/user.php'),
(1503307511, '101.226.66.173', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/user.php', '/pc/tool.php'),
(1503307512, '101.226.66.172', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/user.php', '/pc/tool.php'),
(1503307513, '101.226.64.177', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/user.php', '/pc/tool.php'),
(1503307596, '101.226.65.105', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/user.php', '/pc/tool.php'),
(1503307603, '101.226.33.237', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/user.php', '/pc/tool.php'),
(1503307605, '101.226.33.239', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/user.php', '/pc/tool.php'),
(1503307718, '101.226.65.107', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/user.php?act=auction_list', '/pc/user.php'),
(1503307744, '101.226.66.172', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/user.php?act=order_list', '/pc/user.php'),
(1503307752, '101.226.89.121', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/user.php?act=order_list&page=2', '/pc/user.php'),
(1503307752, '101.226.66.180', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/user.php?act=order_list&page=2', '/pc/user.php'),
(1503307752, '101.226.66.174', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/user.php?act=order_list&page=2', '/pc/user.php'),
(1503307814, '180.163.2.116', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/pc/user.php?act=order_list&page=3', '/pc/user.php'),
(1503308890, '180.173.18.125', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/pc/index.php'),
(1503309280, '101.226.66.192', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/user.php', '/pc/user.php'),
(1503309344, '180.163.2.119', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/pc/user.php?act=address_list', '/pc/user.php'),
(1503309352, '101.226.64.177', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/user.php?act=address_list', '/pc/region.php'),
(1503309353, '101.226.33.237', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/user.php?act=address_list', '/pc/region.php'),
(1503309354, '101.226.66.187', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/user.php?act=address_list', '/pc/region.php'),
(1503309365, '101.226.33.200', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/user.php?act=address_list', '/pc/user.php'),
(1503309415, '101.226.33.204', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/user.php?act=address_list', '/pc/region.php'),
(1503309419, '61.151.226.199', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', '', 'http://xtime.netdns.com.cn', '/pc/user.php?act=address_list', '/pc/region.php'),
(1503309440, '101.226.99.196', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/user.php?act=address_list', '/pc/region.php'),
(1503309444, '101.226.33.237', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/user.php?act=address_list', '/pc/region.php'),
(1503309504, '101.226.66.180', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/user.php?act=account&page=3', '/pc/user.php'),
(1503309511, '101.226.89.119', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/user.php?act=account&page=2', '/pc/user.php'),
(1503309539, '101.226.66.172', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/user.php?act=account&page=3', '/pc/user.php'),
(1503310808, '180.173.18.125', 2, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/pc/auction.php', '/pc/auction.php'),
(1503310840, '101.226.125.100', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/user.php', '/pc/tool.php'),
(1503310842, '101.226.33.202', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/user.php', '/pc/user.php'),
(1503310872, '61.151.218.118', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', '', 'http://xtime.netdns.com.cn', '/pc/user.php', '/pc/tool.php'),
(1503310926, '180.173.18.125', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/pc/user.php?act=password', '/pc/user.php'),
(1503310970, '61.151.218.119', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', '', 'http://xtime.netdns.com.cn', '/pc/user.php?act=password', '/pc/tool.php'),
(1503311956, '180.163.2.88', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/pc/user.php?act=password', '/pc/tool.php'),
(1503312000, '101.226.33.224', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/user.php?act=password', '/pc/tool.php'),
(1503312039, '101.226.33.220', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/user.php', '/pc/tool.php'),
(1503312051, '101.226.33.203', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/user.php', '/pc/tool.php'),
(1503312191, '101.226.66.180', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/user.php', '/pc/tool.php'),
(1503312358, '101.226.64.177', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/user.php?act=account', '/pc/flow.php'),
(1503312443, '61.151.218.119', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', '', 'http://xtime.netdns.com.cn', '/pc/goods.php?id=11', '/pc/goods.php'),
(1503312557, '101.226.99.196', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/auction.php', '/pc/auction.php'),
(1503312700, '180.173.18.125', 7, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/pc/auction.php', '/pc/user.php'),
(1503312710, '101.226.66.180', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/auction.php', '/pc/user.php'),
(1503312711, '101.226.33.224', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/user.php', '/pc/flow.php'),
(1503312884, '180.163.2.117', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/pc/index.php', '/pc/goods.php'),
(1503312885, '180.163.2.116', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/pc/goods.php?id=4', '/pc/goods.php'),
(1503313041, '101.226.33.219', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/index.php', '/pc/goods.php'),
(1503313043, '101.226.33.221', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/goods.php?id=6', '/pc/flow.php'),
(1503313043, '61.151.226.191', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', 'http://xtime.netdns.com.cn', '/pc/goods.php?id=6', '/pc/goods.php'),
(1503313055, '101.226.33.221', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc/flow.php', '/pc/flow.php'),
(1503371135, '116.226.60.89', 8, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/pc/index.php'),
(1503373032, '101.226.33.228', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1503373490, '180.173.52.57', 4, 'Unknow browser', 'Windows NT', 'zh-CN', '[δ֪IP0801]', '', '', '/index.php'),
(1503373698, '116.226.60.89', 9, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', 'http://xtime.netdns.com.cn', '/pc/auction.php', '/pc/flow.php'),
(1503374500, '180.168.202.246', 27, 'FireFox 54.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1503560279, '180.173.138.235', 5, 'Unknow browser', 'Windows NT', 'zh-CN', '[δ֪IP0801]', '', '', '/index.php'),
(1503560310, '183.3.239.170', 1, 'Internet Explorer 9.0', 'Windows NT', 'zh-cn', '[δ֪IP0801]', '', '', '/index.php'),
(1503560311, '14.17.3.65', 1, 'Unknow browser', 'Unknown', 'zh-cn', '', '', '', '/index.php'),
(1503560320, '123.151.64.201', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1503560385, '61.160.120.26', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/index.php'),
(1503576751, '183.209.111.58', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1503585342, '36.149.143.232', 2, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1503629820, '223.104.210.252', 2, 'Safari 602.1', 'Unknown', 'zh-cn', 'IANA', '', '', '/index.php'),
(1503632187, '180.168.202.246', 28, 'FireFox 54.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1503639486, '180.168.202.246', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1503639736, '14.17.3.64', 1, 'Unknow browser', 'Unknown', 'zh-cn', '', '', '', '/index.php'),
(1503639759, '101.226.33.205', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', 'http://xtime.netdns.com.cn', '/pc', '/pc/index.php'),
(1503639817, '101.226.102.97', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1503640162, '180.168.202.246', 29, 'FireFox 54.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1503640178, '180.173.137.93', 6, 'Unknow browser', 'Windows NT', 'zh-CN', '[δ֪IP0801]', '', '', '/index.php'),
(1503640886, '180.168.202.246', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1503640941, '101.226.33.208', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1503641006, '101.226.66.172', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1503641035, '101.226.102.97', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/goods.php'),
(1503641078, '180.163.2.88', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/index.php'),
(1503641080, '101.226.65.102', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1503641175, '101.226.89.121', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1503641279, '101.226.68.161', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1503641374, '101.226.33.217', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1503641461, '180.163.2.88', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/user.php'),
(1503641486, '101.226.99.197', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1503641546, '101.226.33.206', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1503641576, '101.226.33.220', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1503641579, '101.226.33.227', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1503641584, '101.226.66.180', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1503641684, '101.226.33.204', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1503641728, '101.226.68.161', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1503641733, '101.226.33.200', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1503641770, '180.163.2.118', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/user.php'),
(1503641793, '101.226.33.202', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1503641797, '61.151.226.189', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/user.php'),
(1503641804, '101.226.33.217', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1503641868, '180.163.2.119', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/user.php'),
(1503641989, '180.168.202.246', 2, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php?act=logout', '/index.php'),
(1503641996, '101.226.65.108', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1503642085, '101.226.99.197', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php'),
(1503642094, '61.151.218.119', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/user.php'),
(1503642165, '101.226.33.204', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1503642270, '101.226.66.192', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1503642307, '61.151.226.199', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', '', '', '', '/user.php'),
(1503642484, '101.226.33.200', 1, 'Safari 537.36', 'Unknown', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1503642525, '101.226.65.105', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1503642534, '61.151.228.22', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', '', '', '', '/user.php'),
(1503642553, '101.226.66.181', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1503642786, '180.163.2.116', 1, 'FireFox 50.0', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/search.php?keywords=10', '/search.php'),
(1503642935, '180.168.202.246', 3, 'Safari 601.1', 'Unknown', 'zh-CN,zh', '[δ֪IP0801]', 'http://xtime.netdns.com.cn', '/user.php?act=logout', '/index.php'),
(1503642961, '101.226.89.119', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/user.php'),
(1503643087, '180.163.2.119', 1, 'Unknow browser', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/goods.php'),
(1503643219, '101.226.125.16', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1503643221, '101.226.66.192', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/flow.php'),
(1503643754, '101.226.125.104', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/auction.php'),
(1503644286, '101.226.33.206', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/auction.php'),
(1503649617, '107.178.194.18', 1, 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/index.php');

-- --------------------------------------------------------

--
-- 表的结构 `ecs_suppliers`
--

CREATE TABLE IF NOT EXISTS `ecs_suppliers` (
  `suppliers_id` smallint(5) unsigned NOT NULL,
  `suppliers_name` varchar(255) DEFAULT NULL,
  `suppliers_desc` mediumtext,
  `is_check` tinyint(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecs_tag`
--

CREATE TABLE IF NOT EXISTS `ecs_tag` (
  `tag_id` mediumint(8) NOT NULL,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `tag_words` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_tag`
--

INSERT INTO `ecs_tag` (`tag_id`, `user_id`, `goods_id`, `tag_words`) VALUES
(1, 0, 7, '积分抵扣'),
(2, 0, 7, '限量活动');

-- --------------------------------------------------------

--
-- 表的结构 `ecs_template`
--

CREATE TABLE IF NOT EXISTS `ecs_template` (
  `filename` varchar(30) NOT NULL DEFAULT '',
  `region` varchar(40) NOT NULL DEFAULT '',
  `library` varchar(40) NOT NULL DEFAULT '',
  `sort_order` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `number` tinyint(1) unsigned NOT NULL DEFAULT '5',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `theme` varchar(60) NOT NULL DEFAULT '',
  `remarks` varchar(30) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_template`
--

INSERT INTO `ecs_template` (`filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks`) VALUES
('index', '左边区域', '/library/vote_list.lbi', 8, 0, 0, 0, 'default', ''),
('index', '左边区域', '/library/email_list.lbi', 9, 0, 0, 0, 'default', ''),
('index', '左边区域', '/library/order_query.lbi', 6, 0, 0, 0, 'default', ''),
('index', '左边区域', '/library/cart.lbi', 0, 0, 0, 0, 'default', ''),
('index', '左边区域', '/library/promotion_info.lbi', 3, 0, 0, 0, 'default', ''),
('index', '左边区域', '/library/auction.lbi', 4, 0, 3, 0, 'default', ''),
('index', '左边区域', '/library/group_buy.lbi', 5, 0, 3, 0, 'default', ''),
('index', '', '/library/recommend_promotion.lbi', 0, 0, 4, 0, 'default', ''),
('index', '右边主区域', '/library/recommend_hot.lbi', 2, 0, 10, 0, 'default', ''),
('index', '右边主区域', '/library/recommend_new.lbi', 1, 0, 10, 0, 'default', ''),
('index', '右边主区域', '/library/recommend_best.lbi', 0, 0, 10, 0, 'default', ''),
('index', '左边区域', '/library/invoice_query.lbi', 7, 0, 0, 0, 'default', ''),
('index', '左边区域', '/library/top10.lbi', 2, 0, 0, 0, 'default', ''),
('index', '左边区域', '/library/category_tree.lbi', 1, 0, 0, 0, 'default', ''),
('index', '', '/library/brands.lbi', 0, 0, 11, 0, 'default', ''),
('category', '左边区域', '/library/category_tree.lbi', 1, 0, 0, 0, 'default', ''),
('category', '右边区域', '/library/recommend_best.lbi', 0, 0, 5, 0, 'default', ''),
('category', '右边区域', '/library/goods_list.lbi', 1, 0, 0, 0, 'default', ''),
('category', '右边区域', '/library/pages.lbi', 2, 0, 0, 0, 'default', ''),
('category', '左边区域', '/library/cart.lbi', 0, 0, 0, 0, 'default', ''),
('category', '左边区域', '/library/price_grade.lbi', 3, 0, 0, 0, 'default', ''),
('category', '左边区域', '/library/filter_attr.lbi', 2, 0, 0, 0, 'default', '');

-- --------------------------------------------------------

--
-- 表的结构 `ecs_topic`
--

CREATE TABLE IF NOT EXISTS `ecs_topic` (
  `topic_id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '''''',
  `intro` text NOT NULL,
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(10) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `template` varchar(255) NOT NULL DEFAULT '''''',
  `css` text NOT NULL,
  `topic_img` varchar(255) DEFAULT NULL,
  `title_pic` varchar(255) DEFAULT NULL,
  `base_style` char(6) DEFAULT NULL,
  `htmls` mediumtext,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecs_users`
--

CREATE TABLE IF NOT EXISTS `ecs_users` (
  `user_id` mediumint(8) unsigned NOT NULL,
  `email` varchar(60) NOT NULL DEFAULT '',
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `question` varchar(255) NOT NULL DEFAULT '',
  `answer` varchar(255) NOT NULL DEFAULT '',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `birthday` date NOT NULL DEFAULT '0000-00-00',
  `user_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `frozen_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pay_points` int(10) unsigned NOT NULL DEFAULT '0',
  `rank_points` int(10) unsigned NOT NULL DEFAULT '0',
  `address_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `reg_time` int(10) unsigned NOT NULL DEFAULT '0',
  `last_login` int(11) unsigned NOT NULL DEFAULT '0',
  `last_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_ip` varchar(15) NOT NULL DEFAULT '',
  `visit_count` smallint(5) unsigned NOT NULL DEFAULT '0',
  `user_rank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_special` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ec_salt` varchar(10) DEFAULT NULL,
  `salt` varchar(10) NOT NULL DEFAULT '0',
  `parent_id` mediumint(9) NOT NULL DEFAULT '0',
  `flag` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `alias` varchar(60) NOT NULL,
  `msn` varchar(60) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `office_phone` varchar(20) NOT NULL,
  `home_phone` varchar(20) NOT NULL,
  `mobile_phone` varchar(20) NOT NULL,
  `is_validated` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `credit_line` decimal(10,2) unsigned NOT NULL,
  `passwd_question` varchar(50) DEFAULT NULL,
  `passwd_answer` varchar(255) DEFAULT NULL,
  `avatar` varchar(200) NOT NULL,
  `nick_name` varchar(40) NOT NULL,
  `expire_rank` int(10) DEFAULT '0' COMMENT '购买等级过期时间'
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_users`
--

INSERT INTO `ecs_users` (`user_id`, `email`, `user_name`, `password`, `question`, `answer`, `sex`, `birthday`, `user_money`, `frozen_money`, `pay_points`, `rank_points`, `address_id`, `reg_time`, `last_login`, `last_time`, `last_ip`, `visit_count`, `user_rank`, `is_special`, `ec_salt`, `salt`, `parent_id`, `flag`, `alias`, `msn`, `qq`, `office_phone`, `home_phone`, `mobile_phone`, `is_validated`, `credit_line`, `passwd_question`, `passwd_answer`, `avatar`, `nick_name`, `expire_rank`) VALUES
(1, '', '17740827552', '5602f41419f7b4bbb8563940403181fd', '', '', 0, '0000-00-00', '0.00', '0.00', 0, 0, 0, 1493788747, 1494294757, '0000-00-00 00:00:00', '180.168.202.246', 80, 0, 0, '6224', '0', 0, 0, '', '', '', '', '', '', 0, '0.00', NULL, NULL, '', '', 0),
(2, '123@123.com', 'test123', 'ecc3899f7b1debf92754b4c0cb2247ea', '', '', 2, '2000-07-19', '8542049.58', '0.00', 1753, 1753, 32, 1494717435, 1503312731, '0000-00-00 00:00:00', '180.173.18.125', 5245, 3, 0, '1828', '0', 0, 0, '', '', '', '', '', '13412341234', 0, '0.00', NULL, NULL, '/upload/image/20170821/1503312794402160.jpg', '补补', 1534302476),
(4, '18896525512@xtime.com', '18896525512', '46431d5e42bd4bfdd12811e80a27332d', '', '', 2, '1996-11-18', '996120.24', '0.00', 50937, 937, 26, 1495393102, 1503642378, '0000-00-00 00:00:00', '180.168.202.246', 1462, 2, 0, '82', '0', 0, 0, '', '', '', '', '', '18896525512', 0, '0.00', NULL, NULL, '/upload/image/20170821/1503279400212768.png', 'somi', 1534303504),
(3, '13627395233@xtime.com', '13627395233', '70418fdcae96f731879780ce3790aaf0', '', '', 0, '0000-00-00', '0.00', '0.00', 0, 0, 0, 1495137609, 1495430535, '0000-00-00 00:00:00', '180.168.202.246', 33, 0, 0, '2148', '0', 0, 0, '', '', '', '', '', '13627395233', 0, '0.00', NULL, NULL, '', '', 0),
(5, '18117358949@xtime.com', '18117358949', '63bf77fa28fb49829adf249b5a7b1298', '', '', 0, '0000-00-00', '997615.00', '0.00', 0, 0, 0, 1496773571, 1502196775, '0000-00-00 00:00:00', '61.152.171.68', 312, 0, 0, '6297', '0', 0, 0, '', '', '', '', '', '18117358949', 0, '0.00', NULL, NULL, '', '', 0),
(6, '12345666@qq.com', '123', '445834e595ef381e087ad05629eb7fff', '', '', 0, '1957-01-01', '90260066.01', '50.00', 0, 0, 0, 1502839441, 1502959762, '0000-00-00 00:00:00', '180.173.18.125', 9, 0, 0, '9452', '0', 0, 0, '', '', '', '', '', '', 0, '0.00', NULL, NULL, '', '', 0),
(7, '18656371852@xtime.com', '18656371852', 'e10adc3949ba59abbe56e057f20f883e', '', '', 0, '0000-00-00', '0.00', '0.00', 0, 0, 0, 1502925767, 1502954567, '0000-00-00 00:00:00', '180.173.18.125', 1, 0, 0, NULL, '0', 0, 0, '', '', '', '', '', '18656371852', 0, '0.00', NULL, NULL, '', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `ecs_user_account`
--

CREATE TABLE IF NOT EXISTS `ecs_user_account` (
  `id` mediumint(8) unsigned NOT NULL,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `admin_user` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `add_time` int(10) NOT NULL DEFAULT '0',
  `paid_time` int(10) NOT NULL DEFAULT '0',
  `admin_note` varchar(255) NOT NULL,
  `user_note` varchar(255) NOT NULL,
  `process_type` tinyint(1) NOT NULL DEFAULT '0',
  `payment` varchar(90) NOT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_user_account`
--

INSERT INTO `ecs_user_account` (`id`, `user_id`, `admin_user`, `amount`, `add_time`, `paid_time`, `admin_note`, `user_note`, `process_type`, `payment`, `is_paid`) VALUES
(1, 6, 'admin', '99999999.99', 1502868601, 1502868601, '', '', 0, '', 1);

-- --------------------------------------------------------

--
-- 表的结构 `ecs_user_address`
--

CREATE TABLE IF NOT EXISTS `ecs_user_address` (
  `address_id` mediumint(8) unsigned NOT NULL,
  `address_name` varchar(50) NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `consignee` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `country` smallint(5) NOT NULL DEFAULT '0',
  `province` smallint(5) NOT NULL DEFAULT '0',
  `city` smallint(5) NOT NULL DEFAULT '0',
  `district` smallint(5) NOT NULL DEFAULT '0',
  `address` varchar(120) NOT NULL DEFAULT '',
  `zipcode` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `mobile` varchar(60) NOT NULL DEFAULT '',
  `sign_building` varchar(120) NOT NULL DEFAULT '',
  `best_time` varchar(120) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_user_address`
--

INSERT INTO `ecs_user_address` (`address_id`, `address_name`, `user_id`, `consignee`, `email`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `sign_building`, `best_time`) VALUES
(13, '', 5, '大放送', '', 1, 10, 109, 1222, '天潼路118号', '', '12345678945', '', '', ''),
(27, '', 4, '12', '', 1, 6, 70, 853, '1212', '', '18896525512', '', '', ''),
(26, '', 4, '张颜', '', 1, 10, 109, 1225, '111', '', '18896525512', '', '', ''),
(30, '', 6, '嘻嘻', '', 1, 3, 38, 422, '13111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111zzzqqqqqqq', '', '131111111111111111111111111111111111111111111111111111111111', '', '', ''),
(33, '', 2, '二恶烷认为', '', 1, 18, 205, 2149, '微软微软日日日日日日日日', '额为温热微软', '让微软我', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `ecs_user_bonus`
--

CREATE TABLE IF NOT EXISTS `ecs_user_bonus` (
  `bonus_id` mediumint(8) unsigned NOT NULL,
  `bonus_type_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `bonus_sn` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `used_time` int(10) unsigned NOT NULL DEFAULT '0',
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `emailed` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecs_user_feed`
--

CREATE TABLE IF NOT EXISTS `ecs_user_feed` (
  `feed_id` mediumint(8) unsigned NOT NULL,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `value_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `feed_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_feed` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecs_user_rank`
--

CREATE TABLE IF NOT EXISTS `ecs_user_rank` (
  `rank_id` tinyint(3) unsigned NOT NULL,
  `rank_name` varchar(30) NOT NULL DEFAULT '',
  `min_points` int(10) unsigned NOT NULL DEFAULT '0',
  `max_points` int(10) unsigned NOT NULL DEFAULT '0',
  `discount` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `show_price` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `special_rank` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `year_points` int(10) DEFAULT '0' COMMENT '兑换一年的需要的积分，针对特殊会员组等级'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_user_rank`
--

INSERT INTO `ecs_user_rank` (`rank_id`, `rank_name`, `min_points`, `max_points`, `discount`, `show_price`, `special_rank`, `year_points`) VALUES
(1, '注册用户', 0, 10000, 100, 1, 0, 0),
(2, 'N', 0, 0, 98, 0, 1, 50000),
(3, 'R', 0, 0, 95, 1, 1, 200000),
(4, 'SR', 0, 0, 90, 1, 1, 800000),
(5, 'SSR', 0, 0, 80, 1, 1, 1800000);

-- --------------------------------------------------------

--
-- 表的结构 `ecs_user_reg_status`
--

CREATE TABLE IF NOT EXISTS `ecs_user_reg_status` (
  `user_id` int(11) NOT NULL,
  `is_completed` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecs_version`
--

CREATE TABLE IF NOT EXISTS `ecs_version` (
  `id` int(10) unsigned NOT NULL,
  `platform` tinyint(4) NOT NULL DEFAULT '3',
  `version` char(50) DEFAULT NULL,
  `url` char(200) DEFAULT NULL,
  `content` char(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecs_virtual_card`
--

CREATE TABLE IF NOT EXISTS `ecs_virtual_card` (
  `card_id` mediumint(8) NOT NULL,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `card_sn` varchar(60) NOT NULL DEFAULT '',
  `card_password` varchar(60) NOT NULL DEFAULT '',
  `add_date` int(11) NOT NULL DEFAULT '0',
  `end_date` int(11) NOT NULL DEFAULT '0',
  `is_saled` tinyint(1) NOT NULL DEFAULT '0',
  `order_sn` varchar(20) NOT NULL DEFAULT '',
  `crc32` varchar(12) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecs_volume_price`
--

CREATE TABLE IF NOT EXISTS `ecs_volume_price` (
  `price_type` tinyint(1) unsigned NOT NULL,
  `goods_id` mediumint(8) unsigned NOT NULL,
  `volume_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `volume_price` decimal(10,2) NOT NULL DEFAULT '0.00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ecs_volume_price`
--

INSERT INTO `ecs_volume_price` (`price_type`, `goods_id`, `volume_number`, `volume_price`) VALUES
(1, 12, 10, '1.00');

-- --------------------------------------------------------

--
-- 表的结构 `ecs_vote`
--

CREATE TABLE IF NOT EXISTS `ecs_vote` (
  `vote_id` smallint(5) unsigned NOT NULL,
  `vote_name` varchar(250) NOT NULL DEFAULT '',
  `start_time` int(11) unsigned NOT NULL DEFAULT '0',
  `end_time` int(11) unsigned NOT NULL DEFAULT '0',
  `can_multi` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `vote_count` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecs_vote_log`
--

CREATE TABLE IF NOT EXISTS `ecs_vote_log` (
  `log_id` mediumint(8) unsigned NOT NULL,
  `vote_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ip_address` varchar(15) NOT NULL DEFAULT '',
  `vote_time` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecs_vote_option`
--

CREATE TABLE IF NOT EXISTS `ecs_vote_option` (
  `option_id` smallint(5) unsigned NOT NULL,
  `vote_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `option_name` varchar(250) NOT NULL DEFAULT '',
  `option_count` int(8) unsigned NOT NULL DEFAULT '0',
  `option_order` tinyint(3) unsigned NOT NULL DEFAULT '100'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `ecs_wholesale`
--

CREATE TABLE IF NOT EXISTS `ecs_wholesale` (
  `act_id` mediumint(8) unsigned NOT NULL,
  `goods_id` mediumint(8) unsigned NOT NULL,
  `goods_name` varchar(255) NOT NULL,
  `rank_ids` varchar(255) NOT NULL,
  `prices` text NOT NULL,
  `enabled` tinyint(3) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ecs_account_log`
--
ALTER TABLE `ecs_account_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `ecs_ad`
--
ALTER TABLE `ecs_ad`
  ADD PRIMARY KEY (`ad_id`),
  ADD KEY `position_id` (`position_id`),
  ADD KEY `enabled` (`enabled`);

--
-- Indexes for table `ecs_admin_action`
--
ALTER TABLE `ecs_admin_action`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `ecs_admin_log`
--
ALTER TABLE `ecs_admin_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `log_time` (`log_time`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `ecs_admin_message`
--
ALTER TABLE `ecs_admin_message`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `sender_id` (`sender_id`,`receiver_id`),
  ADD KEY `receiver_id` (`receiver_id`);

--
-- Indexes for table `ecs_admin_user`
--
ALTER TABLE `ecs_admin_user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `user_name` (`user_name`),
  ADD KEY `agency_id` (`agency_id`);

--
-- Indexes for table `ecs_adsense`
--
ALTER TABLE `ecs_adsense`
  ADD KEY `from_ad` (`from_ad`);

--
-- Indexes for table `ecs_ad_custom`
--
ALTER TABLE `ecs_ad_custom`
  ADD PRIMARY KEY (`ad_id`);

--
-- Indexes for table `ecs_ad_position`
--
ALTER TABLE `ecs_ad_position`
  ADD PRIMARY KEY (`position_id`);

--
-- Indexes for table `ecs_affiliate_log`
--
ALTER TABLE `ecs_affiliate_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `ecs_agency`
--
ALTER TABLE `ecs_agency`
  ADD PRIMARY KEY (`agency_id`),
  ADD KEY `agency_name` (`agency_name`);

--
-- Indexes for table `ecs_area_region`
--
ALTER TABLE `ecs_area_region`
  ADD PRIMARY KEY (`shipping_area_id`,`region_id`);

--
-- Indexes for table `ecs_article`
--
ALTER TABLE `ecs_article`
  ADD PRIMARY KEY (`article_id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Indexes for table `ecs_article_cat`
--
ALTER TABLE `ecs_article_cat`
  ADD PRIMARY KEY (`cat_id`),
  ADD KEY `cat_type` (`cat_type`),
  ADD KEY `sort_order` (`sort_order`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `ecs_attribute`
--
ALTER TABLE `ecs_attribute`
  ADD PRIMARY KEY (`attr_id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Indexes for table `ecs_auction_log`
--
ALTER TABLE `ecs_auction_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `act_id` (`act_id`);

--
-- Indexes for table `ecs_auto_manage`
--
ALTER TABLE `ecs_auto_manage`
  ADD PRIMARY KEY (`item_id`,`type`);

--
-- Indexes for table `ecs_back_goods`
--
ALTER TABLE `ecs_back_goods`
  ADD PRIMARY KEY (`rec_id`),
  ADD KEY `back_id` (`back_id`),
  ADD KEY `goods_id` (`goods_id`);

--
-- Indexes for table `ecs_back_order`
--
ALTER TABLE `ecs_back_order`
  ADD PRIMARY KEY (`back_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `ecs_bonus_type`
--
ALTER TABLE `ecs_bonus_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `ecs_booking_goods`
--
ALTER TABLE `ecs_booking_goods`
  ADD PRIMARY KEY (`rec_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `ecs_brand`
--
ALTER TABLE `ecs_brand`
  ADD PRIMARY KEY (`brand_id`),
  ADD KEY `is_show` (`is_show`);

--
-- Indexes for table `ecs_callback_status`
--
ALTER TABLE `ecs_callback_status`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ind_type_type_id` (`type`,`type_id`) USING BTREE,
  ADD KEY `date_time` (`date_time`),
  ADD KEY `ind_status` (`status`) USING BTREE;

--
-- Indexes for table `ecs_card`
--
ALTER TABLE `ecs_card`
  ADD PRIMARY KEY (`card_id`);

--
-- Indexes for table `ecs_cart`
--
ALTER TABLE `ecs_cart`
  ADD PRIMARY KEY (`rec_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `ecs_category`
--
ALTER TABLE `ecs_category`
  ADD PRIMARY KEY (`cat_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `ecs_cat_recommend`
--
ALTER TABLE `ecs_cat_recommend`
  ADD PRIMARY KEY (`cat_id`,`recommend_type`);

--
-- Indexes for table `ecs_cert`
--
ALTER TABLE `ecs_cert`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cert_config_id_index` (`config_id`);

--
-- Indexes for table `ecs_coincidence`
--
ALTER TABLE `ecs_coincidence`
  ADD PRIMARY KEY (`type_id`,`type`);

--
-- Indexes for table `ecs_collect_goods`
--
ALTER TABLE `ecs_collect_goods`
  ADD PRIMARY KEY (`rec_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `goods_id` (`goods_id`),
  ADD KEY `is_attention` (`is_attention`);

--
-- Indexes for table `ecs_comment`
--
ALTER TABLE `ecs_comment`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `id_value` (`id_value`);

--
-- Indexes for table `ecs_config`
--
ALTER TABLE `ecs_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecs_crons`
--
ALTER TABLE `ecs_crons`
  ADD PRIMARY KEY (`cron_id`),
  ADD KEY `nextime` (`nextime`),
  ADD KEY `enable` (`enable`),
  ADD KEY `cron_code` (`cron_code`);

--
-- Indexes for table `ecs_delivery_goods`
--
ALTER TABLE `ecs_delivery_goods`
  ADD PRIMARY KEY (`rec_id`),
  ADD KEY `delivery_id` (`delivery_id`,`goods_id`),
  ADD KEY `goods_id` (`goods_id`);

--
-- Indexes for table `ecs_delivery_order`
--
ALTER TABLE `ecs_delivery_order`
  ADD PRIMARY KEY (`delivery_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `ecs_device`
--
ALTER TABLE `ecs_device`
  ADD UNIQUE KEY `device_user_id_unique` (`user_id`),
  ADD KEY `device_device_id_index` (`device_id`),
  ADD KEY `device_device_type_index` (`device_type`),
  ADD KEY `device_platform_type_index` (`platform_type`),
  ADD KEY `device_status_index` (`status`);

--
-- Indexes for table `ecs_email_list`
--
ALTER TABLE `ecs_email_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecs_email_sendlist`
--
ALTER TABLE `ecs_email_sendlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecs_error_log`
--
ALTER TABLE `ecs_error_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `time` (`time`);

--
-- Indexes for table `ecs_exchange_goods`
--
ALTER TABLE `ecs_exchange_goods`
  ADD PRIMARY KEY (`goods_id`);

--
-- Indexes for table `ecs_favourable_activity`
--
ALTER TABLE `ecs_favourable_activity`
  ADD PRIMARY KEY (`act_id`),
  ADD KEY `act_name` (`act_name`);

--
-- Indexes for table `ecs_feedback`
--
ALTER TABLE `ecs_feedback`
  ADD PRIMARY KEY (`msg_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `ecs_friend_link`
--
ALTER TABLE `ecs_friend_link`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `show_order` (`show_order`);

--
-- Indexes for table `ecs_goods`
--
ALTER TABLE `ecs_goods`
  ADD PRIMARY KEY (`goods_id`),
  ADD KEY `goods_sn` (`goods_sn`),
  ADD KEY `cat_id` (`cat_id`),
  ADD KEY `last_update` (`last_update`),
  ADD KEY `brand_id` (`brand_id`),
  ADD KEY `goods_weight` (`goods_weight`),
  ADD KEY `promote_end_date` (`promote_end_date`),
  ADD KEY `promote_start_date` (`promote_start_date`),
  ADD KEY `goods_number` (`goods_number`),
  ADD KEY `sort_order` (`sort_order`);

--
-- Indexes for table `ecs_goods_activity`
--
ALTER TABLE `ecs_goods_activity`
  ADD PRIMARY KEY (`act_id`),
  ADD KEY `act_name` (`act_name`,`act_type`,`goods_id`);

--
-- Indexes for table `ecs_goods_article`
--
ALTER TABLE `ecs_goods_article`
  ADD PRIMARY KEY (`goods_id`,`article_id`,`admin_id`);

--
-- Indexes for table `ecs_goods_attr`
--
ALTER TABLE `ecs_goods_attr`
  ADD PRIMARY KEY (`goods_attr_id`),
  ADD KEY `goods_id` (`goods_id`),
  ADD KEY `attr_id` (`attr_id`);

--
-- Indexes for table `ecs_goods_cat`
--
ALTER TABLE `ecs_goods_cat`
  ADD PRIMARY KEY (`goods_id`,`cat_id`);

--
-- Indexes for table `ecs_goods_gallery`
--
ALTER TABLE `ecs_goods_gallery`
  ADD PRIMARY KEY (`img_id`),
  ADD KEY `goods_id` (`goods_id`);

--
-- Indexes for table `ecs_goods_type`
--
ALTER TABLE `ecs_goods_type`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `ecs_group_goods`
--
ALTER TABLE `ecs_group_goods`
  ADD PRIMARY KEY (`parent_id`,`goods_id`,`admin_id`);

--
-- Indexes for table `ecs_keywords`
--
ALTER TABLE `ecs_keywords`
  ADD PRIMARY KEY (`date`,`searchengine`,`keyword`);

--
-- Indexes for table `ecs_link_goods`
--
ALTER TABLE `ecs_link_goods`
  ADD PRIMARY KEY (`goods_id`,`link_goods_id`,`admin_id`);

--
-- Indexes for table `ecs_mail_templates`
--
ALTER TABLE `ecs_mail_templates`
  ADD PRIMARY KEY (`template_id`),
  ADD UNIQUE KEY `template_code` (`template_code`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `ecs_member_price`
--
ALTER TABLE `ecs_member_price`
  ADD PRIMARY KEY (`price_id`),
  ADD KEY `goods_id` (`goods_id`,`user_rank`);

--
-- Indexes for table `ecs_nav`
--
ALTER TABLE `ecs_nav`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `ifshow` (`ifshow`);

--
-- Indexes for table `ecs_order_action`
--
ALTER TABLE `ecs_order_action`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `ecs_order_goods`
--
ALTER TABLE `ecs_order_goods`
  ADD PRIMARY KEY (`rec_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `goods_id` (`goods_id`);

--
-- Indexes for table `ecs_order_info`
--
ALTER TABLE `ecs_order_info`
  ADD PRIMARY KEY (`order_id`),
  ADD UNIQUE KEY `order_sn` (`order_sn`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `order_status` (`order_status`),
  ADD KEY `shipping_status` (`shipping_status`),
  ADD KEY `pay_status` (`pay_status`),
  ADD KEY `shipping_id` (`shipping_id`),
  ADD KEY `pay_id` (`pay_id`),
  ADD KEY `extension_code` (`extension_code`,`extension_id`),
  ADD KEY `agency_id` (`agency_id`);

--
-- Indexes for table `ecs_order_review`
--
ALTER TABLE `ecs_order_review`
  ADD UNIQUE KEY `order_review_user_id_order_id_goods_id_unique` (`user_id`,`order_id`,`goods_id`);

--
-- Indexes for table `ecs_pack`
--
ALTER TABLE `ecs_pack`
  ADD PRIMARY KEY (`pack_id`);

--
-- Indexes for table `ecs_package_goods`
--
ALTER TABLE `ecs_package_goods`
  ADD PRIMARY KEY (`package_id`,`goods_id`,`admin_id`,`product_id`);

--
-- Indexes for table `ecs_payment`
--
ALTER TABLE `ecs_payment`
  ADD PRIMARY KEY (`pay_id`),
  ADD UNIQUE KEY `pay_code` (`pay_code`);

--
-- Indexes for table `ecs_pay_log`
--
ALTER TABLE `ecs_pay_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `ecs_plugins`
--
ALTER TABLE `ecs_plugins`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `ecs_products`
--
ALTER TABLE `ecs_products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `ecs_push`
--
ALTER TABLE `ecs_push`
  ADD PRIMARY KEY (`id`),
  ADD KEY `push_user_id_index` (`user_id`),
  ADD KEY `push_title_index` (`title`),
  ADD KEY `push_content_index` (`content`),
  ADD KEY `push_photo_index` (`photo`),
  ADD KEY `push_objectid_index` (`objectId`),
  ADD KEY `push_link_index` (`link`),
  ADD KEY `push_status_index` (`status`);

--
-- Indexes for table `ecs_rank_log`
--
ALTER TABLE `ecs_rank_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecs_region`
--
ALTER TABLE `ecs_region`
  ADD PRIMARY KEY (`region_id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `region_type` (`region_type`),
  ADD KEY `agency_id` (`agency_id`);

--
-- Indexes for table `ecs_reg_extend_info`
--
ALTER TABLE `ecs_reg_extend_info`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `ecs_reg_fields`
--
ALTER TABLE `ecs_reg_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecs_role`
--
ALTER TABLE `ecs_role`
  ADD PRIMARY KEY (`role_id`),
  ADD KEY `user_name` (`role_name`);

--
-- Indexes for table `ecs_searchengine`
--
ALTER TABLE `ecs_searchengine`
  ADD PRIMARY KEY (`date`,`searchengine`);

--
-- Indexes for table `ecs_search_history`
--
ALTER TABLE `ecs_search_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecs_sessions`
--
ALTER TABLE `ecs_sessions`
  ADD PRIMARY KEY (`sesskey`),
  ADD KEY `expiry` (`expiry`);

--
-- Indexes for table `ecs_sessions_data`
--
ALTER TABLE `ecs_sessions_data`
  ADD PRIMARY KEY (`sesskey`),
  ADD KEY `expiry` (`expiry`);

--
-- Indexes for table `ecs_shipping`
--
ALTER TABLE `ecs_shipping`
  ADD PRIMARY KEY (`shipping_id`),
  ADD KEY `shipping_code` (`shipping_code`,`enabled`);

--
-- Indexes for table `ecs_shipping_area`
--
ALTER TABLE `ecs_shipping_area`
  ADD PRIMARY KEY (`shipping_area_id`),
  ADD KEY `shipping_id` (`shipping_id`);

--
-- Indexes for table `ecs_shop_bind`
--
ALTER TABLE `ecs_shop_bind`
  ADD PRIMARY KEY (`shop_id`);

--
-- Indexes for table `ecs_shop_config`
--
ALTER TABLE `ecs_shop_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `ecs_snatch_log`
--
ALTER TABLE `ecs_snatch_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `snatch_id` (`snatch_id`);

--
-- Indexes for table `ecs_sns`
--
ALTER TABLE `ecs_sns`
  ADD UNIQUE KEY `sns_user_id_unique` (`user_id`),
  ADD KEY `sns_open_id_index` (`open_id`),
  ADD KEY `sns_vendor_index` (`vendor`);

--
-- Indexes for table `ecs_stats`
--
ALTER TABLE `ecs_stats`
  ADD KEY `access_time` (`access_time`);

--
-- Indexes for table `ecs_suppliers`
--
ALTER TABLE `ecs_suppliers`
  ADD PRIMARY KEY (`suppliers_id`);

--
-- Indexes for table `ecs_tag`
--
ALTER TABLE `ecs_tag`
  ADD PRIMARY KEY (`tag_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `goods_id` (`goods_id`);

--
-- Indexes for table `ecs_template`
--
ALTER TABLE `ecs_template`
  ADD KEY `filename` (`filename`,`region`),
  ADD KEY `theme` (`theme`),
  ADD KEY `remarks` (`remarks`);

--
-- Indexes for table `ecs_topic`
--
ALTER TABLE `ecs_topic`
  ADD KEY `topic_id` (`topic_id`);

--
-- Indexes for table `ecs_users`
--
ALTER TABLE `ecs_users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`),
  ADD KEY `email` (`email`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `flag` (`flag`);

--
-- Indexes for table `ecs_user_account`
--
ALTER TABLE `ecs_user_account`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `is_paid` (`is_paid`);

--
-- Indexes for table `ecs_user_address`
--
ALTER TABLE `ecs_user_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `ecs_user_bonus`
--
ALTER TABLE `ecs_user_bonus`
  ADD PRIMARY KEY (`bonus_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `ecs_user_feed`
--
ALTER TABLE `ecs_user_feed`
  ADD PRIMARY KEY (`feed_id`);

--
-- Indexes for table `ecs_user_rank`
--
ALTER TABLE `ecs_user_rank`
  ADD PRIMARY KEY (`rank_id`);

--
-- Indexes for table `ecs_version`
--
ALTER TABLE `ecs_version`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecs_virtual_card`
--
ALTER TABLE `ecs_virtual_card`
  ADD PRIMARY KEY (`card_id`),
  ADD KEY `goods_id` (`goods_id`),
  ADD KEY `car_sn` (`card_sn`),
  ADD KEY `is_saled` (`is_saled`);

--
-- Indexes for table `ecs_volume_price`
--
ALTER TABLE `ecs_volume_price`
  ADD PRIMARY KEY (`price_type`,`goods_id`,`volume_number`);

--
-- Indexes for table `ecs_vote`
--
ALTER TABLE `ecs_vote`
  ADD PRIMARY KEY (`vote_id`);

--
-- Indexes for table `ecs_vote_log`
--
ALTER TABLE `ecs_vote_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `vote_id` (`vote_id`);

--
-- Indexes for table `ecs_vote_option`
--
ALTER TABLE `ecs_vote_option`
  ADD PRIMARY KEY (`option_id`),
  ADD KEY `vote_id` (`vote_id`);

--
-- Indexes for table `ecs_wholesale`
--
ALTER TABLE `ecs_wholesale`
  ADD PRIMARY KEY (`act_id`),
  ADD KEY `goods_id` (`goods_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ecs_account_log`
--
ALTER TABLE `ecs_account_log`
  MODIFY `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=109;
--
-- AUTO_INCREMENT for table `ecs_ad`
--
ALTER TABLE `ecs_ad`
  MODIFY `ad_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ecs_admin_action`
--
ALTER TABLE `ecs_admin_action`
  MODIFY `action_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=136;
--
-- AUTO_INCREMENT for table `ecs_admin_log`
--
ALTER TABLE `ecs_admin_log`
  MODIFY `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=169;
--
-- AUTO_INCREMENT for table `ecs_admin_message`
--
ALTER TABLE `ecs_admin_message`
  MODIFY `message_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_admin_user`
--
ALTER TABLE `ecs_admin_user`
  MODIFY `user_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ecs_ad_custom`
--
ALTER TABLE `ecs_ad_custom`
  MODIFY `ad_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_ad_position`
--
ALTER TABLE `ecs_ad_position`
  MODIFY `position_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ecs_affiliate_log`
--
ALTER TABLE `ecs_affiliate_log`
  MODIFY `log_id` mediumint(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_agency`
--
ALTER TABLE `ecs_agency`
  MODIFY `agency_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_article`
--
ALTER TABLE `ecs_article`
  MODIFY `article_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=92;
--
-- AUTO_INCREMENT for table `ecs_article_cat`
--
ALTER TABLE `ecs_article_cat`
  MODIFY `cat_id` smallint(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `ecs_attribute`
--
ALTER TABLE `ecs_attribute`
  MODIFY `attr_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ecs_auction_log`
--
ALTER TABLE `ecs_auction_log`
  MODIFY `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `ecs_back_goods`
--
ALTER TABLE `ecs_back_goods`
  MODIFY `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_back_order`
--
ALTER TABLE `ecs_back_order`
  MODIFY `back_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_bonus_type`
--
ALTER TABLE `ecs_bonus_type`
  MODIFY `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_booking_goods`
--
ALTER TABLE `ecs_booking_goods`
  MODIFY `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_brand`
--
ALTER TABLE `ecs_brand`
  MODIFY `brand_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_callback_status`
--
ALTER TABLE `ecs_callback_status`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_card`
--
ALTER TABLE `ecs_card`
  MODIFY `card_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_cart`
--
ALTER TABLE `ecs_cart`
  MODIFY `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=289;
--
-- AUTO_INCREMENT for table `ecs_category`
--
ALTER TABLE `ecs_category`
  MODIFY `cat_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `ecs_cert`
--
ALTER TABLE `ecs_cert`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_collect_goods`
--
ALTER TABLE `ecs_collect_goods`
  MODIFY `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `ecs_comment`
--
ALTER TABLE `ecs_comment`
  MODIFY `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_config`
--
ALTER TABLE `ecs_config`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_crons`
--
ALTER TABLE `ecs_crons`
  MODIFY `cron_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_delivery_goods`
--
ALTER TABLE `ecs_delivery_goods`
  MODIFY `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `ecs_delivery_order`
--
ALTER TABLE `ecs_delivery_order`
  MODIFY `delivery_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `ecs_email_list`
--
ALTER TABLE `ecs_email_list`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_email_sendlist`
--
ALTER TABLE `ecs_email_sendlist`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_error_log`
--
ALTER TABLE `ecs_error_log`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_favourable_activity`
--
ALTER TABLE `ecs_favourable_activity`
  MODIFY `act_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_feedback`
--
ALTER TABLE `ecs_feedback`
  MODIFY `msg_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_friend_link`
--
ALTER TABLE `ecs_friend_link`
  MODIFY `link_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ecs_goods`
--
ALTER TABLE `ecs_goods`
  MODIFY `goods_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `ecs_goods_activity`
--
ALTER TABLE `ecs_goods_activity`
  MODIFY `act_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `ecs_goods_attr`
--
ALTER TABLE `ecs_goods_attr`
  MODIFY `goods_attr_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `ecs_goods_gallery`
--
ALTER TABLE `ecs_goods_gallery`
  MODIFY `img_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `ecs_goods_type`
--
ALTER TABLE `ecs_goods_type`
  MODIFY `cat_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ecs_mail_templates`
--
ALTER TABLE `ecs_mail_templates`
  MODIFY `template_id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `ecs_member_price`
--
ALTER TABLE `ecs_member_price`
  MODIFY `price_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_nav`
--
ALTER TABLE `ecs_nav`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_order_action`
--
ALTER TABLE `ecs_order_action`
  MODIFY `action_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `ecs_order_goods`
--
ALTER TABLE `ecs_order_goods`
  MODIFY `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT for table `ecs_order_info`
--
ALTER TABLE `ecs_order_info`
  MODIFY `order_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT for table `ecs_pack`
--
ALTER TABLE `ecs_pack`
  MODIFY `pack_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_payment`
--
ALTER TABLE `ecs_payment`
  MODIFY `pay_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ecs_pay_log`
--
ALTER TABLE `ecs_pay_log`
  MODIFY `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT for table `ecs_products`
--
ALTER TABLE `ecs_products`
  MODIFY `product_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ecs_push`
--
ALTER TABLE `ecs_push`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_rank_log`
--
ALTER TABLE `ecs_rank_log`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `ecs_region`
--
ALTER TABLE `ecs_region`
  MODIFY `region_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4044;
--
-- AUTO_INCREMENT for table `ecs_reg_extend_info`
--
ALTER TABLE `ecs_reg_extend_info`
  MODIFY `Id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_reg_fields`
--
ALTER TABLE `ecs_reg_fields`
  MODIFY `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT for table `ecs_role`
--
ALTER TABLE `ecs_role`
  MODIFY `role_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_search_history`
--
ALTER TABLE `ecs_search_history`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_shipping`
--
ALTER TABLE `ecs_shipping`
  MODIFY `shipping_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ecs_shipping_area`
--
ALTER TABLE `ecs_shipping_area`
  MODIFY `shipping_area_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ecs_shop_bind`
--
ALTER TABLE `ecs_shop_bind`
  MODIFY `shop_id` int(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_shop_config`
--
ALTER TABLE `ecs_shop_config`
  MODIFY `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=906;
--
-- AUTO_INCREMENT for table `ecs_snatch_log`
--
ALTER TABLE `ecs_snatch_log`
  MODIFY `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_suppliers`
--
ALTER TABLE `ecs_suppliers`
  MODIFY `suppliers_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_tag`
--
ALTER TABLE `ecs_tag`
  MODIFY `tag_id` mediumint(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ecs_topic`
--
ALTER TABLE `ecs_topic`
  MODIFY `topic_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_users`
--
ALTER TABLE `ecs_users`
  MODIFY `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `ecs_user_account`
--
ALTER TABLE `ecs_user_account`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ecs_user_address`
--
ALTER TABLE `ecs_user_address`
  MODIFY `address_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `ecs_user_bonus`
--
ALTER TABLE `ecs_user_bonus`
  MODIFY `bonus_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_user_feed`
--
ALTER TABLE `ecs_user_feed`
  MODIFY `feed_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_user_rank`
--
ALTER TABLE `ecs_user_rank`
  MODIFY `rank_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `ecs_version`
--
ALTER TABLE `ecs_version`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_virtual_card`
--
ALTER TABLE `ecs_virtual_card`
  MODIFY `card_id` mediumint(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_vote`
--
ALTER TABLE `ecs_vote`
  MODIFY `vote_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_vote_log`
--
ALTER TABLE `ecs_vote_log`
  MODIFY `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_vote_option`
--
ALTER TABLE `ecs_vote_option`
  MODIFY `option_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ecs_wholesale`
--
ALTER TABLE `ecs_wholesale`
  MODIFY `act_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
