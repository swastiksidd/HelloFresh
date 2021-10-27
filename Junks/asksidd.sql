-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 14, 2015 at 08:42 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `asksidd`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_type`
--

CREATE TABLE IF NOT EXISTS `category_type` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) NOT NULL,
  `submitted_by` int(11) NOT NULL,
  `submitted_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='This table contains details of categories' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `category_type`
--

INSERT INTO `category_type` (`category_id`, `category_name`, `submitted_by`, `submitted_time`) VALUES
(1, 'Hosting', 1, '2015-10-30 14:47:38'),
(2, 'Plugins', 1, '2015-10-30 14:53:13');

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE IF NOT EXISTS `product_type` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_post_id` int(11) NOT NULL,
  `final_rating` int(11) NOT NULL DEFAULT '8',
  `submitted_by` int(11) NOT NULL,
  `submitted_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`product_id`, `category_id`, `product_name`, `product_post_id`, `final_rating`, `submitted_by`, `submitted_time`) VALUES
(1, 1, 'Hostgator', 33, 8, 1, '2015-10-30 18:30:00'),
(2, 1, 'Dreamhost', 29, 8, 1, '2015-10-30 14:49:38'),
(3, 1, 'Justhost', 24, 8, 1, '2015-10-30 14:50:11'),
(4, 1, 'Bluehost', 21, 7, 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `p_hosting`
--

CREATE TABLE IF NOT EXISTS `p_hosting` (
  `product_name` varchar(100) NOT NULL,
  `cust_support` float NOT NULL,
  `plans_packages` float NOT NULL,
  `cpanel_features` float NOT NULL,
  `price` float NOT NULL,
  `money_return_policy` float NOT NULL,
  `security` float NOT NULL,
  `bandwidth` float NOT NULL,
  `performance` float NOT NULL,
  `average_rate` float NOT NULL,
  `submitted_by` int(11) NOT NULL,
  `submitted_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hosting_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`hosting_id`),
  UNIQUE KEY `product_name` (`product_name`,`submitted_by`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='This table contains reviews from users' AUTO_INCREMENT=8 ;

--
-- Dumping data for table `p_hosting`
--

INSERT INTO `p_hosting` (`product_name`, `cust_support`, `plans_packages`, `cpanel_features`, `price`, `money_return_policy`, `security`, `bandwidth`, `performance`, `average_rate`, `submitted_by`, `submitted_time`, `hosting_id`) VALUES
('hostgator', 8, 8, 8, 8, 8, 8, 8, 8, 8, 1, '2015-10-30 15:00:03', 3),
('dreamhost', 8, 8, 8, 8, 8, 8, 8, 8, 8, 1, '2015-10-30 18:53:25', 5),
('justhost', 8, 8, 8, 8, 8, 8, 8, 8, 8, 1, '2015-10-31 16:38:51', 7);

-- --------------------------------------------------------

--
-- Table structure for table `test_table`
--

CREATE TABLE IF NOT EXISTS `test_table` (
  `email` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_table`
--

INSERT INTO `test_table` (`email`, `name`) VALUES
('sethia@gmail.com', 'siddharth');

-- --------------------------------------------------------

--
-- Table structure for table `wp_cf_form_entries`
--

CREATE TABLE IF NOT EXISTS `wp_cf_form_entries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` varchar(18) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL,
  `datestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(20) NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `user_id` (`user_id`),
  KEY `date_time` (`datestamp`),
  KEY `status` (`status`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `wp_cf_form_entries`
--

INSERT INTO `wp_cf_form_entries` (`id`, `form_id`, `user_id`, `datestamp`, `status`) VALUES
(1, 'CF563b90e978388', 1, '2015-11-05 12:13:46', 'active'),
(2, 'CF563b90e978388', 1, '2015-11-05 12:18:51', 'active'),
(3, 'CF563ed3ff4fa98', 1, '2015-11-07 23:19:32', 'active'),
(4, 'CF563ed3ff4fa98', 1, '2015-11-08 04:05:22', 'active'),
(5, 'CF5633cb3b91655', 1, '2015-11-08 04:32:40', 'trash'),
(6, 'CF5633cb3b91655', 1, '2015-11-08 04:34:51', 'trash'),
(7, 'CF5633cb3b91655', 1, '2015-11-08 04:37:41', 'trash'),
(8, 'CF5633cb3b91655', 1, '2015-11-08 04:39:50', 'trash'),
(9, 'CF5633cb3b91655', 1, '2015-11-08 04:40:38', 'trash'),
(10, 'CF5633cb3b91655', 1, '2015-11-08 04:41:47', 'trash'),
(11, 'CF5633cb3b91655', 1, '2015-11-08 04:59:41', 'trash'),
(12, 'CF5633cb3b91655', 1, '2015-11-08 05:00:42', 'trash'),
(13, 'CF5633cb3b91655', 1, '2015-11-08 05:02:46', 'trash'),
(14, 'CF5633cb3b91655', 1, '2015-11-08 05:04:10', 'trash'),
(15, 'CF5633cb3b91655', 1, '2015-11-08 05:08:31', 'trash'),
(16, 'CF5633cb3b91655', 1, '2015-11-12 23:40:11', 'active'),
(17, 'CF5633cb3b91655', 1, '2015-11-12 23:49:54', 'active'),
(18, 'CF5633cb3b91655', 1, '2015-11-12 23:52:47', 'active'),
(19, 'CF5633cb3b91655', 1, '2015-11-13 23:50:43', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `wp_cf_form_entry_meta`
--

CREATE TABLE IF NOT EXISTS `wp_cf_form_entry_meta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `process_id` varchar(255) DEFAULT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `meta_key` (`meta_key`),
  KEY `entry_id` (`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cf_form_entry_values`
--

CREATE TABLE IF NOT EXISTS `wp_cf_form_entry_values` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `field_id` varchar(20) NOT NULL,
  `slug` varchar(255) NOT NULL DEFAULT '',
  `value` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `form_id` (`entry_id`),
  KEY `field_id` (`field_id`),
  KEY `slug` (`slug`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=176 ;

--
-- Dumping data for table `wp_cf_form_entry_values`
--

INSERT INTO `wp_cf_form_entry_values` (`id`, `entry_id`, `field_id`, `slug`, `value`) VALUES
(1, 1, 'fld_6432785', 'email', 'sethia@gmail.com'),
(2, 1, 'fld_7318707', 'full_name', 'siddharth'),
(3, 1, 'fld_2507047', 'submit_data', 'click'),
(4, 2, 'fld_6432785', 'email', 'tawde@gmail.com'),
(5, 2, 'fld_7318707', 'full_name', 'mayur asole'),
(6, 2, 'fld_2507047', 'submit_data', 'click'),
(7, 3, 'fld_7447749', 'namebox', 'tawde'),
(8, 3, 'fld_9998292', 'email', 'tawde@email.com'),
(9, 3, 'fld_2633776', 'submit', 'click'),
(10, 4, 'fld_2633776', 'submit', 'click'),
(11, 5, 'fld_5338824', 'category_selection', 'Hosting'),
(12, 5, 'fld_7566251', 'product_name', 'Dreamhost'),
(13, 5, 'fld_5743175', 'cust_support', '9.5'),
(14, 5, 'fld_5361631', 'plans_pkg', '9.6'),
(15, 5, 'fld_1049972', 'cpanel_features', '9.3'),
(16, 5, 'fld_5253080', 'price', '9.8'),
(17, 5, 'fld_9642452', 'mbg', '9.6'),
(18, 5, 'fld_5383902', 'security', '9.3'),
(19, 5, 'fld_2574933', 'bandwidth', '9.3'),
(20, 5, 'fld_9800935', 'performance', '9'),
(21, 5, 'fld_6831721', 'rating', 'click'),
(22, 6, 'fld_5338824', 'category_selection', 'Hosting'),
(23, 6, 'fld_7566251', 'product_name', 'Justhost'),
(24, 6, 'fld_5743175', 'cust_support', '9.3'),
(25, 6, 'fld_5361631', 'plans_pkg', '9.5'),
(26, 6, 'fld_1049972', 'cpanel_features', '9.4'),
(27, 6, 'fld_5253080', 'price', '9.5'),
(28, 6, 'fld_9642452', 'mbg', '9.7'),
(29, 6, 'fld_5383902', 'security', '9.2'),
(30, 6, 'fld_2574933', 'bandwidth', '10'),
(31, 6, 'fld_9800935', 'performance', '9.6'),
(32, 6, 'fld_6831721', 'rating', 'click'),
(33, 7, 'fld_5338824', 'category_selection', 'Hosting'),
(34, 7, 'fld_7566251', 'product_name', 'Justhost'),
(35, 7, 'fld_5743175', 'cust_support', '6.5'),
(36, 7, 'fld_5361631', 'plans_pkg', '7.1'),
(37, 7, 'fld_1049972', 'cpanel_features', '7.8'),
(38, 7, 'fld_5253080', 'price', '8.4'),
(39, 7, 'fld_9642452', 'mbg', '8.9'),
(40, 7, 'fld_5383902', 'security', '9.5'),
(41, 7, 'fld_2574933', 'bandwidth', '9.8'),
(42, 7, 'fld_9800935', 'performance', '10'),
(43, 7, 'fld_6831721', 'rating', 'click'),
(44, 8, 'fld_5338824', 'category_selection', 'Hosting'),
(45, 8, 'fld_7566251', 'product_name', 'Justhost'),
(46, 8, 'fld_5743175', 'cust_support', '6.7'),
(47, 8, 'fld_5361631', 'plans_pkg', '6.3'),
(48, 8, 'fld_1049972', 'cpanel_features', '7.1'),
(49, 8, 'fld_5253080', 'price', '7.5'),
(50, 8, 'fld_9642452', 'mbg', '7.9'),
(51, 8, 'fld_5383902', 'security', '8.3'),
(52, 8, 'fld_2574933', 'bandwidth', '9'),
(53, 8, 'fld_9800935', 'performance', '9.6'),
(54, 8, 'fld_6831721', 'rating', 'click'),
(55, 9, 'fld_5338824', 'category_selection', 'Hosting'),
(56, 9, 'fld_7566251', 'product_name', 'Hostgator'),
(57, 9, 'fld_5743175', 'cust_support', '2.8'),
(58, 9, 'fld_5361631', 'plans_pkg', '3.2'),
(59, 9, 'fld_1049972', 'cpanel_features', '3.7'),
(60, 9, 'fld_5253080', 'price', '4.3'),
(61, 9, 'fld_9642452', 'mbg', '4.9'),
(62, 9, 'fld_5383902', 'security', '5.5'),
(63, 9, 'fld_2574933', 'bandwidth', '6.2'),
(64, 9, 'fld_9800935', 'performance', '6.8'),
(65, 9, 'fld_6831721', 'rating', 'click'),
(66, 10, 'fld_5338824', 'category_selection', 'Hosting'),
(67, 10, 'fld_7566251', 'product_name', 'Dreamhost'),
(68, 10, 'fld_5743175', 'cust_support', '4.5'),
(69, 10, 'fld_5361631', 'plans_pkg', '5'),
(70, 10, 'fld_1049972', 'cpanel_features', '5.7'),
(71, 10, 'fld_5253080', 'price', '6.2'),
(72, 10, 'fld_9642452', 'mbg', '6.9'),
(73, 10, 'fld_5383902', 'security', '7.6'),
(74, 10, 'fld_2574933', 'bandwidth', '8.2'),
(75, 10, 'fld_9800935', 'performance', '8.9'),
(76, 10, 'fld_6831721', 'rating', 'click'),
(77, 11, 'fld_5338824', 'category_selection', 'Hosting'),
(78, 11, 'fld_7566251', 'product_name', 'Dreamhost'),
(79, 11, 'fld_5743175', 'cust_support', '6.5'),
(80, 11, 'fld_5361631', 'plans_pkg', '7.6'),
(81, 11, 'fld_1049972', 'cpanel_features', '8.8'),
(82, 11, 'fld_5253080', 'price', '9.6'),
(83, 11, 'fld_9642452', 'mbg', '9.3'),
(84, 11, 'fld_5383902', 'security', '9.8'),
(85, 11, 'fld_2574933', 'bandwidth', '9'),
(86, 11, 'fld_9800935', 'performance', '10'),
(87, 11, 'fld_6831721', 'rating', 'click'),
(88, 12, 'fld_5338824', 'category_selection', 'Hosting'),
(89, 12, 'fld_7566251', 'product_name', 'Bluehost'),
(90, 12, 'fld_5743175', 'cust_support', '7.5'),
(91, 12, 'fld_5361631', 'plans_pkg', '7.9'),
(92, 12, 'fld_1049972', 'cpanel_features', '8.3'),
(93, 12, 'fld_5253080', 'price', '8.7'),
(94, 12, 'fld_9642452', 'mbg', '9'),
(95, 12, 'fld_5383902', 'security', '9.3'),
(96, 12, 'fld_2574933', 'bandwidth', '9.6'),
(97, 12, 'fld_9800935', 'performance', '10'),
(98, 12, 'fld_6831721', 'rating', 'click'),
(99, 13, 'fld_5338824', 'category_selection', 'Hosting'),
(100, 13, 'fld_7566251', 'product_name', 'Dreamhost'),
(101, 13, 'fld_5743175', 'cust_support', '7.2'),
(102, 13, 'fld_5361631', 'plans_pkg', '7.6'),
(103, 13, 'fld_1049972', 'cpanel_features', '8.2'),
(104, 13, 'fld_5253080', 'price', '8.6'),
(105, 13, 'fld_9642452', 'mbg', '8.9'),
(106, 13, 'fld_5383902', 'security', '9.3'),
(107, 13, 'fld_2574933', 'bandwidth', '9.7'),
(108, 13, 'fld_9800935', 'performance', '10'),
(109, 13, 'fld_6831721', 'rating', 'click'),
(110, 14, 'fld_5338824', 'category_selection', 'Hosting'),
(111, 14, 'fld_7566251', 'product_name', 'Justhost'),
(112, 14, 'fld_5743175', 'cust_support', '3.1'),
(113, 14, 'fld_5361631', 'plans_pkg', '4.6'),
(114, 14, 'fld_1049972', 'cpanel_features', '5.8'),
(115, 14, 'fld_5253080', 'price', '6.8'),
(116, 14, 'fld_9642452', 'mbg', '7.6'),
(117, 14, 'fld_5383902', 'security', '8.3'),
(118, 14, 'fld_2574933', 'bandwidth', '9.1'),
(119, 14, 'fld_9800935', 'performance', '9.8'),
(120, 14, 'fld_6831721', 'rating', 'click'),
(121, 15, 'fld_5338824', 'category_selection', 'Hosting'),
(122, 15, 'fld_7566251', 'product_name', 'Justhost'),
(123, 15, 'fld_5743175', 'cust_support', '7.3'),
(124, 15, 'fld_5361631', 'plans_pkg', '7.8'),
(125, 15, 'fld_1049972', 'cpanel_features', '8.2'),
(126, 15, 'fld_5253080', 'price', '8.7'),
(127, 15, 'fld_9642452', 'mbg', '9.2'),
(128, 15, 'fld_5383902', 'security', '9.5'),
(129, 15, 'fld_2574933', 'bandwidth', '9.8'),
(130, 15, 'fld_9800935', 'performance', '10'),
(131, 15, 'fld_6831721', 'rating', 'click'),
(132, 16, 'fld_5338824', 'category', 'Hosting'),
(133, 16, 'fld_7566251', 'product', 'Justhost'),
(134, 16, 'fld_5743175', 'cust_support', '5.1'),
(135, 16, 'fld_5361631', 'plans_pkg', '6'),
(136, 16, 'fld_1049972', 'cpanel_features', '6.5'),
(137, 16, 'fld_5253080', 'price', '7'),
(138, 16, 'fld_9642452', 'mbg', '7.4'),
(139, 16, 'fld_5383902', 'security', '7.9'),
(140, 16, 'fld_2574933', 'bandwidth', '8.3'),
(141, 16, 'fld_9800935', 'performance', '8.6'),
(142, 16, 'fld_6831721', 'rating', 'click'),
(143, 17, 'fld_5338824', 'category', 'Hosting'),
(144, 17, 'fld_7566251', 'product', 'Justhost'),
(145, 17, 'fld_5743175', 'cust_support', '6.6'),
(146, 17, 'fld_5361631', 'plans_pkg', '7.3'),
(147, 17, 'fld_1049972', 'cpanel_features', '7.9'),
(148, 17, 'fld_5253080', 'price', '8.3'),
(149, 17, 'fld_9642452', 'mbg', '8.6'),
(150, 17, 'fld_5383902', 'security', '9.1'),
(151, 17, 'fld_2574933', 'bandwidth', '9.4'),
(152, 17, 'fld_9800935', 'performance', '10'),
(153, 17, 'fld_6831721', 'rating', 'click'),
(154, 18, 'fld_5338824', 'category', 'Hosting'),
(155, 18, 'fld_7566251', 'product', 'Justhost'),
(156, 18, 'fld_5743175', 'cust_support', '2.5'),
(157, 18, 'fld_5361631', 'plans_pkg', '4'),
(158, 18, 'fld_1049972', 'cpanel_features', '5.4'),
(159, 18, 'fld_5253080', 'price', '6.2'),
(160, 18, 'fld_9642452', 'mbg', '7.3'),
(161, 18, 'fld_5383902', 'security', '8.5'),
(162, 18, 'fld_2574933', 'bandwidth', '9.3'),
(163, 18, 'fld_9800935', 'performance', '10'),
(164, 18, 'fld_6831721', 'rating', 'click'),
(165, 19, 'fld_5338824', 'category', 'Hosting'),
(166, 19, 'fld_7566251', 'product', 'Bluehost'),
(167, 19, 'fld_5743175', 'cust_support', '5.1'),
(168, 19, 'fld_5361631', 'plans_pkg', '5.9'),
(169, 19, 'fld_1049972', 'cpanel_features', '6.7'),
(170, 19, 'fld_5253080', 'price', '7.3'),
(171, 19, 'fld_9642452', 'mbg', '7.6'),
(172, 19, 'fld_5383902', 'security', '8.5'),
(173, 19, 'fld_2574933', 'bandwidth', '9.2'),
(174, 19, 'fld_9800935', 'performance', '9.7'),
(175, 19, 'fld_6831721', 'rating', 'click');

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_login_redirects`
--

CREATE TABLE IF NOT EXISTS `wp_login_redirects` (
  `rul_type` enum('user','role','level','all','register') NOT NULL,
  `rul_value` varchar(255) DEFAULT NULL,
  `rul_url` longtext,
  `rul_url_logout` longtext,
  `rul_order` int(2) NOT NULL DEFAULT '0',
  UNIQUE KEY `rul_type` (`rul_type`,`rul_value`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wp_login_redirects`
--

INSERT INTO `wp_login_redirects` (`rul_type`, `rul_value`, `rul_url`, `rul_url_logout`, `rul_order`) VALUES
('all', NULL, NULL, NULL, 0),
('register', NULL, '', NULL, 0),
('role', 'subscriber', 'http://localhost/site1/?page_id=2', '', 0),
('role', 'contributor', 'http://localhost/site1/?page_id=2', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf_objectmeta`
--

CREATE TABLE IF NOT EXISTS `wp_nf_objectmeta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `object_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) NOT NULL,
  `meta_value` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=82 ;

--
-- Dumping data for table `wp_nf_objectmeta`
--

INSERT INTO `wp_nf_objectmeta` (`id`, `object_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'date_updated', '2015-10-30'),
(2, 1, 'form_title', 'Contact Form'),
(3, 1, 'show_title', '0'),
(4, 1, 'save_subs', '1'),
(5, 1, 'logged_in', '0'),
(6, 1, 'append_page', ''),
(7, 1, 'ajax', '0'),
(8, 1, 'clear_complete', '1'),
(9, 1, 'hide_complete', '1'),
(10, 1, 'success_msg', 'Your form has been successfully submitted.'),
(11, 1, 'email_from', ''),
(12, 1, 'email_type', 'html'),
(13, 1, 'user_email_msg', 'Thank you so much for contacting us. We will get back to you shortly.'),
(14, 1, 'user_email_fields', '0'),
(15, 1, 'admin_email_msg', ''),
(16, 1, 'admin_email_fields', '1'),
(17, 1, 'admin_attach_csv', '0'),
(18, 1, 'email_from_name', ''),
(19, 2, 'date_updated', '2014-09-09'),
(20, 2, 'active', '1'),
(21, 2, 'name', 'Email User'),
(22, 2, 'type', 'email'),
(23, 2, 'email_format', 'html'),
(24, 2, 'attach_csv', '1'),
(25, 2, 'from_name', ''),
(26, 2, 'from_address', ''),
(27, 2, 'reply_to', ''),
(28, 2, 'to', 'field_2'),
(29, 2, 'cc', ''),
(30, 2, 'bcc', ''),
(31, 2, 'email_subject', 'Thank you for contacting us!'),
(32, 2, 'email_message', 'Thank you so much for contacting us. We will get back to you shortly.'),
(33, 2, 'redirect_url', ''),
(34, 2, 'success_message_loc', 'ninja_forms_display_before_fields'),
(35, 2, 'success_msg', ''),
(36, 3, 'date_updated', '2014-09-09'),
(37, 3, 'active', '1'),
(38, 3, 'name', 'Success Message'),
(39, 3, 'type', 'success_message'),
(40, 3, 'email_format', 'html'),
(41, 3, 'attach_csv', '0'),
(42, 3, 'from_name', ''),
(43, 3, 'from_address', ''),
(44, 3, 'reply_to', ''),
(45, 3, 'to', ''),
(46, 3, 'cc', ''),
(47, 3, 'bcc', ''),
(48, 3, 'email_subject', ''),
(49, 3, 'email_message', ''),
(50, 3, 'redirect_url', ''),
(51, 3, 'success_message_loc', 'ninja_forms_display_after_fields'),
(52, 3, 'success_msg', 'Your form has been successfully submitted.'),
(53, 3, 'text_message_number', ''),
(54, 3, 'text_message_carrier', '0'),
(55, 3, 'text_message_message', ''),
(56, 4, 'date_updated', '2014-09-09'),
(57, 4, 'active', '1'),
(58, 4, 'name', 'Email Admin'),
(59, 4, 'type', 'email'),
(60, 4, 'email_format', 'html'),
(61, 4, 'attach_csv', '1'),
(62, 4, 'from_name', ''),
(63, 4, 'from_address', ''),
(64, 4, 'reply_to', 'field_2'),
(65, 4, 'to', ''),
(66, 4, 'cc', ''),
(67, 4, 'bcc', ''),
(68, 4, 'email_subject', 'Ninja Form Submission'),
(69, 4, 'email_message', '[ninja_forms_all_fields]'),
(70, 4, 'redirect_url', ''),
(71, 4, 'success_message_loc', 'ninja_forms_display_before_fields'),
(72, 4, 'success_msg', ''),
(73, 4, 'text_message_number', ''),
(74, 4, 'text_message_carrier', '0'),
(75, 4, 'text_message_message', ''),
(76, 5, 'date_updated', '2015-10-30 19:29:49'),
(77, 5, 'clear_complete', '1'),
(78, 5, 'hide_complete', '1'),
(79, 5, 'show_title', '0'),
(80, 5, 'status', ''),
(81, 5, 'form_title', 'Review form');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf_objects`
--

CREATE TABLE IF NOT EXISTS `wp_nf_objects` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `wp_nf_objects`
--

INSERT INTO `wp_nf_objects` (`id`, `type`) VALUES
(1, 'form'),
(2, 'notification'),
(3, 'notification'),
(4, 'notification'),
(5, 'form');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_nf_relationships` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `child_id` bigint(20) NOT NULL,
  `parent_id` bigint(20) NOT NULL,
  `child_type` varchar(255) NOT NULL,
  `parent_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `wp_nf_relationships`
--

INSERT INTO `wp_nf_relationships` (`id`, `child_id`, `parent_id`, `child_type`, `parent_type`) VALUES
(1, 2, 1, 'notification', 'form'),
(2, 3, 1, 'notification', 'form'),
(3, 4, 1, 'notification', 'form');

-- --------------------------------------------------------

--
-- Table structure for table `wp_ninja_forms_fav_fields`
--

CREATE TABLE IF NOT EXISTS `wp_ninja_forms_fav_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `row_type` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `data` longtext NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=93 ;

--
-- Dumping data for table `wp_ninja_forms_fav_fields`
--

INSERT INTO `wp_ninja_forms_fav_fields` (`id`, `row_type`, `type`, `order`, `data`, `name`) VALUES
(2, 0, '_list', 0, 'a:10:{s:5:"label";s:14:"State Dropdown";s:9:"label_pos";s:4:"left";s:9:"list_type";s:8:"dropdown";s:10:"multi_size";s:1:"5";s:15:"list_show_value";s:1:"1";s:4:"list";a:1:{s:7:"options";a:51:{i:0;a:3:{s:5:"label";s:7:"Alabama";s:5:"value";s:2:"AL";s:8:"selected";s:1:"0";}i:1;a:3:{s:5:"label";s:6:"Alaska";s:5:"value";s:2:"AK";s:8:"selected";s:1:"0";}i:2;a:3:{s:5:"label";s:7:"Arizona";s:5:"value";s:2:"AZ";s:8:"selected";s:1:"0";}i:3;a:3:{s:5:"label";s:8:"Arkansas";s:5:"value";s:2:"AR";s:8:"selected";s:1:"0";}i:4;a:3:{s:5:"label";s:10:"California";s:5:"value";s:2:"CA";s:8:"selected";s:1:"0";}i:5;a:3:{s:5:"label";s:8:"Colorado";s:5:"value";s:2:"CO";s:8:"selected";s:1:"0";}i:6;a:3:{s:5:"label";s:11:"Connecticut";s:5:"value";s:2:"CT";s:8:"selected";s:1:"0";}i:7;a:3:{s:5:"label";s:8:"Delaware";s:5:"value";s:2:"DE";s:8:"selected";s:1:"0";}i:8;a:3:{s:5:"label";s:20:"District of Columbia";s:5:"value";s:2:"DC";s:8:"selected";s:1:"0";}i:9;a:3:{s:5:"label";s:7:"Florida";s:5:"value";s:2:"FL";s:8:"selected";s:1:"0";}i:10;a:3:{s:5:"label";s:7:"Georgia";s:5:"value";s:2:"GA";s:8:"selected";s:1:"0";}i:11;a:3:{s:5:"label";s:6:"Hawaii";s:5:"value";s:2:"HI";s:8:"selected";s:1:"0";}i:12;a:3:{s:5:"label";s:5:"Idaho";s:5:"value";s:2:"ID";s:8:"selected";s:1:"0";}i:13;a:3:{s:5:"label";s:8:"Illinois";s:5:"value";s:2:"IL";s:8:"selected";s:1:"0";}i:14;a:3:{s:5:"label";s:7:"Indiana";s:5:"value";s:2:"IN";s:8:"selected";s:1:"0";}i:15;a:3:{s:5:"label";s:4:"Iowa";s:5:"value";s:2:"IA";s:8:"selected";s:1:"0";}i:16;a:3:{s:5:"label";s:6:"Kansas";s:5:"value";s:2:"KS";s:8:"selected";s:1:"0";}i:17;a:3:{s:5:"label";s:8:"Kentucky";s:5:"value";s:2:"KY";s:8:"selected";s:1:"0";}i:18;a:3:{s:5:"label";s:9:"Louisiana";s:5:"value";s:2:"LA";s:8:"selected";s:1:"0";}i:19;a:3:{s:5:"label";s:5:"Maine";s:5:"value";s:2:"ME";s:8:"selected";s:1:"0";}i:20;a:3:{s:5:"label";s:8:"Maryland";s:5:"value";s:2:"MD";s:8:"selected";s:1:"0";}i:21;a:3:{s:5:"label";s:13:"Massachusetts";s:5:"value";s:2:"MA";s:8:"selected";s:1:"0";}i:22;a:3:{s:5:"label";s:8:"Michigan";s:5:"value";s:2:"MI";s:8:"selected";s:1:"0";}i:23;a:3:{s:5:"label";s:9:"Minnesota";s:5:"value";s:2:"MN";s:8:"selected";s:1:"0";}i:24;a:3:{s:5:"label";s:11:"Mississippi";s:5:"value";s:2:"MS";s:8:"selected";s:1:"0";}i:25;a:3:{s:5:"label";s:8:"Missouri";s:5:"value";s:2:"MO";s:8:"selected";s:1:"0";}i:26;a:3:{s:5:"label";s:7:"Montana";s:5:"value";s:2:"MT";s:8:"selected";s:1:"0";}i:27;a:3:{s:5:"label";s:8:"Nebraska";s:5:"value";s:2:"NE";s:8:"selected";s:1:"0";}i:28;a:3:{s:5:"label";s:6:"Nevada";s:5:"value";s:2:"NV";s:8:"selected";s:1:"0";}i:29;a:3:{s:5:"label"3s:13:"New Hampshire";s:5:"value";s:2:"NH";s:8:"selected";s:1:"0";}i:30;a:3:{s:5:"label";s:10:"New Jersey";s:5:"value";s:2:"NJ";s:8:"selected";s:1:"0";}i:31;a:3:{s:5:"label";s:10:"New Mexico";s:5:"value";s:2:"NM";s:8:"selected";s:1:"0";}i:32;a:3:{s:5:"label";s:8:"New York";s:5:"value";s:2:"NY";s:8:"selected";s:1:"0";}i:33;a:3:{s:5:"label";s:14:"North Carolina";s:5:"value";s:2:"NC";s:8:"selected";s:1:"0";}i:34;a:3:{s:5:"label";s:12:"North Dakota";s:5:"value";s:2:"ND";s:8:"selected";s:1:"0";}i:35;a:3:{s:5:"label";s:4:"Ohio";s:5:"value";s:2:"OH";s:8:"selected";s:1:"0";}i:36;a:3:{s:5:"label";s:8:"Oklahoma";s:5:"value";s:2:"OK";s:8:"selected";s:1:"0";}i:37;a:3:{s:5:"label";s:6:"Oregon";s:5:"value";s:2:"OR";s:8:"selected";s:1:"0";}i:38;a:3:{s:5:"label";s:12:"Pennsylvania";s:5:"value";s:2:"PA";s:8:"selected";s:1:"0";}i:39;a:3:{s:5:"label";s:12:"Rhode Island";s:5:"value";s:2:"RI";s:8:"selected";s:1:"0";}i:40;a:3:{s:5:"label";s:14:"South Carolina";s:5:"value";s:2:"SC";s:8:"selected";s:1:"0";}i:41;a:3:{s:5:"label";s:12:"South Dakota";s:5:"value";s:2:"SD";s:8:"selected";s:1:"0";}i:42;a:3:{s:5:"label";s:9:"Tennessee";s:5:"value";s:2:"TN";s:8:"selected";s:1:"0";}i:43;a:3:{s:5:"label";s:5:"Texas";s:5:"value";s:2:"TX";s:8:"selected";s:1:"0";}i:44;a:3:{s:5:"label";s:4:"Utah";s:5:"value";s:2:"UT";s:8:"selected";s:1:"0";}i:45;a:3:{s:5:"label";s:7:"Vermont";s:5:"value";s:2:"VT";s:8:"selected";s:1:"0";}i:46;a:3:{s:5:"label";s:8:"Virginia";s:5:"value";s:2:"VA";s:8:"selected";s:1:"0";}i:47;a:3:{s:5:"label";s:10:"Washington";s:5:"value";s:2:"WA";s:8:"selected";s:1:"0";}i:48;a:3:{s:5:"label";s:13:"West Virginia";s:5:"value";s:2:"WV";s:8:"selected";s:1:"0";}i:49;a:3:{s:5:"label";s:9:"Wisconsin";s:5:"value";s:2:"WI";s:8:"selected";s:1:"0";}i:50;a:3:{s:5:"label";s:7:"Wyoming";s:5:"value";s:2:"WY";s:8:"selected";s:1:"0";}}}s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";}', 'State Dropdown'),
(3, 0, '_spam', 0, 'a:6:{s:9:"label_pos";s:4:"left";s:5:"label";s:18:"Anti-Spam Question";s:6:"answer";s:16:"Anti-Spam Answer";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";}', 'Anti-Spam'),
(4, 0, '_submit', 0, 'a:4:{s:5:"label";s:6:"Submit";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";}', 'Submit'),
(5, 0, '_tax', 0, 'a:11:{s:5:"label";s:3:"Tax";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:19:"payment_field_group";s:1:"1";s:11:"payment_tax";s:1:"1";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:11:"conditional";s:0:"";s:11:"calc_option";s:1:"0";s:4:"calc";s:0:"";}', 'Tax'),
(6, 0, '_text', 0, 'a:19:{s:5:"label";s:10:"First Name";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"0";s:10:"send_email";s:1:"0";s:10:"from_email";s:1:"0";s:10:"first_name";s:1:"1";s:9:"last_name";s:1:"0";s:9:"from_name";s:1:"0";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'First Name'),
(7, 0, '_text', 0, 'a:19:{s:5:"label";s:9:"Last Name";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"0";s:10:"send_email";s:1:"0";s:10:"from_email";s:1:"0";s:10:"first_name";s:1:"0";s:9:"last_name";s:1:"1";s:9:"from_name";s:1:"0";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'Last Name'),
(8, 0, '_text', 0, 'a:23:{s:5:"label";s:9:"Address 1";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"0";s:10:"send_email";s:1:"0";s:10:"from_email";s:1:"0";s:10:"first_name";s:1:"0";s:9:"last_name";s:1:"0";s:9:"from_name";s:1:"0";s:14:"user_address_1";s:1:"1";s:14:"user_address_2";s:1:"0";s:9:"user_city";s:1:"0";s:8:"user_zip";s:1:"0";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'Address 1'),
(9, 0, '_text', 0, 'a:23:{s:5:"label";s:9:"Address 2";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"0";s:10:"send_email";s:1:"0";s:10:"from_email";s:1:"0";s:10:"first_name";s:1:"0";s:9:"last_name";s:1:"0";s:9:"from_name";s:1:"0";s:14:"user_address_1";s:1:"0";s:14:"user_address_2";s:1:"1";s:9:"user_city";s:1:"0";s:8:"user_zip";s:1:"0";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'Address 2'),
(10, 0, '_text', 0, 'a:23:{s:5:"label";s:4:"City";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"0";s:10:"send_email";s:1:"0";s:10:"from_email";s:1:"0";s:10:"first_name";s:1:"0";s:9:"last_name";s:1:"0";s:9:"from_name";s:1:"0";s:14:"user_address_1";s:1:"0";s:14:"user_address_2";s:1:"0";s:9:"user_city";s:1:"1";s:8:"user_zip";s:1:"0";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'City'),
(11, 0, '_list', 0, 'a:16:{s:5:"label";s:5:"State";s:9:"label_pos";s:5:"above";s:10:"multi_size";s:1:"5";s:15:"list_show_value";s:1:"1";s:4:"list";a:1:{s:7:"options";a:51:{i:0;a:4:{s:5:"label";s:7:"Alabama";s:5:"value";s:2:"AL";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:1;a:4:{s:5:"label";s:6:"Alaska";s:5:"value";s:2:"AK";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:2;a:4:{s:5:"label";s:7:"Arizona";s:5:"value";s:2:"AZ";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:3;a:4:{s:5:"label";s:8:"Arkansas";s:5:"value";s:2:"AR";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:4;a:4:{s:5:"label";s:10:"California";s:5:"value";s:2:"CA";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:5;a:4:{s:5:"label";s:8:"Colorado";s:5:"value";s:2:"CO";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:6;a:4:{s:5:"label";s:11:"Connecticut";s:5:"value";s:2:"CT";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:7;a:4:{s:5:"label";s:8:"Delaware";s:5:"value";s:2:"DE";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:8;a:4:{s:5:"label";s:20:"District of Columbia";s:5:"value";s:2:"DC";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:9;a:4:{s:5:"label";s:7:"Florida";s:5:"value";s:2:"FL";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:10;a:4:{s:5:"label";s:7:"Georgia";s:5:"value";s:2:"GA";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:11;a:4:{s:5:"label";s:6:"Hawaii";s:5:"value";s:2:"HI";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:12;a:4:{s:5:"label";s:5:"Idaho";s:5:"value";s:2:"ID";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:13;a:4:{s:5:"label";s:8:"Illinois";s:5:"value";s:2:"IL";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:14;a:4:{s:5:"label";s:7:"Indiana";s:5:"value";s:2:"IN";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:15;a:4:{s:5:"label";s:4:"Iowa";s:5:"value";s:2:"IA";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:16;a:4:{s:5:"label";s:6:"Kansas";s:5:"value";s:2:"KS";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:17;a:4:{s:5:"label";s:8:"Kentucky";s:5:"value";s:2:"KY";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:18;a:4:{s:5:"label";s:9:"Louisiana";s:5:"value";s:2:"LA";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:19;a:4:{s:5:"label";s:5:"Maine";s:5:"value";s:2:"ME";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:20;a:4:{s:5:"label";s:8:"Maryland";s:5:"value";s:2:"MD";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:21;a:4:{s:5:"label";s:13:"Massachusetts";s:5:"value";s:2:"MA";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:22;a:4:{s:5:"label";s:8:"Michigan";s:5:"value";s:2:"MI";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:23;a:4:{s:5:"label";s:9:"Minnesota";s:5:"value";s:2:"MN";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:24;a:4:{s:5:"label";s:11:"Mississippi";s:5:"value";s:2:"MS";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:25;a:4:{s:5:"label";s:8:"Missouri";s:5:"value";s:2:"MO";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:26;a:4:{s:5:"label";s:7:"Montana";s:5:"value";s:2:"MT";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:27;a:4:{s:5:"label";s:8:"Nebraska";s:5:"value";s:2:"NE";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:28;a:4:{s:5:"label";s:6:"Nevada";s:5:"value";s:2:"NV";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:29;a:4:{s:5:"label";s:13:"New Hampshire";s:5:"value";s:2:"NH";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:30;a:4:{s:5:"label";s:10:"New Jersey";s:5:"value";s:2:"NJ";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:31;a:4:{s:5:"label";s:10:"New Mexico";s:5:"value";s:2:"NM";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:32;a:4:{s:5:"label";s:8:"New York";s:5:"value";s:2:"NY";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:33;a:4:{s:5:"label";s:14:"North Carolina";s:5:"value";s:2:"NC";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:34;a:4:{s:5:"label";s:12:"North Dakota";s:5:"value";s:2:"ND";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:35;a:4:{s:5:"label";s:4:"Ohio";s:5:"value";s:2:"OH";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:36;a:4:{s:5:"label";s:8:"Oklahoma";s:5:"value";s:2:"OK";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:37;a:4:{s:5:"label";s:6:"Oregon";s:5:"value";s:2:"OR";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:38;a:4:{s:5:"label";s:12:"Pennsylvania";s:5:"value";s:2:"PA";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:39;a:4:{s:5:"label";s:12:"Rhode Island";s:5:"value";s:2:"RI";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:40;a:4:{s:5:"label";s:14:"South Carolina";s:5:"value";s:2:"SC";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:41;a:4:{s:5:"label";s:12:"South Dakota";s:5:"value";s:2:"SD";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:42;a:4:{s:5:"label";s:9:"Tennessee";s:5:"value";s:2:"TN";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:43;a:4:{s:5:"label";s:5:"Texas";s:5:"value";s:2:"TX";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:44;a:4:{s:5:"label";s:4:"Utah";s:5:"value";s:2:"UT";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:45;a:4:{s:5:"label";s:7:"Vermont";s:5:"value";s:2:"VT";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:46;a:4:{s:5:"label";s:8:"Virginia";s:5:"value";s:2:"VA";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:47;a:4:{s:5:"label";s:10:"Washington";s:5:"value";s:2:"WA";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:48;a:4:{s:5:"label";s:13:"West Virginia";s:5:"value";s:2:"WV";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:49;a:4:{s:5:"label";s:9:"Wisconsin";s:5:"value";s:2:"WI";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:50;a:4:{s:5:"label";s:7:"Wyoming";s:5:"value";s:2:"WY";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}}}s:9:"list_type";s:8:"dropdown";s:10:"user_state";s:1:"1";s:21:"user_info_field_group";s:1:"1";s:13:"populate_term";s:0:"";s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'State'),
(12, 0, '_text', 0, 'a:23:{s:5:"label";s:15:"Zip / Post Code";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"0";s:10:"send_email";s:1:"0";s:10:"from_email";s:1:"0";s:10:"first_name";s:1:"0";s:9:"last_name";s:1:"0";s:9:"from_name";s:1:"0";s:14:"user_address_1";s:1:"0";s:14:"user_address_2";s:1:"0";s:9:"user_city";s:1:"0";s:8:"user_zip";s:1:"1";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'Zip / Post Code'),
(13, 0, '_country', 0, 'a:10:{s:5:"label";s:7:"Country";s:9:"label_pos";s:5:"above";s:13:"default_value";s:2:"US";s:21:"user_info_field_group";s:1:"1";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'Country'),
(14, 0, '_text', 0, 'a:25:{s:5:"label";s:5:"Email";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"1";s:10:"send_email";s:1:"0";s:10:"from_email";s:1:"0";s:10:"first_name";s:1:"0";s:9:"last_name";s:1:"0";s:9:"from_name";s:1:"0";s:14:"user_address_1";s:1:"0";s:14:"user_address_2";s:1:"0";s:9:"user_city";s:1:"0";s:8:"user_zip";s:1:"0";s:10:"user_phone";s:1:"0";s:10:"user_email";s:1:"1";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'Email'),
(15, 0, '_text', 0, 'a:25:{s:5:"label";s:5:"Phone";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:14:"(999) 999-9999";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"0";s:10:"send_email";s:1:"0";s:10:"from_email";s:1:"0";s:10:"first_name";s:1:"0";s:9:"last_name";s:1:"0";s:9:"from_name";s:1:"0";s:14:"user_address_1";s:1:"0";s:14:"user_address_2";s:1:"0";s:9:"user_city";s:1:"0";s:8:"user_zip";s:1:"0";s:10:"user_phone";s:1:"1";s:10:"user_email";s:1:"0";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'Phone'),
(16, 0, '_calc', 0, 'a:20:{s:9:"calc_name";s:9:"sub_total";s:13:"default_value";s:0:"";s:17:"calc_display_type";s:4:"text";s:5:"label";s:9:"Sub Total";s:9:"label_pos";s:5:"above";s:26:"calc_display_text_disabled";s:1:"1";s:17:"calc_display_html";s:26:"<p>[ninja_forms_calc]</p>\n";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:11:"calc_method";s:4:"auto";s:4:"calc";s:0:"";s:7:"calc_eq";s:0:"";s:19:"payment_field_group";s:1:"1";s:13:"payment_total";s:1:"0";s:17:"payment_sub_total";s:1:"1";s:11:"calc_places";s:1:"2";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'Sub Total'),
(17, 0, '_calc', 0, 'a:20:{s:9:"calc_name";s:5:"total";s:13:"default_value";s:0:"";s:17:"calc_display_type";s:4:"text";s:5:"label";s:5:"Total";s:9:"label_pos";s:5:"above";s:26:"calc_display_text_disabled";s:1:"1";s:17:"calc_display_html";s:26:"<p>[ninja_forms_calc]</p>\n";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:11:"calc_method";s:4:"auto";s:4:"calc";a:5:{i:0;a:2:{s:2:"op";s:3:"add";s:5:"field";s:2:"70";}i:1;a:2:{s:2:"op";s:3:"add";s:5:"field";s:2:"69";}i:2;a:2:{s:2:"op";s:3:"add";s:5:"field";s:2:"15";}i:3;a:2:{s:2:"op";s:3:"add";s:5:"field";s:2:"61";}i:4;a:2:{s:2:"op";s:3:"add";s:5:"field";s:2:"70";}}s:7:"calc_eq";s:5:"5 + 5";s:19:"payment_field_group";s:1:"1";s:13:"payment_total";s:1:"1";s:17:"payment_sub_total";s:1:"0";s:11:"calc_places";s:1:"2";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'Total'),
(92, 0, '_credit_card', 0, 'a:6:{s:5:"label";s:11:"Credit Card";s:19:"payment_field_group";s:1:"1";s:3:"req";s:1:"0";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:11:"conditional";s:0:"";}', 'Credit Card');

-- --------------------------------------------------------

--
-- Table structure for table `wp_ninja_forms_fields`
--

CREATE TABLE IF NOT EXISTS `wp_ninja_forms_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `data` longtext NOT NULL,
  `fav_id` int(11) DEFAULT NULL,
  `def_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `wp_ninja_forms_fields`
--

INSERT INTO `wp_ninja_forms_fields` (`id`, `form_id`, `type`, `order`, `data`, `fav_id`, `def_id`) VALUES
(1, 1, '_text', 0, 'a:24:{s:5:"label";s:4:"Name";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"0";s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:9:"from_name";s:1:"0";s:14:"user_address_1";s:0:"";s:14:"user_address_2";s:0:"";s:9:"user_city";s:0:"";s:8:"user_zip";s:0:"";s:10:"user_phone";s:0:"";s:10:"user_email";s:0:"";s:21:"user_info_field_group";s:0:"";s:3:"req";s:1:"1";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";s:17:"calc_auto_include";s:1:"0";}', 0, 0),
(2, 1, '_text', 1, 'a:28:{s:5:"label";s:5:"Email";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"1";s:10:"first_name";s:1:"0";s:9:"last_name";s:1:"0";s:9:"from_name";s:1:"0";s:14:"user_address_1";s:1:"0";s:14:"user_address_2";s:1:"0";s:9:"user_city";s:1:"0";s:8:"user_zip";s:1:"0";s:10:"user_phone";s:1:"0";s:10:"user_email";s:1:"1";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"1";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";s:26:"user_info_field_group_name";s:0:"";s:28:"user_info_field_group_custom";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";}', 0, 14),
(3, 1, '_textarea', 2, 'a:14:{s:5:"label";s:7:"Message";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:12:"textarea_rte";s:1:"0";s:14:"textarea_media";s:1:"0";s:18:"disable_rte_mobile";s:1:"0";s:3:"req";s:1:"1";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";s:17:"calc_auto_include";s:1:"0";}', 0, 0),
(4, 1, '_spam', 3, 'a:10:{s:5:"label";s:25:"What is thirteen minus 6?";s:9:"label_pos";s:4:"left";s:11:"spam_answer";s:1:"7";s:3:"req";s:1:"1";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";}', 0, 0),
(5, 1, '_submit', 4, 'a:7:{s:5:"label";s:4:"Send";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";}', 0, 0),
(6, 5, '_list', 0, 'a:19:{s:5:"label";s:15:"Select Category";s:15:"input_limit_msg";s:17:"character(s) left";s:9:"label_pos";s:6:"inside";s:9:"list_type";s:8:"dropdown";s:10:"multi_size";s:1:"5";s:15:"list_show_value";s:1:"0";s:4:"list";a:1:{s:7:"options";a:3:{i:0;a:4:{s:5:"label";s:7:"Hosting";s:5:"value";s:0:"";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:1;a:4:{s:5:"label";s:7:"Plugins";s:5:"value";s:0:"";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:2;a:4:{s:5:"label";s:6:"Themes";s:5:"value";s:0:"";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}}}s:21:"user_info_field_group";s:0:"";s:3:"req";s:1:"1";s:17:"calc_auto_include";s:1:"0";s:10:"user_state";s:1:"0";s:8:"num_sort";s:1:"0";s:11:"admin_label";s:13:"category_menu";s:5:"class";s:16:"category_dp_down";s:9:"show_help";s:1:"1";s:9:"help_text";s:36:"Select Any one category for review..";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";}', NULL, NULL),
(8, 5, '_submit', 1, 'a:8:{s:5:"label";s:6:"Submit";s:15:"input_limit_msg";s:17:"character(s) left";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:9:"show_desc";s:1:"1";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";}', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1051 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/site1', 'yes'),
(2, 'home', 'http://localhost/site1', 'yes'),
(3, 'blogname', 'asksidd', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'ssethia88@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '5', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:12:{i:0;s:50:"Register-Plus-Redux-master/register-plus-redux.php";i:1;s:33:"admin-panel/admin_panel_dhudo.php";i:2;s:32:"baw-login-logout-menu/bawllm.php";i:3;s:33:"caldera-forms-run-action/core.php";i:4;s:30:"caldera-forms/caldera-core.php";i:5;s:42:"peters-login-redirect/wplogin_redirect.php";i:6;s:44:"stops-core-theme-and-plugin-updates/main.php";i:7;s:20:"visualizer/index.php";i:8;s:39:"wp-hide-admin-bar/wp-hide-admin-bar.php";i:9;s:29:"wp-mail-smtp/wp_mail_smtp.php";i:10;s:27:"wp-optimize/wp-optimize.php";i:11;s:33:"zm-ajax-login-register/plugin.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', 'a:5:{i:0;s:52:"C:\\wamp\\www\\site1/wp-content/themes/Origin/style.css";i:2;s:67:"C:\\wamp\\www\\site1/wp-content/plugins/caldera-forms/classes/core.php";i:3;s:68:"C:\\wamp\\www\\site1/wp-content/plugins/caldera-forms/classes/admin.php";i:4;s:67:"C:\\wamp\\www\\site1/wp-content/plugins/caldera-forms/caldera-core.php";i:5;s:56:"C:\\wamp\\www\\site1/wp-content/themes/Origin/functions.php";}', 'no'),
(41, 'template', 'Origin', 'yes'),
(42, 'stylesheet', 'Origin', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '33056', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'posts', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '700', 'yes'),
(60, 'thumbnail_size_h', '400', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', '', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:0:{}', 'yes'),
(81, 'widget_rss', 'a:0:{}', 'yes'),
(82, 'uninstall_plugins', 'a:3:{s:50:"Register-Plus-Redux-master/register-plus-redux.php";a:2:{i:0;s:19:"Register_Plus_Redux";i:1;s:13:"rpr_uninstall";}s:42:"peters-login-redirect/wplogin_redirect.php";s:13:"rul_uninstall";s:29:"wpdatatables/wpdatatables.php";s:22:"wpdatatables_uninstall";}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '0', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '30135', 'yes'),
(89, 'wp_user_roles', 'a:6:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:14:"rpr_unverified";a:2:{s:4:"name";s:10:"Unverified";s:12:"capabilities";a:0:{}}}', 'yes'),
(90, 'widget_search', 'a:3:{i:2;a:1:{s:5:"title";s:0:"";}i:3;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(91, 'widget_recent-posts', 'a:3:{i:2;a:3:{s:5:"title";s:0:"";s:6:"number";i:5;s:9:"show_date";b:0;}i:3;a:3:{s:5:"title";s:0:"";s:6:"number";i:5;s:9:"show_date";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'sidebars_widgets', 'a:4:{s:18:"orphaned_widgets_1";a:2:{i:0;s:14:"recent-posts-2";i:1;s:6:"meta-2";}s:19:"wp_inactive_widgets";a:3:{i:0;s:10:"archives-2";i:1;s:8:"search-2";i:2;s:12:"categories-2";}s:9:"sidebar-1";a:2:{i:0;s:8:"search-3";i:1;s:14:"recent-posts-3";}s:13:"array_version";i:3;}', 'yes'),
(96, 'cron', 'a:6:{i:1447518121;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1447528913;a:1:{s:24:"ninja_forms_daily_action";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1447529280;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1447561335;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1447571534;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(130, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:19:"ssethia88@gmail.com";s:7:"version";s:5:"4.1.8";s:9:"timestamp";i:1442416141;}', 'yes'),
(137, 'optionsframework', 'a:1:{s:2:"id";s:7:"impresa";}', 'yes'),
(142, 'current_theme', 'Origin (mafiashare.net)', 'yes'),
(143, 'theme_mods_origin', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:12:"primary-menu";i:2;}}', 'yes'),
(144, 'theme_switched', '', 'yes'),
(216, 'widget_hybrid-search', 'a:2:{i:2;a:5:{s:5:"title";s:6:"Search";s:12:"search_label";s:0:"";s:11:"search_text";s:0:"";s:13:"search_submit";s:0:"";s:12:"theme_search";i:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(313, 'option_tree', 'a:40:{s:15:"general_default";s:16:"General Settings";s:12:"rb_logo_path";s:0:"";s:10:"rb_favicon";s:0:"";s:14:"rb_footer_text";s:25:"Copyright © 2012 WowWay.";s:16:"rb_tracking_code";s:0:"";s:6:"rb_ie7";s:143:"This is a unique website which will require a more modern browser to work! <a href=\\"https://www.google.com/chrome/\\">Please upgrade today!</a>";s:14:"style_settings";s:14:"Style Settings";s:13:"rb_site_style";s:6:"Orange";s:21:"rb_sidebar_autoclose2";s:0:"";s:16:"rb_layout_center";s:0:"";s:13:"rb_images_fit";s:0:"";s:14:"rb_blog_layout";s:0:"";s:8:"rb_porto";s:18:"Portfolio Settings";s:17:"rb_portfolio_page";s:1:"2";s:15:"rb_gallery_page";s:0:"";s:11:"page_titles";s:13:"Blog Settings";s:12:"rb_blog_link";s:0:"";s:17:"rb_search_tagline";s:8:"Our Blog";s:18:"rb_search2_tagline";s:14:"Search Results";s:14:"rb_404_tagline";s:3:"404";s:12:"contact_page";s:16:"Contact Settings";s:13:"rb_form_title";s:10:"Contact Us";s:20:"rb_form_number_input";s:14:"(123) 456-7890";s:19:"rb_form_email_input";s:23:"contact@companyname.com";s:21:"rb_form_address_input";s:46:"1234 Some Street\r\nLos Angeles, LA, 123456\r\nUSA";s:18:"rb_form_your_email";s:20:"youremail@domain.com";s:18:"rb_form_name_label";s:5:"Name*";s:19:"rb_form_email_label";s:6:"Email*";s:21:"rb_form_message_label";s:8:"Message*";s:20:"rb_form_button_label";s:4:"Send";s:13:"rb_form_error";s:50:"Please complete all fields with valid information.";s:15:"rb_form_success";s:95:"Thank you for contacting us! \r\nWe will review your request and contact you as soon as possible!";s:12:"map_settings";s:12:"Map Settings";s:14:"rb_map_display";a:1:{i:0;s:3:"Yes";}s:11:"rb_map_lat1";s:9:"48.854388";s:12:"rb_map_long1";s:8:"2.330655";s:10:"rb_map_pin";s:69:"http://wpthemes.rubenbristian.com/wowway/files/2012/03/contactPin.png";s:11:"rb_map_lat2";s:9:"48.854649";s:12:"rb_map_long2";s:8:"2.327437";s:11:"backgrounds";s:11:"Backgrounds";}', 'yes'),
(314, 'option_tree_version', '1.1.8', 'yes'),
(315, 'option_tree_activation', 'set', 'yes'),
(317, 'theme_mods_wowway', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1444744503;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:3:{i:0;s:10:"archives-2";i:1;s:8:"search-2";i:2;s:12:"categories-2";}s:25:"rb_top_footer_widget_left";a:2:{i:0;s:14:"recent-posts-2";i:1;s:6:"meta-2";}s:26:"rb_top_footer_widget_right";a:0:{}s:28:"rb_bottom_footer_widget_left";a:0:{}}}}', 'yes'),
(319, 'recently_activated', 'a:1:{s:36:"contact-form-7/wp-contact-form-7.php";i:1446994385;}', 'yes'),
(320, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(328, 'et_images_temp_folder', 'C:\\wamp\\www\\site1/wp-content/uploads/et_temp', 'yes'),
(329, 'et_schedule_clean_images_last_time', '1447259462', 'yes'),
(330, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1444744525;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:5:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:10:"archives-2";i:3;s:12:"categories-2";i:4;s:6:"meta-2";}}}}', 'yes'),
(331, 'category_children', 'a:0:{}', 'yes'),
(335, 'et_origin', 'a:81:{s:11:"origin_logo";s:0:"";s:14:"origin_favicon";s:0:"";s:17:"origin_grab_image";s:5:"false";s:19:"origin_catnum_posts";s:1:"6";s:23:"origin_archivenum_posts";s:1:"5";s:22:"origin_searchnum_posts";s:1:"5";s:19:"origin_tagnum_posts";s:1:"5";s:18:"origin_date_format";s:6:"M j, Y";s:18:"origin_use_excerpt";s:5:"false";s:28:"origin_responsive_shortcodes";s:2:"on";s:21:"origin_homepage_posts";s:1:"6";s:23:"origin_enable_dropdowns";s:2:"on";s:16:"origin_home_link";s:2:"on";s:17:"origin_sort_pages";s:10:"post_title";s:17:"origin_order_page";s:3:"asc";s:24:"origin_tiers_shown_pages";s:1:"3";s:34:"origin_enable_dropdowns_categories";s:2:"on";s:23:"origin_categories_empty";s:2:"on";s:29:"origin_tiers_shown_categories";s:1:"3";s:15:"origin_sort_cat";s:4:"name";s:16:"origin_order_cat";s:3:"asc";s:22:"origin_disable_toptier";s:5:"false";s:16:"origin_postinfo2";a:0:{}s:17:"origin_thumbnails";s:5:"false";s:24:"origin_show_postcomments";s:2:"on";s:22:"origin_page_thumbnails";s:5:"false";s:25:"origin_show_pagescomments";s:5:"false";s:16:"origin_postinfo1";a:1:{i:0;s:6:"author";}s:20:"origin_custom_colors";s:5:"false";s:16:"origin_child_css";s:5:"false";s:19:"origin_child_cssurl";s:0:"";s:21:"origin_color_mainfont";s:0:"";s:21:"origin_color_mainlink";s:0:"";s:21:"origin_color_pagelink";s:0:"";s:28:"origin_color_pagelink_active";s:0:"";s:21:"origin_color_headings";s:0:"";s:26:"origin_color_sidebar_links";s:0:"";s:18:"origin_footer_text";s:0:"";s:24:"origin_color_footerlinks";s:0:"";s:21:"origin_seo_home_title";s:5:"false";s:27:"origin_seo_home_description";s:5:"false";s:24:"origin_seo_home_keywords";s:5:"false";s:25:"origin_seo_home_canonical";s:5:"false";s:25:"origin_seo_home_titletext";s:0:"";s:31:"origin_seo_home_descriptiontext";s:0:"";s:28:"origin_seo_home_keywordstext";s:0:"";s:20:"origin_seo_home_type";s:27:"BlogName | Blog description";s:24:"origin_seo_home_separate";s:3:" | ";s:23:"origin_seo_single_title";s:5:"false";s:29:"origin_seo_single_description";s:5:"false";s:26:"origin_seo_single_keywords";s:5:"false";s:27:"origin_seo_single_canonical";s:5:"false";s:29:"origin_seo_single_field_title";s:9:"seo_title";s:35:"origin_seo_single_field_description";s:15:"seo_description";s:32:"origin_seo_single_field_keywords";s:12:"seo_keywords";s:22:"origin_seo_single_type";s:21:"Post title | BlogName";s:26:"origin_seo_single_separate";s:3:" | ";s:26:"origin_seo_index_canonical";s:5:"false";s:28:"origin_seo_index_description";s:5:"false";s:21:"origin_seo_index_type";s:24:"Category name | BlogName";s:25:"origin_seo_index_separate";s:3:" | ";s:30:"origin_integrate_header_enable";s:2:"on";s:28:"origin_integrate_body_enable";s:2:"on";s:33:"origin_integrate_singletop_enable";s:2:"on";s:36:"origin_integrate_singlebottom_enable";s:2:"on";s:23:"origin_integration_head";s:0:"";s:23:"origin_integration_body";s:0:"";s:29:"origin_integration_single_top";s:0:"";s:32:"origin_integration_single_bottom";s:0:"";s:17:"origin_468_enable";s:5:"false";s:24:"origin_468_header_enable";s:5:"false";s:17:"origin_728_enable";s:5:"false";s:16:"origin_468_image";s:0:"";s:14:"origin_468_url";s:0:"";s:18:"origin_468_adsense";s:0:"";s:23:"origin_468_header_image";s:0:"";s:21:"origin_468_header_url";s:0:"";s:25:"origin_468_header_adsense";s:0:"";s:16:"origin_728_image";s:0:"";s:14:"origin_728_url";s:0:"";s:18:"origin_728_adsense";s:0:"";}', 'yes'),
(415, 'MPSUM', 'a:2:{s:6:"themes";a:1:{i:0;s:6:"Origin";}s:16:"themes_automatic";a:0:{}}', 'yes'),
(537, 'WPLANG', '', 'yes'),
(561, 'register_plus_redux_options', 'a:75:{s:15:"custom_logo_url";s:0:"";s:17:"verify_user_email";s:1:"1";s:25:"message_verify_user_email";s:82:"Please verify your account using the verification link sent to your email address.";s:17:"verify_user_admin";s:1:"0";s:25:"message_verify_user_admin";s:96:"Your account will be reviewed by an administrator and you will be notified when it is activated.";s:29:"delete_unverified_users_after";i:7;s:25:"registration_redirect_url";s:0:"";s:25:"verification_redirect_url";s:0:"";s:14:"autologin_user";s:1:"0";s:17:"username_is_email";s:1:"0";s:18:"double_check_email";s:1:"0";s:11:"show_fields";a:2:{i:0;s:10:"first_name";i:1;s:9:"last_name";}s:15:"required_fields";a:1:{i:0;s:10:"first_name";}s:17:"user_set_password";s:1:"1";s:19:"min_password_length";i:6;s:29:"disable_password_confirmation";s:1:"0";s:19:"show_password_meter";s:1:"1";s:22:"message_empty_password";s:18:"Strength Indicator";s:22:"message_short_password";s:9:"Too Short";s:20:"message_bad_password";s:12:"Bad Password";s:21:"message_good_password";s:13:"Good Password";s:23:"message_strong_password";s:15:"Strong Password";s:25:"message_mismatch_password";s:17:"Password Mismatch";s:22:"enable_invitation_code";s:1:"0";s:23:"require_invitation_code";s:1:"0";s:30:"invitation_code_case_sensitive";s:1:"0";s:22:"invitation_code_unique";s:1:"0";s:33:"enable_invitation_tracking_widget";s:1:"0";s:15:"show_disclaimer";s:1:"1";s:24:"message_disclaimer_title";s:10:"Disclaimer";s:18:"message_disclaimer";s:3:"ABC";s:24:"require_disclaimer_agree";s:1:"1";s:24:"message_disclaimer_agree";s:21:"Accept the Disclaimer";s:12:"show_license";s:1:"1";s:21:"message_license_title";s:17:"License Agreement";s:15:"message_license";s:3:"DEF";s:21:"require_license_agree";s:1:"1";s:21:"message_license_agree";s:28:"Accept the License Agreement";s:19:"show_privacy_policy";s:1:"1";s:28:"message_privacy_policy_title";s:14:"Privacy Policy";s:22:"message_privacy_policy";s:3:"123";s:28:"require_privacy_policy_agree";s:1:"1";s:28:"message_privacy_policy_agree";s:25:"Accept the Privacy Policy";s:11:"default_css";s:1:"0";s:21:"required_fields_style";s:50:"border:solid 1px #E6DB55;background-color:#FFFFE0;";s:24:"required_fields_asterisk";s:1:"1";s:17:"starting_tabindex";i:0;s:31:"disable_user_message_registered";s:1:"0";s:28:"disable_user_message_created";s:1:"0";s:19:"custom_user_message";s:1:"0";s:23:"user_message_from_email";s:19:"ssethia88@gmail.com";s:22:"user_message_from_name";s:7:"asksidd";s:20:"user_message_subject";s:32:"[asksidd] Your Login Information";s:17:"user_message_body";s:65:"Username: %user_login%\r\nPassword: %user_password%\r\n\r\n%site_url%\r\n";s:25:"send_user_message_in_html";s:1:"0";s:26:"user_message_newline_as_br";s:1:"0";s:27:"custom_verification_message";s:1:"0";s:31:"verification_message_from_email";s:19:"ssethia88@gmail.com";s:30:"verification_message_from_name";s:7:"asksidd";s:28:"verification_message_subject";s:29:"[asksidd] Verify Your Account";s:25:"verification_message_body";s:120:"Verification URL: %verification_url%\r\nPlease use the above link to verify your email address and activate your account\r\n";s:33:"send_verification_message_in_html";s:1:"0";s:34:"verification_message_newline_as_br";s:1:"0";s:32:"disable_admin_message_registered";s:1:"0";s:29:"disable_admin_message_created";s:1:"0";s:27:"admin_message_when_verified";s:1:"0";s:20:"custom_admin_message";s:1:"0";s:24:"admin_message_from_email";s:19:"ssethia88@gmail.com";s:23:"admin_message_from_name";s:7:"asksidd";s:21:"admin_message_subject";s:29:"[asksidd] New User Registered";s:18:"admin_message_body";s:93:"New user registered on your site %blogname%\r\n\r\nUsername: %user_login%\r\nE-mail: %user_email%\r\n";s:26:"send_admin_message_in_html";s:1:"0";s:27:"admin_message_newline_as_br";s:1:"0";s:28:"custom_registration_page_css";s:0:"";s:21:"custom_login_page_css";s:0:"";}', 'yes'),
(563, 'register_plus_redux_version', '3.9.9', 'yes'),
(579, 'rul_version', '2.9.0', 'no'),
(581, 'rul_settings', 'a:5:{s:14:"rul_local_only";s:1:"1";s:32:"rul_allow_post_redirect_override";s:1:"0";s:39:"rul_allow_post_redirect_override_logout";s:1:"0";s:27:"rul_use_redirect_controller";s:1:"0";s:23:"rul_required_capability";s:17:"manage_categories";}', 'yes'),
(606, 'whab_display_admin_settings', 'a:6:{s:13:"Administrator";s:4:"show";s:6:"Editor";s:4:"show";s:6:"Author";s:4:"hide";s:11:"Contributor";s:4:"hide";s:10:"Subscriber";s:4:"hide";s:10:"Unverified";s:4:"hide";}', 'yes'),
(615, 'mail_from', 'ssethia88@gmail.com', 'yes'),
(616, 'mail_from_name', 'Wordpress test mail', 'yes'),
(617, 'mailer', 'smtp', 'yes'),
(618, 'mail_set_return_path', 'true', 'yes'),
(619, 'smtp_host', 'smtp.gmail.com', 'yes'),
(620, 'smtp_port', '587', 'yes'),
(621, 'smtp_ssl', 'tls', 'yes'),
(622, 'smtp_auth', 'true', 'yes'),
(623, 'smtp_user', 'ssethia88@gmail.com', 'yes'),
(624, 'smtp_pass', 'indersumansethia', 'yes'),
(664, 'jvcf7_show_label_error', 'errorMsgshow', 'yes'),
(665, 'jvcf7_invalid_field_design', 'theme_1', 'yes'),
(691, '', '', ''),
(696, 'register_plus_redux_last_activated', '3.9.6', 'yes'),
(722, 'wdtRenderFilter', 'footer', 'yes'),
(726, 'wdtTablesPerPage', '10', 'yes'),
(727, 'wdtNumberFormat', '1', 'yes'),
(728, 'wdtDecimalPlaces', '2', 'yes'),
(729, 'wdtNumbersAlign', '1', 'yes'),
(730, 'wdtCustomJs', '', 'yes'),
(731, 'wdtCustomCss', '', 'yes'),
(732, 'wdtTabletWidth', '1024', 'yes'),
(733, 'wdtMobileWidth', '480', 'yes'),
(734, 'wdtPurchaseCode', '3958969', 'yes'),
(737, 'wdtBaseSkin', 'skin1', 'yes'),
(738, 'wdtFontColorSettings', 's:826:"a:24:{s:18:"wdtHeaderBaseColor";s:0:"";s:20:"wdtHeaderActiveColor";s:0:"";s:18:"wdtHeaderFontColor";s:0:"";s:20:"wdtHeaderBorderColor";s:0:"";s:24:"wdtTableOuterBorderColor";s:0:"";s:24:"wdtTableInnerBorderColor";s:0:"";s:17:"wdtTableFontColor";s:0:"";s:12:"wdtTableFont";s:0:"";s:16:"wdtHoverRowColor";s:0:"";s:14:"wdtOddRowColor";s:0:"";s:15:"wdtEvenRowColor";s:0:"";s:21:"wdtActiveOddCellColor";s:0:"";s:22:"wdtActiveEvenCellColor";s:0:"";s:19:"wdtSelectedRowColor";s:0:"";s:14:"wdtButtonColor";s:0:"";s:20:"wdtButtonBorderColor";s:0:"";s:18:"wdtButtonFontColor";s:0:"";s:29:"wdtButtonBackgroundHoverColor";s:0:"";s:25:"wdtButtonBorderHoverColor";s:0:"";s:23:"wdtButtonFontHoverColor";s:0:"";s:17:"wdtModalFontColor";s:0:"";s:23:"wdtModalBackgroundColor";s:0:"";s:15:"wdtOverlayColor";s:0:"";s:15:"wdtBorderRadius";s:0:"";}";', 'yes'),
(755, 'wp-optimize-schedule', 'false', 'no'),
(756, 'wp-optimize-last-optimized', 'Never', 'no'),
(757, 'wp-optimize-schedule-type', 'wpo_weekly', 'no'),
(758, 'wp-optimize-retention-enabled', 'false', 'no'),
(759, 'wp-optimize-retention-period', '2', 'no'),
(760, 'wp-optimize-enable-admin-menu', 'false', 'no'),
(761, 'wp-optimize-email', 'true', 'no'),
(762, 'wp-optimize-total-cleaned', '0', 'no'),
(763, 'wp-optimize-auto', 'a:8:{s:9:"revisions";s:4:"true";s:6:"drafts";s:4:"true";s:5:"spams";s:4:"true";s:10:"unapproved";s:5:"false";s:9:"transient";s:5:"false";s:8:"postmeta";s:5:"false";s:4:"tags";s:5:"false";s:8:"optimize";s:4:"true";}', 'yes'),
(764, 'wp-optimize-settings', 'a:5:{s:14:"user-revisions";b:1;s:11:"user-drafts";b:1;s:10:"user-spams";b:1;s:15:"user-unapproved";b:1;s:13:"user-optimize";b:1;}', 'yes'),
(773, 'wp-optimize-current-cleaned', '0', 'yes'),
(778, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1447487702;s:7:"checked";a:1:{s:6:"Origin";s:3:"1.0";}s:8:"response";a:1:{s:6:"Origin";a:2:{s:11:"new_version";s:5:"2.4.3";s:3:"url";s:54:"https://www.elegantthemes.com/api/changelog/origin.txt";}}s:12:"translations";a:0:{}}', 'yes'),
(779, '_site_transient_et_update_themes', 'O:8:"stdClass":3:{s:7:"checked";a:1:{s:6:"Origin";s:3:"1.0";}s:8:"response";a:1:{s:6:"Origin";a:2:{s:11:"new_version";s:5:"2.4.3";s:3:"url";s:54:"https://www.elegantthemes.com/api/changelog/origin.txt";}}s:12:"last_checked";i:1447487703;}', 'yes'),
(791, '_transient_random_seed', '86da4b4e4813616c8bcf2f859de1f3fd', 'yes'),
(803, 'nf_convert_notifications_complete', '1', 'yes'),
(804, 'nf_convert_subs_step', 'complete', 'yes'),
(805, 'nf_upgrade_notice', 'closed', 'yes'),
(806, 'nf_update_email_settings_complete', '1', 'yes'),
(807, 'nf_email_fav_updated', '1', 'yes'),
(808, 'nf_convert_forms_complete', '1', 'yes'),
(809, 'nf_database_migrations', '1', 'yes'),
(810, 'ninja_forms_settings', 'a:19:{s:11:"date_format";s:5:"d/m/Y";s:15:"currency_symbol";s:1:"$";s:14:"recaptcha_lang";s:2:"en";s:13:"req_div_label";s:80:"Fields marked with an <span class="ninja-forms-req-symbol">*</span> are required";s:16:"req_field_symbol";s:18:"<strong>*</strong>";s:15:"req_error_label";s:48:"Please ensure all required fields are completed.";s:15:"req_field_error";s:24:"This is a required field";s:10:"spam_error";s:47:"Please answer the anti-spam question correctly.";s:14:"honeypot_error";s:34:"Please leave the spam field blank.";s:18:"timed_submit_error";s:31:"Please wait to submit the form.";s:16:"javascript_error";s:54:"You cannot submit the form without Javascript enabled.";s:13:"invalid_email";s:35:"Please enter a valid email address.";s:13:"process_label";s:10:"Processing";s:17:"password_mismatch";s:36:"The passwords provided do not match.";s:10:"preview_id";i:121;s:7:"version";s:6:"2.9.28";s:19:"fix_form_email_from";i:1;s:18:"fix_field_reply_to";i:1;s:22:"version_2_2_25_rte_fix";i:1;}', 'yes'),
(821, 'nf_admin_notice', 'a:2:{s:16:"one_week_support";a:2:{s:5:"start";s:9:"11/6/2015";s:3:"int";i:7;}s:15:"two_week_review";a:2:{s:5:"start";s:10:"11/13/2015";s:3:"int";i:14;}}', 'yes'),
(836, '_calderaforms_lastupdate', '1.3.0.2', 'yes'),
(838, '_caldera_forms_styleincludes', 'a:3:{s:5:"alert";b:1;s:4:"form";b:1;s:4:"grid";b:1;}', 'yes'),
(839, '_caldera_forms', 'a:1:{s:15:"CF5633cb3b91655";a:13:{s:13:"_last_updated";s:31:"Wed, 11 Nov 2015 15:12:11 +0000";s:2:"ID";s:15:"CF5633cb3b91655";s:4:"name";s:9:"Dashboard";s:11:"description";s:48:"Form has been successfully submitted. Thank you.";s:10:"db_support";i:1;s:6:"pinned";i:0;s:11:"check_honey";i:1;s:7:"success";s:2:"ok";s:12:"avatar_field";s:0:"";s:9:"form_ajax";i:1;s:15:"custom_callback";s:0:"";s:10:"page_names";a:1:{i:0;s:6:"Page 1";}s:6:"mailer";a:9:{s:13:"enable_mailer";i:1;s:11:"sender_name";s:26:"Caldera Forms Notification";s:12:"sender_email";s:19:"ssethia88@gmail.com";s:8:"reply_to";s:0:"";s:10:"email_type";s:4:"html";s:10:"recipients";s:0:"";s:6:"bcc_to";s:0:"";s:13:"email_subject";s:14:"Dashboard Form";s:13:"email_message";s:9:"{summary}";}}}', 'yes'),
(840, 'CF5633cb3b91655', 'a:18:{s:13:"_last_updated";s:31:"Wed, 11 Nov 2015 15:12:11 +0000";s:2:"ID";s:15:"CF5633cb3b91655";s:4:"name";s:9:"Dashboard";s:11:"description";s:48:"Form has been successfully submitted. Thank you.";s:10:"db_support";i:1;s:6:"pinned";i:0;s:11:"check_honey";i:1;s:7:"success";s:2:"ok";s:12:"avatar_field";s:0:"";s:9:"form_ajax";i:1;s:15:"custom_callback";s:0:"";s:11:"layout_grid";a:2:{s:6:"fields";a:11:{s:11:"fld_5338824";s:3:"1:2";s:11:"fld_7566251";s:3:"1:2";s:11:"fld_5743175";s:3:"1:2";s:11:"fld_5361631";s:3:"1:2";s:11:"fld_1049972";s:3:"1:2";s:11:"fld_5253080";s:3:"1:2";s:11:"fld_9642452";s:3:"1:2";s:11:"fld_5383902";s:3:"1:2";s:11:"fld_2574933";s:3:"1:2";s:11:"fld_9800935";s:3:"1:2";s:11:"fld_6831721";s:3:"1:2";}s:9:"structure";s:5:"3:6:3";}s:6:"fields";a:11:{s:11:"fld_5338824";a:8:{s:2:"ID";s:11:"fld_5338824";s:4:"type";s:8:"dropdown";s:5:"label";s:15:"Select Category";s:4:"slug";s:8:"category";s:10:"conditions";a:1:{s:4:"type";s:0:"";}s:8:"required";i:1;s:7:"caption";s:0:"";s:6:"config";a:8:{s:12:"custom_class";s:0:"";s:11:"placeholder";s:0:"";s:9:"auto_type";s:0:"";s:8:"taxonomy";s:8:"category";s:9:"post_type";s:4:"post";s:11:"value_field";s:4:"name";s:7:"default";s:0:"";s:6:"option";a:3:{s:10:"opt2092120";a:2:{s:5:"value";s:7:"Hosting";s:5:"label";s:7:"Hosting";}s:10:"opt1703303";a:2:{s:5:"value";s:6:"Plugin";s:5:"label";s:6:"Plugin";}s:10:"opt1768313";a:2:{s:5:"value";s:6:"Themes";s:5:"label";s:6:"Themes";}}}}s:11:"fld_7566251";a:8:{s:2:"ID";s:11:"fld_7566251";s:4:"type";s:8:"dropdown";s:5:"label";s:16:"Select a Product";s:4:"slug";s:7:"product";s:10:"conditions";a:1:{s:4:"type";s:20:"con_5033076465250684";}s:8:"required";i:1;s:7:"caption";s:0:"";s:6:"config";a:8:{s:12:"custom_class";s:0:"";s:11:"placeholder";s:0:"";s:9:"auto_type";s:0:"";s:8:"taxonomy";s:8:"category";s:9:"post_type";s:4:"post";s:11:"value_field";s:4:"name";s:7:"default";s:0:"";s:6:"option";a:6:{s:10:"opt1889122";a:2:{s:5:"value";s:9:"Hostgator";s:5:"label";s:9:"Hostgator";}s:10:"opt1162443";a:2:{s:5:"value";s:8:"Justhost";s:5:"label";s:8:"Justhost";}s:10:"opt1709938";a:2:{s:5:"value";s:9:"Dreamhost";s:5:"label";s:9:"Dreamhost";}s:10:"opt1286907";a:2:{s:5:"value";s:8:"Bluehost";s:5:"label";s:8:"Bluehost";}s:10:"opt1456145";a:2:{s:5:"value";s:0:"";s:5:"label";s:6:"Arvixe";}s:10:"opt1550281";a:2:{s:5:"value";s:0:"";s:5:"label";s:5:"ipage";}}}}s:11:"fld_5743175";a:8:{s:2:"ID";s:11:"fld_5743175";s:4:"type";s:12:"range_slider";s:5:"label";s:16:"customer support";s:4:"slug";s:12:"cust_support";s:10:"conditions";a:1:{s:4:"type";s:20:"con_5033076465250684";}s:8:"required";i:1;s:7:"caption";s:0:"";s:6:"config";a:12:{s:12:"custom_class";s:0:"";s:7:"default";i:1;s:10:"trackcolor";s:7:"#e6e6e6";s:5:"color";s:7:"#00ff00";s:6:"handle";s:7:"#ffffff";s:12:"handleborder";s:7:"#cccccc";s:4:"step";d:0.1000000000000000055511151231257827021181583404541015625;s:3:"min";i:1;s:3:"max";i:10;s:7:"showval";i:1;s:6:"prefix";s:0:"";s:6:"suffix";s:0:"";}}s:11:"fld_5361631";a:8:{s:2:"ID";s:11:"fld_5361631";s:4:"type";s:12:"range_slider";s:5:"label";s:16:"plans & packages";s:4:"slug";s:9:"plans_pkg";s:10:"conditions";a:1:{s:4:"type";s:20:"con_5033076465250684";}s:8:"required";i:1;s:7:"caption";s:0:"";s:6:"config";a:12:{s:12:"custom_class";s:0:"";s:7:"default";i:1;s:10:"trackcolor";s:7:"#e6e6e6";s:5:"color";s:7:"#00ff00";s:6:"handle";s:7:"#ffffff";s:12:"handleborder";s:7:"#cccccc";s:4:"step";d:0.1000000000000000055511151231257827021181583404541015625;s:3:"min";i:1;s:3:"max";i:10;s:7:"showval";i:1;s:6:"prefix";s:0:"";s:6:"suffix";s:0:"";}}s:11:"fld_1049972";a:8:{s:2:"ID";s:11:"fld_1049972";s:4:"type";s:12:"range_slider";s:5:"label";s:22:"control panel features";s:4:"slug";s:15:"cpanel_features";s:10:"conditions";a:1:{s:4:"type";s:20:"con_5033076465250684";}s:8:"required";i:1;s:7:"caption";s:0:"";s:6:"config";a:12:{s:12:"custom_class";s:0:"";s:7:"default";i:1;s:10:"trackcolor";s:7:"#e6e6e6";s:5:"color";s:7:"#00ff00";s:6:"handle";s:7:"#ffffff";s:12:"handleborder";s:7:"#cccccc";s:4:"step";d:0.1000000000000000055511151231257827021181583404541015625;s:3:"min";i:1;s:3:"max";i:10;s:7:"showval";i:1;s:6:"prefix";s:0:"";s:6:"suffix";s:0:"";}}s:11:"fld_5253080";a:8:{s:2:"ID";s:11:"fld_5253080";s:4:"type";s:12:"range_slider";s:5:"label";s:5:"Price";s:4:"slug";s:5:"price";s:10:"conditions";a:1:{s:4:"type";s:20:"con_5033076465250684";}s:8:"required";i:1;s:7:"caption";s:0:"";s:6:"config";a:12:{s:12:"custom_class";s:0:"";s:7:"default";i:1;s:10:"trackcolor";s:7:"#e6e6e6";s:5:"color";s:7:"#00ff00";s:6:"handle";s:7:"#ffffff";s:12:"handleborder";s:7:"#cccccc";s:4:"step";d:0.1000000000000000055511151231257827021181583404541015625;s:3:"min";i:1;s:3:"max";i:10;s:7:"showval";i:1;s:6:"prefix";s:0:"";s:6:"suffix";s:0:"";}}s:11:"fld_9642452";a:8:{s:2:"ID";s:11:"fld_9642452";s:4:"type";s:12:"range_slider";s:5:"label";s:19:"Money Return Policy";s:4:"slug";s:3:"mbg";s:10:"conditions";a:1:{s:4:"type";s:20:"con_5033076465250684";}s:8:"required";i:1;s:7:"caption";s:0:"";s:6:"config";a:12:{s:12:"custom_class";s:0:"";s:7:"default";i:1;s:10:"trackcolor";s:7:"#e6e6e6";s:5:"color";s:7:"#00ff00";s:6:"handle";s:7:"#ffffff";s:12:"handleborder";s:7:"#cccccc";s:4:"step";d:0.1000000000000000055511151231257827021181583404541015625;s:3:"min";i:1;s:3:"max";i:10;s:7:"showval";i:1;s:6:"prefix";s:0:"";s:6:"suffix";s:0:"";}}s:11:"fld_5383902";a:8:{s:2:"ID";s:11:"fld_5383902";s:4:"type";s:12:"range_slider";s:5:"label";s:8:"Security";s:4:"slug";s:8:"security";s:10:"conditions";a:1:{s:4:"type";s:20:"con_5033076465250684";}s:8:"required";i:1;s:7:"caption";s:0:"";s:6:"config";a:12:{s:12:"custom_class";s:0:"";s:7:"default";i:1;s:10:"trackcolor";s:7:"#e6e6e6";s:5:"color";s:7:"#00ff00";s:6:"handle";s:7:"#ffffff";s:12:"handleborder";s:7:"#cccccc";s:4:"step";d:0.1000000000000000055511151231257827021181583404541015625;s:3:"min";i:1;s:3:"max";i:10;s:7:"showval";i:1;s:6:"prefix";s:0:"";s:6:"suffix";s:0:"";}}s:11:"fld_2574933";a:8:{s:2:"ID";s:11:"fld_2574933";s:4:"type";s:12:"range_slider";s:5:"label";s:20:"Bandwidth Allocation";s:4:"slug";s:9:"bandwidth";s:10:"conditions";a:1:{s:4:"type";s:20:"con_5033076465250684";}s:8:"required";i:1;s:7:"caption";s:0:"";s:6:"config";a:12:{s:12:"custom_class";s:0:"";s:7:"default";i:1;s:10:"trackcolor";s:7:"#e6e6e6";s:5:"color";s:7:"#00ff00";s:6:"handle";s:7:"#ffffff";s:12:"handleborder";s:7:"#cccccc";s:4:"step";d:0.1000000000000000055511151231257827021181583404541015625;s:3:"min";i:1;s:3:"max";i:10;s:7:"showval";i:1;s:6:"prefix";s:0:"";s:6:"suffix";s:0:"";}}s:11:"fld_9800935";a:8:{s:2:"ID";s:11:"fld_9800935";s:4:"type";s:12:"range_slider";s:5:"label";s:11:"Performance";s:4:"slug";s:11:"performance";s:10:"conditions";a:1:{s:4:"type";s:20:"con_5033076465250684";}s:8:"required";i:1;s:7:"caption";s:0:"";s:6:"config";a:12:{s:12:"custom_class";s:0:"";s:7:"default";i:1;s:10:"trackcolor";s:7:"#e6e6e6";s:5:"color";s:7:"#00ff00";s:6:"handle";s:7:"#ffffff";s:12:"handleborder";s:7:"#cccccc";s:4:"step";d:0.1000000000000000055511151231257827021181583404541015625;s:3:"min";i:1;s:3:"max";i:10;s:7:"showval";i:1;s:6:"prefix";s:0:"";s:6:"suffix";s:0:"";}}s:11:"fld_6831721";a:7:{s:2:"ID";s:11:"fld_6831721";s:4:"type";s:6:"button";s:5:"label";s:13:"Submit Rating";s:4:"slug";s:6:"rating";s:10:"conditions";a:1:{s:4:"type";s:20:"con_5033076465250684";}s:7:"caption";s:0:"";s:6:"config";a:3:{s:12:"custom_class";s:0:"";s:4:"type";s:6:"submit";s:5:"class";s:15:"btn btn-default";}}}s:10:"page_names";a:1:{i:0;s:6:"Page 1";}s:18:"conditional_groups";a:1:{s:10:"conditions";a:1:{s:20:"con_5033076465250684";a:5:{s:2:"id";s:20:"con_5033076465250684";s:4:"name";s:12:"Hosting_form";s:4:"type";s:4:"show";s:5:"group";a:1:{s:18:"rw8047723522517308";a:1:{s:18:"cl5092687423643165";a:4:{s:6:"parent";s:18:"rw8047723522517308";s:5:"field";s:11:"fld_5338824";s:7:"compare";s:2:"is";s:5:"value";s:10:"opt2092120";}}}s:6:"fields";a:1:{s:18:"cl5092687423643165";s:11:"fld_5338824";}}}}s:10:"processors";a:1:{s:11:"fp_63951574";a:4:{s:2:"ID";s:11:"fp_63951574";s:4:"type";s:10:"run_action";s:6:"config";a:3:{s:8:"position";s:3:"pre";s:4:"type";s:6:"filter";s:6:"action";s:18:"validation_process";}s:10:"conditions";a:1:{s:4:"type";s:0:"";}}}s:8:"settings";a:1:{s:10:"responsive";a:1:{s:11:"break_point";s:2:"sm";}}s:6:"mailer";a:9:{s:13:"enable_mailer";i:1;s:11:"sender_name";s:26:"Caldera Forms Notification";s:12:"sender_email";s:19:"ssethia88@gmail.com";s:8:"reply_to";s:0:"";s:10:"email_type";s:4:"html";s:10:"recipients";s:0:"";s:6:"bcc_to";s:0:"";s:13:"email_subject";s:14:"Dashboard Form";s:13:"email_message";s:9:"{summary}";}}', 'yes'),
(851, 'wdtMySqlPort', '3306', 'yes'),
(856, 'wdtMinifiedJs', '0', 'yes'),
(966, 'zm_alr_version', '2.0.2', 'yes'),
(968, 'ajax_login_register_plugin_notice_shown', 'true', 'yes'),
(996, 'finished_splitting_shared_terms', '1', 'yes'),
(997, 'db_upgraded', '', 'yes'),
(999, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.3.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.3.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.3.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.3.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.3.1";s:7:"version";s:5:"4.3.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1447487701;s:15:"version_checked";s:5:"4.3.1";s:12:"translations";a:0:{}}', 'yes'),
(1000, 'can_compress_scripts', '0', 'yes'),
(1003, '_transient_timeout__cf_process_56440c0d5dce6', '1447300229', 'no'),
(1004, '_transient__cf_process_56440c0d5dce6', 'a:6:{s:9:"transient";s:25:"_cf_process_56440c0d5dce6";s:13:"form_instance";s:1:"1";s:6:"expire";i:120;s:4:"data";a:26:{s:10:"_cf_verify";s:10:"7ab75e4147";s:16:"_wp_http_referer";s:17:"/site1/?page_id=2";s:10:"_cf_frm_id";s:15:"CF5633cb3b91655";s:10:"_cf_frm_ct";s:1:"1";s:10:"_cf_cr_pst";s:1:"2";s:7:"company";s:0:"";s:11:"fld_5338824";s:7:"Hosting";s:11:"fld_7566251";s:9:"Dreamhost";s:11:"fld_5743175";s:1:"6";s:11:"fld_5361631";s:3:"6.8";s:11:"fld_1049972";s:3:"7.7";s:11:"fld_5253080";s:3:"7.7";s:11:"fld_9642452";s:3:"8.5";s:11:"fld_5383902";s:3:"8.8";s:11:"fld_2574933";s:3:"8.9";s:11:"fld_9800935";s:3:"9.1";s:11:"fld_6831721";s:5:"click";s:7:"request";s:46:"http://localhost/site1/wp-admin/admin-ajax.php";s:11:"postDisable";s:1:"0";s:6:"target";s:18:"#caldera_notices_1";s:9:"loadClass";s:13:"cf_processing";s:11:"loadElement";s:7:"_parent";s:6:"action";s:22:"cf_process_ajax_submit";s:8:"template";s:28:"#cfajax_CF5633cb3b91655-tmpl";s:8:"instance";s:1:"1";s:21:"_wp_http_referer_true";s:33:"http://localhost/site1/?page_id=2";}s:4:"type";s:7:"success";s:4:"note";s:5:"flag2";}', 'no'),
(1005, '_transient_timeout__cf_process_56440c2c541ec', '1447300260', 'no'),
(1006, '_transient__cf_process_56440c2c541ec', 'a:5:{s:9:"transient";s:25:"_cf_process_56440c2c541ec";s:13:"form_instance";s:1:"1";s:6:"expire";i:120;s:4:"data";a:26:{s:10:"_cf_verify";s:10:"7ab75e4147";s:16:"_wp_http_referer";s:17:"/site1/?page_id=2";s:10:"_cf_frm_id";s:15:"CF5633cb3b91655";s:10:"_cf_frm_ct";s:1:"1";s:10:"_cf_cr_pst";s:1:"2";s:7:"company";s:0:"";s:11:"fld_5338824";s:7:"Hosting";s:11:"fld_7566251";s:9:"Dreamhost";s:11:"fld_5743175";s:1:"1";s:11:"fld_5361631";s:1:"1";s:11:"fld_1049972";s:1:"1";s:11:"fld_5253080";s:1:"1";s:11:"fld_9642452";s:1:"1";s:11:"fld_5383902";s:1:"1";s:11:"fld_2574933";s:1:"1";s:11:"fld_9800935";s:1:"1";s:11:"fld_6831721";s:5:"click";s:7:"request";s:46:"http://localhost/site1/wp-admin/admin-ajax.php";s:11:"postDisable";s:1:"0";s:6:"target";s:18:"#caldera_notices_1";s:9:"loadClass";s:13:"cf_processing";s:11:"loadElement";s:7:"_parent";s:6:"action";s:22:"cf_process_ajax_submit";s:8:"template";s:28:"#cfajax_CF5633cb3b91655-tmpl";s:8:"instance";s:1:"1";s:21:"_wp_http_referer_true";s:33:"http://localhost/site1/?page_id=2";}s:4:"type";s:7:"success";}', 'no'),
(1007, '_transient_timeout__cf_process_56440cb880b88', '1447300400', 'no'),
(1008, '_transient__cf_process_56440cb880b88', 'a:5:{s:9:"transient";s:25:"_cf_process_56440cb880b88";s:13:"form_instance";s:1:"1";s:6:"expire";i:120;s:4:"data";a:26:{s:10:"_cf_verify";s:10:"7ab75e4147";s:16:"_wp_http_referer";s:17:"/site1/?page_id=2";s:10:"_cf_frm_id";s:15:"CF5633cb3b91655";s:10:"_cf_frm_ct";s:1:"1";s:10:"_cf_cr_pst";s:1:"2";s:7:"company";s:0:"";s:11:"fld_5338824";s:7:"Hosting";s:11:"fld_7566251";s:8:"Justhost";s:11:"fld_5743175";s:1:"1";s:11:"fld_5361631";s:1:"1";s:11:"fld_1049972";s:1:"1";s:11:"fld_5253080";s:1:"1";s:11:"fld_9642452";s:1:"1";s:11:"fld_5383902";s:1:"1";s:11:"fld_2574933";s:1:"1";s:11:"fld_9800935";s:1:"1";s:11:"fld_6831721";s:5:"click";s:7:"request";s:46:"http://localhost/site1/wp-admin/admin-ajax.php";s:11:"postDisable";s:1:"0";s:6:"target";s:18:"#caldera_notices_1";s:9:"loadClass";s:13:"cf_processing";s:11:"loadElement";s:7:"_parent";s:6:"action";s:22:"cf_process_ajax_submit";s:8:"template";s:28:"#cfajax_CF5633cb3b91655-tmpl";s:8:"instance";s:1:"1";s:21:"_wp_http_referer_true";s:33:"http://localhost/site1/?page_id=2";}s:4:"type";s:7:"success";}', 'no'),
(1009, '_transient_timeout__cf_process_56440f233e88c', '1447301019', 'no'),
(1010, '_transient__cf_process_56440f233e88c', 'a:6:{s:9:"transient";s:25:"_cf_process_56440f233e88c";s:13:"form_instance";s:1:"1";s:6:"expire";i:120;s:4:"data";a:26:{s:10:"_cf_verify";s:10:"7ab75e4147";s:16:"_wp_http_referer";s:17:"/site1/?page_id=2";s:10:"_cf_frm_id";s:15:"CF5633cb3b91655";s:10:"_cf_frm_ct";s:1:"1";s:10:"_cf_cr_pst";s:1:"2";s:7:"company";s:0:"";s:11:"fld_5338824";s:7:"Hosting";s:11:"fld_7566251";s:8:"Bluehost";s:11:"fld_5743175";s:3:"4.5";s:11:"fld_5361631";s:3:"5.2";s:11:"fld_1049972";s:3:"6.3";s:11:"fld_5253080";s:3:"7.1";s:11:"fld_9642452";s:3:"7.7";s:11:"fld_5383902";s:3:"8.3";s:11:"fld_2574933";s:1:"9";s:11:"fld_9800935";s:3:"9.7";s:11:"fld_6831721";s:5:"click";s:7:"request";s:46:"http://localhost/site1/wp-admin/admin-ajax.php";s:11:"postDisable";s:1:"0";s:6:"target";s:18:"#caldera_notices_1";s:9:"loadClass";s:13:"cf_processing";s:11:"loadElement";s:7:"_parent";s:6:"action";s:22:"cf_process_ajax_submit";s:8:"template";s:28:"#cfajax_CF5633cb3b91655-tmpl";s:8:"instance";s:1:"1";s:21:"_wp_http_referer_true";s:33:"http://localhost/site1/?page_id=2";}s:4:"type";s:7:"success";s:4:"note";s:12:"$category_id";}', 'no'),
(1029, '_transient_timeout__cf_process_56456a2061bc5', '1447389848', 'no'),
(1030, '_transient__cf_process_56456a2061bc5', 'a:6:{s:9:"transient";s:25:"_cf_process_56456a2061bc5";s:13:"form_instance";s:1:"1";s:6:"expire";i:120;s:4:"data";a:26:{s:10:"_cf_verify";s:10:"368797b4e6";s:16:"_wp_http_referer";s:17:"/site1/?page_id=2";s:10:"_cf_frm_id";s:15:"CF5633cb3b91655";s:10:"_cf_frm_ct";s:1:"1";s:10:"_cf_cr_pst";s:1:"2";s:7:"company";s:0:"";s:11:"fld_5338824";s:7:"Hosting";s:11:"fld_7566251";s:9:"Dreamhost";s:11:"fld_5743175";s:3:"9.6";s:11:"fld_5361631";s:3:"9.5";s:11:"fld_1049972";s:3:"8.6";s:11:"fld_5253080";s:3:"7.8";s:11:"fld_9642452";s:3:"9.1";s:11:"fld_5383902";s:3:"7.8";s:11:"fld_2574933";s:3:"7.1";s:11:"fld_9800935";s:3:"9.1";s:11:"fld_6831721";s:5:"click";s:7:"request";s:46:"http://localhost/site1/wp-admin/admin-ajax.php";s:11:"postDisable";s:1:"0";s:6:"target";s:18:"#caldera_notices_1";s:9:"loadClass";s:13:"cf_processing";s:11:"loadElement";s:7:"_parent";s:6:"action";s:22:"cf_process_ajax_submit";s:8:"template";s:28:"#cfajax_CF5633cb3b91655-tmpl";s:8:"instance";s:1:"1";s:21:"_wp_http_referer_true";s:33:"http://localhost/site1/?page_id=2";}s:4:"type";s:5:"error";s:4:"note";s:47:"You need to login before submitting any rating.";}', 'no'),
(1033, '_site_transient_timeout_browser_da5e40b3fdc6973489e1c723652734f9', '1447994556', 'yes'),
(1034, '_site_transient_browser_da5e40b3fdc6973489e1c723652734f9', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"46.0.2490.80";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(1040, '_site_transient_timeout_browser_217419b68c3d7320d6a4a6a66b29d9bb', '1448083115', 'yes'),
(1041, '_site_transient_browser_217419b68c3d7320d6a4a6a66b29d9bb', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"46.0.2490.86";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(1044, '_site_transient_timeout_theme_roots', '1447489496', 'yes'),
(1045, '_site_transient_theme_roots', 'a:1:{s:6:"Origin";s:7:"/themes";}', 'yes'),
(1046, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1447488296;s:7:"checked";a:12:{s:33:"admin-panel/admin_panel_dhudo.php";s:3:"1.0";s:32:"baw-login-logout-menu/bawllm.php";s:5:"1.3.3";s:30:"caldera-forms/caldera-core.php";s:7:"1.3.0.2";s:33:"caldera-forms-run-action/core.php";s:5:"1.0.1";s:44:"stops-core-theme-and-plugin-updates/main.php";s:5:"5.3.2";s:42:"peters-login-redirect/wplogin_redirect.php";s:5:"2.9.0";s:50:"Register-Plus-Redux-master/register-plus-redux.php";s:6:"3.9.10";s:20:"visualizer/index.php";s:5:"1.5.1";s:29:"wp-mail-smtp/wp_mail_smtp.php";s:5:"0.9.5";s:27:"wp-optimize/wp-optimize.php";s:8:"1.8.9.10";s:39:"wp-hide-admin-bar/wp-hide-admin-bar.php";s:3:"2.0";s:33:"zm-ajax-login-register/plugin.php";s:5:"2.0.2";}s:8:"response";a:2:{s:30:"caldera-forms/caldera-core.php";O:8:"stdClass":6:{s:2:"id";s:5:"51066";s:4:"slug";s:13:"caldera-forms";s:6:"plugin";s:30:"caldera-forms/caldera-core.php";s:11:"new_version";s:7:"1.3.1.1";s:3:"url";s:44:"https://wordpress.org/plugins/caldera-forms/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/caldera-forms.1.3.1.1.zip";}s:44:"stops-core-theme-and-plugin-updates/main.php";O:8:"stdClass":7:{s:2:"id";s:5:"43668";s:4:"slug";s:35:"stops-core-theme-and-plugin-updates";s:6:"plugin";s:44:"stops-core-theme-and-plugin-updates/main.php";s:11:"new_version";s:5:"5.4.1";s:3:"url";s:66:"https://wordpress.org/plugins/stops-core-theme-and-plugin-updates/";s:7:"package";s:84:"https://downloads.wordpress.org/plugin/stops-core-theme-and-plugin-updates.5.4.1.zip";s:14:"upgrade_notice";s:65:"Fixing styling issues where EUM styles were being used elsewhere.";}}s:12:"translations";a:0:{}s:9:"no_update";a:8:{s:32:"baw-login-logout-menu/bawllm.php";O:8:"stdClass":6:{s:2:"id";s:5:"29878";s:4:"slug";s:21:"baw-login-logout-menu";s:6:"plugin";s:32:"baw-login-logout-menu/bawllm.php";s:11:"new_version";s:5:"1.3.3";s:3:"url";s:52:"https://wordpress.org/plugins/baw-login-logout-menu/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/baw-login-logout-menu.zip";}s:33:"caldera-forms-run-action/core.php";O:8:"stdClass":6:{s:2:"id";s:5:"59338";s:4:"slug";s:24:"caldera-forms-run-action";s:6:"plugin";s:33:"caldera-forms-run-action/core.php";s:11:"new_version";s:5:"1.0.1";s:3:"url";s:55:"https://wordpress.org/plugins/caldera-forms-run-action/";s:7:"package";s:73:"https://downloads.wordpress.org/plugin/caldera-forms-run-action.1.0.1.zip";}s:42:"peters-login-redirect/wplogin_redirect.php";O:8:"stdClass":6:{s:2:"id";s:4:"4633";s:4:"slug";s:21:"peters-login-redirect";s:6:"plugin";s:42:"peters-login-redirect/wplogin_redirect.php";s:11:"new_version";s:5:"2.9.0";s:3:"url";s:52:"https://wordpress.org/plugins/peters-login-redirect/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/peters-login-redirect.zip";}s:20:"visualizer/index.php";O:8:"stdClass":6:{s:2:"id";s:5:"42616";s:4:"slug";s:10:"visualizer";s:6:"plugin";s:20:"visualizer/index.php";s:11:"new_version";s:5:"1.5.1";s:3:"url";s:41:"https://wordpress.org/plugins/visualizer/";s:7:"package";s:53:"https://downloads.wordpress.org/plugin/visualizer.zip";}s:29:"wp-mail-smtp/wp_mail_smtp.php";O:8:"stdClass":7:{s:2:"id";s:3:"951";s:4:"slug";s:12:"wp-mail-smtp";s:6:"plugin";s:29:"wp-mail-smtp/wp_mail_smtp.php";s:11:"new_version";s:5:"0.9.5";s:3:"url";s:43:"https://wordpress.org/plugins/wp-mail-smtp/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/wp-mail-smtp.0.9.5.zip";s:14:"upgrade_notice";s:38:"Minor security fix, hat tip JD Grimes.";}s:27:"wp-optimize/wp-optimize.php";O:8:"stdClass":6:{s:2:"id";s:4:"6250";s:4:"slug";s:11:"wp-optimize";s:6:"plugin";s:27:"wp-optimize/wp-optimize.php";s:11:"new_version";s:8:"1.8.9.10";s:3:"url";s:42:"https://wordpress.org/plugins/wp-optimize/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/wp-optimize.1.8.9.10.zip";}s:39:"wp-hide-admin-bar/wp-hide-admin-bar.php";O:8:"stdClass":7:{s:2:"id";s:5:"39366";s:4:"slug";s:17:"wp-hide-admin-bar";s:6:"plugin";s:39:"wp-hide-admin-bar/wp-hide-admin-bar.php";s:11:"new_version";s:3:"2.0";s:3:"url";s:48:"https://wordpress.org/plugins/wp-hide-admin-bar/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/wp-hide-admin-bar.2.0.zip";s:14:"upgrade_notice";s:71:"New Verison allows to change or select the user group to hide Admin Bar";}s:33:"zm-ajax-login-register/plugin.php";O:8:"stdClass":6:{s:2:"id";s:5:"40487";s:4:"slug";s:22:"zm-ajax-login-register";s:6:"plugin";s:33:"zm-ajax-login-register/plugin.php";s:11:"new_version";s:5:"2.0.2";s:3:"url";s:53:"https://wordpress.org/plugins/zm-ajax-login-register/";s:7:"package";s:65:"https://downloads.wordpress.org/plugin/zm-ajax-login-register.zip";}}}', 'yes'),
(1047, '_transient_timeout_plugin_slugs', '1447574698', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1048, '_transient_plugin_slugs', 'a:12:{i:0;s:33:"admin-panel/admin_panel_dhudo.php";i:1;s:32:"baw-login-logout-menu/bawllm.php";i:2;s:30:"caldera-forms/caldera-core.php";i:3;s:33:"caldera-forms-run-action/core.php";i:4;s:44:"stops-core-theme-and-plugin-updates/main.php";i:5;s:42:"peters-login-redirect/wplogin_redirect.php";i:6;s:50:"Register-Plus-Redux-master/register-plus-redux.php";i:7;s:20:"visualizer/index.php";i:8;s:29:"wp-mail-smtp/wp_mail_smtp.php";i:9;s:27:"wp-optimize/wp-optimize.php";i:10;s:39:"wp-hide-admin-bar/wp-hide-admin-bar.php";i:11;s:33:"zm-ajax-login-register/plugin.php";}', 'no'),
(1049, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1447499741', 'yes'),
(1050, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"5550";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3478";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3435";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"2930";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2674";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2131";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"2122";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"1951";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"1918";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1901";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1896";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1842";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1751";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1552";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1474";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1434";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:4:"1286";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1264";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1249";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1213";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1105";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:4:"1044";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:4:"1009";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:3:"959";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"926";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"893";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"861";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"852";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:3:"844";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"841";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"821";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"786";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"752";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"719";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"713";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"712";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"710";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"709";}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";s:3:"692";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"689";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"687";}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";s:3:"667";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"665";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"660";}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";s:3:"636";}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";s:3:"624";}s:3:"css";a:3:{s:4:"name";s:3:"CSS";s:4:"slug";s:3:"css";s:5:"count";s:3:"618";}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";s:3:"617";}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";s:3:"611";}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";s:3:"609";}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";s:3:"589";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"587";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"572";}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";s:3:"572";}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";s:3:"563";}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";s:3:"562";}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";s:3:"560";}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";s:3:"558";}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";s:3:"551";}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";s:3:"545";}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";s:3:"535";}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";s:3:"514";}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";s:3:"513";}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";s:3:"509";}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";s:3:"507";}s:7:"picture";a:3:{s:4:"name";s:7:"picture";s:4:"slug";s:7:"picture";s:5:"count";s:3:"498";}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";s:3:"495";}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";s:3:"491";}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";s:3:"488";}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";s:3:"485";}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";s:3:"466";}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";s:3:"462";}s:8:"pictures";a:3:{s:4:"name";s:8:"pictures";s:4:"slug";s:8:"pictures";s:5:"count";s:3:"449";}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";s:3:"443";}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";s:3:"438";}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";s:3:"437";}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";s:3:"425";}s:5:"flash";a:3:{s:4:"name";s:5:"flash";s:4:"slug";s:5:"flash";s:5:"count";s:3:"419";}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";s:3:"415";}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";s:3:"411";}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";s:3:"400";}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";s:3:"397";}s:4:"news";a:3:{s:4:"name";s:4:"News";s:4:"slug";s:4:"news";s:5:"count";s:3:"394";}s:4:"shop";a:3:{s:4:"name";s:4:"shop";s:4:"slug";s:4:"shop";s:5:"count";s:3:"393";}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";s:3:"391";}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";s:3:"387";}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";s:3:"386";}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";s:3:"382";}s:9:"thumbnail";a:3:{s:4:"name";s:9:"thumbnail";s:4:"slug";s:9:"thumbnail";s:5:"count";s:3:"379";}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";s:3:"375";}s:4:"text";a:3:{s:4:"name";s:4:"text";s:4:"slug";s:4:"text";s:5:"count";s:3:"375";}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";s:3:"373";}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";s:3:"372";}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";s:3:"372";}s:6:"upload";a:3:{s:4:"name";s:6:"upload";s:4:"slug";s:6:"upload";s:5:"count";s:3:"366";}s:9:"automatic";a:3:{s:4:"name";s:9:"automatic";s:4:"slug";s:9:"automatic";s:5:"count";s:3:"364";}s:7:"sharing";a:3:{s:4:"name";s:7:"sharing";s:4:"slug";s:7:"sharing";s:5:"count";s:3:"363";}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";s:3:"363";}s:7:"profile";a:3:{s:4:"name";s:7:"profile";s:4:"slug";s:7:"profile";s:5:"count";s:3:"362";}s:14:"administration";a:3:{s:4:"name";s:14:"administration";s:4:"slug";s:14:"administration";s:5:"count";s:3:"360";}}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_option_tree`
--

CREATE TABLE IF NOT EXISTS `wp_option_tree` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `item_id` varchar(50) NOT NULL,
  `item_title` varchar(100) NOT NULL,
  `item_desc` longtext,
  `item_type` varchar(30) NOT NULL,
  `item_options` varchar(250) DEFAULT NULL,
  `item_sort` mediumint(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `item_id` (`item_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `wp_option_tree`
