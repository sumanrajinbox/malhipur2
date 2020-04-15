-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 15, 2019 at 12:45 AM
-- Server version: 5.6.44-cll-lve
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `challenge_mal`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth`
--

CREATE TABLE `auth` (
  `id` int(8) NOT NULL,
  `user_id` int(8) NOT NULL,
  `fcm` varchar(100) NOT NULL,
  `device_id` varchar(100) NOT NULL,
  `auth_key` varchar(100) NOT NULL,
  `dated` datetime NOT NULL,
  `active` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth`
--

INSERT INTO `auth` (`id`, `user_id`, `fcm`, `device_id`, `auth_key`, `dated`, `active`) VALUES
(1, 1, '', '', '2645bc13636ecd6b5b9a3a1f14cecd32', '2019-08-12 22:15:39', 0),
(2, 2, '', '', '9233ee4746dbc6626ee92060f8f68b82', '2019-08-12 22:31:30', 1),
(3, 3, '', '', 'd995f09a8eef2cdf3597c9668ecc2c56', '2019-08-12 22:36:17', 1),
(4, 4, '', '', 'a57b0fba211ab0c2f1bdf5ecc4987967', '2019-08-13 08:53:03', 1),
(5, 5, '', '', '648d5083b8f47914f01f03f767249e6f', '2019-08-13 10:18:45', 0),
(6, 1, '', '', '281f4b0671a052912ce55682f66bc01f', '2019-08-14 01:52:06', 1),
(7, 6, '', '', '235ab01262c1e04298a66ae803163cab', '2019-08-14 16:55:15', 1),
(8, 7, '', '', '3fb4c2456c4df7d931856125cd7cd6ad', '2019-08-14 16:58:00', 1),
(9, 5, '', '', 'ac52f8ebfe85c2eca5d8cff6e330e81e', '2019-08-14 18:25:16', 0),
(10, 5, '', '', 'db3d40a1794da9cacdfd76ca9aeb3215', '2019-08-14 18:25:40', 1),
(11, 8, '', '', '4fb0ac47092b126fe6b23aef4a4e1c4d', '2019-08-14 18:27:15', 0),
(12, 9, '', '', 'a60a4f16dadccda6bc615f533ab69894', '2019-08-14 18:33:04', 1),
(13, 2, 'sdf3456345', 'asdf8768dfmb', '3067c8727f4db04ac2ef86eb3cd7fca9', '2019-08-14 22:44:21', 1),
(14, 10, '', '', 'cb1835b00687161546911e66b9a16b1c', '2019-08-15 10:51:49', 1);

-- --------------------------------------------------------

--
-- Table structure for table `chapter`
--

CREATE TABLE `chapter` (
  `id` int(8) NOT NULL,
  `class_id` int(8) NOT NULL,
  `subject_id` int(8) NOT NULL,
  `month_id` int(8) NOT NULL,
  `chapter_name` varchar(50) NOT NULL,
  `modified` datetime NOT NULL,
  `status` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chapter`
--

INSERT INTO `chapter` (`id`, `class_id`, `subject_id`, `month_id`, `chapter_name`, `modified`, `status`) VALUES
(1, 4, 1, 1, 'à¤µà¤¾à¤¸à¥à¤¤à¤µà¤¿à¤• à¤¸à¤‚à¤–à¥à¤¯à¤¾à¤‚ ', '2019-08-12 21:48:30', 1),
(2, 4, 2, 1, 'à¤¬à¤¹à¤¾à¤¦à¥à¤° ', '2019-08-12 22:55:21', 1),
(3, 4, 2, 1, 'à¤¹à¤¿à¤‚à¤¦à¥€ à¤µà¤¯à¤¾à¤•à¤°à¤£', '2019-08-12 22:58:29', 1),
(4, 4, 7, 2, 'à¤¬à¤¹à¤¾à¤¦à¥à¤°', '2019-08-14 21:55:07', 1),
(5, 4, 7, 2, 'à¤œà¤¿à¤¤ à¤œà¤¿à¤¤ à¤®à¥ˆà¤‚ à¤¨à¤¿à¤°à¤–à¤¤ à¤¹à', '2019-08-14 21:55:43', 1),
(6, 4, 7, 2, 'à¤°à¤¾à¤® à¤¨à¤¾à¤® à¤¬à¤¿à¤¨à¥ à¤¬à¤¿à¤°à¤¥à¥‡ à', '2019-08-14 21:56:48', 1),
(7, 4, 7, 2, 'à¤µà¤¹à¤¾à¤¦à¥à¤°', '2019-08-14 21:58:44', 1),
(8, 4, 2, 2, 'à¤œà¤¿à¤¤ à¤œà¤¿à¤¤ à¤®à¤¨ à¤¨à¤¿à¤°à¤–à¤¤ à¤¹à¥‚à', '2019-08-14 22:01:07', 1),
(9, 4, 2, 1, 'à¤¹à¤¿à¤‚à¤¦à¥€', '2019-08-14 22:02:30', 1),
(10, 4, 7, 1, 'Hello world', '2019-08-14 22:06:14', 1),
(11, 4, 8, 1, 'Vayakaran', '2019-08-14 22:37:30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` int(3) NOT NULL,
  `name` varchar(12) COLLATE utf8_bin NOT NULL,
  `session` varchar(12) COLLATE utf8_bin NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `active` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `name`, `session`, `modified`, `active`) VALUES
