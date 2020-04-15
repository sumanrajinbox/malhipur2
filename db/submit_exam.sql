-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2019 at 12:24 AM
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

--
-- Dumping data for table `submit_exam`
--

INSERT INTO `submit_exam` (`id`, `title_id`, `user_id`, `question_id`, `answer`, `modified`, `status`) VALUES
(1, 8, 1, 1, '3', '2019-08-25 03:14:03', 1),
(2, 8, 1, 2, '4', '2019-08-25 03:14:03', 1),
(3, 8, 1, 3, '2', '2019-08-25 03:14:03', 1),
(4, 8, 1, 4, '3', '2019-08-25 03:14:03', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `submit_exam`
--
ALTER TABLE `submit_exam`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `submit_exam`
--
ALTER TABLE `submit_exam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
