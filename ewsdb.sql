/*
Navicat MySQL Data Transfer

Source Server         : 1
Source Server Version : 50556
Source Host           : localhost:3306
Source Database       : ewsdb

Target Server Type    : MYSQL
Target Server Version : 50556
File Encoding         : 65001

Date: 2019-05-22 17:33:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_user`
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) NOT NULL,
  `upwd` varchar(50) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  `registerTime` date DEFAULT NULL,
  `lastLoginTime` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', 'laozhang', '96e79218965eb72c92a549dd5a330112', 'abc@163.com', 'admin', '2019-05-21', '2019-05-21');
INSERT INTO `tb_user` VALUES ('2', 'lg', '96e79218965eb72c92a549dd5a330112', 'ertc@163.com', 'admin1', '2019-05-21', '2019-05-21');
INSERT INTO `tb_user` VALUES ('3', 'wangfei', '96e79218965eb72c92a549dd5a330112', 'jkil@163.com', 'admin2', '2019-05-21', '2019-05-21');
INSERT INTO `tb_user` VALUES ('4', 'qwe', 'efe6398127928f1b2e9ef3207fb82663', 'qwe@qq.com', 'employee', '2019-05-22', '2019-05-22');
INSERT INTO `tb_user` VALUES ('5', 'q', '343b1c4a3ea721b2d640fc8700db0f36', 'qqqq@qq.com', 'employee', '2019-05-22', '2019-05-22');
INSERT INTO `tb_user` VALUES ('6', 'ww', 'd785c99d298a4e9e6e13fe99e602ef42', 'www@qq.com', 'employee', '2019-05-22', '2019-05-22');
INSERT INTO `tb_user` VALUES ('7', 'eee', 'cd87cd5ef753a06ee79fc75dc7cfe66c', 'eee@qq.com', 'employee', '2019-05-22', '2019-05-22');
