-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 11, 2023 at 02:54 PM
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
-- Database: `doan`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` tinyint UNSIGNED NOT NULL,
  `brand_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_keyword` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_name`, `brand_keyword`, `brand_description`, `created_at`, `updated_at`) VALUES
(1, 'Asus', 'Asus', 'Asus', '2021-12-19 12:53:39', '2023-11-05 09:48:47'),
(2, 'Samsung', 'Samsung', 'Samsung', '2021-12-19 12:53:53', '2023-11-05 08:47:50'),
(3, 'Apple (Iphone)', 'Apple', 'Apple', '2021-12-19 12:54:15', '2023-11-05 10:06:04');

-- --------------------------------------------------------

--
-- Table structure for table `categorys`
--

CREATE TABLE `categorys` (
  `category_id` tinyint UNSIGNED NOT NULL,
  `category_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_keyword` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categorys`
--

INSERT INTO `categorys` (`category_id`, `category_name`, `category_keyword`, `category_description`, `created_at`, `updated_at`) VALUES
(4, 'Laptop chính hãng', 'Laptop chính hãng', 'Laptop chính hãng', '2021-12-19 12:58:04', '2023-11-05 08:30:24'),
(5, 'Máy tính bảng', 'Máy tính bảng', 'Máy tính bảng', '2021-12-19 12:58:37', '2023-11-05 08:30:01'),
(6, 'Điện thoại', 'điện thoại', 'Điện thoại', '2021-12-20 13:01:29', '2023-11-05 08:28:23');

-- --------------------------------------------------------

--
-- Table structure for table `citys`
--

CREATE TABLE `citys` (
  `city_id` int NOT NULL,
  `city_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `citys`
--

INSERT INTO `citys` (`city_id`, `city_name`, `city_type`) VALUES
(1, 'Thành phố Hà Nội', 'Thành phố Trung ương'),
(2, 'Tỉnh Hà Giang', 'Tỉnh'),
(4, 'Tỉnh Cao Bằng', 'Tỉnh'),
(6, 'Tỉnh Bắc Kạn', 'Tỉnh'),
(8, 'Tỉnh Tuyên Quang', 'Tỉnh'),
(10, 'Tỉnh Lào Cai', 'Tỉnh'),
(11, 'Tỉnh Điện Biên', 'Tỉnh'),
(12, 'Tỉnh Lai Châu', 'Tỉnh'),
(14, 'Tỉnh Sơn La', 'Tỉnh'),
(15, 'Tỉnh Yên Bái', 'Tỉnh'),
(17, 'Tỉnh Hoà Bình', 'Tỉnh'),
(19, 'Tỉnh Thái Nguyên', 'Tỉnh'),
(20, 'Tỉnh Lạng Sơn', 'Tỉnh'),
(22, 'Tỉnh Quảng Ninh', 'Tỉnh'),
(24, 'Tỉnh Bắc Giang', 'Tỉnh'),
(25, 'Tỉnh Phú Thọ', 'Tỉnh'),
(26, 'Tỉnh Vĩnh Phúc', 'Tỉnh'),
(27, 'Tỉnh Bắc Ninh', 'Tỉnh'),
(30, 'Tỉnh Hải Dương', 'Tỉnh'),
(31, 'Thành phố Hải Phòng', 'Thành phố Trung ương'),
(33, 'Tỉnh Hưng Yên', 'Tỉnh'),
(34, 'Tỉnh Thái Bình', 'Tỉnh'),
(35, 'Tỉnh Hà Nam', 'Tỉnh'),
(36, 'Tỉnh Nam Định', 'Tỉnh'),
(37, 'Tỉnh Ninh Bình', 'Tỉnh'),
(38, 'Tỉnh Thanh Hóa', 'Tỉnh'),
(40, 'Tỉnh Nghệ An', 'Tỉnh'),
(42, 'Tỉnh Hà Tĩnh', 'Tỉnh'),
(44, 'Tỉnh Quảng Bình', 'Tỉnh'),
(45, 'Tỉnh Quảng Trị', 'Tỉnh'),
(46, 'Tỉnh Thừa Thiên Huế', 'Tỉnh'),
(48, 'Thành phố Đà Nẵng', 'Thành phố Trung ương'),
(49, 'Tỉnh Quảng Nam', 'Tỉnh'),
(51, 'Tỉnh Quảng Ngãi', 'Tỉnh'),
(52, 'Tỉnh Bình Định', 'Tỉnh'),
(54, 'Tỉnh Phú Yên', 'Tỉnh'),
(56, 'Tỉnh Khánh Hòa', 'Tỉnh'),
(58, 'Tỉnh Ninh Thuận', 'Tỉnh'),
(60, 'Tỉnh Bình Thuận', 'Tỉnh'),
(62, 'Tỉnh Kon Tum', 'Tỉnh'),
(64, 'Tỉnh Gia Lai', 'Tỉnh'),
(66, 'Tỉnh Đắk Lắk', 'Tỉnh'),
(67, 'Tỉnh Đắk Nông', 'Tỉnh'),
(68, 'Tỉnh Lâm Đồng', 'Tỉnh'),
(70, 'Tỉnh Bình Phước', 'Tỉnh'),
(72, 'Tỉnh Tây Ninh', 'Tỉnh'),
(74, 'Tỉnh Bình Dương', 'Tỉnh'),
(75, 'Tỉnh Đồng Nai', 'Tỉnh'),
(77, 'Tỉnh Bà Rịa - Vũng Tàu', 'Tỉnh'),
(79, 'Thành phố Hồ Chí Minh', 'Thành phố Trung ương'),
(80, 'Tỉnh Long An', 'Tỉnh'),
(82, 'Tỉnh Tiền Giang', 'Tỉnh'),
(83, 'Tỉnh Bến Tre', 'Tỉnh'),
(84, 'Tỉnh Trà Vinh', 'Tỉnh'),
(86, 'Tỉnh Vĩnh Long', 'Tỉnh'),
(87, 'Tỉnh Đồng Tháp', 'Tỉnh'),
(89, 'Tỉnh An Giang', 'Tỉnh'),
(91, 'Tỉnh Kiên Giang', 'Tỉnh'),
(92, 'Thành phố Cần Thơ', 'Thành phố Trung ương'),
(93, 'Tỉnh Hậu Giang', 'Tỉnh'),
(94, 'Tỉnh Sóc Trăng', 'Tỉnh'),
(95, 'Tỉnh Bạc Liêu', 'Tỉnh'),
(96, 'Tỉnh Cà Mau', 'Tỉnh');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` bigint UNSIGNED NOT NULL,
  `user_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `comment_customer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_admin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_rating` int DEFAULT NULL,
  `comment_status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `user_id`, `product_id`, `comment_customer`, `comment_admin`, `comment_rating`, `comment_status`, `created_at`, `updated_at`) VALUES
(1, 25, 56, 'Tốt', 'Tốt', 2, 2, '2023-11-05 10:10:39', '2023-11-05 10:10:59');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `coupon_id` bigint UNSIGNED NOT NULL,
  `coupon_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_value` int NOT NULL,
  `coupon_status` int NOT NULL,
  `coupon_expiry` date NOT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`coupon_id`, `coupon_name`, `coupon_code`, `coupon_value`, `coupon_status`, `coupon_expiry`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'backtoschool', 'student', 10, 1, '2023-11-08', NULL, '2023-11-05 11:07:21', '2023-11-05 11:07:21');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `district_id` int NOT NULL,
  `district_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`district_id`, `district_name`, `district_type`, `city_id`) VALUES
