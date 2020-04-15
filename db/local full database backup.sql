-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2019 at 11:19 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

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
(1, 1, 'sdf3456345', 'asdf8768dfmb', 'dfd5b89c8e2fb02ceda3ddcdefa00f8c', '2019-08-01 12:10:17', 1),
(2, 2, '', '', 'eab4bdec820630dca1667a301505dd33', '2019-07-03 00:35:34', 1),
(3, 3, '', '', 'd03d83a7d93819b1d47a65146f6ba53d', '2019-07-08 17:38:02', 0),
(4, 4, '', '', '67e0b381e5b5bdc4d7025870a9c4d8e6', '2019-07-08 19:10:14', 1),
(5, 5, '', '', '1de9f88d2f8e7e87238552e36e06863a', '2019-07-03 09:37:14', 1),
(6, 6, 'sdf3456345', 'asdf8768dfmb', 'a69ce3fbe88c490709095c4372d31887', '2019-07-03 08:54:11', 1),
(106, 1, 'sdf3456345', 'asdf8768dfmb', '27735cfd9e6ac05d201f3d04814909f6', '2019-08-01 12:10:17', 1);

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
(1, 1, 1, 1, 'chapter 13', '2019-07-25 01:26:16', 1),
(2, 5, 1, 3, 'chapter 14', '2019-07-25 01:31:48', 1),
(3, 4, 1, 4, 'chapter 15', '2019-07-25 01:33:47', 1),
(4, 6, 1, 4, 'chapter 16', '2019-07-25 01:34:19', 1),
(5, 4, 1, 2, 'chapter 17', '2019-07-25 01:35:45', 1),
(6, 4, 1, 5, 'chapter 18', '2019-07-25 01:37:21', 1),
(7, 3, 1, 1, 'chapter 19', '2019-07-25 11:09:14', 1),
(8, 1, 1, 4, 'chapter 20', '2019-07-25 11:10:37', 1),
(9, 1, 1, 4, 'chapter 21', '2019-07-25 15:26:40', 1),
(10, 5, 1, 4, 'chapter 22', '2019-07-25 16:08:43', 1),
(33, 3, 1, 2, 'chapter 23', '2019-07-25 16:40:03', 1),
(34, 2, 1, 3, 'chapter 24', '2019-07-25 16:44:14', 1),
(35, 1, 2, 2, 'chapter 25', '2019-07-27 23:00:31', 1);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` int(3) NOT NULL,
  `name` varchar(12) COLLATE utf8_bin NOT NULL,
  `session` varchar(12) COLLATE utf8_bin NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
(1, 1, 1, 2, 2, 1, '2019-08-22 06:00:00', 1),
(2, 1, 2, 3, 3, 1, '2019-08-22 06:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `exam_question_setup`
--

CREATE TABLE `exam_question_setup` (
  `id` int(8) NOT NULL,
  `title_id` int(8) NOT NULL,
  `class_id` int(8) NOT NULL,
  `question` varchar(3000) NOT NULL,
  `option1` varchar(2000) NOT NULL,
  `option2` varchar(2000) NOT NULL,
  `option3` varchar(2000) NOT NULL,
  `option4` varchar(2000) NOT NULL,
  `flag` int(8) NOT NULL,
  `answer` varchar(12) NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_question_setup`
--

INSERT INTO `exam_question_setup` (`id`, `title_id`, `class_id`, `question`, `option1`, `option2`, `option3`, `option4`, `flag`, `answer`, `modified`) VALUES
(1, 1, 1, '1 question demo ?', 'option a', 'option b', 'option c', 'option d', 1, 'c', '2019-07-24 07:00:00'),
(2, 1, 1, '2 question demo ?', 'option a', 'option b', 'option c', 'option d', 1, 'd', '2019-07-24 07:00:00'),
(3, 1, 1, 'question demo text?', 'option a', 'option b', 'option c', 'option d', 1, 'a', '2019-08-12 05:36:20');

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

--
-- Dumping data for table `exam_setup`
--