(1, '7th', '2019-2020', '2019-06-10 18:30:00', 1),
(2, '8th', '2019-2020', '2019-06-10 18:30:00', 1),
(3, '9th', '2019-2020', '2019-06-10 18:30:00', 1),
(4, '10th', '2019-2020', '2019-06-10 18:30:00', 1),
(5, '11th', '2019-2020', '2019-06-10 18:30:00', 1),
(6, '12th', '2019-2020', '2019-06-10 18:30:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `course_details`
--

CREATE TABLE `course_details` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `class_id` int(5) NOT NULL,
  `subject_id` int(5) DEFAULT NULL,
  `month_id` int(5) DEFAULT NULL,
  `paid` int(1) DEFAULT NULL,
  `modified` datetime NOT NULL,
  `active` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `course_details`
--

INSERT INTO `course_details` (`id`, `user_id`, `class_id`, `subject_id`, `month_id`, `paid`, `modified`, `active`) VALUES
(1, 1, 4, NULL, NULL, NULL, '2019-08-12 21:45:35', 1),
(2, 2, 4, NULL, NULL, NULL, '2019-08-12 22:31:20', 1),
(3, 3, 4, NULL, NULL, NULL, '2019-08-12 22:35:53', 1),
(4, 4, 4, NULL, NULL, NULL, '2019-08-13 08:51:38', 1),
(5, 5, 4, NULL, NULL, NULL, '2019-08-13 10:18:09', 1),
(6, 6, 4, NULL, NULL, NULL, '2019-08-14 16:53:34', 1),
(7, 7, 4, NULL, NULL, NULL, '2019-08-14 16:58:00', 1),
(8, 8, 4, NULL, NULL, NULL, '2019-08-14 18:26:53', 1),
(9, 9, 4, NULL, NULL, NULL, '2019-08-14 18:32:26', 1),
(10, 10, 4, NULL, NULL, NULL, '2019-08-15 10:51:49', 1);

-- --------------------------------------------------------

--
-- Table structure for table `exam_setup`
--

CREATE TABLE `exam_setup` (
  `id` int(8) NOT NULL,
  `title_id` int(8) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `exam_title_master`
--

CREATE TABLE `exam_title_master` (
  `id` int(8) NOT NULL,
  `title_name` varchar(200) NOT NULL,
  `modified` datetime NOT NULL,
  `status` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_title_master`
--

INSERT INTO `exam_title_master` (`id`, `title_name`, `modified`, `status`) VALUES
(1, 'Hello exam', '2019-08-14 01:54:17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fee`
--

CREATE TABLE `fee` (
  `id` int(8) NOT NULL,
  `classid` int(8) NOT NULL,
  `monthid` int(2) NOT NULL,
  `fee` float(7,2) NOT NULL,
  `session` varchar(12) COLLATE utf8_bin NOT NULL,
  `modified` datetime NOT NULL,
  `active` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `fee`
--

INSERT INTO `fee` (`id`, `classid`, `monthid`, `fee`, `session`, `modified`, `active`) VALUES
(1, 4, 1, 50.00, '2019-2020', '2019-08-12 21:46:31', 1),
(2, 4, 2, 50.00, '2019-2020', '2019-08-12 22:45:22', 1),
(3, 4, 3, 50.00, '2019-2020', '2019-08-12 22:46:01', 1),
(4, 4, 4, 50.00, '2019-2020', '2019-08-12 22:46:13', 1),
(5, 4, 5, 50.00, '2019-2020', '2019-08-12 22:46:25', 1),
(6, 4, 6, 50.00, '2019-2020', '2019-08-12 22:47:10', 1),
(7, 4, 7, 50.00, '2019-2020', '2019-08-12 22:47:15', 1),
(8, 4, 8, 50.00, '2019-2020', '2019-08-12 22:47:20', 1),
(9, 4, 9, 50.00, '2019-2020', '2019-08-12 22:47:24', 1),
(10, 4, 10, 50.00, '2019-2020', '2019-08-12 22:47:29', 1),
(11, 4, 11, 50.00, '2019-2020', '2019-08-12 22:47:33', 1),
(12, 4, 12, 50.00, '2019-2020', '2019-08-12 22:47:37', 1);

-- --------------------------------------------------------

--
-- Table structure for table `forgot_password`
--

CREATE TABLE `forgot_password` (
  `id` int(8) NOT NULL,
  `user_id` int(8) NOT NULL,
  `otp` varchar(50) NOT NULL,
  `active` int(1) NOT NULL,
  `dated` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(8) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `name` varchar(30) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `last_login` datetime NOT NULL,
  `access` int(1) NOT NULL,
  `user` varchar(30) NOT NULL,
  `dated` datetime NOT NULL,
  `active` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `name`, `mobile`, `email`, `address`, `last_login`, `access`, `user`, `dated`, `active`) VALUES
(1, 'admin', 'admin@challenge', 'Akbar Ali', '9122572185', 'akbar1991ali@yahoo.com', 'Bengaluru', '2017-12-21 00:00:00', 1, 'akbar', '2017-12-21 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `month`
--

CREATE TABLE `month` (
  `id` int(2) NOT NULL,
  `monthName` varchar(20) COLLATE utf8_bin NOT NULL,
  `created` datetime NOT NULL,
  `active` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `month`
--

INSERT INTO `month` (`id`, `monthName`, `created`, `active`) VALUES
(1, 'January', '2019-06-23 00:00:00', 1),
(2, 'February', '2019-06-23 00:00:00', 1),
(3, 'March', '2019-06-23 00:00:00', 1),
(4, 'April', '2019-06-23 00:00:00', 1),
(5, 'May', '2019-06-23 00:00:00', 1),
(6, 'June', '2019-06-23 00:00:00', 1),
(7, 'July', '2019-06-23 00:00:00', 1),
(8, 'August', '2019-06-23 00:00:00', 1),
(9, 'September', '2019-06-23 00:00:00', 1),
(10, 'October', '2019-06-23 00:00:00', 1),
(11, 'November', '2019-06-23 00:00:00', 1),
(12, 'December', '2019-06-23 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `active` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pdf`
--

CREATE TABLE `pdf` (
  `id` int(8) NOT NULL,
  `video_id` int(8) NOT NULL,
  `pdf_name` varchar(200) NOT NULL,
  `pdf_url` varchar(300) NOT NULL,
  `modified` datetime NOT NULL,
  `status` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pdf`
--

INSERT INTO `pdf` (`id`, `video_id`, `pdf_name`, `pdf_url`, `modified`, `status`) VALUES
(1, 1, 'video_20190812215044_0.pdf', '../pdf/video_20190812215044_0.pdf', '0000-00-00 00:00:00', 1),
(2, 2, 'video_20190812223928_0.pdf', '../pdf/video_20190812223928_0.pdf', '0000-00-00 00:00:00', 1),
(3, 3, 'video_20190812231710_0.pdf', '../pdf/video_20190812231710_0.pdf', '0000-00-00 00:00:00', 1),
(4, 4, 'video_20190813013958_0.pdf', '../pdf/video_20190813013958_0.pdf', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(8) NOT NULL,
  `user_id` int(8) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `contact` varchar(11) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `profile_pic` varchar(50) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `active` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `user_id`, `first_name`, `last_name`, `email`, `contact`, `address`, `profile_pic`, `created`, `modified`, `active`) VALUES
(1, 1, 'Laxman ', 'Kumar', 'qgabhi@gmail.com', '8581810321', 'Malhipur Btps 851116', NULL, '2019-08-12 21:45:35', '2019-08-12 21:45:35', 1),
(2, 2, 'Akbar', 'Ali', 'akbar1991ali@yahoo.com', '9852750185', 'Malhipur ', NULL, '2019-08-12 22:31:20', '2019-08-12 22:31:20', 1),
(3, 3, 'Suman', 'Raj', 'sumanrajinbox@gmail.com', '7979044783', 'Bihar', NULL, '2019-08-12 22:35:53', '2019-08-12 22:35:53', 1),
(4, 4, 'Saurav', 'Kumar', 'sauravkumar5731@gmail.com', '9570509555', 'Malhipur', NULL, '2019-08-13 08:51:38', '2019-08-13 08:51:38', 1),
(5, 5, 'Anand ', 'Kumar', 'ak867705@gmail.com', '8677052561', 'Malhipur', NULL, '2019-08-13 10:18:09', '2019-08-13 10:18:09', 1),
(6, 6, 'Isha', 'Kumari', 'srabindra92@gmail.com', '6204832997', 'Malhipur Begusarai 851116', NULL, '2019-08-14 16:53:34', '2019-08-14 16:53:34', 1),
(7, 7, 'Avinabh', 'Kumar', 'abhinav2004kyp@gmail.com', '8651425642', 'Bushnupur Chand', NULL, '2019-08-14 16:58:00', '2019-08-14 16:58:00', 1),
(8, 8, 'Nandan', 'Kumar', 'nandanbgs8495@gmail.com', '8405852505', 'Malhipur Ward No 1 Post Btps Dist Begusarai', NULL, '2019-08-14 18:26:53', '2019-08-14 18:26:53', 1),
(9, 9, 'Saket Kumar ', 'Prajapati ', 'adityanandan52505@gmail.com', '8292896667', 'At Malhipur  Po  BTPS.  PS. BARAUNI  . DISTT BEGUSARAI ', NULL, '2019-08-14 18:32:26', '2019-08-14 18:32:26', 1),
(10, 10, 'Abhinav', 'kumar', 'ak221857@gmail.com', '6202437231', 'Bishanpur', NULL, '2019-08-15 10:51:49', '2019-08-15 10:51:49', 1);

-- --------------------------------------------------------

--
-- Table structure for table `referral_code`
--

CREATE TABLE `referral_code` (
  `id` int(8) NOT NULL,
  `user_id` int(8) NOT NULL,
  `r_code` varchar(10) COLLATE utf8_bin NOT NULL,
  `reddem_id` int(8) NOT NULL,
  `redeem_date` datetime NOT NULL,
  `created_date` datetime NOT NULL,
  `active` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(6) NOT NULL,
  `subjectName` varchar(60) COLLATE utf8_bin NOT NULL,
  `classid` int(5) NOT NULL,
  `session` varchar(20) COLLATE utf8_bin NOT NULL,
  `modified` datetime NOT NULL,
  `active` int(1) NOT NULL,
  `month_id` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `subjectName`, `classid`, `session`, `modified`, `active`, `month_id`) VALUES
(1, 'Mathematics', 4, '2019-2020', '2019-08-12 21:47:20', 1, 1),
(2, 'à¤¹à¤¿à¤‚à¤¦à¥€', 4, '2019-2020', '2019-08-12 22:51:06', 1, 1),
(3, 'à¤…à¤à¤—à¥à¤°à¥‡à¤œà¥€', 4, '2019-2020', '2019-08-12 22:51:29', 1, 1),
(4, 'à¤¸à¤¾à¤®à¤¾à¤œà¤¿à¤• à¤µà¤¿à¤œà¥à¤žà¤¾à¤¨', 4, '2019-2020', '2019-08-12 22:52:23', 1, 1),
(5, 'à¤¸à¤‚à¤¸à¥à¤•à¥ƒà¤¤', 4, '2019-2020', '2019-08-12 22:52:45', 1, 1),
(6, 'à¤µà¤¿à¤œà¥à¤žà¤¾à¤¨', 4, '2019-2020', '2019-08-12 22:53:14', 1, 1),
(7, 'HINDI', 4, '2019-2020', '2019-08-14 21:50:07', 1, 2),
(8, 'HINDI GRAMMER', 4, '2019-2020', '2019-08-14 21:50:27', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `thumb`
--

CREATE TABLE `thumb` (
  `id` int(8) NOT NULL,
  `video_id` int(8) NOT NULL,
  `thumb_url` varchar(300) NOT NULL,
  `status` int(8) NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thumb`
--

INSERT INTO `thumb` (`id`, `video_id`, `thumb_url`, `status`, `modified`) VALUES
(1, 1, '../thumb/video_20190812215042_0.png', 1, '0000-00-00 00:00:00'),
(2, 2, '../thumb/video_20190812223926_0.jpg', 1, '0000-00-00 00:00:00'),
(3, 3, '../thumb/video_20190812231708_0.png', 1, '0000-00-00 00:00:00'),
(4, 4, '../thumb/video_20190813013946_0.jpg', 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(8) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` char(64) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `created`, `modified`, `active`) VALUES
(1, 'qgabhi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-12 21:45:35', '2019-08-13 04:45:35', 1),
(2, 'akbar1991ali@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-12 22:31:20', '2019-08-13 05:31:20', 1),
(3, 'sumanrajinbox@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-12 22:35:53', '2019-08-13 05:35:53', 1),
(4, 'sauravkumar5731@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-13 08:51:38', '2019-08-13 15:51:38', 1),
(5, 'ak867705@gmail.com', '86a49b32825ada7c20d77d5538b1f0db', '2019-08-13 10:18:09', '2019-08-13 17:18:09', 1),
(6, 'srabindra92@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-14 16:53:34', '2019-08-14 23:53:34', 1),
(7, 'abhinav2004kyp@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-14 16:58:00', '2019-08-14 23:58:00', 1),
(8, 'nandanbgs8495@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-14 18:26:53', '2019-08-15 01:26:53', 1),
(9, 'adityanandan52505@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-14 18:32:26', '2019-08-15 01:32:26', 1),
(10, 'ak221857@gmail.com', '0cb1eb413b8f7cee17701a37a1d74dc3', '2019-08-15 10:51:49', '2019-08-15 17:51:49', 1);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(8) NOT NULL,
  `class_id` int(4) NOT NULL,
  `subject_id` int(4) NOT NULL,
  `chapter_id` int(8) NOT NULL,
  `month_id` int(8) NOT NULL,
  `session` varchar(300) NOT NULL,
  `video_title` varchar(300) NOT NULL,
  `video_name` varchar(300) NOT NULL,
  `video_description` varchar(10000) NOT NULL,
  `video_url` varchar(300) NOT NULL,
  `modified` datetime NOT NULL,
  `status` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `class_id`, `subject_id`, `chapter_id`, `month_id`, `session`, `video_title`, `video_name`, `video_description`, `video_url`, `modified`, `status`) VALUES
(1, 4, 1, 1, 1, '19-20', 'à¤µà¤¾à¤¸à¥à¤¤à¤µà¤¿à¤• à¤¸à¤‚à¤–à¥à¤¯à¤¾à¤‚ ', 'video_20190812215042_0.mp4', 'à¤µà¤°à¥à¤— à¤¦à¤¸à¤® à¤µà¤¾à¤¸à¥à¤¤à¤µà¤¿à¤• à¤¸à¤‚à¤–à¥à¤¯à¤¾à¤‚ ', '../video/video_20190812215042_0.mp4', '0000-00-00 00:00:00', 1),
(2, 4, 1, 1, 1, '19-20', 'à¤¬à¤¹à¥à¤ªà¤¦', 'video_20190812223926_0.mp4', 'à¤¬à¤¹à¥à¤ªà¤¦ à¤•à¥‡ à¤œà¥‹à¥œ', '../video/video_20190812223926_0.mp4', '0000-00-00 00:00:00', 1),
(3, 4, 2, 2, 1, '19-20', 'Hello', 'video_20190812231708_0.mp4', 'à¤¬à¤¹à¤¾à¤¦à¥à¤°', '../video/video_20190812231708_0.mp4', '0000-00-00 00:00:00', 1),
(4, 4, 2, 3, 1, '19-20', 'Hello world ', 'video_20190813013946_0.mp4', 'à¤¸à¤®à¤¾à¤¸', '../video/video_20190813013946_0.mp4', '0000-00-00 00:00:00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth`
--
ALTER TABLE `auth`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chapter`
--
ALTER TABLE `chapter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_details`
--
ALTER TABLE `course_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_setup`
--
ALTER TABLE `exam_setup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_title_master`
--
ALTER TABLE `exam_title_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee`
--
ALTER TABLE `fee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forgot_password`
--
ALTER TABLE `forgot_password`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `month`
--
ALTER TABLE `month`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pdf`
--
ALTER TABLE `pdf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thumb`
--
ALTER TABLE `thumb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth`
--
ALTER TABLE `auth`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `chapter`
--
ALTER TABLE `chapter`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `course_details`
--
ALTER TABLE `course_details`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `exam_setup`
--
ALTER TABLE `exam_setup`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_title_master`
--
ALTER TABLE `exam_title_master`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fee`
--
ALTER TABLE `fee`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `forgot_password`
--
ALTER TABLE `forgot_password`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `month`
--
ALTER TABLE `month`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pdf`
--
ALTER TABLE `pdf`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `thumb`
--
ALTER TABLE `thumb`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