(1, 'Quận Ba Đình', 'Quận', 1),
(2, 'Quận Hoàn Kiếm', 'Quận', 1),
(3, 'Quận Tây Hồ', 'Quận', 1),
(4, 'Quận Long Biên', 'Quận', 1),
(5, 'Quận Cầu Giấy', 'Quận', 1),
(6, 'Quận Đống Đa', 'Quận', 1),
(7, 'Quận Hai Bà Trưng', 'Quận', 1),
(8, 'Quận Hoàng Mai', 'Quận', 1),
(9, 'Quận Thanh Xuân', 'Quận', 1),
(16, 'Huyện Sóc Sơn', 'Huyện', 1),
(17, 'Huyện Đông Anh', 'Huyện', 1),
(18, 'Huyện Gia Lâm', 'Huyện', 1),
(19, 'Quận Nam Từ Liêm', 'Quận', 1),
(20, 'Huyện Thanh Trì', 'Huyện', 1),
(21, 'Quận Bắc Từ Liêm', 'Quận', 1),
(24, 'Thành phố Hà Giang', 'Thành phố', 2),
(26, 'Huyện Đồng Văn', 'Huyện', 2),
(27, 'Huyện Mèo Vạc', 'Huyện', 2),
(28, 'Huyện Yên Minh', 'Huyện', 2),
(29, 'Huyện Quản Bạ', 'Huyện', 2),
(30, 'Huyện Vị Xuyên', 'Huyện', 2),
(31, 'Huyện Bắc Mê', 'Huyện', 2),
(32, 'Huyện Hoàng Su Phì', 'Huyện', 2),
(33, 'Huyện Xín Mần', 'Huyện', 2),
(34, 'Huyện Bắc Quang', 'Huyện', 2),
(35, 'Huyện Quang Bình', 'Huyện', 2),
(40, 'Thành phố Cao Bằng', 'Thành phố', 4),
(42, 'Huyện Bảo Lâm', 'Huyện', 4),
(43, 'Huyện Bảo Lạc', 'Huyện', 4),
(44, 'Huyện Thông Nông', 'Huyện', 4),
(45, 'Huyện Hà Quảng', 'Huyện', 4),
(46, 'Huyện Trà Lĩnh', 'Huyện', 4),
(47, 'Huyện Trùng Khánh', 'Huyện', 4),
(48, 'Huyện Hạ Lang', 'Huyện', 4),
(49, 'Huyện Quảng Uyên', 'Huyện', 4),
(50, 'Huyện Phục Hoà', 'Huyện', 4),
(51, 'Huyện Hoà An', 'Huyện', 4),
(52, 'Huyện Nguyên Bình', 'Huyện', 4),
(53, 'Huyện Thạch An', 'Huyện', 4),
(58, 'Thành Phố Bắc Kạn', 'Thành phố', 6),
(60, 'Huyện Pác Nặm', 'Huyện', 6),
(61, 'Huyện Ba Bể', 'Huyện', 6),
(62, 'Huyện Ngân Sơn', 'Huyện', 6),
(63, 'Huyện Bạch Thông', 'Huyện', 6),
(64, 'Huyện Chợ Đồn', 'Huyện', 6),
(65, 'Huyện Chợ Mới', 'Huyện', 6),
(66, 'Huyện Na Rì', 'Huyện', 6),
(70, 'Thành phố Tuyên Quang', 'Thành phố', 8),
(71, 'Huyện Lâm Bình', 'Huyện', 8),
(72, 'Huyện Nà Hang', 'Huyện', 8),
(73, 'Huyện Chiêm Hóa', 'Huyện', 8),
(74, 'Huyện Hàm Yên', 'Huyện', 8),
(75, 'Huyện Yên Sơn', 'Huyện', 8),
(76, 'Huyện Sơn Dương', 'Huyện', 8),
(80, 'Thành phố Lào Cai', 'Thành phố', 10),
(82, 'Huyện Bát Xát', 'Huyện', 10),
(83, 'Huyện Mường Khương', 'Huyện', 10),
(84, 'Huyện Si Ma Cai', 'Huyện', 10),
(85, 'Huyện Bắc Hà', 'Huyện', 10),
(86, 'Huyện Bảo Thắng', 'Huyện', 10),
(87, 'Huyện Bảo Yên', 'Huyện', 10),
(88, 'Huyện Sa Pa', 'Huyện', 10),
(89, 'Huyện Văn Bàn', 'Huyện', 10),
(94, 'Thành phố Điện Biên Phủ', 'Thành phố', 11),
(95, 'Thị Xã Mường Lay', 'Thị xã', 11),
(96, 'Huyện Mường Nhé', 'Huyện', 11),
(97, 'Huyện Mường Chà', 'Huyện', 11),
(98, 'Huyện Tủa Chùa', 'Huyện', 11),
(99, 'Huyện Tuần Giáo', 'Huyện', 11),
(100, 'Huyện Điện Biên', 'Huyện', 11),
(101, 'Huyện Điện Biên Đông', 'Huyện', 11),
(102, 'Huyện Mường Ảng', 'Huyện', 11),
(103, 'Huyện Nậm Pồ', 'Huyện', 11),
(105, 'Thành phố Lai Châu', 'Thành phố', 12),
(106, 'Huyện Tam Đường', 'Huyện', 12),
(107, 'Huyện Mường Tè', 'Huyện', 12),
(108, 'Huyện Sìn Hồ', 'Huyện', 12),
(109, 'Huyện Phong Thổ', 'Huyện', 12),
(110, 'Huyện Than Uyên', 'Huyện', 12),
(111, 'Huyện Tân Uyên', 'Huyện', 12),
(112, 'Huyện Nậm Nhùn', 'Huyện', 12),
(116, 'Thành phố Sơn La', 'Thành phố', 14),
(118, 'Huyện Quỳnh Nhai', 'Huyện', 14),
(119, 'Huyện Thuận Châu', 'Huyện', 14),
(120, 'Huyện Mường La', 'Huyện', 14),
(121, 'Huyện Bắc Yên', 'Huyện', 14),
(122, 'Huyện Phù Yên', 'Huyện', 14),
(123, 'Huyện Mộc Châu', 'Huyện', 14),
(124, 'Huyện Yên Châu', 'Huyện', 14),
(125, 'Huyện Mai Sơn', 'Huyện', 14),
(126, 'Huyện Sông Mã', 'Huyện', 14),
(127, 'Huyện Sốp Cộp', 'Huyện', 14),
(128, 'Huyện Vân Hồ', 'Huyện', 14),
(132, 'Thành phố Yên Bái', 'Thành phố', 15),
(133, 'Thị xã Nghĩa Lộ', 'Thị xã', 15),
(135, 'Huyện Lục Yên', 'Huyện', 15),
(136, 'Huyện Văn Yên', 'Huyện', 15),
(137, 'Huyện Mù Căng Chải', 'Huyện', 15),
(138, 'Huyện Trấn Yên', 'Huyện', 15),
(139, 'Huyện Trạm Tấu', 'Huyện', 15),
(140, 'Huyện Văn Chấn', 'Huyện', 15),
(141, 'Huyện Yên Bình', 'Huyện', 15),
(148, 'Thành phố Hòa Bình', 'Thành phố', 17),
(150, 'Huyện Đà Bắc', 'Huyện', 17),
(151, 'Huyện Kỳ Sơn', 'Huyện', 17),
(152, 'Huyện Lương Sơn', 'Huyện', 17),
(153, 'Huyện Kim Bôi', 'Huyện', 17),
(154, 'Huyện Cao Phong', 'Huyện', 17),
(155, 'Huyện Tân Lạc', 'Huyện', 17),
(156, 'Huyện Mai Châu', 'Huyện', 17),
(157, 'Huyện Lạc Sơn', 'Huyện', 17),
(158, 'Huyện Yên Thủy', 'Huyện', 17),
(159, 'Huyện Lạc Thủy', 'Huyện', 17),
(164, 'Thành phố Thái Nguyên', 'Thành phố', 19),
(165, 'Thành phố Sông Công', 'Thành phố', 19),
(167, 'Huyện Định Hóa', 'Huyện', 19),
(168, 'Huyện Phú Lương', 'Huyện', 19),
(169, 'Huyện Đồng Hỷ', 'Huyện', 19),
(170, 'Huyện Võ Nhai', 'Huyện', 19),
(171, 'Huyện Đại Từ', 'Huyện', 19),
(172, 'Thị xã Phổ Yên', 'Thị xã', 19),
(173, 'Huyện Phú Bình', 'Huyện', 19),
(178, 'Thành phố Lạng Sơn', 'Thành phố', 20),
(180, 'Huyện Tràng Định', 'Huyện', 20),
(181, 'Huyện Bình Gia', 'Huyện', 20),
(182, 'Huyện Văn Lãng', 'Huyện', 20),
(183, 'Huyện Cao Lộc', 'Huyện', 20),
(184, 'Huyện Văn Quan', 'Huyện', 20),
(185, 'Huyện Bắc Sơn', 'Huyện', 20),
(186, 'Huyện Hữu Lũng', 'Huyện', 20),
(187, 'Huyện Chi Lăng', 'Huyện', 20),
(188, 'Huyện Lộc Bình', 'Huyện', 20),
(189, 'Huyện Đình Lập', 'Huyện', 20),
(193, 'Thành phố Hạ Long', 'Thành phố', 22),
(194, 'Thành phố Móng Cái', 'Thành phố', 22),
(195, 'Thành phố Cẩm Phả', 'Thành phố', 22),
(196, 'Thành phố Uông Bí', 'Thành phố', 22),
(198, 'Huyện Bình Liêu', 'Huyện', 22),
(199, 'Huyện Tiên Yên', 'Huyện', 22),
(200, 'Huyện Đầm Hà', 'Huyện', 22),
(201, 'Huyện Hải Hà', 'Huyện', 22),
(202, 'Huyện Ba Chẽ', 'Huyện', 22),
(203, 'Huyện Vân Đồn', 'Huyện', 22),
(204, 'Huyện Hoành Bồ', 'Huyện', 22),
(205, 'Thị xã Đông Triều', 'Thị xã', 22),
(206, 'Thị xã Quảng Yên', 'Thị xã', 22),
(207, 'Huyện Cô Tô', 'Huyện', 22),
(213, 'Thành phố Bắc Giang', 'Thành phố', 24),
(215, 'Huyện Yên Thế', 'Huyện', 24),
(216, 'Huyện Tân Yên', 'Huyện', 24),
(217, 'Huyện Lạng Giang', 'Huyện', 24),
(218, 'Huyện Lục Nam', 'Huyện', 24),
(219, 'Huyện Lục Ngạn', 'Huyện', 24),
(220, 'Huyện Sơn Động', 'Huyện', 24),
(221, 'Huyện Yên Dũng', 'Huyện', 24),
(222, 'Huyện Việt Yên', 'Huyện', 24),
(223, 'Huyện Hiệp Hòa', 'Huyện', 24),
(227, 'Thành phố Việt Trì', 'Thành phố', 25),
(228, 'Thị xã Phú Thọ', 'Thị xã', 25),
(230, 'Huyện Đoan Hùng', 'Huyện', 25),
(231, 'Huyện Hạ Hoà', 'Huyện', 25),
(232, 'Huyện Thanh Ba', 'Huyện', 25),
(233, 'Huyện Phù Ninh', 'Huyện', 25),
(234, 'Huyện Yên Lập', 'Huyện', 25),
(235, 'Huyện Cẩm Khê', 'Huyện', 25),
(236, 'Huyện Tam Nông', 'Huyện', 25),
(237, 'Huyện Lâm Thao', 'Huyện', 25),
(238, 'Huyện Thanh Sơn', 'Huyện', 25),
(239, 'Huyện Thanh Thuỷ', 'Huyện', 25),
(240, 'Huyện Tân Sơn', 'Huyện', 25),
(243, 'Thành phố Vĩnh Yên', 'Thành phố', 26),
(244, 'Thị xã Phúc Yên', 'Thị xã', 26),
(246, 'Huyện Lập Thạch', 'Huyện', 26),
(247, 'Huyện Tam Dương', 'Huyện', 26),
(248, 'Huyện Tam Đảo', 'Huyện', 26),
(249, 'Huyện Bình Xuyên', 'Huyện', 26),
(250, 'Huyện Mê Linh', 'Huyện', 1),
(251, 'Huyện Yên Lạc', 'Huyện', 26),
(252, 'Huyện Vĩnh Tường', 'Huyện', 26),
(253, 'Huyện Sông Lô', 'Huyện', 26),
(256, 'Thành phố Bắc Ninh', 'Thành phố', 27),
(258, 'Huyện Yên Phong', 'Huyện', 27),
(259, 'Huyện Quế Võ', 'Huyện', 27),
(260, 'Huyện Tiên Du', 'Huyện', 27),
(261, 'Thị xã Từ Sơn', 'Thị xã', 27),
(262, 'Huyện Thuận Thành', 'Huyện', 27),
(263, 'Huyện Gia Bình', 'Huyện', 27),
(264, 'Huyện Lương Tài', 'Huyện', 27),
(268, 'Quận Hà Đông', 'Quận', 1),
(269, 'Thị xã Sơn Tây', 'Thị xã', 1),
(271, 'Huyện Ba Vì', 'Huyện', 1),
(272, 'Huyện Phúc Thọ', 'Huyện', 1),
(273, 'Huyện Đan Phượng', 'Huyện', 1),
(274, 'Huyện Hoài Đức', 'Huyện', 1),
(275, 'Huyện Quốc Oai', 'Huyện', 1),
(276, 'Huyện Thạch Thất', 'Huyện', 1),
(277, 'Huyện Chương Mỹ', 'Huyện', 1),
(278, 'Huyện Thanh Oai', 'Huyện', 1),
(279, 'Huyện Thường Tín', 'Huyện', 1),
(280, 'Huyện Phú Xuyên', 'Huyện', 1),
(281, 'Huyện Ứng Hòa', 'Huyện', 1),
(282, 'Huyện Mỹ Đức', 'Huyện', 1),
(288, 'Thành phố Hải Dương', 'Thành phố', 30),
(290, 'Thị xã Chí Linh', 'Thị xã', 30),
(291, 'Huyện Nam Sách', 'Huyện', 30),
(292, 'Huyện Kinh Môn', 'Huyện', 30),
(293, 'Huyện Kim Thành', 'Huyện', 30),
(294, 'Huyện Thanh Hà', 'Huyện', 30),
(295, 'Huyện Cẩm Giàng', 'Huyện', 30),
(296, 'Huyện Bình Giang', 'Huyện', 30),
(297, 'Huyện Gia Lộc', 'Huyện', 30),
(298, 'Huyện Tứ Kỳ', 'Huyện', 30),
(299, 'Huyện Ninh Giang', 'Huyện', 30),
(300, 'Huyện Thanh Miện', 'Huyện', 30),
(303, 'Quận Hồng Bàng', 'Quận', 31),
(304, 'Quận Ngô Quyền', 'Quận', 31),
(305, 'Quận Lê Chân', 'Quận', 31),
(306, 'Quận Hải An', 'Quận', 31),
(307, 'Quận Kiến An', 'Quận', 31),
(308, 'Quận Đồ Sơn', 'Quận', 31),
(309, 'Quận Dương Kinh', 'Quận', 31),
(311, 'Huyện Thuỷ Nguyên', 'Huyện', 31),
(312, 'Huyện An Dương', 'Huyện', 31),
(313, 'Huyện An Lão', 'Huyện', 31),
(314, 'Huyện Kiến Thuỵ', 'Huyện', 31),
(315, 'Huyện Tiên Lãng', 'Huyện', 31),
(316, 'Huyện Vĩnh Bảo', 'Huyện', 31),
(317, 'Huyện Cát Hải', 'Huyện', 31),
(318, 'Huyện Bạch Long Vĩ', 'Huyện', 31),
(323, 'Thành phố Hưng Yên', 'Thành phố', 33),
(325, 'Huyện Văn Lâm', 'Huyện', 33),
(326, 'Huyện Văn Giang', 'Huyện', 33),
(327, 'Huyện Yên Mỹ', 'Huyện', 33),
(328, 'Huyện Mỹ Hào', 'Huyện', 33),
(329, 'Huyện Ân Thi', 'Huyện', 33),
(330, 'Huyện Khoái Châu', 'Huyện', 33),
(331, 'Huyện Kim Động', 'Huyện', 33),
(332, 'Huyện Tiên Lữ', 'Huyện', 33),
(333, 'Huyện Phù Cừ', 'Huyện', 33),
(336, 'Thành phố Thái Bình', 'Thành phố', 34),
(338, 'Huyện Quỳnh Phụ', 'Huyện', 34),
(339, 'Huyện Hưng Hà', 'Huyện', 34),
(340, 'Huyện Đông Hưng', 'Huyện', 34),
(341, 'Huyện Thái Thụy', 'Huyện', 34),
(342, 'Huyện Tiền Hải', 'Huyện', 34),
(343, 'Huyện Kiến Xương', 'Huyện', 34),
(344, 'Huyện Vũ Thư', 'Huyện', 34),
(347, 'Thành phố Phủ Lý', 'Thành phố', 35),
(349, 'Huyện Duy Tiên', 'Huyện', 35),
(350, 'Huyện Kim Bảng', 'Huyện', 35),
(351, 'Huyện Thanh Liêm', 'Huyện', 35),
(352, 'Huyện Bình Lục', 'Huyện', 35),
(353, 'Huyện Lý Nhân', 'Huyện', 35),
(356, 'Thành phố Nam Định', 'Thành phố', 36),
(358, 'Huyện Mỹ Lộc', 'Huyện', 36),
(359, 'Huyện Vụ Bản', 'Huyện', 36),
(360, 'Huyện Ý Yên', 'Huyện', 36),
(361, 'Huyện Nghĩa Hưng', 'Huyện', 36),
(362, 'Huyện Nam Trực', 'Huyện', 36),
(363, 'Huyện Trực Ninh', 'Huyện', 36),
(364, 'Huyện Xuân Trường', 'Huyện', 36),
(365, 'Huyện Giao Thủy', 'Huyện', 36),
(366, 'Huyện Hải Hậu', 'Huyện', 36),
(369, 'Thành phố Ninh Bình', 'Thành phố', 37),
(370, 'Thành phố Tam Điệp', 'Thành phố', 37),
(372, 'Huyện Nho Quan', 'Huyện', 37),
(373, 'Huyện Gia Viễn', 'Huyện', 37),
(374, 'Huyện Hoa Lư', 'Huyện', 37),
(375, 'Huyện Yên Khánh', 'Huyện', 37),
(376, 'Huyện Kim Sơn', 'Huyện', 37),
(377, 'Huyện Yên Mô', 'Huyện', 37),
(380, 'Thành phố Thanh Hóa', 'Thành phố', 38),
(381, 'Thị xã Bỉm Sơn', 'Thị xã', 38),
(382, 'Thị xã Sầm Sơn', 'Thị xã', 38),
(384, 'Huyện Mường Lát', 'Huyện', 38),
(385, 'Huyện Quan Hóa', 'Huyện', 38),
(386, 'Huyện Bá Thước', 'Huyện', 38),
(387, 'Huyện Quan Sơn', 'Huyện', 38),
(388, 'Huyện Lang Chánh', 'Huyện', 38),
(389, 'Huyện Ngọc Lặc', 'Huyện', 38),
(390, 'Huyện Cẩm Thủy', 'Huyện', 38),
(391, 'Huyện Thạch Thành', 'Huyện', 38),
(392, 'Huyện Hà Trung', 'Huyện', 38),
(393, 'Huyện Vĩnh Lộc', 'Huyện', 38),
(394, 'Huyện Yên Định', 'Huyện', 38),
(395, 'Huyện Thọ Xuân', 'Huyện', 38),
(396, 'Huyện Thường Xuân', 'Huyện', 38),
(397, 'Huyện Triệu Sơn', 'Huyện', 38),
(398, 'Huyện Thiệu Hóa', 'Huyện', 38),
(399, 'Huyện Hoằng Hóa', 'Huyện', 38),
(400, 'Huyện Hậu Lộc', 'Huyện', 38),
(401, 'Huyện Nga Sơn', 'Huyện', 38),
(402, 'Huyện Như Xuân', 'Huyện', 38),
(403, 'Huyện Như Thanh', 'Huyện', 38),
(404, 'Huyện Nông Cống', 'Huyện', 38),
(405, 'Huyện Đông Sơn', 'Huyện', 38),
(406, 'Huyện Quảng Xương', 'Huyện', 38),
(407, 'Huyện Tĩnh Gia', 'Huyện', 38),
(412, 'Thành phố Vinh', 'Thành phố', 40),
(413, 'Thị xã Cửa Lò', 'Thị xã', 40),
(414, 'Thị xã Thái Hoà', 'Thị xã', 40),
(415, 'Huyện Quế Phong', 'Huyện', 40),
(416, 'Huyện Quỳ Châu', 'Huyện', 40),
(417, 'Huyện Kỳ Sơn', 'Huyện', 40),
(418, 'Huyện Tương Dương', 'Huyện', 40),
(419, 'Huyện Nghĩa Đàn', 'Huyện', 40),
(420, 'Huyện Quỳ Hợp', 'Huyện', 40),
(421, 'Huyện Quỳnh Lưu', 'Huyện', 40),
(422, 'Huyện Con Cuông', 'Huyện', 40),
(423, 'Huyện Tân Kỳ', 'Huyện', 40),
(424, 'Huyện Anh Sơn', 'Huyện', 40),
(425, 'Huyện Diễn Châu', 'Huyện', 40),
(426, 'Huyện Yên Thành', 'Huyện', 40),
(427, 'Huyện Đô Lương', 'Huyện', 40),
(428, 'Huyện Thanh Chương', 'Huyện', 40),
(429, 'Huyện Nghi Lộc', 'Huyện', 40),
(430, 'Huyện Nam Đàn', 'Huyện', 40),
(431, 'Huyện Hưng Nguyên', 'Huyện', 40),
(432, 'Thị xã Hoàng Mai', 'Thị xã', 40),
(436, 'Thành phố Hà Tĩnh', 'Thành phố', 42),
(437, 'Thị xã Hồng Lĩnh', 'Thị xã', 42),
(439, 'Huyện Hương Sơn', 'Huyện', 42),
(440, 'Huyện Đức Thọ', 'Huyện', 42),
(441, 'Huyện Vũ Quang', 'Huyện', 42),
(442, 'Huyện Nghi Xuân', 'Huyện', 42),
(443, 'Huyện Can Lộc', 'Huyện', 42),
(444, 'Huyện Hương Khê', 'Huyện', 42),
(445, 'Huyện Thạch Hà', 'Huyện', 42),
(446, 'Huyện Cẩm Xuyên', 'Huyện', 42),
(447, 'Huyện Kỳ Anh', 'Huyện', 42),
(448, 'Huyện Lộc Hà', 'Huyện', 42),
(449, 'Thị xã Kỳ Anh', 'Thị xã', 42),
(450, 'Thành Phố Đồng Hới', 'Thành phố', 44),
(452, 'Huyện Minh Hóa', 'Huyện', 44),
(453, 'Huyện Tuyên Hóa', 'Huyện', 44),
(454, 'Huyện Quảng Trạch', 'Thị xã', 44),
(455, 'Huyện Bố Trạch', 'Huyện', 44),
(456, 'Huyện Quảng Ninh', 'Huyện', 44),
(457, 'Huyện Lệ Thủy', 'Huyện', 44),
(458, 'Thị xã Ba Đồn', 'Huyện', 44),
(461, 'Thành phố Đông Hà', 'Thành phố', 45),
(462, 'Thị xã Quảng Trị', 'Thị xã', 45),
(464, 'Huyện Vĩnh Linh', 'Huyện', 45),
(465, 'Huyện Hướng Hóa', 'Huyện', 45),
(466, 'Huyện Gio Linh', 'Huyện', 45),
(467, 'Huyện Đa Krông', 'Huyện', 45),
(468, 'Huyện Cam Lộ', 'Huyện', 45),
(469, 'Huyện Triệu Phong', 'Huyện', 45),
(470, 'Huyện Hải Lăng', 'Huyện', 45),
(471, 'Huyện Cồn Cỏ', 'Huyện', 45),
(474, 'Thành phố Huế', 'Thành phố', 46),
(476, 'Huyện Phong Điền', 'Huyện', 46),
(477, 'Huyện Quảng Điền', 'Huyện', 46),
(478, 'Huyện Phú Vang', 'Huyện', 46),
(479, 'Thị xã Hương Thủy', 'Thị xã', 46),
(480, 'Thị xã Hương Trà', 'Thị xã', 46),
(481, 'Huyện A Lưới', 'Huyện', 46),
(482, 'Huyện Phú Lộc', 'Huyện', 46),
(483, 'Huyện Nam Đông', 'Huyện', 46),
(490, 'Quận Liên Chiểu', 'Quận', 48),
(491, 'Quận Thanh Khê', 'Quận', 48),
(492, 'Quận Hải Châu', 'Quận', 48),
(493, 'Quận Sơn Trà', 'Quận', 48),
(494, 'Quận Ngũ Hành Sơn', 'Quận', 48),
(495, 'Quận Cẩm Lệ', 'Quận', 48),
(497, 'Huyện Hòa Vang', 'Huyện', 48),
(498, 'Huyện Hoàng Sa', 'Huyện', 48),
(502, 'Thành phố Tam Kỳ', 'Thành phố', 49),
(503, 'Thành phố Hội An', 'Thành phố', 49),
(504, 'Huyện Tây Giang', 'Huyện', 49),
(505, 'Huyện Đông Giang', 'Huyện', 49),
(506, 'Huyện Đại Lộc', 'Huyện', 49),
(507, 'Thị xã Điện Bàn', 'Thị xã', 49),
(508, 'Huyện Duy Xuyên', 'Huyện', 49),
(509, 'Huyện Quế Sơn', 'Huyện', 49),
(510, 'Huyện Nam Giang', 'Huyện', 49),
(511, 'Huyện Phước Sơn', 'Huyện', 49),
(512, 'Huyện Hiệp Đức', 'Huyện', 49),
(513, 'Huyện Thăng Bình', 'Huyện', 49),
(514, 'Huyện Tiên Phước', 'Huyện', 49),
(515, 'Huyện Bắc Trà My', 'Huyện', 49),
(516, 'Huyện Nam Trà My', 'Huyện', 49),
(517, 'Huyện Núi Thành', 'Huyện', 49),
(518, 'Huyện Phú Ninh', 'Huyện', 49),
(519, 'Huyện Nông Sơn', 'Huyện', 49),
(522, 'Thành phố Quảng Ngãi', 'Thành phố', 51),
(524, 'Huyện Bình Sơn', 'Huyện', 51),
(525, 'Huyện Trà Bồng', 'Huyện', 51),
(526, 'Huyện Tây Trà', 'Huyện', 51),
(527, 'Huyện Sơn Tịnh', 'Huyện', 51),
(528, 'Huyện Tư Nghĩa', 'Huyện', 51),
(529, 'Huyện Sơn Hà', 'Huyện', 51),
(530, 'Huyện Sơn Tây', 'Huyện', 51),
(531, 'Huyện Minh Long', 'Huyện', 51),
(532, 'Huyện Nghĩa Hành', 'Huyện', 51),
(533, 'Huyện Mộ Đức', 'Huyện', 51),
(534, 'Huyện Đức Phổ', 'Huyện', 51),
(535, 'Huyện Ba Tơ', 'Huyện', 51),
(536, 'Huyện Lý Sơn', 'Huyện', 51),
(540, 'Thành phố Qui Nhơn', 'Thành phố', 52),
(542, 'Huyện An Lão', 'Huyện', 52),
(543, 'Huyện Hoài Nhơn', 'Huyện', 52),
(544, 'Huyện Hoài Ân', 'Huyện', 52),
(545, 'Huyện Phù Mỹ', 'Huyện', 52),
(546, 'Huyện Vĩnh Thạnh', 'Huyện', 52),
(547, 'Huyện Tây Sơn', 'Huyện', 52),
(548, 'Huyện Phù Cát', 'Huyện', 52),
(549, 'Thị xã An Nhơn', 'Thị xã', 52),
(550, 'Huyện Tuy Phước', 'Huyện', 52),
(551, 'Huyện Vân Canh', 'Huyện', 52),
(555, 'Thành phố Tuy Hoà', 'Thành phố', 54),
(557, 'Thị xã Sông Cầu', 'Thị xã', 54),
(558, 'Huyện Đồng Xuân', 'Huyện', 54),
(559, 'Huyện Tuy An', 'Huyện', 54),
(560, 'Huyện Sơn Hòa', 'Huyện', 54),
(561, 'Huyện Sông Hinh', 'Huyện', 54),
(562, 'Huyện Tây Hoà', 'Huyện', 54),
(563, 'Huyện Phú Hoà', 'Huyện', 54),
(564, 'Huyện Đông Hòa', 'Huyện', 54),
(568, 'Thành phố Nha Trang', 'Thành phố', 56),
(569, 'Thành phố Cam Ranh', 'Thành phố', 56),
(570, 'Huyện Cam Lâm', 'Huyện', 56),
(571, 'Huyện Vạn Ninh', 'Huyện', 56),
(572, 'Thị xã Ninh Hòa', 'Thị xã', 56),
(573, 'Huyện Khánh Vĩnh', 'Huyện', 56),
(574, 'Huyện Diên Khánh', 'Huyện', 56),
(575, 'Huyện Khánh Sơn', 'Huyện', 56),
(576, 'Huyện Trường Sa', 'Huyện', 56),
(582, 'Thành phố Phan Rang-Tháp Chàm', 'Thành phố', 58),
(584, 'Huyện Bác Ái', 'Huyện', 58),
(585, 'Huyện Ninh Sơn', 'Huyện', 58),
(586, 'Huyện Ninh Hải', 'Huyện', 58),
(587, 'Huyện Ninh Phước', 'Huyện', 58),
(588, 'Huyện Thuận Bắc', 'Huyện', 58),
(589, 'Huyện Thuận Nam', 'Huyện', 58),
(593, 'Thành phố Phan Thiết', 'Thành phố', 60),
(594, 'Thị xã La Gi', 'Thị xã', 60),
(595, 'Huyện Tuy Phong', 'Huyện', 60),
(596, 'Huyện Bắc Bình', 'Huyện', 60),
(597, 'Huyện Hàm Thuận Bắc', 'Huyện', 60),
(598, 'Huyện Hàm Thuận Nam', 'Huyện', 60),
(599, 'Huyện Tánh Linh', 'Huyện', 60),
(600, 'Huyện Đức Linh', 'Huyện', 60),
(601, 'Huyện Hàm Tân', 'Huyện', 60),
(602, 'Huyện Phú Quí', 'Huyện', 60),
(608, 'Thành phố Kon Tum', 'Thành phố', 62),
(610, 'Huyện Đắk Glei', 'Huyện', 62),
(611, 'Huyện Ngọc Hồi', 'Huyện', 62),
(612, 'Huyện Đắk Tô', 'Huyện', 62),
(613, 'Huyện Kon Plông', 'Huyện', 62),
(614, 'Huyện Kon Rẫy', 'Huyện', 62),
(615, 'Huyện Đắk Hà', 'Huyện', 62),
(616, 'Huyện Sa Thầy', 'Huyện', 62),
(617, 'Huyện Tu Mơ Rông', 'Huyện', 62),
(618, 'Huyện Ia H\' Drai', 'Huyện', 62),
(622, 'Thành phố Pleiku', 'Thành phố', 64),
(623, 'Thị xã An Khê', 'Thị xã', 64),
(624, 'Thị xã Ayun Pa', 'Thị xã', 64),
(625, 'Huyện KBang', 'Huyện', 64),
(626, 'Huyện Đăk Đoa', 'Huyện', 64),
(627, 'Huyện Chư Păh', 'Huyện', 64),
(628, 'Huyện Ia Grai', 'Huyện', 64),
(629, 'Huyện Mang Yang', 'Huyện', 64),
(630, 'Huyện Kông Chro', 'Huyện', 64),
(631, 'Huyện Đức Cơ', 'Huyện', 64),
(632, 'Huyện Chư Prông', 'Huyện', 64),
(633, 'Huyện Chư Sê', 'Huyện', 64),
(634, 'Huyện Đăk Pơ', 'Huyện', 64),
(635, 'Huyện Ia Pa', 'Huyện', 64),
(637, 'Huyện Krông Pa', 'Huyện', 64),
(638, 'Huyện Phú Thiện', 'Huyện', 64),
(639, 'Huyện Chư Pưh', 'Huyện', 64),
(643, 'Thành phố Buôn Ma Thuột', 'Thành phố', 66),
(644, 'Thị Xã Buôn Hồ', 'Thị xã', 66),
(645, 'Huyện Ea H\'leo', 'Huyện', 66),
(646, 'Huyện Ea Súp', 'Huyện', 66),
(647, 'Huyện Buôn Đôn', 'Huyện', 66),
(648, 'Huyện Cư M\'gar', 'Huyện', 66),
(649, 'Huyện Krông Búk', 'Huyện', 66),
(650, 'Huyện Krông Năng', 'Huyện', 66),
(651, 'Huyện Ea Kar', 'Huyện', 66),
(652, 'Huyện M\'Đrắk', 'Huyện', 66),
(653, 'Huyện Krông Bông', 'Huyện', 66),
(654, 'Huyện Krông Pắc', 'Huyện', 66),
(655, 'Huyện Krông A Na', 'Huyện', 66),
(656, 'Huyện Lắk', 'Huyện', 66),
(657, 'Huyện Cư Kuin', 'Huyện', 66),
(660, 'Thị xã Gia Nghĩa', 'Thị xã', 67),
(661, 'Huyện Đăk Glong', 'Huyện', 67),
(662, 'Huyện Cư Jút', 'Huyện', 67),
(663, 'Huyện Đắk Mil', 'Huyện', 67),
(664, 'Huyện Krông Nô', 'Huyện', 67),
(665, 'Huyện Đắk Song', 'Huyện', 67),
(666, 'Huyện Đắk R\'Lấp', 'Huyện', 67),
(667, 'Huyện Tuy Đức', 'Huyện', 67),
(672, 'Thành phố Đà Lạt', 'Thành phố', 68),
(673, 'Thành phố Bảo Lộc', 'Thành phố', 68),
(674, 'Huyện Đam Rông', 'Huyện', 68),
(675, 'Huyện Lạc Dương', 'Huyện', 68),
(676, 'Huyện Lâm Hà', 'Huyện', 68),
(677, 'Huyện Đơn Dương', 'Huyện', 68),
(678, 'Huyện Đức Trọng', 'Huyện', 68),
(679, 'Huyện Di Linh', 'Huyện', 68),
(680, 'Huyện Bảo Lâm', 'Huyện', 68),
(681, 'Huyện Đạ Huoai', 'Huyện', 68),
(682, 'Huyện Đạ Tẻh', 'Huyện', 68),
(683, 'Huyện Cát Tiên', 'Huyện', 68),
(688, 'Thị xã Phước Long', 'Thị xã', 70),
(689, 'Thị xã Đồng Xoài', 'Thị xã', 70),
(690, 'Thị xã Bình Long', 'Thị xã', 70),
(691, 'Huyện Bù Gia Mập', 'Huyện', 70),
(692, 'Huyện Lộc Ninh', 'Huyện', 70),
(693, 'Huyện Bù Đốp', 'Huyện', 70),
(694, 'Huyện Hớn Quản', 'Huyện', 70),
(695, 'Huyện Đồng Phú', 'Huyện', 70),
(696, 'Huyện Bù Đăng', 'Huyện', 70),
(697, 'Huyện Chơn Thành', 'Huyện', 70),
(698, 'Huyện Phú Riềng', 'Huyện', 70),
(703, 'Thành phố Tây Ninh', 'Thành phố', 72),
(705, 'Huyện Tân Biên', 'Huyện', 72),
(706, 'Huyện Tân Châu', 'Huyện', 72),
(707, 'Huyện Dương Minh Châu', 'Huyện', 72),
(708, 'Huyện Châu Thành', 'Huyện', 72),
(709, 'Huyện Hòa Thành', 'Huyện', 72),
(710, 'Huyện Gò Dầu', 'Huyện', 72),
(711, 'Huyện Bến Cầu', 'Huyện', 72),
(712, 'Huyện Trảng Bàng', 'Huyện', 72),
(718, 'Thành phố Thủ Dầu Một', 'Thành phố', 74),
(719, 'Huyện Bàu Bàng', 'Huyện', 74),
(720, 'Huyện Dầu Tiếng', 'Huyện', 74),
(721, 'Thị xã Bến Cát', 'Thị xã', 74),
(722, 'Huyện Phú Giáo', 'Huyện', 74),
(723, 'Thị xã Tân Uyên', 'Thị xã', 74),
(724, 'Thị xã Dĩ An', 'Thị xã', 74),
(725, 'Thị xã Thuận An', 'Thị xã', 74),
(726, 'Huyện Bắc Tân Uyên', 'Huyện', 74),
(731, 'Thành phố Biên Hòa', 'Thành phố', 75),
(732, 'Thị xã Long Khánh', 'Thị xã', 75),
(734, 'Huyện Tân Phú', 'Huyện', 75),
(735, 'Huyện Vĩnh Cửu', 'Huyện', 75),
(736, 'Huyện Định Quán', 'Huyện', 75),
(737, 'Huyện Trảng Bom', 'Huyện', 75),
(738, 'Huyện Thống Nhất', 'Huyện', 75),
(739, 'Huyện Cẩm Mỹ', 'Huyện', 75),
(740, 'Huyện Long Thành', 'Huyện', 75),
(741, 'Huyện Xuân Lộc', 'Huyện', 75),
(742, 'Huyện Nhơn Trạch', 'Huyện', 75),
(747, 'Thành phố Vũng Tàu', 'Thành phố', 77),
(748, 'Thành phố Bà Rịa', 'Thành phố', 77),
(750, 'Huyện Châu Đức', 'Huyện', 77),
(751, 'Huyện Xuyên Mộc', 'Huyện', 77),
(752, 'Huyện Long Điền', 'Huyện', 77),
(753, 'Huyện Đất Đỏ', 'Huyện', 77),
(754, 'Huyện Tân Thành', 'Huyện', 77),
(755, 'Huyện Côn Đảo', 'Huyện', 77),
(760, 'Quận 1', 'Quận', 79),
(761, 'Quận 12', 'Quận', 79),
(762, 'Quận Thủ Đức', 'Quận', 79),
(763, 'Quận 9', 'Quận', 79),
(764, 'Quận Gò Vấp', 'Quận', 79),
(765, 'Quận Bình Thạnh', 'Quận', 79),
(766, 'Quận Tân Bình', 'Quận', 79),
(767, 'Quận Tân Phú', 'Quận', 79),
(768, 'Quận Phú Nhuận', 'Quận', 79),
(769, 'Quận 2', 'Quận', 79),
(770, 'Quận 3', 'Quận', 79),
(771, 'Quận 10', 'Quận', 79),
(772, 'Quận 11', 'Quận', 79),
(773, 'Quận 4', 'Quận', 79),
(774, 'Quận 5', 'Quận', 79),
(775, 'Quận 6', 'Quận', 79),
(776, 'Quận 8', 'Quận', 79),
(777, 'Quận Bình Tân', 'Quận', 79),
(778, 'Quận 7', 'Quận', 79),
(783, 'Huyện Củ Chi', 'Huyện', 79),
(784, 'Huyện Hóc Môn', 'Huyện', 79),
(785, 'Huyện Bình Chánh', 'Huyện', 79),
(786, 'Huyện Nhà Bè', 'Huyện', 79),
(787, 'Huyện Cần Giờ', 'Huyện', 79),
(794, 'Thành phố Tân An', 'Thành phố', 80),
(795, 'Thị xã Kiến Tường', 'Thị xã', 80),
(796, 'Huyện Tân Hưng', 'Huyện', 80),
(797, 'Huyện Vĩnh Hưng', 'Huyện', 80),
(798, 'Huyện Mộc Hóa', 'Huyện', 80),
(799, 'Huyện Tân Thạnh', 'Huyện', 80),
(800, 'Huyện Thạnh Hóa', 'Huyện', 80),
(801, 'Huyện Đức Huệ', 'Huyện', 80),
(802, 'Huyện Đức Hòa', 'Huyện', 80),
(803, 'Huyện Bến Lức', 'Huyện', 80),
(804, 'Huyện Thủ Thừa', 'Huyện', 80),
(805, 'Huyện Tân Trụ', 'Huyện', 80),
(806, 'Huyện Cần Đước', 'Huyện', 80),
(807, 'Huyện Cần Giuộc', 'Huyện', 80),
(808, 'Huyện Châu Thành', 'Huyện', 80),
(815, 'Thành phố Mỹ Tho', 'Thành phố', 82),
(816, 'Thị xã Gò Công', 'Thị xã', 82),
(817, 'Thị xã Cai Lậy', 'Huyện', 82),
(818, 'Huyện Tân Phước', 'Huyện', 82),
(819, 'Huyện Cái Bè', 'Huyện', 82),
(820, 'Huyện Cai Lậy', 'Thị xã', 82),
(821, 'Huyện Châu Thành', 'Huyện', 82),
(822, 'Huyện Chợ Gạo', 'Huyện', 82),
(823, 'Huyện Gò Công Tây', 'Huyện', 82),
(824, 'Huyện Gò Công Đông', 'Huyện', 82),
(825, 'Huyện Tân Phú Đông', 'Huyện', 82),
(829, 'Thành phố Bến Tre', 'Thành phố', 83),
(831, 'Huyện Châu Thành', 'Huyện', 83),
(832, 'Huyện Chợ Lách', 'Huyện', 83),
(833, 'Huyện Mỏ Cày Nam', 'Huyện', 83),
(834, 'Huyện Giồng Trôm', 'Huyện', 83),
(835, 'Huyện Bình Đại', 'Huyện', 83),
(836, 'Huyện Ba Tri', 'Huyện', 83),
(837, 'Huyện Thạnh Phú', 'Huyện', 83),
(838, 'Huyện Mỏ Cày Bắc', 'Huyện', 83),
(842, 'Thành phố Trà Vinh', 'Thành phố', 84),
(844, 'Huyện Càng Long', 'Huyện', 84),
(845, 'Huyện Cầu Kè', 'Huyện', 84),
(846, 'Huyện Tiểu Cần', 'Huyện', 84),
(847, 'Huyện Châu Thành', 'Huyện', 84),
(848, 'Huyện Cầu Ngang', 'Huyện', 84),
(849, 'Huyện Trà Cú', 'Huyện', 84),
(850, 'Huyện Duyên Hải', 'Huyện', 84),
(851, 'Thị xã Duyên Hải', 'Thị xã', 84),
(855, 'Thành phố Vĩnh Long', 'Thành phố', 86),
(857, 'Huyện Long Hồ', 'Huyện', 86),
(858, 'Huyện Mang Thít', 'Huyện', 86),
(859, 'Huyện  Vũng Liêm', 'Huyện', 86),
(860, 'Huyện Tam Bình', 'Huyện', 86),
(861, 'Thị xã Bình Minh', 'Thị xã', 86),
(862, 'Huyện Trà Ôn', 'Huyện', 86),
(863, 'Huyện Bình Tân', 'Huyện', 86),
(866, 'Thành phố Cao Lãnh', 'Thành phố', 87),
(867, 'Thành phố Sa Đéc', 'Thành phố', 87),
(868, 'Thị xã Hồng Ngự', 'Thị xã', 87),
(869, 'Huyện Tân Hồng', 'Huyện', 87),
(870, 'Huyện Hồng Ngự', 'Huyện', 87),
(871, 'Huyện Tam Nông', 'Huyện', 87),
(872, 'Huyện Tháp Mười', 'Huyện', 87),
(873, 'Huyện Cao Lãnh', 'Huyện', 87),
(874, 'Huyện Thanh Bình', 'Huyện', 87),
(875, 'Huyện Lấp Vò', 'Huyện', 87),
(876, 'Huyện Lai Vung', 'Huyện', 87),
(877, 'Huyện Châu Thành', 'Huyện', 87),
(883, 'Thành phố Long Xuyên', 'Thành phố', 89),
(884, 'Thành phố Châu Đốc', 'Thành phố', 89),
(886, 'Huyện An Phú', 'Huyện', 89),
(887, 'Thị xã Tân Châu', 'Thị xã', 89),
(888, 'Huyện Phú Tân', 'Huyện', 89),
(889, 'Huyện Châu Phú', 'Huyện', 89),
(890, 'Huyện Tịnh Biên', 'Huyện', 89),
(891, 'Huyện Tri Tôn', 'Huyện', 89),
(892, 'Huyện Châu Thành', 'Huyện', 89),
(893, 'Huyện Chợ Mới', 'Huyện', 89),
(894, 'Huyện Thoại Sơn', 'Huyện', 89),
(899, 'Thành phố Rạch Giá', 'Thành phố', 91),
(900, 'Thị xã Hà Tiên', 'Thị xã', 91),
(902, 'Huyện Kiên Lương', 'Huyện', 91),
(903, 'Huyện Hòn Đất', 'Huyện', 91),
(904, 'Huyện Tân Hiệp', 'Huyện', 91),
(905, 'Huyện Châu Thành', 'Huyện', 91),
(906, 'Huyện Giồng Riềng', 'Huyện', 91),
(907, 'Huyện Gò Quao', 'Huyện', 91),
(908, 'Huyện An Biên', 'Huyện', 91),
(909, 'Huyện An Minh', 'Huyện', 91),
(910, 'Huyện Vĩnh Thuận', 'Huyện', 91),
(911, 'Huyện Phú Quốc', 'Huyện', 91),
(912, 'Huyện Kiên Hải', 'Huyện', 91),
(913, 'Huyện U Minh Thượng', 'Huyện', 91),
(914, 'Huyện Giang Thành', 'Huyện', 91),
(916, 'Quận Ninh Kiều', 'Quận', 92),
(917, 'Quận Ô Môn', 'Quận', 92),
(918, 'Quận Bình Thuỷ', 'Quận', 92),
(919, 'Quận Cái Răng', 'Quận', 92),
(923, 'Quận Thốt Nốt', 'Quận', 92),
(924, 'Huyện Vĩnh Thạnh', 'Huyện', 92),
(925, 'Huyện Cờ Đỏ', 'Huyện', 92),
(926, 'Huyện Phong Điền', 'Huyện', 92),
(927, 'Huyện Thới Lai', 'Huyện', 92),
(930, 'Thành phố Vị Thanh', 'Thành phố', 93),
(931, 'Thị xã Ngã Bảy', 'Thị xã', 93),
(932, 'Huyện Châu Thành A', 'Huyện', 93),
(933, 'Huyện Châu Thành', 'Huyện', 93),
(934, 'Huyện Phụng Hiệp', 'Huyện', 93),
(935, 'Huyện Vị Thuỷ', 'Huyện', 93),
(936, 'Huyện Long Mỹ', 'Huyện', 93),
(937, 'Thị xã Long Mỹ', 'Thị xã', 93),
(941, 'Thành phố Sóc Trăng', 'Thành phố', 94),
(942, 'Huyện Châu Thành', 'Huyện', 94),
(943, 'Huyện Kế Sách', 'Huyện', 94),
(944, 'Huyện Mỹ Tú', 'Huyện', 94),
(945, 'Huyện Cù Lao Dung', 'Huyện', 94),
(946, 'Huyện Long Phú', 'Huyện', 94),
(947, 'Huyện Mỹ Xuyên', 'Huyện', 94),
(948, 'Thị xã Ngã Năm', 'Thị xã', 94),
(949, 'Huyện Thạnh Trị', 'Huyện', 94),
(950, 'Thị xã Vĩnh Châu', 'Thị xã', 94),
(951, 'Huyện Trần Đề', 'Huyện', 94),
(954, 'Thành phố Bạc Liêu', 'Thành phố', 95),
(956, 'Huyện Hồng Dân', 'Huyện', 95),
(957, 'Huyện Phước Long', 'Huyện', 95),
(958, 'Huyện Vĩnh Lợi', 'Huyện', 95),
(959, 'Thị xã Giá Rai', 'Thị xã', 95),
(960, 'Huyện Đông Hải', 'Huyện', 95),
(961, 'Huyện Hoà Bình', 'Huyện', 95),
(964, 'Thành phố Cà Mau', 'Thành phố', 96),
(966, 'Huyện U Minh', 'Huyện', 96),
(967, 'Huyện Thới Bình', 'Huyện', 96),
(968, 'Huyện Trần Văn Thời', 'Huyện', 96),
(969, 'Huyện Cái Nước', 'Huyện', 96),
(970, 'Huyện Đầm Dơi', 'Huyện', 96),
(971, 'Huyện Năm Căn', 'Huyện', 96),
(972, 'Huyện Phú Tân', 'Huyện', 96),
(973, 'Huyện Ngọc Hiển', 'Huyện', 96);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `image_id` bigint UNSIGNED NOT NULL,
  `product_id` int NOT NULL,
  `image_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`image_id`, `product_id`, `image_name`, `created_at`, `updated_at`) VALUES
(1, 1, '/storage/images_product/DkaPBH68J9_guong-decor-hien-dai-gs-044-9.jpg', '2021-12-21 08:27:26', '2021-12-21 08:27:26'),
(2, 1, '/storage/images_product/ZID0i7qmtz_guong-decor-hien-dai-gs-044-10.jpg', '2021-12-21 08:27:26', '2021-12-21 08:27:26'),
(3, 1, '/storage/images_product/Ei2EjFKHFk_guong-decor-hien-dai-gs-044-11.jpg', '2021-12-21 08:27:26', '2021-12-21 08:27:26'),
(4, 2, '/storage/images_product/x6K3SURf88_den-chum-nhap-khau-trang-tri-phong-khach-dcc-135-4.jpg', '2021-12-21 08:31:26', '2021-12-21 08:31:26'),
(5, 2, '/storage/images_product/Twf8jUAmNh_den-chum-nhap-khau-trang-tri-phong-khach-dcc-135-11.jpg', '2021-12-21 08:31:26', '2021-12-21 08:31:26'),
(6, 2, '/storage/images_product/6Ngstj4T0K_den-chum-nhap-khau-trang-tri-phong-khach-dcc-135-13.jpg', '2021-12-21 08:31:26', '2021-12-21 08:31:26'),
(7, 3, '/storage/images_product/MD6kulqucT_den-gan-tuong-ma-vang-dgt-003-.jpg', '2021-12-21 08:33:59', '2021-12-21 08:33:59'),
(8, 3, '/storage/images_product/vGITJ6ZNCF_den-gan-tuong-ma-vang-dgt-003-1.jpg', '2021-12-21 08:33:59', '2021-12-21 08:33:59'),
(9, 3, '/storage/images_product/amx01sbhv9_den-gan-tuong-ma-vang-dgt-003-4.jpg', '2021-12-21 08:33:59', '2021-12-21 08:33:59'),
(10, 4, '/storage/images_product/9LIE3Y0C1Z_den-trang-tri-phong-ngu-nhap-khau-cao-cap-dn.jpg', '2021-12-21 08:39:31', '2021-12-21 08:39:31'),
(11, 4, '/storage/images_product/Um2hl5MtYz_den-trang-tri-phong-ngu-nhap-khau-cao-cap-dn-086-1.jpg', '2021-12-21 08:39:31', '2021-12-21 08:39:31'),
(12, 5, '/storage/images_product/qMYg1V7Z3K_tranh-decor-hien-dai-trang-tri-phong-khach-ts-941-10.jpg', '2021-12-21 08:41:41', '2021-12-21 08:41:41'),
(13, 5, '/storage/images_product/YbipzxeRED_tranh-decor-hien-dai-trang-tri-phong-khach-ts-941-11.jpg', '2021-12-21 08:41:41', '2021-12-21 08:41:41'),
(14, 5, '/storage/images_product/4vbkhWZX8C_tranh-decor-hien-dai-trang-tri-phong-khach-ts-941-12.jpg', '2021-12-21 08:41:41', '2021-12-21 08:41:41'),
(15, 6, '/storage/images_product/3qzFP6xGrt_sofa-da-kieu-dang-hien-dai-sf-022-1.jpg', '2021-12-21 08:43:51', '2021-12-21 08:43:51'),
(16, 6, '/storage/images_product/s23UcixxEW_sofa-da-kieu-dang-hien-dai-sf-022-3.jpg', '2021-12-21 08:43:51', '2021-12-21 08:43:51'),
(17, 6, '/storage/images_product/ghCtxTfLBN_sofa-da-kieu-dang-hien-dai-sf-022-6.jpg', '2021-12-21 08:43:51', '2021-12-21 08:43:51'),
(18, 7, '/storage/images_product/kNXuWrvLze_den-chum-nghe-thuat-thong-tang-dtt-013-1.jpg', '2021-12-21 09:55:11', '2021-12-21 09:55:11'),
(19, 7, '/storage/images_product/BBLZbw3I9m_den-chum-nghe-thuat-thong-tang-dtt-013-2.jpg', '2021-12-21 09:55:11', '2021-12-21 09:55:11'),
(20, 7, '/storage/images_product/C3bZLi4Gqb_den-chum-nghe-thuat-thong-tang-dtt-013-12.jpg', '2021-12-21 09:55:11', '2021-12-21 09:55:11'),
(21, 8, '/storage/images_product/f7KmiSvBJp_den-ban-nghe-thuat-trang-tri-phong-ngu-dn-093.jpg', '2021-12-21 09:58:13', '2021-12-21 09:58:13'),
(22, 8, '/storage/images_product/vwxNxjLnvH_den-ban-nghe-thuat-trang-tri-phong-ngu-dn-093-1.jpg', '2021-12-21 09:58:13', '2021-12-21 09:58:13'),
(23, 8, '/storage/images_product/uYG3uoC1XP_den-ban-nghe-thuat-trang-tri-phong-ngu-dn-093-3.jpg', '2021-12-21 09:58:13', '2021-12-21 09:58:13'),
(24, 9, '/storage/images_product/OUZ5BezLon_tranh-noi-3d-treo-tuong-ton-ngo-khong-tsa-110-2.jpg', '2021-12-21 10:01:23', '2021-12-21 10:01:23'),
(25, 9, '/storage/images_product/EiLuFRD2qt_tranh-noi-3d-treo-tuong-ton-ngo-khong-tsa-110-4.jpg', '2021-12-21 10:01:23', '2021-12-21 10:01:23'),
(26, 9, '/storage/images_product/pAJlX3KX7F_tranh-noi-3d-treo-tuong-ton-ngo-khong-tsa-110-7.jpg', '2021-12-21 10:01:23', '2021-12-21 10:01:23'),
(27, 10, '/storage/images_product/zJSEnWb9uO_tranh-decor-3d-trang-tri-noi-that-phong-khach-tsa-102-1.jpg', '2021-12-21 10:05:49', '2021-12-21 10:05:49'),
(28, 10, '/storage/images_product/2JXHHx6kqO_tranh-decor-3d-trang-tri-noi-that-phong-khach-tsa-102-3.jpg', '2021-12-21 10:05:49', '2021-12-21 10:05:49'),
(29, 10, '/storage/images_product/heSc6r3Bw3_tranh-decor-3d-trang-tri-noi-that-phong-khach-tsa-102-4.jpg', '2021-12-21 10:05:49', '2021-12-21 10:05:49'),
(30, 11, '/storage/images_product/Ww50kcl2UG_guong-trang-tri-nhap-khau-gs-036.jpg', '2021-12-21 10:08:17', '2021-12-21 10:08:17'),
(31, 11, '/storage/images_product/Ha9gEOax44_guong-trang-tri-nhap-khau-gs-036-3.jpg', '2021-12-21 10:08:17', '2021-12-21 10:08:17'),
(32, 11, '/storage/images_product/R0vEayAhto_guong-trang-tri-nhap-khau-gs-036-4.jpg', '2021-12-21 10:08:17', '2021-12-21 10:08:17'),
(33, 12, '/storage/images_product/30GwIZCZAC_den-led-trang-tri-ban-an-led-046-1.jpg', '2021-12-21 10:10:52', '2021-12-21 10:10:52'),
(34, 12, '/storage/images_product/BSQskAGt9u_den-led-trang-tri-ban-an-led-046-5.jpg', '2021-12-21 10:10:52', '2021-12-21 10:10:52'),
(35, 12, '/storage/images_product/ISiKLONhVY_den-led-trang-tri-ban-an-led-046-6.jpg', '2021-12-21 10:10:52', '2021-12-21 10:10:52'),
(36, 13, '/storage/images_product/DZ0cap9zNq_sofa-da-hien-dai-nhap-khau-sf-023-1.jpg', '2021-12-21 10:12:50', '2021-12-21 10:12:50'),
(37, 13, '/storage/images_product/DQgWOLhvvg_sofa-da-hien-dai-nhap-khau-sf-023-3.jpg', '2021-12-21 10:12:50', '2021-12-21 10:12:50'),
(38, 13, '/storage/images_product/4bm9B8z7Os_sofa-da-hien-dai-nhap-khau-sf-023-7.jpg', '2021-12-21 10:12:50', '2021-12-21 10:12:50'),
(39, 14, '/storage/images_product/bfq8OKBjnM_den-chum-pha-le-la-trang-tri-phong-khach-dcc-156-1.jpg', '2021-12-21 10:15:10', '2021-12-21 10:15:10'),
(40, 14, '/storage/images_product/6H0lQ5EWI3_den-chum-pha-le-la-trang-tri-phong-khach-dcc-156-5.jpg', '2021-12-21 10:15:10', '2021-12-21 10:15:10'),
(41, 14, '/storage/images_product/gZKGguontu_den-chum-pha-le-la-trang-tri-phong-khach-dcc-156-10.jpg', '2021-12-21 10:15:10', '2021-12-21 10:15:10'),
(42, 15, '/storage/images_product/5BS5cWVTlG_bo-3-tranh-trang-guong-treo-tuong-ttga-031.jpg', '2021-12-21 10:18:16', '2021-12-21 10:18:16'),
(43, 15, '/storage/images_product/VtwV7jmsF8_bo-3-tranh-trang-guong-treo-tuong-ttga-031-1.jpg', '2021-12-21 10:18:16', '2021-12-21 10:18:16'),
(44, 15, '/storage/images_product/FM8FaR5L4C_bo-3-tranh-trang-guong-treo-tuong-ttga-031-3.jpg', '2021-12-21 10:18:16', '2021-12-21 10:18:16'),
(45, 16, '/storage/images_product/fHBmMokudC_tranh-noi-3d-co-gai-trang-tri-phong-khach-tsa-108-1.jpg', '2021-12-21 10:20:24', '2021-12-21 10:20:24'),
(46, 16, '/storage/images_product/BeuTAr7pZw_tranh-noi-3d-co-gai-trang-tri-phong-khach-tsa-108-2.jpg', '2021-12-21 10:20:24', '2021-12-21 10:20:24'),
(47, 16, '/storage/images_product/4E3kSGk6GR_tranh-noi-3d-co-gai-trang-tri-phong-khach-tsa-108-4.jpg', '2021-12-21 10:20:24', '2021-12-21 10:20:24'),
(48, 17, '/storage/images_product/1LIM3zQoFA_den-ban-hien-dai-cao-cap-dn-089-1.jpg', '2021-12-21 10:23:24', '2021-12-21 10:23:24'),
(49, 17, '/storage/images_product/L5OE7XydVV_den-ban-hien-dai-cao-cap-dn-089-2.jpg', '2021-12-21 10:23:24', '2021-12-21 10:23:24'),
(50, 17, '/storage/images_product/cbG0mhB6yZ_den-ban-hien-dai-cao-cap-dn-089-3.jpg', '2021-12-21 10:23:24', '2021-12-21 10:23:24'),
(51, 18, '/storage/images_product/2VTsCp9wS0_den-chum-nghe-thuat-cao-cap-dcc-130-2.jpg', '2021-12-21 10:26:09', '2021-12-21 10:26:09'),
(52, 18, '/storage/images_product/cu5z80OrtD_den-chum-nghe-thuat-cao-cap-dcc-130-4.jpg', '2021-12-21 10:26:09', '2021-12-21 10:26:09'),
(53, 18, '/storage/images_product/TBTq0vnzz9_den-chum-nghe-thuat-cao-cap-dcc-130-10.jpg', '2021-12-21 10:26:09', '2021-12-21 10:26:09'),
(54, 19, '/storage/images_product/zkxiNth0xf_sofa-nhap-khau-phong-khach-hien-dai-sf-009-10.jpg', '2021-12-21 10:28:38', '2021-12-21 10:28:38'),
(55, 19, '/storage/images_product/NGdIm9vnDj_sofa-nhap-khau-phong-khach-hien-dai-sf-009-11.jpg', '2021-12-21 10:28:38', '2021-12-21 10:28:38'),
(56, 19, '/storage/images_product/gbhglX3DAN_sofa-nhap-khau-phong-khach-hien-dai-sf-009-12.jpg', '2021-12-21 10:28:38', '2021-12-21 10:28:38'),
(57, 20, '/storage/images_product/V3OrabJ7Op_bo-tranh-3d-nghe-thuat-trang-tri-phong-khach-tsa-086-1 (1) - Copy.jpg', '2021-12-21 10:32:21', '2021-12-21 10:32:21'),
(58, 20, '/storage/images_product/CFNPjHhfLP_bo-tranh-3d-nghe-thuat-trang-tri-phong-khach-tsa-086-1.jpg', '2021-12-21 10:32:21', '2021-12-21 10:32:21'),
(59, 20, '/storage/images_product/2ZvUBc16zW_bo-tranh-3d-nghe-thuat-trang-tri-phong-khach-tsa-086-4.jpg', '2021-12-21 10:32:21', '2021-12-21 10:32:21'),
(60, 21, '/storage/images_product/Si9MhX69Qj_den-chum-dong-co-dien-sang-trong-dcda-009-1.jpg', '2021-12-21 19:28:53', '2021-12-21 19:28:53'),
(61, 21, '/storage/images_product/iOUbHcMJQD_den-chum-dong-co-dien-sang-trong-dcda-009-2.jpg', '2021-12-21 19:28:53', '2021-12-21 19:28:53'),
(62, 21, '/storage/images_product/UDrGAk0zyy_den-chum-dong-co-dien-sang-trong-dcda-009-3.jpg', '2021-12-21 19:28:53', '2021-12-21 19:28:53'),
(63, 22, '/storage/images_product/0iwNas0J5e_den-chum-trang-tri-tan-co-dien-dcda-003-1.jpg', '2021-12-21 19:32:09', '2021-12-21 19:32:09'),
(64, 22, '/storage/images_product/WbXIa9Ms3m_den-chum-trang-tri-tan-co-dien-dcda-003-2.jpg', '2021-12-21 19:32:09', '2021-12-21 19:32:09'),
(65, 22, '/storage/images_product/3uWuFHckxw_den-chum-trang-tri-tan-co-dien-dcda-003-3.jpg', '2021-12-21 19:32:09', '2021-12-21 19:32:09'),
(66, 23, '/storage/images_product/TnoGKbPccp_den-chum-nghe-thuat-cao-cap-dcc-147-2.jpg', '2021-12-21 19:40:35', '2021-12-21 19:40:35'),
(67, 23, '/storage/images_product/kWWyMNklZh_den-chum-nghe-thuat-cao-cap-dcc-147-4.jpg', '2021-12-21 19:40:35', '2021-12-21 19:40:35'),
(68, 23, '/storage/images_product/KPVgHq5dcI_den-chum-nghe-thuat-cao-cap-dcc-147-5.jpg', '2021-12-21 19:40:35', '2021-12-21 19:40:35'),
(69, 24, '/storage/images_product/7EPpQawzvo_den-chum-pha-le-nhap-khau-cao-cap-dcc-142-1.jpg', '2021-12-21 19:42:44', '2021-12-21 19:42:44'),
(70, 24, '/storage/images_product/MkbmSLVEAR_den-chum-pha-le-nhap-khau-cao-cap-dcc-142-2.jpg', '2021-12-21 19:42:44', '2021-12-21 19:42:44'),
(71, 24, '/storage/images_product/758r8qrzU7_den-chum-pha-le-nhap-khau-cao-cap-dcc-142-3.jpg', '2021-12-21 19:42:44', '2021-12-21 19:42:44'),
(72, 25, '/storage/images_product/AOzhOFWI0m_den-tha-ban-an-hien-dai-da-005-1.jpg', '2021-12-21 19:46:06', '2021-12-21 19:46:06'),
(73, 26, '/storage/images_product/lvNQnX61Ob_den-ban-an-hinh-cau-tre-trung-da-003-4.jpg', '2021-12-21 19:47:38', '2021-12-21 19:47:38'),
(74, 26, '/storage/images_product/7u1Q33ZCRi_den-ban-an-hinh-cau-tre-trung-da-003-5.jpg', '2021-12-21 19:47:38', '2021-12-21 19:47:38'),
(75, 27, '/storage/images_product/KNnY9EWsTG_den-ban-an-doc-dao-da-002-5.jpg', '2021-12-21 19:49:45', '2021-12-21 19:49:45'),
(76, 27, '/storage/images_product/FJnZVjdnbg_den-ban-an-doc-dao-da-002-7.jpg', '2021-12-21 19:49:45', '2021-12-21 19:49:45'),
(77, 27, '/storage/images_product/mJq4eafWMs_den-ban-an-doc-dao-da-002-14.jpg', '2021-12-21 19:49:45', '2021-12-21 19:49:45'),
(78, 28, '/storage/images_product/jcgkPpNPrO_ban-an-tron-hien-dai-bnk-017.jpg', '2021-12-21 19:54:03', '2021-12-21 19:54:03'),
(79, 29, '/storage/images_product/v6z7JdWA9s_ban-nhap-khau-mat-da-bnk-003.jpg', '2021-12-21 19:56:42', '2021-12-21 19:56:42'),
(80, 30, '/storage/images_product/tyWTXQh0If_ban-an-tron-nhap-khau-bnk-010.jpg', '2021-12-21 22:16:45', '2021-12-21 22:16:45'),
(81, 31, '/storage/images_product/tbiROHgNaC_ban-an-tron-trang-tri-bnk-015.jpg', '2021-12-21 22:45:19', '2021-12-21 22:45:19'),
(82, 32, '/storage/images_product/51kTPp3rVQ_sofa-da-nhap-khau-kieu-dang-hien-dai-sf-025-2.jpg', '2021-12-21 22:48:52', '2021-12-21 22:48:52'),
(83, 32, '/storage/images_product/fPynFczBj9_sofa-da-nhap-khau-kieu-dang-hien-dai-sf-025-4.jpg', '2021-12-21 22:48:52', '2021-12-21 22:48:52'),
(84, 32, '/storage/images_product/uIQpKdrV1A_sofa-da-nhap-khau-kieu-dang-hien-dai-sf-025-5.jpg', '2021-12-21 22:48:52', '2021-12-21 22:48:52'),
(85, 33, '/storage/images_product/ZZwNMHHZqc_den-gan-tuong-trang-tri-dgt-005-1.jpg', '2021-12-21 22:52:08', '2021-12-21 22:52:08'),
(86, 33, '/storage/images_product/nd16s8lBEJ_den-gan-tuong-trang-tri-dgt-005-2.jpg', '2021-12-21 22:52:08', '2021-12-21 22:52:08'),
(87, 33, '/storage/images_product/Rk4EmT7CBl_den-gan-tuong-trang-tri-dgt-005-8.jpg', '2021-12-21 22:52:08', '2021-12-21 22:52:08'),
(88, 34, '/storage/images_product/TBSd1uYwPn_den-gan-tuong-nordic-dgt-009-2.jpg', '2021-12-21 22:54:09', '2021-12-21 22:54:09'),
(89, 34, '/storage/images_product/fY2aJDVHBB_den-gan-tuong-nordic-dgt-009-5.jpg', '2021-12-21 22:54:09', '2021-12-21 22:54:09'),
(90, 35, '/storage/images_product/STQ1rSvhVu_den-gan-tuong-pha-le-trang-tri-dgt-010-2.jpg', '2021-12-21 22:56:31', '2021-12-21 22:56:31'),
(91, 35, '/storage/images_product/vndBbhMqdN_den-gan-tuong-pha-le-trang-tri-dgt-010-3.jpg', '2021-12-21 22:56:31', '2021-12-21 22:56:31'),
(92, 35, '/storage/images_product/NQ6ys75VuJ_den-gan-tuong-pha-le-trang-tri-dgt-010-7.jpg', '2021-12-21 22:56:31', '2021-12-21 22:56:31'),
(93, 36, '/storage/images_product/pJv2iQyvMr_den-gan-tuong-hien-dai-dgt-011-5.jpg', '2021-12-21 22:58:30', '2021-12-21 22:58:30'),
(94, 36, '/storage/images_product/6JUUmuhuOl_den-gan-tuong-hien-dai-dgt-011-7.jpg', '2021-12-21 22:58:30', '2021-12-21 22:58:30'),
(95, 37, '/storage/images_product/NwpdLxkzhT_den-gan-tuong-nhap-khau-dgt-012-4.jpg', '2021-12-21 23:01:11', '2021-12-21 23:01:11'),
(96, 37, '/storage/images_product/RuN1G7yOTk_den-gan-tuong-nhap-khau-dgt-012-7.jpg', '2021-12-21 23:01:11', '2021-12-21 23:01:11'),
(97, 38, '/storage/images_product/Quu3InCEJ3_guong-treo-tuong-trang-tri-noi-that-gs-046-2.jpg', '2021-12-21 23:06:58', '2021-12-21 23:06:58'),
(98, 38, '/storage/images_product/dz1Y5UbFJ6_guong-treo-tuong-trang-tri-noi-that-gs-046-3.jpg', '2021-12-21 23:06:58', '2021-12-21 23:06:58'),
(99, 38, '/storage/images_product/tlQu8vnVAf_guong-treo-tuong-trang-tri-noi-that-gs-046-4.jpg', '2021-12-21 23:06:58', '2021-12-21 23:06:58'),
(100, 39, '/storage/images_product/Cb4LsJS2RS_guong-trang-tri-noi-that-hien-dai-gs-047-2.jpg', '2021-12-21 23:09:36', '2021-12-21 23:09:36'),
(101, 39, '/storage/images_product/bBS8oVRsrh_guong-trang-tri-noi-that-hien-dai-gs-047-3.jpg', '2021-12-21 23:09:36', '2021-12-21 23:09:36'),
(102, 39, '/storage/images_product/OFRCHM0ihw_guong-trang-tri-noi-that-hien-dai-gs-047-10.jpg', '2021-12-21 23:09:36', '2021-12-21 23:09:36'),
(103, 40, '/storage/images_product/0sBBwvbgwX_guong-decor-hinh-khoi-trang-tri-gs-057-1.jpg', '2021-12-21 23:11:45', '2021-12-21 23:11:45'),
(104, 40, '/storage/images_product/Hbo6uXh0eJ_guong-decor-hinh-khoi-trang-tri-gs-057-2.jpg', '2021-12-21 23:11:45', '2021-12-21 23:11:45'),
(105, 41, '/storage/images_product/VrPm3jGN3J_guong-decor-la-ginko-gs-065.jpg', '2021-12-21 23:15:01', '2021-12-21 23:15:01'),
(106, 42, '/storage/images_product/mAO6an5OOe_guong-decor-hien-dai-trang-tri-gs-063-2.jpg', '2021-12-21 23:17:16', '2021-12-21 23:17:16'),
(107, 42, '/storage/images_product/jnAMC5rbiZ_guong-decor-hien-dai-trang-tri-gs-063-3.jpg', '2021-12-21 23:17:16', '2021-12-21 23:17:16'),
(108, 42, '/storage/images_product/o6jx5TuOVA_guong-decor-hien-dai-trang-tri-gs-063-4.jpg', '2021-12-21 23:17:16', '2021-12-21 23:17:16'),
(109, 43, '/storage/images_product/QquQnVJEEu_guong-nhap-khau-trang-tri-gs-066-1.jpg', '2021-12-21 23:19:46', '2021-12-21 23:19:46'),
(110, 43, '/storage/images_product/Qu9qYk2svQ_guong-nhap-khau-trang-tri-gs-066-10.jpg', '2021-12-21 23:19:46', '2021-12-21 23:19:46'),
(111, 43, '/storage/images_product/xuESCjNQ2x_guong-nhap-khau-trang-tri-gs-066-13.jpg', '2021-12-21 23:19:46', '2021-12-21 23:19:46'),
(112, 44, '/storage/images_product/dCfs8lp3Sv_bo-tranh-buom-trang-guong-ttga-018-1.jpg', '2021-12-21 23:23:48', '2021-12-21 23:23:48'),
(113, 44, '/storage/images_product/OwFPqDIJPY_bo-tranh-buom-trang-guong-ttga-018-4.jpg', '2021-12-21 23:23:48', '2021-12-21 23:23:48'),
(114, 44, '/storage/images_product/07dcYNQ4Hd_bo-tranh-buom-trang-guong-ttga-018-5.jpg', '2021-12-21 23:23:48', '2021-12-21 23:23:48'),
(115, 45, '/storage/images_product/wgsNrn4Ypb_tranh-decor-trang-guong-trang-tri-ttga-032-1.jpg', '2021-12-21 23:26:23', '2021-12-21 23:26:23'),
(116, 45, '/storage/images_product/4j01XGKdj1_tranh-decor-trang-guong-trang-tri-ttga-032-2.jpg', '2021-12-21 23:26:23', '2021-12-21 23:26:23'),
(117, 45, '/storage/images_product/R46MqrdU7S_tranh-decor-trang-guong-trang-tri-ttga-032-3.jpg', '2021-12-21 23:26:23', '2021-12-21 23:26:23'),
(118, 46, '/storage/images_product/RbbfFKM1Q5_tranh-nghe-thuat-trang-guong-ttga-030-1.jpg', '2021-12-21 23:31:13', '2021-12-21 23:31:13'),
(121, 48, '/storage/images_product/VGna9S5UKb_tranh-bo-trang-guong-nhap-khau-ttga-025-2.jpg', '2021-12-21 23:35:31', '2021-12-21 23:35:31'),
(122, 48, '/storage/images_product/gmCOR5eopW_tranh-bo-trang-guong-nhap-khau-ttga-025-5.jpg', '2021-12-21 23:35:31', '2021-12-21 23:35:31'),
(123, 48, '/storage/images_product/8c6QhOlhAj_tranh-bo-trang-guong-nhap-khau-ttga-025-7.jpg', '2021-12-21 23:35:31', '2021-12-21 23:35:31'),
(124, 49, '/storage/images_product/MQBufoNAat_tranh-decor-trang-guong-tron-ttga-015-2.jpg', '2021-12-21 23:38:22', '2021-12-21 23:38:22'),
(125, 49, '/storage/images_product/vr1UkwtR0R_tranh-decor-trang-guong-tron-ttga-015-3.jpg', '2021-12-21 23:38:22', '2021-12-21 23:38:22'),
(126, 49, '/storage/images_product/2fmpQRc5eb_tranh-decor-trang-guong-tron-ttga-015-4.jpg', '2021-12-21 23:38:22', '2021-12-21 23:38:22'),
(168, 65, '/storage/images_product/iuo3reCJjk_637842470242656074_iphone-13-white.webp', '2023-11-07 09:31:20', '2023-11-07 09:31:20'),
(169, 64, '/storage/images_product/grTkv1TCgY_638025684533304786_iPhone 14 Plus (2).webp', '2023-11-07 09:32:06', '2023-11-07 09:32:06'),
(170, 61, '/storage/images_product/In4eaPA4YQ_638327041738940000_iphone-15-pro-max-12.webp', '2023-11-07 09:33:07', '2023-11-07 09:33:07'),
(171, 60, '/storage/images_product/EfxF0lakzS_iphone 11 (1).webp', '2023-11-07 09:33:34', '2023-11-07 09:33:34'),
(172, 59, '/storage/images_product/285Qjt2s38_iphone-12-tim-1-600x600.jpg', '2023-11-07 09:34:14', '2023-11-07 09:34:14'),
(173, 56, '/storage/images_product/wr76mEyHrV_image-removebg-preview.jpg', '2023-11-07 09:34:44', '2023-11-07 09:34:44'),
(174, 63, '/storage/images_product/AUwwkfoSiH_637845989245125124_iPad Mini 8.3 2021 Wi-Fi 5G (1).webp', '2023-11-07 09:35:07', '2023-11-07 09:35:07'),
(176, 66, '/storage/images_product/g9F662ONn5_638025690989890035_iPhone 14 Pro (1).webp', '2023-11-09 21:55:19', '2023-11-09 21:55:19');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2021_07_23_173754_create_categorys_table', 1),
(3, '2021_07_23_191036_create_brands_table', 1),
(4, '2021_07_26_183015_create_citys_table', 1),
(5, '2021_07_26_183309_create_districts_table', 1),
(6, '2021_07_26_193520_create_ships_table', 1),
(7, '2021_07_27_155013_create_coupons_table', 1),
(8, '2021_07_27_173951_create_products_table', 1),
(9, '2021_07_28_071501_create_images_table', 1),
(10, '2021_07_30_190602_create_orders_table', 1),
(11, '2021_07_30_191330_create_orderdetail_table', 1),
(12, '2021_07_31_175756_create_comments_table', 1),
(13, '2021_08_01_145126_create_wishlist_table', 1),
(14, '2021_11_27_135149_create_slide_table', 1),
(15, '2021_11_28_093707_create_requirement_table', 1),
(16, '2021_12_01_152558_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

CREATE TABLE `orderdetail` (
  `order_detail_id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `order_detail_quantity` int NOT NULL,
  `order_detail_price` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orderdetail`
--

INSERT INTO `orderdetail` (`order_detail_id`, `order_id`, `product_id`, `order_detail_quantity`, `order_detail_price`, `created_at`, `updated_at`) VALUES
(40, 32, 65, 2, 14931000, '2023-11-06 10:39:52', '2023-11-06 10:39:52'),
(41, 33, 65, 1, 14931000, '2023-11-06 11:44:29', '2023-11-06 11:44:29'),
(42, 34, 64, 1, 19611000, '2023-11-07 10:25:23', '2023-11-07 10:25:23'),
(43, 35, 64, 1, 19611000, '2023-11-07 10:28:00', '2023-11-07 10:28:00'),
(44, 36, 65, 1, 14931000, '2023-11-10 11:05:18', '2023-11-10 11:05:18');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` bigint UNSIGNED NOT NULL,
  `user_id` int DEFAULT NULL,
  `order_shipping` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_pay_type` int NOT NULL,
  `order_profit` int NOT NULL,
  `order_total` int NOT NULL,
  `order_status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `order_shipping`, `order_note`, `order_pay_type`, `order_profit`, `order_total`, `order_status`, `created_at`, `updated_at`) VALUES
