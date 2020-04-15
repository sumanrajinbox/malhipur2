-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 19, 2019 at 06:21 AM
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth`
--

INSERT INTO `auth` (`id`, `user_id`, `fcm`, `device_id`, `auth_key`, `dated`, `active`) VALUES
(2, 2, '', '', '7c4c0e768f19fce8467a63d9c1cb483e', '2019-08-18 17:08:34', 1),
(34, 1, '', '', '94d17494fbd5f0eb989acac4e1de8e84', '2019-08-18 17:15:59', 0),
(4, 4, '', '', 'a57b0fba211ab0c2f1bdf5ecc4987967', '2019-08-13 08:53:03', 1),
(36, 1, '', '', '8ad73f26b0af53a653073c95399f5cdc', '2019-08-19 07:13:48', 0),
(37, 19, '', '', 'cef7ae61befdfe369f6c79033501124c', '2019-08-19 07:19:44', 1),
(7, 6, '', '', '235ab01262c1e04298a66ae803163cab', '2019-08-14 16:55:15', 1),
(8, 7, '', '', '3fb4c2456c4df7d931856125cd7cd6ad', '2019-08-14 16:58:00', 1),
(38, 5, '', '', '358d8f71a096a0920a0a544152536d5f', '2019-08-19 09:13:02', 0),
(39, 5, '', '', '679e26acc822b0dd5458ef97248c0cf8', '2019-08-19 09:13:27', 1),
(12, 9, '', '', 'a60a4f16dadccda6bc615f533ab69894', '2019-08-14 18:33:04', 1),
(13, 2, 'sdf3456345', 'asdf8768dfmb', '9af6864795f835033588d0d2e67e4b2a', '2019-08-19 17:01:09', 1),
(14, 10, '', '', 'cb1835b00687161546911e66b9a16b1c', '2019-08-15 10:51:49', 1),
(15, 11, '', '', '6bc8706cd91ab889c6813890197abcd7', '2019-08-15 19:46:31', 1),
(16, 12, '', '', 'd16f94b86cac5fea48053b52e41b569c', '2019-08-16 08:36:53', 1),
(17, 13, '', '', '92ec002945cf629501f0812080dffef0', '2019-08-17 19:38:56', 1),
(18, 14, '', '', 'fe9a9da65f7f64480a77b8cbd43e118a', '2019-08-16 16:57:17', 1),
(19, 15, '', '', '27bb40f733f29e1552a2e895f931919c', '2019-08-16 20:07:32', 1),
(21, 16, '', '', '4911eb15b09c8471965f52aab8f75deb', '2019-08-17 14:15:30', 1),
(33, 19, '', '', '48d6adb8e1b535c88c7e85e7bbd4ff14', '2019-08-18 17:18:30', 0),
(23, 18, '', '', '74b3dc77f9657cbea5e49f4d428f8b70', '2019-08-17 14:23:25', 1),
(24, 8, '', '', '615f967d55f7aebf1f9410d5b2efb48d', '2019-08-17 18:00:59', 1),
(40, 1, 'sdf3456345', 'asdf8768dfmb', '6c1132bceee01dbc411e7882b06cfd93', '2019-08-19 17:43:37', 1),
(35, 1, '', '', 'f9de9d5ea6971b0e1d898793fbe8fd08', '2019-08-18 17:16:51', 0),
(32, 17, '', '', '48e913bb335a23f6b39299af467f3acb', '2019-08-18 16:53:25', 0);

-- --------------------------------------------------------

--
-- Table structure for table `chapter`
--

CREATE TABLE `chapter` (
  `id` int(8) NOT NULL,
  `class_id` int(8) NOT NULL,
  `subject_id` int(8) NOT NULL,
  `month_id` int(8) NOT NULL,
  `chapter_name` varchar(5000) NOT NULL,
  `modified` datetime NOT NULL,
  `status` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chapter`
--

