-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2019 at 03:25 PM
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
(2, 1, 1, 1, 1, '222 question 222', 'cat', 'dog', 'cow', 'rat', 1, '3', '2019-08-17 06:17:21');

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
(2, 2, '2019-08-04 00:00:00', '2019-08-15 02:00:00', '2019-08-12 00:00:00', 1);

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
(3, 1, 'demo title text 1', '2019-08-12 00:12:57', 1);

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `exam_question_setup`
--
ALTER TABLE `exam_question_setup`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
