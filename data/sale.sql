/*
 Navicat Premium Data Transfer

 Source Server         : MacLocal
 Source Server Type    : MySQL
 Source Server Version : 80033 (8.0.33)
 Source Host           : localhost:3306
 Source Schema         : sale

 Target Server Type    : MySQL
 Target Server Version : 80033 (8.0.33)
 File Encoding         : 65001

 Date: 11/08/2023 08:58:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(255) NOT NULL COMMENT '姓名',
  `age` int DEFAULT NULL COMMENT '年龄',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(255) DEFAULT NULL COMMENT '手机号',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `version` int DEFAULT '1' COMMENT '版本号',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `deleted` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of customer
-- ----------------------------
BEGIN;
INSERT INTO `customer` (`id`, `name`, `age`, `email`, `phone`, `address`, `version`, `create_time`, `update_time`, `deleted`) VALUES (1, '曹操', 20, 'caocao@geekhour.net', '12300000001', '北京市海淀区', 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `customer` (`id`, `name`, `age`, `email`, `phone`, `address`, `version`, `create_time`, `update_time`, `deleted`) VALUES (2, '刘备', 21, 'liubei@geekhour.net', '12300000002', '广东省广州市白云区', 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `customer` (`id`, `name`, `age`, `email`, `phone`, `address`, `version`, `create_time`, `update_time`, `deleted`) VALUES (3, '孙权', 22, 'sunquan@geekhour.net', '12300000003', '上海市黄浦区', 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `customer` (`id`, `name`, `age`, `email`, `phone`, `address`, `version`, `create_time`, `update_time`, `deleted`) VALUES (4, '诸葛亮', 23, 'zhugeliang@geekhour.net', '12300000004', '浙江省杭州市萧山区', 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `customer` (`id`, `name`, `age`, `email`, `phone`, `address`, `version`, `create_time`, `update_time`, `deleted`) VALUES (5, '关羽', 24, 'guanyu@geekhour.net', '12300000005', '山东省济南市历下区', 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `customer` (`id`, `name`, `age`, `email`, `phone`, `address`, `version`, `create_time`, `update_time`, `deleted`) VALUES (6, '张飞', 25, 'zhangfei@geekhour.net', '12300000006', '江苏省南京市鼓楼区', 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `customer` (`id`, `name`, `age`, `email`, `phone`, `address`, `version`, `create_time`, `update_time`, `deleted`) VALUES (7, '周瑜', 26, 'zhouyu@geekhour.net', '12300000007', '福建省福州市鼓楼区', 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `customer` (`id`, `name`, `age`, `email`, `phone`, `address`, `version`, `create_time`, `update_time`, `deleted`) VALUES (8, '黄盖', 27, 'huanggai@geekhour.net', '12300000008', '江西省南昌市东湖区', 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `customer` (`id`, `name`, `age`, `email`, `phone`, `address`, `version`, `create_time`, `update_time`, `deleted`) VALUES (9, '赵云', 28, 'zhaoyun@geekhour.net', '12300000009', '湖南省长沙市芙蓉区', 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `customer` (`id`, `name`, `age`, `email`, `phone`, `address`, `version`, `create_time`, `update_time`, `deleted`) VALUES (10, '马超', 29, 'machao@geekhour.net', '12300000010', '湖北省武汉市江岸区', 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `customer` (`id`, `name`, `age`, `email`, `phone`, `address`, `version`, `create_time`, `update_time`, `deleted`) VALUES (11, '吕布', 30, 'lvbu@geekhour.net', '12300000011', '河南省郑州市中原区', 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `customer` (`id`, `name`, `age`, `email`, `phone`, `address`, `version`, `create_time`, `update_time`, `deleted`) VALUES (12, '貂蝉', 31, 'diaochan@geekhour.net', '12300000012', '山西省太原市小店区', 1, '2023-07-10 11:27:56', NULL, 0);
COMMIT;

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `customer_id` bigint NOT NULL COMMENT '客户ID',
  `product_id` bigint NOT NULL COMMENT '商品ID',
  `price` decimal(10,2) DEFAULT NULL COMMENT '价格',
  `quantity` int DEFAULT NULL COMMENT '数量',
  `total_price` decimal(10,2) DEFAULT NULL COMMENT '总价',
  `discount` decimal(10,2) DEFAULT NULL COMMENT '折扣',
  `pay_price` decimal(10,2) DEFAULT NULL COMMENT '实付金额',
  `version` int DEFAULT '1' COMMENT '版本号',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `deleted` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of order
-- ----------------------------
BEGIN;
INSERT INTO `order` (`id`, `customer_id`, `product_id`, `price`, `quantity`, `total_price`, `discount`, `pay_price`, `version`, `create_time`, `update_time`, `deleted`) VALUES (1, 1, 1, 1999.00, 1, 1999.00, 0.00, 1999.00, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `order` (`id`, `customer_id`, `product_id`, `price`, `quantity`, `total_price`, `discount`, `pay_price`, `version`, `create_time`, `update_time`, `deleted`) VALUES (2, 1, 2, 2999.00, 1, 2999.00, 0.00, 2999.00, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `order` (`id`, `customer_id`, `product_id`, `price`, `quantity`, `total_price`, `discount`, `pay_price`, `version`, `create_time`, `update_time`, `deleted`) VALUES (3, 1, 3, 5999.00, 1, 5999.00, 0.00, 5999.00, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `order` (`id`, `customer_id`, `product_id`, `price`, `quantity`, `total_price`, `discount`, `pay_price`, `version`, `create_time`, `update_time`, `deleted`) VALUES (4, 1, 4, 3999.00, 1, 3999.00, 0.00, 3999.00, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `order` (`id`, `customer_id`, `product_id`, `price`, `quantity`, `total_price`, `discount`, `pay_price`, `version`, `create_time`, `update_time`, `deleted`) VALUES (5, 2, 5, 5999.00, 1, 5999.00, 0.00, 5999.00, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `order` (`id`, `customer_id`, `product_id`, `price`, `quantity`, `total_price`, `discount`, `pay_price`, `version`, `create_time`, `update_time`, `deleted`) VALUES (6, 2, 6, 3999.00, 1, 3999.00, 0.00, 3999.00, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `order` (`id`, `customer_id`, `product_id`, `price`, `quantity`, `total_price`, `discount`, `pay_price`, `version`, `create_time`, `update_time`, `deleted`) VALUES (7, 3, 7, 3999.00, 1, 3999.00, 0.00, 3999.00, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `order` (`id`, `customer_id`, `product_id`, `price`, `quantity`, `total_price`, `discount`, `pay_price`, `version`, `create_time`, `update_time`, `deleted`) VALUES (8, 4, 8, 3999.00, 1, 3999.00, 0.00, 3999.00, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `order` (`id`, `customer_id`, `product_id`, `price`, `quantity`, `total_price`, `discount`, `pay_price`, `version`, `create_time`, `update_time`, `deleted`) VALUES (9, 5, 9, 3999.00, 1, 3999.00, 0.00, 3999.00, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `order` (`id`, `customer_id`, `product_id`, `price`, `quantity`, `total_price`, `discount`, `pay_price`, `version`, `create_time`, `update_time`, `deleted`) VALUES (10, 6, 10, 3999.00, 1, 3999.00, 0.00, 3999.00, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `order` (`id`, `customer_id`, `product_id`, `price`, `quantity`, `total_price`, `discount`, `pay_price`, `version`, `create_time`, `update_time`, `deleted`) VALUES (11, 4, 1, 1999.00, 1, 1999.00, 0.00, 1999.00, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `order` (`id`, `customer_id`, `product_id`, `price`, `quantity`, `total_price`, `discount`, `pay_price`, `version`, `create_time`, `update_time`, `deleted`) VALUES (12, 8, 2, 2999.00, 1, 2999.00, 0.00, 2999.00, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `order` (`id`, `customer_id`, `product_id`, `price`, `quantity`, `total_price`, `discount`, `pay_price`, `version`, `create_time`, `update_time`, `deleted`) VALUES (13, 9, 3, 5999.00, 1, 5999.00, 0.00, 5999.00, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `order` (`id`, `customer_id`, `product_id`, `price`, `quantity`, `total_price`, `discount`, `pay_price`, `version`, `create_time`, `update_time`, `deleted`) VALUES (14, 10, 4, 3999.00, 1, 3999.00, 0.00, 3999.00, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `order` (`id`, `customer_id`, `product_id`, `price`, `quantity`, `total_price`, `discount`, `pay_price`, `version`, `create_time`, `update_time`, `deleted`) VALUES (15, 11, 5, 5999.00, 1, 5999.00, 0.00, 5999.00, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `order` (`id`, `customer_id`, `product_id`, `price`, `quantity`, `total_price`, `discount`, `pay_price`, `version`, `create_time`, `update_time`, `deleted`) VALUES (16, 12, 6, 3999.00, 1, 3999.00, 0.00, 3999.00, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `order` (`id`, `customer_id`, `product_id`, `price`, `quantity`, `total_price`, `discount`, `pay_price`, `version`, `create_time`, `update_time`, `deleted`) VALUES (17, 4, 7, 3999.00, 1, 3999.00, 0.00, 3999.00, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `order` (`id`, `customer_id`, `product_id`, `price`, `quantity`, `total_price`, `discount`, `pay_price`, `version`, `create_time`, `update_time`, `deleted`) VALUES (18, 7, 8, 3999.00, 1, 3999.00, 0.00, 3999.00, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `order` (`id`, `customer_id`, `product_id`, `price`, `quantity`, `total_price`, `discount`, `pay_price`, `version`, `create_time`, `update_time`, `deleted`) VALUES (19, 9, 9, 3999.00, 1, 3999.00, 0.00, 3999.00, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `order` (`id`, `customer_id`, `product_id`, `price`, `quantity`, `total_price`, `discount`, `pay_price`, `version`, `create_time`, `update_time`, `deleted`) VALUES (20, 6, 10, 3999.00, 1, 3999.00, 0.00, 3999.00, 1, '2023-07-10 11:27:56', NULL, 0);
COMMIT;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(255) NOT NULL COMMENT '商品名称',
  `description` varchar(255) DEFAULT NULL COMMENT '商品描述',
  `brand` varchar(255) DEFAULT NULL COMMENT '品牌',
  `price` decimal(10,2) DEFAULT NULL COMMENT '价格',
  `stock` int DEFAULT NULL COMMENT '库存',
  `version` int DEFAULT '1' COMMENT '版本号',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `deleted` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of product
-- ----------------------------
BEGIN;
INSERT INTO `product` (`id`, `name`, `description`, `brand`, `price`, `stock`, `version`, `create_time`, `update_time`, `deleted`) VALUES (1, '小米手机', '小米手机', '小米', 1999.00, 100, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `product` (`id`, `name`, `description`, `brand`, `price`, `stock`, `version`, `create_time`, `update_time`, `deleted`) VALUES (2, '华为手机', '华为手机', '华为', 2999.00, 100, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `product` (`id`, `name`, `description`, `brand`, `price`, `stock`, `version`, `create_time`, `update_time`, `deleted`) VALUES (3, '苹果手机', '苹果手机', 'Apple', 5999.00, 100, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `product` (`id`, `name`, `description`, `brand`, `price`, `stock`, `version`, `create_time`, `update_time`, `deleted`) VALUES (4, '联想笔记本', '联想笔记本', '联想', 3999.00, 100, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `product` (`id`, `name`, `description`, `brand`, `price`, `stock`, `version`, `create_time`, `update_time`, `deleted`) VALUES (5, '戴尔笔记本', '戴尔笔记本', '戴尔', 4999.00, 100, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `product` (`id`, `name`, `description`, `brand`, `price`, `stock`, `version`, `create_time`, `update_time`, `deleted`) VALUES (6, 'MacBookPro', 'MacBookPro', 'Apple', 9999.00, 100, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `product` (`id`, `name`, `description`, `brand`, `price`, `stock`, `version`, `create_time`, `update_time`, `deleted`) VALUES (7, 'ThinkPad笔记本', 'ThinkPad笔记本', '联想', 5999.00, 100, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `product` (`id`, `name`, `description`, `brand`, `price`, `stock`, `version`, `create_time`, `update_time`, `deleted`) VALUES (8, '华硕笔记本', '华硕笔记本', '华硕', 3999.00, 100, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `product` (`id`, `name`, `description`, `brand`, `price`, `stock`, `version`, `create_time`, `update_time`, `deleted`) VALUES (9, '小米笔记本', '小米笔记本', '小米', 3999.00, 100, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `product` (`id`, `name`, `description`, `brand`, `price`, `stock`, `version`, `create_time`, `update_time`, `deleted`) VALUES (10, '华为笔记本', '华为笔记本', '华为', 4999.00, 100, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `product` (`id`, `name`, `description`, `brand`, `price`, `stock`, `version`, `create_time`, `update_time`, `deleted`) VALUES (11, 'MacMini', 'MacMini', 'Apple', 6000.00, 100, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `product` (`id`, `name`, `description`, `brand`, `price`, `stock`, `version`, `create_time`, `update_time`, `deleted`) VALUES (12, 'Tesla Model 3', 'Tesla Model 3', 'Tesla', 300000.00, 100, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `product` (`id`, `name`, `description`, `brand`, `price`, `stock`, `version`, `create_time`, `update_time`, `deleted`) VALUES (13, 'Tesla Model X', 'Tesla Model X', 'Tesla', 500000.00, 100, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `product` (`id`, `name`, `description`, `brand`, `price`, `stock`, `version`, `create_time`, `update_time`, `deleted`) VALUES (14, 'Tesla Model S', 'Tesla Model S', 'Tesla', 400000.00, 100, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `product` (`id`, `name`, `description`, `brand`, `price`, `stock`, `version`, `create_time`, `update_time`, `deleted`) VALUES (15, 'Tesla Model Y', 'Tesla Model Y', 'Tesla', 350000.00, 100, 1, '2023-07-10 11:27:56', NULL, 0);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
