-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 23, 2019 at 12:48 AM
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
-- Stand-in structure for view `user_by_all`
-- (See below for the actual view)
--
CREATE TABLE `user_by_all` (
`user_id` int(8)
,`email` varchar(50)
,`month` varchar(20)
,`class` varchar(12)
,`subscription` varchar(6)
,`auth_key` varchar(100)
,`online_status` varchar(6)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `user_by_email`
-- (See below for the actual view)
--
CREATE TABLE `user_by_email` (
`user_id` int(8)
,`email` varchar(50)
,`month` varchar(20)
,`month_id` int(2)
,`class` varchar(12)
,`class_id` int(3)
,`subscription` varchar(6)
,`auth_key` varchar(100)
,`online_status` varchar(6)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `user_login_status`
-- (See below for the actual view)
--
CREATE TABLE `user_login_status` (
`email` varchar(50)
,`user_id` int(8)
,`auth_key` varchar(100)
,`status` varchar(7)
);

-- --------------------------------------------------------

--
-- Structure for view `user_by_all`
--
DROP TABLE IF EXISTS `user_by_all`;

CREATE ALGORITHM=UNDEFINED DEFINER=`cpses_jab8wlurep`@`localhost` SQL SECURITY DEFINER VIEW `user_by_all`  AS  select `u`.`id` AS `user_id`,`u`.`email` AS `email`,ifnull(`m`.`monthName`,'____') AS `month`,ifnull(`class`.`name`,'____') AS `class`,if((`cd`.`paid` <> 1),'unpaid','paid') AS `subscription`,`a`.`auth_key` AS `auth_key`,if((`a`.`active` > 0),'online','____') AS `online_status` from ((((`users` `u` left join `course_details` `cd` on((`cd`.`user_id` = `u`.`id`))) left join `month` `m` on((`m`.`id` = `cd`.`month_id`))) left join `class` on((`class`.`id` = `cd`.`class_id`))) left join `auth` `a` on((`a`.`user_id` = `u`.`id`))) order by `u`.`email` ;

-- --------------------------------------------------------

--
-- Structure for view `user_by_email`
--
DROP TABLE IF EXISTS `user_by_email`;

CREATE ALGORITHM=UNDEFINED DEFINER=`cpses_jab8wlurep`@`localhost` SQL SECURITY DEFINER VIEW `user_by_email`  AS  select `u`.`id` AS `user_id`,`u`.`email` AS `email`,ifnull(`m`.`monthName`,'____') AS `month`,`m`.`id` AS `month_id`,ifnull(`class`.`name`,'____') AS `class`,`class`.`id` AS `class_id`,if((`cd`.`paid` <> 1),'unpaid','paid') AS `subscription`,`a`.`auth_key` AS `auth_key`,if((`a`.`active` > 0),'online','____') AS `online_status` from ((((`users` `u` left join `course_details` `cd` on((`cd`.`user_id` = `u`.`id`))) left join `month` `m` on((`m`.`id` = `cd`.`month_id`))) left join `class` on((`class`.`id` = `cd`.`class_id`))) left join `auth` `a` on((`a`.`user_id` = `u`.`id`))) group by `u`.`email` order by `u`.`email` ;

-- --------------------------------------------------------

--
-- Structure for view `user_login_status`
--
DROP TABLE IF EXISTS `user_login_status`;

CREATE ALGORITHM=UNDEFINED DEFINER=`cpses_jab8wlurep`@`localhost` SQL SECURITY DEFINER VIEW `user_login_status`  AS  select `u`.`email` AS `email`,`a`.`user_id` AS `user_id`,`a`.`auth_key` AS `auth_key`,if((`a`.`active` <> 1),'offline','Active') AS `status` from (`auth` `a` left join `users` `u` on((`u`.`id` = `a`.`user_id`))) where ((`a`.`user_id` in (1,2,3,21)) and (`a`.`active` = 1)) ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