INSERT INTO `exam_setup` (`id`, `title_id`, `start_time`, `end_time`, `modified`, `status`) VALUES
(1, 1, '2019-08-22 06:00:00', '2019-08-22 08:20:00', '2019-08-12 01:51:50', 1),
(2, 2, '2019-08-04 00:00:00', '2019-08-15 02:00:00', '2019-08-12 00:00:00', 1);

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
(1, 'demo tite name 1', '2019-08-12 00:00:00', 1),
(2, 'demo tite name 2', '2019-08-13 00:00:00', 1),
(3, 'demo title text 1', '2019-08-12 00:12:57', 1);

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
(12, 4, 8, 50.00, '2019-2020', '2019-06-23 12:10:06', 1),
(11, 1, 5, 50.00, '2019-2020', '2019-06-23 12:08:06', 1),
(10, 1, 4, 50.00, '2019-2020', '2019-06-23 11:59:35', 1),
(9, 1, 3, 50.00, '2019-2020', '2019-06-23 11:56:50', 1),
(8, 1, 2, 50.00, '2019-2020', '2019-06-23 11:52:14', 1),
(7, 1, 1, 50.00, '2019-2020', '2019-06-23 11:51:39', 1),
(13, 4, 1, 50.00, '2019-2020', '2019-06-23 12:10:27', 1),
(14, 4, 2, 50.00, '2019-2020', '2019-06-23 12:10:35', 1),
(15, 4, 3, 50.00, '2019-2020', '2019-06-23 12:10:42', 1),
(16, 4, 4, 50.00, '2019-2020', '2019-06-23 12:11:20', 1),
(17, 4, 5, 50.00, '2019-2020', '2019-06-23 12:11:28', 1),
(18, 4, 6, 50.00, '2019-2020', '2019-06-23 12:12:38', 1),
(19, 4, 7, 50.00, '2019-2020', '2019-07-21 11:15:20', 1),
(20, 4, 9, 100.00, '2019-2020', '2019-07-21 11:16:33', 1),
(21, 4, 10, 50.00, '2019-2020', '2019-07-21 11:16:46', 1),
(22, 4, 11, 50.00, '2019-2020', '2019-07-21 11:16:59', 1),
(23, 4, 12, 100.00, '2019-2020', '2019-07-21 11:17:12', 1);

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
(1, 1, 'video_20190806191617_0.pdf', '../pdf/video_20190806191617_0.pdf', '2019-08-06 19:00:00', 1),
(2, 1, 'video_20190806191617_1.pdf', '../pdf/video_20190806191617_1.pdf', '2019-08-06 19:00:00', 1),
(3, 1, 'video_20190806191617_2.pdf', '../pdf/video_20190806191617_2.pdf', '2019-08-06 19:00:00', 1),
(4, 1, 'video_20190806191617_3.pdf', '../pdf/video_20190806191617_3.pdf', '2019-08-06 19:00:00', 1),
(5, 2, 'video_20190806194413_0.pdf', '../pdf/video_20190806194413_0.pdf', '2019-08-06 19:00:00', 1),
(6, 2, 'video_20190806194413_1.pdf', '../pdf/video_20190806194413_1.pdf', '2019-08-06 19:00:00', 1),
(7, 2, 'video_20190806194413_2.pdf', '../pdf/video_20190806194413_2.pdf', '2019-08-06 19:00:00', 1),
(8, 2, 'video_20190806194413_3.pdf', '../pdf/video_20190806194413_3.pdf', '2019-08-06 19:00:00', 1),
(9, 3, 'video_20190807230254_0.pdf', '../pdf/video_20190807230254_0.pdf', '2019-08-07 23:00:00', 1),
(10, 3, 'video_20190807230254_1.pdf', '../pdf/video_20190807230254_1.pdf', '2019-08-07 23:00:00', 1),
(11, 3, 'video_20190807230254_2.pdf', '../pdf/video_20190807230254_2.pdf', '2019-08-07 23:00:00', 1),
(12, 3, 'video_20190807230254_3.pdf', '../pdf/video_20190807230254_3.pdf', '2019-08-07 23:00:00', 1),
(13, 4, 'video_20190807230623_0.pdf', '../pdf/video_20190807230623_0.pdf', '2019-08-07 23:00:00', 1),
(14, 4, 'video_20190807230623_1.pdf', '../pdf/video_20190807230623_1.pdf', '2019-08-07 23:00:00', 1),
(15, 4, 'video_20190807230623_2.pdf', '../pdf/video_20190807230623_2.pdf', '2019-08-07 23:00:00', 1),
(16, 4, 'video_20190807230623_3.pdf', '../pdf/video_20190807230623_3.pdf', '2019-08-07 23:00:00', 1),
(17, 5, 'video_20190807230755_0.pdf', '../pdf/video_20190807230755_0.pdf', '2019-08-07 23:00:00', 1),
(18, 5, 'video_20190807230755_1.pdf', '../pdf/video_20190807230755_1.pdf', '2019-08-07 23:00:00', 1),
(19, 5, 'video_20190807230755_2.pdf', '../pdf/video_20190807230755_2.pdf', '2019-08-07 23:00:00', 1),
(20, 5, 'video_20190807230755_3.pdf', '../pdf/video_20190807230755_3.pdf', '2019-08-07 23:00:00', 1),
(21, 6, 'video_20190807231853_0.pdf', '../pdf/video_20190807231853_0.pdf', '2019-08-07 23:00:00', 1),
(22, 6, 'video_20190807231853_1.pdf', '../pdf/video_20190807231853_1.pdf', '2019-08-07 23:00:00', 1),
(23, 6, 'video_20190807231853_2.pdf', '../pdf/video_20190807231853_2.pdf', '2019-08-07 23:00:00', 1),
(24, 6, 'video_20190807231853_3.pdf', '../pdf/video_20190807231853_3.pdf', '2019-08-07 23:00:00', 1),
(25, 7, 'video_20190807232156_0.pdf', '../pdf/video_20190807232156_0.pdf', '2019-08-07 23:00:00', 1),
(26, 7, 'video_20190807232156_1.pdf', '../pdf/video_20190807232156_1.pdf', '2019-08-07 23:00:00', 1),
(27, 7, 'video_20190807232156_2.pdf', '../pdf/video_20190807232156_2.pdf', '2019-08-07 23:00:00', 1),
(28, 7, 'video_20190807232156_3.pdf', '../pdf/video_20190807232156_3.pdf', '2019-08-07 23:00:00', 1),
(29, 8, 'video_20190807233533_0.pdf', '../pdf/video_20190807233533_0.pdf', '2019-08-07 23:00:00', 1),
(30, 8, 'video_20190807233534_1.pdf', '../pdf/video_20190807233534_1.pdf', '2019-08-07 23:00:00', 1),
(31, 8, 'video_20190807233534_2.pdf', '../pdf/video_20190807233534_2.pdf', '2019-08-07 23:00:00', 1),
(32, 8, 'video_20190807233534_3.pdf', '../pdf/video_20190807233534_3.pdf', '2019-08-07 23:00:00', 1),
(33, 9, 'video_20190810204704_0.pdf', '../pdf/video_20190810204704_0.pdf', '2019-08-10 20:00:00', 1),
(34, 9, 'video_20190810204704_1.pdf', '../pdf/video_20190810204704_1.pdf', '2019-08-10 20:00:00', 1),
(35, 9, 'video_20190810204704_2.pdf', '../pdf/video_20190810204704_2.pdf', '2019-08-10 20:00:00', 1),
(36, 9, 'video_20190810204704_3.pdf', '../pdf/video_20190810204704_3.pdf', '2019-08-10 20:00:00', 1),
(37, 10, 'video_20190810210912_0.pdf', '../pdf/video_20190810210912_0.pdf', '2019-08-10 21:00:00', 1),
(38, 10, 'video_20190810210912_1.pdf', '../pdf/video_20190810210912_1.pdf', '2019-08-10 21:00:00', 1),
(39, 10, 'video_20190810210912_2.pdf', '../pdf/video_20190810210912_2.pdf', '2019-08-10 21:00:00', 1),
(40, 10, 'video_20190810210912_3.pdf', '../pdf/video_20190810210912_3.pdf', '2019-08-10 21:00:00', 1);

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
(1, 1, 'akbar', 'ali', 'akbar1991ali@yahoo.com', '9852750185', 'Bengaluru, Karnatka', NULL, '2019-06-30 02:21:54', '2019-06-30 02:21:54', 1),
(2, 2, 'Dilip', 'Kumar', 'dilip1@gmail.com', '8888888888', 'Vgbhj', NULL, '2019-07-03 00:35:34', '2019-07-03 00:35:34', 1),
(3, 3, 'Dilip', 'Kumar', 'dilip@gmail.com', '8888888888', 'Btm 1st Stage', NULL, '2019-07-03 00:54:16', '2019-07-03 00:54:16', 1),
(4, 4, 'abhijeet', 'Kumar', 'abhisingh12111998@gmail.com', '8581810321', 'Malhipur', NULL, '2019-07-03 07:07:16', '2019-07-03 07:07:16', 1),
(5, 5, 'Aashis ', 'Kumar', 'ashishbgs69@gmail.com', '9973778153', 'Chakiya ', NULL, '2019-07-03 08:33:37', '2019-07-03 08:33:37', 1),
(6, 6, 'akbar', 'ali', 'abc@yahoo.com', '9852750185', 'Bengaluru, Karnatka', NULL, '2019-07-03 08:54:11', '2019-07-03 08:54:11', 1),
(7, 7, 'Dilip', 'Kumar', 'dilip3@gmail.com', '9999999999', 'JP Nagar', NULL, '2019-07-03 15:17:59', '2019-07-03 15:17:59', 1),
(8, 8, 'Nisha', 'Kumari', 'nisha@gmail.com', '8888888888', 'Birgunj', NULL, '2019-07-03 15:21:27', '2019-07-03 15:21:27', 1),
(9, 9, 'Nandan', 'Kumar', 'nandanbgs8495@gmail.com', '8405852505', 'Malhipur', NULL, '2019-07-03 18:54:53', '2019-07-03 18:54:53', 1),
(10, 10, 'Alok', 'Kumar', 'alokkumar.begusarai@gmail.com', '8709921509', 'Malhipur', NULL, '2019-07-06 12:28:40', '2019-07-06 12:28:40', 1),
(11, 11, 'Dilip', 'Gupta', 'dilip2@gmail.com', '5555555555', 'Sil Bord', NULL, '2019-07-07 09:55:45', '2019-07-07 09:55:45', 1),
(12, 12, 'Dilip Test', 'Secod', 'dilip4@gmail.com', '6666666666', 'Silk Road', NULL, '2019-07-07 22:52:31', '2019-07-07 22:52:31', 1),
(13, 13, 'Dilip', 'Kumar', 'dilipg@gmail.com', '9738149531', 'Btm 1st Stage', NULL, '2019-07-20 11:37:14', '2019-07-20 11:37:14', 1),
(14, 14, 'Abhi', 'Singh', 'qgabhi@gmail.com', '7766833918', 'Malhipur', NULL, '2019-07-20 22:59:55', '2019-07-20 22:59:55', 1),
(15, 15, 'Nitu', 'Devi', 'nitudevi6779@gmail.com', '8581810321', 'Malhipur', NULL, '2019-07-21 11:22:27', '2019-07-21 11:22:27', 1);

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
(1, 'Hindi', 2, '2019-2020', '2019-06-27 22:17:52', 1, 1),
(2, 'ENGLISH', 1, '2019-2020', '2019-06-27 23:19:45', 1, 2),
(3, 'ENGLISH', 2, '2019-2020', '2019-06-27 23:40:07', 1, 3),
(4, 'Mathematics', 4, '2019-2020', '2019-06-27 23:42:49', 1, 4),
(5, 'Mathura', 2, '2019-2020', '2019-06-27 23:43:35', 1, 2),
(6, 'Mathematics', 2, '2019-2020', '2019-07-01 10:35:51', 1, 3),
(7, 'Bhojpuri', 1, '2019-2020', '2019-07-20 11:34:42', 1, 7),
(8, 'Science', 4, '2019-2020', '2019-07-20 23:06:29', 1, 8),
(9, 'Hindi', 4, '2019-2020', '2019-07-21 11:24:14', 1, 7),
(10, 'Sanskrit', 4, '2019-2020', '2019-07-21 11:24:26', 1, 6),
(11, 'Social science', 4, '2019-2020', '2019-07-21 11:24:42', 1, 5),
(12, 'English', 4, '2019-2020', '2019-07-21 11:24:57', 1, 5),
(13, 'Application related information', 4, '2019-2020', '2019-07-21 11:28:28', 1, 4),
(14, '1', 2, '2019-2020', '2019-07-27 20:35:24', 1, 3),
(15, '', 0, '2019-2020', '2019-08-10 23:29:30', 1, 0),
(16, 'demo subject name', 2, '2019-2020', '2019-08-10 23:33:27', 1, 2);

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
(1, 1, '../thumb/video_20190806191616_0.jpg', 1, '2019-08-06 19:00:00'),
(2, 2, '../thumb/video_20190806194413_0.jpg', 1, '2019-08-06 19:00:00'),
(3, 3, '../thumb/video_20190807230254_0.jpg', 1, '2019-08-07 23:00:00'),
(4, 4, '../thumb/video_20190807230622_0.jpg', 1, '2019-08-07 23:00:00'),
(5, 5, '../thumb/video_20190807230755_0.jpg', 1, '2019-08-07 23:00:00'),
(6, 6, '../thumb/video_20190807231852_0.jpg', 1, '2019-08-07 23:00:00'),
(7, 7, '../thumb/video_20190807232156_0.jpg', 1, '2019-08-07 23:00:00'),
(8, 8, '../thumb/video_20190807233533_0.jpg', 1, '2019-08-07 23:00:00'),
(9, 9, '../thumb/video_20190810204704_0.jpg', 1, '2019-08-10 20:00:00'),
(10, 10, '../thumb/video_20190810210912_0.jpg', 1, '2019-08-10 21:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `topic_exam`
--

CREATE TABLE `topic_exam` (
  `id` int(8) NOT NULL,
  `question` varchar(5000) NOT NULL,
  `option_a` varchar(2000) NOT NULL,
  `option_b` varchar(2000) NOT NULL,
  `option_c` varchar(2000) NOT NULL,
  `option_d` varchar(2000) NOT NULL,
  `flag` int(8) NOT NULL,
  `answer` varchar(2) NOT NULL,
  `topic_name` varchar(1000) NOT NULL,
  `chapter_id` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topic_exam`
--

INSERT INTO `topic_exam` (`id`, `question`, `option_a`, `option_b`, `option_c`, `option_d`, `flag`, `answer`, `topic_name`, `chapter_id`) VALUES
(1, 'which is my friend correct name ?', 'akb**r', 'akb**ra', 'akBRA', 'Akbo*', 1, 'c', 'demo topic name', 1),
(2, 'second question demo text?', 'option A', 'option B', 'option C', 'option D', 1, 'c', 'demo topic name', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(8) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` char(64) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `active` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `created`, `modified`, `active`) VALUES
(1, 'akbar1991ali@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', '2019-06-30 02:21:54', '2019-06-30 09:21:54', 1),
(2, 'dilip1@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759', '2019-07-03 00:35:34', '2019-07-03 07:35:34', 1),
(3, 'dilip@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2019-07-03 00:54:16', '2019-07-03 07:54:16', 1),
(4, 'abhisingh12111998@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2019-07-03 07:07:16', '2019-07-03 14:07:16', 1),
(5, 'ashishbgs69@gmail.com', 'a293837f2f8e3553767a692e08e266ac', '2019-07-03 08:33:37', '2019-07-03 15:33:37', 1),
(6, 'abc@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', '2019-07-03 08:54:11', '2019-07-03 15:54:11', 1),
(7, 'dilip3@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2019-07-03 15:17:59', '2019-07-03 22:17:59', 1),
(8, 'nisha@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2019-07-03 15:21:27', '2019-07-03 22:21:27', 1),
(9, 'nandanbgs8495@gmail.com', '8ef9ab0681eb4b4c672ce30fe3641627', '2019-07-03 18:54:53', '2019-07-04 01:54:53', 1),
(10, 'alokkumar.begusarai@gmail.com', '9c0622036a4d0432f01731b59ddb2aaf', '2019-07-06 12:28:40', '2019-07-06 19:28:40', 1),
(11, 'dilip2@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2019-07-07 09:55:45', '2019-07-07 16:55:45', 1),
(12, 'dilip4@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2019-07-07 22:52:31', '2019-07-08 05:52:31', 1),
(13, 'dilipg@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2019-07-20 11:37:14', '2019-07-20 18:37:14', 1),
(14, 'qgabhi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2019-07-20 22:59:55', '2019-07-21 05:59:55', 1),
(15, 'nitudevi6779@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2019-07-21 11:22:27', '2019-07-21 18:22:27', 1);

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
  `video_title` varchar(300) CHARACTER SET utf8 NOT NULL,
  `video_name` varchar(300) NOT NULL,
  `video_description` varchar(10000) CHARACTER SET utf8 NOT NULL,
  `video_url` varchar(300) NOT NULL,
  `modified` datetime NOT NULL,
  `status` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `class_id`, `subject_id`, `chapter_id`, `month_id`, `session`, `video_title`, `video_name`, `video_description`, `video_url`, `modified`, `status`) VALUES
