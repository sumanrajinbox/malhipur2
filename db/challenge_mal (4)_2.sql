-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2019 at 12:08 AM
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
(1, 1, 'demo tite name 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2019-08-12 00:00:00', 1),
(2, 1, 'demo tite name 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2019-08-13 00:00:00', 1),
(3, 1, 'demo title text 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2019-08-12 00:12:57', 1),
(4, 1, 'Test Exam', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2019-08-17 22:41:19', 1),
(5, 1, 'exxxxam title massssster', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2019-08-17 22:45:39', 1),
(6, 1, 'Tesrt', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2019-08-17 22:53:08', 1),
(7, 4, 'laxman kumar', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2019-08-18 16:14:42', 1),
(8, 4, 'Akbar', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2019-08-20 22:22:36', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `exam_title_master`
--
ALTER TABLE `exam_title_master`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `exam_title_master`
--
ALTER TABLE `exam_title_master`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
