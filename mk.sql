-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-07-19 14:26:18
-- 服务器版本： 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mk`
--

-- --------------------------------------------------------

--
-- 表的结构 `mk_cake`
--

CREATE TABLE `mk_cake` (
  `cid` int(11) NOT NULL,
  `family_id` int(11) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `subtitle` varchar(128) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `spec` varchar(64) DEFAULT NULL,
  `lname` varchar(32) DEFAULT NULL,
  `promise_c` varchar(200) DEFAULT NULL,
  `promise_e` varchar(200) DEFAULT NULL,
  `home_type` int(11) NOT NULL,
  `onsale` varchar(20) NOT NULL,
  `is_onsale` tinyint(1) DEFAULT NULL,
  `sweetness` varchar(32) DEFAULT NULL,
  `acidite` int(11) NOT NULL,
  `base` varchar(32) DEFAULT NULL,
  `texture` varchar(32) DEFAULT NULL,
  `flavor` varchar(32) DEFAULT NULL,
  `special_version` varchar(100) DEFAULT NULL,
  `img_one` varchar(100) DEFAULT NULL,
  `img_first` varchar(100) NOT NULL,
  `img_tow` varchar(100) DEFAULT NULL,
  `img_three` varchar(100) DEFAULT NULL,
  `img_bottom` varchar(100) DEFAULT NULL,
  `is_index_product` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `mk_cake`
--

INSERT INTO `mk_cake` (`cid`, `family_id`, `title`, `subtitle`, `price`, `spec`, `lname`, `promise_c`, `promise_e`, `home_type`, `onsale`, `is_onsale`, `sweetness`, `acidite`, `base`, `texture`, `flavor`, `special_version`, `img_one`, `img_first`, `img_tow`, `img_three`, `img_bottom`, `is_index_product`) VALUES
(1, 2, '半熟芝士(草莓味)', 'Le MOJITO', '48.00', NULL, NULL, NULL, NULL, 1, '新品', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'cookies/1.jpg', '', NULL, NULL, NULL, 0),
(2, 2, 'V.S.O.P生巧', 'Le MOJITO', '68.00', NULL, NULL, NULL, NULL, 1, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'cookies/1(1).jpg', '', NULL, NULL, NULL, 0),
(3, 2, '半熟芝士(原味)', 'Le MOJITO', '48.00', NULL, NULL, NULL, NULL, 1, '人气', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'cookies/1(2).jpg', '', NULL, NULL, NULL, 0),
(4, 2, '知识小生', 'Le MOJITO', '78.00', NULL, NULL, NULL, NULL, 1, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'cookies/1(3).jpg', '', NULL, NULL, NULL, 0),
(5, 2, '塔尼小红莓', 'Le MOJITO', '78.00', NULL, NULL, NULL, NULL, 0, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'cookies/1(4).jpg', '', NULL, NULL, NULL, NULL),
(6, 2, '萝拉小朵(原味)', 'Le MOJITO', '298.00', NULL, NULL, NULL, NULL, 3, '热卖', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'cookies/1(5).jpg', '', NULL, NULL, NULL, 1),
(7, 2, '萝拉小朵(抹茶味)', '', '78.00', NULL, NULL, NULL, NULL, 0, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'cookies/1(6).jpg', '', NULL, NULL, NULL, NULL),
(8, 2, '萝拉小朵(巧克力味)', 'fleurette(Chocolat)', '78.00', NULL, NULL, NULL, NULL, 0, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'cookies/1(7).jpg', '', NULL, NULL, NULL, NULL),
(9, 1, 'Mojto 柠·檬', 'Le MOJITO', '298.00', '1-3人食', '慕斯', 'Mojito拧·漾，柔滑慕斯内蕴Q弹酒冻，绝妙配比带来口感的平衡，不太浓烈，绝妙配比带来口感的平衡，不太浓烈。', 'Use mouse au citron legerment mouse au citron legerment mouse au citron legerment mouse au citron legerment mouse au citron. ', 2, '促销', 1, NULL, 2, 'Mousse', '入口即化', '慕斯/水果', NULL, 'cake/list_2027_1.jpg', '8/1.jpg', '8/2.jpg', '8/3.jpg', '8/wap.jpg', 0),
(10, 1, '卢克和咚咚冰淇淋蛋糕', 'Luck et dondon', '298.00', NULL, '冰淇淋', NULL, NULL, 2, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'cake/1.jpg', '', NULL, NULL, NULL, 0),
(11, 1, '花漾·年华', 'Floraison', '196.00', '2磅', '芝士/水果', '康乃馨在酸奶邻面上盛开成海，入口后，清新的奶香在新建蔓延，像小时候在春天里奔跑，踩过暖阳，树莓慕斯搭配白果香。', 'la fraicheur Use mouse au citron legerment mouse au citron legerment mouse au citron legerment mouse au citron legerment mouse au citron. ', 1, '新品', 1, NULL, 5, 'Mousse', '入口即化', '水果/巧克力', NULL, 'cake/1(1).jpg', '1/1.jpg', '1/2.jpg', '1/3.jpg', '1/wap.jpg', 1),
(12, 1, '童梦', 'Le MOJITO', '298.00', NULL, '鲜奶', NULL, NULL, 2, '新品', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'cake/1(2).jpg', '', NULL, NULL, NULL, 0),
(13, 1, '海岸蓝调', '', '298.00', '1-3人食', '冰淇淋', '遵循原料的合适配比，保证酸奶冰激凌的醇厚风味。在太平洋海风的吹拂下，黄油饼干堆积成金色沙滩，清新的椰蓉逐浪而来，果冻蒲城蓝色海面，倒影出一首夏天的诗。', 'les biscuits su beurre se trsnsforment en plages de sable dore .noix de coco fraiches devienent vagues .Locan ease la gelee bleu.', 3, '新品', 0, NULL, 3, 'ice cream', '香甜', '酸奶冰淇淋', NULL, 'cake/1(3).jpg', '2/1.jpg', '2/2.jpg', '2/3.jpg', '2/wap.jpg', 0),
(14, 1, '浓巧·迷情冰淇淋蛋糕', 'Choco~Mariage', '298.00', NULL, '巧克力/冰淇淋', NULL, NULL, 3, '新品', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'cake/1(4).jpg', '', NULL, NULL, NULL, 0),
(15, 1, '蔓越莓红丝绒', 'Velour Rouge', '298.00', NULL, '鲜奶', NULL, NULL, 3, '新品', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'cake/1(5).jpg', '', NULL, NULL, NULL, 0),
(16, 1, '蓝莓轻乳拿破仑', 'Le MOJITO', '298.00', NULL, '拿破仑/鲜奶/芝士/水果', NULL, NULL, 3, '金牌', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'cake/1(6).jpg', '', NULL, NULL, NULL, 1),
(17, 1, '鲜莓印雪', 'Fraise-Chantilly', '298.00', NULL, '鲜奶/水果', NULL, NULL, 2, '人气', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'cake/1(7).jpg', '', NULL, NULL, NULL, 1),
(18, 1, '安逸兔', 'lapin détendu', '318.00', NULL, '慕斯', NULL, NULL, 1, '人气', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'cake/1(8).jpg', '', NULL, NULL, NULL, 1),
(19, 1, '尼诺', 'Nino', '298.00', NULL, '慕斯/芝士', NULL, NULL, 1, '人气', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'cake/1(9).jpg', '', NULL, NULL, NULL, 1),
(20, 1, '香溢新芝', 'Le MOJITO', '298.00', NULL, '慕斯/芝士', NULL, NULL, 3, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'cake/1(10).jpg', '', NULL, NULL, NULL, 1),
(21, 1, '爱丽丝花镜', 'Nino', '298.00', NULL, '鲜奶/水果', NULL, NULL, 1, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'cake/1(11).jpg', '', NULL, NULL, NULL, 1),
(22, 1, '芒果·Mangue', 'Mangue chantilly', '298.00', NULL, '鲜奶/水果', NULL, NULL, 2, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'cake/1(12).jpg', '', NULL, NULL, NULL, 1),
(23, 1, '君度可可', 'Choco Cointreau', '298.00', NULL, '慕斯/巧克力', NULL, NULL, 3, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'cake/1(13).jpg', '', NULL, NULL, NULL, 0),
(24, 1, '纱布蕾芭菲', '', '298.00', NULL, '慕斯/巧克力', NULL, NULL, 3, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'cake/1(14).jpg', '', NULL, NULL, NULL, 0),
(25, 1, '巧克力莓林', '', '298.00', NULL, '巧克力', NULL, NULL, 3, '新品', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'cake/1(15).jpg', '', NULL, NULL, NULL, 0),
(26, 1, '巧克力黑兰', 'Lotus Noir', '298.00', NULL, '慕斯/巧克力', NULL, NULL, 2, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'cake/list_1933_1.jpg', '', NULL, NULL, NULL, 1),
(27, 1, '黑森立拿破仑', '', '298.00', NULL, '拿破仑/巧克力', NULL, NULL, 3, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'cake/1(16).jpg', '', NULL, NULL, NULL, 0),
(28, 1, '朗姆醇栗', 'Month Blanc', '318.00', NULL, '坚果', NULL, NULL, 3, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'cake/list_2132_1.jpg', '', NULL, NULL, NULL, 0),
(29, 1, '法香奶油可丽', '', '298.00', NULL, '鲜奶', NULL, NULL, 3, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'cake/1(17).jpg', '', NULL, NULL, NULL, 0),
(30, 1, '经典香草拿破仑', 'Napole', '298.00', NULL, '拿破仑/鲜奶', NULL, NULL, 3, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'cake/1(18).jpg', '', NULL, NULL, NULL, 1),
(31, 1, '卡法香缇', '', '298.00', NULL, '鲜奶/咖啡', NULL, NULL, 3, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'cake/1(19).jpg', '', NULL, NULL, NULL, 0),
(32, 1, '榴莲雪塔', 'Tarte au durian', '318.00', NULL, '鲜奶/水果', NULL, NULL, 2, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'cake/1(20).jpg', '', NULL, NULL, NULL, 1),
(33, 1, '天使巧克力', '', '298.00', NULL, '鲜奶/巧克力', NULL, NULL, 3, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'cake/1(21).jpg', '', NULL, NULL, NULL, 0),
(34, 1, '魔鬼巧克力', 'Diable chocolat', '298.00', NULL, '巧克力', NULL, NULL, 3, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'cake/1(22).jpg', '', NULL, NULL, NULL, 0),
(35, 1, '摩登茶道', '', '298.00', NULL, '慕斯', NULL, NULL, 3, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'cake/1(23).jpg', '', NULL, NULL, NULL, 0),
(36, 1, '榛果摩卡布拉吉', 'Moka praline noisette', '318.00', NULL, '咖啡/坚果', NULL, NULL, 3, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'cake/1(24).jpg', '', NULL, NULL, NULL, 0),
(37, 1, '提拉米苏', 'Tiramisu', '298.00', NULL, '慕斯/芝士/咖啡', NULL, NULL, 3, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'cake/1(25).jpg', '', NULL, NULL, NULL, 0),
(38, 1, '蜜桃物语', '', '318.00', NULL, '水果', NULL, NULL, 3, '新品', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'cake/1(26).jpg', '', NULL, NULL, NULL, 0),
(39, 1, '阳光心芒', 'Le Soleil', '298.00', NULL, '慕斯/水果', NULL, NULL, 3, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'cake/1(27).jpg', '', NULL, NULL, NULL, 0),
(40, 1, '约瑟芬玫瑰', '', '398.00', NULL, '慕斯/巧克力', NULL, NULL, 3, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'cake/1(28).jpg', '', NULL, NULL, NULL, 0),
(41, 1, '百香果慕斯', '', '298.00', NULL, NULL, NULL, NULL, 3, '新品', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'cake/1(29).jpg', '', NULL, NULL, NULL, 0),
(42, 1, '百利派对', '', '298.00', NULL, '鲜奶/巧克力', NULL, NULL, 3, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'cake/1(30).jpg', '', NULL, NULL, NULL, 0),
(43, 1, 'coco芭娜娜', 'Coco banana', '298.00', NULL, '慕斯/水果', NULL, NULL, 3, '新品', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'cake/1(31).jpg', '', NULL, NULL, NULL, 0),
(44, 0, '首页1楼大图', '', '0.00', NULL, NULL, NULL, NULL, 1, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'home/f4d22390f990ea96.jpg', '', NULL, NULL, NULL, 1),
(45, 0, '首页2楼大图', '', '0.00', NULL, NULL, NULL, NULL, 2, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'home/ce0c4531bae7090e.jpg', '', NULL, NULL, NULL, 1),
(46, 0, '首页3楼大图', '', '0.00', NULL, NULL, NULL, NULL, 3, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'home/5ee6bb564fb306d7.jpg', '', NULL, NULL, NULL, 1),
(47, 0, '数字蜡烛', '', '3.00', NULL, '所有配件', NULL, NULL, 0, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'all/1.jpg', '', NULL, NULL, NULL, 0),
(48, 0, '生日牌', '', '5.00', NULL, '所有配件', NULL, NULL, 0, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'all/1(1).jpg', '', NULL, NULL, NULL, 0),
(49, 0, '缤纷欢乐礼包', 'Des paquets de cadeaux', '29.90', NULL, '所有配件', NULL, NULL, 0, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'all/1(2).jpg', '', NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- 表的结构 `mk_index_carousel`
--

CREATE TABLE `mk_index_carousel` (
  `clid` int(11) NOT NULL,
  `img` varchar(128) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `mk_index_carousel`
--

INSERT INTO `mk_index_carousel` (`clid`, `img`, `title`, `href`) VALUES
(1, 'banner/4ea5b824c818875c.jpg', NULL, NULL),
(2, 'banner/9b94295ec789af2a.jpg', NULL, NULL),
(3, 'banner/9d3a5c15b52802f9.jpg', NULL, NULL),
(4, 'banner/198e4fcf8820d775.jpg', NULL, NULL),
(5, 'banner/391c6fd7e06d0c10.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `mk_order`
--

CREATE TABLE `mk_order` (
  `aid` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `order_time` bigint(20) DEFAULT NULL,
  `pay_time` bigint(20) DEFAULT NULL,
  `deliver_time` bigint(20) DEFAULT NULL,
  `received_time` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `mk_order_detail`
--

CREATE TABLE `mk_order_detail` (
  `did` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `mk_product_reviews`
--

CREATE TABLE `mk_product_reviews` (
  `rid` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `reviews_time` varchar(40) DEFAULT NULL,
  `container` varchar(200) DEFAULT NULL,
  `grade` varchar(10) NOT NULL,
  `phone` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `mk_product_reviews`
--

INSERT INTO `mk_product_reviews` (`rid`, `product_id`, `user_id`, `reviews_time`, `container`, `grade`, `phone`) VALUES
(0, 1, 1, '2019/7/11 上午9:17:53', '8这个蛋糕真的很好吃，夏天吃最合适，口味很香甜，而且一点都不腻', 'v5', '15864523256'),
(1, 9, 1, '2019/7/11 上午9:17:53', '这个蛋糕真的很好吃，夏天吃最合适，口味很香甜，而且一点都不腻', 'v5', '15864523256'),
(2, 9, 1, '2019/7/11 上午8:45:38', '味道很不错，是性价比比较高的蛋糕了。推荐大家订购', 'v4', '14578956234'),
(3, 9, 2, '2019/7/11 上午9:17:53', '确实挺好吃，有淡淡的薄荷味，很美味', 'v3', '189564213247'),
(4, 9, 1, '2019/7/11 上午9:17:53', '吃过后来评价确实挺好吃，有淡淡的薄荷味，很美味', 'v2', '17856895612'),
(5, 9, 1, '2019/7/11 上午9:17:53', '这是吃过的最好吃的蛋糕，没有之一', 'v3', '17856895612'),
(6, 9, 1, '2019/7/11 上午9:17:53', '薄荷味的蛋糕，还是第一次吃，就喜欢上了这个味道，下次果生日还会再定', 'v2', '14578956234'),
(7, 9, 1, '2019/7/11 上午8:30:22', '好吃的不得了', 'v2', '17856895612'),
(8, 9, 1, '2019/7/11 上午8:30:59', '下次还会再买', 'v2', '15864523256'),
(9, 9, 1, '2019/7/11 上午8:44:45', '美味不可阻挡', 'v2', '18652345689'),
(10, 9, 1, '2019/7/11 上午8:45:21', '真好吃', 'V2', '14578956234'),
(11, 9, 1, '2019/7/11 上午8:45:22', '家里孩子很喜欢吃，夏天吃起来很清凉', 'V2', '15864523256'),
(12, 9, 1, '2019/7/11 上午8:45:38', '真好吃', 'V2', '17856895612'),
(13, 9, 1, '2019/7/11 上午9:17:53', '真好吃', 'V2', '15864523256'),
(14, 9, 1, '2019/7/11 上午9:18:54', '真好吃', 'V2', '18652345689'),
(15, 9, 1, '2019/7/11 上午9:17:53', '1这个蛋糕真的很好吃，夏天吃最合适，口味很香甜，而且一点都不腻', 'v5', '15864523256'),
(16, 9, 1, '2019/7/11 上午8:45:38', '2味道很不错，是性价比比较高的蛋糕了。推荐大家订购', 'v4', '14578956234'),
(17, 9, 2, '2019/7/11 上午9:17:53', '3确实挺好吃，有淡淡的薄荷味，很美味', 'v3', '189564213247'),
(18, 9, 1, '2019/7/11 上午9:17:53', '4吃过后来评价确实挺好吃，有淡淡的薄荷味，很美味', 'v2', '17856895612'),
(19, 9, 1, '2019/7/11 上午9:17:53', '5这是吃过的最好吃的蛋糕，没有之一', 'v3', '17856895612'),
(20, 9, 1, '2019/7/11 上午9:17:53', '6薄荷味的蛋糕，还是第一次吃，就喜欢上了这个味道，下次果生日还会再定', 'v2', '14578956234'),
(21, 9, 1, '2019/7/11 上午8:30:22', '7好吃的不得了', 'v2', '17856895612'),
(23, 9, 1, '2019/7/11 上午8:45:38', '9味道很不错，是性价比比较高的蛋糕了。推荐大家订购', 'v4', '14578956234'),
(24, 9, 2, '2019/7/11 上午9:17:53', '10确实挺好吃，有淡淡的薄荷味，很美味', 'v3', '189564213247'),
(25, 9, 1, '2019/7/11 上午9:17:53', '11吃过后来评价确实挺好吃，有淡淡的薄荷味，很美味', 'v2', '17856895612'),
(26, 9, 1, '2019/7/11 上午9:17:53', '12这是吃过的最好吃的蛋糕，没有之一', 'v3', '17856895612'),
(27, 9, 1, '2019/7/11 上午9:17:53', '13薄荷味的蛋糕，还是第一次吃，就喜欢上了这个味道，下次果生日还会再定', 'v2', '14578956234'),
(28, 9, 1, '2019/7/11 上午8:30:22', '14好吃的不得了', 'v2', '17856895612'),
(29, 9, 1, '2019/7/11 上午9:17:53', '15这个蛋糕真的很好吃，夏天吃最合适，口味很香甜，而且一点都不腻', 'v5', '15864523256'),
(30, 9, 1, '2019/7/11 上午8:45:38', '16味道很不错，是性价比比较高的蛋糕了。推荐大家订购', 'v4', '14578956234'),
(31, 9, 2, '2019/7/11 上午9:17:53', '17确实挺好吃，有淡淡的薄荷味，很美味', 'v3', '189564213247'),
(32, 9, 1, '2019/7/11 上午9:17:53', '18吃过后来评价确实挺好吃，有淡淡的薄荷味，很美味', 'v2', '17856895612'),
(33, 9, 1, '2019/7/11 上午9:17:53', '19这是吃过的最好吃的蛋糕，没有之一', 'v3', '17856895612'),
(34, 9, 1, '2019/7/11 上午9:17:53', '20薄荷味的蛋糕，还是第一次吃，就喜欢上了这个味道，下次果生日还会再定', 'v2', '14578956234'),
(35, 9, 1, '2019/7/11 上午8:30:22', '21好吃的不得了', 'v2', '17856895612'),
(36, 9, 1, '2019/7/11 上午9:17:53', '22这个蛋糕真的很好吃，夏天吃最合适，口味很香甜，而且一点都不腻', 'v5', '15864523256'),
(37, 9, 1, '2019/7/11 上午8:45:38', '23味道很不错，是性价比比较高的蛋糕了。推荐大家订购', 'v4', '14578956234'),
(38, 9, 2, '2019/7/11 上午9:17:53', '24确实挺好吃，有淡淡的薄荷味，很美味', 'v3', '189564213247'),
(39, 9, 1, '2019/7/11 上午9:17:53', '25吃过后来评价确实挺好吃，有淡淡的薄荷味，很美味', 'v2', '17856895612'),
(40, 11, 1, '2019/7/11 上午9:17:53', '1这个蛋糕真的很好吃，夏天吃最合适，口味很香甜，而且一点都不腻', 'v5', '15864523256'),
(41, 11, 1, '2019/7/11 上午8:45:38', '2味道很不错，是性价比比较高的蛋糕了。推荐大家订购', 'v4', '14578956234'),
(42, 11, 2, '2019/7/11 上午9:17:53', '3确实挺好吃，有淡淡的薄荷味，很美味', 'v3', '189564213247'),
(43, 11, 1, '2019/7/11 上午9:17:53', '4吃过后来评价确实挺好吃，有淡淡的薄荷味，很美味', 'v2', '17856895612'),
(44, 11, 1, '2019/7/11 上午9:17:53', '5这是吃过的最好吃的蛋糕，没有之一', 'v3', '17856895612'),
(45, 11, 1, '2019/7/11 上午9:17:53', '6这么香甜的蛋糕，还是第一次吃，就喜欢上了这个味道，下次果生日还会再定', 'v2', '14578956234'),
(46, 11, 1, '2019/7/11 上午8:30:22', '7好吃的不得了', 'v2', '17856895612'),
(47, 11, 1, '2019/7/11 上午8:30:59', '8下次还会再买', 'v2', '15864523256'),
(48, 11, 1, '2019/7/11 上午8:44:45', '9美味不可阻挡', 'v2', '18652345689'),
(49, 11, 1, '2019/7/11 上午8:45:21', '10真好吃', 'V2', '14578956234'),
(50, 11, 1, '2019/7/11 上午8:45:22', '11家里孩子很喜欢吃，夏天吃起来很清凉', 'V2', '15864523256'),
(51, 11, 1, '2019/7/11 上午8:45:38', '12很美味，很好看的蛋糕，真好吃', 'V2', '17856895612'),
(52, 11, 1, '2019/7/11 上午9:17:53', '13吃过的最好吃的蛋糕，很喜欢这个味道', 'V2', '15864523256'),
(53, 1, 1, '2019/7/11 上午9:18:54', '14真好吃', 'V2', '18652345689'),
(54, 13, 1, '2019/7/11 上午9:17:53', '海岸蓝调，这个蛋糕真的很好吃，夏天吃最合适，口味很香甜，而且一点都不腻', 'v5', '15864523256'),
(55, 13, 1, '2019/7/11 上午8:45:38', '海岸蓝调味道很不错，是性价比比较高的蛋糕了。推荐大家订购', 'v4', '14578956234'),
(56, 13, 2, '2019/7/11 上午9:17:53', '海岸蓝调确实挺好吃，有淡淡的薄荷味，很美味', 'v3', '189564213247'),
(57, 13, 1, '2019/7/11 上午9:17:53', '海岸蓝调吃过后来评价确实挺好吃，有淡淡的薄荷味，很美味', 'v2', '17856895612'),
(58, 13, 1, '2019/7/11 上午9:17:53', '这是吃过的最好吃的蛋糕，海岸蓝调没有之一', 'v3', '17856895612'),
(59, 13, 1, '2019/7/11 上午9:17:53', '薄荷味的蛋糕，还是第一次吃海岸蓝调，就喜欢上了这个味道，下次果生日还会再定', 'v2', '14578956234');

-- --------------------------------------------------------

--
-- 表的结构 `mk_receiver_address`
--

CREATE TABLE `mk_receiver_address` (
  `aid` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `receiver` varchar(16) DEFAULT NULL,
  `province` varchar(16) DEFAULT NULL,
  `city` varchar(16) DEFAULT NULL,
  `county` varchar(16) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  `cellphone` varchar(16) DEFAULT NULL,
  `fixedphone` varchar(16) DEFAULT NULL,
  `postcode` char(6) DEFAULT NULL,
  `tag` varchar(16) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `mk_shoppingcart_item`
--

CREATE TABLE `mk_shoppingcart_item` (
  `iid` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `subtitle` varchar(128) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `spec` varchar(64) DEFAULT NULL,
  `lname` varchar(32) DEFAULT NULL,
  `imgurl` varchar(100) NOT NULL,
  `count` int(11) DEFAULT NULL,
  `is_checked` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `mk_shoppingcart_item`
--

INSERT INTO `mk_shoppingcart_item` (`iid`, `user_id`, `product_id`, `title`, `subtitle`, `price`, `spec`, `lname`, `imgurl`, `count`, `is_checked`) VALUES
(1, 1, 9, 'Mojito 柠·漾', 'Le Mojito', '298.00', '1磅（454g）', NULL, '8/1.jpg', 1, 1),
(2, 1, 13, '童梦', 'Reve des enfants', '298.00', '1磅（454g）', NULL, '7/1.jpg', 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `mk_user`
--

CREATE TABLE `mk_user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(32) DEFAULT NULL,
  `upwd` varchar(32) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `avatar` varchar(128) DEFAULT NULL,
  `user_name` varchar(32) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `mk_user`
