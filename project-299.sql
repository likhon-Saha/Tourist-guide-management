-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2021 at 06:48 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project-299`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `hotel_id` varchar(6) DEFAULT NULL,
  `package_id` varchar(10) NOT NULL,
  `transport_id` varchar(6) DEFAULT NULL,
  `transaction_id` varchar(7) NOT NULL,
  `transport_type` varchar(15) DEFAULT NULL,
  `num_person` int(11) DEFAULT NULL,
  `travel_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cardinfo`
--

CREATE TABLE `cardinfo` (
  `card_no` varchar(16) NOT NULL,
  `cvv` varchar(3) DEFAULT NULL,
  `exp` varchar(7) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `id` varchar(6) NOT NULL,
  `stars` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(90) NOT NULL,
  `cost` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `id` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `attractions` varchar(100) NOT NULL,
  `destination` varchar(40) NOT NULL,
  `duration` int(11) NOT NULL,
  `cost` decimal(10,2) NOT NULL,
  `imagename` varchar(30) NOT NULL DEFAULT 'default'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tourist`
--

CREATE TABLE `tourist` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(18) DEFAULT NULL,
  `address` varchar(70) DEFAULT NULL,
  `card_no` varchar(16) NOT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` varchar(7) NOT NULL,
  `transaction_date` datetime NOT NULL DEFAULT current_timestamp(),
  `amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE `transport` (
  `id` varchar(6) NOT NULL,
  `type` varchar(30) NOT NULL,
  `name` varchar(60) NOT NULL,
  `route` varchar(60) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
