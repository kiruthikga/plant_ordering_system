-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2024 at 03:35 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `plant_ordering_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_to_cart`
--

CREATE TABLE `add_to_cart` (
  `cart_id` int(11) NOT NULL,
  `plant_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `plant_quantity` int(255) NOT NULL,
  `total` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `add_to_cart`
--

INSERT INTO `add_to_cart` (`cart_id`, `plant_id`, `cust_id`, `plant_quantity`, `total`) VALUES
(101, 63, 10, 2, '184.00'),
(102, 59, 10, 1, '80.00');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(20) NOT NULL,
  `admin_username` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  `admin_fullname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_username`, `admin_password`, `admin_fullname`) VALUES
(1, 'admin123', 'admin123', 'Kiruthikga');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(20) NOT NULL,
  `cust_username` varchar(255) NOT NULL,
  `cust_password` varchar(255) NOT NULL,
  `cust_fullname` varchar(255) NOT NULL,
  `cust_phoneno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `cust_username`, `cust_password`, `cust_fullname`, `cust_phoneno`) VALUES
(9, 'kiru123', 'Kiru1234', 'Kiruthikga', 135128873),
(10, 'Ainaa', 'aina123', 'Fatin Ainaa', 125982405),
(11, 'Amyy', 'amu123', 'Amelia', 125976048),
(12, 'Istrat123', 'istrat123', 'Isttrat', 112424212);

-- --------------------------------------------------------

--
-- Table structure for table `plant`
--

CREATE TABLE `plant` (
  `plant_id` int(20) NOT NULL,
  `plant_name` varchar(255) NOT NULL,
  `plant_type` varchar(255) NOT NULL,
  `plant_price` double NOT NULL,
  `plant_image_name` varchar(255) NOT NULL,
  `plant_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plant`
--

INSERT INTO `plant` (`plant_id`, `plant_name`, `plant_type`, `plant_price`, `plant_image_name`, `plant_quantity`) VALUES
(47, 'Small Mossy', 'Mossy', 23, '1000000061.jpg', 8),
(52, 'Large Hanging Fern', 'Fern', 21, '1000000051.jpg', 4),
(53, 'Yellow Rose', 'Rose', 123, '1000000043.jpg', 6),
(54, 'Pink Rose', 'Rose', 60, '1000000042.jpg', 5),
(55, 'Red Rose', 'Rose', 90, '1000000046.jpg', 4),
(56, 'Purple Rose', 'Rose', 65, '1000000045.jpg', 6),
(57, 'Small Hanging Fern', 'Fern', 40, '1000000050.jpg', 4),
(58, 'Small Potted Fern', 'Fern', 20, '1000000055.jpg', 6),
(59, 'Large Potted Fern', 'Fern', 80, '1000000054.jpg', 3),
(60, 'Peanut Cactus', 'Cactus', 70, '1000000056.jpg', 4),
(61, 'Grafted Moon Cactus', 'Cactus', 0, '1000000057.jpg', 5),
(62, 'Bunny Ear Cactus', 'Cactus', 90, '1000000058.jpg', 4),
(63, 'Barrel Cactus', 'Cactus', 92, '1000000059.jpg', 3),
(64, 'Large Mossy', 'Mossy', 99, '1000000062.jpg', 4),
(65, 'White Lilies', 'White Lily', 67, '1000000066.jpg', 3),
(66, 'Pink Lilies', 'White Lily', 55, '1000000073.jpg', 6),
(67, 'Purple Lilies', 'White Lily', 34, '1000000067.jpg', 3),
(68, 'Tiger Lilies', 'White Lily', 78, '1000000070.jpg', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_to_cart`
--
ALTER TABLE `add_to_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `plant_id` (`plant_id`),
  ADD KEY `cust_id` (`cust_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `plant`
--
ALTER TABLE `plant`
  ADD PRIMARY KEY (`plant_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_to_cart`
--
ALTER TABLE `add_to_cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `plant`
--
ALTER TABLE `plant`
  MODIFY `plant_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `add_to_cart`
--
ALTER TABLE `add_to_cart`
  ADD CONSTRAINT `add_to_cart_ibfk_1` FOREIGN KEY (`plant_id`) REFERENCES `plant` (`plant_id`),
  ADD CONSTRAINT `add_to_cart_ibfk_2` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