(32, 25, 'Tên người nhận: quocdung - Email: dung@gmail.com - Số điện thoại: 0856786728 - Địa chỉ: vinh long - Quận Hoàn Kiếm - Thành phố Hà Nội', NULL, 1, -1298000, 29882000, 1, '2023-11-06 17:00:00', '2023-11-06 10:39:52'),
(33, 25, 'Tên người nhận: quocdung - Email: dung@gmail.com - Số điện thoại: 0856786728 - Địa chỉ: vinh long - Quận Hoàn Kiếm - Thành phố Hà Nội', NULL, 1, -639000, 14951000, 5, '2023-11-06 17:00:00', '2023-11-06 11:46:22'),
(34, 26, 'Tên người nhận: Dũng Nguyễn Quốc - Email: rongvang2357hn@gmail.com - Số điện thoại: 0924649785 - Địa chỉ: Vĩnh Long - Thành phố Cao Bằng - Tỉnh Cao Bằng', 'Oke', 1, -1159000, 19631000, 1, '2023-11-07 17:00:00', '2023-11-07 10:25:23'),
(35, 26, 'Tên người nhận: Dũng Nguyễn Quốc - Email: rongvang2357hn@gmail.com - Số điện thoại: 0924649785 - Địa chỉ: Vĩnh Long - Thành phố Cao Bằng - Tỉnh Cao Bằng', 'Oke', 1, -1159000, 19631000, 1, '2023-11-07 17:00:00', '2023-11-07 10:28:00'),
(36, 26, 'Tên người nhận: Dũng Nguyễn Quốc - Email: rongvang2357hn@gmail.com - Số điện thoại: 0924649785 - Địa chỉ: Vĩnh Long - Quận Hà Đông - Thành phố Hà Nội', 'Vĩnh Long', 1, -639000, 14951000, 1, '2023-11-10 17:00:00', '2023-11-10 11:05:18');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `post_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `post_title`, `post_content`, `post_image`, `created_at`, `updated_at`) VALUES
(16, 25, 'Trên tay OPPO Find N3 Flip tại Việt Nam: Biểu tượng tỏa sáng với thiết kế thời trang, hệ thống 3 camera đầu tiên', '<h2>So với thế hệ trước, OPPO Find N3 Flip mang đến kh&aacute; nhiều n&acirc;ng cấp từ m&agrave;n h&igrave;nh phụ đến thiết kế, cấu h&igrave;nh v&agrave; t&iacute;nh năng.</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<h3><a href=\"https://fptshop.com.vn/tin-tuc/danh-gia/so-sanh-oppo-find-n3-flip-va-oppo-find-n2-flip-164746\">So s&aacute;nh OPPO Find N3 Flip v&agrave; OPPO Find N2 Flip: Kh&aacute;c biệt l&agrave; g&igrave; v&agrave; c&oacute; n&ecirc;n n&acirc;ng cấp?</a></h3>\r\n	</li>\r\n	<li>\r\n	<h3><a href=\"https://fptshop.com.vn/tin-tuc/danh-gia/nhung-ly-do-ban-nen-mua-oppo-find-n3-flip-ngay-khi-len-ke-164110\">Điểm danh 6 l&yacute; do cho thấy OPPO Find N3 Flip l&agrave; chiếc smartphone gập &quot;vỏ s&ograve;&quot; đ&aacute;ng mua nhất hiện nay</a></h3>\r\n	</li>\r\n	<li>\r\n	<h3><a href=\"https://fptshop.com.vn/tin-tuc/tin-khuyen-mai/an-tuong-voi-chinh-sach-bao-hanh-doc-quyen-cua-oppo-find-n3-series-164624\">Ấn tượng với ch&iacute;nh s&aacute;ch bảo h&agrave;nh độc quyền của OPPO Find N3 Series</a></h3>\r\n	</li>\r\n</ul>\r\n\r\n<p>XEM NHANH</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://fptshop.com.vn/tin-tuc/danh-gia/tren-tay-oppo-find-n3-flip-164413#TrentayOPPOFindN3Flip\">Tr&ecirc;n tay OPPO Find N3 Flip&nbsp;</a></li>\r\n	<li><a href=\"https://fptshop.com.vn/tin-tuc/danh-gia/tren-tay-oppo-find-n3-flip-164413#Tamket\">Tạm kết</a></li>\r\n</ul>\r\n\r\n<p>OPPO gần đ&acirc;y vừa ch&iacute;nh thức ra mắt bộ đ&ocirc;i smartphone m&agrave;n h&igrave;nh gập mới của h&atilde;ng tr&ecirc;n thị trường to&agrave;n cầu v&agrave; Find N3 Flip l&agrave; một trong số đ&oacute;. Như t&ecirc;n gọi cho thấy, đ&acirc;y l&agrave; mẫu m&aacute;y kế nhiệm của Find N2 Flip được kh&aacute; nhiều người y&ecirc;u th&iacute;ch. Vậy Find N3 Flip c&oacute; g&igrave; hấp dẫn để kế thừa th&agrave;nh c&ocirc;ng của mẫu m&aacute;y tiền nhiệm? C&ugrave;ng&nbsp;<a href=\"https://fptshop.com.vn/\" title=\"FPT Shop\" type=\"FPT Shop\">FPT Shop</a>&nbsp;t&igrave;m hiểu sản phẩm qua b&agrave;i tr&ecirc;n tay dưới đ&acirc;y.</p>\r\n\r\n<p><img alt=\"Trên tay OPPO Find N3 Flip (ảnh 1)\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/164413/Originals/OPPO-FIND-N3-FLIP-16.jpg\" style=\"height:640px; width:960px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Tr&ecirc;n tay OPPO Find N3 Flip&nbsp;</strong></h2>\r\n\r\n<p>Giống như&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/oppo-find-n3\" title=\"Find N3\" type=\"Find N3\">Find N3</a>, OPPO đ&atilde; chọn c&aacute;ch thiết kế tối giản cho hộp đựng sản phẩm của Find N3 Flip, sử dụng t&ocirc;ng m&agrave;u trắng l&agrave;m chủ đạo, c&oacute; t&ecirc;n sản phẩm in kh&aacute; lớn ở mặt trước, đi k&egrave;m logo OPPO cũng như h&atilde;ng m&aacute;y ảnh Hasselblad nằm b&ecirc;n dưới.</p>\r\n\r\n<p>B&ecirc;n trong, ch&uacute;ng ta sẽ c&oacute; một số phụ kiện quen thuộc như s&aacute;ch hướng dẫn sử dụng, que lấy SIM, c&aacute;p v&agrave; bộ sạc nhanh.</p>\r\n\r\n<p><img alt=\"Trên tay OPPO Find N3 Flip (ảnh 2)\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/164413/Originals/FIND-N3-FLIP-UNBOX.jpg\" style=\"height:640px; width:960px\" /></p>\r\n\r\n<p>Quay trở lại với &ldquo;nh&acirc;n vật ch&iacute;nh&rdquo; của ch&uacute;ng ta l&agrave;&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/oppo-find-n3-flip\" title=\"Find N3 Flip\" type=\"Find N3 Flip\">Find N3 Flip</a>&nbsp;th&igrave; c&oacute; thể thấy,&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai\">điện thoại</a>&nbsp;sở hữu kiểu d&aacute;ng quen thuộc với m&agrave;n h&igrave;nh gập dọc dạng vỏ s&ograve;, đi k&egrave;m khung viền kim loại cứng c&aacute;p, được bo tr&ograve;n kh&aacute; mạnh ở 4 g&oacute;c n&ecirc;n cho cảm gi&aacute;c cầm tr&ecirc;n tay kh&aacute; thoải m&aacute;i.</p>\r\n\r\n<p><img alt=\"Trên tay OPPO Find N3 Flip (ảnh 3)\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/164413/Originals/OPPO-FIND-N3-FLIP-01.jpg\" style=\"height:640px; width:960px\" /></p>\r\n\r\n<p>Khi gập lại, OPPO Find N3 Flip c&oacute; &ldquo;số đo 3 v&ograve;ng&rdquo; lần lượt l&agrave; 85.5 x 75.8 x 16.5 mm c&ugrave;ng trọng lượng kh&ocirc;ng qu&aacute; nặng, chỉ 198 gram n&ecirc;n bạn c&oacute; thể dễ d&agrave;ng để m&aacute;y v&agrave;o t&uacute;i quần hay t&uacute;i x&aacute;ch v&agrave; mang theo b&ecirc;n m&igrave;nh m&agrave; kh&ocirc;ng cảm thấy vướng v&iacute;u, kh&oacute; chịu.</p>\r\n\r\n<p><img alt=\"Trên tay OPPO Find N3 Flip (ảnh 4)\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/164413/Originals/OPPO-FIND-N3-FLIP-07.jpg\" style=\"height:640px; width:960px\" /></p>\r\n\r\n<p>B&ecirc;n cạnh thiết kế gập dọc dạng &quot;vỏ s&ograve;&quot; độc đ&aacute;o, OPPO Find N3 Flip c&ograve;n thu h&uacute;t người d&ugrave;ng với m&agrave;n h&igrave;nh phụ h&igrave;nh chữ nhật đứng ở mặt sau, đi k&egrave;m cụm camera h&igrave;nh tr&ograve;n lạ mắt. Cụm camera n&agrave;y được thiết kế lồi l&ecirc;n hơn so với mặt lưng v&agrave; được bao quanh bởi c&aacute;c r&atilde;nh b&aacute;nh răng như những v&ograve;ng lấy n&eacute;t, zoom tr&ecirc;n m&aacute;y ảnh. Mặt lưng của điện thoại cũng được thiết kế b&oacute;ng bẩy, gi&uacute;p mang đến cảm gi&aacute;c cao cấp hơn khi cầm tr&ecirc;n tay.</p>\r\n\r\n<p><img alt=\"Trên tay OPPO Find N3 Flip (ảnh 5)\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/164413/Originals/OPPO-FIND-N3-FLIP-06.jpg\" /></p>\r\n\r\n<p>OPPO Find N3 Flip c&oacute; thiết kế mặt sau ấn tượng</p>\r\n\r\n<p><img alt=\"Trên tay OPPO Find N3 Flip (ảnh 6)\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/164413/Originals/OPPO-FIND-N3-FLIP-03.jpg\" /></p>\r\n\r\n<p>Cạnh dưới điện thoại l&agrave; nơi chứa khay SIM, micro, cổng sạc USB-C v&agrave; loa ngo&agrave;i</p>\r\n\r\n<p><img alt=\"Trên tay OPPO Find N3 Flip (ảnh 7)\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/164413/Originals/OPPO-FIND-N3-FLIP-04.jpg\" style=\"height:640px; width:960px\" /></p>\r\n\r\n<p><img alt=\"Trên tay OPPO Find N3 Flip (ảnh 8)\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/164413/Originals/OPPO-FIND-N3-FLIP-05.jpg\" style=\"height:640px; width:960px\" /></p>\r\n\r\n<p>Cạnh phải chứa n&uacute;t tăng, giảm &acirc;m lượng v&agrave; n&uacute;t nguồn được t&iacute;ch hợp cảm biến v&acirc;n tay b&ecirc;n dưới</p>\r\n\r\n<p>M&agrave;n h&igrave;nh phụ của Find N3 Flip c&oacute; th&ocirc;ng số kh&ocirc;ng qu&aacute; kh&aacute;c biệt so với thế hệ trước, sử dụng&nbsp;<a href=\"https://fptshop.com.vn/tin-tuc/danh-gia/man-hinh-amoled-la-gi-34866\">tấm nền AMOLED</a>&nbsp;với k&iacute;ch thước 3.26 inch, hỗ trợ độ ph&acirc;n giải 382 x 720 pixel, tỷ lệ 17:9, khả năng hiển thị 16 triệu m&agrave;u v&agrave; được bảo vệ bởi k&iacute;nh cường lực Corning Gorilla Glass Victus. Tuy nhi&ecirc;n, OPPO đ&atilde; mang đến những cải tiến về phần mềm gi&uacute;p n&oacute; cho trải nghiệm như một chiếc điện thoại mini.</p>\r\n\r\n<p>Theo OPPO, Find N3 Flip đ&atilde; hỗ trợ mặc định hơn 80 ứng dụng b&ecirc;n thứ ba tr&ecirc;n m&agrave;n h&igrave;nh phụ, đảm bảo gần như đầy đủ nhu cầu sử dụng của người d&ugrave;ng. Bạn c&oacute; thể sử dụng m&agrave;n h&igrave;nh phụ n&agrave;y để nhắn tin Zalo, WhatsApp, gọi thoại, lướt web, lướt TikTok, xem Youtube, Google Maps hay chụp ảnh selfie bằng camera sau một c&aacute;ch dễ d&agrave;ng.&nbsp;</p>\r\n\r\n<p>Tỷ lệ m&agrave;n h&igrave;nh dọc c&ograve;n mang đến trải nghiệm tối ưu cho người d&ugrave;ng khi c&oacute; thể tương th&iacute;ch với giao diện của hầu hết c&aacute;c ứng dụng. Đ&acirc;y được xem l&agrave; m&agrave;n h&igrave;nh phụ tối ưu v&agrave; hữu dụng nhất.</p>\r\n\r\n<p><img alt=\"Trên tay OPPO Find N3 Flip (ảnh 9)\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/164413/Originals/OPPO-FIND-N3-FLIP-11.jpg\" style=\"height:640px; width:960px\" /></p>\r\n\r\n<p>Ở mặt trước, m&agrave;n h&igrave;nh ch&iacute;nh của Find N3 Flip sử dụng thiết kế đục lỗ để chứa camera selfie v&agrave; c&oacute; viền bezel c&aacute;c cạnh kh&aacute; mỏng. Về th&ocirc;ng số, đ&acirc;y l&agrave; tấm nền LTPO AMOLED c&oacute; k&iacute;ch thước 6.8 inch, hỗ trợ độ ph&acirc;n giải 1080 x 2520 pixel, tần số qu&eacute;t th&iacute;ch ứng 120Hz v&agrave; c&oacute; độ s&aacute;ng tối đa 1,600 nits n&ecirc;n cho khả năng hiển thị ngo&agrave;i trời kh&aacute; tốt.</p>\r\n\r\n<p><img alt=\"Trên tay OPPO Find N3 Flip (ảnh 10)\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/164413/Originals/OPPO-FIND-N3-FLIP-09.jpg\" style=\"height:640px; width:960px\" /></p>\r\n\r\n<p>B&ecirc;n trong, OPPO Find N3 Flip được cung cấp sức mạnh đến từ Dimensity 9200, SoC cao cấp nhất của MediaTek ở thời điểm hiện tại. Ch&iacute;nh v&igrave; vậy m&agrave; bạn c&oacute; thể sử dụng m&aacute;y để giải tr&iacute; lướt web, xem phim hay chơi những tựa game đồ họa năng m&agrave; kh&ocirc;ng gặp hiện tượng, giật lag.</p>\r\n\r\n<p>Về bộ nhớ, mẫu smartphone m&agrave;n h&igrave;nh gập dọc thế hệ mới của OPPO mang đến cho người d&ugrave;ng 12GB RAM cho khả năng đa nhiệm ấn tượng. M&aacute;y c&oacute; bộ nhớ trong 256GB để bạn c&agrave;i đặt c&aacute;c ứng dụng, game hay tải những bộ phim y&ecirc;u th&iacute;ch về m&aacute;y để xem những l&uacute;c rảnh rỗi. Vi&ecirc;n pin của Find N3 Flip c&oacute; dung lượng kh&aacute; tốt l&agrave; 4,300 mAh với hỗ trợ c&ocirc;ng nghệ sạc nhanh 44W, c&oacute; thể gi&uacute;p bạn thoải m&aacute;i xử l&yacute; c&ocirc;ng việc, giải tr&iacute; trong cả ng&agrave;y d&agrave;i.&nbsp;</p>\r\n\r\n<p><img alt=\"Trên tay OPPO Find N3 Flip (ảnh 11)\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/164413/Originals/OPPO-FIND-N3-FLIP-14.jpg\" style=\"height:640px; width:960px\" /></p>\r\n\r\n<p>Khả năng nhiếp ảnh của OPPO Find N3 Flip cũng kh&aacute; ấn tượng khi m&aacute;y c&oacute; hệ thống 3 camera Hasselblad ở mặt sau, bao gồm cảm biến ch&iacute;nh 50MP hỗ trợ c&ocirc;ng nghệ chống rung quang học OIS, đi k&egrave;m m&aacute;y ảnh 48MP cho g&oacute;c chụp si&ecirc;u rộng v&agrave; camera tele 32MP. Điện thoại c&ograve;n sở hữu m&aacute;y ảnh selfie 32MP ở mặt trước.</p>\r\n\r\n<p>Với phần cứng camera ấn tượng n&agrave;y, bạn c&oacute; thể lưu những khoảnh khắc đẹp trong cuộc sống h&agrave;ng ng&agrave;y với chất lượng ảnh sắc n&eacute;t, m&agrave;u sắc sống động v&agrave; độ tương phản tuyệt vời.</p>\r\n\r\n<p><img alt=\"Trên tay OPPO Find N3 Flip (ảnh 12)\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/164413/Originals/OPPO-FIND-N3-FLIP-02.jpg\" style=\"height:640px; width:960px\" /></p>\r\n\r\n<h2><strong>Tạm kết</strong></h2>\r\n\r\n<p>Nh&igrave;n chung, OPPO Find N3 Flip l&agrave; một lựa chọn tuyệt vời cho những ai muốn sở hữu một chiếc smartphone c&oacute; thiết kế thời trang, độc đại đi k&egrave;m nhiều c&ocirc;ng nghệ cao cấp. Điện thoại n&agrave;y sẽ gi&uacute;p bạn lu&ocirc;n tỏa s&aacute;ng giữa đ&aacute;m đ&ocirc;ng, phục vụ tốt c&ocirc;ng việc cũng như nhu cầu giải tr&iacute; h&agrave;ng ng&agrave;y.</p>\r\n\r\n<p>OPPO Find N3 Flip được ra mắt với gi&aacute; ch&iacute;nh thức l&agrave; 22.990.000 đồng. Đặc biệt từ ng&agrave;y 26/10/2023 đến ng&agrave;y 10/11, bạn đ&atilde; c&oacute; thể đặt trước OPPO Find N3 Flip tại FPT Shop để nhận được ưu đ&atilde;i lớn, bao gồm:</p>\r\n\r\n<ul>\r\n	<li>Tặng tai&nbsp;nghe OPPO Enco Air3 trị gi&aacute; 1.590.000đ</li>\r\n	<li>Premium Service trị gi&aacute; 1.200.000đ</li>\r\n	<li>OPPO Care trị gi&aacute; 4.500.000đ</li>\r\n	<li>L&ecirc;n đời trợ gi&aacute; đến 2.000.000đ</li>\r\n	<li>Trả g&oacute;p 0%</li>\r\n</ul>', '/storage/images_blog/KfzGkQMYMg_OPPO-FIND-N3-FLIP-16.webp', '2023-11-05 10:00:01', '2023-11-07 09:43:03'),
(17, 25, 'So sánh Xiaomi 13T và Xiaomi 13 Lite: Đã đến lúc bạn “lên đời” dế yêu', '<h2>Với mức gi&aacute; ch&ecirc;nh lệch kh&aacute; nhiều so với Xiaomi 13 Lite, liệu Xiaomi 13T c&oacute; đ&aacute;ng để người d&ugrave;ng &ldquo;xuống tiền&rdquo; đầu tư kh&ocirc;ng? Những so s&aacute;nh chi tiết về c&aacute;c kh&iacute;a cạnh của hai chiếc điện thoại n&agrave;y sẽ gi&uacute;p bạn c&oacute; c&acirc;u trả lời.</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<h3><a href=\"https://fptshop.com.vn/tin-tuc/danh-gia/camera-leica-tren-xiaomi-13t-163525\">Camera Leica tr&ecirc;n Xiaomi 13T c&oacute; đ&oacute;ng g&oacute;p g&igrave; cho hệ thống chụp ảnh?</a></h3>\r\n	</li>\r\n	<li>\r\n	<h3><a href=\"https://fptshop.com.vn/tin-tuc/danh-gia/loi-the-canh-tranh-cua-xiaomi-13t-163231\">Xiaomi 13T c&oacute; g&igrave; tốt để cạnh tranh trong ph&acirc;n kh&uacute;c smartphone tầm 12 triệu?</a></h3>\r\n	</li>\r\n	<li>\r\n	<h3><a href=\"https://fptshop.com.vn/tin-tuc/danh-gia/cuoc-song-tien-loi-voi-sac-nhanh-pin-khung-tu-xiaomi-13t-163003\">Cuộc sống thật tiện lợi với bộ đ&ocirc;i &ldquo;sạc nhanh - pin khủng&rdquo; từ Xiaomi 13T</a></h3>\r\n	</li>\r\n</ul>\r\n\r\n<p>XEM NHANH</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://fptshop.com.vn/tin-tuc/danh-gia/so-sanh-xiaomi-13t-va-xiaomi-13-lite-163403#Thietkevadienmao\">Thiết kế v&agrave; diện mạo</a></li>\r\n	<li><a href=\"https://fptshop.com.vn/tin-tuc/danh-gia/so-sanh-xiaomi-13t-va-xiaomi-13-lite-163403#Manhinhvakhananghienthi\">M&agrave;n h&igrave;nh v&agrave; khả năng hiển thị</a></li>\r\n	<li><a href=\"https://fptshop.com.vn/tin-tuc/danh-gia/so-sanh-xiaomi-13t-va-xiaomi-13-lite-163403#Hieusuatvanhanhtacvu\">Hiệu suất vận h&agrave;nh t&aacute;c vụ</a></li>\r\n	<li><a href=\"https://fptshop.com.vn/tin-tuc/danh-gia/so-sanh-xiaomi-13t-va-xiaomi-13-lite-163403#Luutruvadanhiem\">Lưu trữ v&agrave; đa nhiệm</a></li>\r\n	<li><a href=\"https://fptshop.com.vn/tin-tuc/danh-gia/so-sanh-xiaomi-13t-va-xiaomi-13-lite-163403#Khanangquaychupcamera\">Khả năng quay chụp, camera</a></li>\r\n	<li><a href=\"https://fptshop.com.vn/tin-tuc/danh-gia/so-sanh-xiaomi-13t-va-xiaomi-13-lite-163403#Pinvacongnghesac\">Pin v&agrave; c&ocirc;ng nghệ sạc</a></li>\r\n	<li><a href=\"https://fptshop.com.vn/tin-tuc/danh-gia/so-sanh-xiaomi-13t-va-xiaomi-13-lite-163403#Tamket\">Tạm kết</a></li>\r\n</ul>\r\n\r\n<p>Sau một thời gian &ldquo;g&acirc;y sốt&rdquo; ở dạng tin đồn th&igrave; gần đ&acirc;y Xiaomi 13T đ&atilde; ch&iacute;nh thức được tr&igrave;nh l&agrave;ng v&agrave; mở b&aacute;n tại Việt Nam. Với mức gi&aacute; 11.99 triệu đồng, ch&ecirc;nh lệch khoảng hơn 3 triệu so với Xiaomi 13 Lite ra mắt trước đ&oacute; nửa năm. Liệu với con số ch&ecirc;nh lệch n&agrave;y th&igrave; người d&ugrave;ng c&oacute; n&ecirc;n &ldquo;l&ecirc;n đời&rdquo; cho dế y&ecirc;u kh&ocirc;ng? Xiaomi 13T c&oacute; những n&acirc;ng cấp n&agrave;o vượt trội?</p>\r\n\r\n<h2><strong>Thiết kế v&agrave; diện mạo</strong></h2>\r\n\r\n<p>Tổng quan về thiết kế th&igrave; cả&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/xiaomi-13t\">Xiaomi 13T</a>&nbsp;v&agrave; Xiaomi 13 Lite đều sở hữu diện mạo trẻ trung, cuốn h&uacute;t v&agrave; chinh phục người d&ugrave;ng từ c&aacute;i nh&igrave;n đầu ti&ecirc;n. Ở hai sản phẩm đều sử dụng thiết kế cong cạnh viền tạo cảm gi&aacute;c mềm mại. Xiaomi 13T xuất hiện với 3 gam m&agrave;u: Xanh l&aacute;, Xanh Dương v&agrave; Đen. Trong khi đ&oacute;, Xiaomi 13 Lite cũng c&oacute; 3 m&agrave;u gồm: Đen, Xanh dương v&agrave; Hồng pastel &ldquo;đốn tim&rdquo; chị em ph&aacute;i nữ.&nbsp;</p>\r\n\r\n<p><img alt=\"So sánh Xiaomi 13T và Xiaomi 13 Lite (Hình 1)\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/163403/Originals/so-sanh-xiaomi-13t-va-xiaomi-13-lite-1.jpg\" style=\"height:500px; width:750px\" /></p>\r\n\r\n<p>Xiaomi 13 Lite với thiết kế cong cạnh</p>\r\n\r\n<p>X&eacute;t về trọng lượng v&agrave; độ mỏng th&igrave; c&oacute; vẻ như Xiaomi 13 Lite đang chiếm ưu thế hơn. Cụ thể, phi&ecirc;n bản cũ c&oacute; trọng lượng 171g, độ mỏng 7.23mm, nhẹ v&agrave; mỏng hơn hơn so với con số 197g v&agrave; 8.49mm của Xiaomi 13T. Lợi thế về k&iacute;ch thước đem đến cảm gi&aacute;c cầm nắm thoải m&aacute;i, nhẹ nh&agrave;ng hơn, nhất l&agrave; khi cần sử dụng li&ecirc;n tục l&acirc;u d&agrave;i.</p>\r\n\r\n<p>X&eacute;t về chất liệu, mặt lưng của&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/xiaomi-13-lite\">Xiaomi 13 Lite</a>&nbsp;c&oacute; sự kết hợp giữa k&iacute;nh v&agrave; nh&ocirc;m tạo n&ecirc;n vẻ đẹp h&agrave;o nho&aacute;ng. Xiaomi 13T cũng kh&ocirc;ng k&eacute;m cạnh với chất liệu k&iacute;nh b&oacute;ng bẩy, hiện đại. Ngo&agrave;i ra, chiếc&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai\">điện thoại</a>&nbsp;mới n&agrave;y c&ograve;n c&oacute; th&ecirc;m biến thể sở hữu mặt lưng từ da PU tạo độ b&aacute;m tay tốt, giảm thiểu tối đa t&igrave;nh trạng d&iacute;nh mồ h&ocirc;i v&agrave; v&acirc;n tay.</p>\r\n\r\n<p><img alt=\"So sánh Xiaomi 13T và Xiaomi 13 Lite (Hình 2)\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/163403/Originals/so-sanh-xiaomi-13t-va-xiaomi-13-lite-2.jpg\" style=\"height:500px; width:750px\" /></p>\r\n\r\n<p>Xiaomi 13T với mặt lưng bằng k&iacute;nh b&oacute;ng</p>\r\n\r\n<h2><strong>M&agrave;n h&igrave;nh v&agrave; khả năng hiển thị</strong></h2>\r\n\r\n<p>M&agrave;n h&igrave;nh của Xiaomi 13T chiếm ưu thế hơn về k&iacute;ch thước với th&ocirc;ng số 6.7 inch trong khi Xiaomi 13 Lite chỉ 6.55 inch. Kể cả khi đ&atilde; tận dụng ưu thế của m&agrave;n h&igrave;nh cong th&igrave; người anh em tiền nhiệm cũng kh&oacute; đảm bảo được kh&ocirc;ng gian hiển thị rộng r&atilde;i như Xiaomi 13T.&nbsp;</p>\r\n\r\n<p><img alt=\"So sánh Xiaomi 13T và Xiaomi 13 Lite (Hình 3)\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/163403/Originals/so-sanh-xiaomi-13t-va-xiaomi-13-lite-3.jpg\" style=\"height:500px; width:750px\" /></p>\r\n\r\n<p>Xiaomi 13T với m&agrave;n h&igrave;nh 6,7 inch</p>\r\n\r\n<p>Xiaomi 13 Lite sử dụng&nbsp;<a href=\"https://fptshop.com.vn/tin-tuc/danh-gia/man-hinh-amoled-la-gi-34866\">tấm nền AMOLED</a>, 1080 x 2400 Pixels, độ s&aacute;ng tối đa 1000 nits, tần số qu&eacute;t 120Hz v&agrave; khả năng hiển thị 68 tỷ m&agrave;u. Đ&acirc;y đều l&agrave; những th&ocirc;ng số ấn tượng nhưng vẫn phải &ldquo;ch&agrave;o thua&rdquo; Xiaomi 13T với tấm nền OLED, tần số qu&eacute;t 144Hz, 2712 x 1220 Pixels, hiển thị 68 tỷ m&agrave;u v&agrave; độ s&aacute;ng tối đa l&ecirc;n tới 2600 nits.</p>\r\n\r\n<p><img alt=\"So sánh Xiaomi 13T và Xiaomi 13 Lite (Hình 4)\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/163403/Originals/so-sanh-xiaomi-13t-va-xiaomi-13-lite-4.jpg\" style=\"height:500px; width:750px\" /></p>\r\n\r\n<p>Xiaomi 13 Lite với m&agrave;n h&igrave;nh 6.55 inch</p>\r\n\r\n<p>Như vậy, Xiaomi 13T sẽ t&aacute;i hiện h&igrave;nh ảnh v&agrave; c&aacute;c nội dung r&otilde; r&agrave;ng hơn, mượt m&agrave; v&agrave; ch&acirc;n thực hơn nhiều so với thế hệ cũ. Bạn sẽ cảm nhận r&otilde; rệt điều n&agrave;y khi thưởng thức những bộ phim bom tấn hoặc chơi game c&oacute; FPS cao. Mọi thao t&aacute;c tr&ecirc;n m&agrave;n h&igrave;nh sẽ thật nhanh với tốc độ phản hồi &ldquo;si&ecirc;u tốc&rdquo;, loại bỏ gần như ho&agrave;n to&agrave;n độ trễ về h&igrave;nh ảnh.&nbsp;</p>\r\n\r\n<h2><strong>Hiệu suất vận h&agrave;nh t&aacute;c vụ</strong></h2>\r\n\r\n<p>Hiệu năng l&agrave; một điểm đ&aacute;ng ch&uacute; &yacute; khi so s&aacute;nh Xiaomi 13T v&agrave; Xiaomi 13 Lite. Cụ thể, vi xử l&yacute; Dimensity 8200 Ultra được trang bị b&ecirc;n trong chiếc điện thoại mới nhất của&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/xiaomi\">Xiaomi</a>&nbsp;sở hữu hiệu suất vượt trội hơn hẳn với xung nhịp tối đa l&ecirc;n tới 3.1GHz. Trong khi đ&oacute;, con chip&nbsp;<a href=\"https://fptshop.com.vn/tin-tuc/danh-gia/tim-hieu-snapdragon-7-gen-1-146162\">Snapdragon 7 Gen 1</a>&nbsp;ghi nhận tốc độ tối đa chỉ 2.4GHz, tương tự như c&aacute;c con chip xuất hiện ở những mẫu smartphone ph&acirc;n kh&uacute;c tầm trung.</p>\r\n\r\n<p><img alt=\"So sánh Xiaomi 13T và Xiaomi 13 Lite (Hình 5)\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/163403/Originals/so-sanh-xiaomi-13t-va-xiaomi-13-lite-5.jpg\" style=\"height:500px; width:750px\" /></p>\r\n\r\n<p>Xiaomi 13T d&ugrave;ng chip Dimensity 8200 Ultra</p>\r\n\r\n<p>Được biết, Dimensity 8200-Ultra ra đời l&agrave; th&agrave;nh quả của sự hợp t&aacute;c giữa MediaTek v&agrave; Xiaomi nhằm tạo ra một con chip hiệu suất cao, vượt trội về khả năng chụp ảnh. SoC n&agrave;y đ&atilde; được thử nghiệm hiệu năng tr&ecirc;n phần mềm AnTuTu Benchmark v&agrave; đạt số điểm 900,000. Khả năng đồ họa cũng rất ấn tượng.</p>\r\n\r\n<p>Dimensity 8200-Ultra gi&uacute;p Xiaomi 13T dư sức chơi c&aacute;c game MOBA phổ th&ocirc;ng như Li&ecirc;n Minh Huyền Thoại: Tốc Chiến, Li&ecirc;n Qu&acirc;n Mobile mượt m&agrave; ở cấu h&igrave;nh cao nhất. Ngay cả những tựa game nặng được mệnh danh l&agrave; &ldquo;s&aacute;t thủ phần cứng&rdquo; như Genshin Impact cũng vẫn xử l&yacute; được.&nbsp;</p>\r\n\r\n<p><img alt=\"So sánh Xiaomi 13T và Xiaomi 13 Lite (Hình 6)\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/163403/Originals/so-sanh-xiaomi-13t-va-xiaomi-13-lite-6.jpg\" style=\"height:500px; width:750px\" /></p>\r\n\r\n<p>Xiaomi 13 Lite với chip&nbsp;Snapdragon 7 Gen 1</p>\r\n\r\n<p>Khả năng chơi game của Xiaomi 13 Lite cũng tốt, c&oacute; thể chơi được game Li&ecirc;n Qu&acirc;n Mobile, PUBG Mobile với c&agrave;i đặt cấu h&igrave;nh cao kh&aacute; mượt m&agrave;. Tuy nhi&ecirc;n đặt l&ecirc;n b&agrave;n c&acirc;n để so s&aacute;nh th&igrave; chưa thể bằng Xiaomi 13T.</p>\r\n\r\n<p>Vận h&agrave;nh tốt ứng dụng gaming th&igrave; hiển nhi&ecirc;n c&aacute;c t&aacute;c vụ cơ bản như lướt web, xem phim, lướt Facebook hay Tiktok chắc chắn sẽ kh&ocirc;ng l&agrave;m kh&oacute; được bộ đ&ocirc;i Xiaomi 13T v&agrave; Xiaomi 13 Lite.</p>\r\n\r\n<h2><strong>Lưu trữ v&agrave; đa nhiệm</strong></h2>\r\n\r\n<p>X&eacute;t về khả năng đa nhiệm, Xiaomi 13T với dung lượng RAM l&ecirc;n tới 12GB đem đến khả năng vận h&agrave;nh mượt m&agrave; đồng thời nhiều ứng dụng c&ugrave;ng l&uacute;c. So với c&aacute;c đối thủ c&ugrave;ng tầm gi&aacute; th&igrave; RAM 8GB tr&ecirc;n Xiaomi 13 Lite c&oacute; thể chiếm ưu thế hơn nhưng khi đặt l&ecirc;n b&agrave;n c&acirc;n với Xiaomi 13T th&igrave; vẫn phải &ldquo;ngậm ng&ugrave;i&rdquo; ở ph&iacute;a sau.</p>\r\n\r\n<p><img alt=\"So sánh Xiaomi 13T và Xiaomi 13 Lite (Hình 7)\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/163403/Originals/so-sanh-xiaomi-13t-va-xiaomi-13-lite-7.jpg\" style=\"height:500px; width:750px\" /></p>\r\n\r\n<p>Xiaomi 13T với RAM 12GB/ROM 256GB</p>\r\n\r\n<p>Khả năng lưu trữ của 2 chiếc điện thoại Xiaomi đều rất tốt. Với Xiaomi 13 Lite sẽ c&oacute; 2 phi&ecirc;n bản bộ nhớ l&agrave; 128GB v&agrave; 256GB trong khi Xiaomi 13T c&oacute; duy nhất một lựa chọn 256GB. Kể cả khi kh&ocirc;ng được t&iacute;ch hợp t&iacute;nh năng mở rộng bộ nhớ th&igrave; m&igrave;nh nghĩ dung lượng n&agrave;y cũng đủ để bạn lưu trữ mọi loại dữ liệu cần thiết.</p>\r\n\r\n<p><img alt=\"So sánh Xiaomi 13T và Xiaomi 13 Lite (Hình 8)\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/163403/Originals/so-sanh-xiaomi-13t-va-xiaomi-13-lite-8.jpg\" style=\"height:500px; width:750px\" /></p>\r\n\r\n<p>Xiaomi 13 Lite với RAM 8GB</p>\r\n\r\n<h2><strong>Khả năng quay chụp, camera</strong></h2>\r\n\r\n<p>Xiaomi 13 Lite khi ra mắt đ&atilde; l&agrave;m mưa l&agrave;m gi&oacute; trong ph&acirc;n kh&uacute;c điện thoại cận cao cấp v&igrave; khả năng nhiếp ảnh ấn tượng. Đến Xiaomi 13T cũng vậy, hệ thống camera Leica chuy&ecirc;n nghiệp của chiếc điện thoại n&agrave;y sẽ gi&uacute;p người d&ugrave;ng thỏa m&atilde;n đam m&ecirc; quay chụp v&agrave; l&agrave;m s&aacute;ng tạo.&nbsp;</p>\r\n\r\n<p>Cụ thể, Xiaomi 13 Lite sở hữu cụm camera sau 50MP + 8MP + 2MP với chế độ Thu ph&oacute;ng tinh tế, khả năng chụp ở điều kiện thiếu s&aacute;ng tốt. Cảm biến IMX766 của Sony với k&iacute;ch thước 1/1,56&quot; v&agrave; điểm ảnh lớn 1,0 &mu;m gi&uacute;p bạn chụp những bức ảnh sắc n&eacute;t v&agrave; s&aacute;ng hơn.</p>\r\n\r\n<p><img alt=\"So sánh Xiaomi 13T và Xiaomi 13 Lite (Hình 9)\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/163403/Originals/so-sanh-xiaomi-13t-va-xiaomi-13-lite-9.jpg\" style=\"height:500px; width:750px\" /></p>\r\n\r\n<p>Camera của Xiaomi 13 Lite</p>\r\n\r\n<p>C&ograve;n về Xiaomi 13T, m&aacute;y được trang bị 3 camera 50MP + 50MP + 12MP. Sự kết hợp giữa Xiaomi v&agrave; Leica tạo n&ecirc;n một bước ngoặt mới, chất lượng quang học của ống k&iacute;nh tr&ecirc;n Xiaomi 13T được cải tiến v&agrave; tinh chỉnh đ&aacute;ng kể. Cảm biến ch&iacute;nh c&oacute; k&iacute;ch thước lớn đem tới những bức ảnh xuất sắc bất kể chụp v&agrave;o ban ng&agrave;y hay ban đ&ecirc;m.&nbsp;</p>\r\n\r\n<p><img alt=\"So sánh Xiaomi 13T và Xiaomi 13 Lite (Hình 10)\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/163403/Originals/so-sanh-xiaomi-13t-va-xiaomi-13-lite-10.jpg\" style=\"height:500px; width:750px\" /></p>\r\n\r\n<p>Camera Leica tr&ecirc;n Xiaomi 13T</p>\r\n\r\n<p>Camera tele Leica khẩu độ cực lớn f/1,9 tạo ra hiệu ứng bokeh như tr&ecirc;n m&aacute;y ảnh SLR chuy&ecirc;n nghiệp. Khả năng chụp ch&acirc;n dung của Xiaomi 13T cũng ở một tầm cao mới với độ sắc n&eacute;t v&agrave; ch&acirc;n thực đ&aacute;ng nể. Chưa kết, Leica c&ograve;n c&oacute; 2 bộ lọc m&agrave;u độc quyền l&agrave; Leica ch&acirc;n thực v&agrave; Leica rực rỡ cho ph&eacute;p bạn t&ugrave;y chỉnh Tone m&agrave;u, Kết cấu v&agrave; Sắc điệu để tạo ra bức ảnh đạt thẩm mỹ cao.</p>\r\n\r\n<p>X&eacute;t về camera trước th&igrave; cả 2 mẫu điện thoại Xiaomi đều g&acirc;y ấn tượng bởi camera selfie độ ph&acirc;n giải cao, cho chất lượng ảnh sắc n&eacute;t v&agrave; khung h&igrave;nh r&otilde; r&agrave;ng khi gọi video call.</p>\r\n\r\n<p><img alt=\"So sánh Xiaomi 13T và Xiaomi 13 Lite (Hình 12)\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/163403/Originals/so-sanh-xiaomi-13t-va-xiaomi-13-lite-11.jpg\" style=\"height:500px; width:750px\" /></p>\r\n\r\n<p>Camera selfie 20MP của Xiaomi 13T</p>\r\n\r\n<h2><strong>Pin v&agrave; c&ocirc;ng nghệ sạc</strong></h2>\r\n\r\n<p>Mặc d&ugrave; đều được trang bị c&ocirc;ng nghệ sạc si&ecirc;u tốc 67W nhằm r&uacute;t ngắn thời gian sạc nhưng thỏi pin của Xiaomi 13T ấn tượng hơn với dung lượng 5.000mAh. Trong khi đ&oacute;, pin của Xiaomi 13 Lite khi&ecirc;m tốn hơn với 4.500mAh. C&oacute; lẽ thỏi pin lớn cũng ch&iacute;nh l&agrave; t&aacute;c nh&acirc;n l&agrave;m tăng k&iacute;ch thước tổng thể của Xiaomi 13T so với thế hệ tiền nhiệm.</p>\r\n\r\n<p><img alt=\"So sánh Xiaomi 13T và Xiaomi 13 Lite (Hình 13)\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/163403/Originals/so-sanh-xiaomi-13t-va-xiaomi-13-lite-13.jpg\" style=\"height:500px; width:750px\" /></p>\r\n\r\n<p>Xiaomi 13T với pin 5.000mAn v&agrave; sạc nhanh 67W</p>\r\n\r\n<p>Khi được sạc đầy, bộ đ&ocirc;i n&agrave;y đảm bảo thời lượng đủ d&ugrave;ng cho mọi t&aacute;c vụ trọn vẹn 1 ng&agrave;y d&agrave;i từ s&aacute;ng đến đ&ecirc;m, thậm ch&iacute; l&agrave; sang ng&agrave;y thứ 2 nếu như cường độ sử dụng kh&ocirc;ng qu&aacute; cao. Sạc nhanh 67W t&aacute;i tạo pin nhanh ch&oacute;ng, chỉ mất khoảng hơn 40 ph&uacute;t để lấy lại 100% pin.</p>\r\n\r\n<h2><strong>Tạm kết</strong></h2>\r\n\r\n<p>Kh&ocirc;ng phải ngẫu nhi&ecirc;n m&agrave; Xiaomi 13T lại c&oacute; gi&aacute; cao hơn Xiaomi 13 Lite tới hơn 3 triệu đồng. Con số n&agrave;y l&agrave; ho&agrave;n to&agrave;n xứng đ&aacute;ng với những điểm vượt trội về m&agrave;n h&igrave;nh, hiệu năng, đa nhiệm, lưu trữ, camera v&agrave; cả pin sạc. N&oacute;i t&oacute;m lại, d&ugrave; x&eacute;t về kh&iacute;a cạnh n&agrave;o th&igrave; flagship 2023 của Xiaomi 13T vẫn dư sức bỏ xa Xiaomi 13 Lite. Do đ&oacute;, nếu bạn đang ph&acirc;n v&acirc;n chưa biết lựa chọn sản phẩm n&agrave;o th&igrave; chắc chắn Xiaomi 13T sẽ đ&aacute;ng tiền hơn rất nhiều đấy.</p>', '/storage/images_blog/mJixCJP1gl_638330133982547022_so-sanh-xiaomi-13t-va-xiaomi-13-lite-thumb.jpg', '2023-11-05 10:01:32', '2023-11-07 09:43:31');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int NOT NULL,
  `product_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` tinyint UNSIGNED DEFAULT NULL,
  `brand_id` tinyint UNSIGNED DEFAULT NULL,
  `product_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price_buy` int NOT NULL,
  `product_price_sell` int NOT NULL,
  `product_amount` int NOT NULL,
  `product_sale` int NOT NULL,
  `product_attribute` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_keyword` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `category_id`, `brand_id`, `product_image`, `product_price_buy`, `product_price_sell`, `product_amount`, `product_sale`, `product_attribute`, `product_detail`, `product_keyword`, `product_description`) VALUES
