/*
Navicat MySQL Data Transfer

Source Server         : mysql8080
Source Server Version : 50732
Source Host           : localhost:3306
Source Database       : yiyuanziyuanguanli

Target Server Type    : MYSQL
Target Server Version : 50732
File Encoding         : 65001

Date: 2022-05-07 14:56:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bingshi
-- ----------------------------
DROP TABLE IF EXISTS `bingshi`;
CREATE TABLE `bingshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yisheng_id` int(11) DEFAULT NULL COMMENT '发布医生',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `bingshi_name` varchar(200) DEFAULT NULL COMMENT '病名 Search111',
  `bingshi_bingyin` varchar(200) DEFAULT NULL COMMENT '病因',
  `bingshi_xianzhuang` varchar(200) DEFAULT NULL COMMENT '现状',
  `bingshi_text` text COMMENT '药单',
  `bingshi_jinji` varchar(200) DEFAULT NULL COMMENT '禁忌',
  `bingshi_zhuyishixiang` varchar(200) DEFAULT NULL COMMENT '注意事项',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='病史';

-- ----------------------------
-- Records of bingshi
-- ----------------------------
INSERT INTO `bingshi` VALUES ('1', '2', '3', '病名1', '病因1', '现状1', '药单1', '禁忌1', '注意事项1', '2022-02-24 17:34:16');
INSERT INTO `bingshi` VALUES ('2', '3', '1', '病名2', '病因2', '现状2', '药单2', '禁忌2', '注意事项2', '2022-02-24 17:34:16');
INSERT INTO `bingshi` VALUES ('3', '2', '3', '病名3', '病因3', '现状3', '药单3', '禁忌3', '注意事项3', '2022-02-24 17:34:16');
INSERT INTO `bingshi` VALUES ('4', '3', '2', '病名4', '病因4', '现状4', '药单4', '禁忌4', '注意事项4', '2022-02-24 17:34:16');
INSERT INTO `bingshi` VALUES ('5', '3', '3', '病名5', '病因5', '现状5', '药单5', '禁忌5', '注意事项5', '2022-02-24 17:34:16');
INSERT INTO `bingshi` VALUES ('12', '1', '3', '病名6', '病因6', '现状6', '药单6', '禁忌6', '注意事项6', '2022-02-24 19:07:03');

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES ('1', '轮播图1', 'http://localhost:8080/yiyuanziyuanguanli/upload/config1.jpg');
INSERT INTO `config` VALUES ('2', '轮播图2', 'http://localhost:8080/yiyuanziyuanguanli/upload/config2.jpg');
INSERT INTO `config` VALUES ('3', '轮播图3', 'http://localhost:8080/yiyuanziyuanguanli/upload/config3.jpg');

-- ----------------------------
-- Table structure for dictionary
-- ----------------------------
DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='字典表';

-- ----------------------------
-- Records of dictionary
-- ----------------------------
INSERT INTO `dictionary` VALUES ('1', 'yaopin_types', '药品类型', '1', '药品类型1', null, null, '2022-02-24 17:31:35');
INSERT INTO `dictionary` VALUES ('2', 'yaopin_types', '药品类型', '2', '药品类型2', null, null, '2022-02-24 17:31:35');
INSERT INTO `dictionary` VALUES ('3', 'yaopin_types', '药品类型', '3', '药品类型3', null, null, '2022-02-24 17:31:35');
INSERT INTO `dictionary` VALUES ('4', 'sex_types', '性别', '1', '男', null, null, '2022-02-24 17:31:35');
INSERT INTO `dictionary` VALUES ('5', 'sex_types', '性别', '2', '女', null, null, '2022-02-24 17:31:35');
INSERT INTO `dictionary` VALUES ('6', 'yisheng_types', '科室', '1', '科室1', null, null, '2022-02-24 17:31:35');
INSERT INTO `dictionary` VALUES ('7', 'yisheng_types', '科室', '2', '科室2', null, null, '2022-02-24 17:31:35');
INSERT INTO `dictionary` VALUES ('8', 'yisheng_types', '科室', '3', '科室3', null, null, '2022-02-24 17:31:35');
INSERT INTO `dictionary` VALUES ('9', 'yishengyuyue_yesno_types', '预约结果', '1', '未处理', null, null, '2022-02-24 17:31:35');
INSERT INTO `dictionary` VALUES ('10', 'yishengyuyue_yesno_types', '预约结果', '2', '同意', null, null, '2022-02-24 17:31:35');
INSERT INTO `dictionary` VALUES ('11', 'yishengyuyue_yesno_types', '预约结果', '3', '拒绝', null, null, '2022-02-24 17:31:35');
INSERT INTO `dictionary` VALUES ('12', 'news_types', '公告信息类型', '1', '公告信息类型1', null, null, '2022-02-24 17:31:35');
INSERT INTO `dictionary` VALUES ('13', 'news_types', '公告信息类型', '2', '公告信息类型2', null, null, '2022-02-24 17:31:35');
INSERT INTO `dictionary` VALUES ('14', 'news_types', '公告信息类型', '3', '公告信息类型3', null, null, '2022-02-24 17:31:35');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告信息标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告信息类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告信息图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告信息时间',
  `news_content` text COMMENT '公告信息详情',
  `news_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '公告信息标题1', '1', 'http://localhost:8080/yiyuanziyuanguanli/upload/news1.jpg', '2022-02-24 17:34:16', '公告信息详情1', '1', '2022-02-24 17:34:16');
INSERT INTO `news` VALUES ('2', '公告信息标题2', '2', 'http://localhost:8080/yiyuanziyuanguanli/upload/news2.jpg', '2022-02-24 17:34:16', '公告信息详情2', '1', '2022-02-24 17:34:16');
INSERT INTO `news` VALUES ('3', '公告信息标题3', '1', 'http://localhost:8080/yiyuanziyuanguanli/upload/news3.jpg', '2022-02-24 17:34:16', '公告信息详情3', '1', '2022-02-24 17:34:16');
INSERT INTO `news` VALUES ('4', '公告信息标题4', '2', 'http://localhost:8080/yiyuanziyuanguanli/upload/news4.jpg', '2022-02-24 17:34:16', '公告信息详情4', '1', '2022-02-24 17:34:16');
INSERT INTO `news` VALUES ('5', '公告信息标题5', '2', 'http://localhost:8080/yiyuanziyuanguanli/upload/news5.jpg', '2022-02-24 17:34:16', '公告信息详情5', '1', '2022-02-24 17:34:16');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES ('1', '1', 'admin', 'users', '管理员', 'z76miigkhuo720qkc0qhq2lfhxleg3im', '2022-02-24 17:44:06', '2022-05-07 15:45:26');
INSERT INTO `token` VALUES ('2', '1', 'a1', 'yonghu', '用户', 's02ofo8tsjfdou7lpa3mgbqz7cxgz6rz', '2022-02-24 17:48:33', '2022-05-07 15:31:56');
INSERT INTO `token` VALUES ('3', '1', 'a1', 'yisheng', '医生', 'p6l7r1016k2q4f6dykggw3fi4m4ax8lf', '2022-02-24 17:54:51', '2022-05-07 15:45:05');
INSERT INTO `token` VALUES ('4', '2', 'a2', 'yisheng', '医生', '1p0vn7uisxlcbitalf3l1swdrntdl2d7', '2022-02-24 17:56:06', '2022-02-24 18:56:06');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', 'admin', '管理员', '2021-02-25 15:59:12');

-- ----------------------------
-- Table structure for yaopin
-- ----------------------------
DROP TABLE IF EXISTS `yaopin`;
CREATE TABLE `yaopin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yaopin_name` varchar(200) DEFAULT NULL COMMENT '药品名称 Search111',
  `yaopin_photo` varchar(200) DEFAULT NULL COMMENT '药品图片',
  `yaopin_chyengfen` varchar(200) DEFAULT NULL COMMENT '主要成分',
  `yaopin_kucun_number` int(11) DEFAULT NULL COMMENT '库存',
  `yaopin_shiyongfanwei` varchar(200) DEFAULT NULL COMMENT '适用范围',
  `yaopin_beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `yaopin_jiangshi` decimal(10,2) DEFAULT NULL COMMENT '价格',
  `yaopin_types` int(11) DEFAULT NULL COMMENT '药品类型 Search111',
  `yaopin_content` text COMMENT '详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='药品';

-- ----------------------------
-- Records of yaopin
-- ----------------------------
INSERT INTO `yaopin` VALUES ('1', '药品名称1', 'http://localhost:8080/yiyuanziyuanguanli/upload/yaopin1.jpg', '主要成分1', '10', '适用范围1', '备注1', '661.36', '1', '详情1', '2022-02-24 17:34:16');
INSERT INTO `yaopin` VALUES ('2', '药品名称2', 'http://localhost:8080/yiyuanziyuanguanli/upload/yaopin2.jpg', '主要成分2', '20', '适用范围2', '备注2', '91.82', '2', '详情2', '2022-02-24 17:34:16');
INSERT INTO `yaopin` VALUES ('3', '药品名称3', 'http://localhost:8080/yiyuanziyuanguanli/upload/yaopin3.jpg', '主要成分3', '30', '适用范围3', '备注3', '237.34', '3', '详情3', '2022-02-24 17:34:16');
INSERT INTO `yaopin` VALUES ('4', '药品名称4', 'http://localhost:8080/yiyuanziyuanguanli/upload/yaopin4.jpg', '主要成分4', '40', '适用范围4', '备注4', '305.12', '1', '详情4', '2022-02-24 17:34:16');
INSERT INTO `yaopin` VALUES ('5', '药品名称5', 'http://localhost:8080/yiyuanziyuanguanli/upload/yaopin5.jpg', '主要成分5', '149', '适用范围5', '备注5', '75.68', '1', '详情5', '2022-02-24 17:34:16');

-- ----------------------------
-- Table structure for yisheng
-- ----------------------------
DROP TABLE IF EXISTS `yisheng`;
CREATE TABLE `yisheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yisheng_uuid_number` varchar(200) DEFAULT NULL COMMENT '医生工号',
  `yisheng_name` varchar(200) DEFAULT NULL COMMENT '医生姓名 Search111 ',
  `yisheng_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `yisheng_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yisheng_id_number` varchar(200) DEFAULT NULL COMMENT '医生身份证号 ',
  `yisheng_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yisheng_gongzuoshij` varchar(255) DEFAULT NULL COMMENT '工作时间',
  `yisheng_guahao` varchar(200) DEFAULT NULL COMMENT '挂号须知',
  `yisheng_new_money` decimal(10,2) DEFAULT NULL COMMENT '挂号价格',
  `yisheng_zhichneg` varchar(200) DEFAULT NULL COMMENT '职称',
  `yisheng_types` int(11) DEFAULT NULL COMMENT '科室 Search111 ',
  `yisheng_content` text COMMENT '简介',
  `yisheng_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='医生';

-- ----------------------------
-- Records of yisheng
-- ----------------------------
INSERT INTO `yisheng` VALUES ('1', 'a1', '123456', '164569525637111', '医生姓名1', 'http://localhost:8080/yiyuanziyuanguanli/upload/yisheng1.jpg', '17703786901', '410224199610232001', '1@qq.com', '2', '星期1、2、3111', '挂号须知1', '176.30', '职称1', '3', '<p>简介1</p>', '1', '2022-02-24 17:34:16');
INSERT INTO `yisheng` VALUES ('2', 'a2', '123456', '164569525637115', '医生姓名2', 'http://localhost:8080/yiyuanziyuanguanli/upload/yisheng2.jpg', '17703786902', '410224199610232002', '2@qq.com', '2', '星期2、4、5', '挂号须知2', '204.33', '职称2', '1', '简介2', '1', '2022-02-24 17:34:16');
INSERT INTO `yisheng` VALUES ('3', 'a3', '123456', '16456952563745', '医生姓名3', 'http://localhost:8080/yiyuanziyuanguanli/upload/yisheng3.jpg', '17703786903', '410224199610232003', '3@qq.com', '2', '星期1、3、5', '挂号须知3', '334.80', '职称3', '3', '简介3', '1', '2022-02-24 17:34:16');

-- ----------------------------
-- Table structure for yishengyuyue
-- ----------------------------
DROP TABLE IF EXISTS `yishengyuyue`;
CREATE TABLE `yishengyuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yisheng_id` int(11) DEFAULT NULL COMMENT '医生',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `yishengyuyue_yesno_types` int(11) DEFAULT NULL COMMENT '预约结果',
  `yishengyuyue_time` timestamp NULL DEFAULT NULL COMMENT '预约时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='医生预约';

-- ----------------------------
-- Records of yishengyuyue
-- ----------------------------
INSERT INTO `yishengyuyue` VALUES ('1', '3', '2', '1', '2022-02-24 17:34:16', '2022-02-24 17:34:16');
INSERT INTO `yishengyuyue` VALUES ('2', '2', '3', '1', '2022-02-24 17:34:16', '2022-02-24 17:34:16');
INSERT INTO `yishengyuyue` VALUES ('3', '2', '3', '1', '2022-02-24 17:34:16', '2022-02-24 17:34:16');
INSERT INTO `yishengyuyue` VALUES ('4', '1', '2', '2', '2022-02-24 17:34:16', '2022-02-24 17:34:16');
INSERT INTO `yishengyuyue` VALUES ('5', '2', '1', '1', '2022-02-24 17:34:16', '2022-02-24 17:34:16');
INSERT INTO `yishengyuyue` VALUES ('12', '3', '1', '3', '2022-02-25 00:00:00', '2022-02-24 19:05:11');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES ('1', 'a1', '123456', '用户姓名1', 'http://localhost:8080/yiyuanziyuanguanli/upload/yonghu1.jpg', '17703786901', '410224199610232001', '1@qq.com', '1', '1', '2022-02-24 17:34:16');
INSERT INTO `yonghu` VALUES ('2', 'a2', '123456', '用户姓名2', 'http://localhost:8080/yiyuanziyuanguanli/upload/yonghu2.jpg', '17703786902', '410224199610232002', '2@qq.com', '1', '1', '2022-02-24 17:34:16');
INSERT INTO `yonghu` VALUES ('3', 'a3', '123456', '用户姓名3', 'http://localhost:8080/yiyuanziyuanguanli/upload/yonghu3.jpg', '17703786903', '410224199610232003', '3@qq.com', '1', '1', '2022-02-24 17:34:16');

-- ----------------------------
-- Table structure for zhuyuan
-- ----------------------------
DROP TABLE IF EXISTS `zhuyuan`;
CREATE TABLE `zhuyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yisheng_id` int(11) DEFAULT NULL COMMENT '发布医生',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `zhuyuan_name` varchar(200) DEFAULT NULL COMMENT '病房地址',
  `zhuyuan_fangjianhao` varchar(200) DEFAULT NULL COMMENT '房间号',
  `zhuyuan_chuanghao` varchar(200) DEFAULT NULL COMMENT '床号',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='住院';

-- ----------------------------
-- Records of zhuyuan
-- ----------------------------
INSERT INTO `zhuyuan` VALUES ('1', '2', '2', '病房地址1', '房间号1', '床号1', '2022-02-24 17:34:16');
INSERT INTO `zhuyuan` VALUES ('2', '3', '2', '病房地址2', '房间号2', '床号2', '2022-02-24 17:34:16');
INSERT INTO `zhuyuan` VALUES ('3', '3', '3', '病房地址3', '房间号3', '床号3', '2022-02-24 17:34:16');
INSERT INTO `zhuyuan` VALUES ('4', '1', '3', '病房地址4', '房间号4', '床号4', '2022-02-24 17:34:16');
INSERT INTO `zhuyuan` VALUES ('5', '3', '1', '病房地址5', '房间号5', '床号5', '2022-02-24 17:34:16');
INSERT INTO `zhuyuan` VALUES ('12', '1', '2', '病房地址6', '房间号6', '床号6', '2022-02-24 19:06:31');
