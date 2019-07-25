-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2019-06-21 17:34:07
-- 服务器版本： 10.1.38-MariaDB
-- PHP 版本： 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `lk`
--

-- --------------------------------------------------------

--
-- 表的结构 `product`
--

CREATE TABLE `product` (
  `pid` int(11) NOT NULL,
  `title` varchar(32) DEFAULT NULL,
  `price` decimal(7,2) DEFAULT NULL,
  `pimg` varchar(32) DEFAULT NULL,
  `dp1img` varchar(32) DEFAULT NULL,
  `dp2img` varchar(32) DEFAULT NULL,
  `dp3img` varchar(32) DEFAULT NULL,
  `dp4img` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `product`
--

INSERT INTO `product` (`pid`, `title`, `price`, `pimg`, `dp1img`, `dp2img`, `dp3img`, `dp4img`) VALUES
(1, 'LynkCo Magic Disk 无线充电发射板', '168.00', 'p1', 'd1-p1', 'd1-p2', 'd1-p3', 'd1-p4'),
(2, '领克魔方', '299.00', 'p2', 'd2-p1', 'd2-p2', 'd2-p3', 'd2-p4'),
(3, 'LynkCo 手动力空气沙发', '298.00', 'p3', 'd3-p1', 'd3-p2', 'd3-p3', 'd3-p4'),
(4, 'LynkCo 03 TCR 赛车帽', '109.00', 'p4', 'd4-p1', 'd4-p2', 'd4-p3', 'd4-p4'),
(5, 'LynkCo X Speedo 全域行者礼盒', '699.00', 'p5', 'd1-p1', 'd1-p2', 'd1-p3', 'd1-p4'),
(6, 'LynkCo 定制版移动电源', '286.00', 'p6', 'd3-p1', 'd3-p2', 'd3-p3', 'd3-p4'),
(7, '随LYNK 手机镜头组合', '435.00', 'p7', 'd2-p1', 'd2-p2', 'd2-p3', 'd2-p4'),
(8, 'LynkCo Beta便携音箱', '1099.00', 'p8', 'd2-p1', 'd2-p2', 'd2-p3', 'd2-p4'),
(9, 'LynkCo 渐变保温瓶', '128.00', 'p9', 'd1-p1', 'd1-p2', 'd1-p3', 'd1-p4'),
(10, 'LynkCo 渐变色广口杯', '158.00', 'p10', 'd1-p1', 'd1-p2', 'd1-p3', 'd1-p4'),
(11, 'LynkCo 记事本', '55.00', 'p11', 'd2-p1', 'd2-p2', 'd2-p3', 'd2-p4'),
(12, 'LynkCo 便签本', '49.00', 'p12', 'd1-p1', 'd1-p2', 'd1-p3', 'd1-p4'),
(13, 'LynkCo 水性笔礼盒套装', '50.00', 'p13', 'd2-p1', 'd2-p2', 'd2-p3', 'd2-p4'),
(14, 'JINNNN For LynkCo 条纹感镜片眼镜', '1650.00', 'p14', 'd4-p1', 'd4-p2', 'd4-p3', 'd4-p4'),
(15, 'JINNNN For LynkCo 银色透明包边眼镜', '1950.00', 'p15', 'd2-p1', 'd2-p2', 'd2-p3', 'd2-p4'),
(16, 'LynkCo轻量帆布手拎袋', '68.00', 'p16', 'd2-p1', 'd2-p2', 'd2-p3', 'd2-p4');

--
-- 转储表的索引
--

--
-- 表的索引 `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `product`
--
ALTER TABLE `product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
