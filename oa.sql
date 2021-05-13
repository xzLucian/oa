/*
 Navicat Premium Data Transfer

 Source Server         : DataBase
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : localhost:3306
 Source Schema         : oa

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 28/03/2021 11:16:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `DEPARTMENT_ID` int NOT NULL AUTO_INCREMENT COMMENT '主键，部门编号',
  `DEPARTMENT_NAME` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '部门名',
  `DEPARTMENT_NUMBER` int DEFAULT NULL COMMENT '部门人数',
  `DEPARTMENT_TELEPHONE` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '联系电话',
  PRIMARY KEY (`DEPARTMENT_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of department
-- ----------------------------
BEGIN;
INSERT INTO `department` VALUES (1, '董事会', 10, '010-66411166');
INSERT INTO `department` VALUES (2, '总经理', 10, '010-65551114');
INSERT INTO `department` VALUES (3, '总经理办公室', 10, '010-66096114');
INSERT INTO `department` VALUES (4, '行政部', 11, '010-64193366');
INSERT INTO `department` VALUES (5, '财务部', 10, '010-58934114');
INSERT INTO `department` VALUES (6, '研发部', 10, '010-84201114');
INSERT INTO `department` VALUES (7, '测试部', 10, '010-65292114');
INSERT INTO `department` VALUES (8, '售货服务部', 10, '010-58160600');
INSERT INTO `department` VALUES (9, '渠道管理部', 10, '010-63202114');
INSERT INTO `department` VALUES (10, '营销部', 10, '010-65194114');
INSERT INTO `department` VALUES (11, '人事部', 10, '123456789');
INSERT INTO `department` VALUES (12, '管理部', 10, '123456789');
INSERT INTO `department` VALUES (13, '财务部', 22, '123456789');
COMMIT;

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `ID` int NOT NULL AUTO_INCREMENT COMMENT '主键，信息编号',
  `EMPLOYEE_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '员工编号',
  `USERNAME` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '昵称',
  `PASSWORD` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ROLE_ID` int NOT NULL COMMENT '员工姓名',
  `EMPLOYEE_NAME` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '性别',
  `SEX` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '出生日期',
  `BIRTHDAY` date DEFAULT NULL COMMENT '政治面貌',
  `POLITICS_STATAS` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '婚姻',
  `MARRIAGE` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '家庭地址',
  `ADDRESS` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '邮箱',
  `EMAIL` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '电话号码',
  `PHONE` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '身份证',
  `ID_NUMBER` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '银行卡',
  `BANKCARD` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of employee
-- ----------------------------
BEGIN;
INSERT INTO `employee` VALUES (1, 'oa2020001', 'admin', 'admin', 1, '管理员', '男', '1999-01-30', '党员', '已婚', '北京', NULL, '13870096885', NULL, NULL);
INSERT INTO `employee` VALUES (2, 'oa2020002', 'luoyalin', '123456', 2, '罗雅琳', '女', '1999-02-02', '党员', '已婚', '北京', NULL, NULL, NULL, NULL);
INSERT INTO `employee` VALUES (3, 'oa2020003', 'xib', '123456', 2, '熊小波', '男', '1999-02-02', '党员', '已婚', '北京', NULL, NULL, NULL, NULL);
INSERT INTO `employee` VALUES (4, 'oa2020004', 'db', '123456', 3, '邓斌', '男', '1999-02-01', '党员', '已婚', '北京', NULL, '13870096885', NULL, NULL);
INSERT INTO `employee` VALUES (5, 'oa2020005', 'fb', '123456', 3, '符斌', '男', '1999-02-02', '党员', '已婚', '北京', NULL, NULL, NULL, NULL);
INSERT INTO `employee` VALUES (6, 'oa2020006', 'mx', '123456', 3, '闵雄', '男', '1999-02-02', '党员', '已婚', '北京', NULL, NULL, NULL, NULL);
INSERT INTO `employee` VALUES (7, 'oa2020007', 'zx', '123456', 4, '张晓', '男', '1999-02-02', '党员', '已婚', '北京', NULL, NULL, NULL, NULL);
INSERT INTO `employee` VALUES (8, 'oa2020008', 'lh', '123456', 5, '李航', '男', '1999-02-02', '党员', '已婚', '江西南昌', NULL, NULL, NULL, NULL);
INSERT INTO `employee` VALUES (9, 'oa2020009', 'wh', '123456', 6, '王涵', '女', '1999-02-02', '党员', '已婚', '江西南昌', NULL, NULL, NULL, NULL);
INSERT INTO `employee` VALUES (10, 'oa20200010', 'qq', '123456', 7, '齐全', '男', '1999-02-02', '党员', '未婚', '江西南昌', NULL, NULL, NULL, NULL);
INSERT INTO `employee` VALUES (11, 'oa20200011', 'lsm', '123456', 8, '刘淑梅', '女', '1999-02-02', '党员', '已婚', '江西南昌', NULL, NULL, NULL, NULL);
INSERT INTO `employee` VALUES (12, 'oa20200012', 'wxh', '123456', 9, '王晓辉', '男', '1999-02-02', '党员', '未婚', '江西南昌', NULL, NULL, NULL, NULL);
INSERT INTO `employee` VALUES (13, 'oa20200013', 'cxb', '123456', 10, '陈小兵', '男', '1999-02-02', '群众', '未婚', '江西南昌', NULL, NULL, NULL, NULL);
INSERT INTO `employee` VALUES (14, 'oa20200014', 'cx', '123456', 11, '程潇', '女', '1999-02-02', '群众', '未婚', '江西南昌', NULL, NULL, NULL, NULL);
INSERT INTO `employee` VALUES (15, 'oa20200015', 'xwc', '123456', 11, '熊文昌', '男', '1999-02-02', '群众', '未婚', '江西南昌', NULL, NULL, NULL, NULL);
INSERT INTO `employee` VALUES (16, 'oa20200016', 'gh', '123456', 12, '桂贺', '男', '1999-02-02', '群众', '未婚', '江西南昌', NULL, NULL, NULL, NULL);
INSERT INTO `employee` VALUES (17, 'oa20200017', 'hwc', '123456', 12, '贺文创', '男', '1999-02-02', '群众', '未婚', '江西南昌', NULL, NULL, NULL, NULL);
INSERT INTO `employee` VALUES (18, 'oa20200018', 'zxiao', '123456', 13, '张潇', '女', '1999-02-02', '群众', '未婚', '江西南昌', NULL, NULL, NULL, NULL);
INSERT INTO `employee` VALUES (19, 'oa20200019', 'lx', '123456', 13, '刘旭', '男', '1999-02-02', '群众', '未婚', '江西南昌', NULL, NULL, NULL, NULL);
INSERT INTO `employee` VALUES (20, 'oa20200020', 'zff', '123456', 13, '郑芳芳', '女', '1999-02-02', '群众', '未婚', '江西南昌', NULL, NULL, NULL, NULL);
INSERT INTO `employee` VALUES (49, 'oa20200021', 'zfx', '123456', 13, '张飞晓', '男', '1999-02-02', '群众', '未婚', '江西南昌', NULL, NULL, NULL, NULL);
INSERT INTO `employee` VALUES (50, 'oa20200022', 'lxh', '123456', 13, '李小航', '男', '1999-02-02', '群众', '未婚', '江西南昌', NULL, NULL, NULL, NULL);
INSERT INTO `employee` VALUES (51, 'oa20200023', 'whh', '123456', 13, '王涵涵', '女', '1999-02-02', '群众', '未婚', '江西南昌', NULL, NULL, NULL, NULL);
INSERT INTO `employee` VALUES (52, 'oa20200024', 'qs', '123456', 13, '齐善', '男', '1999-02-02', '群众', '未婚', '江西南昌', NULL, NULL, NULL, NULL);
INSERT INTO `employee` VALUES (53, 'oa20200025', 'lxm', '123456', 13, '刘小梅', '女', '1999-02-02', '群众', '未婚', '江西南昌', NULL, NULL, NULL, NULL);
INSERT INTO `employee` VALUES (54, 'oa20200026', 'wgh', '123456', 13, '王光辉', '男', '1999-02-02', '党员', '未婚', '江西南昌', NULL, NULL, NULL, NULL);
INSERT INTO `employee` VALUES (55, 'oa20200027', 'cg', '123456', 14, '陈果', '男', '1999-02-02', '党员', '未婚', '江西南昌', NULL, NULL, NULL, NULL);
INSERT INTO `employee` VALUES (56, 'oa20200028', 'gx', '123456', 14, '郭潇', '女', '1999-02-02', '党员', '未婚', '江西南昌', NULL, NULL, NULL, NULL);
INSERT INTO `employee` VALUES (57, 'oa20200029', 'lwc', '123456', 14, '李文昌', '男', '1999-02-02', '党员', '已婚', '江西南昌', NULL, NULL, NULL, NULL);
INSERT INTO `employee` VALUES (58, 'oa20200030', 'wfh', '123456', 15, '王非贺', '男', '1999-02-02', '党员', '已婚', '江西南昌', NULL, NULL, NULL, NULL);
INSERT INTO `employee` VALUES (59, 'oa20200031', 'zww', '123456', 15, '张文文', '男', '1999-02-02', '党员', '已婚', '江西南昌', NULL, NULL, NULL, NULL);
INSERT INTO `employee` VALUES (60, 'oa20200032', 'gxx', '123456', 16, ' 郭潇潇', '女', '1999-02-02', '党员', '已婚', '江西南昌', NULL, NULL, NULL, NULL);
INSERT INTO `employee` VALUES (61, 'oa20200033', 'lxg', '123456', 17, '刘旭国', '男', '1999-02-02', '党员', '已婚', '江西南昌', NULL, NULL, NULL, NULL);
INSERT INTO `employee` VALUES (62, 'oa20200034', 'zhf', '123456', 17, '郑赫兰', '男', '1999-02-01', '党员', '已婚', '江西南昌', NULL, '', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for module
-- ----------------------------
DROP TABLE IF EXISTS `module`;
CREATE TABLE `module` (
  `MODULE_ID` int NOT NULL DEFAULT '0' COMMENT '主键，部门编号',
  `MODULE_NAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '模块名',
  `MODULE_MURL` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '模块地址',
  `MODULE_STATE` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '模块状态（启用禁用）',
  `MODULE_CREATETIME` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`MODULE_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of module
-- ----------------------------
BEGIN;
INSERT INTO `module` VALUES (1, '用户管理', 'sys/users/findAllEmp', '启用', '2021-03-13');
INSERT INTO `module` VALUES (2, '角色管理', 'sys/role/findAllRole', '启用', '2021-03-13');
INSERT INTO `module` VALUES (3, '菜单管理', 'sys/module/findAllModule', '启用', '2021-03-13');
INSERT INTO `module` VALUES (4, '部门管理', 'sys/dept/findAllDept', '启用', '2021-03-13');
INSERT INTO `module` VALUES (5, '签到管理', 'javascript', '启用', '2021-03-13');
INSERT INTO `module` VALUES (6, '请假管理', 'javascript:void(0)', '启用', '2021-03-13');
INSERT INTO `module` VALUES (7, '公司基本信息', 'javascript:void(0)', '启用', '2021-03-13');
INSERT INTO `module` VALUES (8, '提交公告', 'javascript:void(0)', '启用', '2021-03-13');
INSERT INTO `module` VALUES (9, '公告审核', 'javascript:void(0)', '启用', '2021-03-13');
INSERT INTO `module` VALUES (10, '查看公告', 'javascript:void(0)', '启用', '2021-03-13');
INSERT INTO `module` VALUES (11, '员工留言', 'javascript:void(0)', '启用', '2021-03-13');
INSERT INTO `module` VALUES (12, '留言管理', 'javascript:void(0)', '启用', '2021-03-13');
INSERT INTO `module` VALUES (13, '员工删除历史', 'javascript:void(0)', '启用', '2021-03-13');
INSERT INTO `module` VALUES (14, '部门删除历史', 'javascript:void(0)', '启用', '2021-03-13');
INSERT INTO `module` VALUES (15, '职位删除历史', 'javascript:void(0)', '启用', '2021-03-13');
INSERT INTO `module` VALUES (16, '用户删除历史', 'javascript:void(0)', '启用', '2021-03-13');
INSERT INTO `module` VALUES (17, '用户评论', 'sys/users/userCom', '启用', '2021-03-27');
INSERT INTO `module` VALUES (18, '测试', '/sys/module/leave', '启用', '2021-03-02');
INSERT INTO `module` VALUES (19, '测试2', '/sys/module/leave2', '启用', '2021-03-03');
COMMIT;

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `PERM_ID` int NOT NULL COMMENT '权限编号',
  `PERM_MODULE_ID` int NOT NULL COMMENT '模块编号',
  `PERM_OP` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '操作（添删改查）'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of permission
-- ----------------------------
BEGIN;
INSERT INTO `permission` VALUES (1, 1, '添加');
INSERT INTO `permission` VALUES (2, 1, '删除');
INSERT INTO `permission` VALUES (3, 1, '修改');
INSERT INTO `permission` VALUES (4, 1, '查看');
INSERT INTO `permission` VALUES (5, 2, '添加');
INSERT INTO `permission` VALUES (6, 2, '删除');
INSERT INTO `permission` VALUES (7, 2, '修改');
INSERT INTO `permission` VALUES (8, 2, '查看');
INSERT INTO `permission` VALUES (9, 3, '添加');
INSERT INTO `permission` VALUES (10, 6, '修改');
INSERT INTO `permission` VALUES (11, 7, '查看');
INSERT INTO `permission` VALUES (12, 8, '添加');
INSERT INTO `permission` VALUES (13, 9, '删除');
INSERT INTO `permission` VALUES (14, 10, '修改');
INSERT INTO `permission` VALUES (15, 11, '查看');
INSERT INTO `permission` VALUES (16, 12, '添加');
INSERT INTO `permission` VALUES (17, 13, '删除');
INSERT INTO `permission` VALUES (18, 14, '修改');
INSERT INTO `permission` VALUES (19, 15, '查看');
COMMIT;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `ROLE_ID` int NOT NULL COMMENT '主键，角色编号',
  `ROLE_NAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名',
  `ROLE_STATE` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色状态（启用，禁用）',
  `ROLE_CREATETIME` date NOT NULL COMMENT '创建时间',
  `ROLE_EMP_ID` int DEFAULT NULL COMMENT '创建人',
  `ROLE_DESC` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限描述',
  `ROLE_DEPARTMENT_ID` int NOT NULL COMMENT '部门编号',
  PRIMARY KEY (`ROLE_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of role
-- ----------------------------
BEGIN;
INSERT INTO `role` VALUES (1, '董事长', '启用', '2021-03-07', 1, '董事会老大', 2);
INSERT INTO `role` VALUES (2, '总经理', '启用', '2021-03-11', 2, '总经理', 2);
INSERT INTO `role` VALUES (3, '总经理秘书', '启用', '2021-03-13', 3, '总经理办公室人员', 3);
INSERT INTO `role` VALUES (4, '行政部经理', '启用', '2021-03-13', 4, '行政部老大', 4);
INSERT INTO `role` VALUES (5, '财务部经理', '启用', '2021-03-13', 5, '财务部老大', 5);
INSERT INTO `role` VALUES (6, '研发部经理', '启用', '2021-03-13', 6, '研发部老大', 6);
INSERT INTO `role` VALUES (7, '测试部经理', '启用', '2021-03-13', 7, '测试部老大', 7);
INSERT INTO `role` VALUES (8, '售后经理', '启用', '2021-03-13', 8, '售后服务部老大', 8);
INSERT INTO `role` VALUES (9, '渠道经理', '启用', '2021-03-13', 9, '渠道部老大', 9);
INSERT INTO `role` VALUES (10, '营销部经理', '启用', '2021-03-13', 10, '营销部老大', 10);
INSERT INTO `role` VALUES (11, '行政人员', '启用', '2021-03-13', 11, '行政部成员', 4);
INSERT INTO `role` VALUES (12, '财务人员', '启用', '2021-03-13', 12, '财务部成员', 5);
INSERT INTO `role` VALUES (13, '研发人员', '启用', '2021-03-13', 13, '研发部成员', 6);
INSERT INTO `role` VALUES (14, '测试人员', '启用', '2021-03-13', 14, '测试部成员', 7);
INSERT INTO `role` VALUES (15, '售后客服', '启用', '2021-03-13', 15, '售后服务部成员', 8);
INSERT INTO `role` VALUES (16, '渠道专员', '启用', '2021-03-13', 16, '渠道部成员', 9);
INSERT INTO `role` VALUES (17, '营销人员', '启用', '2021-03-13', 17, '营销部成员', 10);
COMMIT;

-- ----------------------------
-- Table structure for role_module
-- ----------------------------
DROP TABLE IF EXISTS `role_module`;
CREATE TABLE `role_module` (
  `ROLE_ID` int NOT NULL COMMENT '角色编号',
  `MODULE_ID` int NOT NULL COMMENT '模块编号',
  KEY `ROLE_ID` (`ROLE_ID`) USING BTREE,
  KEY `MODULE_ID` (`MODULE_ID`) USING BTREE,
  CONSTRAINT `MODULE_ID` FOREIGN KEY (`MODULE_ID`) REFERENCES `module` (`MODULE_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ROLE_ID` FOREIGN KEY (`ROLE_ID`) REFERENCES `role` (`ROLE_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of role_module
-- ----------------------------
BEGIN;
INSERT INTO `role_module` VALUES (3, 1);
INSERT INTO `role_module` VALUES (3, 2);
INSERT INTO `role_module` VALUES (2, 1);
INSERT INTO `role_module` VALUES (2, 2);
INSERT INTO `role_module` VALUES (2, 3);
INSERT INTO `role_module` VALUES (2, 4);
INSERT INTO `role_module` VALUES (2, 5);
INSERT INTO `role_module` VALUES (2, 6);
INSERT INTO `role_module` VALUES (1, 1);
INSERT INTO `role_module` VALUES (1, 2);
INSERT INTO `role_module` VALUES (1, 3);
INSERT INTO `role_module` VALUES (1, 4);
INSERT INTO `role_module` VALUES (1, 5);
INSERT INTO `role_module` VALUES (1, 6);
INSERT INTO `role_module` VALUES (1, 7);
INSERT INTO `role_module` VALUES (1, 8);
INSERT INTO `role_module` VALUES (1, 9);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