--

INSERT INTO `mk_user` (`uid`, `uname`, `upwd`, `phone`, `avatar`, `user_name`, `gender`) VALUES
(2, NULL, '123456', '15701255368', NULL, NULL, NULL),
(3, NULL, '123456', '15701257888', NULL, NULL, NULL),
(4, NULL, '123456', '15702154578', NULL, NULL, NULL),
(5, NULL, '123456', '15789562586', NULL, NULL, NULL),
(6, NULL, '123456', '15789567445', NULL, NULL, NULL),
(7, NULL, '123456', '15789456412', NULL, NULL, NULL),
(8, NULL, '123456', '16879458412', NULL, NULL, NULL),
(9, NULL, '456123', '18956234756', NULL, NULL, NULL),
(10, NULL, '123456', '18956222222', NULL, NULL, NULL),
(11, NULL, '123456', '16952358965', NULL, NULL, NULL),
(12, NULL, '123456', '15869562352', NULL, NULL, NULL),
(13, NULL, '123456', '16895623555', NULL, NULL, NULL),
(14, NULL, '123456', '16895623546', NULL, NULL, NULL),
(15, NULL, '123456', '18965356666', NULL, NULL, NULL),
(16, NULL, '123456', '18965234555', NULL, NULL, NULL),
(17, NULL, '123456', '15701255365', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mk_cake`
--
ALTER TABLE `mk_cake`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `mk_index_carousel`
--
ALTER TABLE `mk_index_carousel`
  ADD PRIMARY KEY (`clid`);

--
-- Indexes for table `mk_order`
--
ALTER TABLE `mk_order`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `mk_order_detail`
--
ALTER TABLE `mk_order_detail`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `mk_product_reviews`
--
ALTER TABLE `mk_product_reviews`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `mk_receiver_address`
--
ALTER TABLE `mk_receiver_address`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `mk_shoppingcart_item`
--
ALTER TABLE `mk_shoppingcart_item`
  ADD PRIMARY KEY (`iid`);

--
-- Indexes for table `mk_user`
--
ALTER TABLE `mk_user`
  ADD PRIMARY KEY (`uid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `mk_cake`
--
ALTER TABLE `mk_cake`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- 使用表AUTO_INCREMENT `mk_index_carousel`
--
ALTER TABLE `mk_index_carousel`
  MODIFY `clid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `mk_order`
--
ALTER TABLE `mk_order`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `mk_order_detail`
--
ALTER TABLE `mk_order_detail`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `mk_product_reviews`
--
ALTER TABLE `mk_product_reviews`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- 使用表AUTO_INCREMENT `mk_receiver_address`
--
ALTER TABLE `mk_receiver_address`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `mk_shoppingcart_item`
--
ALTER TABLE `mk_shoppingcart_item`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `mk_user`
--
ALTER TABLE `mk_user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
