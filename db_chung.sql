-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 28, 2024 at 05:00 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_chung`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`) VALUES
(1, 'chung', 'chung2003');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id_bill` int NOT NULL,
  `iduser` int NOT NULL,
  `name_bill` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email_bill` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `address_bill` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `tel_bill` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `ordernote_bill` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `tongtien_bill` int NOT NULL,
  `pttt_bill` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `ngaydathang` date NOT NULL,
  `status_bill` varchar(250) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`id_bill`, `iduser`, `name_bill`, `email_bill`, `address_bill`, `tel_bill`, `ordernote_bill`, `tongtien_bill`, `pttt_bill`, `ngaydathang`, `status_bill`) VALUES
(1, 6, 'thanco12', 'thanngph34012@gmail.com', 'Hà Nội', '0852868204', '', 12371931, '1', '0000-00-00', ''),
(2, 6, 'thanco12', 'thanngph34012@gmail.com', 'Hà Nội', '0852868204', '', 12371931, '1', '0000-00-00', ''),
(3, 6, 'thanco12', 'thanngph34012@gmail.com', 'Hà Nội', '0852868204', '', 12371931, '1', '0000-00-00', ''),
(4, 6, 'thanco12', 'thanngph34012@gmail.com', 'Hà Nội', '0852868204', 'djhaskdnlqwkd', 2000000, '1', '0000-00-00', ''),
(5, 6, 'thanco12', 'thanngph34012@gmail.com', 'Hà Nội', '0852868204', '', 12371931, '1', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `binhluan`
--

CREATE TABLE `binhluan` (
  `id_bl` int NOT NULL,
  `content_bl` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `id_user` int NOT NULL,
  `id_pro` int NOT NULL,
  `date_bl` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `user_name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `role_tk` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `binhluan`
--

INSERT INTO `binhluan` (`id_bl`, `content_bl`, `id_user`, `id_pro`, `date_bl`, `user_name`, `role_tk`) VALUES
(1, 'haudhsak', 5, 2, '04:17:19am 05/11/2024', 'than04', 0),
(2, 'ajnsdkandjkas', 5, 2, '04:20:49am 05/11/2024', 'than04', 0),
(3, 'ok', 7, 3, '03:28:06am 28/11/2024', 'chung', 0),
(4, 'good products\r\n', 7, 3, '03:28:24am 28/11/2024', 'chung', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id_cart` int NOT NULL,
  `id_user` int NOT NULL,
  `idpro` int NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `price` int NOT NULL,
  `soluong` int NOT NULL,
  `id_bill` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id_cart`, `id_user`, `idpro`, `img`, `name`, `price`, `soluong`, `id_bill`) VALUES
(3, 6, 3, 'vivo-v29e-thumb-600x600.jpg', 'samsung1213312', 12371931, 1, 3),
(4, 6, 2, 'iphone_16_black_fe52c5d947.png', 'iphone 15', 2000000, 1, 4),
(5, 6, 3, 'vivo-v29e-thumb-600x600.jpg', 'samsung1213312', 12371931, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id_danhmuc` int NOT NULL,
  `name_danhmuc` varchar(250) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`id_danhmuc`, `name_danhmuc`) VALUES
(3, 'iphone'),
(4, 'samsung');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id_sp` int NOT NULL,
  `name_sp` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `img_sp` char(40) COLLATE utf8mb4_general_ci NOT NULL,
  `price_sp` int NOT NULL,
  `mota_sp` varchar(2000) COLLATE utf8mb4_general_ci NOT NULL,
  `id_danhmuc` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id_sp`, `name_sp`, `img_sp`, `price_sp`, `mota_sp`, `id_danhmuc`) VALUES
(2, 'iphone 15', 'iphone_16_black_fe52c5d947.png', 2000000, 'iphone 15', 3),
(3, 'samsung1213312', 'vivo-v29e-thumb-600x600.jpg', 12371931, 'djsahkdjawkdajshda', 4);

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id_tk` int NOT NULL,
  `name_tk` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `pass_tk` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email_tk` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `address_tk` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `tel_tk` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `role` tinyint DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`id_tk`, `name_tk`, `pass_tk`, `email_tk`, `address_tk`, `tel_tk`, `role`) VALUES
(6, 'thanco12', 'than2004', 'thanngph34012@gmail.com', 'Hà Nội', '0852868204', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id_bill`);

--
-- Indexes for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id_bl`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `idpro` (`idpro`),
  ADD KEY `id_bill` (`id_bill`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id_sp`),
  ADD KEY `lk_sanpham_danhmuc` (`id_danhmuc`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id_tk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `id_bill` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id_bl` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id_danhmuc` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id_sp` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id_tk` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `taikhoan` (`id_tk`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`idpro`) REFERENCES `sanpham` (`id_sp`),
  ADD CONSTRAINT `cart_ibfk_3` FOREIGN KEY (`id_bill`) REFERENCES `bill` (`id_bill`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `lk_sanpham_danhmuc` FOREIGN KEY (`id_danhmuc`) REFERENCES `danhmuc` (`id_danhmuc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
