/*
 Navicat Premium Data Transfer

 Source Server         : local PengYang@123
 Source Server Type    : MySQL
 Source Server Version : 50738
 Source Host           : localhost:3306
 Source Schema         : powernode

 Target Server Type    : MySQL
 Target Server Version : 50738
 File Encoding         : 65001

 Date: 18/10/2023 15:55:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_act
-- ----------------------------
DROP TABLE IF EXISTS `t_act`;
CREATE TABLE `t_act` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `actno` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of t_act
-- ----------------------------
BEGIN;
INSERT INTO `t_act` (`id`, `actno`, `balance`) VALUES (1, 'act001', 50000.00);
INSERT INTO `t_act` (`id`, `actno`, `balance`) VALUES (2, 'act002', 0.00);
COMMIT;

-- ----------------------------
-- Table structure for t_car
-- ----------------------------
DROP TABLE IF EXISTS `t_car`;
CREATE TABLE `t_car` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键自增',
  `car_num` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '汽车编号',
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '汽车品牌',
  `guide_price` decimal(10,2) DEFAULT NULL COMMENT '厂商指导价',
  `produce_time` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '生产日期',
  `car_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '汽车类型，包括：燃油车，电车，氢能源',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of t_car
-- ----------------------------
BEGIN;
INSERT INTO `t_car` (`id`, `car_num`, `brand`, `guide_price`, `produce_time`, `car_type`) VALUES (1, '1001', '宝马520Li', 10.00, '2020-10-11', '燃油车');
INSERT INTO `t_car` (`id`, `car_num`, `brand`, `guide_price`, `produce_time`, `car_type`) VALUES (2, '1002', '奔驰E300L', 55.00, '2020-11-11', '新能源');
INSERT INTO `t_car` (`id`, `car_num`, `brand`, `guide_price`, `produce_time`, `car_type`) VALUES (3, '1003', '丰田霸道', 30.00, '2000-10-11', '燃油车');
COMMIT;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3334 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of t_user
-- ----------------------------
BEGIN;
INSERT INTO `t_user` (`id`, `name`, `age`) VALUES (1111, 'zhangsan', 20);
INSERT INTO `t_user` (`id`, `name`, `age`) VALUES (3333, '孙悟空', 5000);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
