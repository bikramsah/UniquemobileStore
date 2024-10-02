-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 29, 2024 at 03:07 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nepallion`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_table`
--

CREATE TABLE `admin_table` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(200) NOT NULL,
  `admin_image` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_table`
--

INSERT INTO `admin_table` (`admin_id`, `admin_name`, `admin_email`, `admin_image`, `admin_password`) VALUES
(1, 'abdo', 'abdo@gmail.com', 'logo after 3d_2.png', '$2y$10$M/A/r5j/GSeJrAZxI8NtRu9eG5yNltfgTrfQVoClfSIF/pzNUXa2W'),
(3, 'rohit', 'rohit@gmail.com', 'nepallion.png', '$2y$10$8ap3VtgST13plmf/7zAYIeYpM.mcjcBNXSjvrJwL61OX9Fb.ezQx2');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `brand_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(4, 'Samsung'),
(7, 'Vivo'),
(8, 'Oppo'),
(10, 'Realmi'),
(14, 'Apple'),
(15, 'Xiaomi'),
(16, 'One Plus');

-- --------------------------------------------------------

--
-- Table structure for table `card_details`
--

CREATE TABLE `card_details` (
  `product_id` int(11) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `quantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `card_details`
--

INSERT INTO `card_details` (`product_id`, `ip_address`, `quantity`) VALUES
(1, '::1', 1),
(4, '::1', 1),
(7, '::1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_title`) VALUES
(1, 'Mobiles devices'),
(2, 'Earphones & Earbuds'),
(3, 'Covers & Accessories');

-- --------------------------------------------------------

--
-- Table structure for table `orders_pending`
--