(56, 'Samsung Galaxy S23 - 8GB/256GB', 6, 3, '/storage/images_product/GFupHUQecx_image-removebg-preview.jpg', 2222222, 22222222, 20, 22, '<p>&nbsp;- H&agrave;ng nguy&ecirc;n seal, Đ&atilde; k&iacute;ch hoạt - Ch&iacute;nh h&atilde;ng (DA)</p>', '<p>&nbsp;- H&agrave;ng nguy&ecirc;n seal, Đ&atilde; k&iacute;ch hoạt - Ch&iacute;nh h&atilde;ng (DA)</p>', 'Samsung Galaxy S23 - 8GB/256GB - Hàng nguyên seal, Đã kích hoạt - Chính hãng (DA)', 'Samsung Galaxy S23 - 8GB/256GB - Hàng nguyên seal, Đã kích hoạt - Chính hãng (DA)'),
(59, 'Điện thoại iPhone 12 64GB', 6, 3, '/storage/images_product/OQTmJ10taD_iphone-12-tim-1-600x600.jpg', 15490000, 15490000, 23, 0, '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:10.5pt\">Trong những th&aacute;ng cuối năm 2020,&nbsp;<a href=\"https://www.thegioididong.com/apple\" target=\"_blank\" title=\"Tham khảo sản phẩm chính hãng của Apple tại Thế Giới Di Động\"><span style=\"color:blue\">Apple</span></a>&nbsp;đ&atilde; ch&iacute;nh thức giới thiệu đến người d&ugrave;ng cũng như iFan thế hệ iPhone&nbsp;12&nbsp;series&nbsp;mới với h&agrave;ng loạt t&iacute;nh năng bứt ph&aacute;, thiết kế được lột x&aacute;c ho&agrave;n to&agrave;n, hiệu năng đầy mạnh mẽ v&agrave; một trong số đ&oacute; ch&iacute;nh l&agrave;&nbsp;<a href=\"https://www.topzone.vn/iphone/iphone-12\" target=\"_blank\" title=\"Tham khảo thông tin sản phẩm tại TopZone.vn\"><span style=\"color:blue\">iPhone 12 64GB</span></a>.</span></strong></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:10.5pt\">Hiệu năng vượt xa mọi giới hạn</span></strong></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\">Apple đ&atilde; trang bị con chip mới nhất của h&atilde;ng (t&iacute;nh đến 11/2020) cho iPhone 12 đ&oacute; l&agrave;&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-chip-apple-a14-bionic-tren-iphone-12-va-ipad-1290695\" target=\"_blank\" title=\"Tìm hiểu chip A14 Bionic là gì?\"><span style=\"color:blue\">A14 Bionic</span></a>, được sản xuất tr&ecirc;n tiến tr&igrave;nh 5 nm với hiệu suất ổn định hơn so với chip A13 được trang bị tr&ecirc;n phi&ecirc;n bản tiền nhiệm&nbsp;<a href=\"https://www.thegioididong.com/dtdd/iphone-11\" target=\"_blank\" title=\"Tham khảo điện thoại iPhone 11 chính hãng tại Thế Giới Di Động\"><span style=\"color:blue\">iPhone 11</span></a>.</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\">Xem th&ecirc;m:&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-chip-apple-a14-bionic-tren-iphone-12-va-ipad-1290695\" target=\"_blank\" title=\"Tìm hiểu về chip Apple A14 Bionic trên iPhone 12 và iPad Air 2020\"><span style=\"color:blue\">T&igrave;m hiểu về chip Apple A14 Bionic tr&ecirc;n iPhone 12 v&agrave; iPad Air 2020</span></a></span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\">Với CPU Apple A14 Bionic, bạn c&oacute; thể dễ d&agrave;ng trải nghiệm mọi tựa game với những pha chuyển cảnh mượt m&agrave; hay h&agrave;ng loạt hiệu ứng đồ họa tuyệt đẹp ở mức đồ họa cao m&agrave; kh&ocirc;ng lo t&igrave;nh trạng giật lag.</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\">Chưa hết, Apple c&ograve;n g&acirc;y bất ngờ đến người d&ugrave;ng với hệ thống 5G lần đầu ti&ecirc;n được trang bị tr&ecirc;n những chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd-apple-iphone\" target=\"_blank\" title=\"Tham khảo iPhone kinh doanh tại thegioididong.com\"><span style=\"color:blue\">iPhone</span></a>, cho tốc độ truyền tải dữ liệu nhanh hơn, ổn định hơn.</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\">iPhone 12 sẽ chạy tr&ecirc;n hệ điều h&agrave;nh iOS 15 (12/2021)&nbsp;với nhiều t&iacute;nh năng hấp dẫn như hỗ trợ Widget cũng như những n&acirc;ng cấp tối ưu phần mềm đ&aacute;ng kể mang lại những trải nghiệm th&uacute; vị mới lạ đến người d&ugrave;ng.</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:10.5pt\">Cụm camera kh&ocirc;ng ngừng cải tiến</span></strong></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\">iPhone 12 được trang bị hệ thống camera k&eacute;p bao gồm&nbsp;<a href=\"https://www.thegioididong.com/dtdd-camera-goc-rong\" target=\"_blank\" title=\"Tham khảo điện thoại có camera góc rộng tại Thế Giới Di Động\"><span style=\"color:blue\">camera g&oacute;c rộng</span></a>&nbsp;v&agrave; camera si&ecirc;u rộng c&oacute; c&ugrave;ng độ ph&acirc;n giải l&agrave; 12 MP, chế độ ban đ&ecirc;m (<a href=\"https://www.thegioididong.com/hoi-dap/che-do-chup-dem-night-mode-la-gi-907873\" target=\"_blank\" title=\"Tìm hiểu chế độ chụp đêm Night Mode là gì?\"><span style=\"color:blue\">Night Mode</span></a>) tr&ecirc;n bộ đ&ocirc;i camera n&agrave;y cũng đ&atilde; được n&acirc;ng cấp về phần cứng lẫn thuật to&aacute;n xử l&yacute;, khi chụp những bức ảnh thiếu s&aacute;ng bạn sẽ nhận được kết quả ấn tượng với m&agrave;u sắc, độ chi tiết r&otilde; n&eacute;t đ&aacute;ng kinh ngạc.</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\">Bạn c&oacute; thể kh&aacute;m ph&aacute; th&ecirc;m những t&iacute;nh năng của camera tr&ecirc;n iPhone 12 như chế độ smart HDR 3 gi&uacute;p c&acirc;n bằng yếu tố &aacute;nh s&aacute;ng trong ảnh, l&agrave;m nổi bật chi tiết đối tượng v&agrave; c&acirc;y cối trong khi vẫn giữ được m&agrave;u sắc phong ph&uacute; của bầu trời ngay cả v&agrave;o buổi trưa nắng gắt.</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\">Chế độ chụp ch&acirc;n dung đ&atilde; tốt nay c&ograve;n tốt hơn trong việc l&agrave;m mờ hậu cảnh một c&aacute;ch nghệ thuật để dồn hết sự tập trung v&agrave;o đối tượng m&agrave; bạn muốn chụp.</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\">Bạn sẽ dễ d&agrave;ng quay video 4K HDR với chuẩn điện ảnh&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/dolby-vision-la-gi-cac-ung-dung-noi-bat-va-nhung-loai-1226284\" target=\"_blank\" title=\"Tìm hiểu Dolby Vision là gì?\"><span style=\"color:blue\">Dolby Vision</span></a>&nbsp;v&agrave; chỉnh sửa ngay tr&ecirc;n chiếc điện thoại của m&igrave;nh, bạn c&oacute; thể đưa video l&ecirc;n TV của bạn để thưởng thức thước phim sắc n&eacute;t chất lượng cao.</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\">Sự kết hợp của 2 cảm biến chất lượng n&agrave;y đ&atilde; tạo n&ecirc;n một hệ thống camera chuy&ecirc;n nghiệp kh&ocirc;ng kh&aacute;c g&igrave; những chiếc m&aacute;y ảnh thực thụ, dễ d&agrave;ng đem lại những bức h&igrave;nh sắc n&eacute;t tuyệt đối, độ chi tiết cao v&agrave; đa dạng chế độ chụp cho người d&ugrave;ng linh hoạt sử dụng.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:10.5pt\">Ghi dấu ấn về mặt thiết kế</span></strong></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\">Về ngoại h&igrave;nh iPhone 12 c&oacute; thiết kế ho&agrave;i niệm với phần cạnh được l&agrave;m vu&ocirc;ng vức tương tự tr&ecirc;n mẫu iPhone 4 thay v&igrave; bo cong như iPhone 11.</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\">Ở mặt trước iPhone 12 phần tai thỏ được l&agrave;m nhỏ gọn hơn v&agrave; cũng l&agrave; nơi chứa cảm biến Face ID c&oacute; thể nhận diện khu&ocirc;n mặt một c&aacute;ch nhanh ch&oacute;ng v&agrave; ch&iacute;nh x&aacute;c.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\">Apple c&ograve;n mang đến cho người một loạt gam m&agrave;u c&aacute; t&iacute;nh, độc đ&aacute;o tr&ecirc;n những chiếc iPhone của m&igrave;nh để người d&ugrave;ng c&oacute; sự lựa chọn ph&ugrave; hợp với những phong c&aacute;ch kh&aacute;c nhau.</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\">iPhone 12 được trang bị m&agrave;n h&igrave;nh OLED tr&agrave;n viền c&oacute; k&iacute;ch thước 6.1 inch, cho bạn kh&ocirc;ng gian trải nghiệm lớn cũng như những gi&acirc;y ph&uacute;t giải tr&iacute; hấp dẫn tr&ecirc;n một m&agrave;n ảnh v&ocirc; c&ugrave;ng chất lượng.</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\">M&aacute;y được chế t&aacute;c c&oacute; độ ho&agrave;n thiện cực cao với thiết kế nguy&ecirc;n khối, khung nh&ocirc;m v&agrave; mặt sau l&agrave; k&iacute;nh cường lực cao cấp to&aacute;t l&ecirc;n vẻ ngo&agrave;i sang chảnh cũng như mang lại độ hiệu quả an to&agrave;n cao mỗi khi sử dụng.</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\">Mặt trước của iPhone 12 được phủ ho&agrave;n to&agrave;n bởi lớp k&iacute;nh cường lực Ceramic Shield cứng c&aacute;p, được đ&aacute;nh gi&aacute; l&agrave; c&oacute; độ bền cao v&agrave; cứng c&aacute;p hơn hầu hết c&aacute;c loại mặt k&iacute;nh c&oacute; tr&ecirc;n&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" title=\"Tham khảo điện thoại chính hãng tại Thế Giới Di Động\"><span style=\"color:blue\">điện thoại th&ocirc;ng minh</span></a>&nbsp;kh&aacute;c c&oacute; mặt tr&ecirc;n thị trường.</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\">Xem th&ecirc;m:&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/mat-kinh-ceramic-shield-tren-iphone-12-la-gi-co-xin-so-nhu-1298900\" target=\"_blank\" title=\"Mặt kính Ceramic Shield trên iPhone 12 là gì? Có xịn sò như quảng cáo?\"><span style=\"color:blue\">Mặt k&iacute;nh Ceramic Shield tr&ecirc;n iPhone 12 l&agrave; g&igrave;? C&oacute; xịn s&ograve; như quảng c&aacute;o?</span></a></span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\">V&agrave; để cho thiết bị trở n&ecirc;n ho&agrave;n hảo hơn n&ecirc;n kh&ocirc;ng thể thiếu khả năng kh&aacute;ng nước, bụi chuẩn IP68 gi&uacute;p người d&ugrave;ng y&ecirc;n t&acirc;m sử dụng với những buổi đi chơi biển m&agrave; kh&ocirc;ng hề lo chiếc m&aacute;y bị v&ocirc; nước.</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:10.5pt\">Trải nghiệm xuy&ecirc;n suốt, liền mạch cả ng&agrave;y d&agrave;i</span></strong></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\">Để bạn c&oacute; những gi&acirc;y ph&uacute;t trải nghiệm liền mạch, Apple đ&atilde; trang bị một vi&ecirc;n pin c&oacute; dung lượng 2815 mAh, t&iacute;ch hợp cho khả năng tiết kiệm pin gi&uacute;p người d&ugrave;ng c&oacute; thể giải tr&iacute; đa phương tiện l&ecirc;n đến 17 giờ v&agrave; nghe nhạc li&ecirc;n tục l&ecirc;n đến 65 giờ.</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\">V&agrave; kh&ocirc;ng thể thiếu đ&oacute; ch&iacute;nh l&agrave; t&iacute;nh năng sạc nhanh, iPhone 12 c&oacute; khả năng&nbsp;<a href=\"https://www.thegioididong.com/dtdd-sac-pin-nhanh\" target=\"_blank\" title=\"Tham khảo điện thoại có sạc pin nhanh tại Thế Giới Di Động\"><span style=\"color:blue\">sạc pin nhanh</span></a>&nbsp;qua c&aacute;p c&ocirc;ng suất 20 W, chỉ trong v&ograve;ng 30 ph&uacute;t th&igrave; chiếc m&aacute;y đ&atilde; c&oacute; thế sạc được 50% pin. Th&ecirc;m v&agrave;o đ&oacute; l&agrave; khả năng&nbsp;<a href=\"https://www.thegioididong.com/dtdd-sac-khong-day\" target=\"_blank\" title=\"Tham khảo điện thoại có sạc không dây tại Thế Giới Di Động\"><span style=\"color:blue\">sạc kh&ocirc;ng d&acirc;y</span></a>&nbsp;MagSafe v&ocirc; c&ugrave;ng tiện dụng.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\">Lưu &yacute;: Củ sạc kh&ocirc;ng k&egrave;m theo m&aacute;y m&agrave; phải mua ri&ecirc;ng.</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\">Xem th&ecirc;m:&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/cong-nghe-magsafe-magsafe-2-la-gi-co-tren-thiet-bi-nao-cua-1241888\" target=\"_blank\" title=\"MagSafe trên iPhone 12 là gì? Dùng để làm gì trên các thiết bị Apple?\"><span style=\"color:blue\">MagSafe tr&ecirc;n iPhone 12 l&agrave; g&igrave;? D&ugrave;ng để l&agrave;m g&igrave; tr&ecirc;n c&aacute;c thiết bị Apple?</span></a></span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\">Sự lột x&aacute;c đầy mạnh mẽ lần n&agrave;y của Apple kh&ocirc;ng chỉ g&acirc;y bất ngờ đến người d&ugrave;ng m&agrave; c&ograve;n đ&aacute;nh dấu một kỷ nguy&ecirc;n mới trong nền ph&aacute;t triển smartphone Apple. V&agrave; đ&acirc;y cũng được xem l&agrave; một trong những bộ series iPhone m&agrave; Apple đặt nhiều t&acirc;m huyết, mục đ&iacute;ch v&agrave; đầy t&iacute;nh năng mạnh mẽ chưa từng thấy.</span></span></span></p>\r\n\r\n<p>&nbsp;</p>', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>M&agrave;n h&igrave;nh</td>\r\n			<td>6.1 inch, OLED, Super Retina XDR, 2532 x 1170 Pixels</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera sau</td>\r\n			<td>12.0 MP + 12.0 MP</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera Selfie</td>\r\n			<td>12.0 MP</td>\r\n		</tr>\r\n		<tr>\r\n			<td>RAM</td>\r\n			<td>4 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ trong</td>\r\n			<td>64 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU</td>\r\n			<td>Apple A14 Bionic</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dung lượng pin</td>\r\n			<td>2815 mAh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Thẻ sim</td>\r\n			<td>1 - 1 eSIM, 1 Nano SIM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hệ điều h&agrave;nh</td>\r\n			<td>iOS 14</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xuất xứ</td>\r\n			<td>Trung Quốc</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Thời gian ra mắt</td>\r\n			<td>10/2020</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 'Điện thoại iPhone 12 64GB', 'Điện thoại iPhone 12 64GB'),
(60, 'Điện thoại di động iPhone 11 (128GB)', 6, 3, '/storage/images_product/CbLcXaehAD_iphone 11 (1).webp', 11780000, 11780000, 20, 10, '<p>iPhone 11 - si&ecirc;u phẩm được mong chờ nhất năm 2019 của Apple chuẩn bị ra mắt. Với những cải tiến vượt trội, phi&ecirc;n bản iPhone mới nhất hứa hẹn sẽ l&agrave;m b&ugrave;ng nổ thị trường c&ocirc;ng nghệ.</p>\r\n\r\n<h3>Thiết kế cực kỳ ấn tượng với m&agrave;n h&igrave;nh c&oacute; độ ph&acirc;n giải cao</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://cdn.hoanghamobile.com/i/content/Uploads/Content/2019/09/05/apple--dien-thoai-di-dong-iphone-11-64gb-chinh-hang-vn-a-2.jpg\" /></p>\r\n\r\n<p>iPhone 11 vẫn sở hữu thiết kế tr&agrave;n viền với &ldquo;tai thỏ&rdquo; giống iPhone X. Viền bezel ph&iacute;a tr&ecirc;n v&agrave; dưới cũng được l&agrave;m gọn lại nhằm tối đa m&agrave;n h&igrave;nh sử dụng. C&ugrave;ng với đ&oacute;, 4 g&oacute;c của m&aacute;y cũng được bo tr&ograve;n nhẹ tạo cảm gi&aacute;c chắc chắn khi cầm tr&ecirc;n tay. Mặt lưng iPhone 11 l&agrave;m từ chất liệu k&iacute;nh n&ecirc;n rất sang trọng, tinh tế. Kh&aacute;c với c&aacute;c d&ograve;ng iPhone trước, sản phẩm n&agrave;y sẽ c&oacute; 6 m&agrave;u bản bạc, v&agrave;ng, xanh l&aacute;, trắng, đen đỏ.</p>\r\n\r\n<p>C&ocirc;ng nghệ m&agrave;n h&igrave;nh LCD Retina mang đến chất lượng tốt nhất. Độ ph&acirc;n giải m&agrave;n h&igrave;nh 1125 x 2436 pixels hiển thị m&agrave;u sắc ch&iacute;nh x&aacute;c v&agrave; cho h&igrave;nh ảnh sắc n&eacute;t. M&agrave;n h&igrave;nh rộng 6.1 inch gi&uacute;p người sử dụng thoải m&aacute;i trải nghiệm xem phim, lướt web&hellip; Đặc biệt Apple đ&atilde; trang bị tần số qu&eacute;t từ 90 đến 120 Hz với 463 điểm m&agrave;u.</p>\r\n\r\n<h3>Camera độc đ&aacute;o n&acirc;ng tầm chụp ảnh chuy&ecirc;n nghiệp</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://cdn.hoanghamobile.com/i/content/Uploads/Content/2019/09/05/apple--dien-thoai-di-dong-iphone-11-64gb-chinh-hang-vn-a-3.jpg\" /></p>\r\n\r\n<p>iPhone 11 vẫn sở hữu 2 camera nhưng thay v&igrave; đặt dọc như iPhone X th&igrave; ch&uacute;ng lại được sắp xếp theo h&igrave;nh vu&ocirc;ng. Đ&egrave;n flash cũng được đặt trong h&igrave;nh vu&ocirc;ng n&agrave;y. Trong đ&oacute; c&oacute; một camera ch&iacute;nh với độ ph&acirc;n giải 12MP gi&uacute;p bạn c&oacute; được những bức ảnh cực đẹp. Camera thứ hai c&oacute; g&oacute;c si&ecirc;u rộng 12 MP, ti&ecirc;u cự 13mm cho g&oacute;c chụp 120 độ.</p>\r\n\r\n<p>C&aacute;c thuật to&aacute;n xử l&yacute; c&ugrave;ng được Apple n&acirc;ng cấp gồm chụp ch&acirc;n dung Potrait Mode, chụp ch&acirc;n dung đen trắng Highkey. Đồng thời tự động chuyển sang t&iacute;nh năng chụp đ&ecirc;m Night Mode khi nhận thấy thiếu &aacute;nh s&aacute;ng.</p>\r\n\r\n<p>Camera selfie được n&acirc;ng cấp với độ ph&acirc;n giải l&ecirc;n đến 12MP. Đồng thời đ&egrave;n flash cũng được n&acirc;ng độ s&aacute;ng v&agrave; v&ugrave;ng chiếu s&aacute;ng rộng hơn. Nhờ đ&oacute;, bạn sẽ thoải m&aacute;i chụp ảnh kể cả ở những nơi &aacute;nh s&aacute;ng yếu. B&ecirc;n cạnh đ&oacute;, chế độ slow-motiton hứa hẹn sẽ trở th&agrave;nh một t&iacute;nh năng độc đ&aacute;o. Mỗi một sản phẩm mới của Apple đều được n&acirc;ng cấp camera nhằm tạo ra những trải nghiệm mới th&uacute; vị hơn cho người sử dụng.</p>\r\n\r\n<h3>Pin dung lượng 3110 mAh n&acirc;ng thời gian nhiều hơn 1 giờ so với iPhone XR</h3>\r\n\r\n<p>iPhone 11 ch&iacute;nh h&atilde;ng được trang bị pin c&oacute; dung lượng 3110 mAh. Với dung lượng như vậy th&igrave; chỉ một lần sạc l&agrave; c&oacute; thể sử dụng thoải m&aacute;i. Th&ecirc;m một điểm cộng nữa cho sản phẩm n&agrave;y đ&oacute; ch&iacute;nh l&agrave; c&ocirc;ng nghệ sạc kh&ocirc;ng d&acirc;y 15W. So với sạc kh&ocirc;ng d&acirc;y 7.5W hiện tại, sạc kh&ocirc;ng d&acirc;y 15W tăng tốc độ sạc l&ecirc;n 15% v&agrave; hiệu quả năng lượng cao hơn 30%. Mặc d&ugrave; l&agrave; c&ocirc;ng nghệ sạc nhanh nhưng vẫn đảm bảo iPhone kh&ocirc;ng qu&aacute; n&oacute;ng v&agrave; giảm 3 độ trong l&uacute;c sạc.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Hiệu năng tối ưu với bộ xử l&yacute; Apple A13</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://cdn.hoanghamobile.com/i/content/Uploads/2021/02/05/ip-11.jpeg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Bộ&nbsp;xử l&yacute; A13 được sản xuất độc quyền cho iPhone 11 nhằm tạo hiệu năng mạnh mẽ, tiết kiệm pin hiệu quả. Hơn nữa, hệ điều h&agrave;nh iOS v13.0 sẽ tăng tốc độ mở ứng dụng 40%, tốc độ hiển thị b&agrave;n ph&iacute;m 50%, tốc độ camera 70%. C&ocirc;ng nghệ Wi-fi 6 mới nhất cũng được đưa v&agrave;o iPhone 11 nhằm tăng tốc độ kết nối internet tới 40%.</p>\r\n\r\n<p>Để thay thế cho 5G, Apple đ&atilde; ph&aacute;t triển c&ocirc;ng nghệ Modified Polyimide (MPI) thay v&igrave; Liquid Crystal Polymer (LCP). N&acirc;ng cấp băng th&ocirc;ng si&ecirc;u rộng gi&uacute;p kết nối mạng nhanh hơn.</p>\r\n\r\n<p>Face ID cũng được cải thiện khi c&oacute; thể ph&acirc;n biệt tiền cảnh v&agrave; &aacute;nh xạ khu&ocirc;n mặt để mở kh&oacute;a nhanh ch&oacute;ng hơn. Apple đ&atilde; tăng cường &aacute;nh s&aacute;ng của đ&egrave;n chiếu nhằm tr&aacute;nh &aacute;nh s&aacute;ng của m&ocirc;i trường t&aacute;c động l&agrave;m ảnh hưởng đến hoạt động của Face&nbsp; ID. Nhờ đ&oacute; n&acirc;ng cao t&iacute;nh bảo mật cho sản phẩm.</p>\r\n\r\n<p>&nbsp;</p>', '<ol>\r\n	<li><strong>C&ocirc;ng nghệ m&agrave;n h&igrave;nh:</strong>&nbsp;IPS LCD</li>\r\n</ol>\r\n\r\n<ol>\r\n	<li><strong>Độ ph&acirc;n giải:</strong>&nbsp;828 x 1792 Pixels, 2 camera 12 MP, 12 MP</li>\r\n</ol>\r\n\r\n<ol>\r\n	<li><strong>K&iacute;ch thước m&agrave;n h&igrave;nh:</strong>&nbsp;6.1&quot;</li>\r\n</ol>\r\n\r\n<ol>\r\n	<li><strong>Hệ điều h&agrave;nh:</strong>&nbsp;iOS 15</li>\r\n</ol>\r\n\r\n<ol>\r\n	<li><strong>Vi xử l&yacute;:</strong>&nbsp;Apple A13 Bionic 6 nh&acirc;n</li>\r\n</ol>\r\n\r\n<ol>\r\n	<li><strong>Bộ nhớ trong:</strong>&nbsp;128 GB</li>\r\n</ol>\r\n\r\n<ol>\r\n	<li><strong>RAM:</strong>&nbsp;4 GB</li>\r\n</ol>\r\n\r\n<ol>\r\n	<li><strong>Mạng di động:</strong>&nbsp;Hỗ trợ 4G</li>\r\n</ol>\r\n\r\n<ol>\r\n	<li><strong>Số khe SIM:</strong>&nbsp;1 Nano SIM &amp; 1 eSIM</li>\r\n</ol>\r\n\r\n<ol>\r\n	<li><strong>Dung lượng pin:</strong>&nbsp;3110 mAh</li>\r\n</ol>', 'Điện thoại di động iPhone 11 (128GB) - Chính hãng VN/A', 'Điện thoại di động iPhone 11 (128GB) - Chính hãng VN/A');
INSERT INTO `products` (`product_id`, `product_name`, `category_id`, `brand_id`, `product_image`, `product_price_buy`, `product_price_sell`, `product_amount`, `product_sale`, `product_attribute`, `product_detail`, `product_keyword`, `product_description`) VALUES
(61, 'iPhone 15 Pro Max 256GB', 6, 3, '/storage/images_product/nnBvZMexZU_638327041739564335_iphone-15-pro-max-5.webp', 3440000, 3440000, 30, 10, '<h2 style=\"text-align:center\">Đặc điểm nổi bật của&nbsp;iPhone 15 Pro Max</h2>\r\n\r\n<p style=\"text-align:center\"><img alt=\"iPhone 15 Pro Max 256GB\" src=\"https://images.fpt.shop/unsafe/fit-in/665x374/filters:quality(100):fill(white)/fptshop.com.vn/Uploads/Originals/2023/10/12/638327041739877048_iphone-15-pro-max-2.jpg\" style=\"height:374px; width:665px\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"iPhone 15 Pro Max 256GB\" src=\"https://images.fpt.shop/unsafe/fit-in/665x374/filters:quality(100):fill(white)/fptshop.com.vn/Uploads/Originals/2023/10/12/638327041739564335_iphone-15-pro-max-5.jpg\" style=\"height:374px; width:665px\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"iPhone 15 Pro Max 256GB\" src=\"https://images.fpt.shop/unsafe/fit-in/665x374/filters:quality(100):fill(white)/fptshop.com.vn/Uploads/Originals/2023/10/12/638327041738940000_iphone-15-pro-max-12.jpg\" style=\"height:374px; width:665px\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"iPhone 15 Pro Max 256GB\" src=\"https://images.fpt.shop/unsafe/fit-in/665x374/filters:quality(100):fill(white)/fptshop.com.vn/Uploads/Originals/2023/10/12/638327041738940000_iphone-15-pro-max-19.jpg\" style=\"height:374px; width:665px\" /></p>\r\n\r\n<h2 style=\"text-align:center\">Đ&aacute;nh gi&aacute; chi tiết&nbsp;iPhone 15 Pro Max</h2>\r\n\r\n<p style=\"text-align:center\"><img alt=\"iphone 15 pro Apple 1\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/0511/iphone-15-pro-html-1.png\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"iphone 15 pro Apple 2\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/0511/iphone-15-pro-html-2.png\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"iphone 15 pro Apple 3\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/0511/iphone-15-pro-html-3.png\" /></p>\r\n\r\n<h2 style=\"text-align:center\"><strong>Đ&aacute;nh gi&aacute; iPhone 15 Pro Max 256GB từ FPT Shop</strong></h2>\r\n\r\n<p style=\"text-align:center\"><strong>iPhone 15 Pro Max l&agrave; chiếc iPhone cao cấp nhất với m&agrave;n h&igrave;nh lớn nhất, thời lượng pin tốt nhất, cấu h&igrave;nh mạnh nhất v&agrave; thiết kế khung Titan chuẩn h&agrave;ng kh&ocirc;ng vũ trụ si&ecirc;u bền, si&ecirc;u nhẹ.&nbsp;iPhone 15 Pro Max&nbsp;sở hữu những điểm vượt trội nhất nh&agrave; Apple. Theo đ&oacute;, người d&ugrave;ng sẽ trải nghiệm chiếc iPhone cao cấp với hiệu năng &ldquo;khủng&rdquo; chip A17 Pro, khung titan, khả năng zoom n&acirc;ng cấp, n&uacute;t t&aacute;c vụ mới,&hellip;</strong></p>\r\n\r\n<p style=\"text-align:center\"><strong><img alt=\"iPhone 15 Pro Max (ảnh 1)\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/0511/iphone-15-pro-max-12.jpg\" /></strong></p>\r\n\r\n<h2 style=\"text-align:center\"><strong>iPhone 15 Pro Max c&oacute; g&igrave; mới?</strong></h2>\r\n\r\n<h3 style=\"text-align:center\"><strong>Thiết kế titan chuẩn h&agrave;ng kh&ocirc;ng vũ trụ</strong></h3>\r\n\r\n<p style=\"text-align:center\">iPhone 15 Pro Max thể hiện đẳng cấp ngay từ vẻ bề ngo&agrave;i với khung viền bằng titan b&oacute;ng bẩy, tinh tế, đẹp một c&aacute;ch sang trọng. Apple đ&atilde; mất rất nhiều quy tr&igrave;nh gia c&ocirc;ng cơ kh&iacute;, ch&agrave; nh&aacute;m, đ&aacute;nh b&oacute;ng v&agrave; phun m&agrave;i để tạo n&ecirc;n một chất liệu vừa đẹp, vừa bền, lại rất nhẹ. Phần khung iPhone 15 Pro Max c&ograve;n được uốn cong, kết hợp với kiểu d&aacute;ng si&ecirc;u mỏng gi&uacute;p ho&agrave;n hảo trong l&ograve;ng b&agrave;n tay.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"iPhone 15 Pro Max có gì mới 2\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/0511/iphone-15-pro-max-4.jpg\" /></p>\r\n\r\n<p style=\"text-align:center\">N&oacute;i qua một ch&uacute;t về khung viền titan tr&ecirc;n iPhone 15 Pro Max, phần khung sườn được l&agrave;m từ 100% nh&ocirc;m t&aacute;i chế, đảm bảo nhẹ v&agrave; th&acirc;n thiện với m&ocirc;i trường. Phần viền titan sẽ được gắn với khung sườn nh&ocirc;m bằng c&ocirc;ng nghệ khuếch t&aacute;n trạng th&aacute;i rắn, sử dụng quy tr&igrave;nh nhiệt cơ kh&iacute; để nối hai vật liệu kim loại lại với nhau, tạo độ bền chắc ho&agrave;n hảo. Bạn sẽ c&oacute; chiếc iPhone bản Pro Max nhẹ nhất từ trước đến nay, thoải m&aacute;i để cầm tr&ecirc;n tay v&agrave; sử dụng trong thời gian d&agrave;i.</p>\r\n\r\n<h3 style=\"text-align:center\"><strong>M&agrave;n h&igrave;nh Super Retina XDR ti&ecirc;n tiến si&ecirc;u mượt</strong></h3>\r\n\r\n<p style=\"text-align:center\">Trải nghiệm h&igrave;nh ảnh tr&ecirc;n iPhone 15 Pro Max hết sức ấn tượng về cả chất lượng hiển thị lẫn độ mượt m&agrave;. C&ocirc;ng nghệ Super Retina XDR k&iacute;ch thước lớn tới 6,7 inch OLED, độ ph&acirc;n giải 2796x1290 pixel với mật độ điểm ảnh 460 ppi si&ecirc;u n&eacute;t, t&aacute;i hiện mọi thứ một c&aacute;ch sống động đ&aacute;ng kinh ngạc. C&ocirc;ng nghệ ProMotion với tốc độ l&agrave;m mới l&ecirc;n tới 120Hz, c&oacute; thể thay đổi linh hoạt, gi&uacute;p c&aacute;c thao t&aacute;c vuốt chạm lu&ocirc;n lu&ocirc;n mượt m&agrave;, đồng thời vẫn đảm bảo tiết kiệm pin.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"iPhone 15 Pro Max có gì mới (ảnh 4)\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/0511/iphone-15-pro-max-5.jpg\" /></p>\r\n\r\n<p style=\"text-align:center\">Khu vực Dynamic Island tr&ecirc;n m&agrave;n h&igrave;nh iPhone 15 Pro Max sẽ l&agrave; nơi hiển thị c&aacute;c th&ocirc;ng b&aacute;o v&agrave; những th&ocirc;ng tin ch&iacute;nh của ứng dụng một c&aacute;ch trực quan để bạn lu&ocirc;n được cập nhật theo c&aacute;ch tiện lợi nhất. T&iacute;nh năng m&agrave;n h&igrave;nh lu&ocirc;n bật cải tiến với chế độ chờ, sẽ biến iPhone 15 Pro Max th&agrave;nh một chiếc đồng hồ để b&agrave;n cực chất, hiển thị những th&ocirc;ng tin cần thiết.</p>\r\n\r\n<h3 style=\"text-align:center\"><strong>Chip A17 Pro, đưa sức mạnh của iPhone l&ecirc;n giới hạn mới</strong></h3>\r\n\r\n<p style=\"text-align:center\">Để xứng tầm với iPhone 15 Pro Max, lần đầu ti&ecirc;n một con chip mang t&ecirc;n Pro xuất hiện. Apple A17 Pro đưa sức mạnh của iPhone l&ecirc;n một đẳng cấp ho&agrave;n to&agrave;n mới, khi kh&ocirc;ng chỉ mạnh mẽ trong mọi t&aacute;c vụ thường ng&agrave;y m&agrave; c&ograve;n mang tới khả năng chơi game ho&agrave;n hảo. C&aacute;c game di động giờ đ&acirc;y sẽ trở n&ecirc;n v&ocirc; c&ugrave;ng ch&acirc;n thực, sống động với độ chi tiết tuyệt vời, tựa như những game bom tấn AAA tr&ecirc;n PC. GPU của iPhone 15 Pro Max sử dụng c&ocirc;ng nghệ d&ograve; tia bằng phần cứng, nhanh hơn tới 4 lần thế hệ trước, tạo n&ecirc;n hiệu ứng &aacute;nh s&aacute;ng ch&acirc;n thực hơn bao giờ hết trong c&aacute;c tựa game.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"iPhone 15 Pro Max có gì mới (ảnh 5)\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/0511/iphone-15-pro-max-2.jpg\" /></p>\r\n\r\n<h3 style=\"text-align:center\"><strong>Hệ thống camera zoom 5x mạnh mẽ</strong></h3>\r\n\r\n<p style=\"text-align:center\">iPhone 15 Pro Max sở hữu cụm camera chuy&ecirc;n nghiệp v&agrave; mạnh mẽ. Bạn sẽ c&oacute; tới 7 ti&ecirc;u cự để chụp ảnh, giống như đang sở hữu một chiếc m&aacute;y ảnh với 7 ống k&iacute;nh chuy&ecirc;n dụng. Từ g&oacute;c si&ecirc;u rộng, g&oacute;c rộng, cận cảnh cho đến zoom quang 5x, iPhone 15 Pro Max cung cấp cho người d&ugrave;ng đầy đủ g&oacute;c độ để c&oacute; được những bức ảnh độc đ&aacute;o với độ chi tiết, m&agrave;u sắc chưa từng thấy.</p>\r\n\r\n<p style=\"text-align:center\">Ảnh ch&acirc;n dung l&agrave; một trong những t&iacute;nh năng người d&ugrave;ng sử dụng thường xuy&ecirc;n nhất tr&ecirc;n iPhone. iPhone 15 Pro Max hiểu điều đ&oacute; v&agrave; cung cấp rất nhiều n&acirc;ng cấp khi chụp ảnh ch&acirc;n dung. Giờ đ&acirc;y iPhone c&oacute; thể tự động ph&aacute;t hiện được những ho&agrave;n cảnh cần chụp ch&acirc;n dung để chuyển sang chế độ ch&acirc;n dung m&agrave; bạn kh&ocirc;ng cần phải thao t&aacute;c. Hiệu ứng l&agrave;m mờ cũng c&oacute; chiều s&acirc;u v&agrave; ch&iacute;nh x&aacute;c hơn, thậm ch&iacute; bạn c&ograve;n c&oacute; thể điều chỉnh độ mờ ngay cả khi sau khi chụp ảnh. C&ocirc;ng nghệ Photonic Engine hỗ trợ chụp ảnh ch&acirc;n dung chuy&ecirc;n nghiệp hơn, tăng cường độ chi tiết, m&agrave;u sắc ch&acirc;n thực, tăng tốc độ chụp v&agrave; khả năng chụp ảnh trong điều kiện &aacute;nh s&aacute;ng yếu hơn gấp đ&ocirc;i.</p>\r\n\r\n<p style=\"text-align:center\">Camera ch&iacute;nh 48MP của iPhone 15 Pro Max kiểm so&aacute;t &aacute;nh s&aacute;ng rất th&ocirc;ng minh. Chế độ Ban Đ&ecirc;m cho ph&eacute;p bạn bắt trọn h&igrave;nh ảnh chủ thể r&otilde; r&agrave;ng hơn trong đ&ecirc;m tối nhờ dải tần nhạy s&aacute;ng được tăng cường. Trong những điều kiện &aacute;nh s&aacute;ng phức tạp như nắng gắt hay ngược s&aacute;ng, HDR sẽ tối ưu h&oacute;a th&ocirc;ng minh cho cả chủ thể v&agrave; hậu cảnh, t&aacute;i tạo t&ocirc;ng m&agrave;u da ch&iacute;nh x&aacute;c, m&agrave;u sắc tuyệt đẹp để mang tới những bức ảnh đầy nghệ thuật.</p>\r\n\r\n<p style=\"text-align:center\">iPhone 15 Pro Max đ&atilde; n&acirc;ng cấp khả năng zoom chưa từng c&oacute; tr&ecirc;n iPhone với camera Tele 5x. Nghĩa l&agrave; bạn c&oacute; thể zoom quang học, ph&oacute;ng to h&igrave;nh ảnh tới 5 lần để thu được những khung cảnh từ xa một c&aacute;ch r&otilde; n&eacute;t. Kh&ocirc;ng cần phải di chuyển lại gần, bạn vẫn c&oacute; thể chụp lại c&aacute;c bức ảnh thi&ecirc;n nhi&ecirc;n hay con người sắc n&eacute;t đ&aacute;ng kinh ngạc.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"iPhone 15 Pro Max có gì mới (ảnh 7)\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/0511/iphone-15-pro-max-9.jpg\" /></p>\r\n\r\n<h3 style=\"text-align:center\"><strong>Kh&aacute;m ph&aacute; n&uacute;t t&aacute;c vụ ho&agrave;n to&agrave;n mới</strong></h3>\r\n\r\n<p style=\"text-align:center\">N&uacute;t t&aacute;c vụ của iPhone 15 Pro Max l&agrave; t&iacute;nh năng lần đầu ti&ecirc;n xuất hiện tr&ecirc;n iPhone. N&uacute;t t&aacute;c vụ cho ph&eacute;p bạn tương t&aacute;c nhanh ch&oacute;ng v&agrave; tiện lợi hơn, t&ugrave;y theo t&aacute;c vụ bạn thường xuy&ecirc;n sử dụng. Bạn c&oacute; thể g&aacute;n một chức năng cho n&uacute;t n&agrave;y như chuyển sang chế độ im lặng; mở camera; đ&egrave;n pin; ghi &acirc;m; dịch v&agrave; nhiều t&iacute;nh năng kh&aacute;c. V&iacute; dụ bạn l&agrave; một người th&iacute;ch chụp ảnh, đơn giản chỉ cần nhấn v&agrave;o n&uacute;t t&aacute;c vụ v&agrave; đưa iPhone l&ecirc;n chụp bất cứ l&uacute;c n&agrave;o. Kh&ocirc;ng cần nh&igrave;n, chỉ cần một thao t&aacute;c duy nhất, điện thoại đ&atilde; sẵn s&agrave;ng để lưu lại khoảnh khắc đ&aacute;ng nhớ.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"iPhone 15 Pro Max có gì mới (ảnh 8)\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/0511/iphone-15-pro-max-10.jpg\" /></p>\r\n\r\n<h3 style=\"text-align:center\"><strong>Cổng USB-C mới truyền dữ liệu cực nhanh</strong></h3>\r\n\r\n<p style=\"text-align:center\">iPhone 15 Pro Max l&agrave; chiếc iPhone đầu ti&ecirc;n hỗ trợ chuẩn USB 3, cho bước nhảy vọt về tốc độ truyền dữ liệu với 10Gb/s. Ngay cả khi bi&ecirc;n tập những video ProRes nặng, bạn cũng c&oacute; thể truyền file trong chớp mắt. Hơn nữa, iPhone 15 Pro Max c&ograve;n đ&aacute;nh dấu sự thay đổi lớn về giao thức kết nối khi sử dụng cổng USB-C. Đ&acirc;y l&agrave; cổng kết nối phổ biến nhất thế giới hiện nay, cho ph&eacute;p bạn kết nối với rất nhiều phụ kiện, củ sạc hay cả c&aacute;c sản phẩm kh&aacute;c thuộc hệ sinh th&aacute;i Apple như iPad, MacBook, AirPods, Apple Watch.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"iPhone 15 Pro Max có gì mới (ảnh 9)\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/0511/iphone-15-pro-max-19.jpg\" /></p>\r\n\r\n<h3 style=\"text-align:center\"><strong>Thời lượng pin h&agrave;ng đầu</strong></h3>\r\n\r\n<p style=\"text-align:center\">Ngay cả khi n&acirc;ng cấp mạnh mẽ v&agrave; to&agrave;n diện mọi t&iacute;nh năng, iPhone 15 Pro Max vẫn duy tr&igrave; được thời lượng pin đầu bảng tr&ecirc;n thị trường. Bạn c&oacute; thể xem video li&ecirc;n tục trong 29 giờ đồng hồ tr&ecirc;n iPhone 15 Pro Max, nhiều hơn tới 9 giờ so với thế hệ iPhone 12 Pro Max. Thoải m&aacute;i sử dụng, l&agrave;m việc v&agrave; giải tr&iacute; m&agrave; kh&ocirc;ng phải lo đến việc hết pin. Việc hỗ trợ sạc nhanh v&agrave; sạc nhanh kh&ocirc;ng d&acirc;y qua bộ sạc MagSafe gi&uacute;p sạc iPhone trở n&ecirc;n dễ d&agrave;ng hơn bao giờ hết.</p>\r\n\r\n<h2 style=\"text-align:center\"><strong>iPhone 15 Pro Max c&oacute; mấy m&agrave;u?</strong></h2>\r\n\r\n<p style=\"text-align:center\">Năm nay, iPhone 15 Pro Max c&oacute; 4 m&agrave;u t&ugrave;y chọn&nbsp;bao gồm: Titan Đen, Titan Trắng, Titan Xanh v&agrave; Titan Tự Nhi&ecirc;n.&nbsp;Trong đ&oacute;, iPhone 15 Pro Max m&agrave;u Titan Tự nhi&ecirc;n sẽ gi&uacute;p bạn cảm nhận ch&acirc;n thật nhất m&agrave;u sắc của Titanium trong thực tế. Bạn c&oacute; thể lựa chọn c&aacute;c gam m&agrave;u t&ugrave;y theo sở th&iacute;ch v&agrave; gu thẩm mỹ c&aacute; nh&acirc;n.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"iPhone 15 Pro Max có 4 màu tùy chọn\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/0511/iphone-15-pro-max-2.jpg\" /></p>\r\n\r\n<p style=\"text-align:center\">C&oacute; thể thấy rằng ngay từ t&ecirc;n gọi, to&agrave;n bộ c&aacute;c lựa chọn m&agrave;u n&agrave;y đều l&agrave; biến thể của m&agrave;u Titan &ndash; vật liệu chủ đạo để ho&agrave;n thiện khung vỏ cho iPhone 15 Pro Max. Tr&ecirc;n trang chủ Apple, h&atilde;ng tự h&agrave;o rằng iPhone 15 Pro Max c&oacute; bốn m&agrave;u mới tuyệt đẹp. Thực chất, cả bốn gam m&agrave;u n&agrave;y đều gi&uacute;p t&ocirc; điểm cho vẻ đẹp của chất liệu th&acirc;n m&aacute;y l&ecirc;n mức tốt nhất.</p>\r\n\r\n<h2 style=\"text-align:center\"><strong>iPhone 15 Pro Max gi&aacute; bao nhi&ecirc;u? Bảng gi&aacute; iPhone 15 Pro Max mới nhất</strong></h2>\r\n\r\n<p style=\"text-align:center\">iPhone 15 Pro Max năm nay c&oacute; sự&nbsp;n&acirc;ng cấp đ&aacute;ng kể về c&aacute;c phi&ecirc;n bản dung lượng, kh&ocirc;ng c&ograve;n sự xuất hiện phi&ecirc;n bản 128GB v&agrave; 256GB l&agrave; mức dung lượng cơ bản của model n&agrave;y.&nbsp;iPhone 15 Pro Max l&agrave; phi&ecirc;n bản cao cấp theo định vị của Apple, do đ&oacute; mức gi&aacute; khởi điểm của ch&uacute;ng c&oacute; sự c&aacute;ch biệt kh&aacute; lớn so với c&aacute;c&nbsp;phi&ecirc;n bản c&ograve;n lại.</p>\r\n\r\n<p style=\"text-align:center\">Với mức gi&aacute; khởi điểm từ 1.199 USD tại thị trường Mỹ (khoảng hơn 28,9 triệu đồng), t&ugrave;y thuộc v&agrave;o quốc gia v&agrave; c&aacute;c yếu tố kh&aacute;c c&oacute; thể ảnh hưởng đến sự thay đổi của&nbsp;gi&aacute; sản phẩm. Dưới đ&acirc;y l&agrave; bảng gi&aacute; bạn c&oacute; thể tham khảo (gi&aacute; c&ocirc;ng bố theo trang Apple.com):</p>\r\n\r\n<p style=\"text-align:center\"><strong>Bảng gi&aacute; iPhone 15 Pro Max được c&ocirc;ng bố:</strong></p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:center\"><strong>Phi&ecirc;n bản</strong></td>\r\n			<td style=\"text-align:center\"><strong>Gi&aacute; b&aacute;n được c&ocirc;ng bố</strong></td>\r\n			<td style=\"text-align:center\"><strong>Gi&aacute; tham khảo (Apple.com)</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">iPhone 15 Pro Max 256GB</td>\r\n			<td style=\"text-align:center\">$1199</td>\r\n			<td style=\"text-align:center\">Gi&aacute; từ&nbsp;34.999.000đ</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">iPhone 15 Pro Max 512GB</td>\r\n			<td style=\"text-align:center\">$1399</td>\r\n			<td style=\"text-align:center\">Gi&aacute; từ&nbsp;34.999.000đ</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">iPhone 15 Pro Max 1TB</td>\r\n			<td style=\"text-align:center\">$1399</td>\r\n			<td style=\"text-align:center\">Gi&aacute; từ&nbsp;46.999.000đ</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2 style=\"text-align:center\"><strong>iPhone 15 Pro Max c&oacute; g&igrave; kh&aacute;c biệt với thế hệ cũ?</strong></h2>\r\n\r\n<p style=\"text-align:center\">iPhone 15 Pro Max l&agrave; t&acirc;m điểm của mọi sự ch&uacute; &yacute; khi sở hữu những c&ocirc;ng nghệ mới v&agrave; tốt nhất của Apple trong năm nay. Vậy điện thoại n&agrave;y c&oacute; những cải tiến g&igrave; đ&aacute;ng ch&uacute; &yacute; so với&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/iphone-14-pro-max\">iPhone 14 Pro Max</a>? H&atilde;y c&ugrave;ng FPT Shop so s&aacute;nh về th&ocirc;ng số của&nbsp;hai điện thoại để c&oacute; c&aacute;i nh&igrave;n tổng quan trước khi mua iPhone 15 Pro Max.</p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:center\"><strong>Th&ocirc;ng số kỹ thuật</strong></td>\r\n			<td style=\"text-align:center\"><strong>iPhone 15 Pro Max</strong></td>\r\n			<td style=\"text-align:center\"><strong>iPhone 14 Pro Max</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Gi&aacute; khởi điểm</td>\r\n			<td style=\"text-align:center\">$1,099</td>\r\n			<td style=\"text-align:center\">$1,199</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">K&iacute;ch thước</td>\r\n			<td style=\"text-align:center\">159.9 x 76.7 x 8.25 mm</td>\r\n			<td style=\"text-align:center\">160.7 x 77.6 x 7.85 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Trọng lượng</td>\r\n			<td style=\"text-align:center\">221 gam</td>\r\n			<td style=\"text-align:center\">240 gam</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Thiết kế</td>\r\n			<td>\r\n			<p style=\"text-align:center\">Vỏ l&agrave;m bằng titan</p>\r\n\r\n			<p style=\"text-align:center\">Mặt sau k&iacute;nh mờ</p>\r\n\r\n			<p style=\"text-align:center\">N&uacute;t Action</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">Vỏ l&agrave;m bằng th&eacute;p&nbsp;kh&ocirc;ng gỉ</p>\r\n\r\n			<p style=\"text-align:center\">Mặt sau k&iacute;nh mờ</p>\r\n\r\n			<p style=\"text-align:center\">N&uacute;t gạt tắt chu&ocirc;ng/im lặng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">M&agrave;n h&igrave;nh</td>\r\n			<td>\r\n			<p style=\"text-align:center\">OLED Super Retina 6.7 inch</p>\r\n\r\n			<p style=\"text-align:center\">Thiết kế vi&ecirc;n thuốc</p>\r\n\r\n			<p style=\"text-align:center\">Dynamic Island</p>\r\n\r\n			<p style=\"text-align:center\">M&agrave;n h&igrave;nh lu&ocirc;n bật&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">OLED Super Retina 6.7 inch</p>\r\n\r\n			<p style=\"text-align:center\">Thiết kế vi&ecirc;n thuốc</p>\r\n\r\n			<p style=\"text-align:center\">Dynamic Island</p>\r\n\r\n			<p style=\"text-align:center\">M&agrave;n h&igrave;nh lu&ocirc;n bật</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">M&agrave;u sắc</td>\r\n			<td style=\"text-align:center\">Titan đen, Titan trắng, Titan xanh, Titan tự nhi&ecirc;n</td>\r\n			<td style=\"text-align:center\">Đen, T&iacute;m, Bạc, V&agrave;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Độ ph&acirc;n giải</td>\r\n			<td style=\"text-align:center\">2796x1290 pixel</td>\r\n			<td style=\"text-align:center\">2796 x 1290 pixel</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Mật độ điểm ảnh</td>\r\n			<td style=\"text-align:center\">460PPI</td>\r\n			<td style=\"text-align:center\">460 PPI</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Độ s&aacute;ng tối đa</td>\r\n			<td style=\"text-align:center\">2000 nits</td>\r\n			<td style=\"text-align:center\">2000 nits</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Tần số qu&eacute;t</td>\r\n			<td style=\"text-align:center\">120Hz</td>\r\n			<td style=\"text-align:center\">120Hz</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Chip xử l&yacute;</td>\r\n			<td style=\"text-align:center\">Apple A17 Pro</td>\r\n			<td style=\"text-align:center\">Apple A16 Bionic</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Dung lượng pin</td>\r\n			<td style=\"text-align:center\">4852 mAh (khoảng 60 ph&uacute;t sạc đầy)</td>\r\n			<td style=\"text-align:center\">4323 mAh&nbsp;&nbsp;(khoảng 60 - 70 ph&uacute;t sạc đầy)</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Cổng sạc</td>\r\n			<td style=\"text-align:center\">Type-C</td>\r\n			<td style=\"text-align:center\">Lighting</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Camera</td>\r\n			<td>\r\n			<p style=\"text-align:center\">48MP + 12MP + 12MP</p>\r\n\r\n			<p style=\"text-align:center\">Camera tele zoom 5x</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\">48MP + 12MP + 12MP</p>\r\n\r\n			<p style=\"text-align:center\">Camera tele zoom 3x</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">Hỗ trợ 5G</td>\r\n			<td style=\"text-align:center\">C&oacute;</td>\r\n			<td style=\"text-align:center\">C&oacute;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h3 style=\"text-align:center\"><strong>Về thiết kế iPhone 15 Pro Max</strong></h3>\r\n\r\n<p style=\"text-align:center\">Để so s&aacute;nh iPhone 15 Pro Max v&agrave; iPhone 14 Pro Max, ch&uacute;ng ta c&ugrave;ng nhau đến với thiết kế hai điện thoại. Theo đ&oacute;, iPhone 15 Pro Max năm nay nhận được sự thay đổi đ&aacute;ng kinh ngạc về vật liệu. iPhone 15 Pro Max sử dụng&nbsp;khung viền titan cao cấp, bền bỉ v&agrave; c&oacute; viền bezel mỏng nhẹ hơn. Được biết đ&acirc;y l&agrave; lần đầu ti&ecirc;n vật liệu titan xuất hiện tr&ecirc;n iPhone, mang tới một sản phẩm iPhone Pro nhẹ nhất từ trước đến nay.&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">Dưới đ&acirc;y l&agrave; số đo k&iacute;ch thước của hai điện thoại:</p>\r\n\r\n<ul>\r\n	<li style=\"text-align:center\">iPhone 15 Pro Max: 159.9 x 76.7 x 8.3 mm, nặng 221 gram</li>\r\n	<li style=\"text-align:center\">iPhone 14 Pro Max: 160.7 x 77.6 x 7.9 mm, nặng 240 gram</li>\r\n</ul>\r\n\r\n<p style=\"text-align:center\">Một thay đổi quan trọng kh&aacute;c về thiết kế của iPhone 15 Pro Max l&agrave; Apple giờ đ&acirc;y đ&atilde; loại bỏ cổng Lightning của iPhone 14 Pro Max để thay thế bằng USB-C, gi&uacute;p cải thiện tốc độ truyền dữ liệu l&ecirc;n tới 20 lần. Thanh gạt rung tr&ecirc;n mẫu iPhone 2022 cũng đ&atilde; được thay thế bằng n&uacute;t Action mới, c&oacute; thể t&ugrave;y chỉnh tr&ecirc;n model mới nhất.&nbsp;</p>\r\n\r\n<h3 style=\"text-align:center\"><strong>Về m&agrave;n h&igrave;nh giữa 2 phi&ecirc;n bản</strong></h3>\r\n\r\n<p style=\"text-align:center\">Về chất lượng hiển thị, cả iPhone 15 Pro Max v&agrave; iPhone 14 Pro Max đều c&oacute; m&agrave;n h&igrave;nh OLED 6.7 inch, tần số qu&eacute;t th&iacute;ch ứng 1-120Hz, HDR10 v&agrave; ​​​​độ ph&acirc;n giải giống hệt nhau. Hơn nữa, bộ đ&ocirc;i n&agrave;y đều c&oacute; m&agrave;n h&igrave;nh Dynamic Island v&agrave; Always On Display. Sự kh&aacute;c biệt chỉ đến từ việc mẫu iPhone mới c&oacute; viền bezel mỏng hơn một ch&uacute;t.</p>\r\n\r\n<p style=\"text-align:center\">Do đ&oacute;, chất lượng hiển thị của hai điện thoại n&agrave;y sẽ kh&ocirc;ng c&oacute; nhiều kh&aacute;c biệt, gi&uacute;p t&aacute;i tạo h&igrave;nh ảnh sắc n&eacute;t, độ tương phản cao, m&agrave;u sắc sống động để mang đến những gi&acirc;y ph&uacute;t giải tr&iacute; tuyệt vời cho người d&ugrave;ng.</p>\r\n\r\n<h3 style=\"text-align:center\"><strong>Hiệu năng iPhone 15 Pro Max so với thế hệ trước</strong></h3>\r\n\r\n<p style=\"text-align:center\">iPhone 15 Pro Max sử dụng chip A17 Pro ho&agrave;n to&agrave;n mới, được x&acirc;y dựng tr&ecirc;n tiến tr&igrave;nh 3nm của TSMC n&ecirc;n c&oacute; sự kh&aacute;c biệt lớn về hiệu suất so với iPhone 14 Pro Max.</p>\r\n\r\n<p style=\"text-align:center\">Apple tuy&ecirc;n bố CPU của A17 Pro nhanh hơn tới 10% so với chip A16 Bionic 4nm của iPhone 14 Pro Max. V&agrave; nhờ GPU 6 nh&acirc;n mới, hiệu suất đồ họa của iPhone 15 Pro Max đ&atilde; được cải thiện khoảng 20%.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Hiệu năng iPhone 15 Pro Max với chip Apple A17 Pro\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/iPhone-15-pro-max-9.jpg\" /></p>\r\n\r\n<p style=\"text-align:center\">Đ&oacute; chưa phải l&agrave; tất cả v&igrave; chip A17 Pro c&ograve;n hỗ trợ d&ograve; tia được tăng tốc phần cứng, gi&uacute;p n&oacute; c&oacute; thể chạy mượt c&aacute;c tựa game AAA nổi tiếng hiện nay như Assassin&#39;s Creed Mirage, Death Stranding, Resident Evil Village,...</p>\r\n\r\n<h3 style=\"text-align:center\"><strong>So s&aacute;nh về Camera</strong></h3>\r\n\r\n<p style=\"text-align:center\">Đầu ti&ecirc;n v&agrave; quan trọng nhất, mẫu iPhone 15 Pro Max được Apple trang bị ống k&iacute;nh tiềm vọng mới, mang tới khả năng zoom quang học 5x vượt trội so với camera tele hỗ trợ zoom quang học 3x của iPhone 14 Pro Max. C&aacute;c m&aacute;y ảnh c&ograve;n lại của hai điện thoại n&agrave;y bao gồm cảm biến ch&iacute;nh 48MP, ống k&iacute;nh g&oacute;c si&ecirc;u rộng 12MP v&agrave; camera selfie 12MP.</p>\r\n\r\n<p style=\"text-align:center\">Kh&ocirc;ng dừng lại ở đ&oacute;, Apple cho biết camera ch&iacute;nh của&nbsp;<u>iPhone 15 Pro Max</u>&nbsp;d&ugrave; c&oacute; c&ugrave;ng độ ph&acirc;n giải 48MP như iPhone 14 Pro Max nhưng sử dụng cảm biến lớn hơn, cho ph&eacute;p thu s&aacute;ng tốt hơn trong điều kiện &aacute;nh s&aacute;ng phức tạp. Ngo&agrave;i ra, camera n&agrave;y sẽ thiết lập chụp ảnh ở độ ph&acirc;n giải mặc định l&agrave; 24MP v&agrave; người d&ugrave;ng c&oacute; thể chọn c&aacute;c ti&ecirc;u cự kh&aacute;c nhau để sử dụng l&agrave; 24mm, 28mm v&agrave; 35mm.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"iPhone 15 Pro Max được Apple trang bị ống kính tiềm vọng mới\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/iPhone-15-pro-max-5.jpg\" /></p>\r\n\r\n<p style=\"text-align:center\">Ngo&agrave;i ra, Apple đ&atilde; giới thiệu những cải tiến về khả năng chụp ảnh t&iacute;nh to&aacute;n với Smart HDR 5 v&agrave; ảnh ch&acirc;n dung thế hệ mới. Điều đ&oacute; c&oacute; nghĩa l&agrave; iPhone 15 Pro Max sẽ chụp những bức ảnh đẹp hơn một ch&uacute;t so với iPhone 14 Pro Max. &ldquo;T&aacute;o khuyết&rdquo; cũng cho ph&eacute;p bạn chụp ảnh 48MP tr&ecirc;n iPhone 15 Pro Max bằng định dạng HEIF, trong khi đ&oacute; iPhone 14 Pro Pro Max l&agrave; sử dụng ProRAW để chụp ảnh 48MP.</p>\r\n\r\n<h3 style=\"text-align:center\"><strong>Cổng kết nối</strong></h3>\r\n\r\n<p style=\"text-align:center\">Về cổng kết nối, iPhone 15 Pro Max đ&atilde; chuyển sang cổng USB-C, thay v&igrave; sử dụng cổng Lightning tr&ecirc;n iPhone 14 Pro Max. Sự thay đổi n&agrave;y gi&uacute;p tốc độ truyền dữ liệu nhanh hơn v&agrave; cũng dễ d&agrave;ng tương th&iacute;ch với nhiều thiết bị kh&aacute;c.</p>\r\n\r\n<h2 style=\"text-align:center\"><strong>Đ&aacute;nh gi&aacute;&nbsp;iPhone 15 Pro Max chi tiết: C&oacute; đ&aacute;ng mua?</strong></h2>\r\n\r\n<h3 style=\"text-align:center\"><strong>Về thiết kế: M&agrave;u mới, n&uacute;t Action, m&agrave;n h&igrave;nh ấn tượng</strong></h3>\r\n\r\n<p style=\"text-align:center\">Đi c&ugrave;ng với thiết kế mới cực đẹp mắt lấy chất liệu Titan l&agrave;m chủ đạo, iPhone 15 Pro Max mang đến 4 m&agrave;u sắc kh&aacute;c nhau bao gồm:</p>\r\n\r\n<ul>\r\n	<li style=\"text-align:center\">Titan xanh.</li>\r\n	<li style=\"text-align:center\">Titan trắng.</li>\r\n	<li style=\"text-align:center\">Titan đen.</li>\r\n	<li style=\"text-align:center\">Titan tự nhi&ecirc;n.</li>\r\n</ul>\r\n\r\n<p style=\"text-align:center\">Sự thay đổi lớn nhất về mặt thiết kế của iPhone 15 Pro Max so với thế hệ trước ch&iacute;nh l&agrave; thay đổi viền th&eacute;p th&agrave;nh viền Titan, ch&iacute;nh v&igrave; vậy thế hệ sản phẩm cao cấp mới nhất n&agrave;y vừa cứng c&aacute;p hơn vừa nhẹ hơn đ&agrave;n anh đi trước.</p>\r\n\r\n<p style=\"text-align:center\">Ở vị tr&iacute; của n&uacute;t chuyển đổi chế độ th&ocirc;ng b&aacute;o Im lặng trước đ&acirc;y l&agrave; n&uacute;t Action mới, người d&ugrave;ng c&oacute; thể t&ugrave;y chỉnh nhiều thao t&aacute;c kh&aacute;c nhau như truy cập nhanh camera - bật đ&egrave;n Flash - k&iacute;ch hoạt Voice Memo - k&iacute;ch hoạt c&aacute;c chế độ Focus khi chụp ảnh - truy cập t&iacute;nh năng Shortcuts... tất cả chỉ cần một lần t&ugrave;y chỉnh v&agrave; một lần bấm n&uacute;t duy nhất.</p>\r\n\r\n<h3 style=\"text-align:center\"><strong>Đ&aacute;nh gi&aacute; camera: Ti&ecirc;u cự d&agrave;i nhất từ trước tới nay</strong></h3>\r\n\r\n<p style=\"text-align:center\">iPhone 15 Pro Max vẫn trang bị cụm 3 camera ở mặt lưng ph&iacute;a sau, tuy nhi&ecirc;n ch&uacute;ng nhận được sự n&acirc;ng cấp cực lớn. Camera ch&iacute;nh 48MP giờ đ&acirc;y đ&atilde; c&oacute; thể chụp được ảnh 24MP, gấp đ&ocirc;i so với 12MP trước đ&acirc;y. Photonic Engine cũng được cải tiến tốt hơn v&agrave; điều đ&oacute; c&oacute; nghĩa l&agrave; những h&igrave;nh ảnh chụp đ&ecirc;m hoặc m&ocirc;i trường thiếu s&aacute;ng cũng sẽ tốt hơn với camera g&oacute;c si&ecirc;u rộng, đồng thời k&egrave;m theo hiệu năng HDR được tăng cường. Một lớp phủ đặc biệt c&oacute; khả năng chống phản chiếu cũng được phủ l&ecirc;n camera.</p>\r\n\r\n<p style=\"text-align:center\">Tuy nhi&ecirc;n, camera ch&iacute;nh n&agrave;y vẫn chưa phải l&agrave; điểm nhấn khi chụp ảnh tr&ecirc;n iPhone 15 Pro Max m&agrave; ch&iacute;nh camera tele 12MP c&oacute; khả năng zoom quang học 5x k&egrave;m ti&ecirc;u cự 120mm mới l&agrave; điều khiến nhiều người quan t&acirc;m nhất. Camera tele n&agrave;y sẽ chụp cận cảnh tốt hơn v&agrave; rất th&iacute;ch hợp để sử dụng cho c&aacute;c mục đ&iacute;ch như chụp ảnh đời sống thi&ecirc;n nhi&ecirc;n hoang d&atilde; hoặc c&aacute;c sự kiện thi đấu thể thao.</p>\r\n\r\n<h3 style=\"text-align:center\"><strong>Đ&aacute;nh gi&aacute; cấu h&igrave;nh:&nbsp;chip A17 Pro ho&agrave;n to&agrave;n mới</strong></h3>\r\n\r\n<p style=\"text-align:center\">Cấu h&igrave;nh&nbsp;iPhone 15 Pro Max được thể hiện qua con chip A17 Pro với 19 tỉ b&oacute;ng b&aacute;n dẫn tr&ecirc;n nền tiến tr&igrave;nh sản xuất 3nm, chip A17 Pro hoạt động nhanh hơn 10% - GPU 8 nh&acirc;n nhanh hơn 20% so với đ&agrave;n anh đi trước bằng một loạt c&aacute;c t&iacute;nh năng phần cứng cao cấp như Ray Tracing hỗ trợ tốt cho c&aacute;c tựa game Resident Evil Village + Resident Evil 4 + Death Stranding + Assassin&#39;s Creed Mirage.</p>\r\n\r\n<p style=\"text-align:center\">A17 Pro cũng tăng qu&aacute; tr&igrave;nh xử l&iacute; của Neural Engine l&ecirc;n gấp đ&ocirc;i để c&oacute; thể giải quyết 35 ngh&igrave;n tỉ lệnh trong 1 gi&acirc;y. N&oacute;i c&aacute;ch kh&aacute;c, trợ l&iacute; ảo Siri kh&ocirc;ng cần phải kết nối Internet để thực hiện c&aacute;c y&ecirc;u cầu của người d&ugrave;ng nữa khi giờ đ&acirc;y họ c&oacute; thể ra lệnh trực tiếp.Chip Ultra Wideband thế hệ 2 tr&ecirc;n iPhone 15 Pro Max cung cấp tầm kết nối rộng gấp 3 lần so với thế hệ cũ, hỗ trợ tốt Wi-Fi 6E với tốc độ cao.</p>\r\n\r\n<h3 style=\"text-align:center\"><strong>Đ&aacute;nh gi&aacute; thời lượng pin iPhone 15 Pro Max</strong></h3>\r\n\r\n<p style=\"text-align:center\">Vẫn chưa c&oacute; th&ocirc;ng số cụ thể về dung lượng pin của iPhone 15 Pro Max, tuy nhi&ecirc;n Apple cho biết chiếc điện thoại cao cấp n&agrave;y c&oacute; thể bật video k&eacute;o d&agrave;i suốt 29 tiếng li&ecirc;n tiếp. M&aacute;y hỗ trợ sạc qua cổng USB-C - sạc MagSafe - sạc Qi kh&ocirc;ng d&acirc;y Qi2.</p>\r\n\r\n<h2 style=\"text-align:center\"><strong>Những c&acirc;u hỏi thường gặp khi mua iPhone 15 Pro Max</strong></h2>\r\n\r\n<h3 style=\"text-align:center\"><strong>Đang d&ugrave;ng iPhone 14 Pro c&oacute; n&ecirc;n mua iPhone 15 Pro Max?</strong></h3>\r\n\r\n<p style=\"text-align:center\">C&oacute; thể thấy iPhone 15 Pro Max l&agrave; một bản n&acirc;ng cấp ấn tượng, xứng đ&aacute;ng để người d&ugrave;ng iPhone 14 Pro l&ecirc;n đời. iPhone 15 Pro Max kh&ocirc;ng chỉ sở hữu những n&acirc;ng cấp đột ph&aacute;&nbsp;về thiết kế với sự xuất hiện của cổng sạc USB-C v&agrave; khung viền titanium mới m&agrave; c&ograve;n cải tiến hiệu năng mạnh mẽ hơn với chip A17 Pro 3nm cũng như hệ thống camera chất lượng hơn, bao gồm cảm biến ch&iacute;nh 48MP mới v&agrave; ống k&iacute;nh tiềm vọng hỗ trợ zoom quang học 5x. Đ&acirc;y sẽ l&agrave; lựa chọn d&agrave;nh cho người d&ugrave;ng muốn trải nghiệm những c&ocirc;ng nghệ mới nhất của Apple.</p>\r\n\r\n<p style=\"text-align:center\">Tuy nhi&ecirc;n nếu bạn muốn tiết kiệm ng&acirc;n s&aacute;ch, bạn ho&agrave;n to&agrave;n c&oacute; thể tiếp tục sử dụng iPhone 14 Pro, v&igrave; đ&acirc;y vẫn l&agrave; mẫu flagship Apple đ&aacute;ng sở hữu trong thời điểm&nbsp;hiện tại.</p>\r\n\r\n<h3 style=\"text-align:center\"><strong>Đang d&ugrave;ng iPhone 14 Pro Max&nbsp;c&oacute; n&ecirc;n mua iPhone 15 Pro Max?</strong></h3>\r\n\r\n<p style=\"text-align:center\">C&oacute; thể thấy rằng, iPhone 15 Pro Max sở hữu rất nhiều n&acirc;ng cấp ấn tượng v&agrave; mạnh mẽ. Nhưng kh&ocirc;ng thể phủ nhận iPhone 14 Pro Max vẫn rất chất lượng. Mẫu iPhone 2022 của Apple c&oacute; ng&ocirc;n ngữ thiết kế giống iPhone 15 Pro Max n&ecirc;n bạn sẽ kh&oacute; c&oacute; thể ph&acirc;n biệt hai điện thoại n&agrave;y nếu chỉ nh&igrave;n tho&aacute;ng qua.</p>\r\n\r\n<p style=\"text-align:center\">Vậy nếu đang sở hữu iPhone 14 Pro Max c&oacute; n&ecirc;n n&acirc;ng cấp l&ecirc;n iPhone 15 Pro Max? C&acirc;u trả lời l&agrave; nếu bạn th&iacute;ch sử dụng chiếc iPhone mới nhất với những t&iacute;nh năng vượt trội, tốt nhất nh&agrave; Apple, bạn c&oacute; thể &quot;l&ecirc;n đời&quot; iPhone 15 Pro Max v&agrave; trải nghiệm. Nếu kh&ocirc;ng, bạn ho&agrave;n to&agrave;n c&oacute; thể tiếp tục sử dụng iPhone 14 Pro Max. Đ&acirc;y vẫn l&agrave; flagship top đầu tr&ecirc;n thị trường, đ&aacute;p ứng tốt nhu cầu sử dụng của bạn. N&ecirc;n việc tiếp tục sử dụng iPhone 14 Pro Max cũng l&agrave; điều hợp l&yacute;.</p>\r\n\r\n<h3 style=\"text-align:center\"><strong>iPhone 15 Pro Max c&oacute; m&agrave;u hồng kh&ocirc;ng?</strong></h3>\r\n\r\n<p style=\"text-align:center\">Rất tiếc cho người d&ugrave;ng v&agrave; fan nh&agrave; T&aacute;o l&agrave;&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/iphone-15-pro\">iPhone 15 Pro</a>&nbsp;v&agrave; iPhone 15 Pro Max kh&ocirc;ng c&oacute; m&agrave;u Hồng.&nbsp;Phi&ecirc;n bản m&agrave;u Hồng chỉ xuất hiện ở 2 model&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/iphone-15\">iPhone 15</a>&nbsp;v&agrave; iPhone 15 Plus. Cụ thể iPhone 15 Pro Max c&oacute;&nbsp;4 m&agrave;u&nbsp;bao gồm: Titan Đen (Black Titanium), Titan Trắng (White Titanium), Titan Xanh (Blue Titanium) v&agrave; Titan Tự nhi&ecirc;n (Natural Titanium).</p>\r\n\r\n<h3 style=\"text-align:center\"><strong>iPhone 15 Pro Max bao nhi&ecirc;u inch?</strong></h3>\r\n\r\n<p style=\"text-align:center\">iPhone 15 Pro Max c&oacute; m&agrave;n h&igrave;nh k&iacute;ch thước 6.7 inch như iPhone 15 Plus nhưng sở hữu viền bezel mỏng hơn n&ecirc;n k&iacute;ch thước vật l&yacute; của m&aacute;y l&agrave; 159.9 x 76.7 x 8.3 mm. M&aacute;y nặng 221 gram. Đ&acirc;y l&agrave; mẫu iPhone m&agrave;n h&igrave;nh lớn cao cấp nhất của Apple ở thời điểm hiện tại.</p>\r\n\r\n<p style=\"text-align:center\"><strong>Bảng so s&aacute;nh k&iacute;ch thước&nbsp;iPhone 15 Pro/15 Pro Max&nbsp;với iPhone 14 Pro/14 Pro Max</strong></p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\"><strong>iPhone 15 Pro</strong></td>\r\n			<td style=\"text-align:center\"><strong>iPhone 14 Pro</strong></td>\r\n			<td style=\"text-align:center\"><strong>iPhone 15 Pro Max</strong></td>\r\n			<td style=\"text-align:center\"><strong>iPhone 14 Pro Max</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\"><strong>M&agrave;n h&igrave;nh</strong></td>\r\n			<td style=\"text-align:center\">6.1 inch</td>\r\n			<td style=\"text-align:center\">6.1 inch</td>\r\n			<td style=\"text-align:center\">6.7 inch</td>\r\n			<td style=\"text-align:center\">6.7 inch</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\"><strong>K&iacute;ch thước</strong></td>\r\n			<td style=\"text-align:center\">146.6 x 70.6 x 8.3 mm</td>\r\n			<td style=\"text-align:center\">147.5 x 71.5 x 7.9 mm</td>\r\n			<td style=\"text-align:center\">159.9 x 76.7 x 8.3 mm</td>\r\n			<td style=\"text-align:center\">160.7 x 77.6 x 7.9 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\"><strong>Trọng lượng</strong></td>\r\n			<td style=\"text-align:center\">187&nbsp;gram</td>\r\n			<td style=\"text-align:center\">206 gram</td>\r\n			<td style=\"text-align:center\">221 gram</td>\r\n			<td style=\"text-align:center\">240&nbsp;gram</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h3 style=\"text-align:center\"><strong>Dung lượng pin iPhone 15 Pro Max l&agrave;&nbsp;bao nhi&ecirc;u?</strong></h3>\r\n\r\n<p style=\"text-align:center\">iPhone 15 Pro Max c&oacute; dung lượng pin 4.422mAh với c&ocirc;ng suất 17.109Wh, lớn hơn so với 4.323mAh của&nbsp;iPhone 14 Pro Max. Đối với tốc độ sạc của cổng USB-C tr&ecirc;n iPhone 15 Pro Max, Apple th&ocirc;ng tin rằng người d&ugrave;ng&nbsp;c&oacute; thể sạc từ 0 đến 50% trong 30 ph&uacute;t bằng bộ sạc USB-C 20W (được b&aacute;n ri&ecirc;ng). Để sạc đầy, bạn sẽ cần khoảng 90 ph&uacute;t kết nối bộ sạc. Theo Apple c&ocirc;ng bố,&nbsp;thời gian xem video của iPhone 15 Pro Max c&oacute; thể l&ecirc;n đến 29 giờ, thời gian xem video trực tuyến l&ecirc;n đến 25 giờ v&agrave; thời gian nghe nhạc l&ecirc;n đến 95 giờ.</p>', '<ul>\r\n	<li>\r\n	<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<table>\r\n		<tbody>\r\n			<tr>\r\n				<td>M&agrave;n h&igrave;nh</td>\r\n				<td>6.7 inch, OLED, Super Retina XDR, 2796 x 1290 Pixels</td>\r\n			</tr>\r\n			<tr>\r\n				<td>Camera sau</td>\r\n				<td>48.0 MP + 12.0 MP + 12.0 MP</td>\r\n			</tr>\r\n			<tr>\r\n				<td>Camera Selfie</td>\r\n				<td>12.0 MP</td>\r\n			</tr>\r\n			<tr>\r\n				<td>RAM</td>\r\n				<td>8 GB</td>\r\n			</tr>\r\n			<tr>\r\n				<td>Bộ nhớ trong</td>\r\n				<td>256 GB</td>\r\n			</tr>\r\n			<tr>\r\n				<td>CPU</td>\r\n				<td>Apple A17 Pro</td>\r\n			</tr>\r\n			<tr>\r\n				<td>Dung lượng pin</td>\r\n				<td>29 Giờ</td>\r\n			</tr>\r\n			<tr>\r\n				<td>Thẻ sim</td>\r\n				<td>1 - 1 eSIM, 1 Nano SIM</td>\r\n			</tr>\r\n			<tr>\r\n				<td>Hệ điều h&agrave;nh</td>\r\n				<td>iOS 17</td>\r\n			</tr>\r\n			<tr>\r\n				<td>Xuất xứ</td>\r\n				<td>Trung Quốc</td>\r\n			</tr>\r\n			<tr>\r\n				<td>Thời gian ra mắt</td>\r\n				<td>09/2023</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n</ul>', 'iPhone 15 Pro Max 256GB', 'iPhone 15 Pro Max 256GB');
INSERT INTO `products` (`product_id`, `product_name`, `category_id`, `brand_id`, `product_image`, `product_price_buy`, `product_price_sell`, `product_amount`, `product_sale`, `product_attribute`, `product_detail`, `product_keyword`, `product_description`) VALUES
(63, 'iPad mini 6 2021 8.3 inch WiFi 5G 64GB', 5, 3, '/storage/images_product/Ez4Tifj4J6_637845989247625133_iPad Mini 8.3 2021 Wi-Fi 5G (2).webp', 15000000, 15690000, 10, 10, '<h2>Đặc điểm nổi bật của&nbsp;iPad Mini 6 2021 8.3 inch WiFi 5G</h2>\r\n\r\n<p><img alt=\"iPad mini 6 2021 8.3 inch WiFi 5G 64GB\" src=\"https://images.fpt.shop/unsafe/fit-in/665x374/filters:quality(100):fill(white)/fptshop.com.vn/Uploads/Originals/2021/9/20/637677712853310557_ipad-mini-8-3-2021-wi-fi-5g-dung-luong-64gb-mau-sac.png\" style=\"height:374px; width:665px\" /></p>\r\n\r\n<p><img alt=\"iPad mini 6 2021 8.3 inch WiFi 5G 64GB\" src=\"https://images.fpt.shop/unsafe/fit-in/665x374/filters:quality(100):fill(white)/fptshop.com.vn/Uploads/Originals/2021/9/20/637677712862060647_ipad-mini-8-3-2021-wi-fi-5g-dung-luong-64gb-thiet-ke.png\" style=\"height:374px; width:665px\" /></p>\r\n\r\n<p><img alt=\"iPad mini 6 2021 8.3 inch WiFi 5G 64GB\" src=\"https://images.fpt.shop/unsafe/fit-in/665x374/filters:quality(100):fill(white)/fptshop.com.vn/Uploads/Originals/2021/9/20/637677712847373156_ipad-mini-8-3-2021-wi-fi-5g-dung-luong-64gb-5g.png\" style=\"height:374px; width:665px\" /></p>\r\n\r\n<p><img alt=\"iPad mini 6 2021 8.3 inch WiFi 5G 64GB\" src=\"https://images.fpt.shop/unsafe/fit-in/665x374/filters:quality(100):fill(white)/fptshop.com.vn/Uploads/Originals/2021/9/20/637677712849091857_ipad-mini-8-3-2021-wi-fi-5g-dung-luong-64gb-camera.png\" style=\"height:374px; width:665px\" /></p>\r\n\r\n<p><img alt=\"iPad mini 6 2021 8.3 inch WiFi 5G 64GB\" src=\"https://images.fpt.shop/unsafe/fit-in/665x374/filters:quality(100):fill(white)/fptshop.com.vn/Uploads/Originals/2021/9/20/637677712849560585_ipad-mini-1.png\" style=\"height:374px; width:665px\" /></p>\r\n\r\n<p><img alt=\"iPad mini 6 2021 8.3 inch WiFi 5G 64GB\" src=\"https://images.fpt.shop/unsafe/fit-in/665x374/filters:quality(100):fill(white)/fptshop.com.vn/Uploads/Originals/2021/9/20/637677712848623083_ipad-mini-8-3-2021-wi-fi-5g-dung-luong-64gb-man-hinh.png\" style=\"height:374px; width:665px\" /></p>\r\n\r\n<p><img alt=\"iPad mini 6 2021 8.3 inch WiFi 5G 64GB\" src=\"https://images.fpt.shop/unsafe/fit-in/665x374/filters:quality(100):fill(white)/fptshop.com.vn/Uploads/Originals/2021/9/20/637677712853779303_ipad-mini-8-3-2021-wi-fi-5g-dung-luong-64gb-he-dieu-hanh.png\" style=\"height:374px; width:665px\" /></p>\r\n\r\n<p><img alt=\"iPad mini 6 2021 8.3 inch WiFi 5G 64GB\" src=\"https://images.fpt.shop/unsafe/fit-in/665x374/filters:quality(100):fill(white)/fptshop.com.vn/Uploads/Originals/2021/9/20/637677712860498063_ipad-mini-8-3-2021-wi-fi-5g-dung-luong-64gb-pin.png\" style=\"height:374px; width:665px\" /></p>\r\n\r\n<p><img alt=\"iPad mini 6 2021 8.3 inch WiFi 5G 64GB\" src=\"https://images.fpt.shop/unsafe/fit-in/665x374/filters:quality(100):fill(white)/fptshop.com.vn/Uploads/Originals/2021/9/20/637677712856123104_ipad-mini-8-3-2021-wi-fi-5g-dung-luong-64gb-pencil.png\" style=\"height:374px; width:665px\" /></p>\r\n\r\n<p><img alt=\"iPad mini 6 2021 8.3 inch WiFi 5G 64GB\" src=\"https://images.fpt.shop/unsafe/fit-in/665x374/filters:quality(100):fill(white)/fptshop.com.vn/Uploads/Originals/2021/9/20/637677712846591868_ipad-mini-8-3-2021-wi-fi-5g-dung-luong-64gb-hieu-nang.png\" style=\"height:374px; width:665px\" /></p>\r\n\r\n<h2>Đ&aacute;nh gi&aacute; chi tiết&nbsp;iPad Mini 6 2021 8.3 inch WiFi 5G</h2>\r\n\r\n<p><strong>iPad mini 8.3 2021 5G tập hợp những c&ocirc;ng nghệ đỉnh cao nhất trong một chiếc m&aacute;y t&iacute;nh bảng nhỏ gọn. Từ bộ vi xử l&yacute; Apple A15 Bionic với sức mạnh vượt thời gian, mạng 5G nhanh nhất thế giới tablet cho đến m&agrave;n h&igrave;nh Liquid Retina tr&agrave;n viền tuyệt đẹp.</strong></p>\r\n\r\n<p><strong><img alt=\"iPad mini 8.3 2021 5G\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/ipad-mini-83-2021-1.jpg\" /></strong></p>\r\n\r\n<h3><strong>Mạng 5G si&ecirc;u nhanh, sẵn s&agrave;ng kết nối</strong></h3>\r\n\r\n<p>Với kết nối 5G si&ecirc;u tốc, bạn c&oacute; thể truy cập mạng kh&ocirc;ng d&acirc;y mọi l&uacute;c mọi nơi ở tốc độ cao. Tải xuống tệp tin nặng, xem phim trực tuyến hay gọi video với bạn b&egrave;, tất cả đều diễn ra với đường truyền nhanh nhất. Kh&ocirc;ng chỉ 5G, mạng Wi-Fi tr&ecirc;n iPad mini 8.3 2021 cũng c&oacute; tốc độ cực nhanh với chuẩn Wi-Fi 6 ti&ecirc;n tiến nhất hiện nay, đảm bảo kết nối nhanh, ổn định v&agrave; phạm vi thu s&oacute;ng rộng hơn.</p>\r\n\r\n<p><img alt=\"mạng 5g iPad mini 8.3 2021 5G\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/ipad-mini-83-2021-10.jpg\" /></p>\r\n\r\n<h3><strong>Hiệu năng vượt giới hạn với Apple A15</strong></h3>\r\n\r\n<p>Bộ vi xử l&yacute; Apple A15 Bionic mới nhất biến iPad mini 8.3 2021 5G th&agrave;nh chiếc m&aacute;y t&iacute;nh bảng mạnh mẽ h&agrave;ng đầu hiện nay. Cho d&ugrave; bạn đang chỉnh sửa ảnh, bi&ecirc;n tập video hay chơi những game đồ họa đỉnh cao, iPad mini 8.3 2021 cũng đều xử l&yacute; một c&aacute;ch mượt m&agrave;. Thoải m&aacute;i chạy những ứng dụng chuy&ecirc;n nghiệp, tự do s&aacute;ng tạo, kể cả với c&aacute;c phần mềm thực tế tăng cường AR đ&ograve;i hỏi CPU v&agrave; GPU hiệu năng cao, iPad mini 8.3 2021 5G tập hợp những g&igrave; mạnh mẽ nhất trong một sản phẩm di động.</p>\r\n\r\n<p><img alt=\"hiệu năng iPad mini 8.3 2021 5G\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/ipad-mini-83-2021-6.jpg\" /></p>\r\n\r\n<h3><strong>Thiết kế mới đột ph&aacute;, nhỏ gọn v&agrave; sang trọng</strong></h3>\r\n\r\n<p>Vẻ đẹp của iPad mini 8.3 2021 5G chắc chắn sẽ m&ecirc; hoặc bạn ngay từ c&aacute;i nh&igrave;n đầu ti&ecirc;n. Chiếc m&aacute;y t&iacute;nh bảng từ Apple giờ đ&acirc;y được thiết kế tr&agrave;n cạnh với viền m&agrave;n h&igrave;nh mỏng, c&aacute;c g&oacute;c bo tr&ograve;n thanh lịch v&agrave; phần khung phẳng sang trọng. Cảm biến v&acirc;n tay Touch ID đ&atilde; được t&iacute;ch hợp v&agrave;o ph&iacute;m nguồn cạnh tr&ecirc;n, gi&uacute;p bạn x&aacute;c thực nhanh ch&oacute;ng, dễ d&agrave;ng v&agrave; an to&agrave;n. Tr&ecirc;n hết, iPad mini ho&agrave;n to&agrave;n vừa vặn trong tay, l&agrave; một sản phẩm thực sự di động, đa năng v&agrave; mạnh mẽ.</p>\r\n\r\n<p><img alt=\"thiết kế iPad mini 8.3 2021 5G\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/ipad-mini-83-2021-13.jpg\" /></p>\r\n\r\n<h3><strong>M&agrave;u sắc trẻ trung</strong></h3>\r\n\r\n<p>Kh&ocirc;ng chỉ thiết kế đẹp, iPad mini 8.3 2021 c&ograve;n mang tới cho bạn 4 lựa chọn m&agrave;u sắc thời trang. C&aacute;c phi&ecirc;n bản m&agrave;u X&aacute;m, Hồng, T&iacute;m v&agrave; Bạc c&ugrave;ng ng&ocirc;n ngữ thiết kế phẳng tạo n&ecirc;n một sản phẩm c&ocirc;ng nghệ tuyệt vời m&agrave; ai cũng muốn sở hữu.</p>\r\n\r\n<p><img alt=\"màu sắc iPad mini 8.3 2021 5G\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/ipad-mini-83-2021-17.jpg\" /></p>\r\n\r\n<h3><strong>Hiển thị m&atilde;n nh&atilde;n tr&ecirc;n m&agrave;n h&igrave;nh Liquid Retina 8.3 inch</strong></h3>\r\n\r\n<p>M&agrave;n h&igrave;nh Liquid Retina 8.3 inch tr&ecirc;n iPad mini 2021 5G hiển thị nội dung sắc n&eacute;t, sống động v&agrave; ch&acirc;n thực. C&ocirc;ng nghệ m&agrave;u sắc th&iacute;ch ứng True Tone, dải m&agrave;u rộng P3 gi&uacute;p văn bản chi tiết, m&agrave;u sắc ch&iacute;nh x&aacute;c d&ugrave; bạn đang ở trong bất cứ m&ocirc;i trường n&agrave;o. Độ s&aacute;ng tối đa của m&agrave;n h&igrave;nh iPad mini 2021 5G l&ecirc;n tới 500 nits, hiển thị r&otilde; ngay cả khi sử dụng dưới trời nắng. K&iacute;ch thước m&agrave;n h&igrave;nh 8.3 inch cũng l&agrave; lớn hơn c&aacute;c thế hệ iPad mini trước đ&acirc;y, cho bạn tận hưởng nhiều nội dung hơn tr&ecirc;n một chiếc iPad nhỏ gọn.</p>\r\n\r\n<p><img alt=\"màn hình iPad mini 8.3 2021 5G\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/ipad-mini-83-2021-23.jpg\" /></p>\r\n\r\n<h3><strong>Camera trước 12MP g&oacute;c si&ecirc;u rộng</strong></h3>\r\n\r\n<p>Những cuộc gọi video hay c&aacute;c buổi họp trực tuyến đang ng&agrave;y c&agrave;ng diễn ra thường xuy&ecirc;n hơn. iPad mini 8.3 2021 5G sở hữu camera trước độ ph&acirc;n giải l&ecirc;n tới 12MP, g&oacute;c si&ecirc;u rộng, cho h&igrave;nh ảnh sắc n&eacute;t v&agrave; khung h&igrave;nh xuất hiện nhiều nội dung hơn. Đặc biệt, t&iacute;nh năng s&acirc;n khấu trung t&acirc;m khiến trải nghiệm gọi video trở n&ecirc;n hấp dẫn hơn bao giờ hết. Khi bạn di chuyển, camera sẽ tự động điều chỉnh để bạn lu&ocirc;n đứng giữa khung h&igrave;nh; khi c&oacute; th&ecirc;m người tham gia cuộc gọi, chế độ xem tự động ph&oacute;ng to để ai cũng đều c&oacute; mặt.</p>\r\n\r\n<p><img alt=\"camera trước iPad mini 8.3 2021 5G\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/ipad-mini-83-2021-24.jpg\" /></p>\r\n\r\n<h3><strong>Lưu giữ lại những khoảnh khắc th&uacute; vị</strong></h3>\r\n\r\n<p>Camera sau iPad mini 8.3 2021 5G c&oacute; độ ph&acirc;n giải cao 12MP, khẩu độ lớn f/1.8 c&ugrave;ng bộ xử l&yacute; h&igrave;nh ảnh ISP mới trong chip A15 Bionic mang đến khả năng chụp ảnh v&agrave; quay video tuyệt vời. Bạn c&oacute; thể chụp ảnh Smart HDR 3, t&aacute;i tạo m&agrave;u sắc, &aacute;nh s&aacute;ng, độ tương phản v&agrave; m&agrave;u da người ch&acirc;n thực đ&aacute;ng kinh ngạc. Nếu cần lưu lại khoảnh khắc, những đoạn video 4K 60fps mượt m&agrave; đủ chất lượng để ph&aacute;t tr&ecirc;n TV hay m&agrave;n chiếu lớn m&agrave; h&igrave;nh ảnh vẫn đầy đủ chi tiết. iPad mini 8.3 2021 5G c&ograve;n hỗ trợ đ&egrave;n flash True Tone, c&oacute; thể chụp ảnh hoặc qu&eacute;t t&agrave;i liệu ngay cả trong điều kiện kh&ocirc;ng c&oacute; &aacute;nh s&aacute;ng.</p>\r\n\r\n<p><img alt=\"camera iPad mini 8.3 2021 5G\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/ipad-mini-83-2021-7.jpg\" /></p>\r\n\r\n<h3><strong>Viết, vẽ v&agrave; ghi ch&uacute; ch&acirc;n thực</strong></h3>\r\n\r\n<p>Khả năng s&aacute;ng tạo kh&ocirc;ng giới hạn khi bạn sử dụng b&uacute;t cảm ứng Apple Pencil tr&ecirc;n iPad mini 8.3 2021 5G. Với Apple Pencil, iPad mini 8.3 2021 5G c&oacute; thể trở th&agrave;nh một cuốn sổ tay th&ocirc;ng minh, để bạn ph&aacute;c thảo &yacute; tưởng v&agrave; ghi ch&uacute; một c&aacute;ch dễ d&agrave;ng. Viết, vẽ, đ&aacute;nh dấu, chỉnh sửa v&agrave; chia sẻ, tất cả đều trở n&ecirc;n v&ocirc; c&ugrave;ng tiện lợi. Đặc biệt, Apple Pencil c&ograve;n c&oacute; thể gắn từ t&iacute;nh v&agrave; sạc kh&ocirc;ng d&acirc;y ngay tr&ecirc;n iPad mini rất gọn g&agrave;ng.</p>\r\n\r\n<p><img alt=\"bút apple pencil iPad mini 8.3 2021 5G\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/ipad-mini-83-2021-12.jpg\" /></p>\r\n\r\n<p><em>Lưu &yacute;: Apple Pencil l&agrave; phụ kiện b&aacute;n rời, kh&ocirc;ng đi k&egrave;m iPad mini 8.3 2021 5G.</em></p>\r\n\r\n<h3><strong>Trải nghiệm thoải m&aacute;i v&agrave; th&ocirc;ng minh</strong></h3>\r\n\r\n<p>Hệ điều h&agrave;nh iPadOS d&agrave;nh ri&ecirc;ng cho iPad mini mang đến sự tương th&iacute;ch ho&agrave;n hảo, gi&uacute;p bạn thực hiện nhiều việc c&ugrave;ng l&uacute;c một c&aacute;ch dễ d&agrave;ng. Chia đ&ocirc;i m&agrave;n h&igrave;nh, cử chỉ đa chạm, đa nhiệm trực quan v&agrave; hơn thế nữa sẽ khiến bạn lu&ocirc;n cảm thấy thoải m&aacute;i khi sử dụng iPad mini. Bạn c&oacute; thể t&igrave;m thấy mọi ứng dụng m&igrave;nh cần tr&ecirc;n kho ứng dụng Apple Store d&agrave;nh cho iPad.</p>\r\n\r\n<p><img alt=\"ios iPad mini 8.3 2021 5G\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/ipad-mini-83-2021-5.jpg\" /></p>\r\n\r\n<h3><strong>Thời lượng pin l&ecirc;n tới 10 tiếng</strong></h3>\r\n\r\n<p>iPad mini 8.3 2021 5G c&oacute; thời gian sử dụng li&ecirc;n tục khoảng 10 giờ đồng hồ, nghĩa l&agrave; chiếc m&aacute;y t&iacute;nh bảng n&agrave;y c&oacute; thể đồng h&agrave;nh c&ugrave;ng bạn trọn vẹn suốt cả ng&agrave;y. H&atilde;y l&agrave;m việc, s&aacute;ng tạo, chơi game giải tr&iacute; hay l&agrave;m bất cứ điều g&igrave; bạn th&iacute;ch, iPad mini 2021 5G lu&ocirc;n tr&agrave;n đầy năng lượng.</p>\r\n\r\n<p><img alt=\"pin iPad mini 8.3 2021 5G\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/ipad-mini-83-2021-14.jpg\" /></p>', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>M&agrave;n h&igrave;nh</td>\r\n			<td>8.3 inch, IPS LCD, Liquid Retina HD, 2266 x 1488 Pixels</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera sau</td>\r\n			<td>12.0 MP</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera Selfie</td>\r\n			<td>12.0 MP</td>\r\n		</tr>\r\n		<tr>\r\n			<td>RAM</td>\r\n			<td>4 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ trong</td>\r\n			<td>64 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU</td>\r\n			<td>Apple A15 Bionic</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPU</td>\r\n			<td>Apple GPU 5 nh&acirc;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dung lượng pin</td>\r\n			<td>19.3 Wh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Thẻ sim</td>\r\n			<td>1 - 1 eSIM, 1 Nano SIM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hệ điều h&agrave;nh</td>\r\n			<td>iPadOS 15</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xuất xứ</td>\r\n			<td>Trung Quốc</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Thời gian ra mắt</td>\r\n			<td>09/2021</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 'iPad mini 6 2021 8.3 inch WiFi 5G 64GB', 'iPad mini 6 2021 8.3 inch WiFi 5G 64GB'),
(64, 'iPhone 14 Plus 128GB', 6, 3, '/storage/images_product/exvPkCFSvE_638025684534296459_iPhone 14 Plus (1).webp', 20790000, 21790000, 28, 10, '<p><strong>Sự hấp dẫn của chiếc&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/apple-iphone\">iPhone</a>&nbsp;thế hệ mới 2022 với m&agrave;n h&igrave;nh lớn, pin xuất sắc nhất từ trước đến nay, chụp đ&ecirc;m ấn tượng&nbsp;v&agrave; loạt c&ocirc;ng nghệ đỉnh cao,&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/iphone-14-plus\">điện thoại iPhone 14 Plus</a>&nbsp;mang người d&ugrave;ng v&agrave;o những trải nghiệm di động ti&ecirc;n tiến, sẵn s&agrave;ng cho cuộc sống năng động, th&ocirc;ng minh v&agrave; tiện lợi.</strong></p>\r\n\r\n<p><img alt=\"Điện thoại iPhone 14 Plus\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/02/iPhone-14-Plus.jpg\" /></p>\r\n\r\n<h3><strong>Thiết kế cao cấp v&agrave; bền bỉ</strong></h3>\r\n\r\n<p>iPhone 14 Plus được ho&agrave;n thiện cao cấp với khung nh&ocirc;m v&agrave; k&iacute;nh Ceramic Shield chắc chắn c&oacute; khả năng chống trầy xước, va đập cực tốt. Kết hợp đ&oacute; l&agrave; thiết kế vu&ocirc;ng vức hợp xu hướng, cho tổng thể hiện đại. Đồng thời, bạn cũng ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m sử dụng điện thoại trong nhiều điều kiện m&ocirc;i trường khi iPhone 14 Plus c&oacute; sự g&oacute;p mặt của chuẩn chống nước/ bụi IP68, c&oacute; thể ng&acirc;m nước ở độ s&acirc;u tối đa 6m trong v&ograve;ng 30 ph&uacute;t.</p>\r\n\r\n<p><img alt=\"Thiết kế iPhone 14 Plus\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/02/Thiet-ke-iPhone-14-Plus(1).jpg\" /></p>\r\n\r\n<h3><strong>N&eacute;t đẹp từ sắc m&agrave;u thời thượng</strong></h3>\r\n\r\n<p>Mang tới những sắc m&agrave;u trendy nhưng kh&ocirc;ng k&eacute;m phần sang trọng v&agrave; tinh tế, iPhone 14 Plus thể hiện n&eacute;t đẹp c&ocirc;ng nghệ ấn tượng, dễ d&agrave;ng chinh phục bất cứ người d&ugrave;ng n&agrave;o. Trong đ&oacute; hai phi&ecirc;n bản m&agrave;u mới l&agrave; xanh dương v&agrave; t&iacute;m, b&ecirc;n cạnh c&aacute;c m&agrave;u được y&ecirc;u th&iacute;ch trước đ&acirc;y l&agrave; trắng, đen v&agrave; đỏ. Năm m&agrave;u sắc - năm c&aacute; t&iacute;nh, iPhone 14 Plus l&agrave; tuy&ecirc;n ng&ocirc;n sắc m&agrave;u, gi&uacute;p bạn thể hiện phong c&aacute;ch mang đậm dấu ấn c&aacute; nh&acirc;n. H&atilde;y chọn m&agrave;u y&ecirc;u th&iacute;ch v&agrave; sẵn s&agrave;ng khoe c&aacute; t&iacute;nh.</p>\r\n\r\n<p><img alt=\"Màu sắc iPhone 14 Plus\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/02/Mac-sac-iPhone-14-Plus.jpg\" /></p>\r\n\r\n<h3><strong>Chiếc iPhone m&agrave;n h&igrave;nh lớn nhất</strong></h3>\r\n\r\n<p>Tận hưởng chiếc iPhone m&agrave;n h&igrave;nh lớn nhất 6.7 inch, nhiều hơn 21% so với bản ti&ecirc;u chuẩn&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/iphone-14\">iPhone 14</a>, smartphone cho mọi thao t&aacute;c diễn ra dễ d&agrave;ng v&agrave; thoải m&aacute;i.</p>\r\n\r\n<p>Trải nghiệm c&ograve;n ấn tượng v&agrave; sắc n&eacute;t khi đ&acirc;y l&agrave; m&agrave;n h&igrave;nh Super Retina XDR, gi&uacute;p bạn ch&igrave;m đắm v&agrave;o kh&ocirc;ng gian giải tr&iacute; đỉnh cao, c&aacute;c bộ phim bom tấn m&atilde;n nh&atilde;n v&agrave; những trận game b&ugrave;ng nổ, đ&aacute;p ứng trọn vẹn mọi nhu cầu của người d&ugrave;ng. Thiết kế c&ograve;n chỉn chu với m&agrave;n h&igrave;nh si&ecirc;u mỏng v&agrave; gọn g&agrave;ng. C&ocirc;ng nghệ True Tone cũng gi&uacute;p bảo vệ mắt khi c&oacute; khả năng điều chỉnh m&agrave;n h&igrave;nh theo &aacute;nh s&aacute;ng của m&ocirc;i trường hiện tại.</p>\r\n\r\n<p><img alt=\"Màn hình iPhone 14 Plus\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/02/Man-hinh-iPhone-14-Plus.jpg\" /></p>', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>M&agrave;n h&igrave;nh</td>\r\n			<td>6.7 inch, AMOLED, Super Retina XDR, 2778 x 1284 Pixels</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera sau</td>\r\n			<td>12.0 MP + 12.0 MP</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera Selfie</td>\r\n			<td>12.0 MP</td>\r\n		</tr>\r\n		<tr>\r\n			<td>RAM</td>\r\n			<td>6 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ trong</td>\r\n			<td>128 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU</td>\r\n			<td>Apple A15 Bionic</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPU</td>\r\n			<td>Apple GPU 5 nh&acirc;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dung lượng pin</td>\r\n			<td>4325 mAh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Thẻ sim</td>\r\n			<td>1 - 1 eSIM, 1 Nano SIM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hệ điều h&agrave;nh</td>\r\n			<td>iOS 16</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xuất xứ</td>\r\n			<td>Trung Quốc</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Thời gian ra mắt</td>\r\n			<td>09/2022</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 'iPhone 14 Plus 128GB', 'iPhone 14 Plus 128GB'),
(65, 'iPhone 13 128GB', 6, 3, '/storage/images_product/eaxcF7oPLs_637842470242656074_iphone-13-white.webp', 15590000, 16590000, 16, 10, '<p><span style=\"font-size:16px\"><strong>iPhone 13 sở hữu hệ thống camera k&eacute;p xuất sắc nhất từ trước đến nay, bộ vi xử l&yacute; Apple A15 nhanh nhất thế giới smartphone c&ugrave;ng thời lượng pin cực khủng, sẵn s&agrave;ng đồng h&agrave;nh c&ugrave;ng bạn suốt cả ng&agrave;y.</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px\"><strong><img alt=\"Điện thoại iPhone 13\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/0511/iphone-13-new-1.JPG\" /></strong></span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>Thiết kế&nbsp;sang trọng v&agrave; bền bỉ</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">iPhone 13 l&agrave; chiếc&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai\">điện thoại</a>&nbsp;to&aacute;t l&ecirc;n sự đẳng cấp ngay từ c&aacute;i nh&igrave;n đầu ti&ecirc;n nhờ thiết kế sang trọng với ng&ocirc;n ngữ thiết kế phẳng v&agrave; chất lượng ho&agrave;n thiện tuyệt vời. Khung nh&ocirc;m cao cấp kết hợp c&ugrave;ng k&iacute;nh bảo vệ Ceramic Shield si&ecirc;u cứng tạo n&ecirc;n chiếc điện thoại vừa thời trang, lại v&ocirc; c&ugrave;ng bền bỉ. Khả năng chống nước chuẩn IP68 của iPhone 13 gi&uacute;p bạn ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m trước mọi nguy cơ từ nước trong qu&aacute; tr&igrave;nh sử dụng thường ng&agrave;y.</span></p>\r\n\r\n<p><span style=\"font-size:16px\"><img alt=\"thiết kế iPhone 13\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/0511/iphone-13-new-2.JPG\" /></span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>iPhone 13 m&agrave;u&nbsp;xanh l&aacute; độc đ&aacute;o</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">Sang trọng hơn v&agrave; độc đ&aacute;o hơn, phi&ecirc;n bản m&agrave;u xanh l&aacute; ho&agrave;n to&agrave;n mới đ&atilde; g&oacute;p mặt tr&ecirc;n iPhone 13 ti&ecirc;u chuẩn. Sự trầm lặng, n&eacute;t cao cấp v&agrave; vẻ ngo&agrave;i b&oacute;ng bẩy của chiếc điện thoại như được t&ocirc;n vinh v&agrave; mang tới cảm nhận ho&agrave;n to&agrave;n kh&aacute;c biệt về cấu tr&uacute;c thẩm mỹ.</span></p>\r\n\r\n<p><span style=\"font-size:16px\"><img alt=\"iPhone 13 màu xanh lá\" id=\"\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/BaoPK/SmartphoneChupDep/iphone-13-xanh-la.jpg\" /></span></p>\r\n\r\n<p><span style=\"font-size:16px\">Phi&ecirc;n bản iPhone 13 m&agrave;u xanh l&aacute; (Alpine Green) mới m&agrave; Apple vừa giới thiệu được biến tấu nghi&ecirc;ng về sắc xanh r&ecirc;u hơn l&agrave; m&agrave;u xanh l&aacute; th&ocirc;ng thường. Đ&acirc;y l&agrave; điều hợp l&yacute; bởi việc sử dụng tone trầm sẽ tạo cảm gi&aacute;c sang trọng hơn khi nh&igrave;n ngắm, gi&uacute;p sản phẩm dễ tiếp cận được nhiều đối tượng v&agrave; ph&acirc;n biệt với m&agrave;u Xanh vốn c&oacute; tr&ecirc;n iPhone 13 hiện tại.</span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>Hệ thống camera k&eacute;p xuất sắc nhất từ trước đến nay</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\"><a href=\"https://fptshop.com.vn/apple\">Apple</a>&nbsp;trang bị cho iPhone 13 bộ đ&ocirc;i cảm biến camera cực đỉnh với khẩu độ v&agrave; k&iacute;ch thước cảm biến cực lớn, bổ sung t&iacute;nh năng ổn định h&igrave;nh ảnh quang học Sensor-shift OIS. Đ&oacute; l&agrave; l&yacute; do để 2 ống k&iacute;nh đặt ch&eacute;o 45 độ, th&iacute;ch hợp kh&ocirc;ng gian cho những cảm biến mới. Kết quả l&agrave; camera iPhone 13 c&oacute; khả năng thu s&aacute;ng vượt trội với lượng &aacute;nh s&aacute;ng nhiều hơn tới 47%, cho ảnh chụp v&agrave; video tuyệt đẹp.</span></p>\r\n\r\n<p><span style=\"font-size:16px\"><img alt=\"iPhone 13 có bộ đôi cảm biến camera cực đỉnh\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-13-7.jpg\" /></span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>S&aacute;ng tạo những t&aacute;c phẩm điện ảnh kinh điển</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">Kh&ocirc;ng chỉ quay phim đơn thuần, chế độ điện ảnh Cinematic tr&ecirc;n iPhone 13 c&ograve;n cho ph&eacute;p bạn s&aacute;ng tạo những thước phim với chất lượng điện ảnh. Giờ đ&acirc;y iPhone của bạn c&oacute; thể dễ d&agrave;ng quay những đoạn video x&oacute;a ph&ocirc;ng, l&agrave;m mờ hậu cảnh, chuyển chủ thể lấy n&eacute;t mượt m&agrave; cả trước v&agrave; trong khi quay.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Trong những đoạn phim truyền h&igrave;nh, nh&acirc;n vật đang n&oacute;i chuyện sẽ được lấy n&eacute;t c&ograve;n bối cảnh kh&aacute;c sẽ được l&agrave;m mờ, iPhone 13 ho&agrave;n to&agrave;n c&oacute; thể quay phim như vậy một c&aacute;ch đầy chuy&ecirc;n nghiệp. Thậm ch&iacute; iPhone 13 c&ograve;n cho khả năng điều chỉnh nhanh hơn, chỉ bằng v&agrave;i thao t&aacute;c chạm v&agrave; vuốt.</span></p>\r\n\r\n<p><span style=\"font-size:16px\"><img alt=\"iPhone 13 sáng tạo những thước phim với chất lượng điện ảnh\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-13-12.jpg\" /></span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>Chất lượng ảnh chụp đ&aacute;ng kinh ngạc của iPhone 13</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">Với iPhone 13, đơn giản bạn chỉ cần nhấn chụp l&agrave; sẽ c&oacute; ngay ảnh đẹp. Chế độ chụp đ&ecirc;m sẽ tự động nhận diện cảnh thiếu s&aacute;ng v&agrave; điều chỉnh &aacute;nh s&aacute;ng ph&ugrave; hợp để bức ảnh của bạn lu&ocirc;n đủ s&aacute;ng, m&agrave;u sắc ch&iacute;nh x&aacute;c d&ugrave; l&agrave; trong đ&ecirc;m tối.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Chế độ ch&acirc;n dung l&agrave;m mờ hậu cảnh một c&aacute;ch nghệ thuật c&ugrave;ng 6 hiệu ứng &aacute;nh s&aacute;ng độc đ&aacute;o để bạn lu&ocirc;n nổi bật. Đặc biệt, t&iacute;nh năng Smart HDR 4 c&oacute; thể nhận dạng tới 4 người trong một khung h&igrave;nh v&agrave; tối ưu h&oacute;a độ tương phản, &aacute;nh s&aacute;ng để ph&ugrave; hợp với t&ocirc;ng m&agrave;u da từng người khiến ai cũng xuất hiện đầy rạng rỡ.</span></p>\r\n\r\n<p><span style=\"font-size:16px\"><img alt=\"Chất lượng ảnh chụp đáng kinh ngạc của iPhone 13\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-13-camera-1.jpg\" /></span></p>', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>M&agrave;n h&igrave;nh</td>\r\n			<td>6.1 inch, OLED, Super Retina XDR, 2532 x 1170 Pixels</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera sau</td>\r\n			<td>12.0 MP + 12.0 MP</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera Selfie</td>\r\n			<td>12.0 MP</td>\r\n		</tr>\r\n		<tr>\r\n			<td>RAM</td>\r\n			<td>4 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ trong</td>\r\n			<td>128 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU</td>\r\n			<td>Apple A15 Bionic</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPU</td>\r\n			<td>Apple GPU 5 nh&acirc;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dung lượng pin</td>\r\n			<td>3225 mAh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Thẻ sim</td>\r\n			<td>1 - 1 eSIM, 1 Nano SIM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hệ điều h&agrave;nh</td>\r\n			<td>iOS 15</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xuất xứ</td>\r\n			<td>Trung Quốc</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Thời gian ra mắt</td>\r\n			<td>2022</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 'iPhone 13 128GB', 'iPhone 13 128GB'),
(66, 'iPhone 14 Pro 128GB', 6, 3, '/storage/images_product/1IgNpiDxhr_638025690989890035_iPhone 14 Pro (1).webp', 23390000, 24390000, 20, 10, '<p><strong>iPhone 14 Pro hội tụ những t&iacute;nh năng đẳng cấp nhất với thiết kế mới, bộ vi xử l&yacute; Apple A16 Bionic với sức mạnh chưa từng thấy, camera 48MP n&acirc;ng cấp vượt trội, m&agrave;n h&igrave;nh Always-On đầy th&uacute; vị v&agrave; hơn thế nữa.&nbsp;</strong></p>\r\n\r\n<p><strong><img alt=\"iPhone 14 Pro chính hãng Apple\" id=\"iPhone 14 Pro chính hãng Apple\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/ThienNDDD/iPhone-14-Pro.jpg\" /></strong></p>\r\n\r\n<h3><strong>Thiết kế mới với Dynamic Island</strong></h3>\r\n\r\n<p>Sau 5 năm, Apple đ&atilde; n&oacute;i lời tạm biệt với thiết kế m&agrave;n h&igrave;nh &ldquo;tai thỏ&rdquo; để giới thiệu notch Dynamic Island - đ&acirc;y l&agrave; một sự thay đổi ngoạn mục. iPhone 14 Pro thu hẹp phần cảm biến Face ID v&agrave; camera trước th&agrave;nh h&igrave;nh dạng như một vi&ecirc;n thuốc. Khu vực n&agrave;y sẽ t&ugrave;y biến v&agrave; l&agrave;m nổi bật khi c&oacute; cuộc gọi đến, c&aacute;c th&ocirc;ng b&aacute;o của ứng dụng, &acirc;m nhạc v&agrave; hơn thế nữa. Bạn chắc chắn sẽ cảm nhận được sự th&uacute; vị của Dynamic Island khi sử dụng iPhone 14 Pro.</p>\r\n\r\n<p><img alt=\"Thiết kế iPhone 14 Pro với Dynamic Island\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/ThienNDDD/iPhone-14-Pro-1.jpg\" /></p>\r\n\r\n<h3><strong>Th&eacute;p kh&ocirc;ng gỉ si&ecirc;u bền, cực sang trọng</strong></h3>\r\n\r\n<p>iPhone 14 Pro c&oacute; kiểu d&aacute;ng tương tự người tiền nhiệm với một vẻ ngo&agrave;i sang trọng l&agrave;m từ khung th&eacute;p kh&ocirc;ng gỉ kết hợp hai mặt cứng cường lực phủ gốm si&ecirc;u bền. Tất nhi&ecirc;n iPhone 14 Pro sẽ c&oacute; khả năng chống nước/chống bụi với chuẩn IP68. Tuy nhi&ecirc;n do cụm camera được n&acirc;ng cấp lớn hơn, n&ecirc;n bạn sẽ kh&ocirc;ng thể sử dụng chung ốp lưng với d&ograve;ng&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/iphone-13-pro\">iPhone 13 Pro</a>&nbsp;trước đ&acirc;y.&nbsp;</p>\r\n\r\n<p><img alt=\"Thép không gỉ giúp iPhone 14 Pro siêu bền\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/ThienNDDD/iPhone-14-Pro-2.jpg\" /></p>\r\n\r\n<h3><strong>4 lựa chọn m&agrave;u sắc với phi&ecirc;n bản m&agrave;u T&iacute;m cực chất</strong></h3>\r\n\r\n<p>Cũng giống như những g&igrave; đ&atilde; diễn ra c&aacute;ch đ&acirc;y 1 năm, iPhone 14 Pro sẽ c&oacute; 4 phi&ecirc;n bản m&agrave;u nhưng n&oacute; sẽ c&oacute; đ&ocirc;i ch&uacute;t kh&aacute;c biệt. B&ecirc;n cạnh những m&agrave;u quen thuộc như Đen Space Black, Bạc Silver, V&agrave;ng Gold, kh&aacute; bất ngờ khi m&agrave;u sắc chủ đạo của iPhone 14 Pro năm nay sẽ l&agrave; m&agrave;u T&iacute;m Deep Purple. Với việc kho&aacute;c l&ecirc;n m&igrave;nh thiết kế tinh xảo, iPhone 14 Pro c&agrave;ng trở n&ecirc;n b&oacute;ng bẩy v&agrave; lạ mắt hơn khi kết hợp với m&agrave;u T&iacute;m mới n&agrave;y.&nbsp;</p>\r\n\r\n<p><img alt=\"Màu sắc iPhone 14 Pro cực chất\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/ThienNDDD/iPhone-14-Pro-3.jpg\" /></p>\r\n\r\n<h3><strong>Hiển thị sắc n&eacute;t v&agrave; mượt m&agrave; trong từng điểm chạm</strong></h3>\r\n\r\n<p>Với tấm nền OLED Super Retina XDR, mật độ điểm ảnh 460 ppi c&ugrave;ng việc được hỗ trợ loạt t&iacute;nh năng h&agrave;ng đầu, iPhone 14 Pro sẽ thể hiện xuất sắc khả năng của m&igrave;nh khi lu&ocirc;n sắc n&eacute;t cho mọi &aacute;nh nh&igrave;n. Hơn nữa, k&iacute;ch thước 6.1 inch kết hợp với độ s&aacute;ng l&ecirc;n đến 2000 nits ở điều kiện ngo&agrave;i trời sẽ gi&uacute;p cho bạn dễ d&agrave;ng tương t&aacute;c hơn với m&agrave;n h&igrave;nh d&ugrave; sử dụng bất cứ đ&acirc;u. Ngo&agrave;i ra m&agrave;n h&igrave;nh n&agrave;y cũng hỗ trợ tần số l&agrave;m mới 120Hz v&agrave; c&ocirc;ng nghệ ProMotion, c&oacute; thể thay đổi tần số từ 1-120Hz để vừa mượt m&agrave;, vừa tiết kiệm pin.</p>\r\n\r\n<p><img alt=\"iPhone 14 Pro hiển thị sắc nét\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/ThienNDDD/iPhone-14-Pro-4.png\" /></p>\r\n\r\n<h3><strong>Always-On cuối c&ugrave;ng cũng đ&atilde; đến</strong></h3>\r\n\r\n<p>Sau thời gian d&agrave;i chờ đợi, t&iacute;nh năng M&agrave;n h&igrave;nh lu&ocirc;n bật (Always-On) đ&atilde; được giới thiệu c&ugrave;ng với iPhone 14 Pro. Kh&aacute;c với Always-On tr&ecirc;n Android với m&agrave;u đen đơn thuần, m&agrave;n h&igrave;nh lu&ocirc;n bật tr&ecirc;n&nbsp;<a href=\"https://fptshop.com.vn/dien-thoai/apple-iphone\">iPhone</a>&nbsp;vẫn sẽ giữ nguy&ecirc;n m&agrave;u sắc của m&agrave;n h&igrave;nh kh&oacute;a v&agrave; bạn c&oacute; thể xem bất cứ khi n&agrave;o. Khi bạn bỏ điện thoại v&agrave;o t&uacute;i hoặc &uacute;p m&agrave;n h&igrave;nh xuống, m&agrave;n h&igrave;nh sẽ tự động tối đi để tiết kiệm pin.&nbsp;</p>\r\n\r\n<p><img alt=\"iPhone 14 Pro với màn hình Always-On\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/ThienNDDD/iPhone-14-Pro-5.jpg\" /></p>\r\n\r\n<h3><strong>T&ugrave;y chỉnh m&agrave;n h&igrave;nh kh&oacute;a theo &yacute; th&iacute;ch</strong></h3>\r\n\r\n<p>Với iOS 16 khi ra mắt, iPhone 14 Pro sẽ c&oacute; khả năng t&ugrave;y chỉnh m&agrave;n h&igrave;nh kh&oacute;a một c&aacute;ch kh&aacute; độc đ&aacute;o m&agrave; từ trước đến nay chưa c&oacute;. Bạn c&oacute; thể t&ugrave;y chỉnh M&agrave;n h&igrave;nh kh&oacute;a của m&igrave;nh với c&aacute;c thao t&aacute;c như xếp một bức ảnh l&ecirc;n biểu tượng đồng hồ, theo d&otilde;i hoạt động của bạn v&agrave; c&oacute; thể xem được thời lượng pin của c&aacute;c thiết bị được kết nối qua bluetooth&hellip;</p>\r\n\r\n<p><img alt=\"Tùy chỉnh màn hình khóa iPhone 14 Pro\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/ThienNDDD/iPhone-14-Pro-6.png\" /></p>\r\n\r\n<h3><strong>Th&ecirc;m t&iacute;nh năng ph&aacute;t hiện sự cố</strong></h3>\r\n\r\n<p>Apple cũng đ&atilde; t&iacute;ch hợp những t&iacute;nh năng ph&aacute;t hiện sự cố ấn tượng l&ecirc;n iPhone 14 Pro, bao gồm t&iacute;nh năng SOS th&ocirc;ng qua vệ tinh v&agrave; ph&aacute;t hiện sự cố tai nạn &ocirc; t&ocirc;. Nếu bạn kh&ocirc;ng c&oacute; mạng di động hoặc Wi-Fi, iPhone cho ph&eacute;p bạn ph&aacute;t th&ocirc;ng b&aacute;o khẩn cấp qua vệ tinh v&agrave; n&oacute; sẽ ph&aacute;t hiện ra tai nạn &ocirc; t&ocirc; nghi&ecirc;m trọng để kịp thời th&ocirc;ng b&aacute;o cho li&ecirc;n hệ khẩn cấp của bạn.&nbsp;</p>\r\n\r\n<p><img alt=\"Tính năng phát hiện sự cố trên iPhone 14 Pro\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/ThienNDDD/iPhone-14-Pro-7.png\" /></p>\r\n\r\n<h3><strong>Hệ thống camera đậm chất &ldquo;Pro&rdquo;</strong></h3>\r\n\r\n<p>iPhone 14 Pro đ&atilde; c&oacute; sự n&acirc;ng cấp vượt bậc về camera khi camera ch&iacute;nh được n&acirc;ng l&ecirc;n độ ph&acirc;n giải 48MP. Nhờ vậy bạn sẽ c&oacute; ảnh chi tiết hơn tới 4 lần trong khi chỉnh sửa ảnh ProRAW kh&ocirc;ng lo ảnh bị giảm chất lượng. K&iacute;ch thước cảm biến cũng lớn hơn tới 65% v&agrave; tăng khả năng chụp ảnh thiếu s&aacute;ng.&nbsp;</p>\r\n\r\n<p><img alt=\"Hệ thống camera iPhone 14 Pro\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/ThienNDDD/iPhone-14-Pro-8.png\" /></p>', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>M&agrave;n h&igrave;nh</td>\r\n			<td>6.1 inch, OLED, Super Retina XDR, 2556 x 1179 Pixels</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera sau</td>\r\n			<td>48.0 MP + 12.0 MP + 12.0 MP</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera Selfie</td>\r\n			<td>12.0 MP</td>\r\n		</tr>\r\n		<tr>\r\n			<td>RAM</td>\r\n			<td>6 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ trong</td>\r\n			<td>128 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU</td>\r\n			<td>Apple A16 Bionic</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPU</td>\r\n			<td>Apple GPU 5 nh&acirc;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dung lượng pin</td>\r\n			<td>3200 mAh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Thẻ sim</td>\r\n			<td>1 - 1 eSIM, 1 Nano SIM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hệ điều h&agrave;nh</td>\r\n			<td>iOS 16</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xuất xứ</td>\r\n			<td>Trung Quốc</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Thời gian ra mắt</td>\r\n			<td>09/2022</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 'iPhone 14 Pro 128GB', 'iPhone 14 Pro 128GB');

