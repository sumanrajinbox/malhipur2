-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2020 at 01:12 PM
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
  `referral_price` int(8) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `active` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `user_id`, `first_name`, `last_name`, `email`, `contact`, `address`, `profile_pic`, `referral_code`, `referral_price`, `created`, `modified`, `active`) VALUES
(1, 1, 'Abhi', 'Singh ', 'abhisingh12111998@gmail.com', '8581810321', 'Malhipur', NULL, 'F7QRXW', 1, '2020-01-02 17:55:21', '2020-01-03 09:25:57', 0),
(2, 2, 'Laxman', 'Kumar', 'qgabhi@gmail.com', '8581810321', 'Malhipur', NULL, 'X039HD', 1, '2020-01-02 17:58:07', '2020-01-03 09:25:50', 0),
(3, 3, 'Akbar', 'Ali', 'akbar1991ali@yahoo.com', '9852751085', 'Begusarai', NULL, '7L0J9N', 1, '2020-01-02 18:26:23', '2020-01-02 18:26:23', 1),
(4, 4, 'Suman', 'Raj', 'sumanrajinbox@gmail.com', '7979044783', 'Banglore', NULL, '102VBG', 1, '2020-01-02 18:53:00', '2020-01-02 18:53:00', 1),
(5, 5, 'Laxman', 'Kumar', 'abc@gmail.com', '8581810321', 'Bihat', NULL, '6861NZ', 1, '2020-01-02 21:48:46', '2020-01-03 09:25:44', 0),
(6, 6, 'Abhi', 'Singh', 'qgabhi@gmail.com', '8581810321', 'Malhipur,851116, Begusarai,Bihar', NULL, 'NAT0G4', 1, '2020-01-03 09:33:01', '2020-01-03 20:18:07', 0),
(7, 7, 'Guddu', 'Kumar', 'gudduroy1112@gmail.com', '7281972590', 'Chakiya,btps,851116', NULL, 'A9HMTF', 1, '2020-01-03 10:44:07', '2020-01-03 20:18:12', 0),
(8, 8, 'Abhi', 'Singh', 'abc@gmail.com', '8581810321', 'Malhipur', NULL, 'W03BLZ', 1, '2020-01-03 11:07:51', '2020-01-04 19:53:04', 0),
(9, 9, 'Abcd', 'Kumar', 'abcd@gmail.com', '8581810321', 'Ghfhj', NULL, '91LF8Q', 1, '2020-01-03 11:37:44', '2020-01-04 19:53:10', 0),
(10, 10, 'Abhi', 'Singh', 'qgabhi@gmail.com', '8581810321', 'Malhipur', NULL, 'I61L0Z', 1, '2020-01-03 20:18:50', '2020-01-04 19:53:16', 0),
(11, 11, 'Kishan', 'Kumar', 'kishanyadav8709258042@gmail.com', '8709258042', 'Kasha', NULL, 'Y6R7O1', 1, '2020-01-03 20:54:01', '2020-01-03 20:54:01', 1),
(12, 12, 'Kanchan', 'kumari', 'kanchankri15feb@gmail.com', '+449172580', 'malhipur', NULL, '180RJS', 1, '2020-01-04 08:11:41', '2020-01-04 08:11:41', 1),
(13, 13, 'Ravi', 'Raj', 'kunalkishor453@gmail.com', '7992343146', 'Chkia', NULL, '8N2E5Q', 1, '2020-01-04 11:18:11', '2020-01-04 11:18:11', 1),
(14, 14, 'Laki', 'Singh', 'abc@gmail.com', '8581810321', 'Malhipur', NULL, 'D8LGZW', 1, '2020-01-04 20:10:52', '2020-01-04 20:10:52', 1),
(15, 15, 'Abhi', 'Singh', 'abcd@gmail.com', '7766833918', 'Malhipur', NULL, 'N1UPBM', 1, '2020-01-04 20:11:48', '2020-01-04 20:11:48', 1),
(16, 16, 'Kishan', 'Raj', 'kishanraj851126@gmail.com', '8709258042', 'Kasha', NULL, '9CXE8R', 1, '2020-01-05 01:41:11', '2020-01-05 01:41:11', 1),
(17, 17, 'Kishan', 'Raj', 'kishanraj851126@gmail.co', '8709258042', 'Kasha', NULL, '1X3H49', 1, '2020-01-05 11:32:28', '2020-01-05 11:32:28', 1),
(18, 18, 'Uttam', 'Kumar', 'uttamkumaruk469610@gmail.com', '6209718926', 'Amai Kazi Tola Hasan Bazar Bhojpur', NULL, '8I77QW', 1, '2020-01-05 11:40:30', '2020-01-05 11:40:30', 1),
(19, 19, 'Saurav', 'Vidut', '6204555641.sauravkumar@gmail.com', '6204555641', 'Kasha', NULL, '2RA160', 1, '2020-01-05 13:25:33', '2020-01-05 13:25:33', 1),
(20, 20, 'Jatan', 'Kumar', 'jatankumarjk7@gmail.com', '6201511479', 'Vill-Chakia, Malhipur, Dist-Begusarai,State-Bihar', NULL, 'Q8KP89', 1, '2020-01-05 22:17:55', '2020-01-05 22:17:55', 1),
(21, 21, 'Guddu', 'Kumar', 'gudduroy1112@gmail.com', '7281972590', 'Chakiya,851116', NULL, 'DXGR1E', 1, '2020-01-06 17:19:02', '2020-01-06 17:19:02', 1),
(22, 22, 'ABHISHEK ', 'Kumar ', 'abhshekk0101@gmail.com', '6205966330', 'Rachiyahi ', NULL, '1L4I21', 1, '2020-01-07 11:26:57', '2020-01-07 11:26:57', 1),
(23, 23, 'Nitesh', 'Raj', 'niteshraj119n@gmail.com', '7352694120', 'Sasana', NULL, 'F3518A', 1, '2020-01-07 13:15:13', '2020-01-07 13:15:13', 1),
(24, 24, 'Nitesh', 'Raj', 'bantikr7352@gmail.com', '7352694120', 'Sasana', NULL, '883HMJ', 1, '2020-01-07 13:19:05', '2020-01-07 13:19:05', 1),
(25, 25, 'Pushpraj', 'KUMAR', 'prkraj05@gmail.com', '+191790362', 'Chanan Bindtoli', NULL, 'T2AEWG', 1, '2020-01-07 22:30:34', '2020-01-07 22:30:34', 1),
(26, 26, 'Saurav', 'vidut', 'saurabhvidut@gmail.com', '6204555641', 'Kasha', NULL, 'TKR7YQ', 1, '2020-01-07 22:36:27', '2020-01-07 22:36:27', 1),
(27, 27, 'Saurav', 'vidut', 'sauravkumar@gmail.com', '6204555641', 'Kasha', NULL, 'KLMGFW', 1, '2020-01-07 22:42:26', '2020-01-07 22:42:26', 1),
(28, 28, 'Manish', 'Kumar', 'zxaditya3978@gmail.com', '8404843024', 'Begusarai', NULL, 'H7D401', 1, '2020-01-08 06:35:01', '2020-01-08 06:35:01', 1),
(29, 29, 'Ransh ', 'Roy', 'ranshroy858@gmail.com', '9709895137', 'Barauni', NULL, 'O514Q0', 1, '2020-01-08 06:52:10', '2020-01-08 06:52:10', 1),
(30, 30, 'Ashutosh', 'Raj', 'rajashutosh797@gmail.com', '9122953228', 'At- Chakiya Begusarai', NULL, '2DASZ0', 1, '2020-01-08 10:44:56', '2020-01-08 10:44:56', 1),
(31, 31, 'Jatn', 'Kumar', 'jatankumarji@gmail.com', '6201511479', 'Vill - Chakia,Malhipur, Dist - Begusarai,Bihar', NULL, 'MO9N47', 1, '2020-01-08 13:46:58', '2020-01-08 13:46:58', 1),
(32, 32, 'Anshu ', 'Kumar', 'anshu6206234571@gmail.com', '8298594324', 'Naya Tola Sahebpur .  District-begusrai', NULL, 'RKL6Y1', 1, '2020-01-08 17:31:07', '2020-01-08 17:33:00', 0),
(33, 33, 'Anshu', 'Kumar', 'anshu6206234571@gmail.com', '8298594324', 'Sahebpurkamal Naya Tola ', NULL, '4726S0', 1, '2020-01-08 17:33:07', '2020-01-08 17:33:07', 1),
(34, 34, 'Mihir', 'Raj', 'Mihirraj123@gmail.com', '7004051445', 'Kasha', NULL, 'R18I8M', 1, '2020-01-09 21:17:58', '2020-01-09 21:17:58', 1),
(44, 42, 'suman', 'raj', 'suma55551@gmail.com', '7979044783', 'Bengaluru, Karnatka', NULL, 'G5Z0P3', 1, '2020-01-11 16:21:42', '2020-01-11 16:21:42', 1),
(41, 39, 'suman', 'raj', 'suman163@gmail.com', '7979044783', 'Bengaluru, Karnatka', NULL, '9MO8U2', 1, '2020-01-11 15:59:29', '2020-01-11 15:59:29', 1),
(42, 40, 'suman', 'raj', 'suman16@gmail.com', '7979044783', 'Bengaluru, Karnatka', NULL, 'PO81LA', 1, '2020-01-11 16:15:14', '2020-01-11 16:15:14', 1),
(43, 41, 'suman', 'raj', 'suman1@gmail.com', '7979044783', 'Bengaluru, Karnatka', NULL, '8GQJPN', 1, '2020-01-11 16:19:13', '2020-01-11 16:19:13', 1),
(45, 43, 'suman', 'raj', 'suma55591@gmail.com', '7979044783', 'Bengaluru, Karnatka', NULL, 'XSK8TP', 1, '2020-01-11 16:26:45', '2020-01-11 16:26:45', 1),
(46, 44, 'suman', 'raj', 'suma591@gmail.com', '7979044783', 'Bengaluru, Karnatka', NULL, 'HN0K5L', 1, '2020-01-11 16:28:41', '2020-01-11 16:28:41', 1),
(47, 45, 'suman', 'raj', 'suma91@gmail.com', '7979044783', 'Bengaluru, Karnatka', NULL, 'KEHBF3', 1, '2020-01-11 16:30:16', '2020-01-11 16:30:16', 1),
(48, 46, 'suman', 'raj', 'suma94@gmail.com', '7979044783', 'Bengaluru, Karnatka', NULL, 'X8C5JA', 1, '2020-01-11 17:09:34', '2020-01-11 17:09:34', 1),
(49, 47, 'suman', 'raj', 'suma95@gmail.com', '7979044783', 'Bengaluru, Karnatka', NULL, '5387F6', 1, '2020-01-11 17:09:38', '2020-01-11 17:09:38', 1),
(50, 48, 'suman', 'raj', 'suma922@gmail.com', '7979044783', 'Bengaluru, Karnatka', NULL, 'BJOKVZ', 1, '2020-01-11 17:09:42', '2020-01-11 17:09:42', 1);

