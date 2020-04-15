-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 25, 2019 at 12:44 AM
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` int(8) NOT NULL,
  `name` varchar(12) NOT NULL,
  `session` varchar(12) NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `active` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
-- AUTO_INCREMENT for table `auth`
--
ALTER TABLE `auth`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chapter`
--
ALTER TABLE `chapter`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_details`
--
ALTER TABLE `course_details`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_question_setup`
--
ALTER TABLE `exam_question_setup`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forgot_password`
--
ALTER TABLE `forgot_password`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `month`
--
ALTER TABLE `month`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pdf`
--
ALTER TABLE `pdf`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `referral_code`
--
ALTER TABLE `referral_code`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_result`
--
ALTER TABLE `student_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `submit_exam`
--
ALTER TABLE `submit_exam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `thumb`
--
ALTER TABLE `thumb`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
