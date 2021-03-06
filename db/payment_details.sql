-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 24, 2020 at 08:31 AM
-- Server version: 5.6.46-cll-lve
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
-- Table structure for table `payment_details`
--

CREATE TABLE `payment_details` (
  `id` int(8) NOT NULL,
  `txnid` varchar(100) NOT NULL,
  `paymentId` varchar(100) NOT NULL,
  `mode` varchar(100) NOT NULL,
  `payuMoneyId` varchar(100) NOT NULL,
  `net_amount_debit` float(7,2) NOT NULL,
  `status` varchar(100) NOT NULL,
  `amount` float(7,2) NOT NULL,
  `additionalCharges` float(7,2) NOT NULL,
  `addedon` datetime NOT NULL,
  `createdOn` varchar(100) NOT NULL,
  `productinfo` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `auth_key` varchar(100) NOT NULL,
  `referral_amount` float(7,2) NOT NULL,
  `user_id` varchar(8) NOT NULL,
  `hash` varchar(1000) NOT NULL,
  `field1` varchar(100) NOT NULL,
  `field2` varchar(100) NOT NULL,
  `field3` varchar(100) NOT NULL,
  `field4` varchar(100) NOT NULL,
  `field5` varchar(100) NOT NULL,
  `field6` varchar(100) NOT NULL,
  `field7` varchar(100) NOT NULL,
  `field8` varchar(100) NOT NULL,
  `field9` varchar(100) NOT NULL,
  `bankcode` varchar(100) NOT NULL,
  `error` varchar(100) NOT NULL,
  `error_Message` varchar(100) NOT NULL,
  `name_on_card` varchar(100) NOT NULL,
  `cardnum` varchar(100) NOT NULL,
  `card_type` varchar(100) NOT NULL,
  `flag` int(8) NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_details`
--

INSERT INTO `payment_details` (`id`, `txnid`, `paymentId`, `mode`, `payuMoneyId`, `net_amount_debit`, `status`, `amount`, `additionalCharges`, `addedon`, `createdOn`, `productinfo`, `firstname`, `lastname`, `auth_key`, `referral_amount`, `user_id`, `hash`, `field1`, `field2`, `field3`, `field4`, `field5`, `field6`, `field7`, `field8`, `field9`, `bankcode`, `error`, `error_Message`, `name_on_card`, `cardnum`, `card_type`, `flag`, `modified`) VALUES
(1, '', '', '', '', 0.00, '', 0.00, 0.00, '0000-00-00 00:00:00', '', '', '', '', '', 0.00, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-03 11:11:33'),
(2, '1578030043465', '294042425', 'CASH', '294042425', 1.00, 'success', 1.00, 0.00, '2020-01-03 11:10:56', '1578030090000', ' 1 ', 'Abhi', '', '17a2b11f9695dcabef8aae51885c8b7c', 0.00, '8', 'b5a4eed7db42b2254eea60e38056ef6b6f7048403363c2d9e27269a3d7db355f387b4e10edda9b22be77c9f5895e6ec808a6fb440058a72b10446ba9fbe4a6a7', '2020-01-03 11:10:57.0', '20200103111212800110168690305801814', '9606010223', '', '', '', '', '', 'Txn Success', 'PAYTM', 'E000', 'No Error', '', '', '', 0, '2020-01-03 11:11:38'),
(3, '', '', '', '', 0.00, '', 0.00, 0.00, '0000-00-00 00:00:00', '', '', '', '', '', 0.00, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-03 11:31:42'),
(4, '1578031257481', '294048188', 'CASH', '294048188', 1.00, 'success', 1.00, 0.00, '2020-01-03 11:31:11', '1578031298000', ' 2 ', 'Abhi', '', 'fd1c9a1a5cb222bbb823de9ba99917c9', 0.00, '6', '877713865840d13c3863289c0ec771bfa07b64b816fb5e997e5f4d71281dc158f17d0f28f310439505c5a5db08229eb4c36d3e0e67a5e3604385876118f07737', '2020-01-03 11:31:13.0', '20200103111212800110168164506098807', '9606146527', '', '', '', '', '', 'Txn Success', 'PAYTM', 'E000', 'No Error', '', '', '', 0, '2020-01-03 11:31:46'),
(5, '', '', '', '', 0.00, '', 0.00, 0.00, '0000-00-00 00:00:00', '', '', '', '', '', 0.00, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-03 11:38:42'),
(6, '1578031686677', '294050252', 'CASH', '294050252', 1.00, 'success', 1.00, 0.00, '2020-01-03 11:38:17', '1578031720000', ' 3 ', 'Abcd', '', '0bc829468bc4aefc3b17614e16d3bf98', 0.00, '9', 'c7f3bf8f656729701ea6f3affe6029e99b8e758bf22915d9f68ff5d16e98dbfe5a002c2031a0b4db26d801d04f9a1c64ded6caa56af1b0b14134db95c2e72441', '2020-01-03 11:38:19.0', '20200103111212800110168869205906567', '9606195703', '', '', '', '', '', 'Txn Success', 'PAYTM', 'E000', 'No Error', '', '', '', 0, '2020-01-03 11:38:47'),
(7, '', '', '', '', 0.00, '', 0.00, 0.00, '0000-00-00 00:00:00', '', '', '', '', '', 0.00, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-06 17:22:01'),
(8, '1578665366935', '295640638', 'CASH', '295640638', 0.00, 'failure', 0.10, 0.00, '2020-01-10 19:39:38', '1578665379000', ' 1 ', 'Laki', '', '4a49409292445e9b9b9c712b4d8eb990', 0.00, '14', '73033d0f4f27b126032ffd9037d79e3853ec4cbfe12ca5d66cdeba5940cf5a8dbdc538f6e6ca57a4b9a287b4e31aaf56019fe5a53d10bf8ee32d72964ed2807a', '', '', '', '', '', '', '', 'Received error while generating token', 'Error at the Bank Server end', 'PAYTM', 'E208', 'Error at the Bank Server end', '', '', '', 0, '2020-01-10 19:39:51'),
(9, '1578665394472', '295640708', 'CASH', '295640708', 0.00, 'failure', 0.10, 0.00, '2020-01-10 19:40:03', '1578665404000', ' 1 ', 'Laki', '', '4a49409292445e9b9b9c712b4d8eb990', 0.00, '14', 'd56b0e7eaa836717da6358b30238bb77e6079c2cae59483315db75d5bfdf7909764dd668ae327478bbb1fab10a5d8cb896a9ea927c12994ea24a81c6c9edbb7a', '', '', '', '', '', '', '', 'Received error while generating token', 'Error at the Bank Server end', 'PAYTM', 'E208', 'Error at the Bank Server end', '', '', '', 0, '2020-01-10 19:40:15'),
(10, '1578709587137', '295699417', 'CASH', '295699417', 0.00, 'failure', 0.10, 0.00, '2020-01-11 07:56:41', '1578709602000', ' 1 ', 'Laki', '', '4a49409292445e9b9b9c712b4d8eb990', 0.00, '14', 'f437f744892f9bc44cf25f5d302e05ac108939f4074f56416ae753490c55dcba5b7443e3062b7dab3173bd45c451269a3dbe2e960429b51249a4ee78bdc2f4eb', '', '', '', '', '', '', '', 'Received error while generating token', 'Error at the Bank Server end', 'PAYTM', 'E208', 'Error at the Bank Server end', '', '', '', 0, '2020-01-11 07:56:57'),
(11, '1578709618126', '295699440', 'CASH', '295699440', 0.00, 'failure', 0.10, 0.00, '2020-01-11 07:57:07', '1578709627000', ' 1 ', 'Laki', '', '4a49409292445e9b9b9c712b4d8eb990', 0.00, '14', 'f31a44ce8f2077523d621a369e1cce63601eedb6b0142e79e72755ac401bada4f783ea6aab8337c50df437258d7e3faf71a96d5ea7b2af6df4b04d3892a5ed68', '', '', '', '', '', '', '', 'Received error while generating token', 'Error at the Bank Server end', 'PAYTM', 'E208', 'Error at the Bank Server end', '', '', '', 0, '2020-01-11 07:57:16'),
(12, '', '', '', '', 0.00, '', 0.00, 0.00, '0000-00-00 00:00:00', '', '', '', '', '', 0.00, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-11 07:59:34'),
(13, '1578709710228', '295699567', 'CASH', '295699567', 1.00, 'success', 1.00, 0.00, '2020-01-11 07:58:41', '1578709771000', ' 1 ', 'Laki', '', '4a49409292445e9b9b9c712b4d8eb990', 0.00, '14', '3d2b1ce73ebe8241fc39c7536a892b84494bd7a21224a94051088820ab3f189ff236f33b73feafd5a87ebc35053477ae3f004faa78fe162b1214fe5444df6fe6', '2020-01-11 07:58:43.0', '20200111111212800110168892507139722', '9654236765', '', '', '', '', '', 'Txn Success', 'PAYTM', 'E000', 'No Error', '', '', '', 0, '2020-01-11 07:59:39'),
(14, '', '', '', '', 0.00, '', 0.00, 0.00, '0000-00-00 00:00:00', '', '', '', '', '', 0.00, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-11 08:04:22'),
(15, '1578710015972', '295700110', 'CASH', '295700110', 1.00, 'success', 1.00, 0.00, '2020-01-11 08:03:45', '1578710058000', ' 1 ', 'Guddu', '', 'edc07d681a02628ed13a89c8ce1d4c4b', 0.00, '21', 'b0709ee1eef4d8a64bef00e81b033ba0cbfdb2fab6a5cd2b8b66a48c6f83d4cb0dd0a60b05d93525266557730957e868a088253e5e00309b98c1cffc1a77ced3', '2020-01-11 08:03:47.0', '20200111111212800110168193007936035', '9654250723', '', '', '', '', '', 'Txn Success', 'PAYTM', 'E000', 'No Error', '', '', '', 0, '2020-01-11 08:04:27'),
(16, '', '', '', '', 0.00, '', 0.00, 0.00, '0000-00-00 00:00:00', '', '', '', '', '', 0.00, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-11 10:57:09'),
(17, '1578720392411', '295724095', 'CASH', '295724095', 1.00, 'success', 1.00, 0.00, '2020-01-11 10:56:42', '1578720427000', ' 1 ', 'John', '', 'de9a41990fcd7397a7be2d58b150576c', 0.00, '35', 'b31b764238090697205e8d8749d0534fddcbab11b744df5a93cde8d81720e5b4ceb7078d4d2d0fecfe3391966f854c62170bd295f5a68dd70c8308c30b3c12e0', '2020-01-11 10:56:43.0', '20200111111212800110168484007378850', '9655010107', '', '', '', '', '', 'Txn Success', 'PAYTM', 'E000', 'No Error', '', '', '', 0, '2020-01-11 10:57:17'),
(18, '', '', '', '', 0.00, '', 0.00, 0.00, '0000-00-00 00:00:00', '', '', '', '', '', 0.00, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-12 12:22:18'),
(19, '1578811906697', '295919548', 'CASH', '295919548', 1.00, 'success', 1.00, 0.00, '2020-01-12 12:21:57', '1578811937000', ' 1 ', 'Gchjhv', '', 'f2072a92cf4f0c2ab61e5b25fdcf5857', 0.00, '40', '712dd2776e797736ac22400de9c6107e7831d25765d806681ff989b0517758535953a86a3d7ea81ade91f56bcbd0bd7387d5f83e168c54c9d41ae1ab1cf1b677', '2020-01-12 12:21:58.0', '20200112111212800110168593807811233', '9660967323', '', '', '', '', '', 'Txn Success', 'PAYTM', 'E000', 'No Error', '', '', '', 0, '2020-01-12 12:22:24'),
(20, '', '', '', '', 0.00, '', 0.00, 0.00, '0000-00-00 00:00:00', '', '', '', '', '', 0.00, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-12 13:28:43'),
(21, '1578815839706', '295931133', 'CASH', '295931133', 1.00, 'success', 1.00, 0.00, '2020-01-12 13:27:29', '1578815920000', ' 1 ', 'Satrudhan', '', 'ef20297fb4e3ef6510fe92576ea60da0', 0.00, '55', 'b0c40bb7893a6a377fa965c9c60a06b8c72f7a649e1ea8505c2ab91b5ae930a470b0b0bf19a4acc71139ddb2e80d321cba4f32bf60dff60fe5dd203ce1659e72', '2020-01-12 13:27:31.0', '20200112111212800110168208007648382', '9661389181', '', '', '', '', '', 'Txn Success', 'PAYTM', 'E000', 'No Error', '', '', '', 0, '2020-01-12 13:28:47'),
(22, '', '', '', '', 0.00, '', 0.00, 0.00, '0000-00-00 00:00:00', '', '', '', '', '', 0.00, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-12 13:34:32'),
(23, '1578816232870', '295932353', 'CASH', '295932353', 1.00, 'success', 1.00, 0.00, '2020-01-12 13:34:01', '1578816270000', ' 1 ', 'Laxman', '', 'b0306ac34d9e4abf5fa9af3b77273a1a', 0.00, '56', 'ecc18db06a2cb078bbd0aa3473853a4f5288b2f1a558c889431b4948908755351df943909764874426d1be8d6e97f5d322d427b5fa28c64d4e6b278bac8aef93', '2020-01-12 13:34:03.0', '20200112111212800110168412707370828', '9661432651', '', '', '', '', '', 'Txn Success', 'PAYTM', 'E000', 'No Error', '', '', '', 0, '2020-01-12 13:34:38'),
(24, '', '', '', '', 0.00, '', 0.00, 0.00, '0000-00-00 00:00:00', '', '', '', '', '', 0.00, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-12 13:37:23'),
(25, '1578816374639', '295932802', 'CASH', '295932802', 1.00, 'success', 1.00, 0.00, '2020-01-12 13:36:22', '1578816440000', ' 1 ', 'Abhi', '', '2aa82012ea67dc1e05967313aae1b064', 0.00, '57', 'c79c0de7f22b8c6324e0206e377117c41bce196bba375dfb5fac4c2bc7649d5153af9724b1406df96cfeed9b08a6410888680ac862e88de27cee3363a6bf7fa3', '2020-01-12 13:36:24.0', '20200112111212800110168244007767105', '9661448017', '', '', '', '', '', 'Txn Success', 'PAYTM', 'E000', 'No Error', '', '', '', 0, '2020-01-12 13:37:50'),
(26, '', '', '', '', 0.00, '', 0.00, 0.00, '0000-00-00 00:00:00', '', '', '', '', '', 0.00, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-12 13:47:07'),
(27, '1578816949380', '295934302', 'CASH', '295934302', 1.00, 'success', 1.00, 0.00, '2020-01-12 13:45:58', '1578817025000', ' 1 ', 'Avijeet', '', '118a7833c93e8364b4b0f45c757ba0cc', 0.00, '58', '8db44a208abb0aaecda038dd5da283cf18c9acfb07ffc167fc8f017445373541657980c0177860d719888bd6c40befbfe99d4371df4442b02ad5e496134ec77c', '2020-01-12 13:46:00.0', '20200112111212800110168923908171730', '9661504535', '', '', '', '', '', 'Txn Success', 'PAYTM', 'E000', 'No Error', '', '', '', 0, '2020-01-12 13:47:13'),
(28, '', '', '', '', 0.00, '', 0.00, 0.00, '0000-00-00 00:00:00', '', '', '', '', '', 0.00, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-12 17:34:05'),
(29, '', '', '', '', 0.00, '', 0.00, 0.00, '0000-00-00 00:00:00', '', '', '', '', '', 0.00, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-12 17:59:38'),
(30, '1578832052946', '295969680', 'DC', '295969680', 1.00, 'success', 1.00, 0.00, '2020-01-12 17:58:52', '1578832175000', ' 1 ', 'Alok', '', '8c9f786e741c242692b6bc2fb1207091', 0.00, '59', 'c9777dcccf8328c0035a201f04c075c98324f466858e54f06f3b4ef75db39f6f3a7c6c3187c98fdac90da186d0ff0c97d517e87ceaadb34362d00283e7188223', '00', '361754', '20200112', '', '', '', 'AUTHPOSITIVE', '', 'Success', 'RUPAY', 'E000', 'No Error', 'payu', '606998XXXXXX5519', '', 0, '2020-01-12 17:59:55'),
(31, '', '', '', '', 0.00, '', 0.00, 0.00, '0000-00-00 00:00:00', '', '', '', '', '', 0.00, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-12 21:16:19'),
(32, '', '', '', '', 0.00, '', 0.00, 0.00, '0000-00-00 00:00:00', '', '', '', '', '', 0.00, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-12 21:16:23'),
(33, '', '', '', '', 0.00, '', 0.00, 0.00, '0000-00-00 00:00:00', '', '', '', '', '', 0.00, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-13 11:48:09'),
(34, '', '', '', '', 0.00, '', 0.00, 0.00, '0000-00-00 00:00:00', '', '', '', '', '', 0.00, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-13 11:48:13'),
(35, '', '', '', '', 0.00, '', 0.00, 0.00, '0000-00-00 00:00:00', '', '', '', '', '', 0.00, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-13 21:48:59'),
(36, '1578932294984', '296197524', 'CASH', '296197524', 1.00, 'success', 1.00, 0.00, '2020-01-13 21:48:24', '1578932336000', ' 1 ', 'Ram', '', '790e8ffe61b9bed43848757c4e8471bf', 0.00, '62', 'e2bd0348a6858c1463472363e74a20ebd6d9ceff7a29710ec631a1c457f6051b025c536a32c2d352405b6428b0af0636cfad17c2c7435069911596c0de019d31', '2020-01-13 21:48:27.0', '20200113111212800110168920008440009', '9669276443', '', '', '', '', '', 'Txn Success', 'PAYTM', 'E000', 'No Error', '', '', '', 0, '2020-01-13 21:49:03'),
(37, '', '', '', '', 0.00, '', 0.00, 0.00, '0000-00-00 00:00:00', '', '', '', '', '', 0.00, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-13 23:04:14'),
(38, '', '', '', '', 0.00, '', 0.00, 0.00, '0000-00-00 00:00:00', '', '', '', '', '', 0.00, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-13 23:09:24'),
(39, '', '', '', '', 0.00, '', 0.00, 0.00, '0000-00-00 00:00:00', '', '', '', '', '', 0.00, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-13 23:09:29'),
(40, '', '', '', '', 0.00, '', 0.00, 0.00, '0000-00-00 00:00:00', '', '', '', '', '', 0.00, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-15 21:10:32'),
(41, '1579102774498', '296542037', 'CASH', '296542037', 1.00, 'success', 1.00, 0.00, '2020-01-15 21:09:46', '1579102828000', ' 1 ', 'Alok', '', '5f91f0cb29d12d40f2f1078909ed9493', 0.00, '64', '90a211ae555d720fac3e7ac23e97a5d7220b8b734984fb2f09b58bed5e9e97542de856209cb12293c31133950529d8b54c35f936b5c2bc21d04673a638171971', '2020-01-15 21:09:50.0', '20200115111212800110168471908025628', '9680203009', '', '', '', '', '', 'Txn Success', 'PAYTM', 'E000', 'No Error', '', '', '', 0, '2020-01-15 21:10:41'),
(42, '', '', '', '', 0.00, '', 0.00, 0.00, '0000-00-00 00:00:00', '', '', '', '', '', 0.00, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-16 13:13:02'),
(43, '1579160463056', '296627704', 'CASH', '296627704', 1.00, 'success', 1.00, 0.00, '2020-01-16 13:11:13', '1579160555000', ' 1 ', 'Sonali', '', '1d362ed11b1c68cd8ce4b6116b639ad9', 0.00, '73', '6e98e76b44f23b310ac3374128ce027fb2fb71c922fdd89e8644bab998987028c54d2ee6d3792ad1d4173a8293f59dbbd0a0ebd498c873aaeeade4d6ddf185f3', '', '', '', '', '', 'PAYMENT_SUCCESS', '', '', 'Payment is successful', 'PHONEPE', 'E000', 'No Error', '', '', '', 0, '2020-01-16 13:13:06'),
(44, '1579160745061', '296628645', 'CASH', '296628645', 0.00, 'failure', 1.00, 0.00, '2020-01-16 13:15:54', '1579160756000', ' 1 ', 'Rahul', '', '02add3c4023293a24140a430478b4500', 0.00, '70', '149dfe607dee414a6ae05b83e0e431a000cb639846b0029f98541de66d80c74c70ebfb241e43faf77b9324600991fa554db1b58cdfdabe43caf3d10fe76c249f', '', '', '', '', '', '', '', '', 'Transaction denied due to blacklisted parameters.', 'PHONEPE', 'E307', 'Transaction denied due to risk', '', '', '', 0, '2020-01-16 13:16:03'),
(45, '1579175273938', '296672064', 'CASH', '296672064', 0.00, 'failure', 1.00, 0.00, '2020-01-16 17:18:04', '1579175286000', ' 1 ', 'Rahul', '', 'a87c3cabc28b6513d1162af4522458a7', 0.00, '70', 'f6393ed8e39495160bc2440bab9497e89701bc78dd26a4fe09408e174ff905b65469514578cd0a2d38bc2b0d07d8ee299476a4757d1b7ada0e3f6b881243e806', '', '', '', '', '', '', '', '', 'Transaction denied due to blacklisted parameters.', 'PHONEPE', 'E307', 'Transaction denied due to risk', '', '', '', 0, '2020-01-16 17:18:13'),
(46, '1579175301395', '296672123', 'CASH', '296672123', 0.00, 'failure', 1.00, 0.00, '2020-01-16 17:18:29', '1579175311000', ' 1 ', 'Rahul', '', 'a87c3cabc28b6513d1162af4522458a7', 0.00, '70', 'c18021d5a80d5217267ed22693e94a4cb39ff92938d08fb3d0205f64aec4f25239b76b64ce3539fe9188a7a706fb5c4e3603f8cf261d9e6e3f407da49dc34c50', '', '', '', '', '', '', '', '', 'Transaction denied due to blacklisted parameters.', 'PHONEPE', 'E307', 'Transaction denied due to risk', '', '', '', 0, '2020-01-16 17:18:37'),
(47, '', '', '', '', 0.00, '', 0.00, 0.00, '0000-00-00 00:00:00', '', '', '', '', '', 0.00, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-16 21:06:38'),
(48, '1579188845737', '296712014', 'DC', '296712014', 1.00, 'success', 1.00, 0.00, '2020-01-16 21:04:44', '1579188993000', ' 1 ', 'Mona', '', '941fe296d004e7de2b6176108d573b4a', 0.00, '69', '246ffd1d4c4c185e420b82cf4c751066e3762c175ff0baaf7721343d7ffa75a19be1bd2f0658067ec1590dd7052a4bb0431a2878dbb2bed9dbf0f24b083e2944', '', '756064', '', '', '', '', '', '', 'success', 'RUPAY', 'E000', 'No Error', 'payu', '607431XXXXXX8397', '', 0, '2020-01-16 21:06:41'),
(49, '1579189038098', '296712519', 'DC', '296712519', 0.00, 'failure', 1.00, 0.00, '2020-01-16 21:07:42', '1579189064000', ' 1 ', 'Rahul', '', 'dcb385d33dd532b7ef2dfb63af6ce0a9', 0.00, '70', 'aa2dd6da18b218a9a5c1b9a6974d29fd53d8ac0630bee7ad7c700397b3eb87900b51d68c7e868f7ac9caa53fec96e9f8be11efaba16535caf24edf03d446316d', '', '', '', '', '', '', '', '', 'Transaction denied due to blacklisted parameters.', 'RUPAY', 'E307', 'Transaction denied due to risk', 'payu', '607431XXXXXX8397', '', 0, '2020-01-16 21:07:52'),
(50, '1579189073437', '296712619', 'CASH', '296712619', 0.00, 'failure', 1.00, 0.00, '2020-01-16 21:08:02', '1579189083000', ' 1 ', 'Rahul', '', 'dcb385d33dd532b7ef2dfb63af6ce0a9', 0.00, '70', '581962d211b4d5ce456e5c8fb67e0af8faac4d601fc46628ce609573a835330d2596ca97a3e58ed600bc6dcd8710504ff8a0c666e74847e1a31d0d4f893ab26a', '', '', '', '', '', '', '', '', 'Transaction denied due to blacklisted parameters.', 'PAYTM', 'E307', 'Transaction denied due to risk', '', '', '', 0, '2020-01-16 21:08:11'),
(51, '1579189107606', '296712700', 'CASH', '296712700', 0.00, 'failure', 1.00, 0.00, '2020-01-16 21:08:36', '1579189118000', ' 1 ', 'Rahul', '', 'dcb385d33dd532b7ef2dfb63af6ce0a9', 0.00, '70', '9d1a47a58d13fec248458950369b1fd08b71c5193ac43cb27b3044956d5f09d7618a5f7aeaeb07b787e3b5185665bd1b73e5fd96fbbd28ec937fd4010bbdd4fa', '', '', '', '', '', '', '', '', 'Transaction denied due to blacklisted parameters.', 'PAYTM', 'E307', 'Transaction denied due to risk', '', '', '', 0, '2020-01-16 21:08:47'),
(52, '1579189230917', '296713168', 'CASH', '296713168', 0.00, 'failure', 1.00, 0.00, '2020-01-16 21:10:40', '1579189241000', ' 1 ', 'Rahul', '', '415ddbaff7e80dfd4783e147ea8c5edd', 0.00, '70', 'c11f89f5bc7d781480b7a79bf29f801703a506bd49c282adefce424c30b49af40f77f8825510ee1fc1030d51b878aaaef7efd1df00cd304346b79815df4d1ca8', '', '', '', '', '', '', '', '', 'Transaction denied due to blacklisted parameters.', 'PAYTM', 'E307', 'Transaction denied due to risk', '', '', '', 0, '2020-01-16 21:10:49'),
(53, '', '', '', '', 0.00, '', 0.00, 0.00, '0000-00-00 00:00:00', '', '', '', '', '', 0.00, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-16 21:12:57'),
(54, '1579189330721', '296713392', 'CASH', '296713392', 1.00, 'success', 1.00, 0.00, '2020-01-16 21:12:18', '1579189375000', ' 1 ', 'Roma', '', 'be880d29d64ac8a8077958cc2696d17c', 0.00, '74', 'c9333daddb5c2c769f1dbc83a43da4bff4c7e84c46554ee1baf6c13dfd483a6d3bdc524f2f5a805df3decd57414939a5b8abee074822c6b4db730ddb109e7fdd', '2020-01-16 21:12:20.0', '20200116111212800110168500108535639', '9685382447', '', '', '', '', '', 'Txn Success', 'PAYTM', 'E000', 'No Error', '', '', '', 0, '2020-01-16 21:13:03'),
(55, '', '', '', '', 0.00, '', 0.00, 0.00, '0000-00-00 00:00:00', '', '', '', '', '', 0.00, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-16 21:17:56'),
(56, '1579189609304', '296714114', 'CASH', '296714114', 1.00, 'success', 1.00, 0.00, '2020-01-16 21:16:57', '1579189667000', ' 1 ', 'Haka', '', '51ce59f482af51a7920e9540a05971d5', 0.00, '75', '6065637d246f44895837214a44d1c7970108e7d799c2043eeadaf7357cc1bc9e65d524b1e71c3bc5a151873da6e1d1679495565f21c2d379c5e41c21ac8e7d32', '', '', '', '', '', 'PAYMENT_SUCCESS', '', '', 'Payment is successful', 'PHONEPE', 'E000', 'No Error', '', '', '', 0, '2020-01-16 21:18:01'),
(57, '', '', '', '', 0.00, '', 0.00, 0.00, '0000-00-00 00:00:00', '', '', '', '', '', 0.00, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-16 21:20:02'),
(58, '1579189742720', '296714441', 'CASH', '296714441', 1.00, 'success', 1.00, 0.00, '2020-01-16 21:19:09', '1579189792000', ' 1 ', 'Haka', '', '4e8ee5d34e241340bdce83692e063e8a', 0.00, '76', 'e848139632c429696dea2368f991921be55580bc4e33bcf7910818c4fc4e7bfcfe44544cc138590bc726aa3f512a2aba40d895076fa40a9531bac48fb225e41c', '', '', '', '', '', 'PAYMENT_SUCCESS', '', '', 'Payment is successful', 'PHONEPE', 'E000', 'No Error', '', '', '', 0, '2020-01-16 21:20:11'),
(59, '', '', '', '', 0.00, '', 0.00, 0.00, '0000-00-00 00:00:00', '', '', '', '', '', 0.00, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-19 18:40:15'),
(60, '1579439331491', '297252826', 'CASH', '297252826', 20.00, 'success', 20.00, 0.00, '2020-01-19 18:39:10', '1579439406000', ' 2 ', 'Ankita', '', '9f613be830318e8602a7f4daab238055', 0.00, '78', '618800ea453d60877ee50c16365406e0895268ad7089c9e55d41e815507da6e75571ff14f57984a2a721287dc049341e77e20a74496fe2230b2b1cecda6406a5', '', '', '', '', '', 'PAYMENT_SUCCESS', '', '', 'Payment is successful', 'PHONEPE', 'E000', 'No Error', '', '', '', 0, '2020-01-19 18:40:19'),
(61, '', '', '', '', 0.00, '', 0.00, 0.00, '0000-00-00 00:00:00', '', '', '', '', '', 0.00, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2020-01-19 18:41:57'),
(62, '1579439460518', '297253179', 'CASH', '297253179', 50.00, 'success', 50.00, 0.00, '2020-01-19 18:41:10', '1579439509000', ' 1 ', 'Ankita', '', '9f613be830318e8602a7f4daab238055', 0.00, '78', '5c7f66f00f21cc000f926d8e8a71af316c260258027cd1828a561fb4bf6095b2ff174a3bf88e41489f8b4fc61a601d57353d9974df76d82ec11e711a72db10d1', '', '', '', '', '', 'PAYMENT_SUCCESS', '', '', 'Payment is successful', 'PHONEPE', 'E000', 'No Error', '', '', '', 0, '2020-01-19 18:42:08'),
(63, '1579796866423', '298162917', 'CASH', '298162917', 50.00, 'success', 50.00, 0.00, '2020-01-23 21:59:18', '1579797024000', ' 1 ', 'Kishan', '', '193b3bbc90d640336795a7ae73f8cde5', 0.00, '85', 'be53887d2ed5b138b8dc9496e72d2582bc9f5c60c6c0267cc6ade34debc2249699dedf8b21563cf5a0aaf175634018b774d471240b0a7227d3a7f061a0c067f0', '', '', '', '', '', 'PAYMENT_SUCCESS', '', '', 'Payment is successful', 'PHONEPE', 'E000', 'No Error', '', '', '', 0, '2020-01-23 22:00:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `payment_details`
--
ALTER TABLE `payment_details`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
