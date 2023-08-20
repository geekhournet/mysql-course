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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of customer
-- ----------------------------
BEGIN;
INSERT INTO `customer` ( `name`, `age`, `email`, `phone`, `address`, `version`, `create_time`, `update_time`, `deleted`) VALUES ('曹操', 20, 'caocao@geekhour.net', 12300000001, '北京市海淀区', 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `customer` ( `name`, `age`, `email`, `phone`, `address`, `version`, `create_time`, `update_time`, `deleted`) VALUES ('刘备', 21, 'liubei@geekhour.net', 12300000002, '广东省广州市白云区', 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `customer` ( `name`, `age`, `email`, `phone`, `address`, `version`, `create_time`, `update_time`, `deleted`) VALUES ('孙权', 22, 'sunquan@geekhour.net', 12300000003, '上海市黄浦区', 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `customer` ( `name`, `age`, `email`, `phone`, `address`, `version`, `create_time`, `update_time`, `deleted`) VALUES ('诸葛亮', 23, 'zhugeliang@geekhour.net', 12300000004, '浙江省杭州市萧山区', 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `customer` ( `name`, `age`, `email`, `phone`, `address`, `version`, `create_time`, `update_time`, `deleted`) VALUES ('关羽', 24, 'guanyu@geekhour.net', 12300000005, '山东省济南市历下区', 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `customer` ( `name`, `age`, `email`, `phone`, `address`, `version`, `create_time`, `update_time`, `deleted`) VALUES ('张飞', 25, 'zhangfei@geekhour.net', 12300000006, '江苏省南京市鼓楼区', 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `customer` ( `name`, `age`, `email`, `phone`, `address`, `version`, `create_time`, `update_time`, `deleted`) VALUES ('周瑜', 26, 'zhouyu@geekhour.net', 12300000007, '福建省福州市鼓楼区', 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `customer` ( `name`, `age`, `email`, `phone`, `address`, `version`, `create_time`, `update_time`, `deleted`) VALUES ('黄盖', 27, 'huanggai@geekhour.net', 12300000008, '江西省南昌市东湖区', 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `customer` ( `name`, `age`, `email`, `phone`, `address`, `version`, `create_time`, `update_time`, `deleted`) VALUES ('赵云', 28, 'zhaoyun@geekhour.net', 12300000009, '湖南省长沙市芙蓉区', 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `customer` ( `name`, `age`, `email`, `phone`, `address`, `version`, `create_time`, `update_time`, `deleted`) VALUES ('马超', 29, 'machao@geekhour.net', 12300000010, '湖北省武汉市江岸区', 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `customer` ( `name`, `age`, `email`, `phone`, `address`, `version`, `create_time`, `update_time`, `deleted`) VALUES ('吕布', 30, 'lvbu@geekhour.net', 12300000011, '河南省郑州市中原区', 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `customer` ( `name`, `age`, `email`, `phone`, `address`, `version`, `create_time`, `update_time`, `deleted`) VALUES ('貂蝉', 31, 'diaochan@geekhour.net', 12300000012, '山西省太原市小店区', 1, '2023-07-10 11:27:56', NULL, 0);
COMMIT;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of product
-- ----------------------------
BEGIN;
INSERT INTO `product` ( `name`, `description`,`brand`,`price`, `stock`, `version`, `create_time`, `update_time`, `deleted`) VALUES ('小米手机','小米手机','小米', 1999.00, 100, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `product` ( `name`, `description`,`brand`,`price`, `stock`, `version`, `create_time`, `update_time`, `deleted`) VALUES ('华为手机','华为手机','华为', 2999.00, 100, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `product` ( `name`, `description`,`brand`,`price`, `stock`, `version`, `create_time`, `update_time`, `deleted`) VALUES ('苹果手机','苹果手机','Apple', 5999.00, 100, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `product` ( `name`, `description`,`brand`,`price`, `stock`, `version`, `create_time`, `update_time`, `deleted`) VALUES ('联想笔记本','联想笔记本','联想', 3999.00, 100, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `product` ( `name`, `description`,`brand`,`price`, `stock`, `version`, `create_time`, `update_time`, `deleted`) VALUES ('戴尔笔记本','戴尔笔记本','戴尔', 4999.00, 100, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `product` ( `name`, `description`,`brand`,`price`, `stock`, `version`, `create_time`, `update_time`, `deleted`) VALUES ('MacBookPro','MacBookPro','Apple', 9999.00, 100, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `product` ( `name`, `description`,`brand`,`price`, `stock`, `version`, `create_time`, `update_time`, `deleted`) VALUES ('ThinkPad笔记本','ThinkPad笔记本','联想', 5999.00, 100, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `product` ( `name`, `description`,`brand`,`price`, `stock`, `version`, `create_time`, `update_time`, `deleted`) VALUES ('华硕笔记本','华硕笔记本','华硕', 3999.00, 100, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `product` ( `name`, `description`,`brand`,`price`, `stock`, `version`, `create_time`, `update_time`, `deleted`) VALUES ('小米笔记本','小米笔记本','小米', 3999.00, 100, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `product` ( `name`, `description`,`brand`,`price`, `stock`, `version`, `create_time`, `update_time`, `deleted`) VALUES ('华为笔记本','华为笔记本','华为', 4999.00, 100, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `product` ( `name`, `description`, `brand`, `price`, `stock`, `version`, `create_time`, `update_time`, `deleted`) VALUES ('MacMini', 'MacMini', 'Apple', 6000.00, 100, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `product` ( `name`, `description`, `brand`, `price`, `stock`, `version`, `create_time`, `update_time`, `deleted`) VALUES ('Tesla Model 3', 'Tesla Model 3', 'Tesla', 300000.00, 100, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `product` ( `name`, `description`, `brand`, `price`, `stock`, `version`, `create_time`, `update_time`, `deleted`) VALUES ('Tesla Model X', 'Tesla Model X', 'Tesla', 500000.00, 100, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `product` ( `name`, `description`, `brand`, `price`, `stock`, `version`, `create_time`, `update_time`, `deleted`) VALUES ('Tesla Model S', 'Tesla Model S', 'Tesla', 400000.00, 100, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `product` ( `name`, `description`, `brand`, `price`, `stock`, `version`, `create_time`, `update_time`, `deleted`) VALUES ('Tesla Model Y', 'Tesla Model Y', 'Tesla', 350000.00, 100, 1, '2023-07-10 11:27:56', NULL, 0);

COMMIT;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order
-- ----------------------------
BEGIN;
INSERT INTO `order` ( `customer_id`, `product_id`, `price`, `quantity`, `total_price`, `discount`, `pay_price`, `version`, `create_time`, `update_time`, `deleted`) VALUES (1, 1, 1999.00, 1, 1999.00, 0.00, 1999.00, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `order` ( `customer_id`, `product_id`, `price`, `quantity`, `total_price`, `discount`, `pay_price`, `version`, `create_time`, `update_time`, `deleted`) VALUES (1, 2, 2999.00, 1, 2999.00, 0.00, 2999.00, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `order` ( `customer_id`, `product_id`, `price`, `quantity`, `total_price`, `discount`, `pay_price`, `version`, `create_time`, `update_time`, `deleted`) VALUES (1, 3, 5999.00, 1, 5999.00, 0.00, 5999.00, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `order` ( `customer_id`, `product_id`, `price`, `quantity`, `total_price`, `discount`, `pay_price`, `version`, `create_time`, `update_time`, `deleted`) VALUES (1, 4, 3999.00, 1, 3999.00, 0.00, 3999.00, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `order` ( `customer_id`, `product_id`, `price`, `quantity`, `total_price`, `discount`, `pay_price`, `version`, `create_time`, `update_time`, `deleted`) VALUES (2, 5, 5999.00, 1, 5999.00, 0.00, 5999.00, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `order` ( `customer_id`, `product_id`, `price`, `quantity`, `total_price`, `discount`, `pay_price`, `version`, `create_time`, `update_time`, `deleted`) VALUES (2, 6, 3999.00, 1, 3999.00, 0.00, 3999.00, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `order` ( `customer_id`, `product_id`, `price`, `quantity`, `total_price`, `discount`, `pay_price`, `version`, `create_time`, `update_time`, `deleted`) VALUES (3, 7, 3999.00, 1, 3999.00, 0.00, 3999.00, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `order` ( `customer_id`, `product_id`, `price`, `quantity`, `total_price`, `discount`, `pay_price`, `version`, `create_time`, `update_time`, `deleted`) VALUES (4, 8, 3999.00, 1, 3999.00, 0.00, 3999.00, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `order` ( `customer_id`, `product_id`, `price`, `quantity`, `total_price`, `discount`, `pay_price`, `version`, `create_time`, `update_time`, `deleted`) VALUES (5, 9, 3999.00, 1, 3999.00, 0.00, 3999.00, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `order` ( `customer_id`, `product_id`, `price`, `quantity`, `total_price`, `discount`, `pay_price`, `version`, `create_time`, `update_time`, `deleted`) VALUES (6, 10, 3999.00, 1, 3999.00, 0.00, 3999.00, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `order` ( `customer_id`, `product_id`, `price`, `quantity`, `total_price`, `discount`, `pay_price`, `version`, `create_time`, `update_time`, `deleted`) VALUES (4, 1, 1999.00, 1, 1999.00, 0.00, 1999.00, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `order` ( `customer_id`, `product_id`, `price`, `quantity`, `total_price`, `discount`, `pay_price`, `version`, `create_time`, `update_time`, `deleted`) VALUES (8, 2, 2999.00, 1, 2999.00, 0.00, 2999.00, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `order` ( `customer_id`, `product_id`, `price`, `quantity`, `total_price`, `discount`, `pay_price`, `version`, `create_time`, `update_time`, `deleted`) VALUES (9, 3, 5999.00, 1, 5999.00, 0.00, 5999.00, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `order` ( `customer_id`, `product_id`, `price`, `quantity`, `total_price`, `discount`, `pay_price`, `version`, `create_time`, `update_time`, `deleted`) VALUES (10, 4, 3999.00, 1, 3999.00, 0.00, 3999.00, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `order` ( `customer_id`, `product_id`, `price`, `quantity`, `total_price`, `discount`, `pay_price`, `version`, `create_time`, `update_time`, `deleted`) VALUES (11, 5, 5999.00, 1, 5999.00, 0.00, 5999.00, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `order` ( `customer_id`, `product_id`, `price`, `quantity`, `total_price`, `discount`, `pay_price`, `version`, `create_time`, `update_time`, `deleted`) VALUES (12, 6, 3999.00, 1, 3999.00, 0.00, 3999.00, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `order` ( `customer_id`, `product_id`, `price`, `quantity`, `total_price`, `discount`, `pay_price`, `version`, `create_time`, `update_time`, `deleted`) VALUES (4, 7, 3999.00, 1, 3999.00, 0.00, 3999.00, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `order` ( `customer_id`, `product_id`, `price`, `quantity`, `total_price`, `discount`, `pay_price`, `version`, `create_time`, `update_time`, `deleted`) VALUES (7, 8, 3999.00, 1, 3999.00, 0.00, 3999.00, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `order` ( `customer_id`, `product_id`, `price`, `quantity`, `total_price`, `discount`, `pay_price`, `version`, `create_time`, `update_time`, `deleted`) VALUES (9, 9, 3999.00, 1, 3999.00, 0.00, 3999.00, 1, '2023-07-10 11:27:56', NULL, 0);
INSERT INTO `order` ( `customer_id`, `product_id`, `price`, `quantity`, `total_price`, `discount`, `pay_price`, `version`, `create_time`, `update_time`, `deleted`) VALUES (6, 10, 3999.00, 1, 3999.00, 0.00, 3999.00, 1, '2023-07-10 11:27:56', NULL, 0);
COMMIT;


-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `id` bigint NOT NULL COMMENT '部门ID',
  `name` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '部门名称',
  `description` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '部门描述',
  `code` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '部门编码',
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



