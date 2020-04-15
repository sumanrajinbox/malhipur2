-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 10, 2020 at 08:55 PM
-- Server version: 5.6.46-cll-lve
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
-- Table structure for table `admin_forgot`
--

CREATE TABLE `admin_forgot` (
  `id` int(8) NOT NULL,
  `user_id` int(8) NOT NULL,
  `otp` varchar(33) COLLATE utf8_unicode_ci NOT NULL,
  `active` int(8) NOT NULL,
  `dated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth`
--

INSERT INTO `auth` (`id`, `user_id`, `fcm`, `device_id`, `auth_key`, `dated`, `active`) VALUES
(1, 1, '', '', 'baf0352a7c4a56cd3d22fa3647e54322', '2020-01-03 09:25:57', 0),
(2, 2, '', '', 'db7f8ee16ccc24180a0537dffc0f3043', '2020-01-03 09:25:50', 0),
(3, 3, '', '', '463091bc93ab31613282f3ec2417ae61', '2020-01-02 18:26:49', 0),
(4, 4, '', '', '7471413fc3c45beea2d22581b85e793a', '2020-01-02 22:07:46', 0),
(5, 1, '', '', 'b2a7c18e26095b1b8c98cc1070f93057', '2020-01-03 09:25:57', 0),
(6, 2, '', '', '8593fae1506be70836041ed4e29d517f', '2020-01-03 09:25:50', 0),
(7, 1, '', '', '3ff18b06752268364b2d54548909ea2f', '2020-01-03 09:25:57', 0),
(8, 5, '', '', '7d53a7321ef9321e5c51c4e180f4c620', '2020-01-03 09:25:44', 0),
(9, 5, '', '', '7d53a7321ef9321e5c51c4e180f4c620', '2020-01-03 09:25:44', 0),
(10, 4, '', '', '7471413fc3c45beea2d22581b85e793a', '2020-01-02 22:07:46', 1),
(11, 3, '', '', '5de8ea01c30ad8922e7cbfcd6c8234aa', '2020-01-02 22:08:51', 0),
(12, 5, '', '', '045efce2283c3595b1032861e9eba016', '2020-01-03 09:25:44', 0),
(13, 2, '', '', '811e658b63ff47363c0cc00e430e17dc', '2020-01-03 09:25:50', 0),
(14, 1, '', '', '7c337d898be6872bf135e83572f3c6c6', '2020-01-03 09:25:57', 0),
(15, 5, '', '', 'ea5c0c8214088a78b2f6048958561366', '2020-01-03 09:25:44', 0),
(16, 6, '', '', '39945a770ed7cf5c55522a508cd371dd', '2020-01-03 20:18:07', 0),
(17, 7, '', '', '43f89e389428fc46857e76630c594835', '2020-01-03 20:18:12', 0),
(18, 8, '', '', 'fcfc3a098fae0ded91bd47440703d1e4', '2020-01-04 19:53:04', 0),
(19, 6, '', '', '780490ff3ea4c3c62a2e774c03fcf108', '2020-01-03 20:18:07', 0),
(20, 8, '', '', 'fcfc3a098fae0ded91bd47440703d1e4', '2020-01-04 19:53:04', 0),
(21, 6, '', '', 'fd1c9a1a5cb222bbb823de9ba99917c9', '2020-01-03 20:18:07', 0),
(22, 9, '', '', '0bc829468bc4aefc3b17614e16d3bf98', '2020-01-04 19:53:10', 0),
(23, 8, '', '', 'fcfc3a098fae0ded91bd47440703d1e4', '2020-01-04 19:53:04', 0),
(24, 6, '', '', 'a65e1c473264027f55ffccc53d8298ac', '2020-01-03 20:18:07', 0),
(25, 8, '', '', 'fcfc3a098fae0ded91bd47440703d1e4', '2020-01-04 19:53:04', 0),
(26, 9, '', '', '89a376e286c3632e4bdc1e785e984720', '2020-01-04 19:53:10', 0),
(27, 6, '', '', 'a2a1f6713d9f5fac4497019a03fa942b', '2020-01-03 20:18:07', 0),
(28, 6, '', '', 'a00bab154491caa2627354663d839aac', '2020-01-03 20:18:07', 0),
(29, 10, '', '', '4f9f0b41708b07744772be187af1e497', '2020-01-04 19:53:16', 0),
(30, 10, '', '', '3cd73b00c038157da4cc123f0c4a5e0f', '2020-01-04 19:53:16', 0),
(31, 8, '', '', 'fcfc3a098fae0ded91bd47440703d1e4', '2020-01-04 19:53:04', 0),
(32, 9, '', '', '1127b2b9cac2e4cb80db827d8b8e1a58', '2020-01-04 19:53:10', 0),
(33, 8, '', '', 'fcfc3a098fae0ded91bd47440703d1e4', '2020-01-04 19:53:04', 0),
(34, 9, '', '', 'badcf5678820bdd14301225d5289b991', '2020-01-04 19:53:10', 0),
(35, 10, '', '', '6b2180312ffbe93f00f66a83a3e2a399', '2020-01-04 19:53:16', 0),
(36, 11, '', '', '03b36140733c371fa0076d7ed808ce11', '2020-01-03 20:54:01', 1),
(37, 8, '', '', 'fcfc3a098fae0ded91bd47440703d1e4', '2020-01-04 19:53:04', 0),
(38, 9, '', '', 'a5b122ea1e425c132411b6d0cc1ab535', '2020-01-04 19:53:10', 0),
(39, 12, '', '', '000ad66d780f3a840448d97958f36976', '2020-01-04 08:11:41', 1),
(40, 8, '', '', 'fcfc3a098fae0ded91bd47440703d1e4', '2020-01-04 19:53:04', 0),
(41, 13, '', '', '2d8317a3f81c626f0cc4adb4231551b2', '2020-01-04 11:18:28', 1),
(42, 9, '', '', '0e89d3b6ead81d45bb4e287b4092f278', '2020-01-04 19:53:10', 0),
(43, 10, '', '', '555a57be99aa18c00c23087bc0db9af8', '2020-01-04 19:53:16', 0),
(44, 9, '', '', '7fe96233a333ddb6ca13d026aa30fdee', '2020-01-04 19:53:10', 0),
(45, 10, '', '', '4277372f92845d57144a76961dd4714d', '2020-01-04 19:53:16', 0),
(46, 8, '', '', 'e70b8db72c2a43e81590ec23c68eee32', '2020-01-04 19:53:04', 0),
(47, 9, '', '', '4062ba9d48c838e0b3e21e9aec9348ae', '2020-01-04 19:53:10', 0),
(48, 14, '', '', 'd32a7573f3b36e498ce84f8f81b25acf', '2020-01-04 20:11:03', 0),
(49, 15, '', '', 'e93545956f5782ead8cad790ae84bfcb', '2020-01-11 08:09:07', 0),
(50, 15, '', '', 'e93545956f5782ead8cad790ae84bfcb', '2020-01-11 08:09:07', 0),
(51, 14, '', '', '394bdc4d6131999d322d3c4a5ea81201', '2020-01-04 20:27:05', 0),
(52, 16, '', '', '9c0d90be987e6e2e4b1be3c3e54dab70', '2020-01-05 11:33:00', 1),
(53, 17, '', '', '76219f06353cdcb9ae22df990ce8de8a', '2020-01-05 11:32:28', 1),
(54, 18, '', '', 'c081de484347f971153d09b99edc34f7', '2020-01-05 11:41:59', 1),
(55, 19, '', '', '73fb880e7d74716bc796e7e331e86adc', '2020-01-05 13:29:10', 0),
(56, 15, '', '', 'e93545956f5782ead8cad790ae84bfcb', '2020-01-11 08:09:07', 0),
(57, 14, '', '', 'a2332c7a1390c93271f9a2c4679b0755', '2020-01-05 19:41:38', 0),
(58, 20, '', '', 'e1a37db15bd883d9e0be4756c264e64b', '2020-01-05 22:18:12', 0),
(59, 21, '', '', '2157e5eddac205b363056211b91bb153', '2020-01-11 08:07:05', 0),
(60, 22, '', '', '040fe67786acd41a8ec8723f299282db', '2020-01-07 11:27:19', 1),
(61, 23, '', '', '2ab73725948017eb6b6b1ae2aae32661', '2020-01-07 13:15:13', 1),
(62, 24, '', '', '6ad0b7eeab355ea9521c75f62ba2ce69', '2020-01-07 13:19:05', 1),
(63, 14, '', '', 'b1a44d9c890ebf22eb5736c307035e7e', '2020-01-07 17:41:12', 0),
(64, 25, '', '', '30e20c4e88242e0ace7adc5c61103c26', '2020-01-07 22:30:40', 0),
(65, 19, '', '', 'e11b1cb501f41e70abe5a4fe5c608565', '2020-01-07 22:31:39', 0),
(66, 26, '', '', '1c741ab57d50eada69d0cf5db9486d9f', '2020-01-07 22:36:27', 1),
(67, 19, '', '', '5e81b46124137244c5fd1f3a4419d67b', '2020-01-07 22:36:33', 0),
(68, 27, '', '', 'ab0e3ae8198d78468c0edcd4f366181f', '2020-01-07 22:42:26', 1),
(69, 19, '', '', '870c4c464aa675f193ea9e78edb5e798', '2020-01-07 22:42:33', 1),
(70, 28, '', '', 'fe9916e2b054a85ef0302853bf169795', '2020-01-08 06:35:20', 0),
(71, 29, '', '', '06efffa9814ec6da4242018a9899759a', '2020-01-08 06:52:10', 1),
(72, 30, '', '', '3810a850e08dac77f00c4b59158b9bac', '2020-01-08 10:44:56', 1),
(73, 15, '', '', 'e93545956f5782ead8cad790ae84bfcb', '2020-01-11 08:09:07', 1),
(74, 31, '', '', '04bccc19a05864f933e547ad0340da7a', '2020-01-08 13:47:28', 1),
(75, 32, '', '', '49a33e345da7ccc34a1c0435acbf1151', '2020-01-08 17:33:00', 0),
(76, 33, '', '', 'ec30852b64fdf8641d918ed5752feaa8', '2020-01-08 17:33:27', 0),
(77, 33, '', '', '429b6ef7f9cf3b6d4a10e2a360988176', '2020-01-08 17:39:14', 1),
(78, 14, '', '', '4a49409292445e9b9b9c712b4d8eb990', '2020-01-09 19:48:16', 0),
(79, 34, '', '', 'c100b83873c6b7fa59e5a81a9747a2f8', '2020-01-09 21:19:00', 1),
(80, 14, '', '', '6473596e89ad6fe147d7332ce481095d', '2020-01-11 08:05:19', 0),
(81, 21, '', '', '2157e5eddac205b363056211b91bb153', '2020-01-11 08:07:05', 1);

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
(1, 1, 1, 1, 'à¤¶à¥à¤°à¤® à¤µà¤¿à¤­à¤¾à¤œà¤¨ à¤”à¤° à¤œà¤¾à¤¤à¤¿ à¤ªà¥à¤°à¤¥à¤¾ ', '2020-01-03 09:27:24', 0),
(2, 4, 2, 1, 'à¤¶à¥à¤°à¤® à¤µà¤¿à¤­à¤¾à¤œà¤¨ à¤”à¤° à¤œà¤¾à¤¤à¤¿ à¤ªà¥à¤°à¤¥à¤¾ ', '2020-01-03 11:21:23', 0),
(3, 4, 3, 1, 'à¤¶à¥à¤°à¤® à¤µà¤¿à¤­à¤¾à¤œà¤¨ à¤”à¤° à¤œà¤¾à¤¤à¤¿ à¤ªà¥à¤°à¤¥à¤¾ ', '2020-01-04 19:50:38', 0),
(4, 7, 4, 2, 'à¤•à¤¾à¤°à¤• ', '2020-01-03 20:15:46', 0),
(5, 5, 5, 3, 'à¤¸à¤®à¤¾à¤¸ ', '2020-01-04 19:51:48', 0),
(6, 5, 6, 1, 'à¤¸à¤‚à¤§à¤¿ ', '2020-01-04 19:51:51', 0),
(7, 7, 7, 1, 'à¤—à¥‹à¤§à¥à¤²à¥€  (chapter 1 To 3 )', '2020-01-04 19:51:54', 0),
(8, 5, 8, 2, 'Laxman', '2020-01-04 19:51:53', 0),
(9, 8, 9, 1, 'à¤¶à¥à¤°à¤® à¤µà¤¿à¤­à¤¾à¤œà¤¨ à¤”à¤° à¤œà¤¾à¤¤à¤¿ à¤ªà¥à¤°à¤¥à¤¾ ', '2020-01-04 19:56:58', 1),
(10, 8, 9, 1, 'à¤¦à¤¹à¥€ à¤µà¤¾à¤²à¥€ à¤®à¤‚à¤—à¤®à¥à¤®à¤¾ ', '2020-01-04 20:05:08', 1),
(11, 9, 10, 1, 'à¤—à¥‹à¤§à¥à¤²à¥€  (chapter 1 To 3 )', '2020-01-04 20:13:37', 1);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` int(8) NOT NULL,
  `name` varchar(50) NOT NULL,
  `session` varchar(12) NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `active` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `name`, `session`, `modified`, `active`) VALUES
(9, '10th crash course', '2019-2020', '2020-01-05 02:54:22', 1),
(8, '10th', '2019-2020', '2020-01-05 02:53:48', 1),
(4, '10th', '2019-2020', '2020-01-05 02:52:26', 0),
(5, '9th', '2019-2020', '2020-01-05 02:52:30', 0),
(6, '8th', '2019-2020', '2020-01-05 02:52:33', 0),
(7, '10th crash course', '2019-2020', '2020-01-05 02:52:38', 0);

-- --------------------------------------------------------

--
-- Table structure for table `course_details`
--

CREATE TABLE `course_details` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `class_id` int(5) NOT NULL,
  `subject_id` int(5) DEFAULT NULL,
  `month_id` varchar(100) DEFAULT NULL,
  `amount` float(7,2) DEFAULT NULL,
  `paid` int(1) DEFAULT NULL,
  `modified` datetime NOT NULL,
  `active` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course_details`
--

INSERT INTO `course_details` (`id`, `user_id`, `class_id`, `subject_id`, `month_id`, `amount`, `paid`, `modified`, `active`) VALUES
(1, 1, 1, NULL, NULL, NULL, NULL, '2020-01-02 17:55:21', 1),
(2, 2, 2, NULL, NULL, NULL, NULL, '2020-01-02 17:58:07', 1),
(3, 3, 1, NULL, NULL, NULL, NULL, '2020-01-02 18:26:23', 1),
(4, 4, 1, NULL, NULL, NULL, NULL, '2020-01-02 18:53:00', 1),
(5, 5, 2, NULL, NULL, NULL, NULL, '2020-01-02 21:48:46', 1),
(6, 6, 7, NULL, '2', NULL, 1, '2020-01-03 09:33:01', 1),
(7, 7, 7, NULL, NULL, NULL, NULL, '2020-01-03 10:44:07', 1),
(8, 8, 4, NULL, '1', NULL, 1, '2020-01-03 11:07:51', 1),
(9, 9, 5, NULL, '3', NULL, 1, '2020-01-03 11:37:44', 1),
(10, 10, 7, NULL, NULL, NULL, NULL, '2020-01-03 20:18:50', 1),
(11, 11, 4, NULL, NULL, NULL, NULL, '2020-01-03 20:54:01', 1),
(12, 12, 4, NULL, NULL, NULL, NULL, '2020-01-04 08:11:41', 1),
(13, 13, 4, NULL, NULL, NULL, NULL, '2020-01-04 11:18:11', 1),
(14, 14, 8, NULL, '1', NULL, 1, '2020-01-04 20:10:52', 1),
(15, 15, 9, NULL, NULL, NULL, NULL, '2020-01-04 20:11:48', 1),
(16, 16, 9, NULL, NULL, NULL, NULL, '2020-01-05 01:41:11', 1),
(17, 17, 9, NULL, NULL, NULL, NULL, '2020-01-05 11:32:28', 1),
(18, 18, 9, NULL, NULL, NULL, NULL, '2020-01-05 11:40:30', 1),
(19, 19, 9, NULL, NULL, NULL, NULL, '2020-01-05 13:25:33', 1),
(20, 20, 9, NULL, NULL, NULL, NULL, '2020-01-05 22:17:55', 1),
(21, 21, 9, NULL, '1,1', NULL, 1, '2020-01-06 17:19:02', 1),
(22, 22, 8, NULL, NULL, NULL, NULL, '2020-01-07 11:26:57', 1),
(23, 23, 9, NULL, NULL, NULL, NULL, '2020-01-07 13:15:13', 1),
(24, 24, 9, NULL, NULL, NULL, NULL, '2020-01-07 13:19:05', 1),
(25, 25, 9, NULL, NULL, NULL, NULL, '2020-01-07 22:30:34', 1),
(26, 26, 9, NULL, NULL, NULL, NULL, '2020-01-07 22:36:27', 1),
(27, 27, 8, NULL, NULL, NULL, NULL, '2020-01-07 22:42:26', 1),
(28, 28, 8, NULL, NULL, NULL, NULL, '2020-01-08 06:35:01', 1),
(29, 29, 8, NULL, NULL, NULL, NULL, '2020-01-08 06:52:10', 1),
(30, 30, 8, NULL, NULL, NULL, NULL, '2020-01-08 10:44:56', 1),
(31, 31, 9, NULL, NULL, NULL, NULL, '2020-01-08 13:46:58', 1),
(32, 32, 8, NULL, NULL, NULL, NULL, '2020-01-08 17:31:07', 1),
(33, 33, 9, NULL, NULL, NULL, NULL, '2020-01-08 17:33:07', 1),
(34, 34, 9, NULL, NULL, NULL, NULL, '2020-01-09 21:17:58', 1);

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
(1, 0, 4, 2, 2, 'à¤¶à¥à¤°à¤® à¤µà¤¿à¤­à¤¾à¤œà¤¨ à¤”à¤° à¤œà¤¾à¤¤à¤¿ à¤ªà¥à¤°à¤¥à¤¾ à¤•à¤¹à¤¾à¤¨à¥€ à¤•à¥‡ à¤²à¥‡à¤–à¤• à¤•à¥Œà¤¨ à¤¹à¥ˆà¤‚ ?', 'à¤…à¤®à¤°à¤•à¤¾à¤‚à¤¤ ', 'à¤­à¥€à¤®à¤°à¤¾à¤µ ', 'à¤¸à¤¾à¤¤à¤•à¥‹à¥œà¥€ à¤¹à¥‹à¤¤à¤¾ ', 'à¤¶à¥à¤°à¥€ à¤¨à¤¿à¤µà¤¾à¤¸ ', 0, '2', '2020-01-03 20:25:28'),
(2, 0, 4, 2, 2, 'à¤µà¤¿à¤¶à¥‡à¤·à¤£ à¤•à¥‡ à¤•à¤¿à¤¤à¤¨à¥‡ à¤­à¥‡à¤¦ à¤¹à¥ˆ ?', '4', '8', '7', '6', 0, '1', '2020-01-03 20:25:31'),
(3, 0, 4, 2, 2, 'à¤¸à¤®à¤¾à¤¸ à¤•à¥‡ à¤•à¤¿à¤¤à¤¨à¥‡ à¤­à¥‡à¤¦ à¤¹à¥ˆ ?', '2', '5', '6', '7', 0, '3', '2020-01-03 20:25:34'),
(4, 0, 4, 2, 2, 'à¤•à¤¾à¤°à¤• à¤•à¥‡ à¤•à¤¿à¤¤à¤¨à¥‡ à¤­à¥‡à¤¦ à¤¹à¥ˆ ?', '7', '5', '6', '8', 0, '4', '2020-01-03 20:25:50'),
(5, 0, 4, 2, 2, 'à¤¸à¤‚à¤œà¥à¤žà¤¾ à¤•à¥‡ à¤•à¤¿à¤¤à¤¨à¥‡ à¤­à¥‡à¤¦ à¤¹à¥ˆ ?', '3', '7', '6', '5', 0, '4', '2020-01-03 20:25:25'),
(6, 0, 8, 9, 9, 'à¤®à¤‚à¤—à¤®à¥à¤®à¤¾ à¤•à¤¿à¤¸ à¤•à¤¹à¤¾à¤¨à¥€ à¤•à¥€ à¤ªà¤¾à¤¤à¥à¤° à¤¹à¥ˆ ?', 'à¤¦à¤¹à¥€ à¤µà¤¾à¤²à¥€ à¤®à¤‚à¤—à¤®à¥à¤®à¤¾ ', 'à¤¦à¤¹à¤¤à¥‡ à¤µà¤¿à¤¶à¥à¤µà¤¾à¤¸ ', 'à¤®à¤¾à¤ ', 'à¤§à¤°à¤¤à¥€ à¤•à¤¬ à¤¤à¤• à¤˜à¥‚à¤®à¥‡à¤—à¥€ ', 1, '1', '2020-01-04 20:13:07'),
(7, 0, 8, 9, 9, 'à¤®à¤‚à¤—à¤®à¥à¤®à¤¾  à¤•à¤¿à¤¸ à¤¸à¤¹à¤° à¤®à¥‡à¤‚ à¤¦à¤¹à¥€ à¤¬à¥‡à¤šà¤¾ à¤•à¤°à¤¤à¥€  à¤¥à¥€ ?', 'à¤°à¤¾à¤®à¥‡à¤¶à¥à¤µà¤°à¤® ', 'à¤•à¥‡à¤°à¤² ', 'à¤¬à¥‡à¤‚à¤—à¥à¤²à¥à¤°à¥ ', 'à¤¹à¥ˆà¤¦à¤°à¤¾à¤¬à¤¾à¤¦ ', 1, '3', '2020-01-04 20:15:29'),
(8, 0, 8, 9, 9, 'à¤¶à¥à¤°à¥€ à¤¨à¤¿à¤µà¤¾à¤¸ à¤œà¥€ à¤•à¤¾ à¤ªà¥‚à¤°à¤¾ à¤¨à¤¾à¤® à¤•à¥à¤¯à¤¾ à¤¥à¤¾  ?', 'à¤¸à¤šà¥à¤šà¤¿à¤¦à¤¾à¤¨à¤‚à¤¦ à¤µà¤¾à¤¤à¥à¤¸à¤¾à¤¯à¤¨ ', 'à¤®à¤¾à¤°à¥à¤¤à¥€ à¤µà¥‡à¤‚à¤•à¤Ÿà¥‡à¤¶ à¤…à¤¯à¥à¤¯à¤‚à¤—à¤¾à¤° ', 'à¤¸à¤¾à¤¤à¤•à¥‹à¥œà¥€ à¤¹à¥‹à¤¤à¤¾ ', 'à¤¬à¤¦à¥à¤°à¥€ à¤¨à¤¾à¤°à¤¾à¤¯à¤£ à¤ªà¥à¤°à¥‡à¤®à¤§à¤¨ ', 1, '2', '2020-01-04 20:17:39'),
(9, 0, 8, 9, 9, 'à¤¶à¥à¤°à¥€ à¤¨à¤¿à¤µà¤¾à¤¸ à¤‡à¤¸ à¤¸à¤¾à¤¹à¤¿à¤¤à¥à¤¯ à¤•à¥‡ à¤ªà¥à¤°à¤¤à¤¿à¤·à¥à¤ à¤¿à¤¤ à¤°à¤šà¤¨à¤¾à¤•à¤¾à¤° à¤®à¥‡à¤‚ à¤à¤• à¤¹à¥ˆà¤‚ ?', 'à¤­à¥‹à¤œà¤ªà¥à¤°à¥€ à¤¸à¤¾à¤¹à¤¿à¤¤à¥à¤¯ ', 'à¤¹à¤¿à¤¨à¥à¤¦à¥€ à¤¸à¤¾à¤¹à¤¿à¤¤à¥à¤¯ ', 'à¤¬à¤‚à¤—à¤²à¤¾ à¤¸à¤¾à¤¹à¤¿à¤¤à¥à¤¯ ', 'à¤•à¤¨à¥à¤¨à¥œ  à¤¸à¤¾à¤¹à¤¿à¤¤à¥à¤¯ ', 1, '4', '2020-01-04 20:19:54'),
(10, 0, 8, 9, 9, 'à¤®à¤‚à¤—à¤®à¥à¤®à¤¾ à¤•à¥€  à¤¬à¤¹à¥ à¤•à¥Œà¤¨ à¤¥à¥€  ?', 'à¤…à¤œà¤®à¤¾ ', 'à¤¨à¤¨à¥à¤œà¤®à¥à¤®à¤¾ ', 'à¤°à¤‚à¤—à¤ªà¥à¤ªà¤¾ ', 'à¤‡à¤¨à¤®à¥‡ à¤¸à¥‡ à¤•à¥‹à¤ˆ à¤¨à¤¹à¥€à¤‚ ', 1, '2', '2020-01-04 20:20:54'),
(11, 0, 8, 9, 9, 'à¤°à¤‚à¤—à¤ªà¥à¤ªà¤¾ à¤•à¥Œà¤¨ à¤¥à¤¾ ?', 'à¤²à¤®à¥à¤ªà¤Ÿ ', 'à¤œà¥à¤†à¤°à¥€ ', 'à¤¬à¤¦à¤®à¤¾à¤¶ ', 'à¤¸à¤­à¥€ ', 1, '4', '2020-01-04 20:22:51'),
(12, 0, 8, 9, 9, 'à¤®à¤‚à¤—à¤®à¥à¤®à¤¾ à¤•à¥‹ à¤•à¤¿à¤¸à¥à¤¸à¥‡ à¤µà¤¿à¤µà¤¾à¤¦ à¤¥à¤¾ ?', 'à¤ªà¤¤à¤¿ à¤¸à¥‡ ', 'à¤¬à¥‡à¤Ÿà¥‡ à¤¸à¥‡ ', 'à¤ªà¥‹à¤¤à¥‡ à¤¸à¥‡ ', 'à¤¬à¤¹à¥ ', 1, '4', '2020-01-04 20:31:34'),
(13, 0, 8, 9, 9, 'à¤®à¤‚à¤—à¤®à¥à¤®à¤¾ à¤•à¥‹ à¤…à¤ªà¤¨à¥€ à¤¬à¤¹à¥ à¤¸à¥‡ à¤•à¤¿à¤¸ à¤¬à¤¾à¤¤ à¤•à¥‹ à¤²à¥‡à¤•à¤° à¤µà¤¿à¤µà¤¾à¤¦ à¤¥à¤¾ ?', 'à¤°à¤‚à¤—à¤ªà¥à¤ªà¤¾ ', 'à¤ªà¥‹à¤¤à¥‡ ', 'à¤¬à¥‡à¤Ÿà¥‡ ', 'à¤‡à¤¨à¤®à¥‡à¤¸à¥‡ à¤•à¥‹à¤ˆ à¤¨à¤¹à¥€à¤‚ ', 1, '2', '2020-01-04 20:34:38'),
(14, 0, 9, 10, 10, 'à¤¶à¥à¤°à¤®  à¤µà¤¿à¤­à¤¾à¤œà¤¨ à¤”à¤° à¤œà¤¾à¤¤à¤¿ à¤•à¥‡ à¤²à¥‡à¤–à¤• à¤•à¥Œà¤¨ à¤¹à¥ˆà¤‚ ?', 'à¤®à¤¹à¤¾à¤¤à¥à¤®à¤¾ à¤—à¤¾à¤à¤§à¥€ ', 'à¤œà¤µà¤¾à¤¹à¤°à¤²à¤¾à¤² à¤¨à¥‡à¤¹à¤°à¥ ', 'à¤°à¤¾à¤® à¤®à¥‹à¤¹à¤¨ à¤²à¥‹à¤¹à¤¿à¤¯à¤¾ ', 'à¤­à¥€à¤®à¤°à¤¾à¤µ  à¤…à¤®à¥à¤¬à¥‡à¤¡à¤•à¤° ', 1, '4', '2020-01-04 20:39:15'),
(15, 0, 9, 10, 10, 'à¤­à¤¾à¤°à¤¤à¥€à¤¯ à¤¸à¤‚à¤¬à¤¿à¤§à¤¾à¤¨ à¤•à¥‡ à¤¨à¤¿à¤°à¥à¤®à¤¾à¤£ à¤®à¥‡à¤‚ à¤•à¤¿à¤¸à¤•à¥€ à¤®à¤¹à¤¤à¥à¤µà¤ªà¥‚à¤°à¥à¤£ à¤­à¥‚à¤®à¤¿à¤•à¤¾ à¤•à¤¿à¤¸à¤•à¥€ à¤¹à¥ˆ ?', 'à¤­à¥€à¤®à¤°à¤¾à¤µ à¤…à¤®à¥à¤¬à¥‡à¤¡à¤•à¤° ', 'à¤œà¥à¤¯à¥‹à¤¤à¤¿à¤¬à¤¾ à¤«à¥‚à¤²à¥‡ ', 'à¤°à¤¾à¤œà¤—à¥‹à¤ªà¤¾à¤²à¤¾à¤šà¤¾à¤°à¥€ ', 'à¤®à¤¹à¤¾à¤¤à¥à¤®à¤¾ à¤—à¤¾à¤à¤§à¥€ ', 1, '1', '2020-01-04 20:41:35'),
(16, 0, 9, 10, 10, 'à¤¸à¤­à¥à¤¯ à¤¸à¤®à¤¾à¤œ à¤•à¥€ à¤†à¤µà¤¶à¥à¤¯à¤•à¤¤à¤¾ à¤•à¥à¤¯à¤¾ à¤¹à¥ˆ  ?', 'à¤œà¤¾à¤¤à¥€ -à¤ªà¥à¤°à¤¥à¤¾ ', 'à¤¶à¥à¤°à¤®-à¤µà¤¿à¤­à¤¾à¤œà¤¨ ', 'à¤…à¤£à¥-à¤¬à¤® ', 'à¤¦à¥‚à¤§-à¤ªà¤¾à¤¨à¥€ ', 1, '4', '2020-01-04 20:45:05'),
(17, 0, 8, 9, 9, '\'à¤¦à¤¹à¥€ à¤µà¤¾à¤²à¥€ à¤®à¤‚à¤—à¤®à¥à¤®à¤¾ \' à¤•à¤¹à¤¾à¤¨à¥€ à¤•à¥‡ à¤•à¤¹à¤¾à¤¨à¥€à¤•à¤¾à¤° à¤•à¥Œà¤¨ à¤¹à¥ˆà¤‚ ?', 'à¤¶à¥à¤°à¥€ à¤¨à¤¿à¤µà¤¾à¤¸ ', 'à¤¸à¤¾à¤¤à¤•à¥‹à¥œà¥€ à¤¹à¥‹à¤¤à¤¾ ', 'à¤ˆà¤¶à¥à¤µà¤° à¤ªà¥‡à¤Ÿà¤²à¥€à¤•à¤° ', 'à¤¸à¥à¤œà¤¾à¤¤à¤¾ ', 1, '1', '2020-01-04 20:46:12'),
(18, 0, 9, 10, 10, 'à¤¸à¥‡à¤¨ à¤¸à¤¾à¤¹à¤¬ à¤…à¤ªà¤¨à¥‡ à¤¬à¥‡à¤Ÿà¥‡ à¤–à¥‹à¤–à¤¾ à¤•à¥‹ à¤•à¥à¤¯à¤¾ à¤¬à¤¨à¤¾à¤¨à¤¾ à¤šà¤¾à¤¹à¤¤à¥‡ à¤¥à¥‡ ?', 'à¤¡à¥‰à¤•à¥à¤Ÿà¤° ', 'à¤–à¤¿à¤²à¤¾à¥œà¥€', 'à¤¬à¤¿à¤œà¤¨à¥‡à¤¸ à¤®à¥ˆà¤¨ / à¤‡à¤‚à¤œà¤¿à¤¨à¥€à¤¯à¤° ', 'à¤ªà¤¤à¥à¤°à¤•à¤¾à¤° ', 1, '3', '2020-01-04 20:47:49'),
(19, 0, 8, 9, 9, '\'à¤¦à¤¹à¥€ à¤µà¤¾à¤²à¥€ à¤®à¤‚à¤—à¤®à¥à¤®à¤¾\' à¤•à¤¹à¤¾à¤¨à¥€ à¤•à¥‡ à¤ªà¥à¤°à¤®à¥à¤– à¤ªà¤¾à¤¤à¥à¤° à¤•à¥Œà¤¨ à¤¹à¥ˆà¤‚ ? ', 'à¤²à¤•à¥à¤·à¥à¤®à¥€ ', 'à¤®à¤‚à¤—à¤®à¥à¤®à¤¾ ', 'à¤ªà¤¾à¤ªà¥à¤ªà¤¾à¤¤à¤¿ ', 'à¤¸à¥€à¤¤à¤¾ ', 1, '2', '2020-01-04 20:48:04'),
(20, 0, 8, 9, 9, 'à¤¦à¤¹à¥€ à¤µà¤¾à¤²à¥€ à¤®à¤‚à¤—à¤®à¥à¤®à¤¾ à¤•à¤¹à¤¾à¤¨à¥€ à¤•à¥‡ à¤•à¤¥à¤¾ à¤µà¤¾à¤šà¤• à¤•à¤¹à¤¾à¤ à¤¸à¥‡ à¤¹à¥ˆà¤‚ ?', 'à¤ªà¤Ÿà¤¨à¤¾ ', 'à¤¦à¤¿à¤²à¥à¤²à¥€ ', 'à¤¬à¥‡à¤‚à¤—à¥à¤²à¥à¤°à¥ ', 'à¤•à¤²à¤•à¤¤à¥à¤¤à¤¾ ', 1, '3', '2020-01-04 20:49:21'),
(21, 0, 8, 9, 9, 'à¤¦à¤¹à¥€ à¤µà¤¾à¤²à¥€ à¤®à¤‚à¤—à¤®à¥à¤®à¤¾ à¤•à¤¿à¤¸à¥‡ à¤¸à¤‚à¤¦à¥‡à¤¶ à¤¦à¥‡à¤¤à¥€ à¤¹à¥ˆ ?', 'à¤®à¤¾à¤¤à¤¾à¤“à¤‚ à¤•à¥‹ ', 'à¤ªà¥à¤¤à¥à¤°à¤¿à¤¯à¥‹à¤‚ à¤•à¥‹ ', 'à¤¬à¤¹à¥à¤“à¤‚ à¤•à¥‹ ', 'à¤›à¤¾à¤¤à¥à¤°à¥‹à¤‚ à¤•à¥‹ ', 1, '3', '2020-01-04 20:50:27'),
(22, 0, 8, 9, 9, 'à¤®à¤‚à¤—à¤®à¥à¤®à¤¾ à¤•à¥à¤¯à¤¾ à¤¬à¥‡à¤šà¤¤à¥€ à¤¥à¥€ ?', 'à¤¦à¥‚à¤§ ', 'à¤¦à¤¹à¥€ ', 'à¤§à¥€ ', 'à¤®à¤¾à¤ à¤¾ (à¤›à¤¾à¤› )', 1, '2', '2020-01-04 20:51:53'),
(23, 0, 9, 10, 10, 'à¤—à¤¿à¤°à¤§à¤°à¤²à¤¾à¤²,à¤¸à¥‡à¤¨ à¤¸à¤¾à¤¹à¤¬ à¤•à¥€ à¤«à¥ˆà¤•à¥à¤Ÿà¥à¤°à¥€ à¤®à¥‡à¤‚ à¤•à¥à¤¯à¤¾ à¤¥à¤¾ ?', 'à¤•à¤¿à¤°à¤¾à¤¨à¥€ ', 'à¤¡à¥à¤°à¤¾à¤ˆà¤µà¤° ', 'à¤…à¤•à¤¾à¤‰à¤‚à¤Ÿà¥‡à¤‚à¤Ÿ ', 'à¤‡à¤¨à¤®à¥‡ à¤¸à¥‡ à¤•à¥‹à¤ˆ à¤¨à¤¹à¥€à¤‚ ', 1, '1', '2020-01-04 20:52:15'),
(24, 0, 8, 9, 9, 'à¤®à¤‚à¤—à¤®à¥à¤®à¤¾ à¤•à¥‡ à¤—à¤¾à¤à¤µ à¤•à¤¾ à¤•à¥à¤¯à¤¾ à¤¨à¤¾à¤® à¤¥à¤¾ ?', 'à¤¶à¥‹à¤²à¤¾à¤ªà¥à¤° ', 'à¤–à¤¿à¤¦à¥€à¤°à¤ªà¥à¤° ', 'à¤µà¥‡à¤‚à¤•à¤Ÿà¤ªà¥à¤° ', 'à¤°à¤¾à¤®à¤ªà¥à¤° ', 1, '3', '2020-01-04 20:53:14'),
(25, 0, 9, 10, 10, 'à¤–à¥‹à¤–à¤¾ à¤•à¥‡ à¤ªà¤¿à¤¤à¤¾ à¤¹à¥ˆà¤‚ ?', 'à¤—à¤¿à¤°à¤§à¤°à¤²à¤¾à¤² ', 'à¤¸à¥‡à¤¨ à¤¸à¤¾à¤¹à¤¬ ', 'à¤ªà¤¤à¥à¤°à¤¾à¤•à¤¾à¤° ', 'à¤®à¤¦à¤¨ ', 1, '2', '2020-01-04 20:54:04'),
(26, 0, 8, 9, 9, 'à¤®à¤‚à¤—à¤®à¥à¤®à¤¾ à¤•à¥à¤¯à¤¾ à¤–à¤¾à¤¤à¥€ à¤¥à¥€ :', 'à¤¤à¤¿à¤°à¤‚à¤—à¤¾ ', 'à¤ªà¤¾à¤¨-à¤¸à¥à¤ªà¤¾à¥œà¥€ ', 'à¤–à¥ˆà¤¨à¥€ ', 'à¤‡à¤¨à¤®à¥‡ à¤¸à¥‡ à¤¸à¤­à¥€ ', 1, '2', '2020-01-04 20:54:36'),
(27, 0, 9, 10, 10, 'à¤–à¥‹à¤–à¤¾ à¤•à¤¿à¤¸ à¤•à¤¹à¤¾à¤¨à¥€ à¤•à¤¾ à¤ªà¤¾à¤¤à¥à¤° à¤¹à¥ˆ ?', 'à¤µà¤¿à¤· à¤•à¥‡ à¤¦à¤¾à¤‚à¤¤ ', 'à¤¬à¤¹à¤¾à¤¦à¥à¤°  ', 'à¤®à¤›à¤²à¥€ ', 'à¤¨à¤¾à¤–à¥‚à¤¨ à¤•à¥à¤¯à¥‹à¤‚ à¤¬à¥à¤¤à¥‡ à¤¹à¥ˆà¤‚ ', 1, '1', '2020-01-04 20:55:52'),
(28, 0, 8, 9, 9, 'à¤®à¤‚à¤—à¤®à¥à¤®à¤¾ à¤¨à¥‡ à¤¬à¥‡à¤Ÿà¥‡ à¤¸à¥‡ à¤…à¤²à¤— à¤¹à¥‹à¤¨à¥‡ à¤•à¥‹ à¤•à¤¬ à¤•à¤¹à¤¾ ?', 'à¤¦à¥‹à¤ªà¤¹à¤° à¤®à¥‡à¤‚ ', 'à¤¶à¤¾à¤® à¤®à¥‡à¤‚ ', 'à¤°à¤¾à¤¤ à¤®à¥‡à¤‚ ', 'à¤¸à¥à¤¬à¤¹ à¤®à¥‡à¤‚ ', 1, '1', '2020-01-04 20:56:29'),
(29, 0, 9, 10, 10, 'à¤µà¤¾à¤°à¥‡à¤¨ à¤¹à¥‡à¤¸à¥à¤Ÿà¤¿à¤‚à¤—à¤¸ à¤•à¤¹à¤¾ à¤•à¥‡ à¤—à¤µà¤°à¥à¤¨à¤° à¤—à¥‡à¤¨à¤°à¤² à¤¥à¥‡ ?', 'à¤­à¤¾à¤°à¤¤ ', 'à¤¶à¥à¤°à¥€à¤²à¤‚à¤•à¤¾  ', 'à¤œà¤°à¥à¤®à¤¨à¥€ ', 'à¤¯à¥‚à¤¨à¤¾à¤¨ ', 1, '1', '2020-01-04 20:57:19'),
(30, 0, 9, 10, 10, 'à¤®à¥ˆà¤•à¥à¤¸à¤®à¥à¤²à¤°  à¤•à¥Œà¤¨ à¤¥à¥‡ ?', 'à¤­à¤¾à¤°à¤¤à¤­à¤•à¥à¤¤  ', 'à¤¸à¤‚à¤¸à¥à¤•à¥ƒà¤¤à¤¾à¤¨à¥à¤°à¤—à¥€', 'à¤µà¥‡à¤¦à¥‹à¤‚ à¤•à¥‡ à¤ªà¥à¤°à¤¤à¤¿ à¤…à¤—à¤¾à¤§ à¤†à¤¸à¥à¤¥à¤¾ à¤°à¤–à¤¨à¥‡ à¤µà¤¾à¤²à¥‡ ', 'à¤¸à¤­à¥€ ', 1, '4', '2020-01-04 21:00:12'),
(31, 0, 9, 10, 10, 'à¤¦à¤¾à¤°à¤¿à¤¸ à¤•à¥à¤¯à¤¾ à¤¥à¤¾ ?', 'à¤¸à¥‹à¤¨à¥‡ à¤•à¥‡ à¤¸à¤¿à¤•à¥à¤•à¥‡ ', 'à¤šà¤¾à¤à¤¦à¥€ à¤•à¥‡ à¤¸à¤¿à¤•à¥à¤•à¥‡ ', 'à¤¤à¤¾à¤®à¥à¤¬à¥‡ à¤•à¥‡ à¤¸à¤¿à¤•à¥à¤•à¥‡ ', 'à¤‡à¤¨à¤®à¥‡ à¤¸à¥‡ à¤•à¥‹à¤ˆ à¤¨à¤¹à¥€à¤‚ ', 1, '1', '2020-01-04 21:02:16'),
(32, 0, 8, 9, 9, 'à¤®à¤‚à¤—à¤®à¥à¤®à¤¾ à¤•à¤¿à¤¸ à¤•à¤ªà¥œà¥‡ à¤•à¥€ à¤¬à¥à¤²à¤¾à¤‰à¤œ à¤ªà¤¹à¤¨à¤¨à¤¾ à¤šà¤¾à¤¹à¤¤à¥€  à¤¥à¥€ ?', 'à¤¸à¥‚à¤¤à¥€ à¤•à¥‡ ', 'à¤Ÿà¥‡à¤°à¥€à¤•à¤Ÿà¤¨ à¤•à¥‡ ', 'à¤®à¤–à¤®à¤² à¤•à¥‡ ', 'à¤°à¥‡à¤¶à¤® à¤•à¥‡ ', 1, '3', '2020-01-04 21:05:38');

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

-- --------------------------------------------------------

--
-- Table structure for table `exam_user_log`
--

CREATE TABLE `exam_user_log` (
  `id` int(8) NOT NULL,
  `exam_title` int(11) NOT NULL,
  `video_id` int(8) NOT NULL,
  `user_id` int(11) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(14, 9, 1, 1.00, '2019-2020', '2020-01-11 08:01:59', 1),
(4, 4, 1, 1.00, '2019-2020', '2020-01-04 19:50:06', 0),
(13, 8, 1, 1.00, '2019-2020', '2020-01-11 07:58:13', 1),
(6, 5, 3, 1.00, '2019-2020', '2020-01-04 12:38:45', 0),
(7, 5, 1, 1.00, '2019-2020', '2020-01-04 19:50:13', 0),
(8, 4, 2, 1.00, '2019-2020', '2020-01-04 19:50:10', 0),
(12, 5, 2, 1.00, '2019-2020', '2020-01-04 19:50:15', 0),
(10, 5, 2, 1.00, '2019-2020', '2020-01-04 17:57:14', 0),
(11, 7, 1, 100.00, '2019-2020', '2020-01-04 19:50:18', 0);

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

--
-- Dumping data for table `forgot_password`
--

INSERT INTO `forgot_password` (`id`, `user_id`, `otp`, `active`, `dated`) VALUES
(1, 20, 'jatan44381', 1, '2020-01-08 13:41:58'),
(2, 32, 'anshu01879', 1, '2020-01-08 17:37:07');

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
(1, 'admin', 'c1f32fca16a707c905acc335620df958', 'Akbar Ali', '9122572185', 'akbar1991ali@yahoo.com', 'Bengaluru', '2017-12-21 00:00:00', 1, 'akbar', '2019-11-06 22:19:42', 1),
(2, 'developer', 'e10adc3949ba59abbe56e057f20f883e', 'suman raj', '7979044783', 'sumanrajinbox@gmail.com', 'Munger', '2019-11-06 00:00:00', 1, 'suman', '2019-11-06 09:47:37', 1),
(6, 'laxman', 'e10adc3949ba59abbe56e057f20f883e', 'Laxman', '9122572185', 'laxmanchallengeeducation@gmail.com', 'BENGALURU', '0000-00-00 00:00:00', 1, '', '0000-00-00 00:00:00', 1),
(8, 'race', 'c8cf06a5996e3b441ef3588337237227', 'Laxman', '9122572185', 'qgabhi@gmail.com', 'BENGALURU', '0000-00-00 00:00:00', 1, '', '2019-11-10 20:53:38', 1);

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
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(8) NOT NULL,
  `uid` int(8) NOT NULL,
  `auth_key` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `amount` float NOT NULL,
  `txn_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `month` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `hash_key` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `modified` datetime NOT NULL,
  `flag` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `uid`, `auth_key`, `amount`, `txn_id`, `month`, `hash_key`, `modified`, `flag`) VALUES
(1, 4, 'aa0f15a227cd6dc06e49a8163be053c5', 1, '1577971594628', '1', '', '2020-01-02 18:56:36', 1),
(2, 8, '17a2b11f9695dcabef8aae51885c8b7c', 1, '1578029942578', '1', '', '2020-01-03 11:09:03', 1),
(3, 8, '17a2b11f9695dcabef8aae51885c8b7c', 1, '1578030043465', '1', '', '2020-01-03 11:10:43', 1),
(4, 6, 'fd1c9a1a5cb222bbb823de9ba99917c9', 1, '1578031257481', '2', '', '2020-01-03 11:30:58', 1),
(5, 9, '0bc829468bc4aefc3b17614e16d3bf98', 1, '1578031686677', '3', '', '2020-01-03 11:38:07', 1),
(6, 7, '43f89e389428fc46857e76630c594835', 1, '1578060022016', '2', '', '2020-01-03 19:30:22', 1),
(7, 7, '43f89e389428fc46857e76630c594835', 1, '1578060024010', '2', '', '2020-01-03 19:30:24', 1),
(8, 7, '43f89e389428fc46857e76630c594835', 1, '1578060057462', '2', '', '2020-01-03 19:30:58', 1),
(9, 7, '43f89e389428fc46857e76630c594835', 1, '1578060105931', '2', '', '2020-01-03 19:31:46', 1),
(10, 7, '43f89e389428fc46857e76630c594835', 1, '1578060106958', '2', '', '2020-01-03 19:31:47', 1),
(11, 16, '9c0d90be987e6e2e4b1be3c3e54dab70', 100, '1578204185995', '1', '', '2020-01-05 11:33:06', 1),
(12, 18, 'c081de484347f971153d09b99edc34f7', 100, '1578204724606', '1', '', '2020-01-05 11:42:05', 1),
(13, 18, 'c081de484347f971153d09b99edc34f7', 100, '1578204763070', '1', '', '2020-01-05 11:42:43', 1),
(14, 21, '0235e418681a06b4201f7d0cb34c9191', 100, '1578311351284', '1', '', '2020-01-06 17:19:12', 1),
(15, 21, '0235e418681a06b4201f7d0cb34c9191', 100, '1578311758281', '1', '', '2020-01-06 17:25:59', 1),
(16, 16, '9c0d90be987e6e2e4b1be3c3e54dab70', 100, '1578394768379', '1', '', '2020-01-07 16:29:29', 1),
(17, 14, 'b1a44d9c890ebf22eb5736c307035e7e', 50, '1578399160980', '1', '', '2020-01-07 17:42:41', 1),
(18, 25, '30e20c4e88242e0ace7adc5c61103c26', 100, '1578416445644', '1', '', '2020-01-07 22:30:46', 1),
(19, 28, 'fe9916e2b054a85ef0302853bf169795', 50, '1578445528748', '1', '', '2020-01-08 06:35:29', 1),
(20, 18, 'c081de484347f971153d09b99edc34f7', 100, '1578465800625', '1', '', '2020-01-08 12:13:21', 1),
(21, 31, '04bccc19a05864f933e547ad0340da7a', 100, '1578471470491', '1', '', '2020-01-08 13:47:51', 1),
(22, 21, '0235e418681a06b4201f7d0cb34c9191', 100, '1578546369860', '1', '', '2020-01-09 10:36:11', 1),
(23, 14, '4a49409292445e9b9b9c712b4d8eb990', 50, '1578665252166', '1', '', '2020-01-10 19:37:35', 1),
(24, 14, '4a49409292445e9b9b9c712b4d8eb990', 0.1, '1578665366935', '1', '', '2020-01-10 19:39:28', 1),
(25, 14, '4a49409292445e9b9b9c712b4d8eb990', 0.1, '1578665394472', '1', '', '2020-01-10 19:39:55', 1),
(26, 14, '4a49409292445e9b9b9c712b4d8eb990', 0.1, '1578666338288', '1', '', '2020-01-10 19:55:39', 1),
(27, 14, '4a49409292445e9b9b9c712b4d8eb990', 0.1, '1578666358017', '1', '', '2020-01-10 19:55:58', 1),
(28, 14, '4a49409292445e9b9b9c712b4d8eb990', 0.1, '1578709587137', '1', '', '2020-01-11 07:56:29', 1),
(29, 14, '4a49409292445e9b9b9c712b4d8eb990', 0.1, '1578709618126', '1', '', '2020-01-11 07:56:58', 1),
(30, 14, '4a49409292445e9b9b9c712b4d8eb990', 0.1, '1578709649994', '1', '', '2020-01-11 07:57:31', 1),
(31, 14, '4a49409292445e9b9b9c712b4d8eb990', 1, '1578709710228', '1', '', '2020-01-11 07:58:31', 1),
(32, 21, 'edc07d681a02628ed13a89c8ce1d4c4b', 1, '1578710015972', '1', '', '2020-01-11 08:03:36', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment_data`
--

CREATE TABLE `payment_data` (
  `id` int(8) NOT NULL,
  `all_data` varchar(3000) NOT NULL,
  `modified` datetime NOT NULL,
  `flag` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_data`
--

INSERT INTO `payment_data` (`id`, `all_data`, `modified`, `flag`) VALUES
(1, 'oWI=', '2020-01-03 11:11:33', '0'),
(2, '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', '2020-01-03 11:11:38', '0'),
(3, 'oWI=', '2020-01-03 11:31:42', '0'),
(4, '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', '2020-01-03 11:31:46', '0'),
(5, 'oWI=', '2020-01-03 11:38:42', '0'),
(6, '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', '2020-01-03 11:38:47', '0'),
(7, 'oWI=', '2020-01-06 17:22:01', '0'),
(8, 'oWI=', '2020-01-10 19:39:43', '0'),
(9, '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', '2020-01-10 19:39:51', '0'),
(10, 'oWI=', '2020-01-10 19:40:07', '0'),
(11, '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', '2020-01-10 19:40:15', '0'),
(12, 'oWI=', '2020-01-10 19:55:53', '0'),
(13, 'oWI=', '2020-01-11 07:56:45', '0'),
(14, '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', '2020-01-11 07:56:57', '0'),
(15, 'oWI=', '2020-01-11 07:57:10', '0'),
(16, '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', '2020-01-11 07:57:16', '0'),
(17, 'oWI=', '2020-01-11 07:59:34', '0'),
(18, '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', '2020-01-11 07:59:39', '0'),
(19, 'oWI=', '2020-01-11 08:04:22', '0'),
(20, 'jmNzHZCgVs9odZv8B3o28fQxVHdPmnlkB7s57CQw4OJ5rvbHhtpKnLaORMYvRI3gZD40fHSYUnNDoIFmK0hEuHj2/JKN76/erSgTxKGHPaQeJWPtMJ9DXfIhLI8j7f+5bpyq1cS+0uD+wBI8sA5vMLfT+P8f9ylvBbWAQgj+lTNbp496P05AL0JPag13wBuKoYbhxsyP1T4G7Plslz4ojd0bSxi798V6f7zgFBoFYFRRe7O/LH8edRM9DQgsjj5jz8e485ombWTshwl9UjVwS06Tg796aFO6+j7Mnrj1Pm7VNU2DZg82PxIPElzgVZycU0h4dYureNwtFBMo1djeeos3Td1l3QdlwDDaozzW6F99pUgtUZ0x3I4PJqYAqbxyUHMifj1CWa6FmUaWgUBxguL8MVY72g7/+Ipm/Mz+Y//awJcZjbpdpCqrTQqu+9xHCwnTW3z+b3Vl2RTtyvl8QKijRVz8qtoRt1cezeEBytSB0vSPMp/xgzCroBNb4/163FDhFX4Ed41bV2UxK62oIGi5OEaF6Z6mn7NGFXfd1lNXZ3K26YNnjW9UwsdfVHXtXN6XdX4kfRlp3s05d/PNTVF37o8oitjSQYIfOeQs6akNm2Kii1I5IMMshxk/C0rGuqahmWJmXJBiVlSZvVd3D1ToLO8kNCjQzic4lOc7ufN0/DpH0BvlOt5e+QXVXSyL0mEzf7Wpcv8CwDq7ipq1ZUHqFUMTJlh41Q2K790m92ANp2UWhn1ZUAMuE52PK5F00f4KZn2yTDqJ3xw6/Khq9jX/zw1E86JIKtSMOTgWoFh1CNtNph/pLQugKKBP9vaa5/5YVxrs94hJTBZCQpC3783BN09ClrNMptDobhFGqUH78/I1DIeuY085stUfvrh/AKoOwKGB7FQjFx3Ks/2oxUcI5+vTnhKekfAlreMOVCbgDyJI3VaMhzmwN78myS+wf+xi1vPld2wKKCQ8a1++L3hH3qfIiR1HmPoquHVkVLmB0BZ1uPKNz6jol/OyLvxupF7w8DllGz8s+GvsHuisqqQKUFcHnQFKunWeoAtlMhnxKc4dM6Vc8P6Zrhfd9eMMCYBq0VQmXoWKGAdso/WQQEAAny5QK7wL9AKOkWx7OoPLIiDc1DrA0BoHTpj/uB+q/32Db7eApmF7XBGCnl8Q3YxjaYjcSHKWs2CspYzxneJFYKjXinrFkgpL13AdsKg27vmGWgFFcklwIgQYaCq3ZVZ/9YDtdswJpjc7Tdpm9wEEhiffRJADKtXPuuf5fb9sr4bZlxTGPMlL+aYYWQaT/wD4vcFMiybzrIMkVpFcu0F8i2neJ8pt7p/QpOw9b7TMQl6GIr8oXcn8pEqSjbPID5UR5BGUvjT11PCUplD2tceX3Xi5dRoZNoPxeQ4p5mBLWa7CKrBPtK1ZX/u9mIwiLKgWVuSeYVHkodRkTDhsR6lYeRZemO89lz6tbF2QFgryRGSERn9VZa5BY7rAnVzbJIpb8QE2fK9lMwA9BhiTadOFAC4DdfNYaztcHuO6TwYPFlsTCV951jFDm2+IlcrNbARpRolicErM88Q/c9q7yCcE+fccd3nKdUhygdaohaRxJTC/OpvP3QL2avJRcm0qvfnrn6u/9R+beuxjhZ1pz1mJrz+uX7Ma0hkxM4Nsj3UrnXNhuqSeSmaqcTPYOdXtn7EF6SmR40UZrbqJc0A8L3xMI7/OUfKZ0BUn/uPcXfKLHOugASFRmO6IitkaQ+mNc8/+JBDNJiFtLY8nKzRLoSqBAQ0AGtqeD1VcnOCC79tKIkbGzxCp9CRGjS8RKepKVxOh2OyydAgCRuEzHewCUuuO2JodWxitkVaH04smSMv4MRYnyih84lJgiFBhHbkObr9+ma+hpQEOojityL2c01B5HUymNnoY/a+GsX9EMpy+W2+C2GGegJZoTmpzT8KOR65huUSQPGiAJcPNyq4cYixuo3fZfT7bN8ycmrVOhNjwLR5vj5GOydre+LdKGqi7mQb+2j/EqojwUxRUF49eGkcef5+H5KRxTa2NZEsjPPUwugorYl4QD6zTJ6Gt+cB4/grafekK36pSqHoUHnkvPxrhklpSoHKHfRCTLXyQlr5OSiXbi8pKQc4vxHsuQy3tP70+gqWiXHE7RDruPcDia/AefFcpPUunW4rfsorhFZ4nqdSrmDpEg8/3tSxB/jYM2q2oE1efv7IU07XzCHR8J/FeHtnGsc8X3ZNykSfVgpyj5cDnZfX9oMf85os2BZVFEMpEObnMi/d+cOu4toiP6lfU62O0BLeay5+aXfdvHc3KoL8B4SzPb9NJ1DBZHlFmMfgDLSXdaVYPhVKa+IUtcMpaL1vQMpk5YfrfJ3YWD6wrlnqDiJqWenBWCOuJIuZN0egXtM2n2BhHBb/CwGHtEeJBTRJnJ3fBlysWpMW1u5XwpYKNqNe/wLIL+RLSeaJFumMtPPegCij6q+jeb/THdyIwZb8q1P7bnZ5XCho3xTPnI/95pfujLM8RIDkLIxz067rtQWPOg4ervyEn+Ap7ii+4wgmaz/TlZ4d6ljf33shMe97ZwrKwm6miMPf3+Bi+jlhMAq4Sbmv8zVsP4Hv+2snueenNk3omYkIHhEtA3lzOUhK2r5aZiCjH8v4f1n18/Lexnx9BP24AP4DBrRHWJaJpSQVlSOKTahBX3ZbD7E31DEXk+uoFPxwiSu0WekQpwvcI0laTmTHks/0VdBv8iI7d5n9hPYGQ7VoI7Mrd1/A7Dm72mWsAJYBEbNGSxfNJpAWFQxbBSJ5+cb9kI9LXg6QpenCxgYavexqguGAYNxo5QUsJZLiZJlILVZXzGKWn+Qz/JLZyBE6/hI+ZT0PID897mSkzWCMXqbPBWv8GIGQ/Lu2CKQWHZBOUCffb+Rv3YgIqvtHpVLorV25M/ckTFDkkviEneUMrStDtx310QZ7TSF6YXQAbNP2E0b7ADJsqIgXGH0mcX/MBFF2/gPoQcgHOvzQa4riXddOI', '2020-01-11 08:04:27', '0');

-- --------------------------------------------------------

--
-- Table structure for table `payment_details`
--

CREATE TABLE `payment_details` (
  `id` int(8) NOT NULL,
  `txnid` varchar(100) NOT NULL,
  `paymentId` varchar(100) NOT NULL,
  `mode` varchar(100) NOT NULL,
  `payuMoneyId` varchar(100) NOT NULL,
  `net_amount_debit` float(7,2) NOT NULL,
  `status` varchar(100) NOT NULL,
  `amount` float(7,2) NOT NULL,
  `additionalCharges` float(7,2) NOT NULL,
  `addedon` datetime NOT NULL,
  `createdOn` varchar(100) NOT NULL,
  `productinfo` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `auth_key` varchar(100) NOT NULL,
  `user_id` varchar(8) NOT NULL,
  `hash` varchar(1000) NOT NULL,
  `field1` varchar(100) NOT NULL,
  `field2` varchar(100) NOT NULL,
  `field3` varchar(100) NOT NULL,
  `field4` varchar(100) NOT NULL,
  `field5` varchar(100) NOT NULL,
  `field6` varchar(100) NOT NULL,
  `field7` varchar(100) NOT NULL,
  `field8` varchar(100) NOT NULL,
  `field9` varchar(100) NOT NULL,
  `bankcode` varchar(100) NOT NULL,
  `error` varchar(100) NOT NULL,
  `error_Message` varchar(100) NOT NULL,
  `name_on_card` varchar(100) NOT NULL,
  `cardnum` varchar(100) NOT NULL,
  `card_type` varchar(100) NOT NULL,
  `flag` int(8) NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_details`
--

INSERT INTO `payment_details` (`id`, `txnid`, `paymentId`, `mode`, `payuMoneyId`, `net_amount_debit`, `status`, `amount`, `additionalCharges`, `addedon`, `createdOn`, `productinfo`, `firstname`, `lastname`, `auth_key`, `user_id`, `hash`, `field1`, `field2`, `field3`, `field4`, `field5`, `field6`, `field7`, `field8`, `field9`, `bankcode`, `error`, `error_Message`, `name_on_card`, `cardnum`, `card_type`, `flag`, `modified`) VALUES
(1, '', '', '', '', 0.00, '', 0.00, 0.00, '0000-00-00 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-03 11:11:33'),
(2, '1578030043465', '294042425', 'CASH', '294042425', 1.00, 'success', 1.00, 0.00, '2020-01-03 11:10:56', '1578030090000', ' 1 ', 'Abhi', '', '17a2b11f9695dcabef8aae51885c8b7c', '8', 'b5a4eed7db42b2254eea60e38056ef6b6f7048403363c2d9e27269a3d7db355f387b4e10edda9b22be77c9f5895e6ec808a6fb440058a72b10446ba9fbe4a6a7', '2020-01-03 11:10:57.0', '20200103111212800110168690305801814', '9606010223', '', '', '', '', '', 'Txn Success', 'PAYTM', 'E000', 'No Error', '', '', '', 0, '2020-01-03 11:11:38'),
(3, '', '', '', '', 0.00, '', 0.00, 0.00, '0000-00-00 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-03 11:31:42'),
(4, '1578031257481', '294048188', 'CASH', '294048188', 1.00, 'success', 1.00, 0.00, '2020-01-03 11:31:11', '1578031298000', ' 2 ', 'Abhi', '', 'fd1c9a1a5cb222bbb823de9ba99917c9', '6', '877713865840d13c3863289c0ec771bfa07b64b816fb5e997e5f4d71281dc158f17d0f28f310439505c5a5db08229eb4c36d3e0e67a5e3604385876118f07737', '2020-01-03 11:31:13.0', '20200103111212800110168164506098807', '9606146527', '', '', '', '', '', 'Txn Success', 'PAYTM', 'E000', 'No Error', '', '', '', 0, '2020-01-03 11:31:46'),
(5, '', '', '', '', 0.00, '', 0.00, 0.00, '0000-00-00 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-03 11:38:42'),
(6, '1578031686677', '294050252', 'CASH', '294050252', 1.00, 'success', 1.00, 0.00, '2020-01-03 11:38:17', '1578031720000', ' 3 ', 'Abcd', '', '0bc829468bc4aefc3b17614e16d3bf98', '9', 'c7f3bf8f656729701ea6f3affe6029e99b8e758bf22915d9f68ff5d16e98dbfe5a002c2031a0b4db26d801d04f9a1c64ded6caa56af1b0b14134db95c2e72441', '2020-01-03 11:38:19.0', '20200103111212800110168869205906567', '9606195703', '', '', '', '', '', 'Txn Success', 'PAYTM', 'E000', 'No Error', '', '', '', 0, '2020-01-03 11:38:47'),
(7, '', '', '', '', 0.00, '', 0.00, 0.00, '0000-00-00 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-06 17:22:01'),
(8, '1578665366935', '295640638', 'CASH', '295640638', 0.00, 'failure', 0.10, 0.00, '2020-01-10 19:39:38', '1578665379000', ' 1 ', 'Laki', '', '4a49409292445e9b9b9c712b4d8eb990', '14', '73033d0f4f27b126032ffd9037d79e3853ec4cbfe12ca5d66cdeba5940cf5a8dbdc538f6e6ca57a4b9a287b4e31aaf56019fe5a53d10bf8ee32d72964ed2807a', '', '', '', '', '', '', '', 'Received error while generating token', 'Error at the Bank Server end', 'PAYTM', 'E208', 'Error at the Bank Server end', '', '', '', 0, '2020-01-10 19:39:51'),
(9, '1578665394472', '295640708', 'CASH', '295640708', 0.00, 'failure', 0.10, 0.00, '2020-01-10 19:40:03', '1578665404000', ' 1 ', 'Laki', '', '4a49409292445e9b9b9c712b4d8eb990', '14', 'd56b0e7eaa836717da6358b30238bb77e6079c2cae59483315db75d5bfdf7909764dd668ae327478bbb1fab10a5d8cb896a9ea927c12994ea24a81c6c9edbb7a', '', '', '', '', '', '', '', 'Received error while generating token', 'Error at the Bank Server end', 'PAYTM', 'E208', 'Error at the Bank Server end', '', '', '', 0, '2020-01-10 19:40:15'),
(10, '1578709587137', '295699417', 'CASH', '295699417', 0.00, 'failure', 0.10, 0.00, '2020-01-11 07:56:41', '1578709602000', ' 1 ', 'Laki', '', '4a49409292445e9b9b9c712b4d8eb990', '14', 'f437f744892f9bc44cf25f5d302e05ac108939f4074f56416ae753490c55dcba5b7443e3062b7dab3173bd45c451269a3dbe2e960429b51249a4ee78bdc2f4eb', '', '', '', '', '', '', '', 'Received error while generating token', 'Error at the Bank Server end', 'PAYTM', 'E208', 'Error at the Bank Server end', '', '', '', 0, '2020-01-11 07:56:57'),
(11, '1578709618126', '295699440', 'CASH', '295699440', 0.00, 'failure', 0.10, 0.00, '2020-01-11 07:57:07', '1578709627000', ' 1 ', 'Laki', '', '4a49409292445e9b9b9c712b4d8eb990', '14', 'f31a44ce8f2077523d621a369e1cce63601eedb6b0142e79e72755ac401bada4f783ea6aab8337c50df437258d7e3faf71a96d5ea7b2af6df4b04d3892a5ed68', '', '', '', '', '', '', '', 'Received error while generating token', 'Error at the Bank Server end', 'PAYTM', 'E208', 'Error at the Bank Server end', '', '', '', 0, '2020-01-11 07:57:16'),
(12, '', '', '', '', 0.00, '', 0.00, 0.00, '0000-00-00 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-11 07:59:34'),
(13, '1578709710228', '295699567', 'CASH', '295699567', 1.00, 'success', 1.00, 0.00, '2020-01-11 07:58:41', '1578709771000', ' 1 ', 'Laki', '', '4a49409292445e9b9b9c712b4d8eb990', '14', '3d2b1ce73ebe8241fc39c7536a892b84494bd7a21224a94051088820ab3f189ff236f33b73feafd5a87ebc35053477ae3f004faa78fe162b1214fe5444df6fe6', '2020-01-11 07:58:43.0', '20200111111212800110168892507139722', '9654236765', '', '', '', '', '', 'Txn Success', 'PAYTM', 'E000', 'No Error', '', '', '', 0, '2020-01-11 07:59:39'),
(14, '', '', '', '', 0.00, '', 0.00, 0.00, '0000-00-00 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-11 08:04:22'),
(15, '1578710015972', '295700110', 'CASH', '295700110', 1.00, 'success', 1.00, 0.00, '2020-01-11 08:03:45', '1578710058000', ' 1 ', 'Guddu', '', 'edc07d681a02628ed13a89c8ce1d4c4b', '21', 'b0709ee1eef4d8a64bef00e81b033ba0cbfdb2fab6a5cd2b8b66a48c6f83d4cb0dd0a60b05d93525266557730957e868a088253e5e00309b98c1cffc1a77ced3', '2020-01-11 08:03:47.0', '20200111111212800110168193007936035', '9654250723', '', '', '', '', '', 'Txn Success', 'PAYTM', 'E000', 'No Error', '', '', '', 0, '2020-01-11 08:04:27');

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
(1, 1, 'pdf_20200102175430_0.pdf', '../pdf/pdf_20200102175430_0.pdf', '2020-01-03 09:27:40', 0),
(2, 2, 'pdf_20200103110619_0.pdf', '../pdf/pdf_20200103110619_0.pdf', '2020-01-03 11:21:34', 0),
(3, 3, 'pdf_20200103112556_0.docx', '../pdf/pdf_20200103112556_0.docx', '2020-01-04 19:52:05', 0),
(4, 4, 'pdf_20200103112857_0.docx', '../pdf/pdf_20200103112857_0.docx', '2020-01-03 20:16:04', 0),
(5, 5, 'pdf_20200103113639_0.docx', '../pdf/pdf_20200103113639_0.docx', '2020-01-04 19:52:07', 0),
(6, 6, 'pdf_20200103114415_0.pdf', '../pdf/pdf_20200103114415_0.pdf', '2020-01-04 19:52:10', 0),
(7, 9, 'pdf_20200104200730_0.pdf', '../pdf/pdf_20200104200730_0.pdf', '0000-00-00 00:00:00', 1);

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
  `referral_code` varchar(15) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `active` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `user_id`, `first_name`, `last_name`, `email`, `contact`, `address`, `profile_pic`, `referral_code`, `created`, `modified`, `active`) VALUES
(1, 1, 'Abhi', 'Singh ', 'abhisingh12111998@gmail.com', '8581810321', 'Malhipur', NULL, 'F7QRXW', '2020-01-02 17:55:21', '2020-01-03 09:25:57', 0),
(2, 2, 'Laxman', 'Kumar', 'qgabhi@gmail.com', '8581810321', 'Malhipur', NULL, 'X039HD', '2020-01-02 17:58:07', '2020-01-03 09:25:50', 0),
(3, 3, 'Akbar', 'Ali', 'akbar1991ali@yahoo.com', '9852751085', 'Begusarai', NULL, '7L0J9N', '2020-01-02 18:26:23', '2020-01-02 18:26:23', 1),
(4, 4, 'Suman', 'Raj', 'sumanrajinbox@gmail.com', '7979044783', 'Banglore', NULL, '102VBG', '2020-01-02 18:53:00', '2020-01-02 18:53:00', 1),
(5, 5, 'Laxman', 'Kumar', 'abc@gmail.com', '8581810321', 'Bihat', NULL, '6861NZ', '2020-01-02 21:48:46', '2020-01-03 09:25:44', 0),
(6, 6, 'Abhi', 'Singh', 'qgabhi@gmail.com', '8581810321', 'Malhipur,851116, Begusarai,Bihar', NULL, 'NAT0G4', '2020-01-03 09:33:01', '2020-01-03 20:18:07', 0),
(7, 7, 'Guddu', 'Kumar', 'gudduroy1112@gmail.com', '7281972590', 'Chakiya,btps,851116', NULL, 'A9HMTF', '2020-01-03 10:44:07', '2020-01-03 20:18:12', 0),
(8, 8, 'Abhi', 'Singh', 'abc@gmail.com', '8581810321', 'Malhipur', NULL, 'W03BLZ', '2020-01-03 11:07:51', '2020-01-04 19:53:04', 0),
(9, 9, 'Abcd', 'Kumar', 'abcd@gmail.com', '8581810321', 'Ghfhj', NULL, '91LF8Q', '2020-01-03 11:37:44', '2020-01-04 19:53:10', 0),
(10, 10, 'Abhi', 'Singh', 'qgabhi@gmail.com', '8581810321', 'Malhipur', NULL, 'I61L0Z', '2020-01-03 20:18:50', '2020-01-04 19:53:16', 0),
(11, 11, 'Kishan', 'Kumar', 'kishanyadav8709258042@gmail.com', '8709258042', 'Kasha', NULL, 'Y6R7O1', '2020-01-03 20:54:01', '2020-01-03 20:54:01', 1),
(12, 12, 'Kanchan', 'kumari', 'kanchankri15feb@gmail.com', '+449172580', 'malhipur', NULL, '180RJS', '2020-01-04 08:11:41', '2020-01-04 08:11:41', 1),
(13, 13, 'Ravi', 'Raj', 'kunalkishor453@gmail.com', '7992343146', 'Chkia', NULL, '8N2E5Q', '2020-01-04 11:18:11', '2020-01-04 11:18:11', 1),
(14, 14, 'Laki', 'Singh', 'abc@gmail.com', '8581810321', 'Malhipur', NULL, 'D8LGZW', '2020-01-04 20:10:52', '2020-01-04 20:10:52', 1),
(15, 15, 'Abhi', 'Singh', 'abcd@gmail.com', '7766833918', 'Malhipur', NULL, 'N1UPBM', '2020-01-04 20:11:48', '2020-01-04 20:11:48', 1),
(16, 16, 'Kishan', 'Raj', 'kishanraj851126@gmail.com', '8709258042', 'Kasha', NULL, '9CXE8R', '2020-01-05 01:41:11', '2020-01-05 01:41:11', 1),
(17, 17, 'Kishan', 'Raj', 'kishanraj851126@gmail.co', '8709258042', 'Kasha', NULL, '1X3H49', '2020-01-05 11:32:28', '2020-01-05 11:32:28', 1),
(18, 18, 'Uttam', 'Kumar', 'uttamkumaruk469610@gmail.com', '6209718926', 'Amai Kazi Tola Hasan Bazar Bhojpur', NULL, '8I77QW', '2020-01-05 11:40:30', '2020-01-05 11:40:30', 1),
(19, 19, 'Saurav', 'Vidut', '6204555641.sauravkumar@gmail.com', '6204555641', 'Kasha', NULL, '2RA160', '2020-01-05 13:25:33', '2020-01-05 13:25:33', 1),
(20, 20, 'Jatan', 'Kumar', 'jatankumarjk7@gmail.com', '6201511479', 'Vill-Chakia, Malhipur, Dist-Begusarai,State-Bihar', NULL, 'Q8KP89', '2020-01-05 22:17:55', '2020-01-05 22:17:55', 1),
(21, 21, 'Guddu', 'Kumar', 'gudduroy1112@gmail.com', '7281972590', 'Chakiya,851116', NULL, 'DXGR1E', '2020-01-06 17:19:02', '2020-01-06 17:19:02', 1),
(22, 22, 'ABHISHEK ', 'Kumar ', 'abhshekk0101@gmail.com', '6205966330', 'Rachiyahi ', NULL, '1L4I21', '2020-01-07 11:26:57', '2020-01-07 11:26:57', 1),
(23, 23, 'Nitesh', 'Raj', 'niteshraj119n@gmail.com', '7352694120', 'Sasana', NULL, 'F3518A', '2020-01-07 13:15:13', '2020-01-07 13:15:13', 1),
(24, 24, 'Nitesh', 'Raj', 'bantikr7352@gmail.com', '7352694120', 'Sasana', NULL, '883HMJ', '2020-01-07 13:19:05', '2020-01-07 13:19:05', 1),
(25, 25, 'Pushpraj', 'KUMAR', 'prkraj05@gmail.com', '+191790362', 'Chanan Bindtoli', NULL, 'T2AEWG', '2020-01-07 22:30:34', '2020-01-07 22:30:34', 1),
(26, 26, 'Saurav', 'vidut', 'saurabhvidut@gmail.com', '6204555641', 'Kasha', NULL, 'TKR7YQ', '2020-01-07 22:36:27', '2020-01-07 22:36:27', 1),
(27, 27, 'Saurav', 'vidut', 'sauravkumar@gmail.com', '6204555641', 'Kasha', NULL, 'KLMGFW', '2020-01-07 22:42:26', '2020-01-07 22:42:26', 1),
(28, 28, 'Manish', 'Kumar', 'zxaditya3978@gmail.com', '8404843024', 'Begusarai', NULL, 'H7D401', '2020-01-08 06:35:01', '2020-01-08 06:35:01', 1),
(29, 29, 'Ransh ', 'Roy', 'ranshroy858@gmail.com', '9709895137', 'Barauni', NULL, 'O514Q0', '2020-01-08 06:52:10', '2020-01-08 06:52:10', 1),
(30, 30, 'Ashutosh', 'Raj', 'rajashutosh797@gmail.com', '9122953228', 'At- Chakiya Begusarai', NULL, '2DASZ0', '2020-01-08 10:44:56', '2020-01-08 10:44:56', 1),
(31, 31, 'Jatn', 'Kumar', 'jatankumarji@gmail.com', '6201511479', 'Vill - Chakia,Malhipur, Dist - Begusarai,Bihar', NULL, 'MO9N47', '2020-01-08 13:46:58', '2020-01-08 13:46:58', 1),
(32, 32, 'Anshu ', 'Kumar', 'anshu6206234571@gmail.com', '8298594324', 'Naya Tola Sahebpur .  District-begusrai', NULL, 'RKL6Y1', '2020-01-08 17:31:07', '2020-01-08 17:33:00', 0),
(33, 33, 'Anshu', 'Kumar', 'anshu6206234571@gmail.com', '8298594324', 'Sahebpurkamal Naya Tola ', NULL, '4726S0', '2020-01-08 17:33:07', '2020-01-08 17:33:07', 1),
(34, 34, 'Mihir', 'Raj', 'Mihirraj123@gmail.com', '7004051445', 'Kasha', NULL, 'R18I8M', '2020-01-09 21:17:58', '2020-01-09 21:17:58', 1);

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
-- Table structure for table `student_result`
--

CREATE TABLE `student_result` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title_id` int(11) NOT NULL,
  `video_id` int(8) NOT NULL,
  `total_question` int(11) NOT NULL,
  `total_answer` int(11) NOT NULL,
  `correct` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `status` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student_result`
--

INSERT INTO `student_result` (`id`, `user_id`, `title_id`, `video_id`, `total_question`, `total_answer`, `correct`, `wrong`, `modified`, `status`) VALUES
(1, 8, 0, 2, 5, 5, 4, 1, '2020-01-03 11:15:43', 1),
(2, 19, 0, 10, 10, 10, 10, 0, '2020-01-09 01:46:12', 1),
(3, 33, 0, 10, 10, 10, 9, 1, '2020-01-08 17:55:30', 1),
(4, 14, 0, 9, 17, 17, 16, 1, '2020-01-11 08:00:43', 1);

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
(1, 'Hindi', 1, '2019-2020', '2020-01-03 11:21:15', 0, 1),
(2, 'Hindi', 4, '2019-2020', '2020-01-03 11:21:11', 0, 1),
(3, 'Hindi', 4, '2019-2020', '2020-01-04 19:50:23', 0, 1),
(4, 'Hindi', 7, '2019-2020', '2020-01-03 20:14:57', 0, 2),
(5, 'Hindi', 5, '2019-2020', '2020-01-04 19:50:26', 0, 3),
(6, 'HINDI', 5, '2019-2020', '2020-01-04 19:50:27', 0, 1),
(7, 'Hindi', 7, '2019-2020', '2020-01-04 19:50:31', 0, 1),
(8, 'Hindi 1', 5, '2019-2020', '2020-01-04 19:50:30', 0, 2),
(9, 'Hindi', 8, '2019-2020', '2020-01-04 19:56:23', 1, 1),
(10, 'Hindi', 9, '2019-2020', '2020-01-04 20:12:43', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `submit_exam`
--

CREATE TABLE `submit_exam` (
  `id` int(11) NOT NULL,
  `title_id` int(11) NOT NULL,
  `video_id` int(8) NOT NULL,
  `user_id` int(8) NOT NULL,
  `question_id` int(8) NOT NULL,
  `answer` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `modified` datetime NOT NULL,
  `status` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `submit_exam`
--

INSERT INTO `submit_exam` (`id`, `title_id`, `video_id`, `user_id`, `question_id`, `answer`, `modified`, `status`) VALUES
(1, 0, 2, 8, 1, '2', '2020-01-03 11:15:43', 1),
(2, 0, 2, 8, 2, '1', '2020-01-03 11:15:43', 1),
(3, 0, 2, 8, 3, '2', '2020-01-03 11:15:43', 1),
(4, 0, 2, 8, 4, '4', '2020-01-03 11:15:43', 1),
(5, 0, 2, 8, 5, '4', '2020-01-03 11:15:43', 1),
(6, 0, 10, 19, 14, '4', '2020-01-09 01:46:12', 1),
(7, 0, 10, 19, 15, '1', '2020-01-09 01:46:12', 1),
(8, 0, 10, 19, 16, '4', '2020-01-09 01:46:12', 1),
(9, 0, 10, 19, 18, '3', '2020-01-09 01:46:12', 1),
(10, 0, 10, 19, 23, '1', '2020-01-09 01:46:12', 1),
(11, 0, 10, 19, 25, '2', '2020-01-09 01:46:12', 1),
(12, 0, 10, 19, 27, '1', '2020-01-09 01:46:12', 1),
(13, 0, 10, 19, 29, '1', '2020-01-09 01:46:12', 1),
(14, 0, 10, 19, 30, '4', '2020-01-09 01:46:12', 1),
(15, 0, 10, 19, 31, '1', '2020-01-09 01:46:12', 1),
(16, 0, 10, 33, 14, '4', '2020-01-08 17:55:30', 1),
(17, 0, 10, 33, 15, '1', '2020-01-08 17:55:30', 1),
(18, 0, 10, 33, 16, '2', '2020-01-08 17:55:30', 1),
(19, 0, 10, 33, 18, '3', '2020-01-08 17:55:30', 1),
(20, 0, 10, 33, 23, '1', '2020-01-08 17:55:30', 1),
(21, 0, 10, 33, 25, '2', '2020-01-08 17:55:30', 1),
(22, 0, 10, 33, 27, '1', '2020-01-08 17:55:30', 1),
(23, 0, 10, 33, 29, '1', '2020-01-08 17:55:30', 1),
(24, 0, 10, 33, 30, '4', '2020-01-08 17:55:30', 1),
(25, 0, 10, 33, 31, '1', '2020-01-08 17:55:30', 1),
(26, 0, 9, 14, 6, '1', '2020-01-11 08:00:43', 1),
(27, 0, 9, 14, 7, '3', '2020-01-11 08:00:43', 1),
(28, 0, 9, 14, 8, '2', '2020-01-11 08:00:43', 1),
(29, 0, 9, 14, 9, '4', '2020-01-11 08:00:43', 1),
(30, 0, 9, 14, 10, '2', '2020-01-11 08:00:43', 1),
(31, 0, 9, 14, 11, '2', '2020-01-11 08:00:43', 1),
(32, 0, 9, 14, 12, '4', '2020-01-11 08:00:43', 1),
(33, 0, 9, 14, 13, '2', '2020-01-11 08:00:43', 1),
(34, 0, 9, 14, 17, '1', '2020-01-11 08:00:43', 1),
(35, 0, 9, 14, 19, '2', '2020-01-11 08:00:43', 1),
(36, 0, 9, 14, 20, '3', '2020-01-11 08:00:43', 1),
(37, 0, 9, 14, 21, '3', '2020-01-11 08:00:43', 1),
(38, 0, 9, 14, 22, '2', '2020-01-11 08:00:43', 1),
(39, 0, 9, 14, 24, '3', '2020-01-11 08:00:43', 1),
(40, 0, 9, 14, 26, '2', '2020-01-11 08:00:43', 1),
(41, 0, 9, 14, 28, '1', '2020-01-11 08:00:43', 1),
(42, 0, 9, 14, 32, '3', '2020-01-11 08:00:43', 1);

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
(1, 1, '../thumb/thumb_20200102175424_0.jpg', 0, '2020-01-03 09:27:40'),
(2, 2, '../thumb/thumb_20200103110616_0.jpg', 0, '2020-01-03 11:21:34'),
(3, 3, '../thumb/thumb_20200103112542_0.jpg', 0, '2020-01-04 19:52:05'),
(4, 4, '../thumb/thumb_20200103112850_0.jpg', 0, '2020-01-03 20:16:04'),
(5, 5, '../thumb/thumb_20200103113550_0.jpg', 0, '2020-01-04 19:52:07'),
(6, 6, '../thumb/thumb_20200103114405_0.jpg', 0, '2020-01-04 19:52:10'),
(7, 7, '../thumb/thumb_20200103202339_0.jpg', 0, '2020-01-04 19:52:12'),
(8, 8, '../thumb/thumb_20200104180008_0.jpg', 0, '2020-01-04 19:52:14'),
(9, 9, '../thumb/thumb_20200104200723_0.jpg', 1, '0000-00-00 00:00:00'),
(10, 10, '../thumb/thumb_20200104201613_0.jpg', 1, '0000-00-00 00:00:00');

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
(1, 'abhisingh12111998@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2020-01-02 17:55:21', '2020-01-03 16:25:57', 0),
(2, 'qgabhi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2020-01-02 17:58:07', '2020-01-03 16:25:50', 0),
(3, 'akbar1991ali@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', '2020-01-02 18:26:23', '2020-01-03 01:26:23', 1),
(4, 'sumanrajinbox@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2020-01-02 18:53:00', '2020-01-03 01:53:00', 1),
(5, 'abc@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2020-01-02 21:48:46', '2020-01-03 16:25:44', 0),
(6, 'qgabhi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2020-01-03 09:33:01', '2020-01-04 03:18:07', 0),
(7, 'gudduroy1112@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2020-01-03 10:44:07', '2020-01-04 03:18:12', 0),
(8, 'abc@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2020-01-03 11:07:51', '2020-01-05 02:53:04', 0),
(9, 'abcd@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2020-01-03 11:37:44', '2020-01-05 02:53:10', 0),
(10, 'qgabhi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2020-01-03 20:18:50', '2020-01-05 02:53:16', 0),
(11, 'kishanyadav8709258042@gmail.com', '3e43d387367068631282049e28a63aeb', '2020-01-03 20:54:01', '2020-01-04 03:54:01', 1),
(12, 'kanchankri15feb@gmail.com', '358c850b3836ae02b1d8b319d86d435f', '2020-01-04 08:11:41', '2020-01-04 15:11:41', 1),
(13, 'kunalkishor453@gmail.com', '6fa95a05ec8d85327a5dc24a984156ab', '2020-01-04 11:18:11', '2020-01-04 18:18:11', 1),
(14, 'abc@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2020-01-04 20:10:52', '2020-01-05 03:10:52', 1),
(15, 'abcd@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2020-01-04 20:11:48', '2020-01-05 03:11:48', 1),
(16, 'kishanraj851126@gmail.com', 'd461af8383a60793587b6a1cdb0f2bdd', '2020-01-05 01:41:11', '2020-01-05 08:41:11', 1),
(17, 'kishanraj851126@gmail.co', 'd461af8383a60793587b6a1cdb0f2bdd', '2020-01-05 11:32:28', '2020-01-05 18:32:28', 1),
(18, 'uttamkumaruk469610@gmail.com', '88865f898802ca9c30c6229f32024622', '2020-01-05 11:40:30', '2020-01-05 18:40:30', 1),
(19, '6204555641.sauravkumar@gmail.com', '2f290b81a08bb82fcadd10147aca8ad8', '2020-01-05 13:25:33', '2020-01-05 20:25:33', 1),
(20, 'jatankumarjk7@gmail.com', '63b9010a523471ac0ef31242aed3474e', '2020-01-05 22:17:55', '2020-01-06 05:17:55', 1),
(21, 'gudduroy1112@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2020-01-06 17:19:02', '2020-01-07 00:19:02', 1),
(22, 'abhshekk0101@gmail.com', '27f230443117773d916582f02489768e', '2020-01-07 11:26:57', '2020-01-07 18:26:57', 1),
(23, 'niteshraj119n@gmail.com', '8af95fe2ab1a54b488ef8efb3f3b0797', '2020-01-07 13:15:13', '2020-01-07 20:15:13', 1),
(24, 'bantikr7352@gmail.com', '8af95fe2ab1a54b488ef8efb3f3b0797', '2020-01-07 13:19:05', '2020-01-07 20:19:05', 1),
(25, 'prkraj05@gmail.com', 'bfcb36b99d4ff6145ee816a8acea5c80', '2020-01-07 22:30:34', '2020-01-08 05:30:34', 1),
(26, 'saurabhvidut@gmail.com', '2f290b81a08bb82fcadd10147aca8ad8', '2020-01-07 22:36:27', '2020-01-08 05:36:27', 1),
(27, 'sauravkumar@gmail.com', '2f290b81a08bb82fcadd10147aca8ad8', '2020-01-07 22:42:26', '2020-01-08 05:42:26', 1),
(28, 'zxaditya3978@gmail.com', 'ee92b6d2e6de843aef97fd22e8cc0c77', '2020-01-08 06:35:01', '2020-01-08 13:35:01', 1),
(29, 'ranshroy858@gmail.com', 'ee92b6d2e6de843aef97fd22e8cc0c77', '2020-01-08 06:52:10', '2020-01-08 13:52:10', 1),
(30, 'rajashutosh797@gmail.com', '21cfc8d5eab083340088feed15c2664f', '2020-01-08 10:44:56', '2020-01-08 17:44:56', 1),
(31, 'jatankumarji@gmail.com', '6e606497e5349634a111c8ffb4f56b08', '2020-01-08 13:46:58', '2020-01-08 20:46:58', 1),
(32, 'anshu6206234571@gmail.com', '2d8d05db0393260de39cf013e8b53946', '2020-01-08 17:31:07', '2020-01-09 00:33:00', 0),
(33, 'anshu6206234571@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2020-01-08 17:33:07', '2020-01-09 00:33:07', 1),
(34, 'Mihirraj123@gmail.com', '3e43d387367068631282049e28a63aeb', '2020-01-09 21:17:58', '2020-01-10 04:17:58', 1);

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
(1, 1, 1, 1, 1, '19-20', 'à¤¶à¥à¤°à¤® à¤µà¤¿à¤­à¤¾à¤œà¤¨ à¤”à¤° à¤œà¤¾à¤¤à¤¿ à¤ªà¥à¤°à¤¥à¤¾ ', 'video_20200102175424_0.mp4', 'à¤¶à¥à¤°à¤® à¤µà¤¿à¤­à¤¾à¤œà¤¨ à¤”à¤° à¤œà¤¾à¤¤à¤¿ à¤ªà¥à¤°à¤¥à¤¾ ', '../video/video_20200102175424_0.mp4', '0000-00-00 00:00:00', 0),
(2, 4, 2, 2, 1, '19-20', 'à¤¶à¥à¤°à¤® à¤µà¤¿à¤­à¤¾à¤œà¤¨ à¤”à¤° à¤œà¤¾à¤¤à¤¿ à¤ªà¥à¤°à¤¥à¤¾ ', 'video_20200103110616_0.mp4', 'à¤¶à¥à¤°à¤® à¤µà¤¿à¤­à¤¾à¤œà¤¨ à¤”à¤° à¤œà¤¾à¤¤à¤¿ à¤ªà¥à¤°à¤¥à¤¾ ', '../video/video_20200103110616_0.mp4', '0000-00-00 00:00:00', 0),
(3, 4, 3, 3, 1, '19-20', 'à¤•à¤¾à¤°à¤• ', 'video_20200103112542_0.mp4', 'à¤•à¤¾à¤°à¤• ', '../video/video_20200103112542_0.mp4', '0000-00-00 00:00:00', 0),
(4, 7, 4, 4, 2, '19-20', 'à¤•à¤¾à¤°à¤• ', 'video_20200103112850_0.mp4', 'à¤•à¤¾à¤°à¤• ', '../video/video_20200103112850_0.mp4', '0000-00-00 00:00:00', 0),
(5, 5, 5, 5, 3, '19-20', 'à¤¸à¤®à¤¾à¤¸ ', 'video_20200103113550_0.mp4', 'à¤¸à¤®à¤¾à¤¸ ', '../video/video_20200103113550_0.mp4', '0000-00-00 00:00:00', 0),
(6, 5, 6, 6, 1, '19-20', 'à¤µà¤¿à¤¶à¥‡à¤·à¤£ ', 'video_20200103114405_0.mp4', 'à¤µà¤¿à¤¶à¥‡à¤·à¤£ ', '../video/video_20200103114405_0.mp4', '0000-00-00 00:00:00', 0),
(7, 7, 7, 7, 1, '19-20', 'à¤—à¥‹à¤§à¥à¤²à¥€ (chapter 1 to 3)', 'video_20200103202339_0.mp4', 'à¤—à¥‹à¤§à¥à¤²à¥€ (chapter 1 to 3)', '../video/video_20200103202339_0.mp4', '0000-00-00 00:00:00', 0),
(8, 5, 8, 8, 2, '19-20', 'à¤²à¤•à¥à¤·à¥à¤®à¤£', 'video_20200104180008_0.mp4', 'à¤²à¤•à¥à¤·à¥à¤®à¤£', '../video/video_20200104180008_0.mp4', '0000-00-00 00:00:00', 0),
(9, 8, 9, 10, 1, '19-20', 'à¤¦à¤¹à¥€ à¤µà¤¾à¤²à¥€ à¤®à¤‚à¤—à¤®à¥à¤®à¤¾ ', 'video_20200104200723_0.mp4', 'à¤¦à¤¹à¥€ à¤µà¤¾à¤²à¥€ à¤®à¤‚à¤—à¤®à¥à¤®à¤¾ ', '../video/video_20200104200723_0.mp4', '0000-00-00 00:00:00', 1),
(10, 9, 10, 11, 1, '19-20', 'à¤—à¥‹à¤§à¥à¤²à¥€ (chapter 1 To 3 )', 'video_20200104201613_0.mp4', 'à¤—à¥‹à¤§à¥à¤²à¥€ (chapter 1 To 3 )', '../video/video_20200104201613_0.mp4', '0000-00-00 00:00:00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_forgot`
--
ALTER TABLE `admin_forgot`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_data`
--
ALTER TABLE `payment_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_details`
--
ALTER TABLE `payment_details`
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
-- Indexes for table `referral_code`
--
ALTER TABLE `referral_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_result`
--
ALTER TABLE `student_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submit_exam`
--
ALTER TABLE `submit_exam`
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
-- AUTO_INCREMENT for table `admin_forgot`
--
ALTER TABLE `admin_forgot`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth`
--
ALTER TABLE `auth`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `chapter`
--
ALTER TABLE `chapter`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `course_details`
--
ALTER TABLE `course_details`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `exam_question_setup`
--
ALTER TABLE `exam_question_setup`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `exam_title_master`
--
ALTER TABLE `exam_title_master`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_user_log`
--
ALTER TABLE `exam_user_log`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fee`
--
ALTER TABLE `fee`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `forgot_password`
--
ALTER TABLE `forgot_password`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `payment_data`
--
ALTER TABLE `payment_data`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `payment_details`
--
ALTER TABLE `payment_details`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pdf`
--
ALTER TABLE `pdf`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `referral_code`
--
ALTER TABLE `referral_code`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_result`
--
ALTER TABLE `student_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `submit_exam`
--
ALTER TABLE `submit_exam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `thumb`
--
ALTER TABLE `thumb`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
