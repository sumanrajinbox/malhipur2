-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 26, 2019 at 05:14 AM
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
(2, 2, '', '', '10e37419553eb4cbab4f4f5ff556fccd', '2019-08-21 22:52:05', 0),
(34, 1, '', '', '1c524c4f86209c1af98416b51fe90414', '2019-08-24 15:18:52', 0),
(4, 4, '', '', 'a57b0fba211ab0c2f1bdf5ecc4987967', '2019-08-13 08:53:03', 1),
(36, 1, '', '', '1c524c4f86209c1af98416b51fe90414', '2019-08-24 15:18:52', 0),
(37, 19, '', '', '710babc4d9e32f698e5ed5ba2fcb78ce', '2019-08-21 07:11:16', 0),
(7, 6, '', '', '235ab01262c1e04298a66ae803163cab', '2019-08-14 16:55:15', 1),
(8, 7, '', '', '3fb4c2456c4df7d931856125cd7cd6ad', '2019-08-14 16:58:00', 1),
(38, 5, '', '', '358d8f71a096a0920a0a544152536d5f', '2019-08-19 09:13:02', 0),
(39, 5, '', '', '679e26acc822b0dd5458ef97248c0cf8', '2019-08-19 09:13:27', 1),
(12, 9, '', '', 'a60a4f16dadccda6bc615f533ab69894', '2019-08-14 18:33:04', 0),
(13, 2, 'sdf3456345', 'asdf8768dfmb', '1bf439f976a371198d4ce3cd7d0409f6', '2019-08-21 07:58:05', 1),
(14, 10, '', '', 'cb1835b00687161546911e66b9a16b1c', '2019-08-15 10:51:49', 1),
(15, 11, '', '', '6bc8706cd91ab889c6813890197abcd7', '2019-08-15 19:46:31', 1),
(16, 12, '', '', 'd16f94b86cac5fea48053b52e41b569c', '2019-08-16 08:36:53', 1),
(17, 13, '', '', '92ec002945cf629501f0812080dffef0', '2019-08-17 19:38:56', 0),
(18, 14, '', '', 'fe9a9da65f7f64480a77b8cbd43e118a', '2019-08-16 16:57:17', 1),
(19, 15, '', '', '27bb40f733f29e1552a2e895f931919c', '2019-08-16 20:07:32', 1),
(21, 16, '', '', '4911eb15b09c8471965f52aab8f75deb', '2019-08-17 14:15:30', 1),
(33, 19, '', '', '710babc4d9e32f698e5ed5ba2fcb78ce', '2019-08-21 07:11:16', 0),
(23, 18, '', '', '74b3dc77f9657cbea5e49f4d428f8b70', '2019-08-17 14:23:25', 1),
(24, 8, '', '', '615f967d55f7aebf1f9410d5b2efb48d', '2019-08-17 18:00:59', 1),
(44, 3, '', '', '33fb0450d4edc3bab32a58e3873aaccd', '2019-08-20 20:49:31', 0),
(43, 3, 'sdf3456345', 'asdf8768dfmb', 'f30444e96ff1f347aa79a4590c55f630', '2019-08-20 21:49:31', 1),
(42, 1, '', '', '1c524c4f86209c1af98416b51fe90414', '2019-08-24 15:18:52', 0),
(41, 20, '', '', '4de23f227aca96ac43842a2ed55093ff', '2019-08-20 08:41:52', 1),
(40, 1, 'sdf3456345', 'asdf8768dfmb', '6c1132bceee01dbc411e7882b06cfd93', '2019-08-19 17:43:37', 1),
(35, 1, '', '', '1c524c4f86209c1af98416b51fe90414', '2019-08-24 15:18:52', 0),
(32, 17, '', '', '027ef04e4d69cfbc4377d35b6ff9187f', '2019-08-21 22:50:40', 0),
(45, 3, '', '', '1c26e22adca0620f35c70f01a3d140ef', '2019-08-20 21:37:50', 0),
(46, 21, '', '', '1dcd298e639313176993466353a5d2ce', '2019-08-23 22:42:04', 0),
(47, 21, '', '', '1dcd298e639313176993466353a5d2ce', '2019-08-23 22:42:04', 0),
(48, 21, '', '', '1dcd298e639313176993466353a5d2ce', '2019-08-23 22:42:04', 0),
(49, 3, '', '', '3afb14867ac70cdcbe4b09915d5f8348', '2019-08-21 00:43:06', 0),
(50, 1, '', '', '1c524c4f86209c1af98416b51fe90414', '2019-08-24 15:18:52', 0),
(51, 17, '', '', '027ef04e4d69cfbc4377d35b6ff9187f', '2019-08-21 22:50:40', 0),
(52, 19, '', '', '246a52b2ed4b1125e3f4f78218b62027', '2019-08-21 09:06:51', 0),
(53, 22, '', '', '42a07411c26e75b7ee2a45118da39330', '2019-08-21 10:35:01', 0),
(54, 1, '', '', '1c524c4f86209c1af98416b51fe90414', '2019-08-24 15:18:52', 0),
(55, 22, '', '', '42a07411c26e75b7ee2a45118da39330', '2019-08-21 10:35:01', 0),
(56, 3, '', '', 'f92436abdc2f1b440381e6e131f5fee0', '2019-08-21 10:21:03', 1),
(57, 1, '', '', '1c524c4f86209c1af98416b51fe90414', '2019-08-24 15:18:52', 0),
(58, 2, '', '', '10e37419553eb4cbab4f4f5ff556fccd', '2019-08-21 22:52:05', 0),
(59, 17, '', '', '027ef04e4d69cfbc4377d35b6ff9187f', '2019-08-21 22:50:40', 0),
(60, 17, '', '', '027ef04e4d69cfbc4377d35b6ff9187f', '2019-08-21 22:50:40', 0),
(61, 23, '', '', '49dd3a6d19b84e89b53060a48589291b', '2019-08-21 19:06:10', 1),
(62, 1, '', '', '1c524c4f86209c1af98416b51fe90414', '2019-08-24 15:18:52', 0),
(63, 22, '', '', 'e2c3cfe61afff954cab084581f4e22ca', '2019-08-21 19:24:07', 0),
(64, 1, '', '', '1c524c4f86209c1af98416b51fe90414', '2019-08-24 15:18:52', 0),
(65, 2, '', '', '34f2c3ecc9a0513621084f0897d37d41', '2019-08-21 23:42:44', 1),
(66, 22, '', '', '1d391661c992f199f2d902c579f4f49d', '2019-08-22 07:52:08', 0),
(67, 1, '', '', '1c524c4f86209c1af98416b51fe90414', '2019-08-24 15:18:52', 0),
(68, 21, '', '', '1dcd298e639313176993466353a5d2ce', '2019-08-23 22:42:04', 0),
(69, 21, '', '', '1dcd298e639313176993466353a5d2ce', '2019-08-23 22:42:04', 0),
(70, 24, '', '', '80a8bbce350e1efd195eac9d378090b9', '2019-08-22 14:20:37', 1),
(71, 1, '', '', '1c524c4f86209c1af98416b51fe90414', '2019-08-24 15:18:52', 0),
(72, 25, '', '', '7ec78760d4329b33385b4f69134d48a2', '2019-08-22 15:14:22', 1),
(73, 26, '', '', '6d7fdf3b16dcc1a051cf6b462ff5a0bc', '2019-08-22 20:21:49', 0),
(74, 1, '', '', '1c524c4f86209c1af98416b51fe90414', '2019-08-24 15:18:52', 0),
(75, 1, '', '', '1c524c4f86209c1af98416b51fe90414', '2019-08-24 15:18:52', 0),
(76, 21, '', '', '1dcd298e639313176993466353a5d2ce', '2019-08-23 22:42:04', 1),
(77, 1, '', '', '20488ed25efa3c47bebb242cced5741b', '2019-08-24 20:31:32', 1);

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
(1, 1, 4, 1, 1, 1, '2019-08-12 21:45:35', 1),
(2, 2, 4, 1, 1, 1, '2019-08-12 22:31:20', 1),
(3, 3, 4, 1, 1, 1, '2019-08-12 22:35:53', 1),
(4, 4, 4, 1, 1, 1, '2019-08-13 08:51:38', 1),
(5, 5, 4, 1, 1, 1, '2019-08-13 10:18:09', 1),
(6, 6, 4, 1, 1, 1, '2019-08-14 16:53:34', 1),
(26, 26, 4, 1, 1, 1, '2019-08-22 20:16:21', 1),
(25, 25, 4, 1, 1, 1, '2019-08-22 15:14:22', 1),
(24, 24, 4, 1, 1, 1, '2019-08-22 14:20:08', 1),
(23, 23, 4, 1, 1, 1, '2019-08-21 19:06:10', 1),
(22, 22, 4, 1, 1, 1, '2019-08-21 09:09:20', 1),
(21, 21, 4, 1, 1, 1, '2019-08-20 21:55:49', 1);

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
  `question` varchar(10000) COLLATE utf8_unicode_ci NOT NULL,
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
(1, 1, 4, 0, 0, 'à¤—à¥‹à¤²à¥€à¤¯ à¤¦à¤°à¥à¤ªà¤£  à¤•à¥‡ à¤®à¤§à¥à¤¯à¤¬à¤¿à¤‚à¤¦à¥ à¤•à¥‹ à¤•à¤¹à¤¤à¥‡ à¤¹à¥ˆà¤‚ |', 'à¤«à¥‹à¤•à¤¸ ', 'à¤ªà¥à¤°à¤¤à¤¿à¤¬à¤¿à¤®à¥à¤¬ ', 'à¤§à¥à¤°à¥à¤¬ ', 'à¤…à¤•à¥à¤·à¤¾à¤‚à¤¶ ', 1, '3', '2019-08-24 15:12:30'),
(2, 1, 4, 0, 0, 'à¤…à¤µà¤¤à¤² à¤¦à¤°à¥à¤ªà¤£ à¤•à¥€ à¤«à¥‹à¤•à¤¸ - à¤¦à¥‚à¤°à¥€ à¤‰à¤¸à¤•à¥€ à¤µà¤•à¥à¤°à¤¤à¤¾ à¤¤à¥à¤°à¤¿à¤œà¥à¤¯à¤¾ à¤•à¥€ à¤¹à¥‹à¤¤à¥€ à¤¹à¥ˆ |', 'à¤†à¤§à¥€ ', 'à¤¦à¥‹à¤—à¥à¤¨à¥€ ', 'à¤¬à¤°à¤¾à¤¬à¤° ', 'à¤šà¥Œà¤¥à¤¾à¤ˆ ', 1, '1', '2019-08-24 15:13:20'),
(3, 1, 4, 0, 0, 'à¤®à¥‹à¤Ÿà¤°à¤—à¤¾à¥œà¥€ à¤•à¥‡ à¤šà¤¾à¤²à¤• à¤•à¥‡ à¤¸à¤¾à¤®à¤¨à¥‡ à¤²à¤—à¤¾ à¤°à¤¹à¤¤à¤¾ à¤¹à¥ˆ ', 'à¤…à¤µà¤¤à¤² à¤¦à¤°à¥à¤ªà¤£ ', 'à¤‰à¤¤à¥à¤¤à¤² à¤¦à¤°à¥à¤ªà¤£ ', 'à¤¸à¤®à¤¤à¤² à¤¦à¤°à¥à¤ªà¤£ ', 'à¤†à¤­à¤¾à¤¸à¥€ à¤¦à¤°à¥à¤ªà¤£ ', 1, '2', '2019-08-24 15:14:14'),
(4, 1, 4, 0, 0, 'à¤‰à¤¤à¥à¤¤à¤² à¤¦à¤°à¥à¤ªà¤£ à¤¦à¥à¤µà¤¾à¤°à¤¾ à¤¬à¤¨à¤¾ à¤ªà¥à¤°à¤¤à¤¿à¤¬à¤¿à¤®à¥à¤¬ à¤¹à¥‹à¤¤à¤¾ à¤¹à¥ˆ ', 'à¤¹à¤®à¥‡à¤¶à¤¾ à¤¸à¥€à¤§à¤¾ ', 'à¤‰à¤²à¥à¤Ÿà¤¾ à¤­à¥€ à¤¸à¥€à¤§à¤¾ à¤­à¥€ ', 'à¤¹à¤®à¥‡à¤¶à¤¾ à¤‰à¤²à¥à¤Ÿà¤¾ ', 'à¤‡à¤¨à¤®à¥‡  à¤¸à¥‡ à¤•à¥‹à¤ˆ à¤¨à¤¹à¥€à¤‚ ', 1, '1', '2019-08-24 15:15:16'),
(5, 1, 4, 0, 0, 'à¤•à¤¿à¤¸à¥€ à¤µà¤¸à¥à¤¤à¥ à¤•à¤¾ à¤µà¤¾à¤¸à¥à¤¤à¤µà¤¿à¤• à¤ªà¥à¤°à¤¤à¤¿à¤¬à¤¿à¤®à¥à¤¬ à¤®à¥€à¤²  à¤¸à¤•à¤¤à¤¾ à¤¹à¥ˆ ', 'à¤‰à¤¤à¥à¤¤à¤² à¤¦à¤°à¥à¤ªà¤£ à¤¦à¥à¤µà¤¾à¤°à¤¾ ', 'à¤…à¤µà¤¤à¤² à¤¦à¤°à¥à¤ªà¤£ à¤¦à¥à¤µà¤¾à¤°à¤¾ ', 'à¤¸à¤®à¤¤à¤² à¤¦à¤°à¥à¤ªà¤£ à¤¦à¥à¤µà¤¾à¤°à¤¾ ', 'à¤‡à¤¨à¤®à¥‡ à¤¸à¥‡ à¤•à¥‹à¤ˆ à¤¨à¤¹à¥€ ', 1, '2', '2019-08-24 15:16:39'),
(6, 1, 4, 0, 0, 'à¤•à¤¿à¤¸à¥€ à¤µà¤¸à¥à¤¤à¥ à¤•à¤¾ à¤†à¤­à¤¾à¤¸à¥€ à¤ªà¥à¤°à¤¤à¤¿à¤¬à¤¿à¤®à¥à¤¬ à¤ªà¥à¤°à¤¾à¤ªà¥à¤¤ à¤•à¤¿à¤¯à¤¾ à¤œà¤¾ à¤¸à¤•à¤¤à¤¾ à¤¹à¥ˆ ', 'à¤•à¥‡à¤µà¤² à¤‰à¤¤à¥à¤¤à¤² à¤¦à¤°à¥à¤ªà¤£ à¤¦à¥à¤µà¤¾à¤°à¤¾ ', 'à¤•à¥‡à¤µà¤² à¤…à¤µà¤¤à¤² à¤¦à¤°à¥à¤ªà¤£ à¤¦à¥à¤µà¤¾à¤°à¤¾ ', 'à¤•à¥‡à¤µà¤² à¤¸à¤®à¤¤à¤² à¤¦à¤°à¥à¤ªà¤£ à¤¦à¥à¤µà¤¾à¤°à¤¾ ', 'à¤‡à¤¨ à¤¤à¥€à¤¨à¥‹ à¤ªà¥à¤°à¤•à¤¾à¤° à¤•à¥‡ à¤¦à¤°à¥à¤ªà¤£à¥‹à¤‚ à¤¦à¥à¤µà¤¾à¤°à¤¾ ', 1, '4', '2019-08-24 15:18:15'),
(7, 1, 4, 0, 0, 'à¤¯à¤¦à¤¿ à¤•à¤¿à¤¸à¥€ à¤¦à¤°à¥à¤ªà¤£ à¤¦à¥à¤µà¤¾à¤°à¤¾ à¤¬à¤¨à¥‡ à¤ªà¥à¤°à¤¤à¤¿à¤¬à¤¿à¤®à¥à¤¬ à¤•à¤¾ à¤†à¤•à¤¾à¤° à¤¹,à¤®à¥‡à¤· à¤µà¤¸à¥à¤¤à¥ à¤•à¥‡ à¤†à¤•à¤¾à¤° à¤•à¥‡ à¤¬à¤°à¤¾à¤¬à¤° à¤¹à¥‹ à¤¤à¥‹ à¤¦à¤°à¥à¤ªà¤£ à¤¹à¥‹à¤—à¤¾ ', 'à¤¸à¤®à¤¤à¤² ', 'à¤…à¤µà¤¤à¤² ', 'à¤‰à¤¤à¥à¤¤à¤² ', 'à¤‰à¤¤à¥à¤¤à¤² à¤¯à¤¾ à¤…à¤µà¤¤à¤² ', 1, '1', '2019-08-24 15:20:34'),
(8, 1, 4, 0, 0, 'à¤à¤• à¤—à¥‹à¤²à¥€à¤¯ à¤¦à¤°à¥à¤ªà¤£ à¤•à¥€ à¤«à¥‹à¤•à¤¸ à¤¦à¥‚à¤°à¥€ 12.5 à¤¸à¥‡à¤®à¥€ à¤¹à¥ˆ à¤‡à¤¸à¤•à¥€ à¤µà¤•à¥à¤°à¤¤à¤¾ à¤¤à¥à¤°à¤¿à¤œà¥à¤¯à¤¾ à¤¹à¥‹à¤—à¥€ ', '2.5 cm', '6.25 cm ', '12 cm', '25.0 cm', 1, '4', '2019-08-24 15:21:41'),
(9, 1, 4, 0, 0, 'à¤‰à¤¤à¥à¤¤à¤² à¤¦à¤°à¥à¤ªà¤£ à¤¦à¥à¤µà¤°à¤¾ à¤¬à¤¨à¤¾ à¤ªà¥à¤°à¤¤à¤¿à¤¬à¤¿à¤®à¥à¤¬ à¤¹à¥‹à¤¤à¤¾ à¤¹à¥ˆ ', 'à¤†à¤­à¤¾à¤¸à¥€ à¤¤à¤¥à¤¾ à¤‰à¤²à¥à¤Ÿà¤¾ ', 'à¤†à¤­à¤¾à¤¸à¥€ à¤¤à¤¥à¤¾ à¤¸à¥€à¤§à¤¾ ', 'à¤µà¤¾à¤¸à¥à¤¤à¤µà¤¿à¤• à¤¤à¤¥à¤¾ à¤‰à¤²à¥à¤Ÿà¤¾ ', 'à¤µà¤¾à¤¸à¥à¤¤à¤µà¤¿à¤• à¤¤à¤¥à¤¾ à¤¸à¥€à¤§à¤¾ ', 1, '4', '2019-08-24 15:23:10'),
(10, 1, 4, 0, 0, 'à¤à¤• à¤—à¥‹à¤²à¥€à¤¯ à¤¦à¤°à¥à¤ªà¤£ à¤•à¥€ à¤µà¤•à¥à¤°à¤¤à¤¾ à¤¤à¥à¤°à¤¿à¤œà¥à¤¯à¤¾ 32 à¤¸à¥‡à¤®à¥€ à¤¹à¥ˆ à¤‡à¤¸à¤•à¥€ à¤«à¥‹à¤•à¤¸ à¤¦à¥‚à¤°à¥€ à¤¹à¥‹à¤—à¥€ ', '6 cm ', '16 cm', '26 cm', '13 cm', 1, '2', '2019-08-24 15:24:15'),
(11, 1, 4, 0, 0, 'à¤•à¤¿à¤¸à¥€ à¤µà¤¾à¤¸à¥à¤¤à¥ à¤¸à¥‡ à¤›à¥‹à¤Ÿà¤¾ à¤”à¤° à¤†à¤­à¤¾à¤¸à¥€ à¤ªà¥à¤°à¤¤à¤¿à¤¬à¤¿à¤®à¥à¤¬ à¤ªà¥à¤°à¤¾à¤ªà¥à¤¤ à¤¹à¥‹à¤¤à¤¾ à¤¹à¥ˆ ', 'à¤‰à¤¤à¥à¤¤à¤² à¤¦à¤°à¥à¤ªà¤£ à¤¸à¥‡ ', 'à¤¸à¤®à¤¤à¤² à¤¦à¤°à¥à¤ªà¤£ à¤¸à¥‡ ', 'à¤…à¤µà¤¤à¤² à¤¦à¤°à¥à¤ªà¤£ à¤¸à¥‡ ', 'à¤‡à¤¨ à¤¤à¥€à¤¨à¥‹ à¤ªà¥à¤°à¤•à¤¾à¤° à¤•à¥‡ à¤¦à¤°à¥à¤ªà¤£ à¤¸à¥‡ ', 1, '1', '2019-08-24 15:25:22'),
(12, 1, 4, 0, 0, 'à¤ªà¤°à¤¾à¤µà¤°à¥à¤¤à¤¨ à¤•à¤¾ à¤•à¥‹à¤£ à¤¹à¥‹à¤¤à¤¾ à¤¹à¥ˆ à¤œà¥‹ â€“', 'à¤†à¤ªà¤¤à¤¿à¤¤ à¤•à¤¿à¤°à¤£ à¤¦à¤°à¥à¤ªà¤£ à¤•à¥€ à¤¸à¤¤à¤¹ à¤¸à¥‡ à¤¬à¤¨à¤¾à¤¤à¥€ à¤¹à¥ˆ ', 'à¤ªà¤°à¤¾à¤µà¤°à¥à¤¤à¤¿à¤¤ à¤•à¤¿à¤°à¤£ à¤¦à¤°à¥à¤ªà¤£ à¤•à¥€ à¤¸à¤¤à¤¹ à¤¸à¥‡ à¤¬à¤¨à¤¾à¤¤à¥€ à¤¹à¥ˆ ', 'à¤†à¤ªà¤¤à¤¿à¤¤ à¤•à¤¿à¤°à¤£ à¤¤à¤¥à¤¾ à¤¦à¤°à¥à¤ªà¤£ à¤•à¥€ à¤¸à¤¤à¤¹ à¤•à¥‡ à¤¬à¥€à¤š à¤•à¤¾ à¤•à¥‹à¤£ ', 'à¤ªà¤°à¤¾à¤µà¤°à¥à¤¤à¤¿à¤¤ à¤•à¤¿à¤°à¤£ à¤¦à¤°à¥à¤ªà¤£ à¤•à¥€ à¤¸à¤¤à¤¹ à¤ªà¤° à¤†à¤ªà¤¤à¤¨ à¤¬à¤¿à¤‚à¤¦à¥ à¤¸à¥‡ à¤–à¥€à¤‚à¤šà¥‡ à¤—à¤¯à¥‡ à¤…à¤­à¤¿à¤²à¤®à¥à¤¬ à¤¸à¥‡ à¤¬à¤¨à¤¤à¥€ à¤¹à¥ˆ ', 1, '4', '2019-08-24 15:27:44'),
(13, 1, 4, 0, 0, 'à¤¦à¤¾à¥à¥€ à¤¯ à¤¹à¤œà¤¾à¤®à¤¤ à¤¬à¤¨à¤¾à¤¨à¥‡ à¤•à¥‡ à¤²à¤¿à¤ à¤‰à¤ªà¤¯à¥à¤•à¥à¤¤ à¤¦à¤°à¥à¤ªà¤£ à¤¹à¥‹à¤¤à¤¾ à¤¹à¥ˆ ', 'à¤‰à¤¤à¥à¤¤à¤² ', 'à¤†à¤­à¤¾à¤¸à¥€ ', 'à¤…à¤µà¤¤à¤² ', 'à¤‡à¤¨à¤®à¥‡ à¤¸à¥‡ à¤•à¥‹à¤ˆ à¤¨à¤¹à¥€ ', 1, '3', '2019-08-24 15:28:29'),
(14, 1, 4, 0, 0, 'à¤†à¤µà¤°à¥à¤§à¤¨ (m ) = ', 'm/u', 'Âµ/u', 'v/u', 'x/y', 1, '3', '2019-08-24 15:30:14'),
(15, 1, 4, 0, 0, 'à¤—à¥‹à¤²à¥€à¤¯ à¤¦à¤°à¤ªà¤¨ à¤•à¥€ à¤«à¥‹à¤•à¤¸ à¤¦à¥‚à¤°à¥€ à¤‰à¤¸à¤•à¥€ à¤µà¤•à¥à¤°à¤¤à¤¾ à¤¤à¥à¤°à¤¿à¤œà¥à¤¯à¤¾ à¤•à¥€ â€“', 'à¤šà¥Œà¤¥à¤¾à¤ˆ à¤¹à¥‹à¤¤à¥€ à¤¹à¥ˆ ', 'à¤†à¤§à¥€ à¤¹à¥‹à¤¤à¥€ à¤¹à¥ˆ ', 'à¤¦à¥‹à¤—à¥à¤¨à¥€ à¤¹à¥‹à¤¤à¥€ à¤¹à¥ˆ ', 'à¤‡à¤¨à¤®à¥‡ à¤¸à¥‡ à¤•à¥‹à¤ˆ à¤¨à¤¹à¥€à¤‚ ', 1, '2', '2019-08-24 15:32:00'),
(16, 1, 4, 0, 0, 'à¤à¤• à¤…à¤µà¤¤à¤² à¤¦à¤°à¥à¤ªà¤£ à¤•à¥€ à¤«à¥‹à¤•à¤¸ à¤¦à¥‚à¤°à¥€ 10 à¤¸à¥‡à¤®à¥€ à¤¹à¥ˆ à¤¤à¥‹ à¤‰à¤¸à¤•à¥€ à¤µà¤•à¥à¤°à¤¤à¤¾ à¤¤à¥à¤°à¤¿à¤œà¥à¤¯à¤¾ à¤¹à¥‹à¤—à¥€ â€“', 'à¥¨à¥¦ cm', '10 cm', '5 cm', '15 cm', 1, '1', '2019-08-24 15:32:54'),
(17, 1, 4, 0, 0, '1678 à¤ˆ à¤®à¥‡à¤‚ à¤¤à¤°à¤‚à¤— à¤¸à¤¿à¤¦à¥à¤§à¤¾à¤‚à¤¤ à¤•à¤¾ à¤ªà¥à¤°à¤¤à¤¿à¤ªà¤¾à¤¦à¤¨ à¤•à¤¿à¤¯à¤¾ ', 'à¤®à¥ˆà¤•à¥à¤¸ à¤ªà¥à¤²à¤¾à¤‚à¤• à¤¨à¥‡ ', 'à¤¹à¤¾à¤ˆà¤—à¥‡à¤¨  à¤¨à¥‡ ', 'à¤¹à¤°à¥à¤Ÿà¥à¥› à¤¨à¥‡ ', 'à¤®à¥ˆà¤•à¥à¤¸ à¤µà¥‡à¤² à¤¨à¥‡ ', 1, '2', '2019-08-24 15:35:53'),
(18, 1, 4, 0, 0, 'à¤ªà¥à¤°à¤•à¤¾à¤¶ à¤•à¥‹ à¤‰à¤°à¥à¤œà¤¾à¤¯à¥à¤•à¥à¤¤ à¤•à¤£ à¤¸à¤°à¥à¤µà¤ªà¥à¤°à¤¥à¤® à¤•à¤¹à¤¾ ', 'à¤†à¤‡à¤¨à¥à¤¸à¥à¤Ÿà¥€à¤¨ à¤¨à¥‡ ', 'à¤¨à¥à¤¯à¥‚à¤Ÿà¤¨ à¤¨à¥‡ ', 'à¤®à¥ˆà¤•à¥à¤¸ à¤ªà¥à¤²à¤¾à¤‚à¤• à¤¨à¥‡ ', 'à¤¹à¤¾à¤ˆà¤—à¥‡à¤¨ ', 1, '3', '2019-08-24 15:37:57'),
(19, 1, 4, 0, 0, 'à¤†à¤ªà¤¤à¤¨ à¤•à¥‹à¤£ i à¤¤à¤¥à¤¾ à¤ªà¤°à¤¾à¤µà¤°à¥à¤¤à¤¨ à¤•à¥‹à¤£ r à¤¹à¥‹ à¤¤à¥‹ ', 'i=r', 'i=r^2', 'i > r', 'i < r', 1, '1', '2019-08-24 15:40:39'),
(20, 1, 4, 0, 0, 'à¤µà¤¸à¥à¤¤à¥ à¤•à¤¾ à¤¬à¥œà¤¾ à¤†à¤­à¤¾à¤¸à¥€ à¤ªà¥à¤°à¤¤à¤¿à¤¬à¤¿à¤®à¥à¤¬ à¤•à¤¿à¤¸ à¤¦à¤°à¥à¤ªà¤£ à¤¸à¥‡ à¤ªà¥à¤°à¤¾à¤ªà¥à¤¤ à¤¹à¥‹à¤¤à¤¾ à¤¹à¥ˆ ', 'à¤‰à¤¤à¥à¤¤à¤² à¤¦à¤°à¥à¤ªà¤£ à¤¸à¥‡ ', 'à¤¸à¤®à¤¤à¤² à¤¦à¤°à¥à¤ªà¤£ à¤¸à¥‡ ', 'à¤…à¤µà¤¤à¤² à¤¦à¤°à¥à¤ªà¤£ à¤¸à¥‡ ', 'à¤‡à¤¨à¤®à¥‡ à¤¸à¥‡ à¤•à¥‹à¤ˆ à¤¨à¤¹à¥€ ', 1, '3', '2019-08-24 15:42:07'),
(21, 1, 4, 0, 0, 'à¤µà¤¾à¤¸à¥à¤¤à¤µà¤¿à¤• à¤µà¤¸à¥à¤¤à¥ à¤•à¤¾ à¤†à¤­à¤¾à¤¸à¥€ à¤ªà¥à¤°à¤¤à¤¿à¤¬à¤¿à¤®à¥à¤¬ à¤¬à¤¨à¤¾à¤¤à¤¾ à¤¹à¥ˆ ', 'à¤…à¤µà¤¤à¤² à¤¦à¤°à¥à¤ªà¤£ à¤¸à¥‡ ', 'à¤¸à¤®à¤¤à¤² à¤¦à¤°à¥à¤ªà¤£ à¤¸à¥‡ ', 'à¤‰à¤¤à¥à¤¤à¤² à¤¦à¤°à¥à¤ªà¤£ à¤¸à¥‡ ', 'à¤‡à¤¨à¤®à¥‡ à¤¸à¥‡ à¤•à¥‹à¤ˆ à¤¨à¤¹à¥€ ', 1, '3', '2019-08-24 15:43:05'),
(22, 1, 4, 0, 0, 'à¤‰à¤¤à¥à¤¤à¤² à¤¦à¤°à¥à¤ªà¤£ à¤¦à¥à¤µà¤¾à¤°à¤¾ à¤¬à¤¨à¤¾ à¤ªà¥à¤°à¤¤à¤¿à¤¬à¤¿à¤®à¥à¤¬ à¤¹à¥‹à¤¤à¤¾ à¤¹à¥ˆ ', 'à¤•à¤¾à¤²à¥à¤ªà¤¨à¤¿à¤• à¤”à¤° à¤¸à¥€à¤§à¤¾ ', 'à¤µà¤¾à¤¸à¥à¤¤à¤µà¤¿à¤• à¤”à¤° à¤¸à¥€à¤§à¤¾ ', 'à¤•à¤¾à¤²à¥à¤ªà¤¨à¤¿à¤• à¤”à¤° à¤‰à¤²à¥à¤Ÿà¤¾ ', 'à¤µà¤¾à¤¸à¥à¤¤à¤µà¤¿à¤• à¤”à¤° à¤‰à¤²à¥à¤Ÿà¤¾ ', 1, '1', '2019-08-24 15:44:17'),
(23, 1, 4, 0, 0, ' à¤•à¤¿à¤¸à¥€ à¤…à¤µà¤¤à¤² à¤¦à¤°à¥à¤ªà¤£ à¤¦à¥à¤µà¤¾à¤°à¤¾ à¤†à¤­à¤¾à¤¸à¥€ ,à¤¸à¥€à¤§à¤¾ à¤¤à¤¥à¤¾ à¤†à¤µà¤°à¥à¤§à¤¿à¤¤ à¤ªà¥à¤°à¤¤à¤¿à¤¬à¤¿à¤®à¥à¤¬ à¤¤à¤¬ à¤¬à¤¨à¤¤à¤¾ à¤¹à¥ˆ à¤œà¤¬ à¤µà¤¸à¥à¤¤à¥ à¤•à¥€  à¤¸à¥à¤¥à¤¿à¤¤à¤¿ à¤¹à¥‹à¤¤à¥€ à¤¹à¥ˆ ', 'à¤µà¤•à¥à¤°à¤¤à¤¾- à¤•à¥‡à¤‚à¤¦à¥à¤° à¤¤à¤¥à¤¾ à¤«à¥‹à¤•à¤¸ à¤•à¥‡ à¤¬à¤¿à¤š ', 'à¤µà¤•à¥à¤°à¤¤à¤¾-à¤•à¥‡à¤‚à¤¦à¥à¤° à¤ªà¤° ', 'à¤¦à¤°à¥à¤ªà¤£ à¤•à¥‡ à¤§à¥à¤°à¥à¤¬ à¤¤à¤¥à¤¾ à¤«à¥‹à¤•à¤¸ à¤•à¥‡ à¤¬à¥€à¤š ', 'à¤µà¤•à¥à¤°à¤¤à¤¾-à¤¤à¥à¤°à¤¿à¤œà¥à¤¯à¤¾ à¤ªà¤° ', 1, '3', '2019-08-24 15:46:26');

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
(1, 1, '2019-08-24 15:30:00', '2019-08-24 16:30:00', '2019-08-24 15:11:11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `exam_title_master`
--

CREATE TABLE `exam_title_master` (
  `id` int(8) NOT NULL,
  `class_id` int(8) NOT NULL,
  `title_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exam_title_master`
--

INSERT INTO `exam_title_master` (`id`, `class_id`, `title_name`, `start_time`, `end_time`, `modified`, `status`) VALUES
(1, 4, 'PHYSICS', '2019-08-25 08:08:00', '2019-08-27 08:08:00', '2019-08-25 03:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `exam_user_log`
--

CREATE TABLE `exam_user_log` (
  `id` int(8) NOT NULL,
  `exam_title` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exam_user_log`
--

INSERT INTO `exam_user_log` (`id`, `exam_title`, `user_id`, `start_time`, `end_time`, `modified`, `status`) VALUES
(1, 1, 3, '2019-08-25 15:25:00', '0000-00-00 00:00:00', '2019-08-25 15:25:00', 1),
(3, 1, 1, '2019-08-25 17:33:43', '0000-00-00 00:00:00', '2019-08-25 17:33:43', 1);

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
(19, 19, 'Nishant', 'Singh', 'nishu952525@gmail.com', '9572354973', 'Jhakhra', NULL, '2019-08-18 17:13:12', '2019-08-18 17:13:12', 1),
(20, 20, 'Nitish', 'Kumar', 'satyaavirat@gmail.com', '9334557391', 'Kasha', NULL, '2019-08-20 08:39:33', '2019-08-20 08:39:33', 1),
(21, 21, 'Dilip', 'Kumar', 'dilip4@gmail.com', '9738149531', 'Btm Bangalore', NULL, '2019-08-20 21:55:49', '2019-08-20 21:55:49', 1),
(22, 22, 'Abhi', 'Singh', 'alokkumar.begusarai@gmail.com', '8581810321', 'Jay Shree Raam', NULL, '2019-08-21 09:09:20', '2019-08-21 09:09:20', 1),
(23, 23, 'Abhinav', 'kumar', 'abhinavkumarsharma548@gmail.com', '6202437231', 'Bishanpur Chand', NULL, '2019-08-21 19:06:10', '2019-08-21 19:06:10', 1),
(24, 24, 'Karishma', 'Kumari', 'kanchankri15feb@gmail.com', '7258066887', 'Malhipur Btps Begusarai', NULL, '2019-08-22 14:20:08', '2019-08-22 14:20:08', 1),
(25, 25, 'Abhinav', 'kumar', 'abhinavkumarsharma548@gmail.com', '6202437231', 'Bishanpur Chand', NULL, '2019-08-22 15:14:22', '2019-08-22 15:14:22', 1),
(26, 26, 'Ravi ', 'Kumar', 'kunalkishor453@gmail.com', '7992343146', 'Chakiya', NULL, '2019-08-22 20:16:21', '2019-08-22 20:16:21', 1);

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
-- Table structure for table `submit_exam`
--

CREATE TABLE `submit_exam` (
  `id` int(11) NOT NULL,
  `title_id` int(11) NOT NULL,
  `user_id` int(8) NOT NULL,
  `question_id` int(8) NOT NULL,
  `answer` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `modified` datetime NOT NULL,
  `status` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(26, 'kunalkishor453@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-22 20:16:21', '2019-08-23 03:16:21', 1),
(21, 'dilip4@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-20 21:55:49', '2019-08-21 04:55:49', 1),
(25, 'abhinavkumarsharma548@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2019-08-22 15:14:22', '2019-08-22 22:14:22', 1),
(24, 'kanchankri15feb@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-22 14:20:08', '2019-08-22 21:20:08', 1);

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
-- Indexes for table `exam_title_master`
--
ALTER TABLE `exam_title_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_user_log`
--
ALTER TABLE `exam_user_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submit_exam`
--
ALTER TABLE `submit_exam`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `exam_title_master`
--
ALTER TABLE `exam_title_master`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `exam_user_log`
--
ALTER TABLE `exam_user_log`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `submit_exam`
--
ALTER TABLE `submit_exam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