INSERT INTO `chapter` (`id`, `class_id`, `subject_id`, `month_id`, `chapter_name`, `modified`, `status`) VALUES
(1, 4, 2, 1, 'à¤¬à¤¹à¤¾à¤¦à¥à¤°', '2019-08-15 14:29:29', 1),
(2, 4, 2, 1, 'à¤œà¤¿à¤¤ à¤œà¤¿à¤¤ à¤®à¥ˆà¤‚ à¤¨à¤¿à¤°à¤–à¤¤ à¤¹à¥‚à¤ ', '2019-08-15 14:30:55', 1),
(3, 4, 2, 1, 'à¤®à¤›à¤²à¥€ ', '2019-08-15 14:31:28', 1),
(4, 4, 2, 1, 'à¤¶à¤¿à¤•à¥à¤·à¤¾ à¤”à¤° à¤¸à¤‚à¤¸à¥à¤•à¥ƒà¤¤à¤¿ ', '2019-08-15 14:31:49', 1),
(5, 4, 2, 1, 'à¤¶à¥à¤°à¤® à¤µà¤¿à¤­à¤¾à¤œà¤¨ à¤”à¤° à¤œà¤¾à¤¤à¥€ à¤ªà¥à¤°à¤¥à¤¾ ', '2019-08-15 14:32:27', 1),
(6, 4, 2, 1, 'à¤¨à¤¾à¥™à¥‚à¤¨ à¤•à¥à¤¯à¥‹à¤‚ à¤¬à¥à¤¤à¥‡ à¤¹à¥ˆà¤‚ ', '2019-08-15 14:32:54', 1),
(7, 4, 2, 1, 'à¤¦à¤¹à¥€ à¤µà¤¾à¤²à¥€ à¤®à¤‚à¤—à¥à¤—à¤¾à¤®à¤¾ ', '2019-08-15 14:33:17', 1),
(8, 4, 2, 1, 'à¤¢à¤¹à¤¤à¥‡ à¤µà¤¿à¤¶à¥à¤µà¤¾à¤¸ ', '2019-08-15 14:33:53', 1),
(9, 4, 2, 1, 'à¤®à¤¾à¤', '2019-08-15 14:34:13', 1),
(10, 4, 2, 1, 'à¤¨à¤—à¤°', '2019-08-15 14:34:32', 1),
(11, 4, 2, 1, 'à¤§à¤°à¤¤à¥€ à¤•à¤¬ à¤¤à¤• à¤˜à¥‚à¤®à¥‡à¤—à¥€ ', '2019-08-15 14:35:37', 1),
(12, 1, 2, 2, 'computer', '2019-08-15 20:11:14', 0);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` int(3) NOT NULL,
  `name` varchar(12) NOT NULL,
  `session` varchar(12) NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `active` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course_details`
--

