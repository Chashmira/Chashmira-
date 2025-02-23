-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2025 at 08:56 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `pincode` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `orderedproducts` varchar(500) NOT NULL,
  `totalprice` varchar(10) NOT NULL,
  `isDelivered` varchar(20) DEFAULT 'False',
  `timeStamp` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `name`, `email`, `state`, `city`, `pincode`, `address`, `orderedproducts`, `totalprice`, `isDelivered`, `timeStamp`) VALUES
(4, 'chandu', 'chandu1@gmail.com', 'andhrapradesh', 'tiripati', '524129', 'pennepali', '[{\"id\":\"5\",\"name\":\"Constitution\",\"quantity\":1,\"price\":\"1000\"},{\"id\":\"6\",\"name\":\"Mahabarata\",\"quantity\":1,\"price\":\"100\"}]', '1100', '0', '2025-02-20'),
(5, 'yasodha', 'chandu2@gmail.com', 'andhrapradesh', 'tirupati', '524129', 'pennepali', '[{\"id\":\"7\",\"name\":\"Gandhi\",\"quantity\":1,\"price\":\"1000\"}]', '1000', '0', '2025-02-20');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(20) NOT NULL,
  `category` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `stock` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `category`, `description`, `stock`, `image`, `email`) VALUES
(5, 'Constitution', '1000', 'indian', 'best Book', 9, 'books4.jpg', 'kudirichandu1@gmail.com'),
(6, 'Mahabarata', '100', 'indian', 'best bok', 9, 'books5.jpg', 'kudirichandu1@gmail.com'),
(7, 'Gandhi', '1000', 'indian', 'best book', 49, 'books3.jpg', 'kudirichandu1@gmail.com'),
(8, 'wright brothers', '500', 'creators', 'best book', 10, 'books2.jpg', 'kudirichandu1@gmail.com'),
(9, 'The book thief', '100', 'reading', 'good book', 10, 'books.jpg', 'kudirichandu1@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile_number` varchar(12) NOT NULL,
  `password` text NOT NULL,
  `profileimage` varchar(500) NOT NULL,
  `isAdmin` varchar(10) NOT NULL DEFAULT 'False'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`user_id`, `first_name`, `last_name`, `email`, `mobile_number`, `password`, `profileimage`, `isAdmin`) VALUES
(1, 'chandu', 'pspk', 'kudirichandu1@gmail.com', '9063928366', 'scrypt:32768:8:1$uldzqBNrUW8y2sdw$9088fb59a58bc0122efef0974268568ba35d8e05d817832c11d65201851882078889abb9ffbb78566f4fbc8053d92ec7f79b8204c4bf0b08efdebc3282516bac', '', 'True'),
(8, 'raja', 'gopal', 'chandu1@gmail.com', '9010814822', 'scrypt:32768:8:1$6qDWmlxsLmk2vbIb$3e5e96a72fbe24a2feebb837f48c00bf09ae13262c2fd7fb1cd0b29fb412ea713941998ac6c99da3abd1180a80a5524b6441a9f3481789e55bd9c8ecc988608f', '', 'False'),
(9, 'yasodha', 'kudiri', 'chandu2@gmail.com', '1234567899', 'scrypt:32768:8:1$el6aeNVb60KI12LB$dbbc4a048a83bbbf1859141a97c27a85c28964f9570057675ce7e5b9a97cc0524ad4d328ce9bec2a582c311978c80a0df8bfc40381b9ba286b498f5e2e6599ba', '', 'False');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
