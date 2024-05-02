-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2023 at 09:23 AM
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
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` double(10,0) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(20) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` double(10,0) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `details`, `price`, `image`) VALUES
(29, 'Green Apple', 'fruits', ' ', 47, 'green_apple.jpg'),
(30, 'Washington Apple', 'fruits', ' ', 45, 'washington_apple.jpg'),
(31, 'Fuji Apple', 'fruits', ' ', 100, 'fuji_apple.jpg'),
(32, 'Banana Cavendish', 'fruits', ' ', 99, 'banana_cavendish.jpg'),
(33, 'Banana Lacatan', 'fruits', ' ', 87, 'banana_lacatan.jpg'),
(34, 'Banana Latundan', 'fruits', ' ', 75, 'banana_latundan.jpg'),
(35, 'Lemon', 'fruits', ' ', 25, 'lemon.jpg'),
(36, 'Green Lemon', 'fruits', ' ', 97, 'green_lemon.jpg'),
(37, 'Poncan', 'fruits', ' ', 112, 'poncan.jpg'),
(38, 'Honey Melon', 'fruits', ' ', 136, 'honey_melon.jpg'),
(39, 'Honey Dew', 'fruits', ' ', 156, 'honey_dew.jpg'),
(40, 'Melon Cantaloupe', 'fruits', ' ', 114, 'melon_cantaloupe.jpg'),
(41, 'Bitter Melon', 'vegetables', ' ', 91, 'ampalaya.png'),
(42, 'Baguio Beans', 'vegetables', ' ', 36, 'baguio-beans.png'),
(43, 'Okra', 'vegetables', ' ', 26, 'okra.png'),
(44, 'Broccoli', 'vegetables', ' ', 169, 'broccoli.png'),
(45, 'Cabbage ', 'vegetables', ' ', 65, 'cabbage.png'),
(46, 'Cauliflower', 'vegetables', ' ', 123, 'cauliflower.png'),
(47, 'Spinach', 'vegetables', ' ', 195, 'spinach.png'),
(48, 'Lettuce', 'vegetables', ' ', 143, 'lettuce.png'),
(49, 'Pechay', 'vegetables', ' ', 40, 'pechay.png'),
(50, 'Eggplant', 'vegetables', ' ', 65, 'eggplant.png'),
(51, 'Carrots', 'vegetables', ' ', 123, 'carrot.png'),
(52, 'Bitter Melon (round)', 'vegetables', ' ', 39, 'amapalaya-round.png'),
(80, 'Eden Cheese', 'dairy', ' ', 59, 'eden.png'),
(81, 'Cheezee Block', 'dairy', ' ', 54, 'magnolia.png'),
(82, 'QBB Cheese', 'dairy', ' ', 61, 'cheese.png'),
(83, 'Magnolia Buutercup', 'dairy', ' ', 47, 'butter-buttercup.png'),
(84, 'Dari Creme Classic', 'dairy', ' ', 57, 'butter-daricreme.png'),
(85, 'Queensland Unsalted Butter', 'dairy', ' ', 111, 'butter-queensland.png'),
(86, 'Yakult Probiotic Drink', 'dairy', ' ', 50, 'yakult.png'),
(87, 'Yakult Probiotic Drink (light)', 'dairy', ' ', 53, 'yakult-light.png'),
(88, 'Goodday Cultured Milk', 'dairy', ' ', 53, 'cultured-milk.png'),
(89, 'Chicken Drumstick', 'meat', ' ', 123, 'drumstick.png'),
(90, 'Chicken Breast', 'meat', ' ', 133, 'breast.png'),
(91, 'Chicken Wings', 'meat', ' ', 134, 'wings.png'),
(92, 'Pork Adobo Cut', 'meat', ' ', 235, 'adobo cut.png'),
(93, 'Pork Cubes', 'meat', ' ', 253, 'pork cubes.png'),
(94, 'Pork Menudo Cut', 'meat', ' ', 253, 'menudo cut.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user',
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`, `image`) VALUES
(32, 'admin', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'id.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