-- --------------------------------------------------------

--
-- Table structure for table `requirement`
--

CREATE TABLE `requirement` (
  `id` bigint UNSIGNED NOT NULL,
  `requirement_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `requirement_email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `requirement_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `requirement_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `requirement_active` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ships`
--

CREATE TABLE `ships` (
  `ship_id` int UNSIGNED NOT NULL,
  `city_id` int NOT NULL,
  `district_id` int NOT NULL,
  `ship_price` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ships`
--

INSERT INTO `ships` (`ship_id`, `city_id`, `district_id`, `ship_price`, `created_at`, `updated_at`) VALUES
(1, 2, 24, 20000, '2023-11-04 03:07:19', '2023-11-04 03:07:19'),
(2, 86, 855, 40000, '2023-11-06 04:41:32', '2023-11-06 04:41:32');

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `id` bigint UNSIGNED NOT NULL,
  `slide_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` int NOT NULL,
  `type` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id`, `slide_title`, `image`, `target`, `active`, `type`, `created_at`, `updated_at`) VALUES
(4, 'Iphone 12 promax', '/storage/images_slide/rmLVQNc11j_iphone-12-1020x570.jpg', 'shop/product/59-dien-thoai-iphone-12-64gb.html', 1, 1, '2023-11-04 23:16:49', '2023-11-07 09:44:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `user_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_phone` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_addres` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_district` int DEFAULT NULL,
  `user_city` int DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `password`, `user_phone`, `user_addres`, `user_district`, `user_city`, `provider`, `provider_id`, `role_id`, `created_at`, `updated_at`) VALUES
(23, 'admin', 'info@maitrungkien.com', '$2y$10$/1RvMdu7jKnXZRL2apGW9ejdvudVoX/VPuB4nnpHRCYyCw1L/8IJS', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-12-21 19:23:27', '2021-12-21 19:23:27'),
(24, 'MAI TRUNG KIÊN', 'maitrungkien1002@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, 'google', '108963655266565491761', 1, '2022-11-13 08:52:42', '2022-11-13 08:52:42'),
(25, 'quocdung', 'dung@gmail.com', '$2y$10$FQne3a0VNQgKQV5ATVMabO1G8F4BCGa2pCNE3vOy2xmhMAI41MOCG', '0856786728', 'vinh long', 2, 1, NULL, NULL, 1, '2023-11-04 03:03:03', '2023-11-05 10:04:10'),
(26, 'Dũng Nguyễn Quốc', 'rongvang2357hn@gmail.com', NULL, NULL, NULL, NULL, NULL, 'google', '110848136296396830593', 2, '2023-11-07 10:24:20', '2023-11-09 22:00:56'),
(27, 'a@bookshop.com', 'a@bookshop.com', '$2y$10$qZ5hsMI0maASjg4cFtahqey2vKqlYo7g/kjVdnfeOVPTMlF8WZQHO', NULL, NULL, NULL, NULL, NULL, NULL, 2, '2023-11-09 22:02:45', '2023-11-09 22:03:08');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` bigint UNSIGNED NOT NULL,
  `product_id` int NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`wishlist_id`, `product_id`, `user_id`) VALUES
(3, 61, 25);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `categorys`
--
ALTER TABLE `categorys`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `citys`
--
ALTER TABLE `citys`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_product_id_foreign` (`product_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`district_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `orderdetail_order_id_foreign` (`order_id`),
  ADD KEY `orderdetail_product_id_foreign` (`product_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `requirement`
--
ALTER TABLE `requirement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ships`
--
ALTER TABLE `ships`
  ADD PRIMARY KEY (`ship_id`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `users_user_email_unique` (`user_email`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`),
  ADD KEY `wishlist_user_id_foreign` (`user_id`),
  ADD KEY `wishlist_product_id_foreign` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` tinyint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categorys`
--
ALTER TABLE `categorys`
  MODIFY `category_id` tinyint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupon_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `image_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orderdetail`
--
ALTER TABLE `orderdetail`
  MODIFY `order_detail_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `requirement`
--
ALTER TABLE `requirement`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ships`
--
ALTER TABLE `ships`
  MODIFY `ship_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD CONSTRAINT `orderdetail_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orderdetail_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`brand_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categorys` (`category_id`) ON DELETE SET NULL;

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlist_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
