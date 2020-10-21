-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2020-08-05 16:02:39
-- 服务器版本： 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ocean`
--

-- --------------------------------------------------------

--
-- 表的结构 `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `contact_name` varchar(255) NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_phone` char(11) DEFAULT NULL,
  `question` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `contact`
--

INSERT INTO `contact` (`contact_id`, `contact_name`, `contact_email`, `contact_phone`, `question`) VALUES
(1, '黄老邪', 'huanglaoxie@163.com', '', '123213'),
(2, '黄药师', 'haung@163.com', '2147483647', '123213'),
(3, '111', '11@1.1', '2147483647', '99999999'),
(4, '1111', '11@1.1', '19999999999', '99999999'),
(5, '111', '1@1.1', '', '111');

-- --------------------------------------------------------

--
-- 表的结构 `ocean_img`
--

CREATE TABLE `ocean_img` (
  `id` int(11) NOT NULL COMMENT '主键',
  `img_url` varchar(255) NOT NULL COMMENT '类别名',
  `description` varchar(1000) DEFAULT NULL COMMENT '描述',
  `list_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `ocean_img`
--

INSERT INTO `ocean_img` (`id`, `img_url`, `description`, `list_id`) VALUES
(1, '', '这是一段精美鲜花的描述', NULL),
(2, '', NULL, NULL),
(3, '', NULL, NULL),
(4, '', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `ocean_list`
--

CREATE TABLE `ocean_list` (
  `id` int(11) NOT NULL COMMENT '主键',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `price` decimal(10,2) DEFAULT NULL COMMENT '价格',
  `categories` varchar(255) DEFAULT NULL COMMENT '类别',
  `type` int(11) DEFAULT NULL COMMENT '类型',
  `src` varchar(1000) DEFAULT NULL COMMENT '图片路径',
  `description` varchar(1000) DEFAULT NULL COMMENT '描述',
  `name` varchar(255) DEFAULT NULL COMMENT '名字'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `ocean_list`
--

INSERT INTO `ocean_list` (`id`, `title`, `price`, `categories`, `type`, `src`, `description`, `name`) VALUES
(1, '30ml 澳大利亚制造。新的重要鱼子酱精华液可重新活化胶原蛋白，为肌肤提供提升效果，增加紧致度并改善整体外观。', '145.00', 'Shop', 1, 'https://cdn.goodq.top/caches/d3cb5b1e8d2f874dfc5debc4da94322b/aHR0cDovL3d3dy5vY2VhbmIuY29tLmF1L3FmeS1jb250ZW50L3VwbG9hZHMvMjAxOS8wNi9hNWQzNmM5ZjQ3ODUwMmQ1NGI3YzlmYzAxMTg4ZDUwOS00MDB4MzAwLmpwZw_p_p100_p_3D_p_p100_p_3D.jpg', '<p>适合所有肤质使用：</p><span>保湿前先涂在清洁的皮肤上。</span><p>配料：</p><span>水族·卡拉卡拉奇纳·海藻酸钠·黄原胶·<br>芦荟粉·抗坏血酸·玫瑰提取物·海藻提取物·<br>玫瑰果油·透明质酸钠·荷荷巴油·月见草油·<br>玫瑰油·Pricerine·三七·琼脂·氧化铁黄·金云母</span><p>注意事项：</p><span>避免接触眼睛。如果刺激加剧，请停止使用。<br>远离儿童</span><p>存储：</p><span>储存在室温下阴凉处，避免阳光直射。</span><p>优点：</p><span>使胶原蛋白焕发活力，并为肌肤提供提升效果<br>增加紧致度并改善皮肤的整体质地和外观</span>', '新海洋微风活鱼子酱精华30ml'),
(2, '', '13.00', 'Shop', 1, 'https://cdn.goodq.top/caches/d3cb5b1e8d2f874dfc5debc4da94322b/aHR0cDovL3d3dy5vY2VhbmIuY29tLmF1L3FmeS1jb250ZW50L3VwbG9hZHMvMjAyMC8wMi9lNDlmZDUyMDUwNjg2ZDc0ZGZlYTFjMGQ5OTRlYjA1MS00MDB4MzAwLmpwZw_p_p100_p_3D_p_p100_p_3D.jpg', '<span>75％乙醇<br>杀死99％的细菌<br>100％澳大利亚制造<br><br>医院等级</span>', '海洋微风洗手液'),
(3, 'Ocean Breeze vital caviar serum is suitable for both<br>face and neck<br>Extra-firming the skin anti-wrinkle rejuvenating the<br>face and neck by just one bottle', NULL, NULL, 3, 'https://cdn.goodq.top/caches/d3cb5b1e8d2f874dfc5debc4da94322b/aHR0cDovL3d3dy5vY2VhbmIuY29tLmF1L3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNy8wNy8xNTAwODkwODUxNTk3NWM2ZTNmMmU1ZDI5MDgucG5n.png', NULL, 'Face&Neck'),
(4, 'The instant extrusion activation pump bottle<br>releases each drop of serum to renew life for the<br>upmost new life to skin accessing<br>World leading hyaluronic acid molecular parsing<br>technique’s extraction and fusion of three layered<br>hyaluronic a', NULL, NULL, 3, 'https://cdn.goodq.top/caches/d3cb5b1e8d2f874dfc5debc4da94322b/aHR0cDovL3d3dy5vY2VhbmIuY29tLmF1L3FmeS1jb250ZW50L3VwbG9hZHMvMjAxOC8xMS81ZTIyMzNmYjYxOTNmNjhkMDZkZjc5MzEyYTJiMzZlOC5qcGc_p_p100_p_3D.jpg', NULL, 'Frontier Technology'),
(5, 'The size if molecular is 1,000-50,000 Daltons<br>It acts directly on the underlying muscle<br>Resisting inflammation<br>Activate skin collagen<br>Repair skin cells', NULL, NULL, 3, 'https://cdn.goodq.top/caches/d3cb5b1e8d2f874dfc5debc4da94322b/aHR0cDovL3d3dy5vY2VhbmIuY29tLmF1L3FmeS1jb250ZW50L3VwbG9hZHMvMjAxOC8xMS8zMWMxZmNmZWQyNjk2NjkyOWJiZjcyYTllNjk2NjViYi5qcGc_p_p100_p_3D.jpg', NULL, 'Low Molecular Hyaluronic Acid'),
(6, 'Derived from the pure waters of the Antarctic<br>The “Heart Of the ocean” Golden Caviar<br>Exclusive access to premium raw materials', NULL, NULL, 4, 'https://cdn.goodq.top/caches/d3cb5b1e8d2f874dfc5debc4da94322b/aHR0cDovL3d3dy5vY2VhbmIuY29tLmF1L3FmeS1jb250ZW50L3VwbG9hZHMvMjAxOC8xMS9hMTg2OGIxNTA0YThkOWRiY2NiNmM4ZWQzZDE2MjJlOS5qcGc_p_p100_p_3D.jpg', NULL, 'The “Heart Of the ocean”'),
(7, 'WONDERFUL CAPITAL BIOTECHNOLOGY GROUP is<br>a member of Marine Bio-products& Biotechnology<br>cooperative research Centre (MBB-CRC) the<br>research and development team includes world<br>leading professors, pharmacists and registered<br>doctors within the', NULL, NULL, 4, 'https://cdn.goodq.top/caches/d3cb5b1e8d2f874dfc5debc4da94322b/aHR0cDovL3d3dy5vY2VhbmIuY29tLmF1L3FmeS1jb250ZW50L3VwbG9hZHMvMjAxOC8xMS9jZTE4ZDhkZWFiMDgzZmIxMTkzZjFhODVjMTY2NjgxMC5qcGc_p_p100_p_3D.jpg', NULL, 'Authentic Australian Brand'),
(8, 'The size if molecular is 50,000-1,000,000 Daltons<br>It acts on the stratum corneum<br>Accelerate the metabolism<br>Lift up and firm skin', NULL, NULL, 4, 'https://cdn.goodq.top/caches/d3cb5b1e8d2f874dfc5debc4da94322b/aHR0cDovL3d3dy5vY2VhbmIuY29tLmF1L3FmeS1jb250ZW50L3VwbG9hZHMvMjAxOC8xMS84YmFlOTI1YzFlNGFlN2Q2ZTJlN2Y2OTI4N2UxNGVkMS5qcGc_p_p100_p_3D.jpg', NULL, 'Medium Molecular Hyaluronic Acid'),
(9, 'The surface serum keeps your skin moisturised and<br>hydrate strengthen cuticle metabolism to lift and<br> firm skin via deep collage activation', NULL, NULL, 5, 'https://cdn.goodq.top/caches/d3cb5b1e8d2f874dfc5debc4da94322b/aHR0cDovL3d3dy5vY2VhbmIuY29tLmF1L3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNy8wNy8xNTAwODkwODU1NTk3NWM2ZTcxNjYwYjU2MzIucG5n.png', NULL, 'Safety Excellence'),
(10, 'Vertebrates have three hyaluronic acid synthases<br>HAS1 HAS2 HAS3 which synthesize hyaluronic acid<br>with membrane proteins<br>Ocean Breeze Australia uses the world’s leading<br>cutting-edge biotechnology precise extraction and<br>core extract of deep-s', NULL, NULL, 5, 'https://cdn.goodq.top/caches/d3cb5b1e8d2f874dfc5debc4da94322b/aHR0cDovL3d3dy5vY2VhbmIuY29tLmF1L3FmeS1jb250ZW50L3VwbG9hZHMvMjAxOC8xMS9hNDQ2ZDdjM2VjMmYyZDc2MDYxN2RmNDFmM2RkYzlhZS5qcGc_p_p100_p_3D.jpg', NULL, 'Three Secret Keys Unlock Miracle'),
(11, 'Extraction polymer hyaluronic acid components<br>from caviar<br>The size if molecular is 1.8-2.2 million Daltons<br>Film the skin surface Protect the skin from external injury<br>Lock moisture<br>Naturally moisturizing', NULL, NULL, 5, 'https://cdn.goodq.top/caches/d3cb5b1e8d2f874dfc5debc4da94322b/aHR0cDovL3d3dy5vY2VhbmIuY29tLmF1L3FmeS1jb250ZW50L3VwbG9hZHMvMjAxOC8xMS8xMzFlNTYxN2UxY2RmYzdkYTcwYzQwYmUxMWQxZWJkYi5qcGc_p_p100_p_3D.jpg', NULL, 'High Molecular Hyaluronic Acid'),
(12, NULL, NULL, 'Coming Soon', 2, 'https://cdn.goodq.top/caches/d3cb5b1e8d2f874dfc5debc4da94322b/aHR0cDovL3d3dy5vY2VhbmIuY29tLmF1L3FmeS1jb250ZW50L3VwbG9hZHMvMjAxOC8xMS8yZTkzYWMyZGI1ZWZjZDA2ZGY3NDI2YzQ2ZmUzZmU2YS05MzN4NzAwLmpwZw_p_p100_p_3D_p_p100_p_3D.jpg', NULL, 'Vital Caviar Body Lotion'),
(13, NULL, NULL, 'Coming Soon', 2, 'https://cdn.goodq.top/caches/d3cb5b1e8d2f874dfc5debc4da94322b/aHR0cDovL3d3dy5vY2VhbmIuY29tLmF1L3FmeS1jb250ZW50L3VwbG9hZHMvMjAxOC8xMS81OWUzYTQxYjA2MTEzNmU0Y2JkMDQ2Y2U5OTcwOTA1Yi05MzN4NzAwLmpwZw_p_p100_p_3D_p_p100_p_3D.jpg', NULL, 'Vital Caviar Moisturizing Cream'),
(14, NULL, NULL, 'Coming Soon', 2, 'https://cdn.goodq.top/caches/d3cb5b1e8d2f874dfc5debc4da94322b/aHR0cDovL3d3dy5vY2VhbmIuY29tLmF1L3FmeS1jb250ZW50L3VwbG9hZHMvMjAxOC8xMS81YzMxYjU0MDk4NjFhNzk0OTlmYjIzY2YxNzA3NTJhYi05MzN4NzAwLmpwZw_p_p100_p_3D_p_p100_p_3D.jpg', NULL, 'Vital Caviar Eye Cream'),
(15, NULL, NULL, 'Coming Soon', 2, 'https://cdn.goodq.top/caches/d3cb5b1e8d2f874dfc5debc4da94322b/aHR0cDovL3d3dy5vY2VhbmIuY29tLmF1L3FmeS1jb250ZW50L3VwbG9hZHMvMjAxOC8xMS9iOTE5N2IxNTkwNzEwMzIwM2I1OGVjNTUzZTRjZWEwMS05MzN4NzAwLmpwZw_p_p100_p_3D_p_p100_p_3D.jpg', NULL, 'Vital Caviar Golden Mask'),
(16, NULL, NULL, 'Coming Soon', 2, 'https://cdn.goodq.top/caches/d3cb5b1e8d2f874dfc5debc4da94322b/aHR0cDovL3d3dy5vY2VhbmIuY29tLmF1L3FmeS1jb250ZW50L3VwbG9hZHMvMjAxOC8xMS83YWUzYjM2MDU1ZTM1MTg3MThjMzAyMTg1OTk1ZjdhOS05MzN4NzAwLmpwZw_p_p100_p_3D_p_p100_p_3D.jpg', NULL, 'Vital Caviar Black Mask'),
(17, NULL, NULL, 'Coming Soon', 2, 'https://cdn.goodq.top/caches/d3cb5b1e8d2f874dfc5debc4da94322b/aHR0cDovL3d3dy5vY2VhbmIuY29tLmF1L3FmeS1jb250ZW50L3VwbG9hZHMvMjAxOC8xMS8wMzlkMjg2OWFmODA3YWYyMWEwNTQxNjc4MTI2NDY0My05MzN4NzAwLmpwZw_p_p100_p_3D_p_p100_p_3D.jpg', NULL, 'Vital Caviar White Mask'),
(20, NULL, NULL, NULL, 6, 'https://cdn.goodq.top/caches/d3cb5b1e8d2f874dfc5debc4da94322b/aHR0cDovL3d3dy5vY2VhbmIuY29tLmF1L3FmeS1jb250ZW50L3VwbG9hZHMvMjAxOC8xMS8wODM5NTY0ZjI1ZWQ0ZmNmZDUzYjVmMTcwMzQzN2U4YS5qcGc_p_p100_p_3D.jpg', NULL, NULL),
(21, NULL, NULL, NULL, 6, 'https://cdn.goodq.top/caches/d3cb5b1e8d2f874dfc5debc4da94322b/aHR0cDovL3d3dy5vY2VhbmIuY29tLmF1L3FmeS1jb250ZW50L3VwbG9hZHMvMjAxOC8xMS8yOWU4NjQ0NzEyOTcyYzI0MWFlZThlNjQ3MWYyMDQxZS5qcGc_p_p100_p_3D.jpg', NULL, NULL),
(22, NULL, NULL, NULL, 6, 'https://cdn.goodq.top/caches/d3cb5b1e8d2f874dfc5debc4da94322b/aHR0cDovL3d3dy5vY2VhbmIuY29tLmF1L3FmeS1jb250ZW50L3VwbG9hZHMvMjAxOC8xMS84YmFlOTI1YzFlNGFlN2Q2ZTJlN2Y2OTI4N2UxNGVkMS5qcGc_p_p100_p_3D.jpg', NULL, NULL),
(23, NULL, NULL, NULL, 6, 'https://cdn.goodq.top/caches/d3cb5b1e8d2f874dfc5debc4da94322b/aHR0cDovL3d3dy5vY2VhbmIuY29tLmF1L3FmeS1jb250ZW50L3VwbG9hZHMvMjAxOC8xMS84ZGY2OWZjMjA1MDMyN2RjM2IxZDY5YjNhODFmYmU0NC5qcGc_p_p100_p_3D.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `shop_car`
--

CREATE TABLE `shop_car` (
  `id` int(11) NOT NULL,
  `user_name` char(12) NOT NULL,
  `list_id` int(11) NOT NULL,
  `conut` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`) VALUES
(9, '1111', '12@qq.com', '12345678'),
(10, '1111', '1234@qq.com', '11111111'),
(11, '11111', '111@q.com', '11111111'),
(12, 'xiao', '948286509@qq.com', '11111111'),
(13, 'axios', '948386509@qq.com', '11111111'),
(14, 'axias', '123@q.c', '12345678'),
(15, 'xiaos', '94827356@qq.com', '12345678');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`) USING BTREE;

--
-- Indexes for table `ocean_img`
--
ALTER TABLE `ocean_img`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `ocean_list`
--
ALTER TABLE `ocean_list`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `shop_car`
--
ALTER TABLE `shop_car`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `ocean_img`
--
ALTER TABLE `ocean_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `ocean_list`
--
ALTER TABLE `ocean_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=24;
--
-- 使用表AUTO_INCREMENT `shop_car`
--
ALTER TABLE `shop_car`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
