-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2023 at 12:05 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_detail` varchar(500) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_total` int(11) NOT NULL,
  `product_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `store_id`, `product_name`, `product_detail`, `product_price`, `product_total`, `product_img`) VALUES
(1, 1, 'shirt one', 'product detail', 250, 10, 'https://cdn.sanity.io/images/dow10h3v/production/a6a38f6a1f31dafe5f3294a4384f865b7d25a344-370x394.png'),
(2, 1, 'shirt two', 'product detail', 250, 10, 'https://full-stack-ecommerce-clothing-web.vercel.app/_next/image?url=%2F_next%2Fstatic%2Fmedia%2Ffeature.1118a2f3.png&w=384&q=75'),
(3, 2, 'shirt01', 'product detail', 250, 10, 'https://cdn.sanity.io/images/dow10h3v/production/ffc858fc182553bee2aaff34fe728bf07d15f2b5-278x296.png'),
(4, 2, 'shirt02', 'product detail', 250, 10, 'https://cdn.sanity.io/images/dow10h3v/production/2228e40aa700a68031eff4016f9e625ade813a89-278x296.png'),
(5, 1, 'shirt A3', 'girl', 350, 5, 'https://cdn.sanity.io/images/dow10h3v/production/994bf21135a265d4bbeff47cd8fddae6082a0b26-370x394.png'),
(6, 1, 'Pants A3', 'Pants girl', 150, 5, 'https://cdn.sanity.io/images/dow10h3v/production/ed4960c6cf46ac416ae2fa6c0a3accbaa551457e-278x296.png'),
(7, 1, 'Pants A44', 'Pants girl', 150, 5, 'https://cdn.sanity.io/images/dow10h3v/production/7739d01f547a127eca9fdfdb267935974e8d2b83-278x296.png'),
(8, 1, 'Pink Pants A43', 'Pants girl', 150, 5, 'https://cdn.sanity.io/images/dow10h3v/production/c7b4f3b93e9536ce55353fdd05b7a81a2b57be02-278x296.png'),
(9, 1, 'T Shirts', 'T Shirts', 150, 5, 'https://cdn.sanity.io/images/dow10h3v/production/d8cbcd5d002fade4d83dc66f910f34ae84d61975-278x296.png');

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `store_id` int(11) NOT NULL,
  `store_name` varchar(100) NOT NULL,
  `store_detail` varchar(100) NOT NULL,
  `store_address` text NOT NULL,
  `store_profile` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`store_id`, `store_name`, `store_detail`, `store_address`, `store_profile`) VALUES
(1, 'SHIRT ONE', 'Clothes', 'thailand khon kaen', 'https://img.freepik.com/premium-vector/fashion-logo_10250-569.jpg?w=740'),
(2, 'SHIRT TWO', 'Clothes', 'thailand Bangkok', 'https://img.freepik.com/free-vector/flat-design-clothing-store-logo-design_23-2149496415.jpg?w=826&t=st=1683044954~exp=1683045554~hmac=4a9734a114d13dc83078817e32d56c8d0b36832b07c76594d84467947aba317a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`store_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
