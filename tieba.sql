-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2017-10-11 21:56:19
-- 服务器版本： 5.5.48-log
-- PHP Version: 7.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tieba`
--

-- --------------------------------------------------------

--
-- 表的结构 `tieba_gonggao`
--

CREATE TABLE IF NOT EXISTS `tieba_gonggao` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` varchar(1000) DEFAULT NULL,
  `addtime` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tieba_gonggao`
--

INSERT INTO `tieba_gonggao` (`id`, `content`, `addtime`) VALUES
(1, '开黑吗？我玩卢锡安', '1507141276');

-- --------------------------------------------------------

--
-- 表的结构 `tieba_reply`
--

CREATE TABLE IF NOT EXISTS `tieba_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `replyid` int(11) NOT NULL DEFAULT '-1',
  `content` varchar(100) NOT NULL,
  `addtime` varchar(100) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- 转存表中的数据 `tieba_reply`
--

INSERT INTO `tieba_reply` (`id`, `tid`, `uid`, `replyid`, `content`, `addtime`, `status`) VALUES
(2, 1, 5, -1, '智障', NULL, 1),
(3, 1, 5, -1, '智障', NULL, 1),
(4, 1, 5, -1, '智障', NULL, 1),
(5, 1, 5, -1, '智障', NULL, 1),
(6, 1, 5, -1, '智障', NULL, 1),
(7, 1, 5, -1, '智障', NULL, 1),
(8, 1, 5, -1, '智障', NULL, 1),
(9, 1, 5, -1, '智障', NULL, 1),
(10, 1, 5, -1, '智障', NULL, 1),
(12, 90, 12, -1, 'dsaf ', '1507131375', 1),
(13, 90, 5, -1, '全文额', '1507132415', 1),
(15, 98, 12, -1, '21312312312', '1507141254', 1),
(16, 142, 13, -1, 'sadd ', '1507524321', 1),
(17, 142, 13, -1, 'asd fsda fsad fdsaf ', '1507525150', 1);

-- --------------------------------------------------------

--
-- 表的结构 `tieba_sign`
--

CREATE TABLE IF NOT EXISTS `tieba_sign` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sname` varchar(100) NOT NULL,
  `signnum` int(11) NOT NULL DEFAULT '0',
  `signtime` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `tieba_sign`
--

INSERT INTO `tieba_sign` (`id`, `sname`, `signnum`, `signtime`) VALUES
(4, '王志伟', 2, '1507518583'),
(5, '王紫薇', 1, '1507520706');

-- --------------------------------------------------------

--
-- 表的结构 `tieba_tags`
--

CREATE TABLE IF NOT EXISTS `tieba_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `content` text NOT NULL,
  `pic` varchar(100) DEFAULT NULL,
  `clicknum` int(11) NOT NULL DEFAULT '0',
  `addtime` varchar(100) DEFAULT NULL,
  `deltime` varchar(100) DEFAULT NULL,
  `showstatus` tinyint(4) NOT NULL DEFAULT '1',
  `title` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=200 ;

--
-- 转存表中的数据 `tieba_tags`
--

INSERT INTO `tieba_tags` (`id`, `uid`, `content`, `pic`, `clicknum`, `addtime`, `deltime`, `showstatus`, `title`) VALUES
(142, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 133, NULL, NULL, 2, '喜欢玩卢锡安吗?'),
(143, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 1, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(144, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(145, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(146, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(147, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(148, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(149, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(150, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(151, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(152, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(153, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(154, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(155, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(156, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(157, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(158, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(159, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(160, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(161, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(162, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(163, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(164, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(165, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(166, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(167, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(168, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(169, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(170, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(171, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(172, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(173, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(174, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(175, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(176, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(177, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(178, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(179, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(180, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(181, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(182, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(183, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(184, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(185, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(186, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(187, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(188, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(189, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(190, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(191, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(192, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(193, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(194, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(195, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(196, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(197, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(198, 13, '震惊中国13亿,开黑我玩卢锡安', NULL, 0, NULL, NULL, 1, '喜欢玩卢锡安吗?'),
(199, 13, '123', 'a0c20256e1b5e8f632e4b39f77586a4a.jpg', 9, '1507523680', NULL, 2, '123');

-- --------------------------------------------------------

--
-- 表的结构 `tieba_user`
--

CREATE TABLE IF NOT EXISTS `tieba_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `sex` tinyint(4) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `role` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `addtime` int(11) NOT NULL,
  `jifen` int(11) NOT NULL DEFAULT '0',
  `num` int(11) NOT NULL DEFAULT '0',
  `age` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`username`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `tieba_user`
--

INSERT INTO `tieba_user` (`id`, `username`, `pwd`, `sex`, `phone`, `email`, `role`, `status`, `addtime`, `jifen`, `num`, `age`) VALUES
(5, '王紫薇', '202cb962ac59075b964b07152d234b70', 1, '', '', 2, 1, 1506283121, 30, 1, 23),
(8, '123', '202cb962ac59075b964b07152d234b70', 1, '15377983896', NULL, 0, 1, 1507092624, 0, 100, NULL),
(9, '222', '202cb962ac59075b964b07152d234b70', 1, NULL, NULL, 0, 1, 1507115526, 0, 0, NULL),
(10, '2222', '202cb962ac59075b964b07152d234b70', 1, NULL, NULL, 0, 1, 1507115569, 0, 0, NULL),
(11, '小小王', '202cb962ac59075b964b07152d234b70', 1, NULL, NULL, 0, 1, 1507115657, 0, 0, NULL),
(13, '王志伟', '202cb962ac59075b964b07152d234b70', 1, '', '', 1, 1, 1507513810, 100040, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `tieba_userdetail`
--

CREATE TABLE IF NOT EXISTS `tieba_userdetail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `level` tinyint(4) NOT NULL DEFAULT '0',
  `num` int(11) NOT NULL DEFAULT '0',
  `jifen` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`username`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
