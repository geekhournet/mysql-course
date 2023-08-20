/*
 Navicat Premium Data Transfer

 Source Server         : MacLocal
 Source Server Type    : MySQL
 Source Server Version : 80033 (8.0.33)
 Source Host           : localhost:3306
 Source Schema         : company

 Target Server Type    : MySQL
 Target Server Version : 80033 (8.0.33)
 File Encoding         : 65001

 Date: 11/08/2023 08:57:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `id` bigint NOT NULL COMMENT '部门ID',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '部门名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '部门描述',
  `code` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '部门编码',
  `parent_id` bigint DEFAULT NULL COMMENT '父级部门ID',
  `level` int DEFAULT NULL COMMENT '部门层级',
  `sort` int unsigned NOT NULL DEFAULT '0' COMMENT '显示排序',
  `version` int DEFAULT '1' COMMENT '版本号',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `deleted` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='部门';

-- ----------------------------
-- Records of department
-- ----------------------------
BEGIN;
INSERT INTO `department` (`id`, `name`, `description`, `code`, `parent_id`, `level`, `sort`, `version`, `create_time`, `update_time`, `deleted`) VALUES (1, '信息科技部', '信息科技部', '0001', NULL, 1, 1, 1, '2023-07-10 11:27:17', NULL, 0);
INSERT INTO `department` (`id`, `name`, `description`, `code`, `parent_id`, `level`, `sort`, `version`, `create_time`, `update_time`, `deleted`) VALUES (2, '人力资源部', '人力资源部', '0002', NULL, 1, 2, 1, '2023-07-10 11:27:17', NULL, 0);
INSERT INTO `department` (`id`, `name`, `description`, `code`, `parent_id`, `level`, `sort`, `version`, `create_time`, `update_time`, `deleted`) VALUES (3, '财务部', '财务部', '0003', NULL, 1, 3, 1, '2023-07-10 11:27:17', NULL, 0);
INSERT INTO `department` (`id`, `name`, `description`, `code`, `parent_id`, `level`, `sort`, `version`, `create_time`, `update_time`, `deleted`) VALUES (4, '市场部', '市场部', '0004', NULL, 1, 4, 1, '2023-07-10 11:27:17', NULL, 0);
INSERT INTO `department` (`id`, `name`, `description`, `code`, `parent_id`, `level`, `sort`, `version`, `create_time`, `update_time`, `deleted`) VALUES (5, '销售部', '销售部', '0005', NULL, 1, 5, 1, '2023-07-10 11:27:17', NULL, 0);
INSERT INTO `department` (`id`, `name`, `description`, `code`, `parent_id`, `level`, `sort`, `version`, `create_time`, `update_time`, `deleted`) VALUES (6, '研发部', '研发部', '0006', NULL, 1, 6, 1, '2023-07-10 11:27:17', NULL, 0);
INSERT INTO `department` (`id`, `name`, `description`, `code`, `parent_id`, `level`, `sort`, `version`, `create_time`, `update_time`, `deleted`) VALUES (7, '运营部', '运营部', '0007', NULL, 1, 7, 1, '2023-07-10 11:27:17', NULL, 0);
INSERT INTO `department` (`id`, `name`, `description`, `code`, `parent_id`, `level`, `sort`, `version`, `create_time`, `update_time`, `deleted`) VALUES (8, '产品部', '产品部', '0008', NULL, 1, 8, 1, '2023-07-10 11:27:17', NULL, 0);
INSERT INTO `department` (`id`, `name`, `description`, `code`, `parent_id`, `level`, `sort`, `version`, `create_time`, `update_time`, `deleted`) VALUES (9, '行政部', '行政部', '0009', NULL, 1, 9, 1, '2023-07-10 11:27:17', NULL, 0);
INSERT INTO `department` (`id`, `name`, `description`, `code`, `parent_id`, `level`, `sort`, `version`, `create_time`, `update_time`, `deleted`) VALUES (10, '客服部', '客服部', '0010', NULL, 1, 10, 1, '2023-07-10 11:27:17', NULL, 0);
INSERT INTO `department` (`id`, `name`, `description`, `code`, `parent_id`, `level`, `sort`, `version`, `create_time`, `update_time`, `deleted`) VALUES (11, '技术部', '技术部', '0011', NULL, 1, 11, 1, '2023-07-10 11:27:17', NULL, 0);
INSERT INTO `department` (`id`, `name`, `description`, `code`, `parent_id`, `level`, `sort`, `version`, `create_time`, `update_time`, `deleted`) VALUES (12, '质量部', '质量部', '0012', NULL, 1, 12, 1, '2023-07-10 11:27:17', NULL, 0);
INSERT INTO `department` (`id`, `name`, `description`, `code`, `parent_id`, `level`, `sort`, `version`, `create_time`, `update_time`, `deleted`) VALUES (13, '采购部', '采购部', '0013', NULL, 1, 13, 1, '2023-07-10 11:27:17', NULL, 0);
INSERT INTO `department` (`id`, `name`, `description`, `code`, `parent_id`, `level`, `sort`, `version`, `create_time`, `update_time`, `deleted`) VALUES (14, '后勤部', '后勤部', '0014', NULL, 1, 14, 1, '2023-07-10 11:27:17', NULL, 0);
INSERT INTO `department` (`id`, `name`, `description`, `code`, `parent_id`, `level`, `sort`, `version`, `create_time`, `update_time`, `deleted`) VALUES (15, '法务部', '法务部', '0015', NULL, 1, 15, 1, '2023-07-10 11:27:17', NULL, 0);
INSERT INTO `department` (`id`, `name`, `description`, `code`, `parent_id`, `level`, `sort`, `version`, `create_time`, `update_time`, `deleted`) VALUES (16, '风控部', '风控部', '0016', NULL, 1, 16, 1, '2023-07-10 11:27:17', NULL, 0);
INSERT INTO `department` (`id`, `name`, `description`, `code`, `parent_id`, `level`, `sort`, `version`, `create_time`, `update_time`, `deleted`) VALUES (17, '风险部', '风险部', '0017', NULL, 1, 17, 1, '2023-07-10 11:27:17', NULL, 0);
INSERT INTO `department` (`id`, `name`, `description`, `code`, `parent_id`, `level`, `sort`, `version`, `create_time`, `update_time`, `deleted`) VALUES (18, '审计部', '审计部', '0018', NULL, 1, 18, 1, '2023-07-10 11:27:17', NULL, 0);
INSERT INTO `department` (`id`, `name`, `description`, `code`, `parent_id`, `level`, `sort`, `version`, `create_time`, `update_time`, `deleted`) VALUES (19, '资产部', '资产部', '0019', NULL, 1, 19, 1, '2023-07-10 11:27:17', NULL, 0);
INSERT INTO `department` (`id`, `name`, `description`, `code`, `parent_id`, `level`, `sort`, `version`, `create_time`, `update_time`, `deleted`) VALUES (20, '资金部', '资金部', '0020', NULL, 1, 20, 1, '2023-07-10 11:27:17', NULL, 0);
INSERT INTO `department` (`id`, `name`, `description`, `code`, `parent_id`, `level`, `sort`, `version`, `create_time`, `update_time`, `deleted`) VALUES (21, '投资部', '投资部', '0021', NULL, 1, 21, 1, '2023-07-10 11:27:17', NULL, 0);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
