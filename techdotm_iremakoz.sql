-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2019 at 05:01 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `techdotm_iremakoz`
--

-- --------------------------------------------------------

--
-- Table structure for table `irem_forgot_password`
--

CREATE TABLE `irem_forgot_password` (
  `irem_fp_index` varchar(255) NOT NULL,
  `irem_fp_username` varchar(100) NOT NULL,
  `irem_fp_accesskey` varchar(255) NOT NULL,
  `irem_fp_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irem_forgot_password`
--

INSERT INTO `irem_forgot_password` (`irem_fp_index`, `irem_fp_username`, `irem_fp_accesskey`, `irem_fp_date`) VALUES
('5cc1a3704698b', 'karthikeyan.alagirisamy@cognizant.com', '5cc1a37046998', '2019-04-25 02:04:20'),
('5cc1a4a6f3f99', 'karthikeyan.alagirisamy@cognizant.com', '5cc1a4a6f3fa5', '2019-04-25 02:04:30');

-- --------------------------------------------------------

--
-- Table structure for table `irem_notes`
--

CREATE TABLE `irem_notes` (
  `irem_notes_id` varchar(255) NOT NULL,
  `irem_notes_title` varchar(2000) NOT NULL,
  `irem_notes_tags` varchar(2000) NOT NULL,
  `irem_notes_description` longtext NOT NULL,
  `irem_notes_userid` varchar(255) NOT NULL,
  `irem_notes_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `irem_notes_lastupdated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `irem_notes_ismarkedfordeletion` varchar(5) NOT NULL DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irem_notes`
--

INSERT INTO `irem_notes` (`irem_notes_id`, `irem_notes_title`, `irem_notes_tags`, `irem_notes_description`, `irem_notes_userid`, `irem_notes_created`, `irem_notes_lastupdated`, `irem_notes_ismarkedfordeletion`) VALUES
('5cdc1b7ced314', '1111', '5cdc1b7ced1fd, 5cdc1b7ced265', '1111', '5cc1926523e9c', '2019-05-15 04:05:28', '2019-05-15 04:05:28', 'true'),
('5cdc1cd5caebb', '1113', '5cdc1b7ced265, 5cdc27f529f6c, 5cdc25b014d65', '1113', '5cc1926523e9c', '2019-05-15 04:05:13', '2019-05-16 02:05:08', 'true'),
('5cdeb5c670c4e', '1114', '5cdc27f529f72', '1114', '5cc1926523e9c', '2019-05-17 03:05:18', '2019-05-17 03:05:18', 'true'),
('5cdeb6cf0be73', '1116', '5cdc27f529f8d', '1116', '5cc1926523e9c', '2019-05-17 03:05:43', '2019-05-17 03:05:43', 'true'),
('5cdeb7c1c7285', '1117', '5cdc27f529f6f', '1117', '5cc1926523e9c', '2019-05-17 03:05:45', '2019-05-17 03:05:45', 'true'),
('5cdec241c5663', 'dfgdfg', '5cdc27f529f62', 'dgdf', '5cc1926523e9c', '2019-05-17 04:05:33', '2019-05-17 04:05:33', 'true'),
('5ce24ba0f1425', 'test', '5cdc27f529f6c', 'test', '5cc1926523e9c', '2019-05-20 08:05:28', '2019-05-20 08:05:28', 'true'),
('5ce2652ada6d8', 'sdfsdf', '5cdc27f529f62', 'sdfsdf', '5cc1926523e9c', '2019-05-20 10:05:26', '2019-05-20 10:05:26', 'true'),
('5ce2653abfe67', 'sdfsdfsd', '5cdc27f529f6f', 'sdfsdfs', '5cc1926523e9c', '2019-05-20 10:05:42', '2019-05-20 10:05:42', 'true'),
('5ce27961b9f84', 'asdasd', '5cdc1b7ced265, 5cdc27f529f6c', 'asdasd', '5cc1926523e9c', '2019-05-20 11:05:41', '2019-05-20 11:05:41', 'true'),
('5ce296608d5a3', 'automobile', '5cdc27f529f8d', 'some content about automobiles', '5cc1926523e9c', '2019-05-20 01:05:24', '2019-05-20 01:05:24', ''),
('5ce299696d9cd', 'Satyandran in Pothampatti edit', '5cdc280c97dc5', 'Remember something about this place', '5cc1926523e9c', '2019-05-20 02:05:21', '2019-05-22 04:05:14', ''),
('5ce29b1338151', 'Create a tag', '5ce29b1338072', 'Creating New tags', '5cc1926523e9c', '2019-05-20 02:05:27', '2019-05-20 02:05:27', ''),
('5ce55e8f4c251', 'Sample commute', '5cdc27f529f8d, 5ce55e8f4c145', 'Sample commute', '5cc1926523e9c', '2019-05-22 04:05:03', '2019-05-22 04:05:03', '');

-- --------------------------------------------------------

--
-- Table structure for table `irem_notes_categories`
--

CREATE TABLE `irem_notes_categories` (
  `irem_nc_categoryid` varchar(255) NOT NULL,
  `irem_nc_categoryname` varchar(255) NOT NULL,
  `irem_nc_ismarkedfordeletion` varchar(5) NOT NULL DEFAULT 'false',
  `irem_nc_iconname` varchar(100) NOT NULL,
  `irem_nc_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `irem_nc_lastupdated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `irem_nc_userid` varchar(255) NOT NULL,
  `irem_nc_groupname` varchar(255) NOT NULL,
  `irem_nc_categorydescription` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irem_notes_categories`
--

INSERT INTO `irem_notes_categories` (`irem_nc_categoryid`, `irem_nc_categoryname`, `irem_nc_ismarkedfordeletion`, `irem_nc_iconname`, `irem_nc_created`, `irem_nc_lastupdated`, `irem_nc_userid`, `irem_nc_groupname`, `irem_nc_categorydescription`) VALUES
('5cdc1b7ced1fd', 'Favorite', 'false', 'star', '2019-05-15 04:05:28', '2019-05-15 04:05:28', '5cc1926523e9c', 'General', ''),
('5cdc27f529f62', 'Remember', 'false', 'book', '2019-05-15 04:05:29', '2019-05-15 04:05:29', '5cc1926523e9c', 'General', ''),
('5cdc1b7ced265', 'Emergency', 'false', 'warning', '2019-05-15 04:05:30', '2019-05-15 04:05:30', '5cc1926523e9c', 'General', ''),
('5cdc27f529f6c', 'Emergency Remember', 'false', 'warning', '2019-05-15 04:05:31', '2019-05-15 04:05:31', '5cc1926523e9c', 'General', ''),
('5cdc27f529f6f', 'Day-to-day needed', 'false', 'hand', '2019-05-15 04:05:32', '2019-05-15 04:05:32', '5cc1926523e9c', 'General', ''),
('5cdc25b014d65', 'Crucial', 'false', 'stats', '2019-05-15 04:05:33', '2019-05-15 04:05:33', '5cc1926523e9c', 'General', ''),
('5cdc27f529f72', 'Wins', 'false', 'trophy', '2019-05-15 04:05:34', '2019-05-15 04:05:34', '5cc1926523e9c', 'General', ''),
('5cdc27f529f75', 'Losses', 'false', 'thumbs-down', '2019-05-15 04:05:35', '2019-05-15 04:05:35', '5cc1926523e9c', 'General', ''),
('5cdc27f529f77', 'On Course', 'false', 'thumbs-up', '2019-05-15 04:05:36', '2019-05-15 04:05:36', '5cc1926523e9c', 'General', ''),
('5cdc27f529f8a', 'Junk', 'false', 'trash', '2019-05-15 04:05:37', '2019-05-15 04:05:37', '5cc1926523e9c', 'General', ''),
('5cdc27f529f8d', 'Travel', 'false', 'bus', '2019-05-15 04:05:38', '2019-05-15 04:05:38', '5cc1926523e9c', 'Personal', ''),
('5cdc27f529f90', 'tips', 'false', 'book', '2019-05-15 04:05:39', '2019-05-15 04:05:39', '5cc1926523e9c', 'Personal', ''),
('5cdc1cd5cada4', 'health', 'false', 'medkit', '2019-05-15 04:05:40', '2019-05-15 04:05:40', '5cc1926523e9c', 'Personal', ''),
('5cdc1cd5cae00', 'wealth', 'false', 'logo-euro', '2019-05-15 04:05:41', '2019-05-15 04:05:41', '5cc1926523e9c', 'Personal', ''),
('5cdc27f529f92', 'Innovation', 'false', 'expand', '2019-05-15 04:05:42', '2019-05-15 04:05:42', '5cc1926523e9c', 'Personal', ''),
('5cdc27f529f95', 'knowledge', 'false', 'infinite', '2019-05-15 04:05:43', '2019-05-15 04:05:43', '5cc1926523e9c', 'Personal', ''),
('5cdc27f529f97', 'Practise', 'false', 'book', '2019-05-15 04:05:44', '2019-05-15 04:05:44', '5cc1926523e9c', 'Personal', ''),
('5cdc27f529f99', 'Involuntary', 'false', 'book', '2019-05-15 04:05:45', '2019-05-15 04:05:45', '5cc1926523e9c', 'Personal', ''),
('5cdc27f529f9c', 'Idea', 'false', 'bulb', '2019-05-15 04:05:46', '2019-05-15 04:05:46', '5cc1926523e9c', 'Personal', ''),
('5cdc27f529f9e', 'Driving', 'false', 'book', '2019-05-15 04:05:47', '2019-05-15 04:05:47', '5cc1926523e9c', 'Personal', ''),
('5cdc27f529fa1', 'Self Control', 'false', 'flash', '2019-05-15 04:05:48', '2019-05-15 04:05:48', '5cc1926523e9c', 'Personal', ''),
('5cdc27f529fa3', 'Interests', 'false', 'headset', '2019-05-15 04:05:49', '2019-05-15 04:05:49', '5cc1926523e9c', 'Personal', ''),
('5cdc27f529fa5', 'Ambition', 'false', 'flame', '2019-05-15 04:05:50', '2019-05-15 04:05:50', '5cc1926523e9c', 'Personal', ''),
('5cdc27f529fa8', 'Wish List', 'false', 'flower', '2019-05-15 04:05:51', '2019-05-15 04:05:51', '5cc1926523e9c', 'Personal', ''),
('5cdc27f529faa', 'Make Life Easy', 'false', 'flower', '2019-05-15 04:05:52', '2019-05-15 04:05:52', '5cc1926523e9c', 'Personal', ''),
('5cdc27f529fad', 'Be Cool and Look Cool', 'false', 'flower', '2019-05-15 04:05:53', '2019-05-15 04:05:53', '5cc1926523e9c', 'Personal', ''),
('5cdc27f529faf', 'Food', 'false', 'restaurant', '2019-05-15 04:05:54', '2019-05-15 04:05:54', '5cc1926523e9c', 'Personal', ''),
('5cdc27f529fb2', 'Vacation', 'false', 'plane', '2019-05-15 04:05:55', '2019-05-15 04:05:55', '5cc1926523e9c', 'Personal', ''),
('5cdc280c97d96', 'sweet memory', 'false', 'images', '2019-05-15 04:05:56', '2019-05-15 04:05:56', '5cc1926523e9c', 'Personal', ''),
('5cdc280c97da1', 'bitter memory', 'false', 'logo-python', '2019-05-15 04:05:57', '2019-05-15 04:05:57', '5cc1926523e9c', 'Personal', ''),
('5cdc280c97da4', 'Work Experience', 'false', 'book', '2019-05-15 04:05:58', '2019-05-15 04:05:58', '5cc1926523e9c', 'Professional', ''),
('5cdc280c97da7', 'Technical Points to remember', 'false', 'book', '2019-05-15 04:05:59', '2019-05-15 04:05:59', '5cc1926523e9c', 'Professional', ''),
('5cdc280c97da9', 'Make work easy', 'false', 'planet', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Professional', ''),
('5cdc280c97dac', 'Relatives', 'false', 'people', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'People', ''),
('5cdc280c97dbd', 'Relationship Note', 'false', 'contacts', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'People', ''),
('5cdc280c97dc0', 'Interaction Note', 'false', 'logo-pinterest', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'People', ''),
('5cdc280c97dc3', 'Life-Lesson', 'false', 'alert', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'People', ''),
('5cdc280c97dc5', 'Experience with People', 'false', 'chatbubbles', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'People', ''),
('5cdc280c97dc8', 'Remember about person', 'false', 'contact', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'People', ''),
('5cdc280c97dca', 'handloans', 'false', 'cash', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Financial', ''),
('5cdc280c97dcd', 'income Tips', 'false', 'cash', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Financial', ''),
('5cdc280c97dcf', 'Income Tax', 'false', 'cash', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Financial', ''),
('5cdc280c97dd1', 'Additional Income', 'false', 'cash', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Financial', ''),
('5cdc280c97dd4', 'Offers', 'false', 'cash', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Financial', ''),
('5cdc280c97dd6', 'Reduce Expense', 'false', 'cash', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Financial', ''),
('5cdc280c97dd9', 'Bank', 'false', 'cash', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Financial', ''),
('5cdc280c97ddb', 'Investment Schemes', 'false', 'cash', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Financial', ''),
('5cdc280c97dde', 'Mutual Funds', 'false', 'cash', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Financial', ''),
('5cdc280c97de1', 'HUF', 'false', 'cash', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Financial', ''),
('5cdc280c97de4', 'Cheetu', 'false', 'cash', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Financial', ''),
('5cdc280c97df0', 'Cooperative Society and Sangam', 'false', 'cash', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Financial', ''),
('5cdc2819228a5', 'Business', 'false', 'cash', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Financial', ''),
('5cdc2819228b2', 'Share Market', 'false', 'cash', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Financial', ''),
('5cdc2819228b5', 'To do it immediately', 'false', 'man', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'To do', ''),
('5cdc2819228b8', 'To do it daily', 'false', 'man', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'To do', ''),
('5cdc2819228ba', 'Service and Maintenance', 'false', 'man', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Labour', ''),
('5cdc2819228bd', 'Alarm', 'false', 'alarm', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Beware', ''),
('5cdc2819228bf', 'Danger', 'false', 'close-circle', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Beware', ''),
('5cdc2819228c2', 'Trap', 'false', 'aperture', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Beware', ''),
('5cdc2819228c4', 'Tricks', 'false', 'analytics', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Beware', ''),
('5cdc2819228c6', 'Bad Practise', 'false', 'analytics', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Beware', ''),
('5cdc2819228c9', 'Toxic', 'false', 'nuclear', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Beware', ''),
('5cdc2819228cb', 'Stay away', 'false', 'notifications-off', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Beware', ''),
('5cdc2819228ce', 'Dont talk these', 'false', 'mic-off', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Beware', ''),
('5cdc2819228d0', 'talk these', 'false', 'mic', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Beware', ''),
('5cdc2819228d3', 'Feedback comments', 'false', 'paper', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Feedback', ''),
('5cdc2819228d5', 'ratings', 'false', 'star-half', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Feedback', ''),
('5cdc2819228d7', 'Observation', 'false', 'pulse', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Thought Process', ''),
('5cdc2819228da', 'Inference', 'false', 'planet', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Thought Process', ''),
('5cdc2819228dc', 'Prediction', 'false', 'paper', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Thought Process', ''),
('5cdc2819228de', 'Assumption', 'false', 'paper', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Thought Process', ''),
('5cdc2819228e1', 'Definite', 'false', 'paper', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Thought Process', ''),
('5cdc2819228e4', 'Gadgets', 'false', 'desktop', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Electronics', ''),
('5cdc2819228e6', 'Mobiles', 'false', 'phone-portrait', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Electronics', ''),
('5cdc2820d17b0', 'TV', 'false', 'desktop', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Electronics', ''),
('5cdc2820d17bb', 'AC', 'false', 'desktop', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Electronics', ''),
('5cdc2820d17bf', 'Fridge', 'false', 'desktop', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Electronics', ''),
('5cdc2820d17c1', 'Washing Machine', 'false', 'desktop', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Electronics', ''),
('5cdc2820d17c4', 'Accessories', 'false', 'desktop', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Electronics', ''),
('5cdc2820d17c6', 'Grinder', 'false', 'outlet', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Electrical', ''),
('5cdc2820d17c8', 'Mixer', 'false', 'outlet', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Electrical', ''),
('5cdc2820d17cb', 'Inverter', 'false', 'outlet', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Electrical', ''),
('5cdc2820d17cd', 'Fan', 'false', 'outlet', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Electrical', ''),
('5cdc2820d17cf', 'Iron Box', 'false', 'outlet', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Electrical', ''),
('5cdc2820d17d2', 'Cars', 'false', 'car', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Automobiles', ''),
('5cdc2820d17d4', 'Bike', 'false', 'bicycle', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Automobiles', ''),
('5cdc2820d17d7', 'Schools', 'false', 'school', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Education', ''),
('5cdc2820d17d9', 'Colleges', 'false', 'school', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Education', ''),
('5cdc2820d17dc', 'Govt Office Procedures', 'false', 'information-circle', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Legal', ''),
('5cdc2820d17de', 'Police', 'false', 'planet', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Legal', ''),
('5cdc2820d17e0', 'Court', 'false', 'planet', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Legal', ''),
('5cdc2820d17e3', 'Preventive Measures', 'false', 'planet', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Legal', ''),
('5cdc2820d17e5', 'Justice Help', 'false', 'help-circle', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Legal', ''),
('5cdc2820d17e7', 'Fraud', 'false', 'logo-freebsd-devil', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Illegal', ''),
('5cdc2820d17ea', 'Harrasment', 'false', 'logo-freebsd-devil', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Illegal', ''),
('5cdc2820d17ec', 'Offense', 'false', 'logo-freebsd-devil', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Illegal', ''),
('5cdc2820d17ef', 'Violent', 'false', 'logo-freebsd-devil', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Illegal', ''),
('5cdc2827d9bcf', 'Malpractise', 'false', 'logo-freebsd-devil', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Illegal', ''),
('5cdc2827d9bdb', 'Corruption', 'false', 'logo-freebsd-devil', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Illegal', ''),
('5cdc2827d9bde', 'Cooking', 'false', 'basket', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Talent', ''),
('5cdc2827d9be1', 'Language Learning', 'false', 'basket', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Talent', ''),
('5cdc2827d9be4', 'Happy', 'false', 'happy', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Emotional', ''),
('5cdc2827d9be6', 'Sad', 'false', 'sad', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Emotional', ''),
('5cdc2827d9be9', 'Pleasure', 'false', 'happy', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Emotional', ''),
('5cdc2827d9beb', 'Pain', 'false', 'sad', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Emotional', ''),
('5cdc2827d9bed', 'Wow', 'false', 'happy', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Emotional', ''),
('5cdc2827d9bf0', 'Disgusting', 'false', 'sad', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Emotional', ''),
('5cdc2827d9bf2', 'Love', 'false', 'heart', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Emotional', ''),
('5cdc2827d9bf5', 'Hate', 'false', 'heart-outline', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Emotional', ''),
('5cdc2827d9bfc', 'Affectionate', 'false', 'happy', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Emotional', ''),
('5cdc2827d9c0a', 'Grateful', 'false', 'happy', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Emotional', ''),
('5cdc2827d9c0d', 'Betrayed', 'false', 'sad', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Emotional', ''),
('5cdc2827d9c0f', 'Angry', 'false', 'sad', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Emotional', ''),
('5cdc2827d9c12', 'Shock', 'false', 'thunderstorm', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Emotional', ''),
('5cdc2827d9c14', 'Surprise', 'false', 'rose', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5cc1926523e9c', 'Emotional', ''),
('5ce29b1338072', 'Custom Tag', 'false', 'arrow-round-forward', '2019-05-20 02:05:27', '2019-05-20 02:05:27', '5cc1926523e9c', 'Custom', ''),
(' 5ce55e8f4c145', 'May day', 'false', '', '2019-05-22 04:05:03', '2019-05-22 04:05:03', '5cc1926523e9c', 'Custom', '');

-- --------------------------------------------------------

--
-- Table structure for table `irem_users`
--

CREATE TABLE `irem_users` (
  `irem_usr_userid` varchar(255) NOT NULL,
  `irem_usr_username` varchar(100) NOT NULL,
  `irem_usr_password` varchar(255) NOT NULL,
  `irem_usr_userrole` varchar(30) NOT NULL DEFAULT 'Trial',
  `irem_usr_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `irem_usr_lastupdated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irem_users`
--

INSERT INTO `irem_users` (`irem_usr_userid`, `irem_usr_username`, `irem_usr_password`, `irem_usr_userrole`, `irem_usr_created`, `irem_usr_lastupdated`) VALUES
('5cb5deb662636', 'suganyaivangalin07@gmail.com', '$2y$11$Hs8wSJ8EbSOhN1whBy1aBuYywtlyf8NvsDaToo6wa1vM41MSbhtuC', 'NRML', '2019-04-30 12:14:50', '2019-04-30 12:14:50'),
('5cb70c5962f4e', 'ozinisle@gmail.com', '$2y$11$GOlhk/lFp.vQLmObvm8CduCuCv2wmcHQBQp8BxZmXFJFf6hHlNuyu', 'NRML', '2019-04-30 12:14:50', '2019-04-30 12:14:50'),
('5cc1926523e9c', 'karthikeyan.alagirisamy@cognizant.com', '$2y$11$NPCO17ItuzwItFM8pg4gHOW7SPB0NC4mk0BgpBDvkM5RJLqAlSuJK', 'NRML', '2019-04-30 12:14:50', '2019-04-30 12:14:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `irem_forgot_password`
--
ALTER TABLE `irem_forgot_password`
  ADD PRIMARY KEY (`irem_fp_index`);

--
-- Indexes for table `irem_users`
--
ALTER TABLE `irem_users`
  ADD PRIMARY KEY (`irem_usr_userid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
