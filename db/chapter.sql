-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 14, 2019 at 10:15 AM
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
(1, 4, 1, 1, 'à¤µà¤¾à¤¸à¥à¤¤à¤µà¤¿à¤• à¤¸à¤‚à¤–à¥à¤¯à¤¾à¤‚ ', '2019-08-12 21:48:30', 1),
(2, 4, 2, 1, 'à¤¬à¤¹à¤¾à¤¦à¥à¤° ', '2019-08-12 22:55:21', 1),
(3, 4, 2, 1, 'à¤¹à¤¿à¤‚à¤¦à¥€ à¤µà¤¯à¤¾à¤•à¤°à¤£', '2019-08-12 22:58:29', 1),
(4, 4, 7, 2, 'à¤¬à¤¹à¤¾à¤¦à¥à¤°', '2019-08-14 21:55:07', 1),
(5, 4, 7, 2, 'à¤œà¤¿à¤¤ à¤œà¤¿à¤¤ à¤®à¥ˆà¤‚ à¤¨à¤¿à¤°à¤–à¤¤ à¤¹à', '2019-08-14 21:55:43', 1),
(6, 4, 7, 2, 'à¤°à¤¾à¤® à¤¨à¤¾à¤® à¤¬à¤¿à¤¨à¥ à¤¬à¤¿à¤°à¤¥à¥‡ à', '2019-08-14 21:56:48', 1),
(7, 4, 7, 2, 'à¤µà¤¹à¤¾à¤¦à¥à¤°', '2019-08-14 21:58:44', 1),
(8, 4, 2, 2, 'à¤œà¤¿à¤¤ à¤œà¤¿à¤¤ à¤®à¤¨ à¤¨à¤¿à¤°à¤–à¤¤ à¤¹à¥‚à', '2019-08-14 22:01:07', 1),
(9, 4, 2, 1, 'à¤¹à¤¿à¤‚à¤¦à¥€', '2019-08-14 22:02:30', 1),
(10, 4, 7, 1, 'Hello world', '2019-08-14 22:06:14', 1),
(11, 4, 8, 1, 'Vayakaran', '2019-08-14 22:37:30', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chapter`
--
ALTER TABLE `chapter`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chapter`
--
ALTER TABLE `chapter`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