(1, 1, 1, 1, 1, '19-20', 'à¤µà¤¾à¤¸à¥à¤¤à¤µà¤¿à¤• à¤¸à¤‚à¤–à¥à¤¯à¤¾à¤‚ ', 'video_20190806191616_0.mp4', 'à¤µà¤¾à¤¸à¥à¤¤à¤µà¤¿à¤• à¤¸à¤‚à¤–à¥à¤¯à¤¾à¤‚ ', '../video/video_20190806191616_0.mp4', '2019-08-06 19:00:00', 1),
(2, 1, 1, 1, 1, '19-20', '', 'video_20190806194413_0.mp4', '', '../video/video_20190806194413_0.mp4', '2019-08-06 19:00:00', 1),
(3, 1, 1, 1, 1, '19-20', '', 'video_20190807230254_0.mp4', '', '../video/video_20190807230254_0.mp4', '2019-08-07 23:00:00', 1),
(4, 1, 1, 1, 1, '19-20', '', 'video_20190807230622_0.mp4', '', '../video/video_20190807230622_0.mp4', '2019-08-07 23:00:00', 1),
(5, 1, 1, 1, 1, '19-20', '', 'video_20190807230755_0.mp4', '', '../video/video_20190807230755_0.mp4', '2019-08-07 23:00:00', 1),
(6, 1, 1, 1, 1, '19-20', '', 'video_20190807231852_0.mp4', '', '../video/video_20190807231852_0.mp4', '2019-08-07 23:00:00', 1),
(7, 1, 1, 1, 1, '19-20', '', 'video_20190807232156_0.mp4', '', '../video/video_20190807232156_0.mp4', '2019-08-07 23:00:00', 1),
(8, 1, 1, 1, 1, '19-20', '', 'video_20190807233533_0.mp4', '', '../video/video_20190807233533_0.mp4', '2019-08-07 23:00:00', 1),
(9, 1, 1, 1, 1, '19-20', '', 'video_20190810204704_0.mp4', '', '../video/video_20190810204704_0.mp4', '2019-08-10 20:00:00', 1),
(10, 1, 1, 1, 1, '19-20', 'video title text here ', 'video_20190810210912_0.mp4', '', '../video/video_20190810210912_0.mp4', '2019-08-10 21:00:00', 1);

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
-- Indexes for table `topic_exam`
--
ALTER TABLE `topic_exam`
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
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `chapter`
--
ALTER TABLE `chapter`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `course_details`
--
ALTER TABLE `course_details`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `exam_question_setup`
--
ALTER TABLE `exam_question_setup`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `exam_setup`
--
ALTER TABLE `exam_setup`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `exam_title_master`
--
ALTER TABLE `exam_title_master`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fee`
--
ALTER TABLE `fee`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

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
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `thumb`
--
ALTER TABLE `thumb`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `topic_exam`
--
ALTER TABLE `topic_exam`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