INSERT INTO `course_details` (`id`, `user_id`, `class_id`, `subject_id`, `month_id`, `paid`, `modified`, `active`) VALUES
(1, 1, 1, 1, 1, 1, '2019-08-12 21:45:35', 1),
(2, 2, 1, 1, 1, 1, '2019-08-12 22:31:20', 1),
(3, 3, 4, NULL, NULL, NULL, '2019-08-12 22:35:53', 1),
(4, 4, 4, NULL, NULL, NULL, '2019-08-13 08:51:38', 1),
(5, 5, 4, NULL, NULL, NULL, '2019-08-13 10:18:09', 1),
(6, 6, 4, NULL, NULL, NULL, '2019-08-14 16:53:34', 1),
(7, 7, 4, NULL, NULL, NULL, '2019-08-14 16:58:00', 1),
(8, 8, 4, NULL, NULL, NULL, '2019-08-14 18:26:53', 1),
(9, 9, 4, NULL, NULL, NULL, '2019-08-14 18:32:26', 1),
(10, 10, 4, NULL, NULL, NULL, '2019-08-15 10:51:49', 1),
(11, 11, 4, NULL, NULL, NULL, '2019-08-15 19:46:06', 1),
(12, 12, 4, NULL, NULL, NULL, '2019-08-16 08:36:50', 1),
(13, 13, 4, NULL, NULL, NULL, '2019-08-16 14:36:17', 1),
(14, 14, 4, NULL, NULL, NULL, '2019-08-16 16:56:41', 1),
(15, 15, 4, NULL, NULL, NULL, '2019-08-16 20:07:02', 1),
(16, 16, 4, NULL, NULL, NULL, '2019-08-17 14:15:30', 1),
(17, 17, 4, NULL, NULL, NULL, '2019-08-17 14:17:53', 1),
(18, 18, 4, NULL, NULL, NULL, '2019-08-17 14:23:05', 1),
(19, 19, 4, NULL, NULL, NULL, '2019-08-18 17:13:12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `exam_question_setup`
--

CREATE TABLE `exam_question_setup` (
  `id` int(8) NOT NULL,
  `title_id` int(8) NOT NULL,
  `class_id` int(8) NOT NULL,
  `subject_id` int(8) NOT NULL,
  `video_id` int(8) NOT NULL,
  `question` varchar(3000) COLLATE utf8_unicode_ci NOT NULL,
  `option1` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `option2` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `option3` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `option4` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `flag` int(8) NOT NULL,
  `answer` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exam_question_setup`
--

INSERT INTO `exam_question_setup` (`id`, `title_id`, `class_id`, `subject_id`, `video_id`, `question`, `option1`, `option2`, `option3`, `option4`, `flag`, `answer`, `modified`) VALUES
(1, 1, 1, 0, 1, '111 question 111', 'cat', 'dog', 'cow', 'rat', 1, '2', '2019-08-17 06:17:20'),
(2, 1, 1, 1, 1, '222 question 222', 'cat', 'dog', 'cow', 'rat', 1, '3', '2019-08-17 06:17:21'),
(3, 7, 4, 0, 0, 'à¤¬à¤¿à¤°à¤œà¥‚ à¤®à¤¹à¤¾à¤°à¤¾à¤œ à¤•à¤¾ à¤œà¤¨à¥à¤® à¤•à¤¬ à¤”à¤° à¤•à¤¹à¤¾à¤ à¤¹à¥à¤† à¤¥à¤¾ ', 'à¤²à¤–à¤¨à¤Š  à¥§à¥®à¥«à¥­ ', 'à¤°à¤¾à¤®à¤ªà¥à¤°  à¥§à¥«à¥ªà¥­ ', 'à¤•à¤²à¤•à¤¤à¥à¤¤à¤¾ à¥§à¥¨à¥©à¥§ ', 'à¤®à¤²à¥à¤¹à¥€à¤ªà¥à¤° à¥§à¥¯à¥¯à¥® ', 1, '1', '2019-08-18 16:17:00'),
(4, 7, 4, 0, 0, 'How are you', 'Fine ', 'Not fine ', 'Also fine', 'Good', 1, '3', '2019-08-18 21:52:11'),
(5, 7, 4, 0, 0, 'à¤ªà¥à¤°à¤•à¤¾à¤¶ à¤ªà¤°à¤¾à¤µà¤°à¥à¤¤à¤¨ à¤•à¤¾ à¤•à¤¿à¤¤à¤¨à¥‡ à¤¨à¤¿à¤¯à¤® à¤¹à¥ˆà¥¤ ', '4', '2', '3', '5', 1, '2', '2019-08-19 11:39:26'),
(6, 7, 4, 0, 0, 'demo3', '3', '2', '3', '3', 1, '4', '2019-08-19 11:45:14'),
(7, 2, 4, 0, 0, 'demo4', 'fff', 'fffff', 'jh', 'h', 1, '2', '2019-08-19 11:47:25'),
(8, 1, 1, 0, 0, 'Test Question', 'A', 'B', 'C', 'D', 1, '1', '2019-08-19 11:47:31'),
(9, 3, 4, 0, 0, 'hello question', 'op1', 'op2', 'op3', 'op4', 1, '3', '2019-08-19 12:00:03'),
(10, 1, 4, 0, 0, 'question2', 'io', 'io3', 'io4', 'io5', 1, '2', '2019-08-19 12:01:04'),
(11, 2, 4, 0, 0, 'suman qu', 'sa', 'sa3', 'sa', 'sa', 1, '3', '2019-08-19 12:03:46'),
(12, 7, 4, 0, 0, 'ff', 'ff', 'ttr', 'tt', '66', 1, '4', '2019-08-19 12:07:50'),
(13, 7, 4, 0, 0, 'Who am I ', 'Laxman', 'Kumar', 'Abhijeet', 'Both', 1, '1', '2019-08-19 12:08:17'),
(14, 7, 4, 0, 0, 'I am laxman . Yes or not', 'Yes', 'Not', 'Both', 'Yes and not', 1, '1', '2019-08-19 12:08:56'),
(15, 7, 4, 0, 0, 'Who was the first precedent of india.', 'Narendra modi', 'Jawaharlal nehru', 'Indira gandhi', 'Soniya gandhi', 1, '2', '2019-08-19 13:48:52'),
(16, 7, 4, 0, 0, 'Who is the precedent of india.', 'Rahul gandhi', 'Arvind kejriwaal', 'Akhilesh kumar', 'Narendra modi', 1, '4', '2019-08-19 13:49:43');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exam_setup`
--

INSERT INTO `exam_setup` (`id`, `title_id`, `start_time`, `end_time`, `modified`, `status`) VALUES
(1, 1, '2019-08-22 06:00:00', '2019-08-22 08:20:00', '2019-08-12 01:51:50', 1),
(2, 2, '2019-08-04 00:00:00', '2019-08-15 02:00:00', '2019-08-12 00:00:00', 1),
(3, 6, '2019-08-23 12:00:00', '2019-08-23 13:00:00', '2019-08-17 22:54:02', 1);

-- --------------------------------------------------------

--
-- Table structure for table `exam_title_master`
--

CREATE TABLE `exam_title_master` (
  `id` int(8) NOT NULL,
  `class_id` int(8) NOT NULL,
  `title_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `modified` datetime NOT NULL,
  `status` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exam_title_master`
--

INSERT INTO `exam_title_master` (`id`, `class_id`, `title_name`, `modified`, `status`) VALUES
(1, 1, 'demo tite name 1', '2019-08-12 00:00:00', 1),
(2, 1, 'demo tite name 2', '2019-08-13 00:00:00', 1),
(3, 1, 'demo title text 1', '2019-08-12 00:12:57', 1),
(4, 1, 'Test Exam', '2019-08-17 22:41:19', 1),
(5, 1, 'exxxxam title massssster', '2019-08-17 22:45:39', 1),
(6, 1, 'Tesrt', '2019-08-17 22:53:08', 1),
(7, 4, 'laxman kumar', '2019-08-18 16:14:42', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fee`
--

CREATE TABLE `fee` (
  `id` int(8) NOT NULL,
  `classid` int(8) NOT NULL,
  `monthid` int(2) NOT NULL,
  `fee` float(7,2) NOT NULL,
  `session` varchar(12) NOT NULL,
  `modified` datetime NOT NULL,
  `active` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
  `monthName` varchar(20) NOT NULL,
  `created` datetime NOT NULL,
  `active` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pdf`
--

INSERT INTO `pdf` (`id`, `video_id`, `pdf_name`, `pdf_url`, `modified`, `status`) VALUES
(1, 1, 'video_20190815144418_0.pdf', '../pdf/video_20190815144418_0.pdf', '0000-00-00 00:00:00', 1),
(2, 3, 'video_20190815162319_0.31215', '../pdf/video_20190815162319_0.31215', '0000-00-00 00:00:00', 1),
(3, 4, 'video_20190815213344_0.jpg', '../pdf/video_20190815213344_0.jpg', '0000-00-00 00:00:00', 1),
(4, 5, 'video_20190815213629_0.31217', '../pdf/video_20190815213629_0.31217', '0000-00-00 00:00:00', 1),
(5, 6, 'video_20190816075937_0.31212', '../pdf/video_20190816075937_0.31212', '0000-00-00 00:00:00', 1),
(6, 7, 'video_20190816080324_0.31211', '../pdf/video_20190816080324_0.31211', '0000-00-00 00:00:00', 1),
(7, 8, 'video_20190816081742_0.31216', '../pdf/video_20190816081742_0.31216', '0000-00-00 00:00:00', 1),
(8, 9, 'video_20190816082530_0.31209', '../pdf/video_20190816082530_0.31209', '0000-00-00 00:00:00', 1),
(9, 10, 'video_20190816083127_0.31213', '../pdf/video_20190816083127_0.31213', '0000-00-00 00:00:00', 1),
(10, 11, 'video_20190817170623_0.31214', '../pdf/video_20190817170623_0.31214', '0000-00-00 00:00:00', 1);

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
(10, 10, 'Abhinav', 'kumar', 'ak221857@gmail.com', '6202437231', 'Bishanpur', NULL, '2019-08-15 10:51:49', '2019-08-15 10:51:49', 1),
(11, 11, ' Neeraj', 'Kumar', 'nk822789@gmail.com', '8521834340', 'Malhipur', NULL, '2019-08-15 19:46:06', '2019-08-15 19:46:06', 1),
(12, 12, 'Ravi', 'Raj', 'kunalkishor453@gmail.com', '7992343146', 'Chakia', NULL, '2019-08-16 08:36:50', '2019-08-16 08:36:50', 1),
(13, 13, 'Avinabh', 'Kumar', 'harshkumar8771@gmail.com', '6202437231', 'Bishnupur', NULL, '2019-08-16 14:36:17', '2019-08-16 14:36:17', 1),
(14, 14, 'Raja', 'Kumar', 'rb01072004@gmail.com', '9693464690', 'Kashha', NULL, '2019-08-16 16:56:41', '2019-08-16 16:56:41', 1),
(15, 15, 'Prkash', 'Kumar', 'radi4961@gmail.com', '6205907391', 'Chakiya', NULL, '2019-08-16 20:07:02', '2019-08-16 20:07:02', 1),
(16, 16, 'Rahul', 'Kumar', 'rahulbgs@gmail.com', '8578904548', 'Malhipur', NULL, '2019-08-17 14:15:30', '2019-08-17 14:15:30', 1),
(17, 17, 'Rahul', 'Kumar', 'rahulbgs147@gmail.com', '8578904548', 'Malhipur', NULL, '2019-08-17 14:17:53', '2019-08-17 14:17:53', 1),
(18, 18, 'Kamlesh', 'Kumar', 'km851116@gmail.com', '9534949073', 'Malhipur', NULL, '2019-08-17 14:23:05', '2019-08-17 14:23:05', 1),
(19, 19, 'Nishant', 'Singh', 'nishu952525@gmail.com', '9572354973', 'Jhakhra', NULL, '2019-08-18 17:13:12', '2019-08-18 17:13:12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `referral_code`
--

CREATE TABLE `referral_code` (
  `id` int(8) NOT NULL,
  `user_id` int(8) NOT NULL,
  `r_code` varchar(10) NOT NULL,
  `reddem_id` int(8) NOT NULL,
  `redeem_date` datetime NOT NULL,
  `created_date` datetime NOT NULL,
  `active` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(6) NOT NULL,
  `subjectName` varchar(5000) NOT NULL,
  `classid` int(5) NOT NULL,
  `session` varchar(20) NOT NULL,
  `modified` datetime NOT NULL,
  `active` int(1) NOT NULL,
  `month_id` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `thumb`
--

INSERT INTO `thumb` (`id`, `video_id`, `thumb_url`, `status`, `modified`) VALUES
(1, 1, '../thumb/video_20190815144353_0.jpg', 1, '0000-00-00 00:00:00'),
(2, 2, '../thumb/video_20190815160331_0.png', 1, '0000-00-00 00:00:00'),
(3, 3, '../thumb/video_20190815162310_0.png', 1, '0000-00-00 00:00:00'),
(4, 4, '../thumb/video_20190815213335_0.jpg', 1, '0000-00-00 00:00:00'),
(5, 5, '../thumb/video_20190815213605_0.jpg', 1, '0000-00-00 00:00:00'),
(6, 6, '../thumb/video_20190816075934_0.jpg', 1, '0000-00-00 00:00:00'),
(7, 7, '../thumb/video_20190816080315_0.jpg', 1, '0000-00-00 00:00:00'),
(8, 8, '../thumb/video_20190816081733_0.jpg', 1, '0000-00-00 00:00:00'),
(9, 9, '../thumb/video_20190816082523_0.jpg', 1, '0000-00-00 00:00:00'),
(10, 10, '../thumb/video_20190816083119_0.jpg', 1, '0000-00-00 00:00:00'),
(11, 11, '../thumb/video_20190817170608_0.jpg', 1, '0000-00-00 00:00:00');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
(10, 'ak221857@gmail.com', '0cb1eb413b8f7cee17701a37a1d74dc3', '2019-08-15 10:51:49', '2019-08-15 17:51:49', 1),
(11, 'nk822789@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-15 19:46:06', '2019-08-16 02:46:06', 1),
(12, 'kunalkishor453@gmail.com', '6fa95a05ec8d85327a5dc24a984156ab', '2019-08-16 08:36:50', '2019-08-16 15:36:50', 1),
(13, 'harshkumar8771@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-16 14:36:17', '2019-08-16 21:36:17', 1),
(14, 'rb01072004@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-16 16:56:41', '2019-08-16 23:56:41', 1),
(15, 'radi4961@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-16 20:07:02', '2019-08-17 03:07:02', 1),
(16, 'rahulbgs@gmail.com', '8d2d815105ef54785902a68dd7655c2a', '2019-08-17 14:15:30', '2019-08-17 21:15:30', 1),
(17, 'rahulbgs147@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-17 14:17:53', '2019-08-17 21:17:53', 1),
(18, 'km851116@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-17 14:23:05', '2019-08-17 21:23:05', 1),
(19, 'nishu952525@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-18 17:13:12', '2019-08-19 00:13:12', 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `class_id`, `subject_id`, `chapter_id`, `month_id`, `session`, `video_title`, `video_name`, `video_description`, `video_url`, `modified`, `status`) VALUES
(1, 4, 2, 1, 1, '19-20', 'à¤¬à¤¹à¤¾à¤¦à¥à¤° ', 'video_20190815144353_0.mp4', 'à¤¬à¤¹à¤¾à¤¦à¥à¤°', '../video/video_20190815144353_0.mp4', '0000-00-00 00:00:00', 1),
(2, 4, 2, 2, 1, '19-20', 'à¤œà¥€à¤¤ à¤œà¥€à¤¤ à¤®à¥ˆ à¤¨à¤¿à¤°à¥à¤–à¤¤ à¤¹à¥‚à¤‚', 'video_20190815160331_0.mp4', 'à¤œà¥€à¤¤ à¤œà¥€à¤¤ à¤®à¥ˆ à¤¨à¤¿à¤°à¤–à¤¤ à¤¹à¥‚à¤‚', '../video/video_20190815160331_0.mp4', '0000-00-00 00:00:00', 1),
(3, 4, 2, 3, 1, '19-20', 'à¤®à¤›à¤²à¥€', 'video_20190815162310_0.mp4', 'à¤®à¤›à¤²à¥€', '../video/video_20190815162310_0.mp4', '0000-00-00 00:00:00', 1),
(4, 4, 2, 4, 1, '19-20', 'à¤¶à¤¿à¤•à¥à¤·à¤¾ à¤”à¤° à¤¸à¤‚à¤¸à¥à¤•à¥ƒà¤¤à¤¿', 'video_20190815213335_0.mp4', 'à¤¶à¤¿à¤•à¥à¤·à¤¾ à¤”à¤° à¤¸à¤‚à¤¸à¥à¤•à¥ƒà¤¤à¤¿', '../video/video_20190815213335_0.mp4', '0000-00-00 00:00:00', 1),
(5, 4, 2, 5, 1, '19-20', 'à¤¶à¥à¤°à¤® à¤µà¤¿à¤­à¤¾à¤œà¤¨ à¤”à¤° à¤œà¤¾à¤¤à¤¿ à¤ªà¥à¤°à¤¥à¤¾ ', 'video_20190815213605_0.mp4', 'à¤¶à¥à¤°à¤® à¤µà¤¿à¤­à¤¾à¤œà¤¨ à¤”à¤° à¤œà¤¾à¤¤à¤¿ à¤ªà¥à¤°à¤¥à¤¾', '../video/video_20190815213605_0.mp4', '0000-00-00 00:00:00', 1),
(6, 4, 2, 7, 1, '19-20', 'à¤¦à¤¹à¥€ à¤µà¤¾à¤²à¥€ à¤®à¤‚à¤—à¤®à¥à¤®à¤¾ ', 'video_20190816075934_0.mp4', 'à¤¦à¤¹à¥€ à¤µà¤¾à¤²à¥€ à¤®à¤‚à¤—à¤®à¥à¤®à¤¾ ', '../video/video_20190816075934_0.mp4', '0000-00-00 00:00:00', 1),
(7, 4, 2, 8, 1, '19-20', 'à¤¢à¤¹à¤¤à¥‡ à¤µà¤¿à¤¶à¤µà¤¾à¤¸', 'video_20190816080315_0.mp4', 'à¤¢à¤¹à¤¤à¥‡ à¤µà¤¿à¤¶à¤µà¤¾à¤¸', '../video/video_20190816080315_0.mp4', '0000-00-00 00:00:00', 1),
(8, 4, 2, 9, 1, '19-20', 'à¤®à¤¾à¤', 'video_20190816081733_0.mp4', 'à¤®à¤¾à¤', '../video/video_20190816081733_0.mp4', '0000-00-00 00:00:00', 1),
(9, 4, 2, 10, 1, '19-20', 'à¤¨à¤—à¤°', 'video_20190816082523_0.mp4', 'à¤¨à¤—à¤°', '../video/video_20190816082523_0.mp4', '0000-00-00 00:00:00', 1),
(10, 4, 2, 11, 1, '19-20', 'à¤§à¤°à¤¤à¥€ à¤•à¤¬ à¤¤à¤• à¤˜à¥‚à¤®à¥‡à¤—à¥€', 'video_20190816083119_0.mp4', 'à¤§à¤°à¤¤à¥€ à¤•à¤¬ à¤¤à¤• à¤˜à¥‚à¤®à¥‡à¤—à¤¾', '../video/video_20190816083119_0.mp4', '0000-00-00 00:00:00', 1),
(11, 4, 2, 6, 1, '19-20', 'à¤¨à¤¾à¤–à¥‚à¤¨ à¤•à¥à¤¯à¥‹à¤‚ à¤¬à¥à¤¤à¥‡ à¤¹à¥ˆà¤‚ ', 'video_20190817170608_0.mp4', 'à¤¨à¤¾à¤–à¥‚à¤¨ à¤•à¥à¤¯à¥‹à¤‚ à¤¬à¥à¤¤à¥‡ à¤¹à¥ˆà¤‚', '../video/video_20190817170608_0.mp4', '0000-00-00 00:00:00', 1);

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
-- Indexes for table `exam_question_setup`
--
ALTER TABLE `exam_question_setup`
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
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `chapter`
--
ALTER TABLE `chapter`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `course_details`
--
ALTER TABLE `course_details`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `exam_question_setup`
--
ALTER TABLE `exam_question_setup`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `exam_setup`
--
ALTER TABLE `exam_setup`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `exam_title_master`
--
ALTER TABLE `exam_title_master`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `thumb`
--
ALTER TABLE `thumb`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
