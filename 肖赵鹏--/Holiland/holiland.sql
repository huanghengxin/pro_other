-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2020-09-13 04:52:29
-- 服务器版本： 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `holiland`
--

-- --------------------------------------------------------

--
-- 表的结构 `buy`
--

CREATE TABLE `buy` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `list_id` int(11) DEFAULT NULL,
  `spe_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `buy`
--

INSERT INTO `buy` (`id`, `user_id`, `list_id`, `spe_id`, `count`) VALUES
(71, 16, 20, 38, 1),
(72, 16, 8, 15, 6),
(73, 16, 4, 7, 10),
(74, 16, 9, 16, 1),
(75, 16, 9, 16, 1),
(76, 16, 10, 21, 1),
(77, 16, 9, 16, 1),
(78, 16, 9, 16, 1),
(79, 16, 10, 21, 1),
(80, 16, 9, 16, 1),
(81, 16, 10, 21, 1),
(82, 16, 3, 6, 1),
(83, 16, 3, 6, 1),
(84, 16, 23, 0, 1),
(85, 16, 23, 0, 1),
(86, 16, 4, 7, 3),
(87, 16, 4, 7, 1),
(88, 16, 12, 25, 1),
(89, 16, 8, 17, 1),
(90, 18, 1, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `details` varchar(255) DEFAULT NULL,
  `list_id` varchar(255) DEFAULT NULL,
  `list_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `details`
--

