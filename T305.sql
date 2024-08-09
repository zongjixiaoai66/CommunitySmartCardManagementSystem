/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t305`;
CREATE DATABASE IF NOT EXISTS `t305` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t305`;

DROP TABLE IF EXISTS `cheliangruku`;
CREATE TABLE IF NOT EXISTS `cheliangruku` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `cheliangruku_name` varchar(200) DEFAULT NULL COMMENT '车辆单位 Search111',
  `cheliangruku_yanse` varchar(200) DEFAULT NULL COMMENT '车辆颜色',
  `cheliangruku_types` int DEFAULT NULL COMMENT '车辆状态 Search111',
  `churu_types` int DEFAULT NULL COMMENT '出入类型 Search111',
  `yonghu_id` int DEFAULT NULL COMMENT '业主',
  `cheliangruku_time` timestamp NULL DEFAULT NULL COMMENT '出入库时间',
  `cheliangruku_content` text COMMENT '车辆详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '记录时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='停车登记';

DELETE FROM `cheliangruku`;
INSERT INTO `cheliangruku` (`id`, `cheliangruku_name`, `cheliangruku_yanse`, `cheliangruku_types`, `churu_types`, `yonghu_id`, `cheliangruku_time`, `cheliangruku_content`, `insert_time`, `create_time`) VALUES
	(1, '车辆单位1', '车辆颜色1', 3, 2, 2, '2022-04-14 01:41:29', '车辆详情1', '2022-04-14 01:41:29', '2022-04-14 01:41:29'),
	(2, '车辆单位2', '车辆颜色2', 2, 1, 1, '2022-04-14 01:41:29', '车辆详情2', '2022-04-14 01:41:29', '2022-04-14 01:41:29'),
	(3, '车辆单位3', '车辆颜色3', 1, 1, 3, '2022-04-14 01:41:29', '车辆详情3', '2022-04-14 01:41:29', '2022-04-14 01:41:29'),
	(4, '车辆单位4', '车辆颜色4', 1, 2, 2, '2022-04-14 01:41:29', '车辆详情4', '2022-04-14 01:41:29', '2022-04-14 01:41:29'),
	(5, '车辆单位5', '车辆颜色5', 1, 1, 2, '2022-04-14 01:41:29', '车辆详情5', '2022-04-14 01:41:29', '2022-04-14 01:41:29'),
	(6, '车辆单位6', '车辆颜色6', 2, 1, 2, '2022-04-05 16:00:00', '<p><span style="color: rgb(96, 98, 102);">车辆详情6</span></p>', '2022-04-14 02:22:21', '2022-04-14 02:22:21');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3 COMMENT='字典表';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'yezhufuwu_types', '服务类型', 1, '智能卡挂失补办', NULL, NULL, '2022-04-14 01:39:37'),
	(2, 'yezhufuwu_types', '服务类型', 2, '业主投诉', NULL, NULL, '2022-04-14 01:39:37'),
	(3, 'yezhufuwu_types', '服务类型', 3, '业主报修', NULL, NULL, '2022-04-14 01:39:37'),
	(4, 'yezhufuwu_yesno_types', '处理状态', 1, '审核中', NULL, NULL, '2022-04-14 01:39:38'),
	(5, 'yezhufuwu_yesno_types', '处理状态', 2, '通过', NULL, NULL, '2022-04-14 01:39:38'),
	(6, 'yezhufuwu_yesno_types', '处理状态', 3, '拒绝', NULL, NULL, '2022-04-14 01:39:38'),
	(7, 'churu_types', '出入类型', 1, '出', NULL, NULL, '2022-04-14 01:39:38'),
	(8, 'churu_types', '出入类型', 2, '入', NULL, NULL, '2022-04-14 01:39:38'),
	(9, 'cheliangruku_types', '车辆状态', 1, '车辆状态1', NULL, NULL, '2022-04-14 01:39:38'),
	(10, 'cheliangruku_types', '车辆状态', 2, '车辆状态2', NULL, NULL, '2022-04-14 01:39:38'),
	(11, 'cheliangruku_types', '车辆状态', 3, '车辆状态3', NULL, NULL, '2022-04-14 01:39:38'),
	(12, 'feiyong_types', '费用类型', 1, '租户收费', NULL, NULL, '2022-04-14 01:39:38'),
	(13, 'feiyong_types', '费用类型', 2, '售户收费', NULL, NULL, '2022-04-14 01:39:38'),
	(14, 'feiyong_types', '费用类型', 3, '欠费业主', NULL, NULL, '2022-04-14 01:39:38'),
	(15, 'news_types', '公告类型', 1, '公告类型1', NULL, NULL, '2022-04-14 01:39:38'),
	(16, 'news_types', '公告类型', 2, '公告类型2', NULL, NULL, '2022-04-14 01:39:38'),
	(17, 'news_types', '公告类型', 3, '公告类型3', NULL, NULL, '2022-04-14 01:39:38'),
	(18, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-04-14 01:39:38'),
	(19, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-04-14 01:39:38');

DROP TABLE IF EXISTS `feiyong`;
CREATE TABLE IF NOT EXISTS `feiyong` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `feiyong_name` varchar(200) DEFAULT NULL COMMENT '标题 Search111',
  `feiyong_types` int DEFAULT NULL COMMENT '费用类型 Search111',
  `feiyong_money` decimal(10,2) DEFAULT NULL COMMENT '涉及金额',
  `yonghu_id` int DEFAULT NULL COMMENT '业主',
  `renyuan_jieguo` varchar(200) DEFAULT NULL COMMENT '收费结果',
  `feiyong_content` text COMMENT '详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='费用信息';

DELETE FROM `feiyong`;
INSERT INTO `feiyong` (`id`, `feiyong_name`, `feiyong_types`, `feiyong_money`, `yonghu_id`, `renyuan_jieguo`, `feiyong_content`, `create_time`) VALUES
	(1, '标题1', 3, 901.29, 2, '收费结果1', '详情1', '2022-04-14 01:41:29'),
	(2, '标题2', 1, 259.35, 3, '收费结果2', '详情2', '2022-04-14 01:41:29'),
	(3, '标题3', 1, 362.83, 2, '收费结果3', '详情3', '2022-04-14 01:41:29'),
	(4, '标题4', 2, 16.99, 2, '收费结果4', '详情4', '2022-04-14 01:41:29'),
	(5, '标题5', 2, 912.16, 2, '收费结果5', '详情5', '2022-04-14 01:41:29');

DROP TABLE IF EXISTS `liuyan`;
CREATE TABLE IF NOT EXISTS `liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `liuyan_name` varchar(200) DEFAULT NULL COMMENT '留言标题  Search111 ',
  `liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='留言版';

DELETE FROM `liuyan`;
INSERT INTO `liuyan` (`id`, `yonghu_id`, `liuyan_name`, `liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 2, '留言标题1', '留言内容1', '2022-04-14 01:41:29', '回复信息1', '2022-04-14 01:41:29', '2022-04-14 01:41:29'),
	(2, 2, '留言标题2', '留言内容2', '2022-04-14 01:41:29', '回复信息2', '2022-04-14 01:41:29', '2022-04-14 01:41:29'),
	(3, 2, '留言标题3', '留言内容3', '2022-04-14 01:41:29', '回复信息3', '2022-04-14 01:41:29', '2022-04-14 01:41:29'),
	(4, 1, '留言标题4', '留言内容4', '2022-04-14 01:41:29', '回复信息4', '2022-04-14 01:41:29', '2022-04-14 01:41:29'),
	(5, 3, '留言标题5', '留言内容5', '2022-04-14 01:41:29', '回复信息5', '2022-04-14 01:41:29', '2022-04-14 01:41:29'),
	(6, 1, '添加留言', '要留言的内容', '2022-04-14 02:20:49', '可以回复', '2022-04-14 02:22:49', '2022-04-14 02:20:49');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '公告标题1', 3, 'http://localhost:8080/xiaoquwuyezhinengka/upload/news1.jpg', '2022-04-14 01:41:29', '公告详情1', '2022-04-14 01:41:29'),
	(2, '公告标题2', 3, 'http://localhost:8080/xiaoquwuyezhinengka/upload/news2.jpg', '2022-04-14 01:41:29', '公告详情2', '2022-04-14 01:41:29'),
	(3, '公告标题3', 1, 'http://localhost:8080/xiaoquwuyezhinengka/upload/news3.jpg', '2022-04-14 01:41:29', '公告详情3', '2022-04-14 01:41:29'),
	(4, '公告标题4', 2, 'http://localhost:8080/xiaoquwuyezhinengka/upload/news4.jpg', '2022-04-14 01:41:29', '公告详情4', '2022-04-14 01:41:29'),
	(5, '公告标题5', 2, 'http://localhost:8080/xiaoquwuyezhinengka/upload/news5.jpg', '2022-04-14 01:41:29', '公告详情5', '2022-04-14 01:41:29');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'a1', 'yonghu', '业主', 'mpuc5dnnli5jj6ps77rxhpn0aqktxgs8', '2022-04-14 02:00:31', '2024-07-30 07:08:42'),
	(2, 1, 'admin', 'users', '管理员', 'dta2qa6ufjacil454tu4nvncxwme7xl0', '2022-04-14 02:03:19', '2024-07-30 07:07:38'),
	(3, 2, 'a2', 'yonghu', '业主', 'ckb096dxcam77ysmrpd41xwat8clcyeo', '2022-04-14 02:21:47', '2022-04-14 03:21:48');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2022-04-30 16:00:00');

DROP TABLE IF EXISTS `yezhufuwu`;
CREATE TABLE IF NOT EXISTS `yezhufuwu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '业主',
  `yezhufuwu_name` varchar(200) DEFAULT NULL COMMENT '服务标题 Search111',
  `yezhufuwu_types` int DEFAULT NULL COMMENT '服务类型 Search111',
  `yezhufuwu_content` text COMMENT '详情',
  `yezhufuwu_yesno_types` int DEFAULT NULL COMMENT '处理状态 Search111',
  `yezhufuwu_yesno_text` text COMMENT '处理结果',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='业主服务';

DELETE FROM `yezhufuwu`;
INSERT INTO `yezhufuwu` (`id`, `yonghu_id`, `yezhufuwu_name`, `yezhufuwu_types`, `yezhufuwu_content`, `yezhufuwu_yesno_types`, `yezhufuwu_yesno_text`, `insert_time`, `create_time`) VALUES
	(1, 3, '服务标题1', 3, '详情1', 1, NULL, '2022-04-14 01:41:29', '2022-04-14 01:41:29'),
	(2, 1, '服务标题2', 1, '详情2', 1, NULL, '2022-04-14 01:41:29', '2022-04-14 01:41:29'),
	(3, 2, '服务标题3', 1, '详情3', 1, NULL, '2022-04-14 01:41:29', '2022-04-14 01:41:29'),
	(4, 3, '服务标题4', 1, '详情4', 1, NULL, '2022-04-14 01:41:29', '2022-04-14 01:41:29'),
	(5, 3, '服务标题5', 3, '详情5', 1, NULL, '2022-04-14 01:41:29', '2022-04-14 01:41:29'),
	(6, 1, '业主的服务有很多种（管理可以添加修改删除服务类型）', 1, '<p>详情信息</p>', 1, '', '2022-04-14 02:21:37', '2022-04-14 02:21:37');

DROP TABLE IF EXISTS `yezhufuwu_commentback`;
CREATE TABLE IF NOT EXISTS `yezhufuwu_commentback` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yezhufuwu_id` int DEFAULT NULL COMMENT '服务',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `yezhufuwu_commentback_text` text COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='服务评价';

DELETE FROM `yezhufuwu_commentback`;
INSERT INTO `yezhufuwu_commentback` (`id`, `yezhufuwu_id`, `yonghu_id`, `yezhufuwu_commentback_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 3, '评价内容1', '2022-04-14 01:41:29', '回复信息1', '2022-04-14 01:41:29', '2022-04-14 01:41:29'),
	(2, 2, 1, '评价内容2', '2022-04-14 01:41:29', '回复信息2', '2022-04-14 01:41:29', '2022-04-14 01:41:29'),
	(3, 3, 3, '评价内容3', '2022-04-14 01:41:29', '回复信息3', '2022-04-14 01:41:29', '2022-04-14 01:41:29'),
	(4, 4, 1, '评价内容4', '2022-04-14 01:41:29', '回复信息4', '2022-04-14 01:41:29', '2022-04-14 01:41:29'),
	(5, 5, 2, '评价内容5', '2022-04-14 01:41:29', '回复信息5', '2022-04-14 01:41:29', '2022-04-14 01:41:29');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '业主姓名 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='业主';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_photo`, `yonghu_phone`, `yonghu_email`, `sex_types`, `yonghu_delete`, `create_time`) VALUES
	(1, '业主1', '123456', '业主姓名1', 'http://localhost:8080/xiaoquwuyezhinengka/upload/yonghu1.jpg', '17703786901', '1@qq.com', 1, 1, '2022-04-14 01:41:29'),
	(2, '业主2', '123456', '业主姓名2', 'http://localhost:8080/xiaoquwuyezhinengka/upload/yonghu2.jpg', '17703786902', '2@qq.com', 2, 1, '2022-04-14 01:41:29'),
	(3, '业主3', '123456', '业主姓名3', 'http://localhost:8080/xiaoquwuyezhinengka/upload/yonghu3.jpg', '17703786903', '3@qq.com', 2, 1, '2022-04-14 01:41:29');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