-- --------------------------------------------------------

--
-- Table structure for table `referral_account`
--

CREATE TABLE `referral_account` (
  `id` int(8) NOT NULL,
  `referral_uid` int(8) NOT NULL,
  `r_code` varchar(10) NOT NULL,
  `redeem_id` varchar(20) NOT NULL,
  `redeem_uid` int(8) NOT NULL,
  `referral_price` float(7,2) NOT NULL,
  `redeem_date` datetime NOT NULL,
  `created_date` datetime NOT NULL,
  `active` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `referral_account`
--

INSERT INTO `referral_account` (`id`, `referral_uid`, `r_code`, `redeem_id`, `redeem_uid`, `referral_price`, `redeem_date`, `created_date`, `active`) VALUES
(1, 34, 'R18I8M', '8GQJPN', 41, 1.00, '2020-01-11 16:19:13', '2020-01-11 16:19:13', 1),
(2, 41, '8GQJPN', 'HN0K5L', 44, 1.00, '2020-01-11 16:28:41', '2020-01-11 16:28:41', 1),
(3, 41, '8GQJPN', 'KEHBF3', 45, 10.00, '2020-01-11 16:30:16', '2020-01-11 16:30:16', 1),
(4, 41, '8GQJPN', 'X8C5JA', 46, 10.00, '2020-01-11 17:09:34', '2020-01-11 17:09:34', 1),
(5, 41, '8GQJPN', '5387F6', 47, 10.00, '2020-01-11 17:09:38', '2020-01-11 17:09:38', 1),
(6, 41, '8GQJPN', 'BJOKVZ', 48, 10.00, '2020-01-11 17:09:42', '2020-01-11 17:09:42', 1);

-- --------------------------------------------------------

--
-- Table structure for table `referral_price`
--

CREATE TABLE `referral_price` (
  `id` int(8) NOT NULL,
  `referral_price` float(7,2) NOT NULL,
  `modified` datetime NOT NULL,
  `flag` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `referral_price`
--

INSERT INTO `referral_price` (`id`, `referral_price`, `modified`, `flag`) VALUES
(1, 10.00, '2020-01-11 10:00:00', 1),
(2, 5.00, '2020-01-11 10:05:00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referral_account`
--
ALTER TABLE `referral_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referral_price`
--
ALTER TABLE `referral_price`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `referral_account`
--
ALTER TABLE `referral_account`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `referral_price`
--
ALTER TABLE `referral_price`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