--

INSERT INTO `wp_option_tree` (`id`, `item_id`, `item_title`, `item_desc`, `item_type`, `item_options`, `item_sort`) VALUES
(1, 'general_default', 'General Settings', '', 'heading', '', 0),
(2, 'rb_logo_path', 'Logo', 'Upload a logo for your site. It should be around 125x35, for the best results.', 'upload', '', 0),
(3, 'rb_favicon', 'Favicon', 'Upload a 16x16 .ico image as your favicon.', 'upload', '', 0),
(4, 'rb_footer_text', 'Sidebar copyright', 'Write a line of text to appear at the bottom of the sidebar.', 'input', '', 0),
(5, 'rb_tracking_code', 'Tracking Code', 'Paste your Google Analytics or any other tracking code here.', 'textarea', '4', 0),
(6, 'rb_ie7', 'IE7 Error Message', 'Write a message to display when a user with an old browser opens your website.', 'textarea', '4', 0),
(7, 'style_settings', 'Style Settings', '', 'heading', '', 0),
(8, 'rb_site_style', 'Sidebar style', 'This controls the main style of the theme, given by the sidebar&#039;s color.', 'select', 'Orange, Light, Dark', 0),
(9, 'rb_sidebar_autoclose2', 'Sidebar behaviour', 'Choose whether you want the sidebar to auto close on mouse movements, or if you want it to stick on the page unless the user closes it manually.', 'select', 'Autohide, Stick', 0),
(10, 'rb_layout_center', 'Layout align', 'Choose whether you want the pages &amp; posts to be left or centered aligned.', 'select', 'Left, Center', 0),
(11, 'rb_images_fit', 'Portrait images resizing', 'Choose the way how the portrait images from all fullscreen galleries will react to stage resizing.', 'select', 'Fill, Fit', 0),
(12, 'rb_blog_layout', 'Blog layout', 'Choose a layout for the blog listing page.', 'select', 'Default, Full', 0),
(13, 'rb_porto', 'Portfolio Settings', '', 'heading', '', 0),
(14, 'rb_portfolio_page', 'Portfolio Page', 'Please choose the page which you created as a portfolio holder(the portfolio page template).', 'page', '', 0),
(15, 'rb_gallery_page', 'Gallery Page', 'Please choose the page which you created as a gallery holder(the gallery page template).', 'page', '', 0),
(16, 'page_titles', 'Blog Settings', '', 'heading', '', 0),
(17, 'rb_blog_link', 'Blog page', 'Please choose the page which you created as a blog posts holder(the blog page template).', 'page', '', 0),
(18, 'rb_search_tagline', 'Posts Title', 'Write a title for the individual posts page. This will appear at the top and should fit your blog&#039;s title. It will also be used for categories.', 'input', '', 0),
(19, 'rb_search2_tagline', 'Search Title', 'Write a title for the search results page.', 'input', '', 0),
(20, 'rb_404_tagline', '404 Title', 'Write a title for the 404 error page.', 'input', '', 0),
(21, 'contact_page', 'Contact Settings', '', 'heading', '', 0),
(22, 'rb_form_title', 'Form Title', 'Write a title to appear above the form.', 'input', '', 0),
(23, 'rb_form_number_input', 'Phone Number(s)', 'Write your phone number(s) here. Each number needs to be on a new line.', 'textarea', '3', 0),
(24, 'rb_form_email_input', 'Email(s)', 'Write your email address(es) here. Each email needs to be on a new line.', 'textarea', '3', 0),
(25, 'rb_form_address_input', 'Address', 'Write your address here.', 'textarea', '3', 0),
(26, 'rb_form_your_email', 'Your email address', 'Write your email address, so that users can contact you using the contact form.', 'input', '', 0),
(27, 'rb_form_name_label', 'Form Name Label', 'Write a label for the form&#039;s name field.', 'input', '', 0),
(28, 'rb_form_email_label', 'Form Email Label', 'Write a label for the form&#039;s email field.', 'input', '', 0),
(29, 'rb_form_message_label', 'Form Message Label', 'Write a label for the form&#039;s message field.', 'input', '', 0),
(30, 'rb_form_button_label', 'Form Button Label', 'Write a label for the form&#039;s submit button.', 'input', '', 0),
(31, 'rb_form_error', 'Form Error Message', 'Write some text to show when a user doesn&#039;t fill all fields or the information is incorrectly written.', 'input', '', 0),
(32, 'rb_form_success', 'Form Success Message', 'Write some text to show when a user successfully sends you an email.', 'textarea', '3', 0),
(33, 'map_settings', 'Map Settings', '', 'heading', '', 0),
(34, 'rb_map_display', 'Display Map', 'Check whether you want to display a map as a background for your contact page.', 'checkbox', 'Yes', 0),
(35, 'rb_map_lat1', 'Map Latitude', 'Enter a latitude coordinate for the map&#039;s center.', 'input', '', 0),
(36, 'rb_map_long1', 'Map Longitude', 'Enter a longitude coordinate for the map&#039;s center.', 'input', '', 0),
(37, 'rb_map_pin', 'Marker Image', 'Add an image if you want to display a custom maker on the map.', 'upload', '', 0),
(38, 'rb_map_lat2', 'Marker Latitude', 'Enter a latitude coordinate for the maker.', 'input', '', 0),
(39, 'rb_map_long2', 'Marker Longitude', 'Enter a latitude coordinate for the maker.', 'input', '', 0),
(40, 'backgrounds', 'Backgrounds', '', 'heading', '', 0),
(41, 'rb_backgrounds', 'Website backgrounds', 'Create your custom backgrounds here.\nIn each page/post you&#039;ll be able to select a background from this list, or you can select a default one from here..', 'slider', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=254 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1442169718:1'),
(44, 17, '_wp_attached_file', '2015/09/3.jpg'),
(45, 17, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:965;s:6:"height";i:648;s:4:"file";s:13:"2015/09/3.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"3-700x400.jpg";s:5:"width";i:700;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"3-300x201.jpg";s:5:"width";i:300;s:6:"height";i:201;s:9:"mime-type";s:10:"image/jpeg";}s:16:"single-thumbnail";a:4:{s:4:"file";s:13:"3-636x310.jpg";s:5:"width";i:636;s:6:"height";i:310;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(55, 20, '_wp_attached_file', '2015/09/google-adsense-thumbnail.png'),
(56, 20, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:650;s:6:"height";i:350;s:4:"file";s:36:"2015/09/google-adsense-thumbnail.png";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:36:"google-adsense-thumbnail-300x162.png";s:5:"width";i:300;s:6:"height";i:162;s:9:"mime-type";s:9:"image/png";}s:16:"single-thumbnail";a:4:{s:4:"file";s:36:"google-adsense-thumbnail-636x310.png";s:5:"width";i:636;s:6:"height";i:310;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(57, 4, '_thumbnail_id', '20'),
(60, 21, '_edit_last', '1'),
(61, 21, '_edit_lock', '1442240417:1'),
(65, 24, '_edit_last', '1'),
(66, 24, '_edit_lock', '1442240224:1'),
(67, 25, '_wp_attached_file', '2015/09/how-to-setup-google-ads-for-your-blog.png'),
(68, 25, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:650;s:6:"height";i:350;s:4:"file";s:49:"2015/09/how-to-setup-google-ads-for-your-blog.png";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:49:"how-to-setup-google-ads-for-your-blog-300x162.png";s:5:"width";i:300;s:6:"height";i:162;s:9:"mime-type";s:9:"image/png";}s:16:"single-thumbnail";a:4:{s:4:"file";s:49:"how-to-setup-google-ads-for-your-blog-636x310.png";s:5:"width";i:636;s:6:"height";i:310;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(69, 24, '_thumbnail_id', '25'),
(75, 28, '_wp_attached_file', '2015/09/how-to-create-adsense-account.png'),
(76, 28, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:650;s:6:"height";i:350;s:4:"file";s:41:"2015/09/how-to-create-adsense-account.png";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:41:"how-to-create-adsense-account-300x162.png";s:5:"width";i:300;s:6:"height";i:162;s:9:"mime-type";s:9:"image/png";}s:16:"single-thumbnail";a:4:{s:4:"file";s:41:"how-to-create-adsense-account-636x310.png";s:5:"width";i:636;s:6:"height";i:310;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(77, 21, '_thumbnail_id', '28'),
(80, 29, '_edit_last', '1'),
(81, 29, '_edit_lock', '1442246691:1'),
(82, 31, '_wp_attached_file', '2015/09/how-to-link-google-adsense-with-youtube-channel.png'),
(83, 31, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:650;s:6:"height";i:350;s:4:"file";s:59:"2015/09/how-to-link-google-adsense-with-youtube-channel.png";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:59:"how-to-link-google-adsense-with-youtube-channel-300x162.png";s:5:"width";i:300;s:6:"height";i:162;s:9:"mime-type";s:9:"image/png";}s:16:"single-thumbnail";a:4:{s:4:"file";s:59:"how-to-link-google-adsense-with-youtube-channel-636x310.png";s:5:"width";i:636;s:6:"height";i:310;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(87, 32, '_wp_attached_file', '2015/09/how-to-link-google-adsense-with-youtube-channel1.png'),
(88, 32, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:650;s:6:"height";i:350;s:4:"file";s:60:"2015/09/how-to-link-google-adsense-with-youtube-channel1.png";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:60:"how-to-link-google-adsense-with-youtube-channel1-300x162.png";s:5:"width";i:300;s:6:"height";i:162;s:9:"mime-type";s:9:"image/png";}s:16:"single-thumbnail";a:4:{s:4:"file";s:60:"how-to-link-google-adsense-with-youtube-channel1-636x310.png";s:5:"width";i:636;s:6:"height";i:310;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(89, 29, '_thumbnail_id', '32'),
(92, 33, '_edit_last', '1'),
(93, 33, '_edit_lock', '1447489625:1'),
(94, 34, '_wp_attached_file', '2015/09/how-to-earn-money-from-adsense.png'),
(95, 34, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:650;s:6:"height";i:350;s:4:"file";s:42:"2015/09/how-to-earn-money-from-adsense.png";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:42:"how-to-earn-money-from-adsense-300x162.png";s:5:"width";i:300;s:6:"height";i:162;s:9:"mime-type";s:9:"image/png";}s:16:"single-thumbnail";a:4:{s:4:"file";s:42:"how-to-earn-money-from-adsense-636x310.png";s:5:"width";i:636;s:6:"height";i:310;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(96, 33, '_thumbnail_id', '34'),
(99, 38, '_edit_last', '1'),
(100, 38, '_edit_lock', '1444672223:1'),
(104, 41, '_edit_lock', '1444675677'),
(105, 41, '_edit_last', '1'),
(106, 2, '_edit_lock', '1446930862:1'),
(107, 43, '_edit_last', '1'),
(108, 43, '_edit_lock', '1444675662:1'),
(109, 44, '_wp_attached_file', '2015/10/bear_cartoon_1.png'),
(110, 44, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:378;s:6:"height";i:400;s:4:"file";s:26:"2015/10/bear_cartoon_1.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"bear_cartoon_1-378x400.png";s:5:"width";i:378;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:26:"bear_cartoon_1-284x300.png";s:5:"width";i:284;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"bear_cartoon_1-120x88.png";s:5:"width";i:120;s:6:"height";i:88;s:9:"mime-type";s:9:"image/png";}s:15:"portfolio-thumb";a:4:{s:4:"file";s:26:"bear_cartoon_1-360x270.png";s:5:"width";i:360;s:6:"height";i:270;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(111, 43, '_thumbnail_id', '44'),
(112, 46, '_menu_item_type', 'custom'),
(113, 46, '_menu_item_menu_item_parent', '0'),
(114, 46, '_menu_item_object_id', '46'),
(115, 46, '_menu_item_object', 'custom'),
(116, 46, '_menu_item_target', ''),
(117, 46, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(118, 46, '_menu_item_xfn', ''),
(119, 46, '_menu_item_url', 'http://localhost/site1/'),
(121, 47, '_menu_item_type', 'post_type'),
(122, 47, '_menu_item_menu_item_parent', '0'),
(123, 47, '_menu_item_object_id', '2'),
(124, 47, '_menu_item_object', 'page'),
(125, 47, '_menu_item_target', ''),
(126, 47, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(127, 47, '_menu_item_xfn', ''),
(128, 47, '_menu_item_url', ''),
(131, 33, '_et_origin_settings', 'a:1:{s:9:"thumbnail";s:0:"";}'),
(139, 51, 'visualizer-chart-type', 'column'),
(140, 51, 'visualizer-default-data', '0'),
(141, 51, 'visualizer-source', 'Visualizer_Source_Csv'),
(142, 51, 'visualizer-series', 'a:3:{i:0;a:2:{s:5:"label";s:6:"string";s:4:"type";s:6:"string";}i:1;a:2:{s:5:"label";s:6:"number";s:4:"type";s:6:"number";}i:2;a:2:{s:5:"label";s:6:"number";s:4:"type";s:6:"number";}}'),
(143, 51, 'visualizer-settings', 'a:18:{s:5:"title";s:0:"";s:13:"titlePosition";s:0:"";s:14:"titleTextStyle";a:1:{s:5:"color";s:4:"#000";}s:18:"axisTitlesPosition";s:0:"";s:8:"fontName";s:6:"Tahoma";s:8:"fontSize";s:2:"11";s:6:"legend";a:3:{s:8:"position";s:5:"right";s:9:"alignment";s:5:"start";s:9:"textStyle";a:1:{s:5:"color";s:4:"#000";}}s:7:"tooltip";a:2:{s:7:"trigger";s:5:"focus";s:13:"showColorCode";s:1:"1";}s:5:"hAxis";a:4:{s:5:"title";s:0:"";s:9:"direction";s:0:"";s:12:"textPosition";s:3:"out";s:13:"baselineColor";s:7:"#ffffff";}s:5:"vAxis";a:8:{s:12:"textPosition";s:3:"out";s:13:"baselineColor";s:7:"#f9f9f9";s:9:"gridlines";a:2:{s:5:"count";s:0:"";s:5:"color";s:7:"#ffffff";}s:14:"minorGridlines";a:2:{s:5:"count";s:0:"";s:5:"color";s:7:"#ffffff";}s:5:"title";s:0:"";s:9:"direction";s:0:"";s:6:"format";s:0:"";s:10:"viewWindow";a:2:{s:3:"max";s:0:"";s:3:"min";s:0:"";}}s:11:"focusTarget";s:5:"datum";s:9:"isStacked";s:1:"1";s:11:"dataOpacity";s:0:"";s:6:"series";a:2:{i:0;a:3:{s:15:"visibleInLegend";s:1:"1";s:6:"format";s:0:"";s:5:"color";s:0:"";}i:1;a:3:{s:15:"visibleInLegend";s:0:"";s:6:"format";s:0:"";s:5:"color";s:0:"";}}s:5:"width";s:0:"";s:6:"height";s:3:"400";s:15:"backgroundColor";a:3:{s:11:"strokeWidth";s:0:"";s:6:"stroke";s:4:"#666";s:4:"fill";s:11:"transparent";}s:9:"chartArea";a:4:{s:4:"left";s:3:"10%";s:3:"top";s:3:"10%";s:5:"width";s:3:"80%";s:6:"height";s:3:"80%";}}'),
(162, 61, '_wp_attached_file', '2015/09/list-on-clipboard-with-green-checks-hi.png'),
(163, 61, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:408;s:6:"height";i:595;s:4:"file";s:50:"2015/09/list-on-clipboard-with-green-checks-hi.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:50:"list-on-clipboard-with-green-checks-hi-408x400.png";s:5:"width";i:408;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:50:"list-on-clipboard-with-green-checks-hi-206x300.png";s:5:"width";i:206;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(176, 68, 'visualizer-chart-type', 'column'),
(177, 68, 'visualizer-default-data', '0'),
(178, 68, 'visualizer-source', 'Visualizer_Source_Csv'),
(179, 68, 'visualizer-series', 'a:3:{i:0;a:2:{s:5:"label";s:6:"string";s:4:"type";s:6:"string";}i:1;a:2:{s:5:"label";s:6:"number";s:4:"type";s:6:"number";}i:2;a:2:{s:5:"label";s:6:"number";s:4:"type";s:6:"number";}}'),
(180, 68, 'visualizer-settings', 'a:18:{s:5:"title";s:0:"";s:13:"titlePosition";s:0:"";s:14:"titleTextStyle";a:1:{s:5:"color";s:4:"#000";}s:18:"axisTitlesPosition";s:0:"";s:8:"fontName";s:5:"Arial";s:8:"fontSize";s:1:"8";s:6:"legend";a:3:{s:8:"position";s:0:"";s:9:"alignment";s:0:"";s:9:"textStyle";a:1:{s:5:"color";s:4:"#000";}}s:7:"tooltip";a:2:{s:7:"trigger";s:5:"focus";s:13:"showColorCode";s:1:"1";}s:5:"hAxis";a:4:{s:5:"title";s:0:"";s:9:"direction";s:0:"";s:12:"textPosition";s:0:"";s:13:"baselineColor";s:4:"#000";}s:5:"vAxis";a:8:{s:12:"textPosition";s:0:"";s:13:"baselineColor";s:7:"#ffffff";s:9:"gridlines";a:2:{s:5:"count";s:0:"";s:5:"color";s:7:"#ffffff";}s:14:"minorGridlines";a:2:{s:5:"count";s:0:"";s:5:"color";s:0:"";}s:5:"title";s:0:"";s:9:"direction";s:0:"";s:6:"format";s:0:"";s:10:"viewWindow";a:2:{s:3:"max";s:0:"";s:3:"min";s:0:"";}}s:11:"focusTarget";s:5:"datum";s:9:"isStacked";s:1:"1";s:11:"dataOpacity";s:0:"";s:6:"series";a:2:{i:0;a:3:{s:15:"visibleInLegend";s:0:"";s:6:"format";s:0:"";s:5:"color";s:0:"";}i:1;a:3:{s:15:"visibleInLegend";s:0:"";s:6:"format";s:0:"";s:5:"color";s:0:"";}}s:5:"width";s:0:"";s:6:"height";s:0:"";s:15:"backgroundColor";a:3:{s:11:"strokeWidth";s:0:"";s:6:"stroke";s:4:"#666";s:4:"fill";s:4:"#fff";}s:9:"chartArea";a:4:{s:4:"left";s:3:"10%";s:3:"top";s:3:"10%";s:5:"width";s:3:"80%";s:6:"height";s:3:"80%";}}'),
(199, 96, '_menu_item_type', 'custom'),
(200, 96, '_menu_item_menu_item_parent', '0'),
(201, 96, '_menu_item_object_id', '96'),
(202, 96, '_menu_item_object', 'custom'),
(203, 96, '_menu_item_target', ''),
(204, 96, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(205, 96, '_menu_item_xfn', ''),
(206, 96, '_menu_item_url', '#bawregister#'),
(208, 97, '_menu_item_type', 'custom'),
(209, 97, '_menu_item_menu_item_parent', '0'),
(210, 97, '_menu_item_object_id', '97'),
(211, 97, '_menu_item_object', 'custom'),
(212, 97, '_menu_item_target', ''),
(213, 97, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(214, 97, '_menu_item_xfn', ''),
(215, 97, '_menu_item_url', '#bawloginout#'),
(228, 2, '_edit_last', '1'),
(229, 2, '_et_origin_settings', 'a:1:{s:9:"thumbnail";s:0:"";}'),
(230, 122, '_wp_trash_meta_status', 'draft'),
(231, 122, '_wp_trash_meta_time', '1446305881'),
(232, 121, '_wp_trash_meta_status', 'draft'),
(233, 121, '_wp_trash_meta_time', '1446305882'),
(246, 122, '_wp_trash_meta_status', 'draft'),
(247, 122, '_wp_trash_meta_time', '1446745355'),
(248, 122, '_wp_trash_meta_status', 'draft'),
(249, 122, '_wp_trash_meta_time', '1446869738'),
(250, 122, '_wp_trash_meta_status', 'draft'),
(251, 122, '_wp_trash_meta_time', '1446930833'),
(252, 122, '_wp_trash_meta_status', 'draft'),
(253, 122, '_wp_trash_meta_time', '1446977224');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`),
  KEY `post_name` (`post_name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=147 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2015-09-13 04:21:54', '2015-09-13 04:21:54', '[caldera_form id="CF5633cb3b91655"]', 'Dashboard', '', 'publish', 'open', 'open', '', 'sample-page', '', '', '2015-11-07 21:14:18', '2015-11-07 21:14:18', '', 0, 'http://localhost/site1/?page_id=2', 0, 'page', '', 0),
(4, 1, '2015-09-13 07:18:56', '2015-09-13 07:18:56', 'As a blogger you always want to earn some money from your blog/website to pay your hosting/domain bills. One of the easiest ways to earn money from your blog is to display advertisements. There are plenty of the advertising networks on the internet like Google adsense, Viglink, Revenue Hits, Adversal, Chitika, Infolinks. Google adsense is the most renowned and highly rated ad network in all of them. Let’s discuss about various reasons on, why should you go for google adsense as a blogger. <!--more-->\r\n\r\n[caption id="attachment_1173" align="aligncenter" width="1000"]<a href="http://youngnewton.com/wp-content/uploads/2015/09/google-adsense.png"><img class="size-full wp-image-1173" src="http://youngnewton.com/wp-content/uploads/2015/09/google-adsense.png" alt="10 reasons to choose google adsense" width="1000" height="600" /></a> 10 reasons to choose google adsense[/caption]\r\n<h3>1. Brand Name and Trust</h3>\r\nAs the name suggests it’s a product from google. Google symbolizes trust and brand. They are having the best qualified developers/resources from all over the world to support and develop their products.\r\n<h3>2. Legitimate Advertisement Program</h3>\r\nIt is impossible to display advertisements without advertisers. So the question is how google gets advertisers and advertisements? Well the answer is, <a href="https://www.google.com/adwords/" target="_blank">Google Adwords</a> is a product of google by which an advertiser can create advertisement for their products. There are certain guidelines that an advertiser needs to follow in order to create ads for their product. You can check these guidelines from <strong><a href="https://support.google.com/adwordspolicy/answer/6008942?hl=en#con" target="_blank">Adwords policies</a>.</strong>\r\nSo it is impossible for the advertisers to create vague advertisements from google adwords. Google displays only those ads on our blogs which are passed by their programs and policies.\r\n<h3>3. Very easy to set up</h3>\r\nIt will take only a couple of minutes to create an adsense account. You can check our complete guide on How to create google adsense account.\r\nAfter creating google adsense account you just need to paste a piece of code onto your website to display ads. Here is a complete guide on How to set up google ads on your blog.\r\n<h3>4. Compatible with multiple Websites/blogs</h3>\r\nYou can publish advertisements on your multiple websites/blogs using single google adsense account provided that each of your blogs should follow <strong><a href="https://support.google.com/adsense/answer/48182?hl=en" target="_blank">adsense policies</a></strong>.\r\n<h3>5. Contextual Advertisements</h3>\r\nGoogle contextual ad system targets individuals, based on their interests and by their searching and browsing habits. Let’s take an example for clear understanding of google contextual ad network.\r\n<strong>Example:</strong> Suppose you are surfing on flipkart for a new laptop. After watching so many options, you have decided that you will order a laptop after a few weeks only. So you moved from flipkart.com to some other websites. Most of the time, you will be amaze to see flipkart advertisement with laptop pictures on those other websites. So that is contextual advertisements.\r\n\r\n<strong>Note: Google contextual advertise system also place advertisements based on niche and keywords used by website.</strong>\r\n<h3>6. Wide Range of Advertisers and Publishers</h3>\r\nAs per the statistics around 89% of web traffic comes from google. That means, if advertisers want to promote their products or services, then google provides them huge amount of audience. More advertisers means more competition for your ad spaces, more relevant ads and ads for all your online content.\r\nAs a publisher (blogger/website owner), high cost per click is the best bet, because every time when one clicks on advertise you are going to receive high amount of money per click.\r\n<h3>7. Supports different Ad formats</h3>\r\nThere is variety of ads available in google adsense, some of them are Text ads, Display ads, Hover Ads (newly launched), backup ads, link ads and Video Ads. So as a publisher you have variety of options to display advertisements on your website/blog with different ad formats.\r\n\r\n<strong>Note: Hover ads,video ads are part of display ads.</strong>\r\n<h3>8. Facilitates custom ads dimensions</h3>\r\nWhat if a publisher wants to create ads with their own dimensions ? Custom ads gives flexibility to create ads with your own custom dimensions.\r\nGoogle adsense also provides responsive ads (very cool feature). Responsive ads automatically take dimensions according to the space available on your website. It also supports different devices.\r\n<h3>9. Dedicated support team and discussion forum</h3>\r\nGoogle have <strong><a href="https://productforums.google.com/forum/#!forum/adsense" target="_blank">adsense help forum</a></strong> with a dedicated support team to help out peoples. You can learn so many things from the discussion forum, because people shares their experiences, mistakes, problems and various tips &amp; tricks to increase the revenue. Furthermore you can also raise a ticket/topic, if you are having any doubts and concerns.\r\n<h3>10. Transparent payment system</h3>\r\nThere are many advertising networks on the internet, but none of them is having transparent payment system compare to google adsense. Even you will find most of the advertising networks fraudulent. You can track number of clicks, earning per click, CTR and lots of attributes using google adsense dashboard. You can check out below links to know more about\r\n\r\n<strong><a href="https://support.google.com/adsense/answer/1709858?hl=en&amp;rd=1" target="_blank">Whole Adsense process guide</a></strong>\r\n<strong><a href="https://support.google.com/adsense/answer/1709893?hl=en&amp;ref_topic=1727182&amp;vid=1-635751328332698913-11736429568367521112" target="_blank">Payment timeline</a></strong>\r\n<strong><a href="https://support.google.com/adsense/answer/2569265?hl=en&amp;ref_topic=1727182&amp;vid=0-635751357122008888-4776974899936341945" target="_blank">Mode of Payment</a></strong>\r\n<strong><a href="https://support.google.com/adsense/answer/4731479?hl=en&amp;ref_topic=1727182" target="_blank">Payment FAQ</a></strong>\r\n\r\nWe would love to hear any adsense related experiences, tips and suggestions from you. I will be glad if you can share this useful information with your friends and colleagues using twitter, facebook or any other social networks.', 'Google Adsense - 10 Reasons to Choose Google Ads', '', 'publish', 'open', 'open', '', 'google-adsense-10-reasons-to-choose-google-ads', '', '', '2015-09-13 18:04:34', '2015-09-13 18:04:34', '', 0, 'http://localhost/site1/?p=4', 0, 'post', '', 0),
(17, 1, '2015-09-13 08:34:42', '2015-09-13 08:34:42', '', '3', '', 'inherit', 'open', 'open', '', '3', '', '', '2015-09-13 08:34:42', '2015-09-13 08:34:42', '', 4, 'http://localhost/site1/wp-content/uploads/2015/09/3.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2015-09-13 18:04:24', '2015-09-13 18:04:24', '', 'google adsense thumbnail', '', 'inherit', 'open', 'open', '', 'google-adsense-thumbnail', '', '', '2015-09-13 18:04:24', '2015-09-13 18:04:24', '', 4, 'http://localhost/site1/wp-content/uploads/2015/09/google-adsense-thumbnail.png', 0, 'attachment', 'image/png', 0),
(21, 1, '2015-09-13 18:46:33', '2015-09-13 18:46:33', 'Whether you are a beginner or an experienced blogger, you can''t afford to avoid google adsense. No other advertising network can beat google adsense. It is simply the best in its class.\r\nGoogle adsense is a contextual advertisement program for publishers (blogger/website owner), which provides ads on their blogs/websites. Publishers get paid every time, when someone clicks on those ads.\r\nThere is a myth on lots of peoples mind that, you must have a website or blog in order to create a google adsense account. Even i myself created adsense account without any blog or website. Sounds inappropriate? But its true, you can create adsense account for your youtube channel and can monetize your videos using google adsense. You can refer How to create youtube channel guide to create your own youtube channel.\r\n<h3>Prerequisites that a publisher needs to have before applying to adsense program.</h3>\r\n1. You must have a verified google account (gmail). If you don''t have a google account then our guide <a href="http://youngnewton.com/how-to-create-a-gmailgoogle-account/" target="_blank">How to make gmail account </a>will help you to create one.\r\n2. Either you should have a website/blog or a youtube channel. Users working on blogger can also, apply for google ads.\r\n3. Your Website, blog must fulfill <a href="https://support.google.com/adsense/answer/48182?vid=1-635750822656025841-16204305031606054135" target="_blank">google adsense privacy guidelines</a>.\r\n\r\n<strong>Tip: Sites showing Google ads should be easy for users to navigate. Sites may not change user preferences, redirect users to unwanted websites, initiate downloads, include malware or contain pop-ups or pop-under that interfere with site navigation. (This point is also mentioned in google privacy guidelines, so read it carefully.)</strong>\r\n\r\n4. Google sends a PIN (basically a number), once you’re earning reaches up to $10. So you need to enter a valid/correct postal (mailing) address at the time of registration.\r\n5. Publisher must be at least 18 years of age to participate in the AdSense program. If you are not yet 18, you may have a parent or guardian submits an application using their own Google Account.\r\n\r\nSteps to create your Adsense account.\r\n<h3>Step 1: Enter your Google Account Details</h3>\r\nGo to <a href="https://www.google.com/adsense/signup" target="_blank">https://www.google.com/adsense/signup</a> . There are 2 options on the screen.\r\n<strong>Yes, proceed to google account sign in :</strong> Use this option if you already have a google (gmail) account.\r\n<strong>No, create a new google account:</strong> If you don’t have gmail id then go for this option. After pressing this button it will redirect you to gmail sign up page. There you can refer<a href="http://youngnewton.com/how-to-create-a-gmailgoogle-account/"> How to create gmail account guide</a>, to create your own gmail account.\r\n\r\n[caption id="attachment_1175" align="aligncenter" width="900"]<a href="http://youngnewton.com/wp-content/uploads/2015/09/1.jpg"><img class="size-large wp-image-1175" src="http://youngnewton.com/wp-content/uploads/2015/09/1-1024x499.jpg" alt="how to create google adsense account image 1" width="900" height="439" /></a> how to create google adsense account image 1[/caption]\r\n\r\nLet’s say I already have a gmail account. So I’ll choose Yes, proceed to google account sign in option. In next window it will ask you for your gmail ID and password. Fill in your gmail id and password then click on login button.\r\n\r\n[caption id="attachment_1179" align="aligncenter" width="655"]<a href="http://youngnewton.com/wp-content/uploads/2015/09/2.jpg"><img class="size-full wp-image-1179" src="http://youngnewton.com/wp-content/uploads/2015/09/2.jpg" alt="google adsense - login to existing google account" width="655" height="564" /></a> google adsense - login to existing google account[/caption]\r\n<h3>Step 2: Enter your website details</h3>\r\nAfter entering your google account details, it will ask for your website information. Enter your website URL and the language of your website in which it is written. Read out Google AdSense Terms &amp; Conditions and Program Policies carefully before pressing the continue button.\r\n\r\n[caption id="attachment_1176" align="aligncenter" width="839"]<a href="http://youngnewton.com/wp-content/uploads/2015/09/4.jpg"><img class="size-full wp-image-1176" src="http://youngnewton.com/wp-content/uploads/2015/09/4.jpg" alt="create google adsense account image 2" width="839" height="648" /></a> create google adsense account image 2[/caption]\r\n<h3>Step 3: Fill in your contact details</h3>\r\nYou need to supply full and correct details in this page, because that details matters a lot in terms of receiving payment and for a few verification process. Please follow below points to fill up the details.\r\n<strong>Country or territory:</strong> Enter your country name here.\r\n\r\n<strong>Time zone:</strong> As soon as you select your country name, google will automatically fill up this detail. But still if you want to change the value in this field, then you can select it from drop down menu.\r\n\r\n<strong>Account Type:</strong> Please fill this detail carefully, because it cannot be change later on. If you are running a company then you can select business, else go for individual.\r\n\r\n<strong>Payee name / Company name:</strong> If account type is business, then you have to provide your company name correctly. Remember, your company must have a bank account, because all the payment will be made against that company name.\r\nIf account type is individual, then one needs to provide payee name. Payee name can be your own name or the name of the person, to which bank account; you want to submit the money. Remember payee name must match with the full name on bank account.\r\n\r\n<strong>Note: Once provided, Payee name and company name cannot be changed.</strong>\r\n\r\n[caption id="attachment_1177" align="aligncenter" width="910"]<a href="http://youngnewton.com/wp-content/uploads/2015/09/5.jpg"><img class="size-full wp-image-1177" src="http://youngnewton.com/wp-content/uploads/2015/09/5.jpg" alt="create google adsense account - various fields demo" width="910" height="725" /></a> create google adsense account - various fields demo[/caption]\r\n\r\n<strong>Street Address / City/ State / Pin code:</strong> Please enter your full and correct address details. Google sends a letter with a confirmation PIN (a number) on this address, once you’re earning reaches up to $10. So in order to receive the payments you need to provide all these details correctly.\r\n\r\n<strong>Mobile Number:</strong> Mobile number needs to be verified. So enter your mobile number correctly. You can verify your mobile number by text message or by voice call. To know more about mobile number verification process check <a href="https://support.google.com/adsense/answer/2922269?hl=en&amp;utm_source=aso&amp;utm_medium=link&amp;utm_campaign=ww-ww-et-asfe_&amp;__utma=173272373.718631482.1435039070.1440434999.1440438193.9&amp;__utmb=173272373.0.10.1440520518&amp;__utmc=173272373&amp;__utmx=173272373.3qjEfUUtS86jCAykJjwG5g$48263106-2:&amp;__utmz=173272373.1440438193.9.7.utmcsr=google.com|utmccn=%28referral%29|utmcmd=referral|utmcct=/accounts/Logout2&amp;__utmv=-&amp;__utmk=42973797" target="_blank">Adsense mobile verification guidelines</a>\r\n\r\n<strong>How did you get to know about adsense:</strong> Select appropriate option from drop down box.\r\nAfter filling all these details click on submit my application button and you are done. Adsense may ask you to verify your mobile number later.\r\n\r\nAfter submitting all the details adsense verification process will takes place. It may take around 2-3 days to verfiy your adsense account details. In case, if they found any discrepancy then they can reject your application. Same will be conveyed to you by email with the reason of rejection. After that you should rectify the causes and can re-apply for google adsense program. In case of acceptance, you can set up advertisements and can start earning money from your blog right away. You can check below adsense article from our blog.\r\nHow to set up google ads for your blog.\r\n10 reasons to choose google adsense.', 'How to create google adsense account', '', 'publish', 'open', 'open', '', 'how-to-create-google-adsense-account', '', '', '2015-09-14 14:21:18', '2015-09-14 14:21:18', '', 0, 'http://localhost/site1/?p=21', 0, 'post', '', 0),
(24, 1, '2015-09-14 14:15:58', '2015-09-14 14:15:58', 'It’s time to get compensations for the efforts and hard work that you have put to create your own website and blog. One of the easiest and best ways to get that compensation is via google AdSense.\r\nYou must have AdSense account created first, in order to create google ads. If you don’t have one, then you can refer How to create google AdSense account.\r\n\r\nLuckily, to set up an advertisement for your blog/website with google AdSense is very easy. You don’t even need any technical skills for that. So don’t worry, if you are a beginner or a non-technical person. This guide will uncover the entire concept that you need to know for google ads. So like a good little kid hold my finger and follow below mentioned steps.\r\n<h3>Step 1: Login to your Adsense Account</h3>\r\nGo to <a href="https://www.google.com/adsense/login3" target="_blank">Google adsense login page</a>. Enter your AdSense registered email id and password to login.\r\n<h3>Step 2: Give your ad unit a name</h3>\r\nAfter login go to<strong> My ads</strong> Tab, then click on <strong>New ad unit</strong> button. In new window, Type in a name (Any name) for your advertisement. Remember, you cannot create multiple ads with same ad name. So each ad name should be unique.\r\n<h3>Step 3: Select Ad size</h3>\r\nAd size section contains a drop-down list. You can select horizontal, vertical, rectangular, responsive advertising banners as per your website requirements.\r\nThere is also an option of custom size, by which you can specify your own ad dimensions.\r\n\r\n<strong>Tip: Wider sizes tend to perform better.</strong>\r\n<h3>Step 4: Choose your Ad type</h3>\r\nAd type for google AdSense contains text based ads, display ads and one can also configure it to show both text and display based ads (default).\r\n\r\n<strong>Text Ads:</strong> A text ad contains a clickable title, few lines of text, and a website address. . If a person click on the link then it will redirect that person to advertisers website. You can check out some <a href="https://support.google.com/adsense/answer/185665?hl=en" target="_blank">Example of text ads</a> here.\r\n\r\n<strong>Display Ads:</strong> Display ads are graphical ads, which we can further classified into Image ads, video ads, hover ads etc. You can check a few <a href="https://support.google.com/adsense/answer/185666?hl=en&amp;ref_topic=1307421&amp;vid=1-635755626488840063-13183442452462485180" target="_blank">Example of Display ads</a> here.\r\n\r\n<strong>Tip: Google recommends users to select both display and text based ads to increase the revenue.</strong>\r\n<h3>Step 5: Style your Text Ad</h3>\r\nAs name suggests we can customize text ads with different font color, link color, Ad background color, borders etc. Google also provides some predefined ad styles. You should select ad background color similar to your blog/website color, so that ad will be completely blended with your website. To know more about text ad style, refer <a href="https://support.google.com/adsense/answer/17957" target="_blank">Adsense text ad styling tutorial</a>\r\n<h3>Step 6: Create a Custom Channel</h3>\r\nWe can group one or multiple ad units into a single custom channel to analyze the performance of ad units. For example, If you want to compare the performance of text ad v/s display ads on your website, then you can test the performance between those ads by creating one custom channel for display ads and other for text based ads.\r\n\r\nYou can also turn any custom channel into a target-able ad placement where advertisers can specifically choose to display their ads.\r\nTo create a custom channel, Press <strong>Create new custom channel</strong> button. There, name your custom channel, add different ad units and click on the check-box if you want to attract advertisers for target ad placement.\r\n\r\n<strong>Note: This is not a mandatory field.</strong>\r\nTo know more about custom channel visit <a href="https://support.google.com/adsense/answer/65083?hl=en" target="_blank">Adsense custom channel guidelines</a>\r\n<h3>Step 7: Make a Backup ads</h3>\r\nMost of the peoples are having their backup plans available, if unfortunately something doesn’t work. Similarly for an instance if google doesn’t have any advertisement for your blog, then backup ads will come into picture.\r\nBackup ads are the ads that you want to show on your website when google has no targeted ads available. By default google displays a blank space whenever it doesn’t find any targetable ads for your website. You can display a solid color or a different ad using backup ads option.\r\nTo know more about back up ads check : <a href="https://support.google.com/adsense/answer/113262?ctx=tltp&amp;hl=en" target="_blank">Adsense backup ads guidelines</a>\r\n<h3>Step 8: Get Code &amp; paste it onto your blog</h3>\r\nClick on <strong>save and get code</strong> button. As soon as you click on save and get code button, a popup will appear with a code. Copy down that code and paste it onto your website, where you want to display ads.\r\nWordpress users can paste that code in widget area or in between their website content. <strong>Ad inserter, WP inserter</strong> are the plugins that may also help you to customize or randomize your ad positions.', 'How to set up google ads for your blog/website', '', 'publish', 'open', 'open', '', 'how-to-set-up-google-ads-for-your-blogwebsite', '', '', '2015-09-14 14:15:58', '2015-09-14 14:15:58', '', 0, 'http://localhost/site1/?p=24', 0, 'post', '', 0),
(25, 1, '2015-09-14 14:15:40', '2015-09-14 14:15:40', '', 'how to setup google ads for your blog', '', 'inherit', 'open', 'open', '', 'how-to-setup-google-ads-for-your-blog', '', '', '2015-09-14 14:15:40', '2015-09-14 14:15:40', '', 24, 'http://localhost/site1/wp-content/uploads/2015/09/how-to-setup-google-ads-for-your-blog.png', 0, 'attachment', 'image/png', 0),
(28, 1, '2015-09-14 14:21:07', '2015-09-14 14:21:07', '', 'how to create adsense account', '', 'inherit', 'open', 'open', '', 'how-to-create-adsense-account', '', '', '2015-09-14 14:21:07', '2015-09-14 14:21:07', '', 21, 'http://localhost/site1/wp-content/uploads/2015/09/how-to-create-adsense-account.png', 0, 'attachment', 'image/png', 0),
(29, 1, '2015-09-14 14:41:34', '2015-09-14 14:41:34', 'Youtube is the largest video sharing platform on the internet. Many peoples are earning very handsome amount by their videos. But have you ever thought that, how they receives money directly into bank account from their youtube channel?\r\nTo enable this process, one must have a google adsense account associated with their youtube channel. the whole process goes like “earning from youtube channel -&gt; adsense account -&gt; bank account.” So to facilitate this process, kindly follow below steps.\r\n<h3>Step 1: Go to monetization tab of your channel</h3>\r\nClick on <a href="https://www.youtube.com/account_monetization" target="_blank">https://www.youtube.com/account_monetization</a> link. You will need to enter your gmail id (associated with the youtube) and password to login.\r\n<h3>Step 2: Go to Adsense association page and Sign in with your google account</h3>\r\nAfter successful login, you are going to see various guidelines and information. Out of those guidelines click on how will I be paid guideline. There will be a link with name associate an AdSense account inside how will I be paid guideline, Click on that link.\r\nA new window will appear, in which click on Next button. Once you click you will be redirected to google adsense page.\r\n<h3>Step 3: Decide which google account you want to associate with google adsense</h3>\r\nYou can create a google adsense account, if you have a gmail id created. Having a youtube channel means that you already have a gmail account. Still you can take help of how to create gmail account guide, if you want to create a new one.\r\nIt is clearly mentioned in this page that if you''re already an AdSense publisher, then you must sign in with the Google Account that you use to access your AdSense account. If your adsense gmail id is different than your youtube’s gmail id then use create or use another account button to login with your adsense gmail id. Else click on yes.\r\nThose people who don’t have their own AdSense account, they can create it by using there youtube’s gmail id(Press Yes) or by using a different gmail address(press create or use another account).\r\n<h3>Step 4: Submit your details to adsense</h3>\r\nOnce you login with your gmail account, it will show you your website information containing your youtube channel link and content type information. So click on continue to move on next page. In next page there are several fields that you need to fill out carefully. Some of the fields are\r\n<strong>Country or territory:</strong> Enter your country name here.\r\n<strong>Time zone:</strong> As soon as you select your country name, google will automatically fill up this detail. But still if you want to change the value in this field, then you can select it from drop down menu.\r\n<strong>Account Type:</strong> Please fill this detail carefully, because it cannot be change later on. If you are running a company then you can select business, else go for individual.\r\n<strong>Payee name / Company name:</strong> If account type is business, then you have to provide your company name correctly. Remember, your company must have a bank account, because all the payment will be made against that company name.\r\nIf account type is individual, then one needs to provide payee name. Payee name can be your own name or the name of the person, to which bank account; you want to submit the money. Remember payee name must match with the full name on bank account.\r\nNote: Once provided, Payee name and company name cannot be changed.\r\n<strong>Street Address / City/ State / Pin code:</strong> Please enter your full and correct address details. Google sends a letter with a confirmation PIN (a number) on this address, once you’re earning reaches up to $10. So in order to receive the payments you need to provide all these details correctly.\r\n<strong>Mobile Number:</strong> Mobile number needs to be verified. So enter your mobile number correctly. You can verify your mobile number by text message or by voice call. To know more about mobile number verification process check <a href="https://support.google.com/adsense/answer/2922269?hl=en&amp;utm_source=aso&amp;utm_medium=link&amp;utm_campaign=ww-ww-et-asfe_&amp;__utma=173272373.718631482.1435039070.1440434999.1440438193.9&amp;__utmb=173272373.0.10.1440520518&amp;__utmc=173272373&amp;__utmx=173272373.3qjEfUUtS86jCAykJjwG5g$48263106-2:&amp;__utmz=173272373.1440438193.9.7.utmcsr=google.com|utmccn=%28referral%29|utmcmd=referral|utmcct=/accounts/Logout2&amp;__utmv=-&amp;__utmk=42973797" target="_blank">Adsense Mobile verification guideline</a>\r\n<h3>Step 5: Wait for your adsense account activation</h3>\r\nAfter filling out all the details, when you click on submit button then adsense will automatically redirect you to Youtube. Once your account is activated, a message to inform you that your AdSense account has been associated will appear in your youtube account (Please note that it may take up to 48 hours for the association to be fully active). After successful activation go to <a href="https://www.google.com/adsense/login3" target="_blank">https://www.google.com/adsense/login3</a> and check out your youtube performance and earnings.', 'How to link YouTube channel with your adsense account.', '', 'publish', 'open', 'open', '', 'how-to-link-youtube-channel-with-your-adsense-account', '', '', '2015-09-14 16:04:08', '2015-09-14 16:04:08', '', 0, 'http://localhost/site1/?p=29', 0, 'post', '', 0),
(31, 1, '2015-09-14 14:41:25', '2015-09-14 14:41:25', '', 'how to link google adsense with youtube channel', '', 'inherit', 'open', 'open', '', 'how-to-link-google-adsense-with-youtube-channel', '', '', '2015-09-14 14:41:25', '2015-09-14 14:41:25', '', 29, 'http://localhost/site1/wp-content/uploads/2015/09/how-to-link-google-adsense-with-youtube-channel.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2015-09-14 16:03:56', '2015-09-14 16:03:56', '', 'how to link google adsense with youtube channel', '', 'inherit', 'open', 'open', '', 'how-to-link-google-adsense-with-youtube-channel-2', '', '', '2015-09-14 16:03:56', '2015-09-14 16:03:56', '', 29, 'http://localhost/site1/wp-content/uploads/2015/09/how-to-link-google-adsense-with-youtube-channel1.png', 0, 'attachment', 'image/png', 0),
(33, 1, '2015-09-14 16:19:05', '2015-09-14 16:19:05', '[visualizer id="51"]\r\n<div class="sub-title">\r\n<h1>Hostgator compare to Other Hosting</h1>\r\n</div>\r\n[visualizer id="68"]\r\n<div class="hosting-plans-container">\r\n<div class="sub-title1"> <h1> Hostgator Plans & Discounts <h1> </div>\r\n<div class="hosting-plans-inner">\r\n[learn_more caption="Shared Hosting"]\r\n[one_half]\r\n<ul> Available Plans\r\n<li> Hatchling Plan </li>\r\n<li> Baby Plan </li>\r\n<li> Business Plan </li></ul>\r\n[/one_half]\r\n[one_half_last]\r\n<ul> Features\r\n<li> Unlimited Bandwidth </li>\r\n<li> 1 Click Installs </li>\r\n<li> Unlimited Domains </li>\r\n<li> 24*7*365 Support </li></ul>\r\n[/one_half_last]\r\n[/learn_more][learn_more caption="Shared Hosting"]\r\n[one_half]\r\n<ul> Available Plans\r\n<li> Hatchling Plan </li>\r\n<li> Baby Plan </li>\r\n<li> Business Plan </li></ul>\r\n[/one_half]\r\n[one_half_last]\r\n<ul> Features\r\n<li> Unlimited Bandwidth </li>\r\n<li> 1 Click Installs </li>\r\n<li> Unlimited Domains </li>\r\n<li> 24*7*365 Support </li></ul>\r\n[/one_half_last]\r\n[/learn_more][learn_more caption="Shared Hosting"]\r\n[one_half]\r\n<ul> Available Plans\r\n<li> Hatchling Plan </li>\r\n<li> Baby Plan </li>\r\n<li> Business Plan </li></ul>\r\n[/one_half]\r\n[one_half_last]\r\n<ul> Features\r\n<li> Unlimited Bandwidth </li>\r\n<li> 1 Click Installs </li>\r\n<li> Unlimited Domains </li>\r\n<li> 24*7*365 Support </li></ul>\r\n[/one_half_last]\r\n[/learn_more][learn_more caption="Shared Hosting"]\r\n[one_half]\r\n<ul> Available Plans\r\n<li> Hatchling Plan </li>\r\n<li> Baby Plan </li>\r\n<li> Business Plan </li></ul>\r\n[/one_half]\r\n[one_half_last]\r\n<ul> Features\r\n<li> Unlimited Bandwidth </li>\r\n<li> 1 Click Installs </li>\r\n<li> Unlimited Domains </li>\r\n<li> 24*7*365 Support </li></ul>\r\n[/one_half_last]\r\n[/learn_more][learn_more caption="Shared Hosting"]\r\n[one_half]\r\n<ul> Available Plans\r\n<li> Hatchling Plan </li>\r\n<li> Baby Plan </li>\r\n<li> Business Plan </li></ul>\r\n[/one_half]\r\n[one_half_last]\r\n<ul> Features\r\n<li> Unlimited Bandwidth </li>\r\n<li> 1 Click Installs </li>\r\n<li> Unlimited Domains </li>\r\n<li> 24*7*365 Support </li></ul>\r\n[/one_half_last]\r\n[/learn_more]\r\n</div>\r\n</div>', 'Hostgator Hosting Reviews', '', 'publish', 'open', 'open', '', 'how-to-earn-money-from-google-adsense', '', '', '2015-10-20 16:24:47', '2015-10-20 16:24:47', '', 0, 'http://localhost/site1/?p=33', 0, 'post', '', 0),
(34, 1, '2015-09-14 16:18:58', '2015-09-14 16:18:58', '', 'how to earn money from adsense', '', 'inherit', 'open', 'open', '', 'how-to-earn-money-from-adsense', '', '', '2015-09-14 16:18:58', '2015-09-14 16:18:58', '', 33, 'http://localhost/site1/wp-content/uploads/2015/09/how-to-earn-money-from-adsense.png', 0, 'attachment', 'image/png', 0),
(38, 1, '2015-10-12 17:52:28', '2015-10-12 17:52:28', '<a href="http://localhost/site1/wp-content/uploads/2015/09/how-to-earn-money-from-adsense.png"><img src="http://localhost/site1/wp-content/uploads/2015/09/how-to-earn-money-from-adsense-300x162.png" alt="how to earn money from adsense" width="300" height="162" class="alignnone size-medium wp-image-34" /></a>\r\n\r\n<a href="http://localhost/site1/wp-content/uploads/2015/09/how-to-link-google-adsense-with-youtube-channel1.png"><img src="http://localhost/site1/wp-content/uploads/2015/09/how-to-link-google-adsense-with-youtube-channel1-300x162.png" alt="how to link google adsense with youtube channel" width="300" height="162" class="alignnone size-medium wp-image-32" /></a>\r\n\r\n<a href="http://localhost/site1/wp-content/uploads/2015/09/how-to-link-google-adsense-with-youtube-channel.png"><img src="http://localhost/site1/wp-content/uploads/2015/09/how-to-link-google-adsense-with-youtube-channel-300x162.png" alt="how to link google adsense with youtube channel" width="300" height="162" class="alignnone size-medium wp-image-31" /></a>\r\n\r\n<a href="http://localhost/site1/wp-content/uploads/2015/09/how-to-create-adsense-account.png"><img src="http://localhost/site1/wp-content/uploads/2015/09/how-to-create-adsense-account-300x162.png" alt="how to create adsense account" width="300" height="162" class="alignnone size-medium wp-image-28" /></a>\r\n\r\n<a href="http://localhost/site1/wp-content/uploads/2015/09/how-to-setup-google-ads-for-your-blog.png"><img src="http://localhost/site1/wp-content/uploads/2015/09/how-to-setup-google-ads-for-your-blog-300x162.png" alt="how to setup google ads for your blog" width="300" height="162" class="alignnone size-medium wp-image-25" /></a>\r\n\r\n<a href="http://localhost/site1/wp-content/uploads/2015/09/google-adsense-thumbnail.png"><img src="http://localhost/site1/wp-content/uploads/2015/09/google-adsense-thumbnail-300x162.png" alt="google adsense thumbnail" width="300" height="162" class="alignnone size-medium wp-image-20" /></a>', '', '', 'publish', 'open', 'open', '', '38', '', '', '2015-10-12 17:52:28', '2015-10-12 17:52:28', '', 0, 'http://localhost/site1/?post_type=portfolio&#038;p=38', 0, 'portfolio', '', 0),
(41, 1, '2015-10-12 18:36:23', '2015-10-12 18:36:23', '', 'Media', '', 'private', 'closed', 'closed', '', 'media', '', '', '2015-10-12 18:36:23', '2015-10-12 18:36:23', '', 0, 'http://localhost/site1/?option-tree=media', 0, 'option-tree', '', 0),
(43, 1, '2015-10-12 18:47:39', '2015-10-12 18:47:39', 'uuiio', 't1', '', 'publish', 'closed', 'closed', '', 't1', '', '', '2015-10-12 18:47:39', '2015-10-12 18:47:39', '', 0, 'http://localhost/site1/?post_type=portfolio&#038;p=43', 0, 'portfolio', '', 0),
(44, 1, '2015-10-12 18:46:19', '2015-10-12 18:46:19', '', 'bear_cartoon_1', '', 'inherit', 'open', 'open', '', 'bear_cartoon_1', '', '', '2015-10-12 18:46:19', '2015-10-12 18:46:19', '', 43, 'http://localhost/site1/wp-content/uploads/2015/10/bear_cartoon_1.png', 0, 'attachment', 'image/png', 0),
(46, 1, '2015-10-12 18:48:38', '2015-10-12 18:48:38', '', 'Home', '', 'publish', 'open', 'open', '', 'home', '', '', '2015-10-21 16:12:30', '2015-10-21 16:12:30', '', 0, 'http://localhost/site1/?p=46', 1, 'nav_menu_item', '', 0),
(47, 1, '2015-10-12 18:48:38', '2015-10-12 18:48:38', ' ', '', '', 'publish', 'open', 'open', '', '47', '', '', '2015-10-21 16:12:30', '2015-10-21 16:12:30', '', 0, 'http://localhost/site1/?p=47', 2, 'nav_menu_item', '', 0),
(51, 1, '2015-10-18 06:27:18', '2015-10-18 06:27:18', 'a:9:{i:0;a:3:{i:0;s:16:"Customer Support";i:1;d:8.199999999999999289457264239899814128875732421875;i:2;N;}i:1;a:3:{i:0;s:16:"Hosting Packages";i:1;d:8.5;i:2;N;}i:2;a:3:{i:0;s:22:"Control Panel features";i:1;d:8.300000000000000710542735760100185871124267578125;i:2;N;}i:3;a:3:{i:0;s:5:"Price";i:1;d:9.0999999999999996447286321199499070644378662109375;i:2;N;}i:4;a:3:{i:0;s:19:"Money Back Gauantee";i:1;d:8.0999999999999996447286321199499070644378662109375;i:2;N;}i:5;a:3:{i:0;s:8:"Security";i:1;d:8.199999999999999289457264239899814128875732421875;i:2;N;}i:6;a:3:{i:0;s:9:"Bandwidth";i:1;d:9.300000000000000710542735760100185871124267578125;i:2;N;}i:7;a:3:{i:0;s:11:"Performance";i:1;d:7.9000000000000003552713678800500929355621337890625;i:2;N;}i:8;a:3:{i:0;s:7:"Overall";i:1;N;i:2;d:8.449999999999999289457264239899814128875732421875;}}', 'Visualization', '', 'publish', 'open', 'open', '', 'visualization', '', '', '2015-10-18 06:27:18', '2015-10-18 06:27:18', '', 0, 'http://localhost/site1/?post_type=visualizer&#038;p=51', 0, 'visualizer', '', 0),
(61, 1, '2015-10-18 06:53:40', '2015-10-18 06:53:40', '', 'list-on-clipboard-with-green-checks-hi', '', 'inherit', 'open', 'open', '', 'list-on-clipboard-with-green-checks-hi', '', '', '2015-10-18 06:53:40', '2015-10-18 06:53:40', '', 33, 'http://localhost/site1/wp-content/uploads/2015/09/list-on-clipboard-with-green-checks-hi.png', 0, 'attachment', 'image/png', 0),
(68, 1, '2015-10-18 10:32:50', '2015-10-18 10:32:50', 'a:21:{i:0;a:3:{i:0;s:9:"Hostgator";i:1;N;i:2;d:8.449999999999999289457264239899814128875732421875;}i:1;a:3:{i:0;s:8:"Bluehost";i:1;d:8.4900000000000002131628207280300557613372802734375;i:2;N;}i:2;a:3:{i:0;s:9:"Dreamhost";i:1;d:8.42999999999999971578290569595992565155029296875;i:2;N;}i:3;a:3:{i:0;s:6:"Arvixe";i:1;d:9.0999999999999996447286321199499070644378662109375;i:2;N;}i:4;a:3:{i:0;s:8:"Justhost";i:1;d:8.199999999999999289457264239899814128875732421875;i:2;N;}i:5;a:3:{i:0;s:5:"ipage";i:1;d:9.0999999999999996447286321199499070644378662109375;i:2;N;}i:6;a:3:{i:0;s:8:"inmotion";i:1;d:9.199999999999999289457264239899814128875732421875;i:2;N;}i:7;a:3:{i:0;s:5:"ehost";i:1;d:8.0999999999999996447286321199499070644378662109375;i:2;N;}i:8;a:3:{i:0;s:9:"hostclear";i:1;d:7.79999999999999982236431605997495353221893310546875;i:2;N;}i:9;a:3:{i:0;s:9:"idea host";i:1;d:7.9000000000000003552713678800500929355621337890625;i:2;N;}i:10;a:3:{i:0;s:12:"host monster";i:1;d:6.9000000000000003552713678800500929355621337890625;i:2;N;}i:11;a:3:{i:0;s:11:"start logic";i:1;d:8;i:2;N;}i:12;a:3:{i:0;s:9:"pure host";i:1;d:7.5999999999999996447286321199499070644378662109375;i:2;N;}i:13;a:3:{i:0;s:6:"ipower";i:1;d:8.199999999999999289457264239899814128875732421875;i:2;N;}i:14;a:3:{i:0;s:10:"siteground";i:1;d:9.5;i:2;N;}i:15;a:3:{i:0;s:6:"pagely";i:1;d:8.0999999999999996447286321199499070644378662109375;i:2;N;}i:16;a:3:{i:0;s:12:"media temple";i:1;d:8.199999999999999289457264239899814128875732421875;i:2;N;}i:17;a:3:{i:0;s:15:"web hosting hub";i:1;d:9;i:2;N;}i:18;a:3:{i:0;s:8:"go daddy";i:1;d:7.9000000000000003552713678800500929355621337890625;i:2;N;}i:19;a:3:{i:0;s:8:"wpengine";i:1;d:9;i:2;N;}i:20;a:3:{i:0;s:6:"site 5";i:1;d:8.0999999999999996447286321199499070644378662109375;i:2;N;}}', 'Visualization', '', 'publish', 'open', 'open', '', 'visualization-2', '', '', '2015-10-18 10:32:50', '2015-10-18 10:32:50', '', 0, 'http://localhost/site1/?post_type=visualizer&#038;p=68', 0, 'visualizer', '', 0),
(96, 1, '2015-10-21 16:08:56', '2015-10-21 16:08:56', '', 'Register', '', 'publish', 'open', 'open', '', 'register', '', '', '2015-10-21 16:12:30', '2015-10-21 16:12:30', '', 0, 'http://localhost/site1/?p=96', 4, 'nav_menu_item', '', 0),
(97, 1, '2015-10-21 16:12:30', '2015-10-21 16:12:30', '', 'Log In|Log Out', '', 'publish', 'open', 'open', '', 'log-inlog-out', '', '', '2015-10-21 16:12:30', '2015-10-21 16:12:30', '', 0, 'http://localhost/site1/?p=97', 3, 'nav_menu_item', '', 0),
(115, 1, '2015-10-30 14:46:52', '2015-10-30 14:46:52', '<form action="" method="post" name="hosting_form"><select name="product">\r\n<option value="hostgator">hostgator</option>\r\n<option value="dreamhost">dreamhost</option>\r\n<option value="justhost">justhost</option>\r\n<option value="bluehost">bluehost</option>\r\n</select>\r\n\r\n<input max="10" min="1" name="cust_support" step="0.1" type="number" />\r\n<input max="10" min="1" name="plans_pkg" step="0.1" type="number" />\r\n<input max="10" min="1" name="cpanel_feature" step="0.1" type="number" />\r\n<input max="10" min="1" name="price" step="0.1" type="number" />\r\n<input max="10" min="1" name="mbg" step="0.1" type="number" />\r\n<input max="10" min="1" name="security" step="0.1" type="number" />\r\n<input max="10" min="1" name="bandwidth" step="0.1" type="number" />\r\n<input max="10" min="1" name="performance" step="0.1" type="number" />\r\n<input name="rate_host" type="submit" value="rate_host" />\r\n\r\n</form>', 'Dashboard', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-10-30 14:46:52', '2015-10-30 14:46:52', '', 2, 'http://localhost/site1/?p=115', 0, 'revision', '', 0),
(116, 1, '2015-10-30 14:57:33', '2015-10-30 14:57:33', '<form action="" method="post" name="hosting_form"><select name="product_name">\r\n<option value="hostgator">hostgator</option>\r\n<option value="dreamhost">dreamhost</option>\r\n<option value="justhost">justhost</option>\r\n<option value="bluehost">bluehost</option>\r\n</select>\r\n\r\n<input max="10" min="1" name="cust_support" step="0.1" type="number" />\r\n<input max="10" min="1" name="plans_pkg" step="0.1" type="number" />\r\n<input max="10" min="1" name="cpanel_feature" step="0.1" type="number" />\r\n<input max="10" min="1" name="price" step="0.1" type="number" />\r\n<input max="10" min="1" name="mbg" step="0.1" type="number" />\r\n<input max="10" min="1" name="security" step="0.1" type="number" />\r\n<input max="10" min="1" name="bandwidth" step="0.1" type="number" />\r\n<input max="10" min="1" name="performance" step="0.1" type="number" />\r\n<input name="rate_host" type="submit" value="rate_host" />\r\n\r\n</form>', 'Dashboard', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-10-30 14:57:33', '2015-10-30 14:57:33', '', 2, 'http://localhost/site1/?p=116', 0, 'revision', '', 0),
(117, 1, '2015-10-30 18:52:46', '2015-10-30 18:52:46', '<div class="wrap">\r\n<form action="" method="post" name="hosting_form"><select name="product_name">\r\n<option value="hostgator">hostgator</option>\r\n<option value="dreamhost">dreamhost</option>\r\n<option value="justhost">justhost</option>\r\n<option value="bluehost">bluehost</option>\r\n</select>\r\n\r\n<input max="10" min="1" name="cust_support" step="0.1" type="number" />\r\n<input max="10" min="1" name="plans_pkg" step="0.1" type="number" />\r\n<input max="10" min="1" name="cpanel_feature" step="0.1" type="number" />\r\n<input max="10" min="1" name="price" step="0.1" type="number" />\r\n<input max="10" min="1" name="mbg" step="0.1" type="number" />\r\n<input max="10" min="1" name="security" step="0.1" type="number" />\r\n<input max="10" min="1" name="bandwidth" step="0.1" type="number" />\r\n<input max="10" min="1" name="performance" step="0.1" type="number" />\r\n<input name="rate_host" type="submit" value="rate_host" />\r\n\r\n</form></div>', 'Dashboard', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-10-30 18:52:46', '2015-10-30 18:52:46', '', 2, 'http://localhost/site1/?p=117', 0, 'revision', '', 0),
(118, 1, '2015-10-30 18:53:49', '2015-10-30 18:53:49', '<div class="wrap">\r\n<form action="" method="post" name="hosting_form"><select name="product_name">\r\n<option value="hostgator">hostgator</option>\r\n<option value="dreamhost">dreamhost</option>\r\n<option value="justhost">justhost</option>\r\n<option value="bluehost">bluehost</option>\r\n</select>\r\n\r\n<input max="10" min="1" name="cust_support" step="0.1" type="number" />\r\n<input max="10" min="1" name="plans_pkg" step="0.1" type="number" />\r\n<input max="10" min="1" name="cpanel_feature" step="0.1" type="number" />\r\n<input max="10" min="1" name="price" step="0.1" type="number" />\r\n<input max="10" min="1" name="mbg" step="0.1" type="number" />\r\n<input max="10" min="1" name="security" step="0.1" type="number" />\r\n<input max="10" min="1" name="bandwidth" step="0.1" type="number" />\r\n<input max="10" min="1" name="performance" step="0.1" type="number" />\r\n<input name="rate_host" type="submit" value="rate_host" />\r\n\r\n</form>\r\n</div>', 'Dashboard', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-10-30 18:53:49', '2015-10-30 18:53:49', '', 2, 'http://localhost/site1/?p=118', 0, 'revision', '', 0),
(120, 1, '2015-10-30 19:02:16', '2015-10-30 19:02:16', '<form action="dashboard.php" method="post" name="rating_form">\r\n<input name="insert_rating" type="submit" value="Submit Rating"/>\r\n</form>\r\n\r\n<div class="wrap">\r\n<form action="" method="post" name="hosting_form"><select name="product_name">\r\n<option value="hostgator">hostgator</option>\r\n<option value="dreamhost">dreamhost</option>\r\n<option value="justhost">justhost</option>\r\n<option value="bluehost">bluehost</option>\r\n</select>\r\n\r\n<input max="10" min="1" name="cust_support" step="0.1" type="number" />\r\n<input max="10" min="1" name="plans_pkg" step="0.1" type="number" />\r\n<input max="10" min="1" name="cpanel_feature" step="0.1" type="number" />\r\n<input max="10" min="1" name="price" step="0.1" type="number" />\r\n<input max="10" min="1" name="mbg" step="0.1" type="number" />\r\n<input max="10" min="1" name="security" step="0.1" type="number" />\r\n<input max="10" min="1" name="bandwidth" step="0.1" type="number" />\r\n<input max="10" min="1" name="performance" step="0.1" type="number" />\r\n<input name="rate_host" type="submit" value="rate_host" />\r\n\r\n</form>\r\n</div>', 'Dashboard', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-10-30 19:02:16', '2015-10-30 19:02:16', '', 2, 'http://localhost/site1/?p=120', 0, 'revision', '', 0),
(121, 1, '2015-10-30 19:21:54', '2015-10-30 19:21:54', 'This is a preview of how this form will appear on your website', 'ninja_forms_preview_page', '', 'trash', 'open', 'open', '', 'ninja_forms_preview_page', '', '', '2015-10-31 15:38:02', '2015-10-31 15:38:02', '', 0, 'http://localhost/site1/?page_id=121', 0, 'page', '', 0),
(122, 1, '2015-10-30 20:09:02', '2015-10-30 20:09:02', '', 'Caldera Forms Preview', '', 'draft', 'closed', 'closed', '', 'caldera_forms_preview', '', '', '2015-11-08 10:33:43', '2015-11-08 10:33:43', '', 0, 'http://localhost/site1/?page_id=122', 0, 'page', '', 0),
(123, 1, '2015-10-31 05:34:16', '2015-10-31 05:34:16', '[caldera_form id="CF5633cb3b91655"]\r\n[wpdatatable id=2]', 'Dashboard', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-10-31 05:34:16', '2015-10-31 05:34:16', '', 2, 'http://localhost/site1/?p=123', 0, 'revision', '', 0),
(124, 1, '2015-10-31 07:25:44', '2015-10-31 07:25:44', '[caldera_form id="CF5633cb3b91655"]\r\n\r\n[wpdatatable id=1]', 'Dashboard', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-10-31 07:25:44', '2015-10-31 07:25:44', '', 2, 'http://localhost/site1/?p=124', 0, 'revision', '', 0),
(125, 1, '2015-10-31 15:38:01', '2015-10-31 15:38:01', '', 'Caldera Forms Preview', '', 'inherit', 'open', 'open', '', '122-revision-v1', '', '', '2015-10-31 15:38:01', '2015-10-31 15:38:01', '', 122, 'http://localhost/site1/?p=125', 0, 'revision', '', 0),
(126, 1, '2015-10-31 15:38:02', '2015-10-31 15:38:02', 'This is a preview of how this form will appear on your website', 'ninja_forms_preview_page', '', 'inherit', 'open', 'open', '', '121-revision-v1', '', '', '2015-10-31 15:38:02', '2015-10-31 15:38:02', '', 121, 'http://localhost/site1/?p=126', 0, 'revision', '', 0),
(127, 1, '2015-10-31 15:39:00', '2015-10-31 15:39:00', '<div class="wrap">\r\n<form action="dashboard.php" method="post" name="hosting_form"><select name="product_name">\r\n<option value="hostgator">hostgator</option>\r\n<option value="dreamhost">dreamhost</option>\r\n<option value="justhost">justhost</option>\r\n<option value="bluehost">bluehost</option>\r\n</select>\r\n\r\n<input max="10" min="1" name="cust_support" step="0.1" type="number" />\r\n<input max="10" min="1" name="plans_pkg" step="0.1" type="number" />\r\n<input max="10" min="1" name="cpanel_feature" step="0.1" type="number" />\r\n<input max="10" min="1" name="price" step="0.1" type="number" />\r\n<input max="10" min="1" name="mbg" step="0.1" type="number" />\r\n<input max="10" min="1" name="security" step="0.1" type="number" />\r\n<input max="10" min="1" name="bandwidth" step="0.1" type="number" />\r\n<input max="10" min="1" name="performance" step="0.1" type="number" />\r\n<input name="rate_host" type="submit" value="rate_host" />\r\n\r\n</form>\r\n</div>', 'Dashboard', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-10-31 15:39:00', '2015-10-31 15:39:00', '', 2, 'http://localhost/site1/?p=127', 0, 'revision', '', 0),
(128, 1, '2015-10-31 15:54:25', '2015-10-31 15:54:25', '<div class="wrap">\r\n<form action="" method="post" name="hosting_form"><select name="product_name">\r\n<option value="hostgator">hostgator</option>\r\n<option value="dreamhost">dreamhost</option>\r\n<option value="justhost">justhost</option>\r\n<option value="bluehost">bluehost</option>\r\n</select>\r\n\r\n<input max="10" min="1" name="cust_support" step="0.1" type="number" />\r\n<input max="10" min="1" name="plans_pkg" step="0.1" type="number" />\r\n<input max="10" min="1" name="cpanel_feature" step="0.1" type="number" />\r\n<input max="10" min="1" name="price" step="0.1" type="number" />\r\n<input max="10" min="1" name="mbg" step="0.1" type="number" />\r\n<input max="10" min="1" name="security" step="0.1" type="number" />\r\n<input max="10" min="1" name="bandwidth" step="0.1" type="number" />\r\n<input max="10" min="1" name="performance" step="0.1" type="number" />\r\n<input name="rate_host" type="submit" value="rate_host" />\r\n\r\n</form>\r\n</div>', 'Dashboard', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-10-31 15:54:25', '2015-10-31 15:54:25', '', 2, 'http://localhost/site1/?p=128', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(129, 1, '2015-10-31 16:35:12', '2015-10-31 16:35:12', '<div class="wrap">\r\n<form action="" method="post" name="hosting_form"><select name="product_name">\r\n<option value="hostgator">hostgator</option>\r\n<option value="dreamhost">dreamhost</option>\r\n<option value="justhost">justhost</option>\r\n<option value="bluehost">bluehost</option>\r\n</select>\r\n\r\n<input max="10" min="1" name="cust_support" step="0.1" type="number" />\r\n<input max="10" min="1" name="plans_pkg" step="0.1" type="number" />\r\n<input max="10" min="1" name="cpanel_feature" step="0.1" type="number" />\r\n<input max="10" min="1" name="price" step="0.1" type="number" />\r\n<input max="10" min="1" name="mbg" step="0.1" type="number" />\r\n<input max="10" min="1" name="security" step="0.1" type="number" />\r\n<input max="10" min="1" name="bandwidth" step="0.1" type="number" />\r\n<input max="10" min="1" name="performance" step="0.1" type="number" />\r\n<input name="rate_host" type="submit" value="rate_host" />\r\n\r\n</form>\r\n</div>\r\n\r\n<form action="" method="post" name="rating_form">\r\n<input name="insert_rating" type="submit" value="Submit Rating"/>\r\n</form>', 'Dashboard', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-10-31 16:35:12', '2015-10-31 16:35:12', '', 2, 'http://localhost/site1/?p=129', 0, 'revision', '', 0),
(130, 1, '2015-10-31 16:52:34', '2015-10-31 16:52:34', '<div class="wrap">\r\n<form action="" method="post" name="hosting_form"><select name="product_name">\r\n<option value="hostgator">hostgator</option>\r\n<option value="dreamhost">dreamhost</option>\r\n<option value="justhost">justhost</option>\r\n<option value="bluehost">bluehost</option>\r\n</select>\r\n\r\n<input max="10" min="1" name="cust_support" step="0.1" type="number" />\r\n<input max="10" min="1" name="plans_pkg" step="0.1" type="number" />\r\n<input max="10" min="1" name="cpanel_feature" step="0.1" type="number" />\r\n<input max="10" min="1" name="price" step="0.1" type="number" />\r\n<input max="10" min="1" name="mbg" step="0.1" type="number" />\r\n<input max="10" min="1" name="security" step="0.1" type="number" />\r\n<input max="10" min="1" name="bandwidth" step="0.1" type="number" />\r\n<input max="10" min="1" name="performance" step="0.1" type="number" />\r\n<input name="rate_host" type="submit" value="rate_host" />\r\n\r\n</form>\r\n</div>\r\n\r\n<form action="" method="post" name="rating_form">\r\n<input name="display_rating" type="submit" value="Display Rating"/>\r\n</form>', 'Dashboard', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-10-31 16:52:34', '2015-10-31 16:52:34', '', 2, 'http://localhost/site1/?p=130', 0, 'revision', '', 0),
(131, 1, '2015-11-01 06:11:25', '2015-11-01 06:11:25', '<div class="wrap">\r\n<form action="customfunction.php" method="post" name="hosting_form"><select name="product_name">\r\n<option value="hostgator">hostgator</option>\r\n<option value="dreamhost">dreamhost</option>\r\n<option value="justhost">justhost</option>\r\n<option value="bluehost">bluehost</option>\r\n</select>\r\n\r\n<input max="10" min="1" name="cust_support" step="0.1" type="number" />\r\n<input max="10" min="1" name="plans_pkg" step="0.1" type="number" />\r\n<input max="10" min="1" name="cpanel_feature" step="0.1" type="number" />\r\n<input max="10" min="1" name="price" step="0.1" type="number" />\r\n<input max="10" min="1" name="mbg" step="0.1" type="number" />\r\n<input max="10" min="1" name="security" step="0.1" type="number" />\r\n<input max="10" min="1" name="bandwidth" step="0.1" type="number" />\r\n<input max="10" min="1" name="performance" step="0.1" type="number" />\r\n<input name="rate_host" type="submit" value="rate_host" />\r\n\r\n</form>\r\n</div>\r\n\r\n<form action="" method="post" name="rating_form">\r\n<input name="display_rating" type="submit" value="Display Rating"/>\r\n</form>', 'Dashboard', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-11-01 06:11:25', '2015-11-01 06:11:25', '', 2, 'http://localhost/site1/?p=131', 0, 'revision', '', 0),
(132, 1, '2015-11-01 06:11:51', '2015-11-01 06:11:51', '<div class="wrap">\r\n<form action="customfunction.php" method="post" name="hosting_form"><select name="product_name">\r\n<option value="hostgator">hostgator</option>\r\n<option value="dreamhost">dreamhost</option>\r\n<option value="justhost">justhost</option>\r\n<option value="bluehost">bluehost</option>\r\n</select>\r\n\r\n<input max="10" min="1" name="cust_support" step="0.1" type="number" />\r\n<input max="10" min="1" name="plans_pkg" step="0.1" type="number" />\r\n<input max="10" min="1" name="cpanel_feature" step="0.1" type="number" />\r\n<input max="10" min="1" name="price" step="0.1" type="number" />\r\n<input max="10" min="1" name="mbg" step="0.1" type="number" />\r\n<input max="10" min="1" name="security" step="0.1" type="number" />\r\n<input max="10" min="1" name="bandwidth" step="0.1" type="number" />\r\n<input max="10" min="1" name="performance" step="0.1" type="number" />\r\n<input name="rate_host" type="submit" value="rate_host" />\r\n\r\n</form>\r\n</div>\r\n\r\n<form action="customfunction.php" method="post" name="rating_form">\r\n<input name="display_rating" type="submit" value="Display Rating"/>\r\n</form>', 'Dashboard', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-11-01 06:11:51', '2015-11-01 06:11:51', '', 2, 'http://localhost/site1/?p=132', 0, 'revision', '', 0),
(133, 1, '2015-11-01 06:13:52', '2015-11-01 06:13:52', '<div class="wrap">\r\n<form action="/wp-content/themes/origin/customfunction.php" method="post" name="hosting_form"><select name="product_name">\r\n<option value="hostgator">hostgator</option>\r\n<option value="dreamhost">dreamhost</option>\r\n<option value="justhost">justhost</option>\r\n<option value="bluehost">bluehost</option>\r\n</select>\r\n\r\n<input max="10" min="1" name="cust_support" step="0.1" type="number" />\r\n<input max="10" min="1" name="plans_pkg" step="0.1" type="number" />\r\n<input max="10" min="1" name="cpanel_feature" step="0.1" type="number" />\r\n<input max="10" min="1" name="price" step="0.1" type="number" />\r\n<input max="10" min="1" name="mbg" step="0.1" type="number" />\r\n<input max="10" min="1" name="security" step="0.1" type="number" />\r\n<input max="10" min="1" name="bandwidth" step="0.1" type="number" />\r\n<input max="10" min="1" name="performance" step="0.1" type="number" />\r\n<input name="rate_host" type="submit" value="rate_host" />\r\n\r\n</form>\r\n</div>\r\n\r\n<form action="/wp-content/themes/origin/customfunction.php" method="post" name="rating_form">\r\n<input name="display_rating" type="submit" value="Display Rating"/>\r\n</form>', 'Dashboard', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-11-01 06:13:52', '2015-11-01 06:13:52', '', 2, 'http://localhost/site1/?p=133', 0, 'revision', '', 0),
(134, 1, '2015-11-01 06:14:16', '2015-11-01 06:14:16', '<div class="wrap">\r\n<form action="site1/wp-content/themes/origin/customfunction.php" method="post" name="hosting_form"><select name="product_name">\r\n<option value="hostgator">hostgator</option>\r\n<option value="dreamhost">dreamhost</option>\r\n<option value="justhost">justhost</option>\r\n<option value="bluehost">bluehost</option>\r\n</select>\r\n\r\n<input max="10" min="1" name="cust_support" step="0.1" type="number" />\r\n<input max="10" min="1" name="plans_pkg" step="0.1" type="number" />\r\n<input max="10" min="1" name="cpanel_feature" step="0.1" type="number" />\r\n<input max="10" min="1" name="price" step="0.1" type="number" />\r\n<input max="10" min="1" name="mbg" step="0.1" type="number" />\r\n<input max="10" min="1" name="security" step="0.1" type="number" />\r\n<input max="10" min="1" name="bandwidth" step="0.1" type="number" />\r\n<input max="10" min="1" name="performance" step="0.1" type="number" />\r\n<input name="rate_host" type="submit" value="rate_host" />\r\n\r\n</form>\r\n</div>\r\n\r\n<form action="site1/wp-content/themes/origin/customfunction.php" method="post" name="rating_form">\r\n<input name="display_rating" type="submit" value="Display Rating"/>\r\n</form>', 'Dashboard', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-11-01 06:14:16', '2015-11-01 06:14:16', '', 2, 'http://localhost/site1/?p=134', 0, 'revision', '', 0),
(135, 1, '2015-11-01 06:38:02', '2015-11-01 06:38:02', '<div class="wrap">\r\n<form action="wp-content/themes/origin/customfunction.php" method="post" name="hosting_form"><select name="product_name">\r\n<option value="hostgator">hostgator</option>\r\n<option value="dreamhost">dreamhost</option>\r\n<option value="justhost">justhost</option>\r\n<option value="bluehost">bluehost</option>\r\n</select>\r\n\r\n<input max="10" min="1" name="cust_support" step="0.1" type="number" />\r\n<input max="10" min="1" name="plans_pkg" step="0.1" type="number" />\r\n<input max="10" min="1" name="cpanel_feature" step="0.1" type="number" />\r\n<input max="10" min="1" name="price" step="0.1" type="number" />\r\n<input max="10" min="1" name="mbg" step="0.1" type="number" />\r\n<input max="10" min="1" name="security" step="0.1" type="number" />\r\n<input max="10" min="1" name="bandwidth" step="0.1" type="number" />\r\n<input max="10" min="1" name="performance" step="0.1" type="number" />\r\n<input name="rate_host" type="submit" value="rate_host" />\r\n\r\n</form>\r\n</div>\r\n\r\n<form action="site1/wp-content/themes/origin/customfunction.php" method="post" name="rating_form">\r\n<input name="display_rating" type="submit" value="Display Rating"/>\r\n</form>', 'Dashboard', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-11-01 06:38:02', '2015-11-01 06:38:02', '', 2, 'http://localhost/site1/?p=135', 0, 'revision', '', 0),
(136, 1, '2015-11-01 06:39:39', '2015-11-01 06:39:39', '<div class="wrap">\r\n<form action="wp-content/themes/origin/customfunction.php" method="post" name="hosting_form"><select name="product_name">\r\n<option value="hostgator">hostgator</option>\r\n<option value="dreamhost">dreamhost</option>\r\n<option value="justhost">justhost</option>\r\n<option value="bluehost">bluehost</option>\r\n</select>\r\n\r\n<input max="10" min="1" name="cust_support" step="0.1" type="number" />\r\n<input max="10" min="1" name="plans_pkg" step="0.1" type="number" />\r\n<input max="10" min="1" name="cpanel_feature" step="0.1" type="number" />\r\n<input max="10" min="1" name="price" step="0.1" type="number" />\r\n<input max="10" min="1" name="mbg" step="0.1" type="number" />\r\n<input max="10" min="1" name="security" step="0.1" type="number" />\r\n<input max="10" min="1" name="bandwidth" step="0.1" type="number" />\r\n<input max="10" min="1" name="performance" step="0.1" type="number" />\r\n<input name="rate_host" type="submit" value="rate_host" />\r\n\r\n</form>\r\n</div>\r\n\r\n<form action="wp-content/themes/origin/customfunction.php" method="post" name="rating_form">\r\n<input name="display_rating" type="submit" value="Display Rating"/>\r\n</form>', 'Dashboard', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-11-01 06:39:39', '2015-11-01 06:39:39', '', 2, 'http://localhost/site1/?p=136', 0, 'revision', '', 0),
(138, 1, '2015-11-01 10:07:23', '2015-11-01 10:07:23', '<div class="wrap">\r\n<form action="wp-content/themes/origin/customfunction.php" method="post" name="hosting_form"><select name="product_name">\r\n<option value="hostgator">hostgator</option>\r\n<option value="dreamhost">dreamhost</option>\r\n<option value="justhost">justhost</option>\r\n<option value="bluehost">bluehost</option>\r\n</select>\r\n\r\n<input max="10" min="1" name="cust_support" step="0.1" type="number" />\r\n<input max="10" min="1" name="plans_pkg" step="0.1" type="number" />\r\n<input max="10" min="1" name="cpanel_feature" step="0.1" type="number" />\r\n<input max="10" min="1" name="price" step="0.1" type="number" />\r\n<input max="10" min="1" name="mbg" step="0.1" type="number" />\r\n<input max="10" min="1" name="security" step="0.1" type="number" />\r\n<input max="10" min="1" name="bandwidth" step="0.1" type="number" />\r\n<input max="10" min="1" name="performance" step="0.1" type="number" />\r\n<input name="rate_host" type="submit" value="rate_host" />\r\n\r\n</form>\r\n</div>\r\n\r\n<form action="wp-content/themes/origin/customfunction.php" method="post" name="rating_form">\r\n<input name="display_rating" type="submit" value="Display Rating"/>\r\n</form>\r\n\r\n[contact-form-7 id="137" title="Contact form 1"]', 'Dashboard', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-11-01 10:07:23', '2015-11-01 10:07:23', '', 2, 'http://localhost/site1/?p=138', 0, 'revision', '', 0),
(140, 1, '2015-11-01 11:10:11', '2015-11-01 11:10:11', '<div class="wrap">\r\n<form action="wp-content/themes/origin/customfunction.php" method="post" name="hosting_form"><select name="product_name">\r\n<option value="hostgator">hostgator</option>\r\n<option value="dreamhost">dreamhost</option>\r\n<option value="justhost">justhost</option>\r\n<option value="bluehost">bluehost</option>\r\n</select>\r\n\r\n<input max="10" min="1" name="cust_support" step="0.1" type="number" />\r\n<input max="10" min="1" name="plans_pkg" step="0.1" type="number" />\r\n<input max="10" min="1" name="cpanel_feature" step="0.1" type="number" />\r\n<input max="10" min="1" name="price" step="0.1" type="number" />\r\n<input max="10" min="1" name="mbg" step="0.1" type="number" />\r\n<input max="10" min="1" name="security" step="0.1" type="number" />\r\n<input max="10" min="1" name="bandwidth" step="0.1" type="number" />\r\n<input max="10" min="1" name="performance" step="0.1" type="number" />\r\n<input name="rate_host" type="submit" value="rate_host" />\r\n\r\n</form>\r\n</div>\r\n\r\n[contact-form-7 id="139" title="Untitled"]', 'Dashboard', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-11-01 11:10:11', '2015-11-01 11:10:11', '', 2, 'http://localhost/site1/?p=140', 0, 'revision', '', 0),
(141, 1, '2015-11-04 17:07:16', '2015-11-04 17:07:16', '[caldera_form id="CF5633cb3b91655"]', 'Dashboard', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-11-04 17:07:16', '2015-11-04 17:07:16', '', 2, 'http://localhost/site1/?p=141', 0, 'revision', '', 0),
(142, 1, '2015-11-05 17:43:04', '2015-11-05 17:43:04', '[caldera_form id="CF563b90e978388"]', 'Dashboard', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-11-05 17:43:04', '2015-11-05 17:43:04', '', 2, 'http://localhost/site1/?p=142', 0, 'revision', '', 0),
(145, 1, '2015-11-07 04:16:01', '2015-11-07 04:16:01', '[caldera_form id="CF5633cb3b91655"]', 'Dashboard', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-11-07 04:16:01', '2015-11-07 04:16:01', '', 2, 'http://localhost/site1/?p=145', 0, 'revision', '', 0),
(146, 1, '2015-11-14 05:18:35', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-11-14 05:18:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/site1/?p=146', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Menu 1', 'menu-1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(4, 1, 0),
(21, 1, 0),
(24, 1, 0),
(29, 1, 0),
(33, 1, 0),
(46, 2, 0),
(47, 2, 0),
(96, 2, 0),
(97, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 5),
(2, 2, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=91 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'asksidd'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets,wp410_dfw,visualizer'),
(13, 1, 'show_welcome_panel', '0'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '146'),
(17, 1, 'wp_user-settings', 'editor=html&libraryContent=browse&hidetb=1'),
(18, 1, 'wp_user-settings-time', '1445873549'),
(19, 1, 'closedpostboxes_post', 'a:1:{i:0;s:11:"postexcerpt";}'),
(20, 1, 'metaboxhidden_post', 'a:5:{i:0;s:12:"revisionsdiv";i:1;s:13:"trackbacksdiv";i:2;s:16:"commentstatusdiv";i:3;s:7:"slugdiv";i:4;s:9:"authordiv";}'),
(21, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:6:{i:0;s:8:"add-post";i:1;s:13:"add-portfolio";i:2;s:11:"add-gallery";i:3;s:12:"add-post_tag";i:4;s:22:"add-portfolio_category";i:5;s:20:"add-gallery_category";}'),
(23, 1, 'nav_menu_recently_edited', '2'),
(24, 1, 'wporg_favorites', ''),
(82, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(83, 1, 'metaboxhidden_dashboard', 'a:4:{i:0;s:19:"dashboard_right_now";i:1;s:18:"dashboard_activity";i:2;s:21:"dashboard_quick_press";i:3;s:17:"dashboard_primary";}'),
(86, 1, 'cf_pointer_add_element', ''),
(87, 1, 'closedpostboxes_page', 'a:0:{}'),
(88, 1, 'metaboxhidden_page', 'a:5:{i:0;s:12:"revisionsdiv";i:1;s:16:"commentstatusdiv";i:2;s:11:"commentsdiv";i:3;s:7:"slugdiv";i:4;s:9:"authordiv";}'),
(90, 1, 'session_tokens', 'a:3:{s:64:"404f19fc9f2ca1d26a82fc11f1b97426b31f364dbb8447443b1e1a51c28c33ed";a:4:{s:10:"expiration";i:1447562553;s:2:"ip";s:3:"::1";s:2:"ua";s:101:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36";s:5:"login";i:1447389753;}s:64:"b2f1c4e68b7e8ed576e7735c838ba692feb86eb3881f31025597f5525555ebce";a:4:{s:10:"expiration";i:1447651108;s:2:"ip";s:3:"::1";s:2:"ua";s:101:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36";s:5:"login";i:1447478308;}s:64:"2ed5d1fc050e27ee6b0d8a0867a15b1639e9ce1183a7d7814315c9f2c111f233";a:4:{s:10:"expiration";i:1447660873;s:2:"ip";s:3:"::1";s:2:"ua";s:101:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36";s:5:"login";i:1447488073;}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'asksidd', '$P$BeIMqgr9wIygtCE42rnVtgPA6AYdYA0', 'asksidd', 'ssethia88@gmail.com', '', '2015-09-13 04:21:54', '', 0, 'asksidd');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpdatacharts`
--

CREATE TABLE IF NOT EXISTS `wp_wpdatacharts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wpdatatable_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `engine` enum('google','highcharts') NOT NULL,
  `type` varchar(255) NOT NULL,
  `json_render_data` text NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
