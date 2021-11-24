-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 19, 2021 lúc 09:56 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `mypham`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `inventory_id` int(30) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(30) NOT NULL,
  `category` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `category`, `description`, `status`, `date_created`) VALUES
(7, 'Trang Điểm', '&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 1, '2021-11-19 11:21:08'),
(8, 'Chăm Sóc Da', '&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 1, '2021-11-19 11:21:21'),
(9, 'Chăm Sóc Tóc', '&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 1, '2021-11-19 11:21:35'),
(10, 'Phụ Kiện', '&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 1, '2021-11-19 11:21:52'),
(11, 'Nước Hoa', '&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 1, '2021-11-19 11:22:02'),
(12, 'Chăm Sóc Toàn Thân', '&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 0, '2021-11-19 11:22:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `clients`
--

CREATE TABLE `clients` (
  `id` int(30) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` text NOT NULL,
  `default_delivery_address` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `clients`
--

INSERT INTO `clients` (`id`, `firstname`, `lastname`, `gender`, `contact`, `email`, `password`, `default_delivery_address`, `date_created`) VALUES
(2, 'ta ', 'thuong', 'Male', '01234567', 'thuong@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'hanoi', '2021-11-17 09:53:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `inventory`
--

CREATE TABLE `inventory` (
  `id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` double NOT NULL,
  `price` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `inventory`
--

INSERT INTO `inventory` (`id`, `product_id`, `quantity`, `price`, `date_created`, `date_updated`) VALUES
(10, 12, 30, 140000, '2021-11-19 11:32:55', '2021-11-19 11:40:21'),
(11, 11, 30, 94000, '2021-11-19 11:33:46', NULL),
(12, 13, 30, 250000, '2021-11-19 11:35:30', NULL),
(13, 14, 30, 340000, '2021-11-19 11:36:41', NULL),
(14, 15, 30, 180000, '2021-11-19 11:37:44', NULL),
(15, 16, 30, 290000, '2021-11-19 11:38:52', NULL),
(16, 17, 30, 210000, '2021-11-19 11:40:13', NULL),
(17, 18, 30, 160000, '2021-11-19 11:41:21', NULL),
(18, 20, 30, 170000, '2021-11-19 11:45:03', NULL),
(19, 21, 30, 84000, '2021-11-19 11:46:00', NULL),
(20, 22, 30, 55000, '2021-11-19 11:47:09', NULL),
(21, 23, 30, 150000, '2021-11-19 11:50:21', NULL),
(22, 24, 30, 130000, '2021-11-19 11:52:59', NULL),
(23, 25, 30, 160000, '2021-11-19 11:54:20', '2021-11-19 12:02:55'),
(24, 26, 30, 180000, '2021-11-19 11:55:35', '2021-11-19 12:02:48'),
(25, 27, 30, 170000, '2021-11-19 11:57:16', '2021-11-19 12:02:38'),
(26, 28, 30, 95000, '2021-11-19 11:58:26', '2021-11-19 12:02:31'),
(27, 29, 30, 180000, '2021-11-19 12:00:14', NULL),
(28, 30, 30, 180000, '2021-11-19 12:02:11', NULL),
(29, 31, 30, 35000, '2021-11-19 12:26:47', NULL),
(30, 32, 30, 295000, '2021-11-19 12:27:48', NULL),
(31, 33, 30, 19000, '2021-11-19 12:30:04', NULL),
(32, 34, 30, 240000, '2021-11-19 12:31:32', NULL),
(33, 35, 30, 280000, '2021-11-19 12:32:29', NULL),
(34, 36, 30, 90000, '2021-11-19 12:33:44', NULL),
(35, 38, 30, 35000, '2021-11-19 12:37:19', NULL),
(36, 39, 30, 125000, '2021-11-19 12:55:48', NULL),
(37, 40, 30, 380000, '2021-11-19 12:57:04', NULL),
(38, 41, 30, 160000, '2021-11-19 12:58:01', NULL),
(39, 42, 30, 120000, '2021-11-19 12:59:35', NULL),
(40, 43, 30, 125000, '2021-11-19 13:00:28', NULL),
(41, 44, 30, 170000, '2021-11-19 13:01:33', NULL),
(42, 45, 30, 13000, '2021-11-19 13:02:39', NULL),
(43, 46, 30, 410000, '2021-11-19 13:03:39', NULL),
(44, 47, 50, 410000, '2021-11-19 13:04:34', NULL),
(45, 48, 60, 255000, '2021-11-19 13:07:04', NULL),
(46, 49, 35, 450000, '2021-11-19 13:09:25', NULL),
(47, 50, 50, 280000, '2021-11-19 13:10:31', NULL),
(48, 51, 50, 130000, '2021-11-19 13:12:12', NULL),
(49, 52, 45, 85000, '2021-11-19 13:13:54', NULL),
(50, 53, 44, 70000, '2021-11-19 13:15:08', NULL),
(51, 54, 77, 1100000, '2021-11-19 13:16:16', NULL),
(52, 55, 66, 280000, '2021-11-19 13:17:45', NULL),
(53, 56, 50, 35000, '2021-11-19 13:18:55', NULL),
(54, 57, 55, 20000, '2021-11-19 13:19:45', NULL),
(55, 58, 30, 60000, '2021-11-19 13:20:51', NULL),
(56, 59, 30, 50000, '2021-11-19 13:22:43', NULL),
(57, 60, 30, 110000, '2021-11-19 13:24:41', NULL),
(58, 61, 50, 110000, '2021-11-19 13:26:37', NULL),
(59, 62, 45, 150000, '2021-11-19 13:27:45', NULL),
(60, 63, 50, 75000, '2021-11-19 13:29:47', NULL),
(61, 64, 34, 55000, '2021-11-19 13:31:05', NULL),
(62, 65, 46, 50000, '2021-11-19 13:32:28', '2021-11-19 13:32:33'),
(63, 66, 22, 30000, '2021-11-19 13:33:51', NULL),
(64, 67, 24, 90000, '2021-11-19 13:34:59', NULL),
(65, 68, 22, 60000, '2021-11-19 13:36:08', NULL),
(66, 69, 20, 40000, '2021-11-19 13:37:25', NULL),
(67, 70, 55, 45000, '2021-11-19 13:38:33', NULL),
(68, 71, 20, 35000, '2021-11-19 13:39:37', NULL),
(69, 72, 44, 60000, '2021-11-19 13:41:28', NULL),
(70, 73, 43, 110000, '2021-11-19 13:42:24', NULL),
(71, 74, 23, 40000, '2021-11-19 13:43:16', NULL),
(72, 75, 34, 70000, '2021-11-19 13:44:25', NULL),
(73, 76, 34, 50000, '2021-11-19 13:45:21', NULL),
(74, 77, 31, 52000, '2021-11-19 13:46:26', NULL),
(75, 78, 11, 80000, '2021-11-19 13:47:39', NULL),
(76, 79, 23, 450000, '2021-11-19 13:49:51', NULL),
(77, 80, 23, 170000, '2021-11-19 13:51:14', NULL),
(78, 81, 43, 390000, '2021-11-19 13:53:16', NULL),
(79, 82, 23, 580000, '2021-11-19 13:54:29', NULL),
(80, 83, 23, 110000, '2021-11-19 13:55:42', NULL),
(81, 84, 34, 110000, '2021-11-19 13:56:41', NULL),
(82, 85, 32, 250000, '2021-11-19 13:58:35', NULL),
(83, 86, 43, 190000, '2021-11-19 13:59:23', NULL),
(84, 87, 20, 510000, '2021-11-19 14:00:30', NULL),
(85, 88, 22, 135000, '2021-11-19 14:02:59', NULL),
(86, 89, 21, 125000, '2021-11-19 14:04:18', NULL),
(87, 90, 17, 160000, '2021-11-19 14:05:07', NULL),
(88, 91, 20, 180000, '2021-11-19 14:06:39', NULL),
(89, 92, 20, 180000, '2021-11-19 14:07:40', NULL),
(90, 93, 20, 250000, '2021-11-19 14:08:39', NULL),
(91, 94, 20, 270000, '2021-11-19 14:09:34', NULL),
(92, 95, 20, 280000, '2021-11-19 14:10:22', NULL),
(93, 96, 20, 260000, '2021-11-19 14:11:11', NULL),
(94, 97, 20, 280000, '2021-11-19 14:12:04', NULL),
(95, 98, 20, 150000, '2021-11-19 14:13:44', NULL),
(96, 99, 20, 490000, '2021-11-19 14:14:46', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `delivery_address` text NOT NULL,
  `amount` double NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 0,
  `paid` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `client_id`, `delivery_address`, `amount`, `status`, `paid`, `date_created`, `date_updated`) VALUES
(16, 2, 'hanoi', 179000, 2, 1, '2021-11-19 14:55:05', '2021-11-19 15:37:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_list`
--

CREATE TABLE `order_list` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `price` double NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `order_list`
--

INSERT INTO `order_list` (`id`, `order_id`, `product_id`, `quantity`, `price`, `total`) VALUES
(8, 15, 97, 1, 280000, 280000),
(9, 16, 21, 1, 84000, 84000),
(10, 16, 28, 1, 95000, 95000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `sub_category_id` int(30) NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `product_name`, `description`, `status`, `date_created`) VALUES
(11, 7, 14, 'Phấn Mắt Đa Năng Odbo MakeUp Kit - OD1037', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;Odbo Makeup Kit c&oacute; 4 set kh&aacute;c nhau, mỗi set gồm 9 &ocirc; phấn mắt, 3 &ocirc; son, 1 &ocirc; m&aacute; hồng, 3 &ocirc; phấn kẻ m&agrave;y. Mỗi set sẽ c&oacute; ch&uacute;t kh&aacute;c biệt ở 9 &ocirc; phấn mắt :&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;+ Set 1 v&agrave; 3 : c&oacute; 1 &ocirc; kim tuyến để nhấn nh&aacute; cho phần đu&ocirc;i mắt th&ecirc;m long lanh.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;+ Set 2 v&agrave; 4 : c&oacute; 1 &ocirc; highlight v&agrave; 1 &ocirc; tạo khối d&ugrave;ng cho mũi hoặc c&aacute;c g&oacute;c cạnh của mặt.&lt;/p&gt;', 1, '2021-11-19 11:31:34'),
(12, 7, 14, 'Kem Lót Essence You Better Work!', '&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 1, '2021-11-19 11:32:16'),
(13, 7, 14, 'Phấn Phủ Too Cool For School Art-Class By Rodin', '&lt;p&gt;&lt;span style=&quot;background-color: rgb(255, 255, 255); color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 14px;&quot;&gt;Cấu tạo hạt phấn nano nhỏ mịn dễ d&agrave;ng phủ đều tr&ecirc;n mặt da, với th&agrave;nh phần kh&ocirc;ng chứa dầu tạo hiệu ứng l&agrave;m mờ, che phủ cực cao ở những v&ugrave;ng lỗ ch&acirc;n l&ocirc;ng to, nếp nhăn, da xỉn m&agrave;u&lt;/span&gt;&lt;/p&gt;', 1, '2021-11-19 11:34:44'),
(14, 7, 14, 'Phấn Nước Missha Cover & Glow SPF45/PA++', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Điều chỉnh m&agrave;u da, cung cấp độ ẩm vừa đủ gi&uacute;p kh&ocirc;ng bị mốc mặt hoặc kh&ocirc; da, gi&uacute;p da mịn m&agrave;ng hơn.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Đồng thời, sản phẩm c&ograve;n chứa Adenosine, Axit Hyaluronic v&agrave; Collagen l&ecirc;n men gi&uacute;p cung cấp dinh dưỡng v&agrave; sức sống cho l&agrave;n da mệt mỏi khiến da tươi trẻ v&agrave; mịn m&agrave;ng hơn.&lt;/p&gt;', 1, '2021-11-19 11:36:14'),
(15, 7, 14, 'Kem Lót Clio Kill Cover Highest Wear Primer', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Chất kem m&agrave;u hồng s&aacute;ng mịn m&agrave;ng,&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- L&agrave;m đầy lỗ ch&acirc;n l&ocirc;ng&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Kiềm dầu gi&uacute;p lớp trang điểm bền vững, l&acirc;u tr&ocirc;i, kh&ocirc;ng bị g&atilde;y phấn.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- L&agrave;n da mọng nước, l&agrave;m mềm v&agrave; ẩm da ngay lập tức.&lt;/p&gt;', 1, '2021-11-19 11:37:18'),
(16, 7, 14, 'Phấn Tươi Age 20’S Essence Cover Pact', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Lớp nền mịn mướt l&agrave;m s&aacute;ng da. Kết cấu mỏng mịn kh&ocirc;ng g&acirc;y nhờn b&iacute;.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Kiềm dầu, cho lớp nền l&acirc;u tr&ocirc;i cả ng&agrave;y, kh&ocirc;ng bị mốc.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Chống mẩn đỏ, k&iacute;ch ứng da.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Che phủ c&aacute;c khuyết điểm, cho l&agrave;n da ho&agrave;n hảo hơn.&lt;/p&gt;', 1, '2021-11-19 11:38:28'),
(17, 7, 14, 'Kem Lót Innisfree Mineral MaMake-Up Base SPF30', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Th&agrave;nh phần tự nhi&ecirc;n từ tr&agrave; xanh v&agrave; bột ngọc trai&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Gi&uacute;p lớp kem nền v&agrave; phấn dễ b&aacute;m v&agrave;o da&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Hiệu chỉnh m&agrave;u da mang lại lớp nền đ&ecirc;u m&agrave;u v&agrave; l&acirc;u xuống t&ocirc;ng&lt;/p&gt;', 1, '2021-11-19 11:39:40'),
(18, 7, 14, 'Phấn Nước Missha Magic Cushion Moist Up', '&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;Phấn Nước Missha M Magic Cushion Cover SPF 50+ PA+++&amp;nbsp; l&agrave; sự kết ho&agrave;n hảo giữa phấn nước v&agrave; kem dưỡng, c&oacute; khả năng cấp ẩm v&agrave; dưỡng ẩm cho da, gi&uacute;p da b&oacute;ng khỏe tr&agrave;n đầy sức sống. Mang đến cho bạn lớp make up ho&agrave;n to&agrave;n tự nhi&ecirc;n.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2021-11-19 11:40:57'),
(19, 7, 14, 'Má Hồng Odbo Happy Everyday Pocket Blusher', '&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 1, '2021-11-19 11:41:56'),
(20, 7, 15, 'Nhũ Mắt Black Rouge Pearlvely I Glitter', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Chất gel c&oacute; độ s&aacute;nh vừa phải gi&uacute;p việc make up dễ d&agrave;ng hơn, kh&ocirc;ng g&acirc;y nặng mắt hay gặp phải hiện tượng v&oacute;n cục, bết d&iacute;nh.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Nhũ mắt l&ecirc;n đều v&agrave; bắt s&aacute;ng nhanh ch&oacute;ng, tạo hiệu ứng 3D nhanh ch&oacute;ng.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- C&oacute; khả năng chống nước n&ecirc;n giữ được độ bền m&agrave;u trong 1 khoảng thời gian d&agrave;i.&amp;nbsp;&lt;/p&gt;', 1, '2021-11-19 11:42:52'),
(21, 7, 15, 'Chuốt Mi Và Chân Mày Sivanna Colors Super Model', '', 1, '2021-11-19 11:45:38'),
(22, 7, 15, 'Chì Kẻ Chân Mày Sivanna Colors', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Với thiết kế 2 đầu gồm: 1 đầu ch&igrave; dạng b&uacute;t vặn v&agrave; 1 đầu l&agrave; chuốt m&agrave;y để t&aacute;n đều v&agrave; cố định sợi l&ocirc;ng m&agrave;y&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Đầu ch&igrave; được tạo d&aacute;ng nhọn cực nhỏ dễ d&agrave;ng định h&igrave;nh d&aacute;ng m&agrave;y, vẽ đu&ocirc;i m&agrave;y, vẽ kiểu phẩy sợi, đầu chải tương đối mềm n&ecirc;n sẽ gi&uacute;p ch&acirc;n m&agrave;y v&agrave;o nếp tốt&lt;/p&gt;', 1, '2021-11-19 11:46:41'),
(23, 7, 15, 'Phấn Mắt Odbo Pink Memory 12 Colors', '&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;Phấn Mắt Odbo Pink Memory 12 Colors Eyeshadow Palette bao gồm 12 m&agrave;u sắc trẻ trung cả cả nhũ v&agrave; l&igrave; tiện lợi, dễ sử dụng&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2021-11-19 11:48:04'),
(24, 7, 15, 'Kẻ Mắt Sivanna Colors Double Headed', '&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;Sản phẩm Kẻ Mắt 2 Đầu Sivanna Colors Double Headed Long Lasting WaterProof Quick Drying Eyeliner t&iacute;ch hợp kẻ mắt v&agrave; ch&acirc;n m&agrave;y trong c&ugrave;ng 1 sản phẩm mang đến sự tiện lợi khi makeup. Đường n&eacute;t mềm mượt v&agrave; m&agrave;u sắc dễ sử dụng ph&ugrave; hợp với mọi kiểu makeup.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2021-11-19 11:51:58'),
(25, 7, 16, 'Son Dưỡng Bóng Black Rouge Half & Half', '&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;Half N Half Collection bao gồm 10 m&agrave;u son được chia th&agrave;nh 3 phi&ecirc;n bản theo chất son kh&aacute;c nhau để bạn c&oacute; nhiều sự lựa chọn. Phi&ecirc;n bản cuối c&ugrave;ng HALF N HALF TANGLE GLOW: Chất son glow trong suốt v&agrave; thơm m&aacute;t, tạo hiệu ứng căng tr&agrave;n cho đ&ocirc;i m&ocirc;i quyến rũ tối đa.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2021-11-19 11:53:50'),
(26, 7, 16, 'Son Thỏi Lì Romand Zero Matte Lipstick 3gr', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Phi&ecirc;n bản mới cải tiến chất son v&agrave; bao b&igrave;&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- C&ocirc;ng nghệ hạt phấn tạo m&agrave;u nhỏ hơn b&igrave;nh thường 4 lần gi&uacute;p son l&ecirc;n m&agrave;u si&ecirc;u chuẩn, mịn l&igrave; v&agrave; si&ecirc;u nhẹ m&ocirc;i.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Chất dưỡng ẩm trong son gi&uacute;p bổ sung dưỡng chất, khắc phục nhược điểm m&ocirc;i kh&ocirc;, lộ v&acirc;n m&ocirc;i.&lt;/p&gt;', 1, '2021-11-19 11:55:06'),
(27, 7, 16, 'Son Tint Black Rouge Half & Half Water Glow', '&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;Half N Half Collection bao gồm 10 m&agrave;u son được chia th&agrave;nh 3 phi&ecirc;n bản theo chất son kh&aacute;c nhau để bạn c&oacute; nhiều sự lựa chọn. Phi&ecirc;n bản kế tiếp HALF N HALF WATER GLOW: Chất son water - glow lần đầu được tr&igrave;nh l&agrave;ng, lớp finish căng mọng nhẹ nh&agrave;ng như m&agrave;u nước.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2021-11-19 11:56:29'),
(28, 7, 16, 'Son Dưỡng Môi Caudalie Lip Conditioner', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Dưỡng ẩm cho đ&ocirc;i m&ocirc;i mềm mại tự nhi&ecirc;n.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Bảo vệ m&ocirc;i trước c&aacute;c t&aacute;c động ti&ecirc;u cực của m&ocirc;i trường.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- T&aacute;i tạo lại đ&ocirc;i m&ocirc;i nứt nẻ, cho bạn l&agrave;n m&ocirc;i căng mọng, quyến rũ.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Ngừa th&acirc;m m&ocirc;i, gi&uacute;p l&agrave;n m&ocirc;i hồng tự nhi&ecirc;n, rực rỡ.&lt;/p&gt;', 1, '2021-11-19 11:58:01'),
(29, 7, 16, 'Mặt Nạ Ngủ Môi Unpa Bubi Bubi Lip Mask', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Thành phần chống nhăn Adenosine giúp hạn chế nếp nhăn, rãnh môi, giúp bờ môi căng tràn sức sống. Palmito Tripeptide tổng hợp collagen giúp duy trì độ đàn hồi và ẩm mướt của môi.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Hương thơm ngọt ng&agrave;o dễ chịu&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Chất kem mềm mịn v&agrave; c&oacute; t&ocirc;ng m&agrave;u đen lạ mắt&lt;/p&gt;', 1, '2021-11-19 11:59:43'),
(30, 7, 16, 'Son Kem Lì Romand Zero Velvet Tint', '&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;Romand Zero Velvet Tint phi&ecirc;n bản Vintage Filter Series bao gồm những bảng m&agrave;u mang hiệu ứng vintage nhuộm nắng tạo n&ecirc;n thần th&aacute;i của ri&ecirc;ng bạn với những t&ocirc;ng m&agrave;u trendy hợp mốt, nổi bật n&eacute;t c&aacute; t&iacute;nh của bạn&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2021-11-19 12:01:15'),
(31, 8, 17, 'Mặt Nạ Làm Thon Gọn Mặt Secret Key', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;&amp;nbsp;Dưỡng ẩm v&agrave; chống l&atilde;o h&oacute;a cực kỳ hiệu quả, gi&uacute;p l&agrave;n da lu&ocirc;n săn chắc v&agrave; đ&agrave;n hồi tốt&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- C&oacute; khả năng duy tr&igrave; gương mặt thanh tho&aacute;t hơn, h&igrave;nh d&aacute;ng khu&ocirc;n mặt của c&aacute;c n&agrave;ng sẽ c&oacute; sự thay đổi r&otilde; rệt nếu sử dụng thường xuy&ecirc;n&lt;/p&gt;', 1, '2021-11-19 12:25:45'),
(32, 8, 17, 'Mặt Nạ Bí Đao Cocoon Winter Melon Face Mask', '&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;Sản phẩm gồm th&agrave;nh ch&iacute;nh l&agrave; b&iacute; đao thanh m&aacute;t, bổ sung th&ecirc;m rau m&aacute; v&agrave; tinh dầu tr&agrave;m tr&agrave; gi&uacute;p giảm nhờn, l&agrave;m th&ocirc;ng tho&aacute;ng lỗ ch&acirc;n l&ocirc;ng, cải thiện nhanh t&igrave;nh trạng mụn, l&agrave;m dịu vết đỏ, mang lại l&agrave;n da sạch mụn v&agrave; mịn m&agrave;ng.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2021-11-19 12:27:17'),
(33, 8, 17, 'Mặt Nạ Giấy Banobagi Vita Jelly Mask 30ml', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;&ndash; Mặt nạ vitamin dạng gel. Bổ sung vitamin A.B3.B5.C.E.F.H.Q h&agrave;m lượng 40.000ppm, 3 loại mới l&agrave; 50.000ppm.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;&ndash; Cũng như cơ thể cần được bổ sung vitamin th&igrave; da mặt cũng vậy. Vitamin gi&uacute;p da trở n&ecirc;n khoẻ v&agrave; căng mọng.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;&ndash; Tất cả c&aacute;c loại vitamin đều c&oacute; trong mặt nạ. Khi d&ugrave;ng cần b&oacute;p khắp g&oacute;i mask, đắp 10p. Da khoẻ v&agrave; mịn s&aacute;ng hơn rất nhiều.&lt;/p&gt;', 1, '2021-11-19 12:28:41'),
(34, 8, 17, 'Mặt Nạ Đất Sét Some By Mi Super Matcha 100gr', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Thẩm thấu s&acirc;u trong da nhằm h&uacute;t lượng dầu thừa, b&atilde; nhờn t&iacute;ch tụ.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Gi&uacute;p da nhẹ nh&agrave;ng, th&ocirc;ng tho&aacute;ng&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- L&agrave;m da săn chắc, mịn m&agrave;ng, tươi s&aacute;ng&lt;/p&gt;', 1, '2021-11-19 12:30:57'),
(35, 8, 17, 'Mặt Nạ Ngủ Mặt Laneige Water Sleeping Mask 25ml', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Gi&uacute;p giữ ẩm cho da trong suốt cả đ&ecirc;m&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- L&agrave;n da của bạn sẽ trở n&ecirc;n mềm mượt v&agrave; tr&agrave;n đầy năng lượng&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- K&iacute;ch th&iacute;ch c&aacute;c sợi collagen b&ecirc;n dưới da hoạt động tốt&amp;nbsp;&lt;/p&gt;', 1, '2021-11-19 12:32:05'),
(36, 8, 17, 'Gel Lột Mụn The Face Shop Jeju Volcanic', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- H&uacute;t sạch mụn c&aacute;m, b&atilde; nhờn v&agrave; bụi bẩn, gi&uacute;p lỗ ch&acirc;n l&ocirc;ng th&ocirc;ng tho&aacute;ng, mịn m&agrave;ng&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- C&ocirc;ng thức mới nhanh kh&ocirc;, dễ d&agrave;ng lột khỏi da m&agrave; ko khiến da bị r&aacute;t đỏ hay tổn thương&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Sản phẩm cực tốt cho c&aacute;c bạn bị mụn đầu đen, mụn c&aacute;m ở v&ugrave;ng mũi&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;&amp;nbsp;&lt;/p&gt;', 1, '2021-11-19 12:33:13'),
(37, 8, 17, 'Mặt Nạ Mắt Jayjun Eye Gel Patch', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Chiết xuất thi&ecirc;n nhi&ecirc;n nhẹ dịu, l&agrave;nh t&iacute;nh cho nhiều loại da&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Cung cấp dưỡng chất cho da s&aacute;ng khỏe, tăng độ đ&agrave;n hồi&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Mặt nạ c&oacute; thể sử dụng quanh v&ugrave;ng mắt, 2 c&aacute;nh mũi&lt;/p&gt;', 1, '2021-11-19 12:34:53'),
(38, 8, 18, 'Khăn Giấy Đa Năng Dùng 1 Lần Animerry', '&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 1, '2021-11-19 12:37:00'),
(39, 8, 18, 'Nước Tẩy Trang Cocoon Rose Micellar Water', '&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;Với nước cất hoa hồng hữu cơ tinh khiết kết hợp c&ocirc;ng nghệ micellar, nước tẩy trang hoa hồng gi&uacute;p l&agrave;m sạch s&acirc;u lớp trang điểm, bụi bẩn, cấp ẩm v&agrave; l&agrave;m dịu, mang lại l&agrave;n da sạch v&agrave; mịn m&agrave;ng.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2021-11-19 12:55:20'),
(40, 8, 18, 'Sữa Rửa Mặt La Roche-Posay Effeclar Purifying', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Nước kho&aacute;ng La Roche-Posay (loại nước duy nhất c&oacute; chất chống l&atilde;o ho&aacute; Selenium) gi&uacute;p l&agrave;m dịu da v&agrave; chống k&iacute;ch ứng.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Nhẹ nh&agrave;ng l&agrave;m sạch bụi bẩn v&agrave; b&atilde; nhờn dư thừa, hỗ trợ giảm mụn, mang lại l&agrave;n da sạch v&agrave; tho&aacute;ng m&aacute;t.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Độ pH trung t&iacute;nh 5.5.&lt;/p&gt;', 1, '2021-11-19 12:56:28'),
(41, 8, 18, 'Sữa Rửa Mặt Cerave 87ml', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Nhẹ nh&agrave;ng loại bỏ bụi bẩn, dầu v&agrave; lớp trang điểm m&agrave; kh&ocirc;ng l&agrave;m da căng hoặc kh&ocirc;&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Gi&uacute;p kh&ocirc;i phục v&agrave; duy tr&igrave; h&agrave;ng r&agrave;o bảo vệ tự nhi&ecirc;n của da&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Gi&uacute;p giữ độ ẩm tự nhi&ecirc;n của da&lt;/p&gt;', 1, '2021-11-19 12:57:37'),
(42, 8, 18, 'Sữa Rửa Mặt Cosrx Low PH Morning Gel Cleanser', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Với độ pH 5.0 &ndash; 6.0, sản phẩm gi&uacute;p da sạch s&acirc;u m&agrave; kh&ocirc;ng hề g&acirc;y cảm gi&aacute;c kh&ocirc; căng, kh&ocirc;i phục lại sự c&acirc;n bằng pH tối ưu cho da m&agrave; kh&ocirc;ng g&acirc;y k&iacute;ch ứng&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Sản phẩm an to&agrave;n m&agrave; mang lại hiệu quả cho mọi l&agrave;n da ngay cả l&agrave;n da nhạy cảm v&agrave; da mụn.&amp;nbsp;&lt;/p&gt;', 1, '2021-11-19 12:59:07'),
(43, 8, 18, 'Nước Tẩy Trang Bí Đao Cocoon Winter Melon', '&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;L&agrave;n da dầu v&agrave; mụn rất nhạy cảm n&ecirc;n cần được thiết kế một loại nước tẩy trang ph&ugrave; hợp. Với c&ocirc;ng nghệ Micellar, nước tẩy trang b&iacute; đao gi&uacute;p l&agrave;m sạch hiệu quả lớp trang điểm, bụi bẩn v&agrave; dầu thừa, mang lại l&agrave;n da sạch ho&agrave;n to&agrave;n v&agrave; dịu nhẹ.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2021-11-19 13:00:07'),
(44, 8, 18, 'Sữa Rửa Mặt The Face Shop Rice Water Bright', '&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;Sữa rửa mặt chiết xuất từ gạo v&agrave; dầu thực vật Moringa. Với c&ocirc;ng thức mới th&ecirc;m hạt gạo xay nhuyễn gi&uacute;p massage thư gi&atilde;n, loại bỏ bụi bẩn v&agrave; b&atilde; nhờn s&acirc;u trong lỗ ch&acirc;n l&ocirc;ng. Tẩy sạch tế b&agrave;o chết, mụn c&aacute;m v&agrave; mụn đầu đen cho l&agrave;n sạch v&agrave; s&aacute;ng khỏe. Tạo cảm gi&aacute;c trơn l&aacute;ng, mềm mịn sau khi rửa mặt.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2021-11-19 13:01:09'),
(45, 8, 18, 'Tẩy Da Chết Huxley Secret Of Sahara Scrub Mask', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Sản phẩm với chiết xuất từ hạt của c&acirc;y xương rồng hữu cơ.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Gi&uacute;p lỗ ch&acirc;n l&ocirc;ng trở n&ecirc;n th&ocirc;ng tho&aacute;ng&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Nốt mụn đang bị vi&ecirc;m cũng sẽ bớt hiện tượng sưng đỏ.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- An to&agrave;n, l&agrave;nh t&iacute;nh, kh&ocirc;ng g&acirc;y k&iacute;ch ứng da&lt;/p&gt;', 1, '2021-11-19 13:02:18'),
(46, 8, 18, 'Combo Sạch Mụn Kiềm Dầu Cocoon Winter Melon', '&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;Combo sạch mụn v&agrave; kiểm so&aacute;t dầu từ b&iacute; đao gồm Mặt nạ b&iacute; đao 30ml v&agrave; Nước b&iacute; đao c&acirc;n bằng da 310ml.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2021-11-19 13:03:12'),
(47, 8, 18, 'Combo Làm Sạch Da Dầu Mụn Cocoon Winter Melon', '&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;Combo l&agrave;m sạch cho da dầu mụn từ b&iacute; đao gồm Nước tẩy trang b&iacute; đao 140ml v&agrave; Gel b&iacute; đao rửa mặt 310ml&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2021-11-19 13:04:09'),
(48, 8, 18, 'Set Trị Mụn HaSi Kokeshi', '&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;Bộ sản phẩm chăm s&oacute;c d&agrave;nh cho da mụn gồm 2 sản phầm: Gel rửa mặt &amp;amp; serum với 100% th&agrave;nh phần thi&ecirc;n nhi&ecirc;n kết hợp với BHA, gi&uacute;p l&agrave;m sạch da v&agrave; giảm mụn tối ưu. Kết quả được kiểm định sau 10 ng&agrave;y sử dụng.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2021-11-19 13:06:41'),
(49, 8, 18, 'Set Dưỡng HaSi Kokeshi Puredoll Chống Lão Hóa', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Soap rửa mặt nhẹ nh&agrave;ng l&agrave;m sạch da, th&uacute;c đẩy sản sinh lớp biểu b&igrave; mới mịn m&agrave;ng v&agrave; mềm mại hơn.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Kem dưỡng chiết xuất dịch ốc s&ecirc;n trẻ h&oacute;a, t&aacute;i tạo da, l&agrave;m giảm nếp nhăn v&agrave; lấp đầy sẹo rỗ hiệu quả&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;&amp;nbsp;&lt;/p&gt;', 1, '2021-11-19 13:08:54'),
(50, 8, 18, 'Gel Rửa Mặt Huxley Secret Of Sahara', '&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;Huxley Cleansing Gel Be Clean, Be Moist l&agrave; sữa rửa mặt kết hợp tẩy trang c&oacute; dạng gel trong suốt gi&uacute;p nhẹ nh&agrave;ng tẩy sạch bụi bẩn, loại bỏ tạp chất b&atilde; nhờn v&agrave; cặn trang điểm c&ograve;n b&aacute;m l&acirc;u tr&ecirc;n da m&agrave; kh&ocirc;ng hề g&acirc;y kh&ocirc; căng da sau khi rửa. Ph&ugrave; hợp với cả da nhạy cảm.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2021-11-19 13:10:03'),
(51, 8, 19, 'Kem Dưỡng Neutrogena Hydro Boost Water Gel', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Neutrogena Hydro Boost Water Gel dưỡng gi&uacute;p c&acirc;n bằng độ ẩm m&agrave; kh&ocirc;ng g&acirc;y nhờn r&iacute;t cho da&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Gi&uacute;p da l&uacute;c n&agrave;o cũng căng b&oacute;ng mịn m&agrave;ng&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Dạng gel mỏng nhẹ, thẩm thấu nhanh&lt;/p&gt;', 1, '2021-11-19 13:11:41'),
(52, 8, 19, 'Kem Chống Nắng Sun Bear Strong SPF50+/PA++++', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Chất kem mỏng nhẹ, lỏng, thẩm thấu nhanh&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Ph&ugrave; hợp với mọi loại da, c&oacute; khả năng kiềm dầu giữ da kh&ocirc; tho&aacute;ng&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Kem chống nắng lai giữa vật l&yacute; v&agrave; h&oacute;a học, chỉ số chống nắng cao&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Kh&ocirc;ng chứa cồn, l&agrave;nh t&iacute;nh&lt;/p&gt;', 1, '2021-11-19 13:13:10'),
(53, 8, 19, 'Kem Chống Nắng Kiềm Dầu Sáng Da Garnier\r\n', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- M&agrave;ng chống nắng SPF50/PA+++: Bảo vệ da khỏi tia UVA/UVB g&acirc;y tăng sắc tố melanin, g&acirc;y vết sạm v&agrave; l&agrave;m xỉn m&agrave;u da.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;-&amp;nbsp;Kết cấu mỏng nhẹ, kh&ocirc;ng nhờn r&iacute;t, kiểm so&aacute;t dầu thừa ho&agrave;n to&agrave;n ph&ugrave; hợp l&agrave;n da ch&acirc;u &Aacute;. Hiệu ứng mịn nhẹ tr&ecirc;n da v&agrave; kh&ocirc;ng để lại vệt.&lt;/p&gt;', 1, '2021-11-19 13:14:39'),
(54, 8, 19, 'Kem Dưỡng Da Obagi Medical Retinol 0.5 Cream', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- T&aacute;i tạo lớp tế b&agrave;o mới, nu&ocirc;i dưỡng l&agrave;n da trắng s&aacute;ng v&agrave; săn chắc hơn&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- L&agrave;m mờ nếp nhăn s&acirc;u, vết ch&acirc;n chim, sạm n&aacute;m&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Se kh&iacute;t lỗ ch&acirc;n l&ocirc;ng&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Phục hồi c&aacute;c dấu hiệu l&atilde;o h&oacute;a như da chảy xệ, thiếu săn chắc, đ&agrave;n hồi k&eacute;m&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;&amp;nbsp;&lt;/p&gt;', 1, '2021-11-19 13:15:44'),
(55, 8, 19, 'Tinh Chất Dưỡng Some By Mi Propolis B5', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;-&amp;nbsp;Cung cấp dưỡng chất cho l&agrave;n da đang bị tổn thương&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Gi&uacute;p phục hồi da v&agrave; duy tr&igrave; độ ẩm&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- L&agrave;m dịu l&agrave;n da như mụn sưng, mẩn đỏ, k&iacute;ch ứng&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;', 1, '2021-11-19 13:17:04'),
(56, 10, 23, 'Cọ Trang Điểm Vacosi Short Shaded Brush #E07', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 0.2em; margin-left: 0px; font-size: 14px; line-height: 20px; color: rgb(102, 102, 102); background-color: rgb(255, 255, 255); padding: 0px 0px 0px 1.4em; font-family: &amp;quot;San Francisco Text Regular&amp;quot;, sans-serif; position: relative;&quot;&gt;Gi&uacute;p định h&igrave;nh r&otilde; phần bầu v&agrave; m&iacute;&amp;nbsp;mắt.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0.2em; margin-left: 0px; font-size: 14px; line-height: 20px; color: rgb(102, 102, 102); background-color: rgb(255, 255, 255); padding: 0px 0px 0px 1.4em; font-family: &amp;quot;San Francisco Text Regular&amp;quot;, sans-serif; position: relative;&quot;&gt;Kiểu d&aacute;ng chuy&ecirc;n nghiệp dễ d&agrave;ng sử dụng.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 20px; color: rgb(102, 102, 102); background-color: rgb(255, 255, 255); padding: 0px 0px 0px 1.4em; font-family: &amp;quot;San Francisco Text Regular&amp;quot;, sans-serif; position: relative;&quot;&gt;Chất l&ocirc;ng&amp;nbsp;an to&agrave;n&amp;nbsp;cho v&ugrave;ng da mắt.&lt;/p&gt;', 1, '2021-11-19 13:18:24'),
(57, 10, 23, 'Bông Phấn Phủ Vacosi Small Round Puff - BP01', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- K&iacute;ch thước vừa vặn, c&oacute; thể bỏ gọn v&agrave;o hộp phấn n&eacute;n.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Mặt b&ocirc;ng mịn, b&aacute;m phấn tốt.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Mang đến hiệu ứng lớp nền mỏng mịn, tự nhi&ecirc;n.&lt;/p&gt;', 1, '2021-11-19 13:19:22'),
(58, 10, 23, 'Cọ Phấn Phủ Má Hồng Vacosi Kabuki Brush', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Thiết kế gọn g&agrave;ng, dễ mang theo.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- L&ocirc;ng cọ &ecirc;m &aacute;i, kh&ocirc;ng k&iacute;ch ứng hay ngứa da.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Mang lại hiệu ứng trang điểm mỏng nhẹ, tự nhi&ecirc;n&lt;/p&gt;', 1, '2021-11-19 13:20:23'),
(59, 10, 23, 'Bông Đánh Kem Nền Vacosi Quarter Sponge', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Khả năng t&aacute;n kem nền cực tốt&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Độ dẻo v&agrave; mềm mịn cao.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Thiết kế vừa vặn, dễ cầm v&agrave; dặm phấn.&lt;/p&gt;', 1, '2021-11-19 13:22:16'),
(60, 10, 23, 'Bông Mút Trang Điểm Missha Waffle Mini Puff', '&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 1, '2021-11-19 13:24:24'),
(61, 10, 23, 'Bông Mút Nee Ni Coo Set Kitten Puff', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Set b&ocirc;ng m&uacute;t h&igrave;nh giọt nước với bao b&igrave; xinh xắn&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Chiếc hộp h&igrave;nh m&egrave;o để đựng b&ocirc;ng m&uacute;t vệ sinh hơn&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Chất b&ocirc;ng xốp mịn, độ đ&agrave;n hồi, co gi&atilde;n tốt&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- C&oacute; thể d&ugrave;ng che phủ đến những v&ugrave;ng kh&oacute; t&aacute;n đều kem nền như c&aacute;nh m&ugrave;i, hốc mắt&lt;/p&gt;', 1, '2021-11-19 13:26:13'),
(62, 10, 23, 'Bộ Cọ Trang Điểm Ashley Soft Pastel Brush Set', '', 1, '2021-11-19 13:27:24'),
(63, 10, 25, 'Dao Chuốt Chì Mày Vacosi Dual Sharpener', '&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;Thiết kể nhỏ nhắn, sản phẩm hữu &iacute;ch trong việc tạo n&ecirc;n đầu ch&igrave; sắc gọn, ph&ugrave; hợp để chuốt c&aacute;c loại ch&igrave; kẻ ch&acirc;n m&agrave;y, ch&igrave; viền mắt v&agrave; nhiều loại ch&igrave; trang điểm kh&aacute;c.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2021-11-19 13:29:13'),
(64, 10, 23, 'Bấm Mi Vacosi Beauty Tools Series Eyelash Curle', '&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Độ cong v&ograve;m ph&ugrave; hợp, gi&uacute;p &ocirc;m trọn bầu mắt&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;&amp;nbsp;-&amp;nbsp;Bấm ch&iacute;nh x&aacute;c v&agrave; an to&agrave;n cho l&agrave;n mi&lt;/p&gt;', 1, '2021-11-19 13:30:46');
INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `product_name`, `description`, `status`, `date_created`) VALUES
(65, 10, 23, 'Nhíp Nối Mi Cong Vacosi Make-Up House #T04', '&lt;p&gt;-&lt;span style=&quot;font-family: inherit; background-color: rgb(255, 255, 255); color: rgb(28, 30, 33); white-space: pre-wrap; font-size: 1rem;&quot;&gt; Sản xuất theo c&ocirc;ng nghệ H&agrave;n Quốc&lt;/span&gt;&lt;/p&gt;&lt;div class=&quot;&quot; data-block=&quot;true&quot; data-editor=&quot;33b8h&quot; data-offset-key=&quot;9kgr-0-0&quot; style=&quot;background-color: rgb(255, 255, 255); font-family: Helvetica, Arial, sans-serif; color: rgb(28, 30, 33); white-space: pre-wrap;&quot;&gt;&lt;div class=&quot;_1mf _1mj&quot; data-offset-key=&quot;9kgr-0-0&quot; style=&quot;position: relative; direction: ltr; font-family: inherit;&quot;&gt;&lt;span data-offset-key=&quot;9kgr-0-0&quot; style=&quot;font-family: inherit;&quot;&gt;- Chất liệu inox kh&ocirc;ng rỉ&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;&quot; data-block=&quot;true&quot; data-editor=&quot;33b8h&quot; data-offset-key=&quot;5eqc8-0-0&quot; style=&quot;background-color: rgb(255, 255, 255); font-family: Helvetica, Arial, sans-serif; color: rgb(28, 30, 33); white-space: pre-wrap;&quot;&gt;&lt;div class=&quot;_1mf _1mj&quot; data-offset-key=&quot;5eqc8-0-0&quot; style=&quot;position: relative; direction: ltr; font-family: inherit;&quot;&gt;&lt;span data-offset-key=&quot;5eqc8-0-0&quot; style=&quot;font-family: inherit;&quot;&gt;- Thiết kề vừa tay cầm, trọng lượng nhẹ&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;', 1, '2021-11-19 13:31:58'),
(66, 10, 23, 'Cọ Tán Mày Đầu Mềm Vacosi Make-Up House #Br07', '&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-right: 0px; margin-bottom: 2.4pt; margin-left: 0px; font-size: 14px; line-height: 15pt; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background: white;&quot;&gt;&lt;span style=&quot;font-size: 10.5pt; font-family: Verdana, &amp;quot;sans-serif&amp;quot;; color: black;&quot;&gt;-Thiết kế tiện lợi, đa chức năng.&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-right: 0px; margin-bottom: 2.4pt; margin-left: 0px; font-size: 14px; line-height: 15pt; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background: white;&quot;&gt;&lt;span style=&quot;font-size: 10.5pt; font-family: Verdana, &amp;quot;sans-serif&amp;quot;; color: black;&quot;&gt;-Th&acirc;n cọ vừa tay cầm, dễ d&agrave;ng sử dụng.&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-right: 0px; margin-bottom: 0.0001pt; margin-left: 0px; font-size: 14px; line-height: 15pt; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background: white;&quot;&gt;&lt;span style=&quot;font-size: 10.5pt; font-family: Verdana, &amp;quot;sans-serif&amp;quot;; color: black;&quot;&gt;-L&ocirc;ng cọ mềm mịn, đứng d&aacute;ng.&lt;/span&gt;&lt;/p&gt;', 1, '2021-11-19 13:33:24'),
(67, 10, 23, 'Cọ Viền Mắt Môi Vacosi Make-Up House #L03', '&lt;p style=&quot;margin: 0in 0in 2.4pt; font-size: 14px; line-height: 15pt; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background: white;&quot;&gt;&lt;span style=&quot;color: black;&quot;&gt;-Chất liệu l&ocirc;ng cọ mềm.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin: 0in 0in 2.4pt; font-size: 14px; line-height: 15pt; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background: white;&quot;&gt;&lt;span style=&quot;color: black;&quot;&gt;-Thiết kế nhỏ gọn tiện lợi.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin: 0in 0in 0.0001pt; font-size: 14px; line-height: 15pt; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background: white;&quot;&gt;&lt;span style=&quot;color: black;&quot;&gt;-Nắp đậy đi k&egrave;m bảo vệ cọ v&agrave; chống bụi bẩn.&lt;/span&gt;&lt;/p&gt;', 1, '2021-11-19 13:34:30'),
(68, 10, 23, 'Cọ Môi The Face Shop One Touch Lip Brush', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-size: 15px; line-height: 1.8; background-color: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: Tahoma, Verdana, Geneva;&quot;&gt;-Đầu cọ l&agrave; những sợi l&ocirc;ng thật mềm mịn, b&aacute;m chặt v&agrave;o nhau kh&ocirc;ng bị bung.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-size: 15px; line-height: 1.8; background-color: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: Tahoma, Verdana, Geneva;&quot;&gt;-Khu&ocirc;n mẫu cọ c&oacute; thể son bất kỳ d&ograve;ng son n&agrave;o: kem, nước, cả t&aacute;n phấn cũng rất đẹp.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-size: 15px; line-height: 1.8; background-color: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: Tahoma, Verdana, Geneva;&quot;&gt;-Thiết kế dạng b&uacute;t bấm tiện lợi, sang trọng,&lt;/p&gt;', 1, '2021-11-19 13:35:41'),
(69, 10, 25, 'Mi Giả 3 Fashion Eyelashes 3 Faux - Cils', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- M&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 13px;&quot;&gt;i chồn 3 Faux Cils đem đến cho bạn một đ&ocirc;i mi quyến rũ v&agrave; long lanh&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 13px;&quot;&gt;- Kiểu d&aacute;ng 3D cho &aacute;nh nh&igrave;n thu h&uacute;t&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Roboto, Helvetica, Arial, sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 13px;&quot;&gt;- Kh&ocirc;ng bị cộm hay nặng mắt&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Roboto, Helvetica, Arial, sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 13px;&quot;&gt;- Ph&ugrave; hợp với kiểu makeup ấn tượng&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;', 1, '2021-11-19 13:37:02'),
(70, 10, 25, 'Cọ Lược & Bàn Chải Vacosi', '&lt;ul style=&quot;color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;&lt;li&gt;&lt;span style=&quot;font-size: 12pt;&quot;&gt;Cọ lược chải m&agrave;y tiện lợi.&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span style=&quot;font-size: 12pt;&quot;&gt;Thiết kế đa chức năng.&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span style=&quot;font-size: 12pt;&quot;&gt;Th&acirc;n cọ vừa tay cầm, dễ sử dụng.&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;', 1, '2021-11-19 13:38:04'),
(71, 10, 25, 'Bấm Móng Tay Vacosi Nail Clipper', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 0.2em; margin-left: 0px; font-size: 14px; line-height: 20px; color: rgb(102, 102, 102); background-color: rgb(255, 255, 255); padding: 0px 0px 0px 1.4em; font-family: &amp;quot;San Francisco Text Regular&amp;quot;, sans-serif; position: relative;&quot;&gt;Chất liệu th&eacute;p kh&ocirc;ng gỉ, an to&agrave;n, vệ sinh&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0.2em; margin-left: 0px; font-size: 14px; line-height: 20px; color: rgb(102, 102, 102); background-color: rgb(255, 255, 255); padding: 0px 0px 0px 1.4em; font-family: &amp;quot;San Francisco Text Regular&amp;quot;, sans-serif; position: relative;&quot;&gt;Phần tay cầm cũng l&agrave; đ&ograve;n bẫy khi bật ra, gi&uacute;p trợ lực khi cắt.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 20px; color: rgb(102, 102, 102); background-color: rgb(255, 255, 255); padding: 0px 0px 0px 1.4em; font-family: &amp;quot;San Francisco Text Regular&amp;quot;, sans-serif; position: relative;&quot;&gt;Lưỡi cắt sắc b&eacute;n, đảm&amp;nbsp;bảo thao t&aacute;c cắt thật dễ d&agrave;ng.&lt;/p&gt;', 1, '2021-11-19 13:39:21'),
(72, 10, 24, 'Sơn Móng Tay Note Icon Nail Enamel Oje No', '&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Kh&ocirc;ng chứa c&aacute;c th&agrave;nh phần nguy hại g&acirc;y ung thư như: DBP, formaldehyde, toluene long n&atilde;o.&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Dễ d&agrave;ng sử dụng với b&agrave;n chải rộng v&agrave; mỏng, thao t&aacute;c dễ d&agrave;ng c&ugrave;ng nhiều m&agrave;u sơn tr&ecirc;m một m&oacute;ng tay&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Nhanh kh&ocirc; v&agrave; b&oacute;ng, Đảm bảo độ che phủ với một lớp duy nhất&lt;/p&gt;', 1, '2021-11-19 13:40:56'),
(73, 10, 24, 'Sơn Móng 3 Concept Eyes', '&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 1, '2021-11-19 13:41:58'),
(74, 10, 24, 'Tẩy Móng Missha - The Style Nail Remover 100ml', '&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;Sản phẩm The Style Nail Remover thuộc bộ tẩy m&oacute;ng an to&agrave;n Missha được sản xuất tr&ecirc;n d&acirc;y chuyền c&ocirc;ng nghệ hiện đại, c&ugrave;ng những nguy&ecirc;n liệu thi&ecirc;n nhi&ecirc;n v&agrave; được kiểm chứng rất nghi&ecirc;m ngặt bởi nhiều chuy&ecirc;n gia h&agrave;ng đầu về l&agrave;m đẹp.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2021-11-19 13:42:57'),
(75, 10, 24, 'Sơn Móng Lót Innisfree Nail Peel Off Base Coat', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Gi&uacute;p vừa tạo lớp l&oacute;t dưỡng cho m&oacute;ng, v&agrave; đồng thời sản phẩm cũng gi&uacute;p lột bỏ c&aacute;c lớp sơn m&oacute;ng tay như sơn kim tuyến, sơn cracker, sơn nhũ d&agrave;y một c&aacute;ch dễ d&agrave;ng khi muốn thay đổi m&agrave;u sơn cho m&oacute;ng m&agrave; kh&ocirc;ng cần phải sử dụng axeton để lau, tẩy m&agrave;u.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- D&ugrave;ng cho mọi loại da.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Xuất xứ H&agrave;n Quốc.&lt;/p&gt;', 1, '2021-11-19 13:44:01'),
(76, 10, 24, 'Nước Rửa Dưỡng Móng The Face Shop Trendy Nails', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Khả năng tẩy rửa, gi&uacute;p l&agrave;m sạch đi c&aacute;c lớp sơn tay hay bụi bẩn c&oacute; hiệu quả.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Rửa sạch m&oacute;ng, kh&ocirc;ng l&agrave;m ố v&agrave;ng hay th&acirc;m đen m&oacute;ng, hỗ trở cải thiện m&oacute;ng khỏe v&agrave; kh&ocirc;ng bị g&atilde;y m&oacute;ng.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Mang đến bộ m&oacute;ng tay sạch bong v&agrave; mềm mại.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Cảm gi&aacute;c dễ chịu với hương thơm nhẹ nh&agrave;ng từ tinh chất quả d&acirc;u.&lt;/p&gt;', 1, '2021-11-19 13:44:58'),
(77, 10, 24, 'Sơn Móng Innisfree Real Color Nail Winter', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;-Với thiết kế đầu chổi đặc biệt từ l&ocirc;ng Du Pont gi&uacute;p sơn kh&ocirc;ng bị v&oacute;n cục, l&ecirc;n m&agrave;u đều.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;-Chứa th&agrave;nh phần từ qu&yacute;t Cheju (qu&yacute;t nổi tiếng nhất của H&agrave;n Quốc) cung cấp dinh dưỡng v&agrave; vitamin cho m&oacute;ng, gi&uacute;p m&oacute;ng kh&ocirc;ng bị biến m&agrave;u.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;-Với bảng m&agrave;u v&ocirc; c&ugrave;ng đa dạng cho c&aacute;c n&agrave;ng thoải m&aacute;i lựa chọn, cải tiến đầu cọ bản to dễ d&ugrave;ng hơn, chất sơn mịn v&agrave; bền hơn nhiều.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Th&iacute;ch hợp cho mọi loại da!&lt;/p&gt;', 1, '2021-11-19 13:46:03'),
(78, 10, 24, 'Sơn Móng Missha Gelatic Nail Polish', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Gelatic Nail Polish của Missha được sản xuất tại Ph&aacute;p với chất lượng tốt hơn (bền l&acirc;u hơn), m&agrave;u sắc cũng rất ch&acirc;u &Acirc;u nha.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Bề mặt l&aacute;ng b&oacute;ng v&agrave; s&aacute;ng như gương, Bạn sẽ c&oacute; cảm gi&aacute;c như d&ugrave;ng sơn gel v&igrave; n&oacute; c&ograve;n tạo độ d&agrave;y trong kiểu như Gel Nail nữa.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Mặc d&ugrave; c&oacute; chất sơn như gel nail nhưng d&ograve;ng Gelatic n&agrave;y kh&ocirc;ng cần d&ugrave;ng đến đ&egrave;n UV hay đ&egrave;n LED để l&agrave;m kh&ocirc;.&lt;/p&gt;', 1, '2021-11-19 13:47:17'),
(79, 9, 20, 'Bộ Gội - Xả TIGI Recovery', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Dầu gội d&agrave;nh cho t&oacute;c kh&ocirc; xơ hư tổn mức độ 2. (kh&ocirc;, xơ, dễ rối)&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Dầu gội c&oacute; chứa phức hợp hạt nano si&ecirc;u nhỏ (hay c&ograve;n gọi l&agrave; hạt silicon si&ecirc;u nhỏ) b&aacute;m v&agrave;o v&ugrave;ng t&oacute;c bị hư tổn, bảo vệ sợi t&oacute;c khỏi những t&aacute;c hại m&ocirc;i trường&lt;/p&gt;', 1, '2021-11-19 13:49:31'),
(80, 9, 20, 'Dầu Gội Ngăn Rụng Tóc Mộc Nhu Nước Gội Đầu', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Ngăn ngừa rụng t&oacute;c hiệu quả&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- K&iacute;ch th&iacute;ch mọc t&oacute;c nhanh&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- L&agrave;m giảm c&aacute;c bệnh l&iacute; tr&ecirc;n da đầu&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Đem lại m&aacute;i t&oacute;c su&ocirc;n mượt, b&oacute;ng khỏe&lt;/p&gt;', 1, '2021-11-19 13:50:34'),
(81, 9, 20, 'Dầu Gội Head&Shoulders Clinical Strength', '&lt;div class=&quot;box-note &quot; style=&quot;border-top: 1px solid rgb(214, 214, 214); border-bottom: 1px solid rgb(214, 214, 214); border-image: initial; border-left: none; border-right: none; padding: 11px 0px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px;&quot;&gt;Dầu gội ngăn g&agrave;u s&acirc;u b&ecirc;n trong da đầu trong khi vẫn giữ cho m&aacute;i t&oacute;c sạch sẽ v&agrave; kiểm so&aacute;t độ ẩm, c&acirc;n bằng độ PH gi&uacute;p cho m&aacute;i t&oacute;c trở n&ecirc;n mềm mượt nhờ da đầu khỏe mạnh.&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;card-box&quot; style=&quot;padding: 11px 0px; color: rgb(33, 37, 41); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;&lt;/div&gt;', 1, '2021-11-19 13:52:31'),
(82, 9, 20, 'Dầu Gội Dr.For Hair Folligen Plus Shampoo 500ml', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Dầu gội đầu gi&uacute;p cải thiện t&igrave;nh trạng rụng t&oacute;c v&agrave; hỗ trợ mọc t&oacute;c con, l&agrave;m giảm b&atilde; nhờn tr&ecirc;n da đầu gi&uacute;p giảm g&agrave;u&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Đ&atilde; được chứng minh hiệu quả giảm rụng t&oacute;c 94,5% v&agrave; tẩy tế b&agrave;o chết 27,6%, cải thiện độ đ&agrave;n hồi da đầu v&agrave; l&agrave;m d&agrave;y t&oacute;c.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- C&oacute; thể sử dụng cho mọi loại da dầu hoặc người c&oacute; t&oacute;c yếu, t&oacute;c dễ g&atilde;y rụng, da đầu yếu.&lt;/p&gt;', 1, '2021-11-19 13:53:51'),
(83, 9, 20, 'Dầu Gội Khô Batiste Dry Shampoo 120gr', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- L&agrave;m sạch t&oacute;c ngay tức thời m&agrave; kh&ocirc;ng cần gội với nước&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Gi&uacute;p t&oacute;c mềm mượt v&agrave; bồng bềnh ngay sau khi sử dụng&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Chứa c&aacute;c dưỡng chất nu&ocirc;i dưỡng t&oacute;c, kh&ocirc;ng g&acirc;y hại cho t&oacute;c&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Hương thơm dễ chịu v&agrave; thu h&uacute;t&lt;/p&gt;', 1, '2021-11-19 13:55:16'),
(84, 9, 20, 'Dầu Gội Khô Girlz Only', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Xuất xứ: Anh&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Dung t&iacute;ch: 200ml/120gr&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- L&agrave;m sạch v&agrave; tơi t&oacute;c ngay sau lần đầu sử dụng&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Dang v&ograve;i xit tiện lợi, dễ sử dụng&lt;/p&gt;', 1, '2021-11-19 13:56:21'),
(85, 9, 21, 'Dầu Xả OGX Thick And Full Biotin And Collagen', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Cung cấp c&aacute;c dưỡng chất thất s&acirc;u, phục hồi từ s&acirc;u b&ecirc;n trong sợi t&oacute;c.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Ngăn ngừa l&atilde;o h&oacute;a của t&oacute;c, gi&uacute;p sợi t&oacute;c khỏe, s&aacute;ng b&oacute;ng mượt hơn nhiều lần.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Bổ sung độ ẩm, tăng sự đ&agrave;n hồi, dẻo dai của sợi t&oacute;c.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Sản phẩm tự nhi&ecirc;n an to&agrave;n cho sức khỏe&lt;/p&gt;', 1, '2021-11-19 13:57:45'),
(86, 9, 21, 'Dầu Xả Thảo Mộc Bách Dược 200ml', '&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 1, '2021-11-19 13:59:00'),
(87, 9, 21, 'Dầu Xả Dr.For Hair Folligen Scalp Pack', '&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;Dầu xả dưỡng t&oacute;c gi&uacute;p chăm s&oacute;c t&oacute;c v&agrave; da đầu hiệu quả hơn, giảm thiểu t&igrave;nh trạng rụng t&oacute;c.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2021-11-19 14:00:09'),
(88, 9, 21, 'Dầu Xả Phục Hồi Tóc LOreal Paris Elseve', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Phục hồi cấu tr&uacute;c của t&oacute;c, gi&uacute;p t&oacute;c khỏe mạnh, ngăn rụng t&oacute;c hiệu quả.&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Đ&aacute;nh tan những hư tổn của t&oacute;c như kh&ocirc;, xơ, chẻ ngọn.&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Mang lại cho bạn m&aacute;i t&oacute;c su&ocirc;n mềm, &oacute;ng ả&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Gi&uacute;p t&oacute;c chắc khỏe m&agrave; c&ograve;n tăng cường độ ẩm&lt;/p&gt;', 1, '2021-11-19 14:02:31'),
(89, 9, 22, 'Tinh Chất Phục Hồi Tóc Cocoon Sachi Serum\r\n', '', 1, '2021-11-19 14:03:57'),
(90, 9, 22, 'Tinh Chất Kích Thích Mọc Tóc Sato Carpronium', '&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 1, '2021-11-19 14:04:50'),
(91, 11, 26, 'Nước Hoa Suddenly Mamade Glamour Eau De Parfum', '&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Hương thơm dai, bền m&ugrave;i, kh&ocirc;ng gắt&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- M&ugrave;i hương nhẹ tạo cảm gi&aacute;c rất dễ chịu&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Nữ t&iacute;nh, dịu d&agrave;ng nhưng cũng đầy quyến rũ&lt;/p&gt;', 1, '2021-11-19 14:06:13'),
(92, 11, 26, 'Nước Hoa Nữ Venus Global Beauty Laura Anné', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-size: 13px; line-height: 25px; background-color: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: Roboto, sans-serif;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: small;&quot;&gt;- Dạng nước hoa dạng xịt, rất tiện dụng cho việc sử dụng v&agrave; bảo quản sản phẩm.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-size: 13px; line-height: 25px; background-color: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: Roboto, sans-serif;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: small;&quot;&gt;- Gi&uacute;p khử m&ugrave;i cơ thể v&agrave; mang&amp;nbsp;đến cho bạn hương thơm nhẹ nh&agrave;ng, quyến rũ hay l&ocirc;i cuốn. Gi&uacute;p bạn trở n&ecirc;n tự tin khi giao tiếp với mọi người.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-size: 13px; line-height: 25px; background-color: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: Roboto, sans-serif;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: small;&quot;&gt;- Thời gian lưu hương l&acirc;u, trung b&igrave;nh từ 4 - 6 tiếng.&lt;/span&gt;&lt;/p&gt;', 1, '2021-11-19 14:07:14'),
(93, 11, 26, 'Nước Hoa Nam BVLGARI', '&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 1, '2021-11-19 14:08:09'),
(94, 11, 26, 'Xịt Thơm Victorias Secret Fragrance Body Mist', '', 1, '2021-11-19 14:09:13'),
(95, 11, 26, 'Xịt Thơm Toàn Thân Bath&Body Works', '&lt;div class=&quot;box-note &quot; style=&quot;border-top: 1px solid rgb(214, 214, 214); border-bottom: 1px solid rgb(214, 214, 214); border-image: initial; border-left: none; border-right: none; padding: 11px 0px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px;&quot;&gt;- Hương thơm đa dạng, trẻ trung&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px;&quot;&gt;- Thiết kế chai bắt mắt nhiều m&agrave;u sắc&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px;&quot;&gt;- M&ugrave;i hương t&ugrave;y cơ địa m&agrave; b&aacute;m từ 2-4h&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px;&quot;&gt;- Ph&ugrave; hợp cho c&aacute;c bạn đi học v&agrave; đi l&agrave;m mỗi ng&agrave;y&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;card-box&quot; style=&quot;padding: 11px 0px; color: rgb(33, 37, 41); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;&lt;/div&gt;', 1, '2021-11-19 14:10:05'),
(96, 11, 26, 'Nước Hoa Nữ Pinker Bell Korea Perfume', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Nồng độ tinh dầu l&ecirc;n đến 20% lưu hương 6h chuẩn eau de perfume&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Được xem như l&agrave; bản Dupe của c&aacute;c d&ograve;ng nước hoa nổi tiếng tr&ecirc;n thế giới&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Thiết kế chai thủy tinh sang trọng. Dung t&iacute;ch 30ml nhỏ gọn dễ mang theo&lt;/p&gt;', 1, '2021-11-19 14:10:51'),
(97, 11, 26, 'Nước Hoa Toàn Thân Bath&Body Works', '&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 1, '2021-11-19 14:11:40'),
(98, 11, 26, 'Nước Hoa BVLGari Eau De Parfum Jasmin Noir 5ml', '&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 1, '2021-11-19 14:13:24'),
(99, 11, 26, 'Xịt Thơm Nước Hoa 1902 Melle Fleurs L Eau Eau', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Hương thơm nhẹ nh&agrave;ng, tinh kh&ocirc;i&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Sự kết hợp giữa L&ecirc; v&agrave; L&yacute; chua đen cho sự tươi tắn, trẻ trung&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: 25px; color: rgb(102, 102, 102); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;- Kh&ocirc;ng qu&aacute; nồng gắt, th&iacute;ch hợp cho những bạn th&iacute;ch m&ugrave;i hương dịu nhẹ&lt;/p&gt;', 1, '2021-11-19 14:14:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sales`
--

CREATE TABLE `sales` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `total_amount` double NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sales`
--

INSERT INTO `sales` (`id`, `order_id`, `total_amount`, `date_created`) VALUES
(6, 15, 280000, '2021-11-19 14:51:44'),
(7, 16, 179000, '2021-11-19 14:55:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(30) NOT NULL,
  `parent_id` int(30) NOT NULL,
  `sub_category` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `parent_id`, `sub_category`, `description`, `status`, `date_created`) VALUES
(14, 7, 'Trang điểm khuôn mặt', '&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 1, '2021-11-19 11:23:14'),
(15, 7, 'Trang điểm mắt', '&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 1, '2021-11-19 11:23:25'),
(16, 7, 'Trang điểm môi', '&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 1, '2021-11-19 11:23:38'),
(17, 8, 'Mặt nạ', '&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 1, '2021-11-19 11:23:58'),
(18, 8, 'Làm sạch da', '&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 1, '2021-11-19 11:24:09'),
(19, 8, 'Dưỡng da', '&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 1, '2021-11-19 11:24:17'),
(20, 9, 'Dầu gội', '&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 1, '2021-11-19 11:25:15'),
(21, 9, 'Dầu xả', '', 1, '2021-11-19 11:25:29'),
(22, 9, 'Dưỡng tóc', '&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 1, '2021-11-19 11:25:52'),
(23, 10, 'Dụng cụ trang điểm', '&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 1, '2021-11-19 11:26:15'),
(24, 10, 'Sơn rửa móng', '', 1, '2021-11-19 11:26:40'),
(25, 10, 'Phụ kiện làm đẹp', '', 1, '2021-11-19 11:26:57'),
(26, 11, 'Nước hoa', '&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 1, '2021-11-19 11:28:05'),
(27, 12, 'Khử mùi', '', 1, '2021-11-19 11:28:19'),
(28, 12, 'Tẩy tế bào chết', '', 1, '2021-11-19 11:28:38'),
(29, 12, 'Sữa tắm', '', 1, '2021-11-19 11:28:53'),
(30, 12, 'Tẩy lông', '', 1, '2021-11-19 11:29:04'),
(31, 12, 'Dưỡng thể', '', 1, '2021-11-19 11:29:46'),
(32, 12, 'Giảm sẹo, giảm thâm', '', 1, '2021-11-19 11:30:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Nơi vẻ đẹp bắt đầu'),
(6, 'short_name', 'SHOP BEAUTY'),
(11, 'logo', 'uploads/1637306640_logo.jpg'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/1637306640_banner.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Nhóm 2', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1624240500_avatar.png', NULL, 1, '2021-01-20 14:02:37', '2021-11-17 22:06:30');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT cho bảng `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
