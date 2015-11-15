-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2015 at 01:58 PM
-- Server version: 10.0.17-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `np`
--

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `property_id` int(11) NOT NULL,
  `property_name` varchar(100) NOT NULL,
  `division` varchar(50) NOT NULL,
  `full_address` varchar(100) NOT NULL,
  `bedrooms` int(11) NOT NULL,
  `rent` int(11) NOT NULL,
  `keywords` varchar(100) NOT NULL,
  `available_from` date NOT NULL,
  `owner_id` int(11) NOT NULL,
  `detail_description` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`property_id`, `property_name`, `division`, `full_address`, `bedrooms`, `rent`, `keywords`, `available_from`, `owner_id`, `detail_description`) VALUES
(39, 'my house', 'dhaka', 'dhaka cantonment', 3, 25000, 'widespaced ', '2015-11-30', 3, 'This is my home you will definately like it :) '),
(41, 'KKK', 'dhaka', 'sadbash', 12, 12300, 'asdbasdsahdashd', '2015-11-25', 3, 'hsashdaskjdasjkdgahsssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssk\r\nhsashdaskjdasjkdgahsssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssk\r\nhsashdaskjdasjkdgahsssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssk\r\nhsashdaskjdasjkdgahsssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssk\r\nhsashdaskjdasjkdgahsssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssk\r\nhsashdaskjdasjkdgahsssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssk\r\nhsashdaskjdasjkdgahsssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssk\r\nhsashdaskjdasjkdgahsssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssk'),
(43, 'House_Rupali', 'dhaka', 'jsgdjasg', 3200, 1200, 'javah mshbasgdjsdgasgsg', '2015-11-30', 3, '\r\nmshbasgdjsdgasg\r\n'),
(44, 'HH', 'dhaka', 'jkjj', 3, 2500, 'h1', '0000-00-00', 2, 'sdfsfasf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`property_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `property`
--
ALTER TABLE `property`
  MODIFY `property_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
