/*
 Navicat MySQL Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100119
 Source Host           : localhost:3306
 Source Schema         : hupo

 Target Server Type    : MySQL
 Target Server Version : 100119
 File Encoding         : 65001

 Date: 30/08/2020 21:57:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for details
-- ----------------------------
DROP TABLE IF EXISTS `details`;
CREATE TABLE `details`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `img` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(68) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` varchar(28) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `prices` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sales` int NULL DEFAULT NULL,
  `click` int NULL DEFAULT NULL,
  `smallimage` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `surplus` int NULL DEFAULT NULL,
  `detailsImg` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `detailsImgs` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `listiD` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of details
-- ----------------------------
INSERT INTO `details` VALUES (1, 'http://tianhehupo.com/upload/goods/20190527/c9951dbbdba89023f7b4e4455ae932671.png', '小狗（puppy）家用除螨无线挂式充电手持吸尘器T10 Cyclone', '市场价：￥1500.00', '1399.00', 5, 1, 'http://tianhehupo.com/upload/goods/20190527/c9951dbbdba89023f7b4e4455ae932673.png', 200, 'https://img30.360buyimg.com/jgsq-productsoa/jfs/t29245/355/1620845665/50344/19608608/5ce66d7cNbaafb8b1.jpg', 'https://img30.360buyimg.com/jgsq-productsoa/jfs/t1/58246/11/939/123974/5ceb4867Eba8dce41/01c33e6cc1e53b36.gif', 1);
INSERT INTO `details` VALUES (2, 'http://tianhehupo.com/upload/goods/20190527/854efd8f7d30485ef9803732f9f189fb1.png', '美的（Midea）1.5匹 变频 智弧 冷暖 智能壁挂式卧室空调挂机 KFR-35GW/WDAA3', '市场价：￥2500.00', '2299.00', 426, 46, 'http://tianhehupo.com/upload/goods/20190527/854efd8f7d30485ef9803732f9f189fb3.png', 200, 'https://img30.360buyimg.com/jgsq-productsoa/jfs/t1/80374/18/280/130955/5ce75810E864673e2/3787cf4d08f5f063.jpg', NULL, 1);
INSERT INTO `details` VALUES (3, 'http://tianhehupo.com/upload/goods/20190527/928e44456628f42b7bc5b3c6155e63811.png', '海信 Hisense 88L5 88英寸4K AI智能激光电视 3+32GB大内存 健康护眼', '', '29999.00', 0, 49, 'http://tianhehupo.com/upload/goods/20190527/928e44456628f42b7bc5b3c6155e63813.png', 200, NULL, NULL, 1);
INSERT INTO `details` VALUES (4, 'http://tianhehupo.com/upload/goods/20190527/ee9ba037487b0e1cedf83aba35cf42ae1.jpg', '\r\n					海信（Hisense）超高清4K HDR 金属背板 人工智能液晶电视机 丰富影视教育资源	', '市场价：￥2000.00', '1799.00', 0, 53, 'http://tianhehupo.com/upload/goods/20190527/ee9ba037487b0e1cedf83aba35cf42ae3.jpg', 200, 'http://tianhehupo.com/upload/ueditor/image/20190527/1558960315553426.jpg', NULL, 1);
INSERT INTO `details` VALUES (5, 'http://tianhehupo.com/upload/goods/20190527/7f2806615e9fc317117fdd278f288e481.png', '\r\n					Apple iPhone XR 透明保护壳/手机壳', '', '30.00', 1, 40, 'http://tianhehupo.com/upload/goods/20190527/7f2806615e9fc317117fdd278f288e483.png', 200, 'http://tianhehupo.com/upload/ueditor/image/20190527/1558961901853407.png', NULL, 2);
INSERT INTO `details` VALUES (6, 'http://tianhehupo.com/upload/goods/20190527/c2340bfe3b66621dfe4b5e328b8656801.png', '\r\n					Apple iPhone XR (A2108) 64GB 白色 移动联通电信4G手机 双卡双待', '市场价：￥5500.00', '5299.00', 0, 58, 'http://tianhehupo.com/upload/goods/20190527/c2340bfe3b66621dfe4b5e328b8656803.png', 200, 'https://img30.360buyimg.com/jgsq-productsoa/jfs/t28075/27/1290865836/113685/272b0fd1/5cdcc3d5Ne8512572.jpg', 'https://img11.360buyimg.com/cms/jfs/t29689/168/287401247/104423/c65e1143/5bee7fa4N7edaddfd.jpg', 2);
INSERT INTO `details` VALUES (7, 'http://tianhehupo.com/upload/goods/20190527/a620b1a98a369edf4b3fcfc308085c891.png', '\r\n					小米 红米Redmi Note7 幻彩渐变AI双摄 4GB+64GB 梦幻', '市场价：￥1300.00', '1199.00', 0, 40, 'http://tianhehupo.com/upload/goods/20190527/a620b1a98a369edf4b3fcfc308085c893.png', 100, 'https://img14.360buyimg.com/cms/jfs/t1/78557/6/502/239949/5cebbcdeE77c02713/5d7b6352b6b88d98.jpg', NULL, 2);
INSERT INTO `details` VALUES (8, 'http://tianhehupo.com/upload/goods/20190527/e93f0ca34f470237a0bcf3dd69b164411.png', '\r\n					小米MIX2S 全面屏游戏手机 6GB+128GB 白色 全网通4G 陶瓷手机', '市场价：￥2800.00', '2499', 0, 100, 'http://tianhehupo.com/upload/goods/20190527/e93f0ca34f470237a0bcf3dd69b164413.png', 100, 'https://img14.360buyimg.com/cms/jfs/t1/78557/6/502/239949/5cebbcdeE77c02713/5d7b6352b6b88d98.jpg', NULL, 2);
INSERT INTO `details` VALUES (9, 'http://tianhehupo.com/upload/goods/20190528/3230d4b8751177364dc68de5f8f06bcc1.png', '\r\n					AOC Q2490PXQ 23.8英寸 IPS 2K高清 微边框 低蓝光不闪		', NULL, '1149', 0, 0, 'http://tianhehupo.com/upload/goods/20190528/3230d4b8751177364dc68de5f8f06bcc3.png', 200, 'https://img20.360buyimg.com/vc/jfs/t15016/79/1571977093/261512/8c658166/5a52ed9eNa0ea8613.jpg', NULL, 3);

-- ----------------------------
-- Table structure for list
-- ----------------------------
DROP TABLE IF EXISTS `list`;
CREATE TABLE `list`  (
  `lid` int NOT NULL AUTO_INCREMENT,
  `img` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tite` varchar(68) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` decimal(6, 2) NULL DEFAULT NULL,
  `kid` int NULL DEFAULT NULL,
  PRIMARY KEY (`lid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of list
-- ----------------------------
INSERT INTO `list` VALUES (1, 'http://www.tianhehupo.com/upload/goods/20190527/c9951dbbdba89023f7b4e4455ae932673.png', '小狗（puppy）家用除螨无线挂式充电手持吸尘器T10 Cyclone', 1399.00, 1);
INSERT INTO `list` VALUES (2, 'http://www.tianhehupo.com/upload/goods/20190527/854efd8f7d30485ef9803732f9f189fb3.png', '美的（Midea）1.5匹 变频 智弧 冷暖 智能壁挂式卧室空调挂机 KFR-35GW/WDAA3@', 2299.00, 1);
INSERT INTO `list` VALUES (3, 'http://www.tianhehupo.com/upload/goods/20190527/928e44456628f42b7bc5b3c6155e63813.png', '海信 Hisense 88L5 88英寸4K AI智能激光电视 3+32GB大内存 健康护眼', 9999.99, 1);
INSERT INTO `list` VALUES (4, 'http://www.tianhehupo.com/upload/goods/20190527/ee9ba037487b0e1cedf83aba35cf42ae3.jpg', '海信（Hisense）超高清4K HDR 金属背板 人工智能液晶电视机 丰富影视教育资源', 1799.00, 1);
INSERT INTO `list` VALUES (5, 'http://www.tianhehupo.com/upload/goods/20190527/7f2806615e9fc317117fdd278f288e483.png', 'Apple iPhone XR 透明保护壳/手机壳', 30.00, 2);
INSERT INTO `list` VALUES (6, 'http://www.tianhehupo.com/upload/goods/20190527/c2340bfe3b66621dfe4b5e328b8656803.png', 'Apple iPhone XR (A2108) 64GB 白色 移动联通电信4G手机 双卡双待	', 5299.00, 2);
INSERT INTO `list` VALUES (7, 'http://www.tianhehupo.com/upload/goods/20190527/a620b1a98a369edf4b3fcfc308085c893.png', '小米 红米Redmi Note7 幻彩渐变AI双摄 4GB+64GB 梦幻蓝', 1199.00, 2);
INSERT INTO `list` VALUES (8, 'http://www.tianhehupo.com/upload/goods/20190527/e93f0ca34f470237a0bcf3dd69b164413.png', '小米MIX2S 全面屏游戏手机 6GB+128GB 白色 全网通4G 陶瓷手机	', 2499.00, 2);
INSERT INTO `list` VALUES (9, 'http://www.tianhehupo.com/upload/goods/20190528/3230d4b8751177364dc68de5f8f06bcc3.png', 'AOC Q2490PXQ 23.8英寸 IPS 2K高清 微边框 低蓝光不闪', 1149.00, 3);
INSERT INTO `list` VALUES (10, 'http://www.tianhehupo.com/upload/goods/20190528/96a3c6862eae966f11bdc4470bf0a1b33.png', '西部数据(WD)蓝盘 1TB SATA6Gb/s 7200转64MB 台式机械硬盘(WD10EZEX)', 299.00, 3);
INSERT INTO `list` VALUES (11, 'http://www.tianhehupo.com/upload/goods/20190528/ca620b433b8a041b62af7906deb95f7f3.png', '荣耀MagicBook 2019 14英寸轻薄窄边框笔记本电脑', 4299.00, 3);
INSERT INTO `list` VALUES (12, 'http://www.tianhehupo.com/upload/goods/20190528/56e30e5cbff51adfae8a580662d0b25a3.png', '罗技（G）G102有线鼠标 游戏鼠标 RBG鼠标 轻量化设计', 119.00, 3);
INSERT INTO `list` VALUES (13, 'http://www.tianhehupo.com/upload/goods/20190528/5bd47d5934b1c373e71b22683561ffc13.png', '美丽雅（MARYYA）大挪移衣叉收缩晾衣铝合金衣叉	', 30.00, 4);
INSERT INTO `list` VALUES (14, 'http://www.tianhehupo.com/upload/goods/20190528/7aadb42f43a60c02d84f65b717a2199b3.png', '晟旎尚品 衣架 宽肩无痕晾衣架	', 45.90, 4);
INSERT INTO `list` VALUES (15, 'http://www.tianhehupo.com/upload/goods/20190528/5032a3f74eb9e49ee9b551abe6faa6f63.png', '加品惠 衣架 实木裤夹 防滑裤夹 西裤挂衣架 裤裙晾晒架 商务居家宾馆衣裳架子 6只装 JX-0582', 29.90, 4);
INSERT INTO `list` VALUES (16, 'http://www.tianhehupo.com/upload/goods/20190528/cea20b84553ae2c1249a25c14d5814643.png', 'LOVO家纺 水洗棉床上四件套纯棉床上用品套件	', 399.00, 4);
INSERT INTO `list` VALUES (17, 'http://www.tianhehupo.com/upload/goods/20190528/5bd47d5934b1c373e71b22683561ffc13.png', '美丽雅（MARYYA）大挪移衣叉收缩晾衣铝合金衣叉	', 30.00, 5);
INSERT INTO `list` VALUES (18, 'http://www.tianhehupo.com/upload/goods/20190528/7aadb42f43a60c02d84f65b717a2199b3.png', '晟旎尚品 衣架 宽肩无痕晾衣架	', 45.90, 5);
INSERT INTO `list` VALUES (19, 'http://www.tianhehupo.com/upload/goods/20190528/5032a3f74eb9e49ee9b551abe6faa6f63.png', '加品惠 衣架 实木裤夹 防滑裤夹 西裤挂衣架 裤裙晾晒架 商务居家宾馆衣裳架子 6只装 JX-0582', 29.90, 5);
INSERT INTO `list` VALUES (20, 'http://www.tianhehupo.com/upload/goods/20190528/cea20b84553ae2c1249a25c14d5814643.png', 'LOVO家纺 水洗棉床上四件套纯棉床上用品套件	', 399.00, 5);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `upwd` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cpwd` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (2, '13281860000', '1111111', NULL);
INSERT INTO `user` VALUES (3, '13281860001', '22222222', NULL);
INSERT INTO `user` VALUES (4, '13281860812', '33333333', NULL);
INSERT INTO `user` VALUES (5, '13281860814', '44444444', NULL);
INSERT INTO `user` VALUES (6, '', '', NULL);
INSERT INTO `user` VALUES (7, '13281860002', '11111111', NULL);
INSERT INTO `user` VALUES (8, '13281860003', '11111111', NULL);
INSERT INTO `user` VALUES (9, '13281860005', '11111111', NULL);
INSERT INTO `user` VALUES (10, '13281860006', '11111111', NULL);
INSERT INTO `user` VALUES (11, '13281860008', '11111111', NULL);
INSERT INTO `user` VALUES (12, '1', '', NULL);
INSERT INTO `user` VALUES (13, '1111111111', '', NULL);

SET FOREIGN_KEY_CHECKS = 1;
