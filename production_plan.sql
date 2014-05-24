-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2014 at 02:11 PM
-- Server version: 5.5.34
-- PHP Version: 5.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `production_plan`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('02d7367c1fad9ecea081d535935c1b4d', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0', 1400915465, ''),
('f40f723744da9dda6945141b2c1701b3', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0', 1400904404, 'a:7:{s:9:"user_data";s:0:"";s:8:"identity";s:15:"admin@admin.com";s:8:"username";s:13:"administrator";s:5:"email";s:15:"admin@admin.com";s:7:"user_id";s:1:"1";s:14:"old_last_login";s:10:"1400832490";s:8:"is_admin";b:1;}');

-- --------------------------------------------------------

--
-- Table structure for table `duration`
--

CREATE TABLE IF NOT EXISTS `duration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestart` time NOT NULL,
  `timeend` time NOT NULL,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `duration`
--

INSERT INTO `duration` (`id`, `timestart`, `timeend`, `sort_order`) VALUES
(1, '08:00:00', '12:00:00', 1),
(2, '13:00:00', '17:30:00', 2),
(3, '18:00:00', '22:00:00', 3);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'Admin', 'Administrator'),
(2, 'Users', 'General User'),
(3, 'Manager', 'For manager');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE IF NOT EXISTS `jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `type` int(11) NOT NULL,
  `color` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `name`, `description`, `type`, `color`) VALUES
(1, 'ETOH', '', 0, ''),
(2, 'H 2/2', '', 0, ''),
(3, 'H 4/2', '', 1, ''),
(4, 'H 5/2', '', 0, ''),
(5, 'MBO', '', 0, ''),
(6, 'MULLER', '', 0, ''),
(7, 'POLAR', '', 0, ''),
(8, 'R 1/2', '', 0, ''),
(9, 'R 2/3', '', 0, ''),
(10, 'R 4/2', '', 0, ''),
(11, 'STAHL', '', 0, ''),
(12, 'XINGUA', '', 0, ''),
(13, 'เก็บกอง', '', 0, ''),
(14, 'เครื่องซีล', '', 0, ''),
(15, 'ตัด 3 ด้าน', '', 0, ''),
(16, 'ทีมงานมือ 1', '', 0, ''),
(17, 'ทีมงานมือ 2', '', 0, ''),
(18, 'เย็บ/เจาะ', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `job_type`
--

CREATE TABLE IF NOT EXISTS `job_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `job_type`
--

INSERT INTO `job_type` (`id`, `name`) VALUES
(1, 'ส่วนพิมพ์'),
(2, 'หลังพิมพ์');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE IF NOT EXISTS `login_attempts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varbinary(16) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `papers`
--

CREATE TABLE IF NOT EXISTS `papers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `papers`
--

INSERT INTO `papers` (`id`, `name`, `description`) VALUES
(1, 'AO', 'AO'),
(2, 'CA1', 'CARD ART 1 Side Coated'),
(3, 'CA2', 'CARD ART 2 Side Coated'),
(4, 'GAP', 'Glossy Art Paper'),
(5, 'GR', 'Green Read'),
(6, 'MAP', 'Matt Art Paper'),
(7, 'NWS', 'Newsprint'),
(8, 'SPC', 'Special Paper'),
(9, 'WWF', 'White Wood Free Paper');

-- --------------------------------------------------------

--
-- Table structure for table `plan`
--

CREATE TABLE IF NOT EXISTS `plan` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(200) NOT NULL,
  `job_number` varchar(30) NOT NULL,
  `plate` varchar(20) NOT NULL,
  `paper` int(10) NOT NULL,
  `dimension` varchar(20) NOT NULL,
  `quantity` varchar(20) NOT NULL,
  `plan_time` datetime NOT NULL,
  `plan` varchar(10) NOT NULL,
  `adjust` varchar(10) NOT NULL,
  `actual` varchar(10) NOT NULL,
  `remark` text NOT NULL,
  `create_date` datetime NOT NULL,
  `create_by` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `update_by` int(11) NOT NULL,
  `is_delete` varchar(10) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `technician`
--

CREATE TABLE IF NOT EXISTS `technician` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `technician`
--

INSERT INTO `technician` (`id`, `name`) VALUES
(1, 'มนูญ');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varbinary(16) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(80) NOT NULL,
  `salt` varchar(40) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '\0\0', 'administrator', '100e1e621911f0c4392d6a2dcd856f0f8778a4cc', '9462e8eee0', 'admin@admin.com', NULL, NULL, NULL, '2059f56c64e4cc51b1ddb6bde72288cb7f89b58a', 1268889823, 1400897018, 1, 'Admin', 'istrator', 'ADMIN', '0'),
(2, '172.168.0.184', 'Tanawat', 'd812d4f06c290ad150ab25285250497361070ecf', NULL, 'tanardroid@gmail.com', NULL, '563d1b4585b49efe0769dec9a6dc6550e37fa91f', 1391397410, NULL, 1390877678, 1390877678, 1, 'ธนวัช', 'ไร่ทิม', 'wswp', '66868932964'),
(3, '172.168.0.184', 'kapor lib', 'ff7dbf5e7ebbf7d778b49291630f1e2c6c5c220a', NULL, 'kaporlib@gmail.com', NULL, NULL, NULL, NULL, 1391591524, 1391591524, 1, 'Kapor', 'Lib', 'WSWP', '0868932964'),
(4, '172.168.0.184', 'fdsf fdsfds', '45af7308e9143c46256779bc0d311ca97a125b9f', NULL, 'bigivt@hotmail.co.th', '3beb358cfbe28140d5638babc11a264afc1de800', NULL, NULL, NULL, 1391595979, 1391595979, 0, 'ทดสอบ', 'ทดสอบ', 'ทดสอบ', '0868932964'),
(5, '172.168.0.184', 'ae ae', '0d282e2caade48cf4e17cb6cece5ac8fcd8b6663', NULL, 'ae@mail.wswp.co.th', NULL, NULL, NULL, NULL, 1393583671, 1395913387, 1, 'Ae', 'Ae', 'wswp', '025867553'),
(6, '172.168.0.184', 'test test', 'c8175c60bf6b4c245873566913af95f201e5458c', NULL, 'test@test.com', NULL, NULL, NULL, NULL, 1396403841, 1396933081, 1, 'Test', 'Test', 'WSWP', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE IF NOT EXISTS `users_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  KEY `fk_users_groups_users1_idx` (`user_id`),
  KEY `fk_users_groups_groups1_idx` (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(15, 1, 1),
(16, 1, 2),
(17, 1, 3),
(3, 2, 1),
(4, 2, 2),
(5, 3, 2),
(9, 4, 2),
(10, 4, 3),
(14, 5, 2),
(18, 6, 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