CREATE TABLE `orders_pending` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `invoice_number` int(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(255) NOT NULL,
  `order_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders_pending`
--

INSERT INTO `orders_pending` (`order_id`, `user_id`, `invoice_number`, `product_id`, `quantity`, `order_status`) VALUES
(1, 1, 312346784, 1, 3, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_title` varchar(120) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `product_keywords` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_image_one` varchar(255) NOT NULL,
  `product_image_two` varchar(255) NOT NULL,
  `product_image_three` varchar(255) NOT NULL,
  `product_price` float NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_title`, `product_description`, `product_keywords`, `category_id`, `brand_id`, `product_image_one`, `product_image_two`, `product_image_three`, `product_price`, `date`, `status`) VALUES
(1, 'iPhone 14', 'sake paxi sakigoni', 'best camera, design, gaming phone, better ui', 1, 14, 'iph 14.jpg', 'Apple iPhone 14 (256 GB) - Purple b.jpg', 'Apple iPhone 14 (256 GB) - Purple a.jpg', 94500, '2024-09-29 10:05:38', 'true'),
(2, 'iPhone 15 Pro Max', 'better design', 'gaming phone, quality camera', 1, 14, '1phon 15.jpg', 'Apple iPhone 15 Pro Max (256 GB)c.jpg', 'Apple iPhone 15 Pro Max (256 GB) a.jpg', 205990, '2024-09-23 11:31:38', 'true'),
(3, 'Samsung f15', 'new design', 'good batter backup, gaming phone', 1, 4, 'Samsung Galaxy F15 5G.jpg', 'Samsung Galaxy F15 5G c.jpg', 'Samsung Galaxy F15 5G (1).jpg', 38500, '2024-09-23 11:04:17', 'true'),
(4, 'Samsung Galaxy S21 FE 5G c', 'good model', 'camera improved, 4k support ,gaming', 1, 4, 'Samsung Galaxy M14 4G.jpg', 'Samsung Galaxy S21 FE 5G c.jpg', 'Samsung Galaxy S21 FE 5G v.jpg', 145800, '2024-09-23 11:05:51', 'true'),
(5, 'iPhone 16', 'new design model', 'apple', 1, 14, 'iphone 16.jpg', 'Apple iPhone 16 Plus (128 GB) c.jpg', 'Apple iPhone 16 Plus (128 GB) (1).jpg', 148950, '2024-09-23 11:31:50', 'true'),
(6, 'Samsung Galaxy S24', 'samsung new', 'sakigoni', 1, 4, 'sam s22.jpg', '71JLhofuYJL._SX679_.jpg', '633fd4bfb97f5950eb5ec690-realme-c35-4g-lte-gsm-64gb-4gb.jpg', 156000, '2024-09-23 11:35:25', 'true'),
(7, 'Redmi Note 13 Pro', 'new model', 'redmi, mi, xiaomi', 1, 15, '71aiqeP-APL._AC_UY436_FMwebp_QL65_.jpg', '81oZFRBMLVL._SX679_.jpg', '613YYQb2PPL._SX679_.jpg', 36500, '2024-09-23 11:39:31', 'true'),
(8, 'Oppo a3', 'new model', 'oppo', 1, 8, 'oppo a3.jpg', 'oppo a3 b.jpg', 'oppo a3 c.jpg', 34000, '2024-09-29 10:14:59', 'true'),
(9, 'Redmi Note 12 Pro', 'new modell lunch', 'redmi', 1, 15, 'Xiaomi-Redmi-Note-12-Pro.jpg', 'redmi note 13 a.jpg', 'redmi note 13 b.jpg', 32500, '2024-09-29 11:14:59', 'true'),
(10, 'iPhone 11', 'old model', 'iphone', 1, 14, '51kepvM6cxL.jpg', 'Apple_iphone_11-rosette-family-lineup-091019_big.jpg.large.jpg', 'iphone-11-128gb-purple.jpg', 52500, '2024-09-29 11:16:03', 'true'),
(11, 'Realmi 11', 'new model', 'relami', 1, 10, '633fd4bfb97f5950eb5ec690-realme-c35-4g-lte-gsm-64gb-4gb.jpg', '613YYQb2PPL._SX679_.jpg', 'realme c35.jpg', 29400, '2024-09-29 11:18:45', 'true'),
(12, 'iPhone 14 Pro Max', 'new model lunch', 'apple, iphone', 1, 14, 'Apple iPhone 14 (256 GB) - Purple.jpg', 'Apple iPhone 14 (256 GB) - Purple b.jpg', 'Apple iPhone 14 (256 GB) - Purple a.jpg', 128000, '2024-09-29 11:20:28', 'true'),
(13, 'OPPO A3', 'new model', 'Oppo', 1, 8, 'oppo a3.jpg', 'oppo a3 c.jpg', 'oppo a3 b.jpg', 24999, '2024-09-29 11:23:01', 'true'),
(14, 'One Plus Node CE', 'new model', 'oneplus', 1, 16, 'bone plus nord ce3.jpg', 'bone plus node ce lite.jpg', 'one plus nord ce4 .jpg', 32960, '2024-09-29 11:25:34', 'true'),
(15, 'One Plus se2', 'oneplus old model', 'oneplus', 1, 16, 'one plus.jpg', 'one plus nord ce4 .jpg', 'one plus (1).jpg', 35000, '2024-09-29 11:26:54', 'true'),
(16, 'iPhone 13', 'new model', 'iphone', 1, 14, 'iphone 13.jpg', 'iphone 13 b.jpg', 'iphone 13 a.jpg', 85000, '2024-09-29 11:47:55', 'true'),
(17, 'Poko x6', 'poko new model', 'poko', 1, 15, 'poco x6.jpg', 'poco x6 c .jpg', 'poco x6 b.jpg', 28000, '2024-09-29 11:46:59', 'true'),
(18, 'Realmi 7', 'realmi old device', 'realmi', 1, 10, 'oVdvMJIRNsaQYkeZINuTVuo62yqyCkmeeyJI9w9T.jpg', 'oVdvMJIRNsaQYkeZINuTVuo62yqyCkmeeyJI9w9T.jpg', '4_zu_3_realme_7.jpg', 16000, '2024-09-29 11:50:10', 'true'),
(19, 'Oppo a1', 'oppo', 'oppo', 1, 8, 'oppo a3 c.jpg', 'one plus nord ce4 .jpg', 'one plus (1).jpg', 24900, '2024-09-29 12:26:16', 'true'),
(20, 'xiaomi 11i', 'new design look', 'redmi', 1, 15, 'R.png', 'realme c35.jpg', 'realmi narzo 70x.jpg', 32000, '2024-09-29 12:27:44', 'true'),
(21, 'Realmi narzo 70x', 'relami new', 'relami', 1, 10, 'realmi narzo.jpg', 'realmi narzo 70x.jpg', 'realmi narzo (1).jpg', 32000, '2024-09-29 12:29:07', 'true'),
(22, 'Samsung Galaxy M14', 'samsung new', 'samsung', 1, 4, 'Samsung Galaxy M14 4G.jpg', 'Samsung Galaxy M14 4G c.jpg', 'Samsung Galaxy M14 4G a.jpg', 23000, '2024-09-29 12:30:17', 'true'),
(23, 'Samsung G M35', 'samsung new model', 'samsung', 1, 4, 'Samsung m35_.jpg', 'Samsung Galaxy F15 5G.jpg', 'Samsung Galaxy F15 5G c.jpg', 31900, '2024-09-29 12:31:34', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `user_orders`
--

CREATE TABLE `user_orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount_due` int(255) NOT NULL,
  `invoice_number` int(255) NOT NULL,
  `total_products` int(255) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_orders`
--

INSERT INTO `user_orders` (`order_id`, `user_id`, `amount_due`, `invoice_number`, `total_products`, `order_date`, `order_status`) VALUES
(1, 1, 1160, 312346784, 3, '2023-10-22 15:31:20', 'paid');

-- --------------------------------------------------------

--
-- Table structure for table `user_payments`
--

CREATE TABLE `user_payments` (
  `payment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `invoice_number` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `payment_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `user_ip` varchar(100) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_mobile` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`user_id`, `username`, `user_email`, `user_password`, `user_image`, `user_ip`, `user_address`, `user_mobile`) VALUES
(2, 'nikhil', 'nikhil@gmail.com', '$2y$10$xVcsVVZ2OIFMab4m88XveOh6xyTf0UF20BBpDBmvnrFLYrGR3DIva', 'nikh.jpg', '::1', 'brt', '9800000000'),
(3, 'rohit', 'rohit@gmail.com', '$2y$10$zP97keMwqxZ22xnSkBimMe6XDnxubmU/BxIbVMGCM.UR8V7NpBh7m', '51iJx7YWDOL._AC_UF894,1000_QL80_.jpg', '::1', 'biratnagar', '9812348764');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_table`
--
ALTER TABLE `admin_table`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `card_details`
--
ALTER TABLE `card_details`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `orders_pending`
--
ALTER TABLE `orders_pending`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_orders`
--
ALTER TABLE `user_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `user_payments`
--
ALTER TABLE `user_payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_table`
--
ALTER TABLE `admin_table`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders_pending`
--
ALTER TABLE `orders_pending`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `user_orders`
--
ALTER TABLE `user_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_payments`
--
ALTER TABLE `user_payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