INSERT INTO `details` (`id`, `details`, `list_id`, `list_name`) VALUES
(1, 'http://img.holiland.com/images/upload/images/20180307/1520418120614145.jpg', '1', '浪漫甜心'),
(2, 'http://img.holiland.com/images/upload/images/20170608/1496887310611887.jpg', '2', '玫瑰物语'),
(3, 'http://img.holiland.com/images/upload/images/20190123/1548236962824836.jpg', '3', '玫瑰花园'),
(4, 'http://img.holiland.com/images/upload/images/20200529/1590733379180862.jpg', '4', '臻爱礼盒'),
(5, 'http://img.holiland.com/images/upload/images/20191015/1571127141206831.jpg', '5', '爱的告白'),
(6, 'http://img.holiland.com/images/upload/images/20200315/1584258924605950.jpg', '6', '特殊补缴款'),
(7, 'http://img.holiland.com/images/upload/images/20180530/1527690707412946.jpg', '7', '欢乐牧场'),
(8, 'http://img.holiland.com/images/upload/images/20180530/1527690368160963.jpg', '8', '甜蜜小家'),
(9, 'http://img.holiland.com/images/upload/images/20180530/1527690490935532.jpg', '9', '天真烂漫'),
(10, 'http://img.holiland.com/images/upload/images/20200529/1590732420170879.jpg', '10', '快乐成长'),
(11, 'http://img.holiland.com/images/upload/images/20180307/1520418967832497.jpg', '11', '欢乐童年'),
(12, 'http://img.holiland.com/images/upload/images/20180101/1514804178132359.jpg', '12', '童话世界'),
(13, 'http://img.holiland.com/images/upload/images/20200529/1590724318404498.jpg', '13', '彩虹天使'),
(14, 'http://img.holiland.com/images/upload/images/20200529/1590732614636655.jpg', '14', '萌猫乐园'),
(15, 'http://img.holiland.com/images/upload/images/20200529/1590732479139694.jpg', '15', '快乐时光'),
(16, 'http://img.holiland.com/images/upload/images/20180308/1520516849617683.jpg', '16', '甜蜜花园'),
(17, 'http://img.holiland.com/images/upload/images/20181210/1544410405116422.jpg', '17', '欢乐起航'),
(18, 'http://img.holiland.com/images/upload/images/20180530/1527690703653717.jpg', '18', '小小旅行家'),
(19, 'http://img.holiland.com/images/upload/images/20190904/1567576042164272.jpg', '19', '小小飞行员'),
(20, 'http://hlladmin.holiland.com/images/upload/images/20200805/1596627531849275.jpg', '20', '半熟花花马卡龙-七夕情人节礼盒'),
(21, 'http://img.holiland.com/images/upload/images/20200520/1589943414489228.jpg', '21', '好利来宝莉联名云朵芝士'),
(22, 'http://img.holiland.com/images/upload/images/20200422/1587551825125721.jpg', '22', '爆浆球'),
(23, 'http://hlladmin.holiland.com/images/upload/images/20200729/1595990140765277.jpg', '23', '雪顶威风'),
(24, 'http://img.holiland.com/images/upload/images/20200619/1592535052693285.jpg', '24', '层层爆浆葡萄蛋糕'),
(25, 'http://img.holiland.com/images/upload/images/20200619/1592535466931422.jpg', '25', '雪绒芝士'),
(26, 'http://img.holiland.com/images/upload/images/20191028/1572248869654621.jpg', '26', '海盐玫瑰小酥'),
(27, 'http://img.holiland.com/images/upload/images/20191126/1574771899527070.jpg', '27', '生巧克力'),
(28, 'http://img.holiland.com/images/upload/images/20190131/1548905843270365.jpg', '28', '生吐司'),
(29, 'http://img.holiland.com/images/upload/images/20180904/1536062916212287.jpg', '29', '冰山熔岩'),
(30, 'http://img.holiland.com/images/upload/images/20180904/1536063783413059.jpg', '30', '蒲公英空气巧克力'),
(31, 'http://img.holiland.com/images/upload/images/20180904/1536062385543675.jpg', '31', '北海道芝士牧场'),
(32, 'http://img.holiland.com/images/upload/images/20200701/1593592846767514.jpg', '32', '半熟芝士'),
(33, 'http://img.holiland.com/images/upload/images/20180104/1515028564752212.jpg', '33', '玫瑰绿豆糕'),
(34, 'http://img.holiland.com/images/upload/images/20200729/1596001724659289.jpg', '34', '东京香蕉脆'),
(35, 'http://img.holiland.com/images/upload/images/20160517/1463474138888492.jpg', '35', '葡萄奶酥'),
(36, 'http://hlladmin.holiland.com/images/upload/images/20200814/1597378710111112.jpg', '36', '蜂蜜蛋糕'),
(37, 'http://img.holiland.com/images/upload/images/20180717/1531827971614966.jpg', '37', '双层芝士蛋糕'),
(38, 'http://img.holiland.com/images/upload/images/20180104/1515026574277683.jpg', '38', '玫瑰蛋黄酥'),
(39, 'http://hlladmin.holiland.com/images/upload/images/20200729/1595991134769408.jpg', '39', '甜霜'),
(40, 'http://hlladmin.holiland.com/images/upload/images/20200729/1596016297622971.jpg', '40', '北海道蛋糕'),
(41, 'http://hlladmin.holiland.com/images/upload/images/20200729/1595999101756929.jpg', '41', '马卡龙'),
(42, 'http://hlladmin.holiland.com/images/upload/images/20200729/1595998017758478.jpg', '42', '蓝莓酥'),
(43, 'http://img.holiland.com/images/upload/images/20180717/1531809991443188.jpg', '43', '青森芝士条'),
(44, 'http://img.holiland.com/images/upload/images/20180104/1515030586868842.jpg', '44', '玫瑰鲜花饼'),
(45, 'http://img.holiland.com/images/upload/images/20180717/1531828231838591.jpg', '45', '半熟芝士挞'),
(46, 'http://img.holiland.com/images/upload/images/20200528/1590643371373731.jpg', '1', NULL),
(47, 'http://img.holiland.com/images/upload/images/20200528/1590643348106925.jpg', '1', NULL),
(48, 'http://img.holiland.com/images/upload/images/20200528/1590643352666992.jpg', '1', NULL),
(49, 'http://img.holiland.com/images/upload/images/20200528/1590643516134999.jpg', '2', NULL),
(50, 'http://img.holiland.com/images/upload/images/20200528/1590643520197343.jpg', '2', NULL),
(51, 'http://img.holiland.com/images/upload/images/20200528/1590643523566986.jpg', '2', NULL),
(52, 'http://img.holiland.com/images/upload/images/20200528/1590643611499082.jpg', '3', NULL),
(53, 'http://img.holiland.com/images/upload/images/20200528/1590643615258707.jpg', '3', NULL),
(54, 'http://img.holiland.com/images/upload/images/20200528/1590643619885163.jpg', '3', NULL),
(55, 'http://img.holiland.com/images/upload/images/20200529/1590733384532948.jpg', '4', NULL),
(56, 'http://img.holiland.com/images/upload/images/20200529/1590733384532948.jpg', '4', NULL),
(57, 'http://img.holiland.com/images/upload/images/20200529/1590733388796217.jpg', '4', NULL),
(58, 'http://img.holiland.com/images/upload/images/20200529/1590733388796217.jpg', '4', NULL),
(59, 'http://img.holiland.com/images/upload/images/20200529/1590733391125157.jpg', '4', NULL),
(60, 'http://img.holiland.com/images/upload/images/20190123/1548217401382335.jpg', '5', NULL),
(61, 'http://img.holiland.com/images/upload/images/20160704/1467594158915720.jpg', '6', NULL),
(62, 'http://img.holiland.com/images/upload/images/20200529/1590732425718501.jpg', '10', NULL),
(63, 'http://img.holiland.com/images/upload/images/20200529/1590732428362112.jpg', '10', NULL),
(64, 'http://img.holiland.com/images/upload/images/20200529/1590732432616430.jpg', '10', NULL),
(65, 'http://img.holiland.com/images/upload/images/20190123/1548218084910746.jpg', '11', NULL),
(66, 'http://img.holiland.com/images/upload/images/20190123/1548218084910746.jpg', '11', NULL),
(67, 'http://img.holiland.com/images/upload/images/20160702/1467454770539094.jpg', '11', NULL),
(68, 'http://img.holiland.com/images/upload/images/20190123/1548218084910746.jpg', '12', NULL),
(69, 'http://img.holiland.com/images/upload/images/20190123/1548218084910746.jpg', '12', NULL),
(70, 'http://img.holiland.com/images/upload/images/20161101/1477991082760506.jpg', '12', NULL),
(71, 'http://img.holiland.com/images/upload/images/20200529/1590724297106822.jpg', '13', NULL),
(72, 'http://img.holiland.com/images/upload/images/20200529/1590724297106822.jpg', '13', NULL),
(73, 'http://img.holiland.com/images/upload/images/20200529/1590724301134517.jpg', '13', NULL),
(74, 'http://img.holiland.com/images/upload/images/20200529/1590724301134517.jpg', '13', NULL),
(75, 'http://img.holiland.com/images/upload/images/20200529/1590724304227379.jpg', '13', NULL),
(76, 'http://img.holiland.com/images/upload/images/20200529/1590724304227379.jpg', '13', NULL),
(77, 'http://img.holiland.com/images/upload/images/20200529/1590732620115398.jpg', '14', NULL),
(78, 'http://img.holiland.com/images/upload/images/20200529/1590732620115398.jpg', '14', NULL),
(79, 'http://img.holiland.com/images/upload/images/20200529/1590732623436815.jpg', '14', NULL),
(80, 'http://img.holiland.com/images/upload/images/20200529/1590732623436815.jpg', '14', NULL),
(81, 'http://img.holiland.com/images/upload/images/20200529/1590732627881161.jpg', '14', NULL),
(82, 'http://img.holiland.com/images/upload/images/20200529/1590732627881161.jpg', '14', NULL),
(83, 'http://img.holiland.com/images/upload/images/20200529/1590732484345846.jpg', '15', NULL),
(84, 'http://img.holiland.com/images/upload/images/20200529/1590732484345846.jpg', '15', NULL),
(85, 'http://img.holiland.com/images/upload/images/20200529/1590732488627016.jpg', '15', NULL),
(86, 'http://img.holiland.com/images/upload/images/20200529/1590732488627016.jpg', '15', NULL),
(87, 'http://img.holiland.com/images/upload/images/20200529/1590732491846908.jpg', '15', NULL),
(88, 'http://img.holiland.com/images/upload/images/20200529/1590732491846908.jpg', '15', NULL),
(89, 'http://img.holiland.com/images/upload/images/20200315/1584258924605950.jpg', '16', NULL),
(90, 'http://img.holiland.com/images/upload/images/20200315/1584258924605950.jpg', '16', NULL),
(91, 'http://img.holiland.com/images/upload/images/20170322/1490167255746325.jpg', '16', NULL),
(92, 'http://img.holiland.com/images/upload/images/20180104/1515030588672187.jpg', '44', NULL),
(93, 'http://img.holiland.com/images/upload/images/20180104/1515030590129466.jpg', '44', NULL),
(94, 'http://img.holiland.com/images/upload/images/20180104/1515030590129466.jpg', '44', NULL),
(95, 'http://img.holiland.com/images/upload/images/20180104/1515030593718009.jpg', '44', NULL),
(96, 'http://img.holiland.com/images/upload/images/20180104/1515030593718009.jpg', '44', NULL),
(97, 'http://img.holiland.com/images/upload/images/20180104/1515030595774450.jpg', '44', NULL),
(98, 'http://img.holiland.com/images/upload/images/20180104/1515030595774450.jpg', '44', NULL),
(99, 'http://img.holiland.com/images/upload/images/20180104/1515030617629682.jpg', '44', NULL),
(100, 'http://img.holiland.com/images/upload/images/20191126/1574770821693149.jpg', '44', NULL),
(101, 'http://img.holiland.com/images/upload/images/20191126/1574770825187080.jpg', '44', NULL),
(102, 'http://img.holiland.com/images/upload/images/20180104/1515030630147665.jpg', '44', NULL),
(103, 'http://hlladmin.holiland.com/images/upload/images/20200805/1596627534325965.jpg', '20', NULL),
(104, 'http://hlladmin.holiland.com/images/upload/images/20200805/1596627538385306.jpg', '20', NULL),
(105, 'http://hlladmin.holiland.com/images/upload/images/20200805/1596627542503428.jpg', '20', NULL),
(106, 'http://hlladmin.holiland.com/images/upload/images/20200805/1596627546934047.jpg', '20', NULL),
(107, 'http://hlladmin.holiland.com/images/upload/images/20200805/1596627550218988.jpg', '20', NULL),
(108, 'http://hlladmin.holiland.com/images/upload/images/20200805/1596627555116990.jpg', '20', NULL),
(109, 'http://hlladmin.holiland.com/images/upload/images/20200805/1596627555116990.jpg', '20', NULL),
(110, 'http://hlladmin.holiland.com/images/upload/images/20200805/1596627566606963.jpg', '20', NULL),
(111, 'http://hlladmin.holiland.com/images/upload/images/20200805/1596627570261934.jpg', '20', NULL),
(112, 'http://img.holiland.com/images/upload/images/20200520/1589943418131707.jpg', '21', NULL),
(113, 'http://img.holiland.com/images/upload/images/20200520/1589943422420205.jpg', '21', NULL),
(114, 'http://img.holiland.com/images/upload/images/20200520/1589943425138437.jpg', '21', NULL),
(115, 'http://img.holiland.com/images/upload/images/20200520/1589943429140597.jpg', '21', NULL),
(116, 'http://img.holiland.com/images/upload/images/20200520/1589943441120609.jpg', '21', NULL),
(117, 'http://img.holiland.com/images/upload/images/20200520/1589943463920664.jpg', '21', NULL),
(118, 'http://img.holiland.com/images/upload/images/20200520/1589943471256426.jpg', '21', NULL),
(119, 'http://img.holiland.com/images/upload/images/20200520/1589943475976175.jpg', '21', NULL),
(120, 'http://img.holiland.com/images/upload/images/20200520/1589943479106731.jpg', '21', NULL),
(121, 'http://img.holiland.com/images/upload/images/20200520/1589943485107514.jpg', '21', NULL),
(122, 'http://img.holiland.com/images/upload/images/20200520/1589943488443356.jpg', '21', NULL),
(123, 'http://img.holiland.com/images/upload/images/20200520/1589943493139169.jpg', '21', NULL),
(124, 'http://img.holiland.com/images/upload/images/20200422/1587551830414396.jpg', '22', NULL),
(125, 'http://img.holiland.com/images/upload/images/20200422/1587551834179528.jpg', '22', NULL),
(126, 'http://img.holiland.com/images/upload/images/20200422/1587551838138433.jpg', '22', NULL),
(127, 'http://img.holiland.com/images/upload/images/20200422/1587551843111503.jpg', '22', NULL),
(128, 'http://img.holiland.com/images/upload/images/20200422/1587551849820271.jpg', '22', NULL),
(129, 'http://img.holiland.com/images/upload/images/20200423/1587603386702838.jpg', '22', NULL),
(130, 'http://img.holiland.com/images/upload/images/20200423/1587603396490261.jpg', '22', NULL),
(131, 'http://img.holiland.com/images/upload/images/20191211/1576062468597334.jpg', '22', NULL),
(132, 'http://img.holiland.com/images/upload/images/20191211/1576062471504088.jpg', '22', NULL),
(133, 'http://hlladmin.holiland.com/images/upload/images/20200729/1595990144121878.jpg', '23', NULL),
(134, 'http://hlladmin.holiland.com/images/upload/images/20200729/1595990148589105.jpg', '23', NULL),
(135, 'http://hlladmin.holiland.com/images/upload/images/20200729/1595990153268862.jpg', '23', NULL),
(136, 'http://hlladmin.holiland.com/images/upload/images/20200729/1595990157262838.jpg', '23', NULL),
(137, 'http://hlladmin.holiland.com/images/upload/images/20200729/1595990162453296.jpg', '23', NULL),
(138, 'http://hlladmin.holiland.com/images/upload/images/20200729/1595990166105677.png', '23', NULL),
(139, 'http://hlladmin.holiland.com/images/upload/images/20200729/1595990169738425.jpg', '23', NULL),
(140, 'http://hlladmin.holiland.com/images/upload/images/20200729/1595990173903280.jpg', '23', NULL),
(141, 'http://img.holiland.com/images/upload/images/20200619/1592535055490433.jpg', '24', NULL),
(142, 'http://img.holiland.com/images/upload/images/20200619/1592535059100294.jpg', '24', NULL),
(143, 'http://img.holiland.com/images/upload/images/20200619/1592535064132236.jpg', '24', NULL),
(144, 'http://img.holiland.com/images/upload/images/20200619/1592535071583855.jpg', '24', NULL),
(145, 'http://img.holiland.com/images/upload/images/20200619/1592535076919761.jpg', '24', NULL),
(146, 'http://img.holiland.com/images/upload/images/20200619/1592535081365425.jpg', '24', NULL),
(147, 'http://img.holiland.com/images/upload/images/20200619/1592535086457599.jpg', '24', NULL),
(148, 'http://img.holiland.com/images/upload/images/20200619/1592535090397613.jpg', '24', NULL),
(149, 'http://img.holiland.com/images/upload/images/20200619/1592535093929056.jpg', '24', NULL),
(150, 'http://img.holiland.com/images/upload/images/20170214/1487061347159533.jpg', '45', NULL),
(151, 'http://img.holiland.com/images/upload/images/20170214/1487061350226837.jpg', '45', NULL),
(152, 'http://img.holiland.com/images/upload/images/20191126/1574770821693149.jpg', '45', NULL),
(153, 'http://img.holiland.com/images/upload/images/20191126/1574770825187080.jpg', '45', NULL),
(154, 'http://img.holiland.com/images/upload/images/20170215/1487151856815279.jpg', '45', NULL),
(155, 'http://img.holiland.com/images/upload/images/20200619/1592535470245926.jpg', '25', NULL),
(156, 'http://img.holiland.com/images/upload/images/20200619/1592535474490605.jpg', '25', NULL),
(157, 'http://img.holiland.com/images/upload/images/20200619/1592535478756627.jpg', '25', NULL),
(158, 'http://img.holiland.com/images/upload/images/20200619/1592535483910982.jpg', '25', NULL),
(159, 'http://img.holiland.com/images/upload/images/20200619/1592535487137473.jpg', '25', NULL),
(160, 'http://img.holiland.com/images/upload/images/20200619/1592535494109890.jpg', '25', NULL),
(161, 'http://img.holiland.com/images/upload/images/20200619/1592535498293605.jpg', '25', NULL),
(162, 'http://img.holiland.com/images/upload/images/20190707/1562502923445155.jpg', '25', NULL),
(163, 'http://img.holiland.com/images/upload/images/20190707/1562502926652644.jpg', '25', NULL),
(164, 'http://img.holiland.com/images/upload/images/20190707/1562502928538776.jpg', '25', NULL),
(165, 'http://img.holiland.com/images/upload/images/20190707/1562502934220183.jpg', '25', NULL),
(166, 'http://img.holiland.com/images/upload/images/20190707/1562502937330155.jpg', '25', NULL),
(167, 'http://img.holiland.com/images/upload/images/20190707/1562502940917600.jpg', '25', NULL),
(168, 'http://img.holiland.com/images/upload/images/20190707/1562502945255068.jpg', '25', NULL),
(169, 'http://img.holiland.com/images/upload/images/20191126/1574770821693149.jpg', '25', NULL),
(170, 'http://img.holiland.com/images/upload/images/20191126/1574770825187080.jpg', '25', NULL),
(171, 'http://img.holiland.com/images/upload/images/20191028/1572248871485284.jpg', '26', NULL),
(172, 'http://img.holiland.com/images/upload/images/20191028/1572248874401526.jpg', '26', NULL),
(173, 'http://img.holiland.com/images/upload/images/20191028/1572248876165803.jpg', '26', NULL),
(174, 'http://img.holiland.com/images/upload/images/20191028/1572248879779254.jpg', '26', NULL),
(175, 'http://img.holiland.com/images/upload/images/20191028/1572248882469144.jpg', '26', NULL),
(176, 'http://img.holiland.com/images/upload/images/20191028/1572248885334361.jpg', '26', NULL),
(177, 'http://img.holiland.com/images/upload/images/20191126/1574770821693149.jpg', '26', NULL),
(178, 'http://img.holiland.com/images/upload/images/20191126/1574770825187080.jpg', '26', NULL),
(179, 'http://img.holiland.com/images/upload/images/20191126/1574771899176499.jpg', '27', NULL),
(180, 'http://img.holiland.com/images/upload/images/20191126/1574771900294176.jpg', '27', NULL),
(181, 'http://img.holiland.com/images/upload/images/20191126/1574771900427258.jpg', '27', NULL),
(182, 'http://img.holiland.com/images/upload/images/20191126/1574771900781597.jpg', '27', NULL),
(183, 'http://img.holiland.com/images/upload/images/20191126/1574771900210197.jpg', '27', NULL),
(184, 'http://img.holiland.com/images/upload/images/20191126/1574771900438811.jpg', '27', NULL),
(185, 'http://img.holiland.com/images/upload/images/20191126/1574771900641592.jpg', '27', NULL),
(186, 'http://img.holiland.com/images/upload/images/20191126/1574770821693149.jpg', '27', NULL),
(187, 'http://img.holiland.com/images/upload/images/20191126/1574770825187080.jpg', '27', NULL),
(188, 'http://img.holiland.com/images/upload/images/20190131/1548905848545800.jpg', '28', NULL),
(189, 'http://img.holiland.com/images/upload/images/20190131/1548905852218083.jpg', '28', NULL),
(190, 'http://img.holiland.com/images/upload/images/20190131/1548905856985087.jpg', '28', NULL),
(191, 'http://img.holiland.com/images/upload/images/20190131/1548905865876152.jpg', '28', NULL),
(192, 'http://img.holiland.com/images/upload/images/20190131/1548905870688294.jpg', '28', NULL),
(193, 'http://img.holiland.com/images/upload/images/20190131/1548905873136621.jpg', '28', NULL),
(194, 'http://img.holiland.com/images/upload/images/20191126/1574770821693149.jpg', '28', NULL),
(195, 'http://img.holiland.com/images/upload/images/20191126/1574770825187080.jpg', '28', NULL),
(196, 'http://img.holiland.com/images/upload/images/20200701/1593591505267657.jpg', '29', NULL),
(197, 'http://img.holiland.com/images/upload/images/20180904/1536062922907128.jpg', '29', NULL),
(198, 'http://img.holiland.com/images/upload/images/20180904/1536062925233175.jpg', '29', NULL),
(199, 'http://img.holiland.com/images/upload/images/20180904/1536062932717792.jpg', '29', NULL),
(200, 'http://img.holiland.com/images/upload/images/20180904/1536062935799107.jpg', '29', NULL),
(201, 'http://img.holiland.com/images/upload/images/20191126/1574770821693149.jpg', '29', NULL),
(202, 'http://img.holiland.com/images/upload/images/20191126/1574770825187080.jpg', '29', NULL),
(203, 'http://img.holiland.com/images/upload/images/20180904/1536063786933423.jpg', '30', NULL),
(204, 'http://img.holiland.com/images/upload/images/20180904/1536063788764441.jpg', '30', NULL),
(205, 'http://img.holiland.com/images/upload/images/20180904/1536063790530009.jpg', '30', NULL),
(206, 'http://img.holiland.com/images/upload/images/20180904/1536063793637183.jpg', '30', NULL),
(207, 'http://img.holiland.com/images/upload/images/20190418/1555552304625318.jpg', '30', NULL),
(208, 'http://img.holiland.com/images/upload/images/20190418/1555552318187517.jpg', '30', NULL),
(209, 'http://img.holiland.com/images/upload/images/20180904/1536063798961591.jpg', '30', NULL),
(210, 'http://img.holiland.com/images/upload/images/20180904/1536063801591152.jpg', '30', NULL),
(211, 'src="http://img.holiland.com/images/upload/images/20180904/1536063803309880.jpg"', '30', NULL),
(212, 'http://img.holiland.com/images/upload/images/20180904/1536063806130804.jpg', '30', NULL),
(213, 'http://img.holiland.com/images/upload/images/20191126/1574770821693149.jpg', '30', NULL),
(214, 'http://img.holiland.com/images/upload/images/20191126/1574770825187080.jpg', '30', NULL),
(215, 'http://img.holiland.com/images/upload/images/20180904/1536062388179674.jpg', '31', NULL),
(216, 'http://img.holiland.com/images/upload/images/20180904/1536062391375884.jpg', '31', NULL),
(217, 'http://img.holiland.com/images/upload/images/20180904/1536062396886537.jpg', '31', NULL),
(218, 'http://img.holiland.com/images/upload/images/20180904/1536062402337278.jpg', '31', NULL),
(219, 'http://img.holiland.com/images/upload/images/20180904/1536062410605662.jpg', '31', NULL),
(220, 'http://img.holiland.com/images/upload/images/20180904/1536062414198005.jpg', '31', NULL),
(221, 'http://img.holiland.com/images/upload/images/20180904/1536062418392904.jpg', '31', NULL),
(222, 'http://img.holiland.com/images/upload/images/20191126/1574770821693149.jpg', '31', NULL),
(223, 'http://img.holiland.com/images/upload/images/20191126/1574770825187080.jpg', '31', NULL),
(224, 'http://img.holiland.com/images/upload/images/20200701/1593592850374978.jpg', '32', NULL),
(225, 'http://img.holiland.com/images/upload/images/20200701/1593592853182799.jpg', '32', NULL),
(226, 'http://img.holiland.com/images/upload/images/20200701/1593592857934564.jpg', '32', NULL),
(227, 'http://img.holiland.com/images/upload/images/20200701/1593592860333410.jpg', '32', NULL),
(228, 'http://img.holiland.com/images/upload/images/20200701/1593592866499598.jpg', '32', NULL),
(229, 'http://img.holiland.com/images/upload/images/20200701/1593592869929830.jpg', '32', NULL),
(230, 'http://img.holiland.com/images/upload/images/20200701/1593592873761748.jpg', '32', NULL),
(231, 'http://img.holiland.com/images/upload/images/20200701/1593592878871135.jpg', '32', NULL),
(232, 'http://img.holiland.com/images/upload/images/20200701/1593592884150869.jpg', '32', NULL),
(233, 'http://img.holiland.com/images/upload/images/20200701/1593592889798669.jpg', '32', NULL),
(234, 'http://img.holiland.com/images/upload/images/20200701/1593592894914253.jpg', '32', NULL),
(235, 'http://img.holiland.com/images/upload/images/20200701/1593592898119714.jpg', '32', NULL),
(236, 'http://img.holiland.com/images/upload/images/20200701/1593592903363962.jpg', '32', NULL),
(237, 'http://img.holiland.com/images/upload/images/20180104/1515028567156780.jpg', '33', NULL),
(238, 'http://img.holiland.com/images/upload/images/20180104/1515028570685118.jpg', '33', NULL),
(239, 'http://img.holiland.com/images/upload/images/20180104/1515028572726354.jpg', '33', NULL),
(240, 'http://img.holiland.com/images/upload/images/20180104/1515028574328681.jpg', '33', NULL),
(241, 'http://img.holiland.com/images/upload/images/20180527/1527409686957630.jpg', '33', NULL),
(242, 'http://img.holiland.com/images/upload/images/20180104/1515028583903168.jpg', '33', NULL),
(243, 'http://img.holiland.com/images/upload/images/20191126/1574770821693149.jpg', '33', NULL),
(244, 'http://img.holiland.com/images/upload/images/20191126/1574770825187080.jpg', '33', NULL),
(245, 'http://img.holiland.com/images/upload/images/20180104/1515028602431563.jpg', '33', NULL),
(246, 'http://img.holiland.com/images/upload/images/20170214/1487065144841228.jpg', '34', NULL),
(247, 'http://img.holiland.com/images/upload/images/20170214/1487065149535130.jpg', '34', NULL),
(248, 'http://img.holiland.com/images/upload/images/20170214/1487065154237679.jpg', '34', NULL),
(249, 'http://img.holiland.com/images/upload/images/20170214/1487065171991098.jpg', '34', NULL),
(250, 'http://img.holiland.com/images/upload/images/20170214/1487065176428642.jpg', '34', NULL),
(251, 'http://img.holiland.com/images/upload/images/20191126/1574770821693149.jpg', '34', NULL),
(252, 'http://img.holiland.com/images/upload/images/20191126/1574770825187080.jpg', '34', NULL),
(253, 'http://img.holiland.com/images/upload/images/20170215/1487147267204242.jpg', '34', NULL),
(254, 'http://img.holiland.com/images/upload/images/20160517/1463474141455173.jpg', '35', NULL),
(255, 'http://img.holiland.com/images/upload/images/20180717/1531809574117053.jpg', '35', NULL),
(256, 'http://img.holiland.com/images/upload/images/20191126/1574770821693149.jpg', '35', NULL),
(257, 'http://img.holiland.com/images/upload/images/20191126/1574770825187080.jpg', '35', NULL),
(258, 'http://img.holiland.com/images/upload/images/20161124/1479986277947270.jpg', '35', NULL),
(259, 'http://hlladmin.holiland.com/images/upload/images/20200814/1597378714424078.png', '36', NULL),
(260, 'http://hlladmin.holiland.com/images/upload/images/20200814/1597378717748968.jpg', '36', NULL),
(261, 'http://hlladmin.holiland.com/images/upload/images/20200814/1597378721109855.jpg', '36', NULL),
(262, 'http://hlladmin.holiland.com/images/upload/images/20200814/1597378724476576.jpg', '36', NULL),
(263, 'http://hlladmin.holiland.com/images/upload/images/20200814/1597378729300490.jpg', '36', NULL),
(264, 'http://hlladmin.holiland.com/images/upload/images/20200814/1597378732786233.jpg', '36', NULL),
(265, 'http://hlladmin.holiland.com/images/upload/images/20200814/1597378736807749.jpg', '36', NULL),
(266, 'http://hlladmin.holiland.com/images/upload/images/20200814/1597378739139870.jpg', '36', NULL),
(267, 'http://hlladmin.holiland.com/images/upload/images/20200814/1597378745105393.jpg', '36', NULL),
(268, 'http://img.holiland.com/images/upload/images/20161120/1479633131696886.jpg', '37', NULL),
(269, 'http://img.holiland.com/images/upload/images/20180103/1514985210360605.jpg', '37', NULL),
(270, 'http://img.holiland.com/images/upload/images/20180103/1514985213782593.jpg', '37', NULL),
(271, 'http://img.holiland.com/images/upload/images/20180103/1514985216671563.jpg', '37', NULL),
(272, 'http://img.holiland.com/images/upload/images/20180103/1514985219622268.jpg', '37', NULL),
(273, 'http://img.holiland.com/images/upload/images/20191126/1574770821693149.jpg', '37', NULL),
(274, 'http://img.holiland.com/images/upload/images/20191126/1574770825187080.jpg', '37', NULL),
(275, 'http://img.holiland.com/images/upload/images/20161124/1479986479325580.jpg', '37', NULL),
(276, 'http://img.holiland.com/images/upload/images/20180104/1515026576962865.jpg', '38', NULL),
(277, 'http://img.holiland.com/images/upload/images/20180104/1515026579991455.jpg', '38', ''),
(278, 'http://img.holiland.com/images/upload/images/20180104/1515026581915524.jpg', '38', NULL),
(279, 'http://img.holiland.com/images/upload/images/20180104/1515026584882842.jpg', '38', NULL),
(280, 'http://img.holiland.com/images/upload/images/20191126/1574770821693149.jpg', '38', NULL),
(281, 'http://img.holiland.com/images/upload/images/20191126/1574770825187080.jpg', '38', NULL),
(282, 'http://img.holiland.com/images/upload/images/20180104/1515026591896991.jpg', '38', NULL),
(283, 'http://hlladmin.holiland.com/images/upload/images/20200729/1595991137785760.jpg', '39', NULL),
(284, 'http://hlladmin.holiland.com/images/upload/images/20200729/1595991141131573.jpg', '39', NULL),
(285, 'http://hlladmin.holiland.com/images/upload/images/20200729/1595991145133777.jpg', '39', NULL),
(286, 'http://hlladmin.holiland.com/images/upload/images/20200729/1595991152130558.jpg', '39', NULL),
(287, 'http://hlladmin.holiland.com/images/upload/images/20200729/1595991158437073.jpg', '39', NULL),
(288, 'http://hlladmin.holiland.com/images/upload/images/20200729/1595991163114916.jpg', '39', NULL),
(289, 'http://img.holiland.com/images/upload/images/20170214/1487061911603546.jpg', '40', NULL),
(290, 'http://img.holiland.com/images/upload/images/20190924/1569297994520430.jpg', '40', NULL),
(291, 'http://img.holiland.com/images/upload/images/20191126/1574770255877834.jpg', '40', NULL),
(292, 'http://img.holiland.com/images/upload/images/20170216/1487226754773512.jpg', '40', NULL),
(293, 'http://hlladmin.holiland.com/images/upload/images/20200729/1595999107613891.jpg', '41', NULL),
(294, 'http://hlladmin.holiland.com/images/upload/images/20200729/1595999111127158.jpg', '41', NULL),
(295, 'http://hlladmin.holiland.com/images/upload/images/20200729/1595999116260299.jpg', '41', NULL),
(296, 'http://hlladmin.holiland.com/images/upload/images/20200729/1595999124799917.jpg', '41', NULL),
(297, 'http://hlladmin.holiland.com/images/upload/images/20200729/1595999127944977.jpg', '41', NULL),
(298, 'http://hlladmin.holiland.com/images/upload/images/20200729/1595999133132090.jpg', '41', NULL),
(299, 'http://hlladmin.holiland.com/images/upload/images/20200729/1595998038121672.jpg', '42', NULL),
(300, 'http://hlladmin.holiland.com/images/upload/images/20200729/1595998039764846.jpg', '42', NULL),
(301, 'http://hlladmin.holiland.com/images/upload/images/20200729/1595998039992312.jpg', '42', NULL),
(302, 'http://img.holiland.com/images/upload/images/20180717/1531810012792301.jpg', '43', NULL),
(303, 'http://img.holiland.com/images/upload/images/20180717/1531810032278477.jpg', '43', NULL),
(304, 'http://img.holiland.com/images/upload/images/20180717/1531810052795331.jpg', '43', NULL),
(305, 'http://hlladmin.holiland.com/images/upload/images/20200729/1596001301920148.jpg', '43', NULL),
(306, 'http://img.holiland.com/images/upload/images/20191126/1574770821693149.jpg', '43', NULL),
(307, 'http://img.holiland.com/images/upload/images/20191126/1574770825187080.jpg', '43', NULL),
(308, 'http://img.holiland.com/images/upload/images/20161124/1479984884680073.jpg', '43', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `home`
--

CREATE TABLE `home` (
  `id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `home`
--

INSERT INTO `home` (`id`, `img`, `type`, `title`) VALUES
(1, 'http://m.holiland.com/data/afficheimg/1450656899608763836.jpg', '1', '轮播图'),
(2, 'http://www.holiland.com/data/afficheimg/1458038858528468398.jpg', '1', '轮播图'),
(3, 'http://m.holiland.com/data/afficheimg/1456988117900459000.jpg', '1', '轮播图'),
(4, 'http://m.holiland.com/data/afficheimg/1450657023101437666.jpg', '1', '轮播图'),
(5, 'http://m.holiland.com/data/afficheimg/1556219218415484225.jpg', '2', '经典系列'),
(6, 'http://m.holiland.com/data/afficheimg/1556219299124750202.jpg', '2', '儿童系列'),
(7, 'http://m.holiland.com/data/afficheimg/1598502778126676677.jpg', '2', '明星系列'),
(8, 'http://m.holiland.com/data/afficheimg/1451356012708821874.jpg', '3', '左'),
(9, 'http://m.holiland.com/data/afficheimg/1463966021569278851.jpg', '3', '中'),
(10, 'http://m.holiland.com/data/afficheimg/1452645022676166474.jpg', '3', '右');

-- --------------------------------------------------------

--
-- 表的结构 `h_user`
--

CREATE TABLE `h_user` (
  `u_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL COMMENT '用户名',
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `h_user`
--

INSERT INTO `h_user` (`u_id`, `username`, `password`, `email`, `phone`) VALUES
(2, 'xiaoa', '111111', '948386509@qq.com', '19982736081'),
(3, 'xiaoaa', '111111', '948386509@qq.com', '19982736081'),
(4, 'xiaoaaa', '111111', '948386509@qq.com', '19982736081'),
(6, 'xiaoaaaaa', '111111', '948386509@qq.ocm', '19982736081'),
(7, 'xiaoaaaaaa', '111111', '948386509@qq.ocm', '19982736081'),
(9, 'xiaoo', '111111', '948386509@qq.ocm', '19982736081'),
(10, 'xiaoooo', '111111', '94@c.c', '19982736081'),
(11, 'xiaa', '111111', '9@c.c', '19982736081'),
(12, 'xiaa', '111111', '9@c.c', '19982736081'),
(13, 'xiaao', '11111111', '9@c.c', '19982736081'),
(14, 'xiaao', '11111111', '9@c.c', '19982736081'),
(15, '1999', '12345678', '9@c.c', '19982736081'),
(16, 'xiao', '12345678', '9482736509@qq.com', '19982736081'),
(17, 'waaa', '12345678', '948386509@qq.com', '19982736081'),
(18, 'panmeihui', '123456', '595473536@qq.com', '19990209023');

-- --------------------------------------------------------

--
-- 表的结构 `list`
--

CREATE TABLE `list` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `home_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `list`
--

INSERT INTO `list` (`id`, `name`, `img`, `price`, `home_id`) VALUES
(1, '浪漫甜心', 'http://img.holiland.com/data/wapimg/201512/1450909022538678056.jpg', '229.00', '5'),
(2, '玫瑰物语', 'http://img.holiland.com/data/wapimg/201512/1450852906836679136.jpg', '229.00', '5'),
(3, '玫瑰花园', 'http://img.holiland.com/data/wapimg/201603/1456910476535978779.jpg', '229.00', '5'),
(4, '臻爱礼盒', 'http://img.holiland.com/data/wapimg/201704/1491690983869950455.jpg', '239.00', '5'),
(5, '爱的告白', 'http://img.holiland.com/data/wapimg/201910/1571098392901815608.jpg', '229.00', '5'),
(6, '特殊补缴款', 'http://img.holiland.com/data/wapimg/201609/1474767302793674151.jpg', '1.00', '5'),
(7, '欢乐牧场', 'http://img.holiland.com/data/wapimg/201807/1531267431109340030.png', '299.00', '6'),
(8, '甜蜜小家', 'http://img.holiland.com/data/wapimg/201807/1531267237810797544.png', '299.00', '6'),
(9, '天真烂漫', 'http://img.holiland.com/data/wapimg/201807/1531267313298502437.png', '299.00', '6'),
(10, '快乐成长', 'http://img.holiland.com/data/wapimg/201704/1492713354886407702.jpg', '199.00', '6'),
(11, '欢乐童年', 'http://img.holiland.com/data/wapimg/201807/1531173165692890801.jpg', '199.00', '6'),
(12, '童话世界', 'http://img.holiland.com/data/wapimg/201611/1478380090518586266.jpg', '339.00', '6'),
(13, '彩虹天使', 'http://img.holiland.com/data/wapimg/201706/1496606615177831968.jpg', '199.00', '6'),
(14, '萌猫乐园', 'http://img.holiland.com/data/wapimg/201712/1512758259030037453.jpg', '199.00', '6'),
(15, '快乐时光', 'http://img.holiland.com/data/wapimg/201807/1531173705772048865.jpg', '188.00', '6'),
(16, '甜蜜花园', 'http://img.holiland.com/data/wapimg/201706/1496609483098429727.jpg', '199.00', '6'),
(17, '欢乐起航', 'http://img.holiland.com/data/wapimg/201909/1567920770222175677.png', '299.00', '6'),
(18, '小小旅行家', 'http://img.holiland.com/data/wapimg/201909/1567920699122547839.jpg', '299.00', '6'),
(19, '小小飞行员', 'http://img.holiland.com/data/wapimg/201909/1567646907601060748.jpg', '299.00', '6'),
(20, '半熟花花马卡龙-七夕情人节礼盒', 'http://img.holiland.com/data/wapimg/202008/1596575433826735427.jpg', '62.00', '7'),
(21, '好利来宝莉联名云朵芝士', 'http://img.holiland.com/data/wapimg/202005/1589832758685720183.jpg', '42.00', '7'),
(22, '爆浆球', 'http://img.holiland.com/data/wapimg/202004/1587523176848707003.jpg', '32.00', '7'),
(23, '雪顶威风', 'http://img.holiland.com/data/wapimg/202004/1587522281280340085.jpg', '22.00', '7'),
(24, '层层爆浆葡萄蛋糕', 'http://img.holiland.com/data/wapimg/202006/1592507327954562280.jpg', '79.00', '7'),
(25, '雪绒芝士', 'http://img.holiland.com/data/wapimg/201907/1562475751424297761.jpg', '49.00', '7'),
(26, '海盐玫瑰小酥', 'http://img.holiland.com/data/wapimg/201904/1555527068134784114.jpg', '29.00', '7'),
(27, '生巧克力', 'http://img.holiland.com/data/wapimg/201810/1539307990394832093.jpg', '69.00', '7'),
(28, '生吐司', 'http://img.holiland.com/data/wapimg/201901/1548877338804812870.jpg', '28.00', '7'),
(29, '冰山熔岩', 'http://img.holiland.com/data/wapimg/201809/1536034217561873296.jpg', '59.00', '7'),
(30, '蒲公英空气巧克力', 'http://img.holiland.com/data/wapimg/201809/1536035160235924004.jpg', '59.00', '7'),
(31, '北海道芝士牧场', 'http://img.holiland.com/data/wapimg/201809/1536033688147612863.jpg', '45.00', '7'),
(32, '半熟芝士', 'http://img.holiland.com/data/wapimg/201603/1456897858547169892.jpg', '39.00', '7'),
(33, '玫瑰绿豆糕', 'http://img.holiland.com/data/wapimg/201808/1535563329508078357.jpg', '39.00', '7'),
(34, '东京香蕉脆', 'http://img.holiland.com/data/wapimg/201702/1487804812619692192.jpg', '28.00', '7'),
(35, '葡萄奶酥', 'http://img.holiland.com/data/wapimg/201605/1463445507325542445.jpg', '16.00', '7'),
(36, '蜂蜜蛋糕', 'http://img.holiland.com/data/wapimg/201808/1535044247227997871.jpg', '39.00', '7'),
(37, '双层芝士蛋糕', 'http://img.holiland.com/data/wapimg/201611/1479602126697646133.jpg', '79.00', '7'),
(38, '玫瑰蛋黄酥', 'http://img.holiland.com/data/wapimg/201808/1535562977242250232.jpg', '46.00', '7'),
(39, '甜霜', 'http://img.holiland.com/data/wapimg/201702/1487036068331976674.jpg', '16.00', '7'),
(40, '北海道蛋糕', 'http://img.holiland.com/data/wapimg/201702/1487033349703472716.jpg', '22.00', '7'),
(41, '马卡龙', 'http://img.holiland.com/data/wapimg/201901/1548875491256649215.jpg', '79.00', '7'),
(42, '蓝莓酥', 'http://img.holiland.com/data/wapimg/201901/1548877838888245075.jpg', '16.00', '7'),
(43, '青森芝士条', 'http://img.holiland.com/data/wapimg/201702/1487804499830446925.jpg', '38.00', '7'),
(44, '玫瑰鲜花饼', 'http://img.holiland.com/data/wapimg/201808/1535562715193444139.jpg', '45.00', '7'),
(45, '半熟芝士挞', 'http://img.holiland.com/data/wapimg/201702/1487032606872933579.jpg', '25.00', '7'),
(46, NULL, 'http://img.holiland.com/images/upload/images/20160113/1452671764342619.jpg', NULL, '8'),
(47, NULL, 'http://img.holiland.com/images/upload/images/20160523/1463994892460203.jpg', NULL, '9'),
(48, NULL, 'http://img.holiland.com/images/upload/images/20160523/1463994895217698.jpg', NULL, '9'),
(49, NULL, 'http://img.holiland.com/images/upload/images/20160113/1452671708116017.jpg', NULL, '10');

-- --------------------------------------------------------

--
-- 表的结构 `list_swiper`
--

CREATE TABLE `list_swiper` (
  `id` int(11) NOT NULL,
  `list_id` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `list_swiper`
--

INSERT INTO `list_swiper` (`id`, `list_id`, `img`) VALUES
(1, '1', 'http://img.holiland.com/images/201512/goods_img/6_P_1450909022498.jpg'),
(2, '1', 'http://img.holiland.com/images/201512/goods_img/6_P_1450909022630.jpg'),
(3, '1', 'http://img.holiland.com/images/201512/goods_img/6_P_1450909023861.jpg'),
(4, '2', 'http://img.holiland.com/images/201512/goods_img/31_P_1450852906808.jpg'),
(5, '2', 'http://img.holiland.com/images/201512/goods_img/31_P_1450852906363.jpg'),
(6, '2', 'http://img.holiland.com/images/201512/goods_img/31_P_1450852907679.jpg'),
(7, '3', 'http://img.holiland.com/images/201603/goods_img/74_P_1456910476642.jpg'),
(8, '3', 'http://img.holiland.com/images/201603/goods_img/74_P_1456984859151.jpg'),
(9, '3', 'http://img.holiland.com/images/201603/goods_img/74_P_1456910477578.jpg'),
(10, '4', 'http://img.holiland.com/images/201704/goods_img/76_P_1491690983162.jpg'),
(11, '5', 'http://img.holiland.com/images/201910/goods_img/1195_P_1571098392873.jpg'),
(12, '6', 'http://img.holiland.com/images/201609/goods_img/132_P_1474767774399.jpg'),
(13, '7', 'http://img.holiland.com/images/201805/goods_img/807_P_1527661936226.jpg'),
(14, '8', 'http://img.holiland.com/images/201805/goods_img/811_P_1527661586284.jpg'),
(15, '9', 'http://img.holiland.com/images/201805/goods_img/810_P_1527661711907.jpg'),
(16, '10', 'http://img.holiland.com/images/201703/goods_img/586_P_1490137991835.jpg'),
(17, '10', 'http://img.holiland.com/images/201703/goods_img/586_P_1490137991038.jpg'),
(18, '11', 'http://img.holiland.com/images/201607/goods_img/122_P_1467426340555.jpg'),
(19, '12', 'http://img.holiland.com/images/201611/goods_img/362_P_1478379166037.jpg'),
(20, '13', 'http://img.holiland.com/images/201706/goods_img/658_P_1496606615824.jpg'),
(21, '13', 'http://img.holiland.com/images/201706/goods_img/658_P_1496606615588.jpg'),
(22, '14', 'http://img.holiland.com/images/201712/goods_img/722_P_1512758259052.jpg'),
(23, '14', 'http://img.holiland.com/images/201712/goods_img/722_P_1512758259427.jpg'),
(24, '15', 'http://img.holiland.com/images/201607/goods_img/125_P_1467427110347.jpg'),
(25, '16', 'http://img.holiland.com/images/201706/goods_img/661_P_1496609483295.jpg'),
(26, '16', 'http://img.holiland.com/images/201706/goods_img/661_P_1496609483154.jpg'),
(27, '17', 'http://img.holiland.com/images/201909/goods_img/1190_P_1567920770668.png'),
(28, '18', 'http://img.holiland.com/images/201909/goods_img/1187_P_1567920699560.jpg'),
(29, '19', 'http://img.holiland.com/images/201909/goods_img/1186_P_1567646907844.jpg'),
(30, '20', 'http://img.holiland.com/images/202008/goods_img/1399_P_1596576027027.jpg'),
(31, '20', 'http://img.holiland.com/images/202008/goods_img/1399_P_1596576029306.jpg'),
(32, '20', 'http://img.holiland.com/images/202008/goods_img/1399_P_1596576029998.jpg'),
(33, '20', 'http://img.holiland.com/images/202008/goods_img/1399_P_1596576031422.jpg'),
(34, '21', 'http://img.holiland.com/images/202005/goods_img/1350_P_1589832758826.jpg'),
(35, '21', 'http://img.holiland.com/images/202005/goods_img/1350_P_1589832759259.jpg'),
(36, '21', 'http://img.holiland.com/images/202005/goods_img/1350_P_1589832759077.jpg'),
(37, '22', 'http://img.holiland.com/images/202004/goods_img/1272_P_1587523177928.jpg'),
(38, '22', 'http://img.holiland.com/images/202004/goods_img/1272_P_1587523177706.jpg'),
(39, '22', 'http://img.holiland.com/images/202004/goods_img/1272_P_1587523177607.jpg'),
(40, '23', 'http://img.holiland.com/images/202004/goods_img/1271_P_1587522282005.jpg'),
(41, '23', 'http://img.holiland.com/images/202004/goods_img/1271_P_1587522282987.jpg'),
(42, '24', 'http://img.holiland.com/images/202006/goods_img/1218_P_1592507328992.jpg'),
(43, '24', 'http://img.holiland.com/images/201912/goods_img/1218_P_1576033916322.jpg'),
(44, '25', 'http://img.holiland.com/images/201907/goods_img/1144_P_1562474190934.png'),
(45, '25', 'http://img.holiland.com/images/201907/goods_img/1144_P_1562474190085.jpg'),
(46, '26', 'http://img.holiland.com/images/201904/goods_img/1117_P_1555527068451.jpg'),
(47, '26', 'http://img.holiland.com/images/201904/goods_img/1117_P_1555528465819.gif'),
(48, '27', 'http://img.holiland.com/images/201810/goods_img/940_P_1539307990942.jpg'),
(49, '27', 'http://img.holiland.com/images/201810/goods_img/940_P_1539307991892.jpg'),
(50, '27', 'http://img.holiland.com/images/201810/goods_img/940_P_1539307991784.jpg'),
(51, '28', 'http://img.holiland.com/images/201901/goods_img/953_P_1548877338167.jpg'),
(52, '28', 'http://img.holiland.com/images/201901/goods_img/953_P_1548877338089.jpg'),
(53, '28', 'http://img.holiland.com/images/201901/goods_img/953_P_1548877338224.jpg'),
(54, '29', 'http://img.holiland.com/images/201809/goods_img/933_P_1536034217336.jpg'),
(55, '29', 'http://img.holiland.com/images/201809/goods_img/933_P_1536034217675.jpg'),
(56, '31', 'http://img.holiland.com/images/201809/goods_img/931_P_1536033688654.jpg'),
(57, '31', 'http://img.holiland.com/images/201809/goods_img/931_P_1536033688710.jpg'),
(58, '31', 'http://img.holiland.com/images/201809/goods_img/931_P_1536033688407.jpg'),
(59, '32', 'http://img.holiland.com/images/201801/goods_img/60_P_1515094673653.jpg'),
(60, '32', 'http://img.holiland.com/images/201801/goods_img/60_P_1515094673409.jpg'),
(61, '33', 'http://img.holiland.com/images/201808/goods_img/917_P_1535563174902.jpg'),
(62, '33', 'http://img.holiland.com/images/201808/goods_img/917_P_1535563174035.jpg'),
(63, '34', 'http://img.holiland.com/images/202007/goods_img/567_P_1595973268034.jpg'),
(64, '34', 'http://img.holiland.com/images/202007/goods_img/567_P_1595973268689.jpg'),
(65, '34', 'http://img.holiland.com/images/201702/goods_img/567_P_1487036446145.jpg'),
(66, '35', 'http://img.holiland.com/images/201605/goods_img/96_P_1463445507265.jpg'),
(67, '36', 'http://img.holiland.com/images/201808/goods_img/912_P_1535044128955.jpg'),
(68, '36', 'http://img.holiland.com/images/201808/goods_img/912_P_1535044128324.jpg'),
(69, '37', 'http://img.holiland.com/images/201801/goods_img/448_P_1514955898883.jpg'),
(70, '37', 'http://img.holiland.com/images/201611/goods_img/448_P_1479602127241.jpg'),
(71, '38', 'http://img.holiland.com/images/201808/goods_img/916_P_1535562907166.jpg'),
(72, '38', 'http://img.holiland.com/images/201808/goods_img/916_P_1535562907967.jpg'),
(73, '39', 'http://img.holiland.com/images/202007/goods_img/566_P_1595962900468.jpg'),
(74, '39', 'http://img.holiland.com/images/202007/goods_img/566_P_1595962900839.jpg'),
(75, '39', 'http://img.holiland.com/images/202007/goods_img/566_P_1595962900077.jpg'),
(76, '40', 'http://img.holiland.com/images/201702/goods_img/63_P_1487033349776.jpg'),
(77, '41', 'http://img.holiland.com/images/202007/goods_img/988_P_1595970396070.png'),
(78, '41', 'http://img.holiland.com/images/202007/goods_img/988_P_1595970395389.png'),
(79, '41', 'http://img.holiland.com/images/202007/goods_img/988_P_1595970393371.jpg'),
(80, '42', 'http://img.holiland.com/images/202007/goods_img/911_P_1595969668282.jpg'),
(81, '43', 'http://img.holiland.com/images/201611/goods_img/435_P_1478201604845.jpg'),
(82, '43', 'http://img.holiland.com/images/201611/goods_img/435_P_1478201604729.jpg'),
(83, '44', 'http://img.holiland.com/images/201808/goods_img/915_P_1535562582894.jpg'),
(84, '44', 'http://img.holiland.com/images/201809/goods_img/915_P_1536796863233.jpg'),
(85, '45', 'http://img.holiland.com/images/201702/goods_img/564_P_1487032606407.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `shopcar`
--

CREATE TABLE `shopcar` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `list_id` varchar(255) DEFAULT NULL,
  `spe_id` varchar(255) DEFAULT NULL,
  `count` varchar(255) DEFAULT NULL,
  `list_name` varchar(255) DEFAULT NULL,
  `list_price` decimal(10,2) DEFAULT NULL,
  `list_img` varchar(255) DEFAULT NULL,
  `list_spe` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `shopcar`
--

INSERT INTO `shopcar` (`id`, `user_id`, `list_id`, `spe_id`, `count`, `list_name`, `list_price`, `list_img`, `list_spe`) VALUES
(111, '16', '11', '23', '2', '欢乐童年', '259.00', 'http://img.holiland.com/data/wapimg/201807/1531173165692890801.jpg', '20cm 6-10人');

-- --------------------------------------------------------

--
-- 表的结构 `spe`
--

CREATE TABLE `spe` (
  `id` int(11) NOT NULL,
  `list_id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `specification` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `spe`
--

INSERT INTO `spe` (`id`, `list_id`, `name`, `specification`, `price`) VALUES
(1, '1', '浪漫甜心', '14x14cm 适2-4人', '229.00'),
(2, '1', '浪漫甜心', '18x18cm 适4-8人', '369.00'),
(3, '2', '玫瑰物语', '14x14cm 适2-4人 ', '229.00'),
(4, '2', '玫瑰物语', '18x18cm 适4-8人 ', '369.00'),
(5, '3', '玫瑰花园', '15x15cm ', '229.00'),
(6, '3', '玫瑰花园', '18x18cm 适5-8人', '369.00'),
(7, '4', '臻爱礼盒', '15x15cm 适2-4人', '239.00'),
(9, '5', '爱的告白', '15cm 适2-4人 ', '229.00'),
(11, '5', '爱的告白', '20cm 适5-8人', '229.00'),
(12, '6', '特殊补缴款', '特殊', '1.00'),
(13, '7', '欢乐牧场', '20cm 4-8人 ', '299.00'),
(14, '7', '欢乐牧场', '15cm+25cm  (双层)  10-16人', '499.00'),
(15, '8', '甜蜜小家', '20cm 4-8人', '229.00'),
(16, '9', '天真烂漫', '20cm 4-8人 ', '299.00'),
(17, '8', '甜蜜小家', '15cm+25cm  (双层)  10-16人', '499.00'),
(18, '10', '快乐成长', '15cm  (单层)  2-4人   ', '199.00'),
(19, '9', '天真烂漫', '25cm 8-12人', '399.00'),
(20, '11', '欢乐童年', '15cm 2-6人 ', '199.00'),
(21, '10', '快乐成长', '20cm  (单层)  4-8人', '269.00'),
(22, '12', '童话世界', '15cm+20cm', '339.00'),
(23, '11', '欢乐童年', '20cm 6-10人', '259.00'),
(24, '13', '彩虹天使', '15x15cm', '199.00'),
(25, '12', '童话世界', '20cm+25cm', '459.00'),
(26, '14', '萌猫乐园', '15cm (单层) 2-4人', '199.00'),
(27, '13', '彩虹天使', '20x20cm', '269.00'),
(28, '14', '萌猫乐园', '20cm (单层) 4-8人', '269.00'),
(29, '15', '快乐时光', '15cm 2-6人', '188.00'),
(30, '15', '快乐时光', '20cm 6-10人', '248.00'),
(31, '16', '甜蜜花园', '15cm (单层) 2-4人', '199.00'),
(32, '16', '甜蜜花园', '20cm (单层) 4-8人', '269.00'),
(33, '17', '欢乐起航', '20cm 4-8人', '299.00'),
(34, '17', '欢乐起航', '15cm+25cm 10-16人', '499.00'),
(35, '18', '小小旅行家', '20cm 4-8人', '299.00'),
(36, '18', '小小旅行家', '15cm+25cm 10-16人', '499.00'),
(37, '19', '小小飞行员', '20cm 4-8人', '299.00'),
(38, '20', '半熟花花马卡龙-七夕情人节礼盒', '半熟花花马卡龙  4枚/盒  (4种口味)', '62.00'),
(39, '19', '小小飞行员', '15cm+25cm 10-16人', '499.00'),
(42, '22', '爆浆球', '', '32.00'),
(43, '21', '好利来宝莉联名云朵芝士', '', '42.00'),
(44, '23', '雪顶威风', '', '22.00'),
(46, '24', '层层爆浆葡萄蛋糕', '', '79.00'),
(48, '25', '雪绒芝士', '联名款多肉葡萄味', '49.00'),
(50, '25', '雪绒芝士', '青梅味', '49.00'),
(51, '25', '雪绒芝士', '玫瑰蜜桃味', '49.00'),
(52, '27', '生巧克力', '咖啡杯', '69.00'),
(53, '26', '海盐玫瑰小酥', '', '29.00'),
(54, '27', '生巧克力', '牛奶味', '69.00'),
(55, '29', '冰山熔岩', '巧克力口味 (冰山、熔岩模式各一块) 送金属勺1枚', '59.00'),
(56, '27', '生巧克力', '抹茶味', '69.00'),
(57, '28', '生吐司', '', '28.00'),
(58, '30', '蒲公英空气巧克力', '抹茶口味/9枚装', '59.00'),
(60, '31', '北海道芝士牧场', '抹茶味', '45.00'),
(61, '30', '蒲公英空气巧克力', '茉莉口味/9枚装', '59.00'),
(62, '32', '半熟芝士', '原味', '39.00'),
(63, '31', '北海道芝士牧场', '芝士口味', '45.00'),
(64, '31', '北海道芝士牧场', '榛子味', '45.00'),
(65, '32', '半熟芝士', '双莓味', '39.00'),
(66, '32', '半熟芝士', '抹茶味', '39.00'),
(67, '33', '玫瑰绿豆糕', '8枚/盒', '39.00'),
(68, '32', '半熟芝士', '榴莲味', '9.00'),
(69, '34', '东京香蕉脆', '', '28.00'),
(70, '32', '半熟芝士', '柚子味', '39.00'),
(71, '35', '葡萄奶酥', '两粒装', '16.00'),
(72, '37', '双层芝士蛋糕', '芒果百香果味', '79.00'),
(73, '36', '蜂蜜蛋糕', '一个/盒', '39.00'),
(74, '37', '双层芝士蛋糕', '玫瑰味', '79.00'),
(75, '37', '双层芝士蛋糕', '抹茶味', '79.00'),
(76, '39', '甜霜', '柠檬味', '16.00'),
(77, '38', '玫瑰蛋黄酥', '4枚/盒', '46.00'),
(78, '40', '北海道蛋糕', '1个/盒', '22.00'),
(79, '39', '甜霜', '草莓味', '16.00'),
(80, '37', '双层芝士蛋糕', '原味', '79.00'),
(81, '41', '马卡龙', '小盒-6口味-6枚', '79.00'),
(82, '41', '马卡龙', '大盒-6口味-12枚', '99.00'),
(83, '42', '蓝莓酥', '', '16.00'),
(85, '43', '青森芝士条', '两粒装', '28.00'),
(87, '44', '玫瑰鲜花饼', '6枚/盒', '45.00'),
(89, '45', '半熟芝士挞', '', '25.00'),
(94, '12', '童话世界', '25cm+30cm', '609.00'),
(95, '10', '快乐成长', '15cm+25cm  8-16人', '499.00'),
(96, '14', '萌猫乐园', '15cm+25cm (双层) 8-16人', '499.00'),
(97, '13', '彩虹天使', '15x15cm+25x25cm', '499.00'),
(98, '16', '甜蜜花园', '15cm+25cm (双层) 8-16人', '499.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buy`
--
ALTER TABLE `buy`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `h_user`
--
ALTER TABLE `h_user`
  ADD PRIMARY KEY (`u_id`) USING BTREE;

--
-- Indexes for table `list`
--
ALTER TABLE `list`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `list_swiper`
--
ALTER TABLE `list_swiper`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `shopcar`
--
ALTER TABLE `shopcar`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `spe`
--
ALTER TABLE `spe`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `buy`
--
ALTER TABLE `buy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- 使用表AUTO_INCREMENT `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=309;
--
-- 使用表AUTO_INCREMENT `home`
--
ALTER TABLE `home`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- 使用表AUTO_INCREMENT `h_user`
--
ALTER TABLE `h_user`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- 使用表AUTO_INCREMENT `list`
--
ALTER TABLE `list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- 使用表AUTO_INCREMENT `list_swiper`
--
ALTER TABLE `list_swiper`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
--
-- 使用表AUTO_INCREMENT `shopcar`
--
ALTER TABLE `shopcar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;
--
-- 使用表AUTO_INCREMENT `spe`
--
ALTER TABLE `spe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
