-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2019 at 02:12 PM
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
-- Table structure for table `student_result`
--

CREATE TABLE `student_result` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title_id` int(11) NOT NULL,
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

INSERT INTO `student_result` (`id`, `user_id`, `title_id`, `total_question`, `total_answer`, `correct`, `wrong`, `modified`, `status`) VALUES
(1, 1, 7, 4, 4, 1, 3, '2019-08-26 17:09:11', 1),
(2, 1, 8, 4, 4, 3, 1, '2019-08-26 17:09:21', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student_result`
--
ALTER TABLE `student_result`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student_result`
--
ALTER TABLE `student_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
