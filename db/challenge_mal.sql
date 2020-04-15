-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2019 at 08:47 PM
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
(2, 9, 1, 0, 'chapter 15', '2019-07-25 01:31:48', 1),
(3, 8, 1, 0, 'chapter 15', '2019-07-25 01:33:47', 1),
(4, 7, 1, 0, 'chapter 15', '2019-07-25 01:34:19', 1),
(5, 4, 1, 0, 'chapter 15', '2019-07-25 01:35:45', 1),
(6, 4, 1, 0, 'chapter 15', '2019-07-25 01:37:21', 1),
(7, 6, 1, 0, 'chapter 17', '2019-07-25 11:09:14', 1),
(8, 1, 1, 4, 'chapter 17', '2019-07-25 11:10:37', 1),
(9, 1, 1, 4, 'chapter 18', '2019-07-25 15:26:40', 1),
(10, 1, 1, 4, 'chapter 18', '2019-07-25 16:08:43', 1),
(33, 1, 1, 2, 'chapter 19', '2019-07-25 16:40:03', 1),
(34, 1, 1, 0, 'chapter 20', '2019-07-25 16:44:14', 1),
(35, 1, 2, 2, 'computer', '2019-07-27 23:00:31', 1);

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
(1, 1, 1, NULL, NULL, NULL, '2019-06-30 02:21:54', 1),
(2, 2, 6, 3, 2, 1, '2019-07-03 00:35:34', 1),
(3, 3, 7, NULL, NULL, NULL, '2019-07-03 00:54:16', 1),
(4, 4, 4, NULL, NULL, NULL, '2019-07-03 07:07:16', 1),
(5, 5, 6, NULL, NULL, NULL, '2019-07-03 08:33:37', 1),
(6, 6, 1, NULL, NULL, NULL, '2019-07-03 08:54:11', 1),
(7, 7, 10, NULL, NULL, NULL, '2019-07-03 15:17:59', 1),
(8, 8, 7, NULL, NULL, NULL, '2019-07-03 15:21:27', 1),
(9, 9, 10, NULL, NULL, NULL, '2019-07-03 18:54:53', 1),
(10, 10, 7, NULL, NULL, NULL, '2019-07-06 12:28:40', 1),
(11, 11, 1, NULL, NULL, NULL, '2019-07-07 09:55:45', 1),
(12, 12, 1, NULL, NULL, NULL, '2019-07-07 22:52:31', 1),
(13, 13, 1, NULL, NULL, NULL, '2019-07-20 11:37:14', 1),
(14, 14, 1, NULL, NULL, NULL, '2019-07-20 22:59:55', 1),
(15, 15, 4, NULL, NULL, NULL, '2019-07-21 11:22:27', 1);

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
(1, 1, '7th_Hindi_chapter 13.pdf', '../pdf/7th_Hindi_chapter 13.pdf', '2019-08-02 02:06:01', 1);

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
(1, 'Hindi', 2, '2019-2020', '2019-06-27 22:17:52', 1, 0),
(2, 'ENGLISH', 1, '2019-2020', '2019-06-27 23:19:45', 1, 0),
(3, 'ENGLISH', 2, '2019-2020', '2019-06-27 23:40:07', 1, 0),
(4, 'Mathematics', 4, '2019-2020', '2019-06-27 23:42:49', 1, 0),
(5, 'Mathura', 2, '2019-2020', '2019-06-27 23:43:35', 1, 0),
(6, 'Mathematics', 2, '2019-2020', '2019-07-01 10:35:51', 1, 0),
(7, 'Bhojpuri', 1, '2019-2020', '2019-07-20 11:34:42', 1, 0),
(8, 'Science', 4, '2019-2020', '2019-07-20 23:06:29', 1, 0),
(9, 'Hindi', 4, '2019-2020', '2019-07-21 11:24:14', 1, 0),
(10, 'Sanskrit', 4, '2019-2020', '2019-07-21 11:24:26', 1, 0),
(11, 'Social science', 4, '2019-2020', '2019-07-21 11:24:42', 1, 0),
(12, 'English', 4, '2019-2020', '2019-07-21 11:24:57', 1, 0),
(13, 'Application related information', 4, '2019-2020', '2019-07-21 11:28:28', 1, 0),
(14, '1', 2, '2019-2020', '2019-07-27 20:35:24', 1, 2);

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
  `video_name` varchar(300) NOT NULL,
  `video_description` varchar(10000) NOT NULL,
  `video_url` varchar(300) NOT NULL,
  `thumb` varchar(200) NOT NULL,
  `modified` datetime NOT NULL,
  `status` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `class_id`, `subject_id`, `chapter_id`, `month_id`, `session`, `video_name`, `video_description`, `video_url`, `thumb`, `modified`, `status`) VALUES
(1, 1, 1, 1, 1, '19-20', 'Light and reflaction', 'chapter about light and reflection ', '../video/7th_Hindi_chapter 13.mp4', '../thumb/7th_Hindi_chapter 13.jpeg', '2019-08-02 02:06:01', 1);

--
-- Indexes for dumped tables
--

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
-- Indexes for table `month`
--
ALTER TABLE `month`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pdf`
--
ALTER TABLE `pdf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `month`
--
ALTER TABLE `month`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pdf`
--
ALTER TABLE `pdf`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
