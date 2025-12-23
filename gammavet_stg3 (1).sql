-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2025 at 07:17 AM
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
-- Database: `gammavet_stg3`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `action` varchar(255) NOT NULL,
  `details` text DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`) VALUES
(1, 1, 'User logged out', NULL, NULL, '2025-08-04 15:57:15'),
(2, 2, 'User logged in', NULL, NULL, '2025-08-04 16:02:39'),
(3, 1, 'User logged in', NULL, NULL, '2025-08-04 16:13:20'),
(4, 1, 'Added new category: مطبوعات (ID: 1)', NULL, NULL, '2025-08-04 16:40:38'),
(5, 1, 'Added new category: كرتوبة 60 م (ID: 2)', NULL, NULL, '2025-08-04 16:41:13'),
(6, 2, 'User logged in', NULL, NULL, '2025-08-04 16:50:02'),
(7, 1, 'Added new inventory: العاشر من رمضان (ID: 1)', NULL, NULL, '2025-08-04 16:51:36'),
(8, 1, 'Added new customer: omar Magdy (ID: 1)', NULL, NULL, '2025-08-04 16:59:23'),
(9, 1, 'Added new inventory: السادات (ID: 2)', NULL, NULL, '2025-08-04 17:00:43'),
(10, 1, 'Added new product: كرتوبة 60 م (ID: 1)', NULL, NULL, '2025-08-04 17:06:33'),
(11, 1, 'Added new vendor: IThelp me (ID: 1)', NULL, NULL, '2025-08-04 17:28:17'),
(12, 1, 'Processed wallet transaction ID: 2 for vendor ID: 1 (withdrawal: 5500000)', NULL, NULL, '2025-08-04 17:29:25'),
(13, 1, 'Processed wallet transaction ID: 3 for vendor ID: 1 (withdrawal: 5500000)', NULL, NULL, '2025-08-04 17:29:37'),
(14, 1, 'Processed wallet transaction ID: 4 for vendor ID: 1 (deposit: 5000000)', NULL, NULL, '2025-08-04 17:30:35'),
(15, 1, 'Processed wallet transaction ID: 5 for vendor ID: 1 (deposit: 5000000)', NULL, NULL, '2025-08-04 17:31:23'),
(16, 1, 'User logged out', NULL, NULL, '2025-08-04 17:45:54'),
(17, 1, 'User logged in', NULL, NULL, '2025-08-04 18:43:05'),
(18, 1, 'User logged out', NULL, NULL, '2025-08-04 20:32:56'),
(19, 1, 'User logged in', NULL, NULL, '2025-08-04 20:33:10'),
(20, 1, 'User logged in', NULL, NULL, '2025-08-04 20:38:30'),
(21, 3, 'User logged in', NULL, NULL, '2025-08-04 21:03:58'),
(22, 1, 'User logged out', NULL, NULL, '2025-08-04 21:05:39'),
(23, 3, 'User logged in', NULL, NULL, '2025-08-04 21:05:50'),
(24, 3, 'Added new category: بلاستيك (ID: 3)', NULL, NULL, '2025-08-04 21:07:56'),
(25, 3, 'Deleted category ID: 2', NULL, NULL, '2025-08-04 21:10:33'),
(26, 3, 'Added new category: ١٠٠ مللي (ID: 4)', NULL, NULL, '2025-08-04 21:10:42'),
(27, 3, 'Added new category: خامات (ID: 5)', NULL, NULL, '2025-08-04 21:12:31'),
(28, 3, 'Added new category: مزيبات (ID: 6)', NULL, NULL, '2025-08-04 21:12:40'),
(29, 3, 'Added new product: MPG (ID: 2)', NULL, NULL, '2025-08-04 21:16:03'),
(30, 3, 'Added new vendor: Omar Magdy (ID: 2)', NULL, NULL, '2025-08-04 21:20:45'),
(31, 3, 'Processed wallet transaction ID: 7 for vendor ID: 2 (withdrawal: 100000)', NULL, NULL, '2025-08-04 21:21:23'),
(32, 3, 'Processed wallet transaction ID: 8 for vendor ID: 2 (withdrawal: 100000)', NULL, NULL, '2025-08-04 21:21:34'),
(33, 3, 'Processed wallet transaction ID: 9 for vendor ID: 2 (deposit: 100000)', NULL, NULL, '2025-08-04 21:22:27'),
(34, 3, 'Processed wallet transaction ID: 10 for vendor ID: 2 (deposit: 100000)', NULL, NULL, '2025-08-04 21:22:29'),
(35, 3, 'User logged out', NULL, NULL, '2025-08-04 21:23:07'),
(36, 1, 'User logged in', NULL, NULL, '2025-08-04 21:23:15'),
(37, 3, 'Processed wallet transaction ID: 11 for vendor ID: 2 (withdrawal: 10000)', NULL, NULL, '2025-08-04 21:23:33'),
(38, 1, 'Added product ID: 2 to inventory ID: 2 with quantity: 10', NULL, NULL, '2025-08-04 21:31:56'),
(39, 1, 'Removed product ID: 2 from inventory ID: 2', NULL, NULL, '2025-08-04 21:32:05'),
(40, 3, 'Added product ID: 2 to inventory ID: 2 with quantity: 450', NULL, NULL, '2025-08-04 21:32:07'),
(41, 3, 'Added new inventory: مخزن منتج اولي (ID: 3)', NULL, NULL, '2025-08-04 21:36:07'),
(42, 1, 'User logged in', NULL, NULL, '2025-08-11 05:15:42'),
(43, 1, 'Updated product ID: 2 quantity to 600 in inventory ID: 2', NULL, NULL, '2025-08-11 05:16:50'),
(44, 1, 'Added product ID: 1 to inventory ID: 1 with quantity: 10', NULL, NULL, '2025-08-11 05:17:28'),
(45, 1, 'Updated product ID: 1', NULL, NULL, '2025-08-11 05:18:04'),
(46, 3, 'Created inventory transfer: TR-20250811-5YWO7B (ID: 1)', NULL, NULL, '2025-08-11 11:28:27'),
(47, 3, 'User logged in', NULL, NULL, '2025-08-16 12:34:16'),
(48, 3, 'Added new category: Final Product (ID: 7)', NULL, NULL, '2025-08-16 12:36:20'),
(49, 3, 'Added new category: Large Animals (ID: 8)', NULL, NULL, '2025-08-16 12:36:46'),
(50, 3, 'Added new product: Plex1 (ID: 3)', NULL, NULL, '2025-08-16 12:37:29'),
(51, 3, 'Added product ID: 3 to inventory ID: 2 with quantity: 1000', NULL, NULL, '2025-08-16 12:38:14'),
(52, 3, 'Updated product ID: 3', NULL, NULL, '2025-08-16 13:23:43'),
(53, 3, 'Updated inventory ID: 1', NULL, NULL, '2025-08-24 09:37:08'),
(54, 3, 'Added new inventory: RM رئيسي A1 (ID: 4)', NULL, NULL, '2025-08-24 09:39:14'),
(55, 3, 'Added new inventory: RM معمل تصنيع حقن B1 (ID: 5)', NULL, NULL, '2025-08-24 09:41:14'),
(56, 3, 'Added new inventory: FP مخزن منتج نهائي A1 (ID: 6)', NULL, NULL, '2025-08-24 09:42:25'),
(57, 3, 'Added new inventory: RM مخزن معمل تصنيع بودر C1 (ID: 7)', NULL, NULL, '2025-08-24 09:43:29'),
(58, 3, 'Updated inventory ID: 6', NULL, NULL, '2025-08-24 09:48:39'),
(59, 3, 'Added new inventory: PP مخزن منتج اولي B2 (ID: 8)', NULL, NULL, '2025-08-24 09:51:28'),
(60, 3, 'Deleted inventory ID: 3', NULL, NULL, '2025-08-24 09:51:43'),
(61, 3, 'Added new inventory: RP مخزن مرتجعات A3 (ID: 9)', NULL, NULL, '2025-08-24 09:52:57'),
(62, 3, 'Added new inventory: DA مخزن تالف A4 (ID: 10)', NULL, NULL, '2025-08-24 09:56:00'),
(63, 3, 'Deleted category ID: 4', NULL, NULL, '2025-08-24 10:22:24'),
(64, 3, 'Removed product ID: 2 from inventory ID: 2', NULL, NULL, '2025-08-24 10:22:58'),
(65, 3, 'Removed product ID: 3 from inventory ID: 2', NULL, NULL, '2025-08-24 10:23:01'),
(66, 3, 'Removed product ID: 1 from inventory ID: 1', NULL, NULL, '2025-08-24 10:24:28'),
(67, 3, 'Deleted category ID: 6', NULL, NULL, '2025-08-24 10:25:54'),
(68, 3, 'Deleted category ID: 5', NULL, NULL, '2025-08-24 10:26:25'),
(69, 3, 'Added new category: Raw Materials (ID: 9)', NULL, NULL, '2025-08-24 10:38:13'),
(70, 3, 'Updated category ID: 9', NULL, NULL, '2025-08-24 10:38:55'),
(71, 3, 'Added new category: PM Packaging Materials/ خامات تغليف (ID: 10)', NULL, NULL, '2025-08-24 10:40:14'),
(72, 3, 'Updated category ID: 9', NULL, NULL, '2025-08-24 10:40:47'),
(73, 3, 'Updated category ID: 10', NULL, NULL, '2025-08-24 10:41:02'),
(74, 3, 'Updated category ID: 7', NULL, NULL, '2025-08-24 10:41:27'),
(75, 3, 'Updated category ID: 7', NULL, NULL, '2025-08-24 10:42:15'),
(76, 3, 'Updated inventory ID: 10', NULL, NULL, '2025-08-25 09:02:27'),
(77, 3, 'Updated inventory ID: 6', NULL, NULL, '2025-08-25 11:36:53'),
(78, 3, 'Updated inventory ID: 8', NULL, NULL, '2025-08-25 11:37:03'),
(79, 3, 'Updated inventory ID: 1', NULL, NULL, '2025-08-25 11:37:26'),
(80, 3, 'Updated inventory ID: 4', NULL, NULL, '2025-08-25 11:37:35'),
(81, 3, 'Updated inventory ID: 7', NULL, NULL, '2025-08-25 11:37:50'),
(82, 3, 'Updated inventory ID: 5', NULL, NULL, '2025-08-25 11:38:03'),
(83, 3, 'Updated inventory ID: 9', NULL, NULL, '2025-08-25 11:38:12'),
(84, 2, 'User logged in', NULL, NULL, '2025-08-30 19:39:13'),
(85, 2, 'Added product ID: 2 to inventory ID: 10 with quantity: 1', NULL, NULL, '2025-08-30 19:41:00'),
(86, 2, 'Created inventory transfer: TR-20250830-5WI5Y7 (ID: 2)', NULL, NULL, '2025-08-30 19:41:42'),
(87, 1, 'User logged in', NULL, NULL, '2025-08-30 20:17:58'),
(88, 3, 'Added new customer: Eslam 1 (ID: 2)', NULL, NULL, '2025-08-30 21:01:05'),
(89, 3, 'Deleted product ID: 1', NULL, NULL, '2025-08-30 21:29:58'),
(90, 3, 'Removed product ID: 2 from inventory ID: 10', NULL, NULL, '2025-08-30 21:31:14'),
(91, 3, 'User logged in', NULL, NULL, '2025-09-20 15:21:52'),
(92, 2, 'User logged in', NULL, NULL, '2025-09-24 13:50:11'),
(93, 1, 'User logged in', NULL, NULL, '2025-09-24 16:26:21'),
(94, 3, 'User logged in', NULL, NULL, '2025-09-24 19:12:18'),
(95, 3, 'Updated inventory ID: 10', NULL, NULL, '2025-09-24 19:14:21'),
(96, 3, 'Updated inventory ID: 10', NULL, NULL, '2025-09-24 19:14:27'),
(97, 3, 'Processed wallet transaction ID: 3 for customer ID: 2 (deposit: 50000)', NULL, NULL, '2025-09-24 19:22:37'),
(98, 1, 'User logged in', NULL, NULL, '2025-09-24 19:30:22'),
(99, 1, 'User logged in', NULL, NULL, '2025-09-25 05:14:03'),
(100, 1, 'User logged in', NULL, NULL, '2025-09-25 11:45:57'),
(101, 1, 'User logged in', NULL, NULL, '2025-09-25 17:00:14'),
(102, 2, 'User logged in', NULL, NULL, '2025-09-25 17:00:29'),
(103, 1, 'User logged in', NULL, NULL, '2025-09-25 18:10:28'),
(104, 1, 'User logged in', NULL, NULL, '2025-09-27 11:26:09'),
(105, 3, 'Updated product ID: 217', NULL, NULL, '2025-09-29 10:32:33'),
(106, 1, 'User logged in', NULL, NULL, '2025-09-30 02:44:41'),
(107, 1, 'User logged in', NULL, NULL, '2025-09-30 14:37:29'),
(108, 3, 'User logged in', NULL, NULL, '2025-10-01 20:40:03'),
(109, 1, 'User logged in', NULL, NULL, '2025-10-02 19:44:45'),
(110, 1, 'User logged in', NULL, NULL, '2025-10-02 20:23:17'),
(111, 3, 'Processed wallet transaction ID: 4 for customer ID: 1 (deposit: 1000)', NULL, NULL, '2025-10-02 21:25:57'),
(112, 1, 'User logged in', NULL, NULL, '2025-10-11 12:04:49'),
(113, 1, 'User logged in', NULL, NULL, '2025-10-13 08:46:56'),
(114, 2, 'User logged in', NULL, NULL, '2025-10-14 03:11:27'),
(115, 1, 'User logged in', NULL, NULL, '2025-10-15 16:53:26'),
(116, 1, 'Updated category ID: 10', NULL, NULL, '2025-10-15 17:08:24'),
(117, 1, 'Added new category: استيكرات (ID: 11)', NULL, NULL, '2025-10-15 17:08:40'),
(118, 1, 'Added new category: نشرات (ID: 12)', NULL, NULL, '2025-10-15 17:09:01'),
(119, 1, 'Added new category: علب (ID: 13)', NULL, NULL, '2025-10-15 17:09:13'),
(120, 1, 'Added new category: علامه مائيه (ID: 14)', NULL, NULL, '2025-10-15 17:10:17'),
(121, 1, 'Added new category: AC | Acids | احماض (ID: 15)', NULL, NULL, '2025-10-15 17:11:29'),
(122, 1, 'Added new category: AC | Amino Acids | احماض امينيه (ID: 16)', NULL, NULL, '2025-10-15 17:11:51'),
(123, 1, 'Added new category: AM | Active Material| ماده فعاله (ID: 17)', NULL, NULL, '2025-10-15 17:12:15'),
(124, 1, 'Added new category: CO | Colors/Odors | الوان/روائح (ID: 18)', NULL, NULL, '2025-10-15 17:12:52'),
(125, 1, 'Added new category: EX | Extracts | مستخلصاتEX | Extracts | مستخلصات (ID: 19)', NULL, NULL, '2025-10-15 17:14:23'),
(126, 1, 'Added new category: EXC | Excipient| ماده حامله (ID: 20)', NULL, NULL, '2025-10-15 17:14:43'),
(127, 1, 'Added new category: MS | Minerals/Salts | املاح/معادن (ID: 21)', NULL, NULL, '2025-10-15 17:14:54'),
(128, 1, 'Added new category: OTH | Other | اخري (ID: 22)', NULL, NULL, '2025-10-15 17:15:15'),
(129, 1, 'Added new category: SO | Solvents | مذيبات (ID: 23)', NULL, NULL, '2025-10-15 17:15:31'),
(130, 1, 'Added new category: v (ID: 24)', NULL, NULL, '2025-10-15 17:15:48'),
(131, 1, 'Added new category: VI | Vitamins | فيتامينات (ID: 25)', NULL, NULL, '2025-10-15 17:16:14'),
(132, 1, 'Added new category: عبوات بلاستيك (ID: 26)', NULL, NULL, '2025-10-15 17:17:43'),
(133, 1, 'Added new category: عبوات زجاج (ID: 27)', NULL, NULL, '2025-10-15 17:18:11'),
(134, 1, 'Added new category: كرتون | Carton (ID: 28)', NULL, NULL, '2025-10-15 17:18:54'),
(135, 1, 'Added new category: FM | Filling Materials| خامات تعبئه (ID: 29)', NULL, NULL, '2025-10-15 17:19:07'),
(136, 1, 'Updated category ID: 27', NULL, NULL, '2025-10-15 17:19:29'),
(137, 1, 'Updated category ID: 26', NULL, NULL, '2025-10-15 17:20:22'),
(138, 3, 'User logged in', NULL, NULL, '2025-10-16 15:28:08'),
(139, 3, 'User logged in', NULL, NULL, '2025-10-20 10:54:15'),
(140, 3, 'User logged in', NULL, NULL, '2025-10-21 15:01:23'),
(141, 1, 'User logged in', NULL, NULL, '2025-10-21 20:06:58'),
(142, 1, 'User logged in', NULL, NULL, '2025-10-22 17:50:24'),
(143, 3, 'User logged in', NULL, NULL, '2025-10-23 11:54:06'),
(144, 3, 'User logged in', NULL, NULL, '2025-10-26 20:11:58'),
(145, 1, 'User logged in', NULL, NULL, '2025-10-27 06:13:08'),
(146, 3, 'User logged in', NULL, NULL, '2025-10-27 18:27:12'),
(147, 3, 'User logged in', NULL, NULL, '2025-10-29 08:41:40'),
(148, 1, 'User logged in', NULL, NULL, '2025-10-29 16:42:33'),
(149, 3, 'User logged in', NULL, NULL, '2025-10-30 11:22:55'),
(150, 1, 'User logged in', NULL, NULL, '2025-10-31 02:05:29'),
(151, 3, 'User logged in', NULL, NULL, '2025-11-01 13:30:10'),
(152, 3, 'User logged in', NULL, NULL, '2025-11-02 22:40:51'),
(153, 3, 'User logged in', NULL, NULL, '2025-11-03 14:29:55'),
(154, 1, 'User logged in', NULL, NULL, '2025-11-03 17:34:57'),
(155, 1, 'User logged in', NULL, NULL, '2025-11-04 15:47:04'),
(156, 1, 'User logged in', NULL, NULL, '2025-11-05 16:55:58'),
(157, 2, 'User logged in', NULL, NULL, '2025-11-07 15:22:15'),
(158, 2, 'User logged in', NULL, NULL, '2025-11-07 15:28:09'),
(159, 2, 'User logged out', NULL, NULL, '2025-11-07 16:24:13'),
(160, 2, 'User logged in', NULL, NULL, '2025-11-07 16:24:17'),
(161, 2, 'User logged out', NULL, NULL, '2025-11-07 16:24:48'),
(162, 2, 'User logged in', NULL, NULL, '2025-11-07 16:25:35'),
(163, 2, 'User logged out', NULL, NULL, '2025-11-07 16:26:32'),
(164, 2, 'User logged in', NULL, NULL, '2025-11-07 16:26:37'),
(165, 1, 'User logged in', NULL, NULL, '2025-11-07 17:59:14'),
(166, 1, 'User logged out', NULL, NULL, '2025-11-07 18:05:41'),
(167, 7, 'User logged in', NULL, NULL, '2025-11-07 18:05:53'),
(168, 7, 'User logged out', NULL, NULL, '2025-11-07 18:11:22'),
(169, 1, 'User logged in', NULL, NULL, '2025-11-07 18:11:28'),
(170, 1, 'User logged in', NULL, NULL, '2025-11-09 09:11:26'),
(171, 3, 'User logged in', NULL, NULL, '2025-11-19 08:14:42'),
(172, 2, 'User logged in', NULL, NULL, '2025-11-28 13:28:07'),
(173, 2, 'User logged in', NULL, NULL, '2025-11-28 16:53:18'),
(174, 2, 'Processed wallet transaction ID: 5 for customer ID: 2 (deposit: 10)', NULL, NULL, '2025-11-28 17:04:50'),
(175, 2, 'Processed wallet transaction ID: 6 for customer ID: 2 (withdrawal: 10)', NULL, NULL, '2025-11-28 17:12:10'),
(176, 2, 'Processed wallet transaction ID: 7 for customer ID: 2 (deposit: 10)', NULL, NULL, '2025-11-28 17:13:30'),
(177, 2, 'Processed wallet transaction ID: 8 for customer ID: 2 (refund: 10)', NULL, NULL, '2025-11-28 17:14:08'),
(178, 2, 'Processed wallet transaction ID: 9 for customer ID: 2 (payment: 10)', NULL, NULL, '2025-11-28 17:15:45'),
(179, 2, 'Processed wallet transaction ID: 10 for customer ID: 2 (deposit: 10)', NULL, NULL, '2025-11-28 17:16:19'),
(180, 2, 'Processed wallet transaction ID: 11 for customer ID: 2 (deposit: 10)', NULL, NULL, '2025-11-28 17:17:28'),
(181, 2, 'Processed wallet transaction ID: 12 for customer ID: 2 (withdrawal: 10)', NULL, NULL, '2025-11-28 17:17:50'),
(182, 3, 'User logged in', NULL, NULL, '2025-11-29 15:40:01'),
(183, 3, 'User logged in', NULL, NULL, '2025-11-29 15:46:40'),
(184, 3, 'User logged in', NULL, NULL, '2025-11-30 13:34:12'),
(185, 3, 'User logged in', NULL, NULL, '2025-12-03 21:58:26'),
(186, 3, 'User logged in', NULL, NULL, '2025-12-04 21:37:39'),
(187, 3, 'User logged in', NULL, NULL, '2025-12-04 21:38:27'),
(188, 3, 'User logged in', NULL, NULL, '2025-12-06 19:44:33'),
(189, 3, 'User logged in', NULL, NULL, '2025-12-07 18:13:05'),
(190, 1, 'User logged in', NULL, NULL, '2025-12-08 20:43:21'),
(191, 1, 'User logged in', NULL, NULL, '2025-12-08 22:02:01'),
(192, 1, 'User logged in', NULL, NULL, '2025-12-08 23:13:27'),
(193, 1, 'User logged in', NULL, NULL, '2025-12-09 04:23:15'),
(194, 1, 'Added new customer: عبدالسلام (ID: 27)', NULL, NULL, '2025-12-09 06:26:41'),
(195, 1, 'Processed wallet transaction ID: 12 for vendor ID: 1 (withdrawal: 5)', NULL, NULL, '2025-12-09 07:12:10'),
(196, 1, 'Added new product: abdelsalam test (ID: 1129)', NULL, NULL, '2025-12-09 07:13:20'),
(197, 1, 'Processed wallet transaction ID: 14 for customer ID: 2 (refund: 9999)', NULL, NULL, '2025-12-09 10:03:17'),
(198, 3, 'User logged in', NULL, NULL, '2025-12-12 22:15:11'),
(199, 1, 'User logged in', NULL, NULL, '2025-12-15 10:30:51'),
(200, 1, 'User logged in', NULL, NULL, '2025-12-20 20:09:20'),
(201, 1, 'Added contact ID: 4 for customer ID: 2', NULL, NULL, '2025-12-20 20:41:06');

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` int(11) NOT NULL,
  `bank_name` varchar(100) NOT NULL,
  `account_number` varchar(100) NOT NULL,
  `balance` decimal(10,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `description`, `created_at`) VALUES
(7, 'FP | Final Product | منتج نهائي', NULL, 'منتج نهائي', '2025-08-16 12:36:20'),
(8, 'Large Animals', 7, '', '2025-08-16 12:36:46'),
(9, 'RM | Raw Materials | خامات', NULL, 'All Raw materials (Packaging materials, solvents, etc.)', '2025-08-24 10:38:13'),
(10, 'PM | Packaging Materials | خامات تغليف', NULL, 'خامات تغليف', '2025-08-24 10:40:14'),
(11, 'استيكرات', 10, 'استيكرات', '2025-10-15 17:08:40'),
(12, 'نشرات', 10, 'نشرات', '2025-10-15 17:09:01'),
(13, 'علب', 10, 'علب', '2025-10-15 17:09:13'),
(14, 'علامه مائيه', 10, 'علامه مائيه', '2025-10-15 17:10:17'),
(15, 'AC | Acids | احماض', 9, 'AC | Acids | احماض', '2025-10-15 17:11:29'),
(16, 'AC | Amino Acids | احماض امينيه', 9, 'AC | Amino Acids | احماض امينيه', '2025-10-15 17:11:51'),
(17, 'AM | Active Material| ماده فعاله', 9, 'AM | Active Material| ماده فعاله', '2025-10-15 17:12:15'),
(18, 'CO | Colors/Odors | الوان/روائح', 9, 'CO | Colors/Odors | الوان/روائح', '2025-10-15 17:12:52'),
(19, 'EX | Extracts | مستخلصاتEX | Extracts | مستخلصات', 9, '', '2025-10-15 17:14:23'),
(20, 'EXC | Excipient| ماده حامله', 9, '', '2025-10-15 17:14:43'),
(21, 'MS | Minerals/Salts | املاح/معادن', 9, '', '2025-10-15 17:14:54'),
(22, 'OTH | Other | اخري', 9, '', '2025-10-15 17:15:15'),
(23, 'SO | Solvents | مذيبات', 9, '', '2025-10-15 17:15:31'),
(24, 'v', 7, '', '2025-10-15 17:15:48'),
(25, 'VI | Vitamins | فيتامينات', 9, '', '2025-10-15 17:16:14'),
(26, 'عبوات بلاستيك', 29, '', '2025-10-15 17:17:43'),
(27, 'عبوات زجاج', 29, '', '2025-10-15 17:18:11'),
(28, 'كرتون | Carton', 10, '', '2025-10-15 17:18:54'),
(29, 'FM | Filling Materials| خامات تعبئه', NULL, '', '2025-10-15 17:19:07'),
(30, 'null', NULL, NULL, '2025-10-31 01:07:18');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` enum('representative','factory') NOT NULL,
  `tax_number` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `wallet_balance` decimal(10,2) DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `type`, `tax_number`, `address`, `email`, `phone`, `wallet_balance`, `created_at`, `updated_at`) VALUES
(1, 'omar Magdy', 'representative', NULL, NULL, 'omar.adapq32@dslapl.com', '01554945448', 6000.00, '2025-08-04 16:59:23', '2025-10-02 21:25:57'),
(2, 'Eslam 1', 'representative', NULL, NULL, NULL, '01000000000', 40001.00, '2025-08-30 21:01:05', '2025-12-09 10:03:17'),
(3, 'كيور', 'factory', NULL, NULL, NULL, NULL, 0.00, '2025-10-31 00:29:57', '2025-10-31 00:29:57'),
(4, 'بروكسي', 'factory', NULL, NULL, NULL, NULL, 0.00, '2025-10-31 00:29:57', '2025-10-31 00:29:57'),
(5, 'د.لؤي', 'factory', NULL, NULL, NULL, NULL, 0.00, '2025-10-31 00:29:57', '2025-10-31 00:29:57'),
(6, 'الشيخ مصطفي', 'factory', NULL, NULL, NULL, NULL, 0.00, '2025-10-31 00:29:57', '2025-10-31 00:29:57'),
(7, 'ابو عدي', 'factory', NULL, NULL, NULL, NULL, 0.00, '2025-10-31 00:29:57', '2025-10-31 00:29:57'),
(8, 'ابو الليف', 'factory', NULL, NULL, NULL, NULL, 0.00, '2025-10-31 00:29:57', '2025-10-31 00:29:57'),
(9, 'د.محمد عسر', 'factory', NULL, NULL, NULL, NULL, 0.00, '2025-10-31 00:29:57', '2025-10-31 00:29:57'),
(10, 'فيوتشر', 'factory', NULL, NULL, NULL, NULL, 0.00, '2025-10-31 00:29:57', '2025-10-31 00:29:57'),
(11, 'د.احمد عنب', 'factory', NULL, NULL, NULL, NULL, 0.00, '2025-10-31 00:29:57', '2025-10-31 00:29:57'),
(12, 'شركه جولدن', 'factory', NULL, NULL, NULL, NULL, 0.00, '2025-10-31 00:29:57', '2025-10-31 00:29:57'),
(13, 'شركه زودياك', 'factory', NULL, NULL, NULL, NULL, 0.00, '2025-10-31 00:29:57', '2025-10-31 00:29:57'),
(14, 'شركه شيلد', 'factory', NULL, NULL, NULL, NULL, 0.00, '2025-10-31 00:29:57', '2025-10-31 00:29:57'),
(15, 'شركه تكنو', 'factory', NULL, NULL, NULL, NULL, 0.00, '2025-10-31 00:29:57', '2025-10-31 00:29:57'),
(16, 'د.احمد ممدوح', 'factory', NULL, NULL, NULL, NULL, 0.00, '2025-10-31 00:29:57', '2025-10-31 00:29:57'),
(17, 'شركه نيور', 'factory', NULL, NULL, NULL, NULL, 0.00, '2025-10-31 00:29:57', '2025-10-31 00:29:57'),
(18, 'د.حمادي', 'factory', NULL, NULL, NULL, NULL, 0.00, '2025-10-31 00:29:57', '2025-10-31 00:29:57'),
(19, 'شركه اكس لارج', 'factory', NULL, NULL, NULL, NULL, 0.00, '2025-10-31 00:29:57', '2025-10-31 00:29:57'),
(20, 'شركه اوميجا', 'factory', NULL, NULL, NULL, NULL, 0.00, '2025-10-31 00:29:57', '2025-10-31 00:29:57'),
(21, 'د.ابراهيم', 'factory', NULL, NULL, NULL, NULL, 0.00, '2025-10-31 00:29:57', '2025-10-31 00:29:57'),
(22, 'د.علي طلبه', 'factory', NULL, NULL, NULL, NULL, 0.00, '2025-10-31 00:29:57', '2025-10-31 00:29:57'),
(23, 'د.عصام عدلي', 'factory', NULL, NULL, NULL, NULL, 0.00, '2025-10-31 00:29:57', '2025-10-31 00:29:57'),
(24, 'د.طه', 'factory', NULL, NULL, NULL, NULL, 0.00, '2025-10-31 00:29:57', '2025-10-31 00:29:57'),
(25, 'شركه بايو', 'factory', NULL, NULL, NULL, NULL, 0.00, '2025-10-31 00:29:57', '2025-10-31 00:29:57'),
(26, 'د.اسلام مبارك', 'factory', NULL, NULL, NULL, NULL, 0.00, '2025-10-31 00:29:57', '2025-10-31 00:29:57'),
(27, 'عبدالسلام', 'representative', NULL, NULL, 'abdo@gmail.com', '0000000000', 1000.00, '2025-12-09 06:26:41', '2025-12-09 06:26:41');

-- --------------------------------------------------------

--
-- Table structure for table `customer_addresses`
--

CREATE TABLE `customer_addresses` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `address_type` enum('billing','shipping','primary') NOT NULL,
  `address_line1` varchar(100) NOT NULL,
  `address_line2` varchar(100) DEFAULT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `postal_code` varchar(20) NOT NULL,
  `country` varchar(50) NOT NULL,
  `is_default` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_addresses`
--

INSERT INTO `customer_addresses` (`id`, `customer_id`, `address_type`, `address_line1`, `address_line2`, `city`, `state`, `postal_code`, `country`, `is_default`) VALUES
(1, 1, 'primary', 'dalskdla', NULL, 'ksakdn', 'kans;kdnf;kas', '1778', 'Egypt', 1),
(2, 2, 'primary', 'CAiro,Cairo1', NULL, 'Cairo', 'CAiro', '11111111', 'Egypt', 1),
(3, 27, 'primary', 'helan', 'cairo', 'cairo', 'cairo', '12345', 'cairo', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer_contacts`
--

CREATE TABLE `customer_contacts` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `is_primary` tinyint(1) DEFAULT 0,
  `position` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_contacts`
--

INSERT INTO `customer_contacts` (`id`, `customer_id`, `name`, `email`, `phone`, `is_primary`, `position`) VALUES
(1, 1, 'Omar Magdy', 'mmdsaojdfoaj@asbud.com', '01554945448', 1, 'Owner'),
(2, 2, 'Eslam', NULL, '01000000000', 1, NULL),
(3, 27, 'abdo', NULL, '0000000000', 1, 'cto'),
(4, 2, 'Amr Achraf', 'amrachraf6690@gmail.com', '9494958484', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_documents`
--

CREATE TABLE `customer_documents` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `document_type` varchar(50) NOT NULL,
  `document_number` varchar(100) NOT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_types`
--

CREATE TABLE `customer_types` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_types`
--

INSERT INTO `customer_types` (`id`, `name`, `description`) VALUES
(1, 'representative', 'Customer representing a company or organization'),
(2, 'factory', 'Direct factory customer');

-- --------------------------------------------------------

--
-- Table structure for table `customer_wallet_transactions`
--

CREATE TABLE `customer_wallet_transactions` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `type` enum('deposit','withdrawal','payment','refund') NOT NULL,
  `reference_id` int(11) DEFAULT NULL,
  `reference_type` varchar(50) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_wallet_transactions`
--

INSERT INTO `customer_wallet_transactions` (`id`, `customer_id`, `amount`, `type`, `reference_id`, `reference_type`, `notes`, `created_by`, `created_at`) VALUES
(1, 1, 50000.00, 'deposit', NULL, NULL, NULL, 1, '2025-08-04 16:59:23'),
(2, 1, 45000.00, 'payment', 1, 'order', '', 3, '2025-08-30 20:40:38'),
(3, 2, 50000.00, 'deposit', NULL, NULL, 'عربون طلبية رقم ١٢٣٤', 3, '2025-09-24 19:22:37'),
(4, 1, 1000.00, 'deposit', NULL, NULL, '12345', 3, '2025-10-02 21:25:57'),
(5, 2, 10.00, 'deposit', NULL, NULL, 'www', 2, '2025-11-28 17:04:50'),
(6, 2, 10.00, 'withdrawal', NULL, NULL, 'www', 2, '2025-11-28 17:12:10'),
(7, 2, 10.00, 'deposit', NULL, NULL, 'www', 2, '2025-11-28 17:13:30'),
(8, 2, 10.00, 'refund', NULL, NULL, 'www', 2, '2025-11-28 17:14:08'),
(9, 2, 10.00, 'payment', NULL, NULL, 'www', 2, '2025-11-28 17:15:45'),
(10, 2, 10.00, 'deposit', NULL, NULL, 'www', 2, '2025-11-28 17:16:19'),
(11, 2, 10.00, 'deposit', NULL, NULL, 'www', 2, '2025-11-28 17:17:28'),
(12, 2, 10.00, 'withdrawal', NULL, NULL, 'www', 2, '2025-11-28 17:17:49'),
(13, 27, 1000.00, 'deposit', NULL, NULL, NULL, 1, '2025-12-09 06:26:41'),
(14, 2, 9999.00, 'refund', NULL, NULL, '', 1, '2025-12-09 10:03:17');

-- --------------------------------------------------------

--
-- Table structure for table `finance_transfers`
--

CREATE TABLE `finance_transfers` (
  `id` int(11) NOT NULL,
  `from_type` enum('safe','bank','personal') NOT NULL,
  `from_id` int(11) NOT NULL,
  `to_type` enum('safe','bank','personal') NOT NULL,
  `to_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `notes` text DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `finance_transfers`
--

INSERT INTO `finance_transfers` (`id`, `from_type`, `from_id`, `to_type`, `to_id`, `amount`, `notes`, `created_by`, `created_at`) VALUES
(1, 'safe', -4, 'bank', -4, 0.00, 'test', 1, '2025-12-09 09:57:19');

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `location` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventories`
--

INSERT INTO `inventories` (`id`, `name`, `location`, `description`, `is_active`, `created_at`) VALUES
(1, 'RM | خامات خارجي |', 'العاشر من رمضان', '', 1, '2025-08-04 16:51:36'),
(2, 'السادات', 'مدينة السادات', '', 1, '2025-08-04 17:00:43'),
(4, 'RM | رئيسي | A1', 'العاشر من رمضان', 'مخزن رئيسي (خامات) مصنع العاشر من رمضان', 1, '2025-08-24 09:39:14'),
(5, 'RM | معمل تصنيع حقن | B1', 'العاشر من رمضان', 'مخزن الخامات ملحق بمعمل تصنيع الحقن', 1, '2025-08-24 09:41:14'),
(6, 'FP | مخزن منتج نهائي | A2', 'العاشر من رمضان', 'مخزن منتج نهائي جاهز للشحن', 1, '2025-08-24 09:42:25'),
(7, 'RM | مخزن معمل تصنيع بودر | C1', 'العاشر من رمضان', 'مخزن خامات ملحق بمعمل تصنيع البودر', 1, '2025-08-24 09:43:29'),
(8, 'PP | مخزن منتج اولي | B2', 'العاشر من رمضان', 'مخزن منتج اولي ملحق بمعمل تصنيع الحقن', 1, '2025-08-24 09:51:28'),
(9, 'RP | مخزن مرتجعات | A3', 'العاشر من رمضان', 'مخزن مرتجعات', 1, '2025-08-24 09:52:57'),
(10, 'DA | مخزن تالف | A4', 'العاشر من رمضان', 'مخزن خامات و منتجات تالفه', 1, '2025-08-24 09:56:00');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_products`
--

CREATE TABLE `inventory_products` (
  `id` int(11) NOT NULL,
  `inventory_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` decimal(10,2) NOT NULL DEFAULT 0.00,
  `last_updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory_products`
--

INSERT INTO `inventory_products` (`id`, `inventory_id`, `product_id`, `quantity`, `last_updated`) VALUES
(1, 1, 2, 200.00, '2025-11-06 13:23:32');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_transfers`
--

CREATE TABLE `inventory_transfers` (
  `id` int(11) NOT NULL,
  `transfer_reference` varchar(50) DEFAULT NULL,
  `from_inventory_id` int(11) NOT NULL,
  `to_inventory_id` int(11) NOT NULL,
  `status` enum('pending','accepted','rejected') DEFAULT 'pending',
  `requested_by` int(11) NOT NULL,
  `accepted_by` int(11) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory_transfers`
--

INSERT INTO `inventory_transfers` (`id`, `transfer_reference`, `from_inventory_id`, `to_inventory_id`, `status`, `requested_by`, `accepted_by`, `notes`, `created_at`, `updated_at`) VALUES
(1, 'TR-20250811-5YWO7B', 2, 1, 'pending', 3, NULL, '', '2025-08-11 11:28:27', '2025-08-11 11:28:27'),
(2, 'TR-20250830-5WI5Y7', 10, 4, 'pending', 2, NULL, '', '2025-08-30 19:41:42', '2025-08-30 19:41:42');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `internal_id` varchar(50) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `status` enum('new','in-production','in-packing','delivering','delivered','returned','returned-refunded','partially-returned','partially-returned-refunded') DEFAULT 'new',
  `total_amount` decimal(10,2) NOT NULL,
  `paid_amount` decimal(10,2) DEFAULT 0.00,
  `notes` text DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `internal_id`, `customer_id`, `contact_id`, `order_date`, `status`, `total_amount`, `paid_amount`, `notes`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'ORD-20250830-8B815D', 1, 1, '2025-08-30', 'in-production', 45000.00, 45000.00, '', 3, '2025-08-30 20:37:49', '2025-08-30 20:41:15'),
(2, 'ORD-20250831-D7EE01', 2, 2, '2025-08-31', 'delivering', 90000.00, 0.00, '', 3, '2025-08-30 21:49:02', '2025-08-30 21:49:50');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `total_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `unit_price`, `total_price`) VALUES
(1, 1, 3, 1000, 45.00, 45000.00),
(2, 2, 3, 2000, 45.00, 90000.00);

-- --------------------------------------------------------

--
-- Table structure for table `order_payments`
--

CREATE TABLE `order_payments` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_method` enum('cash','transfer','wallet') NOT NULL,
  `reference` varchar(100) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_payments`
--

INSERT INTO `order_payments` (`id`, `order_id`, `amount`, `payment_method`, `reference`, `notes`, `created_by`, `created_at`) VALUES
(1, 1, 45000.00, 'wallet', '', '', 3, '2025-08-30 20:40:38');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sku` varchar(50) DEFAULT NULL,
  `barcode` varchar(50) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `type_e` text DEFAULT NULL,
  `type` enum('primary','final','material') DEFAULT NULL,
  `description` text DEFAULT NULL,
  `unit` enum('each','gram','kilo','') DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `unit_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `cost_price` decimal(10,2) DEFAULT NULL,
  `min_stock_level` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `sku`, `barcode`, `category_id`, `subcategory_id`, `type_e`, `type`, `description`, `unit`, `customer_id`, `image`, `unit_price`, `cost_price`, `min_stock_level`, `created_at`, `updated_at`) VALUES
(1, '  بارا اند  para end  ', NULL, NULL, 7, 30, 'final', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتونه كيور. عدد12', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:55', '2025-12-20 20:43:17'),
(2, '  بارا اند  para end  استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:55', '2025-10-31 01:13:55'),
(3, '  بارا اند  para end   نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:55', '2025-10-31 01:13:55'),
(4, '  بارا اند  para end  علبه', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:55', '2025-10-31 01:13:55'),
(5, ' الجديدcura vitamin 3فيتامين ', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتونه 3.عدد 12', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:55', '2025-10-31 01:13:55'),
(6, ' الجديدcura vitamin 3فيتامين استيكر  ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:55', '2025-10-31 01:13:55'),
(7, ' الجديدcura vitamin 3فيتامين نشره  ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:55', '2025-10-31 01:13:55'),
(8, ' الجديدcura vitamin 3فيتامين علبه  ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:55', '2025-10-31 01:13:55'),
(9, ' ديكلو سيتا مول diclo cetamol', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتونه كيور.عدد12', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:55', '2025-10-31 01:13:55'),
(10, ' ديكلو سيتا مول diclo cetamol استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:55', '2025-10-31 01:13:55'),
(11, ' ديكلو سيتا مول diclo cetamol نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:55', '2025-10-31 01:13:55'),
(12, ' ديكلو سيتا مول diclo cetamol علبه', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:55', '2025-10-31 01:13:55'),
(13, ' 3ميك cure mec', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،بلاستيك مدور50مللي ،فيليب لبني،كاوتش رمادي،كرتونه 3.عدد14', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:55', '2025-10-31 01:13:55'),
(14, ' 3ميك cure mec استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:55', '2025-10-31 01:13:55'),
(15, ' 3ميك cure mec نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:55', '2025-10-31 01:13:55'),
(16, ' 3ميك cure mec علبه', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(17, ' 3فوس 50مللي CURA PHOS 50ML', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 50مللي ،فيليب لبني،كاوتش رمادي،كرتونه كيور.عدد14', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(18, ' 3فوس 50مللي CURA PHOS 50ML استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(19, ' 3فوس 50مللي CURA PHOS 50ML نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(20, ' 3فوس 50مللي CURA PHOS 50ML علبه', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(21, ' 3فوس 100مللي cura phos 100ML', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتونه كيور.عدد 12', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(22, ' 3فوس 100مللي cura phos 100ML استيكر', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(23, ' 3فوس 100مللي cura phos 100ML نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(24, ' 3فوس 100مللي cura phos 100ML علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(25, ' انرو فلوكس enrofloxacin10%', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتونه جاما ابيض ساده .عدد30 ', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(26, ' انرو فلوكس enrofloxacin10% استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(27, ' انرو فلوكس enrofloxacin10% نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(28, ' انرو فلوكس enrofloxacin10% علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(29, ' 3كال cura cal', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتونه كيور.عدد12', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(30, ' 3كال cura cal استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(31, ' 3كال cura cal نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(32, ' 3كال cura cal علبه', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(33, '3ميك سوبرcure mec super', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،بلاستيك نص دايره 50مللي ،فيليب لبني،كاوتش رمادي،كرتونه 3.عدد14', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(34, '3ميك سوبرcure mec super استيكر', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(35, '3ميك سوبرcure mec super نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(36, '3ميك سوبرcure mec super علبه', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(37, ' توبل ميك سوبر TOPL MEC SUPER', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،بلاستيك نص دايره 50مللي ،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده جاما .عدد42', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(38, ' توبل ميك سوبر TOPL MEC SUPER استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(39, ' توبل ميك سوبر TOPL MEC SUPER نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(40, ' توبل ميك سوبر TOPL MEC SUPER علبه', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(41, ' جاما بليكس gamma plex', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتونه كيور.عدد12', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(42, ' جاما بليكس gamma plex استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(43, ' جاما بليكس gamma plex نشره', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(44, ' جاما بليكس gamma plex علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(45, ' جيتو زال geto zal', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتونه كيور.عدد12', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(46, ' جيتو زال geto zal استيكر', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(47, ' جيتو زال geto zal نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(48, ' جيتو زال geto zal علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(49, ' 3سيلينيوم cura selenium', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتونه ', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(50, ' 3سيلينيوم cura selenium استيكر', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(51, ' 3سيلينيوم cura selenium نشره', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(52, ' 3سيلينيوم cura selenium علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(53, ' تيرافيت TERAVET', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتونه ابيض ساده جاما.عدد 30', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(54, ' تيرافيت TERAVET استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, '', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(55, ' تيرافيت TERAVET نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(56, ' تيرافيت TERAVET علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(57, ' بولدينان BOLDENANE', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه، باكيت خارجي .زجاج شفاف 50مللي،فيليب شفاف،كاوتش رمادي،كرتونه ابيض ساده جاما.عدد 30', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(58, ' بولدينان BOLDENANE استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(59, ' بولدينان BOLDENANE نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(60, ' بولدينان BOLDENANE علبه', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(61, '   فلينيكسflu  nix', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه، باكيت خارجي .زجاج شفاف 50مللي،فيليب شفاف،كاوتش رمادي،كرتونه ابيض ساده جاما.عدد 30', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(62, '   فلينيكسflu  nix استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(63, '   فلينيكسflu  nix نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(64, '   فلينيكسflu  nix علبه', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(65, ' جاما بليكس السعوديه gamma plex ', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،بلاستيك نص دايره 50،فيليب لبني،كاوتش رمادي،كرتونه ابيض ساده.عدد 42', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(66, ' جاما بليكس السعوديه gamma plex  استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(67, ' جاما بليكس السعوديه gamma plex  نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(68, ' جاما بليكس السعوديه gamma plex  علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(69, ' ميكسول MECSOI', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر .بلاستيك عسلي 100.غطاء دبله حمرا .كرتون جاما مطبوع محلي .عدد50', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(70, ' ميكسول MECSOI استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(71, ' ميكسول MECSOI نشره ', NULL, NULL, 10, 12, 'INJ', NULL, 'استيكر .بلاستيك عسلي 100.غطاء دبله حمرا .كرتون جاما مطبوع محلي .عدد50', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(72, ' ميكسول MECSOI علبه ', NULL, NULL, 10, 13, 'INJ', NULL, 'مطبوعات ', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(73, 'برو بولد ', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر .بلاستيك عسلي 100.غطاء دبله حمرا .كرتون جاما مطبوع محلي .عدد50', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(74, 'برو بولد استيكر', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(75, 'ه+ سيلنيوم كيور', NULL, NULL, 7, 30, 'POU', NULL, 'استيكر .بلاستيك عسلي 100.غطاء دبله حمرا .كرتون جاما مطبوع محلي .عدد50', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(76, 'استيكر ه+ سيلنيوم 3 100مللي ', NULL, NULL, 10, 11, 'POU', NULL, 'مطبوعات ', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(77, 'جاما توكس كيور', NULL, NULL, 7, 30, 'POU', NULL, 'استيكر .بلاستيك عسلي 100.غطاء دبله حمرا .كرتون جاما مطبوع محلي .عدد50', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(78, 'استيكر جاما توكس 3100مللي', NULL, NULL, 10, 11, 'POU', NULL, 'مطبوعات ', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(79, ' جاما فوس كيور', NULL, NULL, 7, 30, 'POU', NULL, 'استيكر.بلاستيك نص لتر.كرتون ابيض ساده جاما36.عدد 15', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(80, 'استيكر جاما فوس 3100مللي ', NULL, NULL, 10, 11, 'POU', NULL, 'مطبوعات ', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(81, ' جاما growth كيور', NULL, NULL, 7, 30, 'POU', NULL, '', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(82, 'استيكر جاما growth 3100مللي ', NULL, NULL, 10, 11, 'POU', NULL, '', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(83, 'جاما ا.د كيور', NULL, NULL, 7, 30, 'POU', NULL, '', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(84, 'استيكر جاما ا.د 3100مللي ', NULL, NULL, 10, 11, 'POU', NULL, '', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(85, ' مترو سيد', NULL, NULL, 7, 30, 'POU', NULL, '', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(86, 'استيكر مترو سيد 500مللي ', NULL, NULL, 10, 11, 'POU', NULL, '', 'each', 3, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(87, ' مالتي برو multi pro', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون 4. عدد36', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(88, ' مالتي برو multi pro استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(89, ' مالتي برو multi pro نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(90, ' مالتي برو multi pro علبه', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(91, 'انرو فلوكس امازون nor flox 10%', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون ا بيض ساده جاما . عدد36', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(92, 'انرو فلوكس nor flox 10% استيكر امازون ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(93, 'انرو فلوكس nor flox 10% نشره امازون ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(94, 'انرو فلوكس nor flox 10% علبه امازون ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(95, 'انرو فلوكس بايفيت nor flox 10%', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون ا بيض ساده جاما . عدد36', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(96, 'انرو فلوكس nor flox 10% استيكر باي فيت ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(97, 'انرو فلوكس nor flox 10% نشره باي فيت ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(98, 'انرو فلوكس nor flox 10% علبه باي فيت ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(99, 'فسفور برو phospho pro', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون 4. عدد36', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(100, 'فسفور برو phospho pro استيكر', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(101, 'فسفور برو phospho pro نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(102, 'فسفور برو phospho pro علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(103, ' بارا هيرب para herb', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون 4. عدد36', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(104, ' بارا هيرب para herb استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(105, ' بارا هيرب para herb نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:56', '2025-10-31 01:13:56'),
(106, ' بارا هيرب para herb علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(107, ' ديكلو برو diclo pro 5% ', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون 4. عدد36', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(108, ' ديكلو برو diclo pro 5% استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(109, ' ديكلو برو diclo pro 5% نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(110, ' ديكلو برو diclo pro 5% علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(111, ' بروميك سوبر 50مللي promec super 50ml', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،بلاستيك نص دايره 50،فيليب لبني،كاوتش رمادي،كرتون 4. عدد35', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(112, ' بروميك سوبر 50مللي  promec super 50ml استيكر', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(113, ' بروميك سوبر 50مللي promec super 50ml نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(114, ' بروميك سوبر 50مللي promec super 50ml علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(115, 'برو ميك 100مللي promec 100ML ', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون 4. عدد30', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(116, 'برو ميك 100مللي promec 100ML  استيكر', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(117, 'برو ميك 100مللي promec 100ML  نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(118, 'برو ميك 100مللي promec 100ML  علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(119, ' برو ميك 50مللي promec 50 ML', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،بلاستيك مدور 50،فيليب لبني،كاوتش رمادي،كرتون 4. عدد35', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(120, ' برو ميك 50مللي promec 50 ML استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(121, ' برو ميك 50مللي promec 50 ML نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(122, ' برو ميك 50مللي promec 50 ML علبه', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(123, ' نورماسين NORMYCIN', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده جاما . عدد36', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(124, ' نورماسين NORMYCIN استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(125, ' نورماسين NORMYCIN نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(126, ' نورماسين NORMYCIN علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(127, 'برو بليكس pro plex', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون 4. عد36', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(128, 'برو بليكس pro plex استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(129, 'برو بليكس pro plex نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(130, 'برو بليكس pro plex علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(131, 'برو زالpro zal', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون 4. عدد36', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(132, 'برو زالpro zal استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(133, 'برو زالpro zal نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(134, 'برو زالpro zal علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(135, ' كالسيوم بروcalci pro', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون 4. عدد36', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(136, ' كالسيوم بروcalci pro استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(137, ' كالسيوم بروcalci pro نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(138, ' كالسيوم بروcalci pro علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(139, ' ديكلو سي كي DICLO CK', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون ابيض سلده  . عدد36', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(140, ' ديكلو سي كي DICLO CK استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(141, ' ديكلو سي كي DICLO CK نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(142, ' ديكلو سي كي DICLO CK علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(143, 'فسفور سي كي PHOSPHO CK', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون ابيض سلده  . عدد36', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(144, 'فسفور سي كي PHOSPHO CK استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(145, 'فسفور سي كي PHOSPHO CK نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(146, 'فسفور سي كي PHOSPHO CK علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(147, ' مالتي سي كي MULTI CK', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون ابيض سلده  . عدد36', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(148, ' مالتي سي كي MULTI CK استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(149, ' مالتي سي كي MULTI CK نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(150, ' مالتي سي كي MULTI CK علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(151, ' برو ميكس pro mix', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 50،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده جاما . عدد 42', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(152, ' برو ميكس pro mix استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(153, ' برو ميكس pro mix  نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(154, ' برو ميكس pro mix علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(155, ' يورو فلام EURO FLAM', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون ابيض سلده  . عدد36', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(156, ' يورو فلام EURO FLAM استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(157, ' يورو فلام EURO FLAM نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(158, ' يورو فلام EURO FLAM عبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(159, ' يورو فلوكس EURO flox', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون ابيض سلده  . عدد36', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(160, ' يورو فلوكس EURO flox استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(161, ' يورو فلوكس EURO flox نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(162, ' يورو فلوكس EURO flox علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(163, ' سي كي بليكسck plex', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون ابيض سلده  . عدد36', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(164, ' سي كي بليكسck plex استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(165, ' سي كي بليكسck plex نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(166, ' سي كي بليكسck plex علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(167, 'كالسيوم سي كي  calci ck', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون ابيض سلده  . عدد36', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(168, 'كالسيوم سي كي  calci ck استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(169, 'كالسيوم سي كي  calci ck نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(170, 'كالسيوم سي كي  calci ck علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(171, ' انرو سي كي ENRO CK', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون ابيض سلده  . عدد36', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(172, ' انرو سي كي ENRO CK استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(173, ' انرو سي كي ENRO CK نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(174, ' انرو سي كي ENRO CK علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(175, ' ايفوميك سوبر سي كي IVOMEC CK SUPER', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،بلاستيك 50مللي  مدور،فيليب لبني،كاوتش رمادي،كرتون ابيض سلده  . عدد36', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(176, ' ايفوميك سوبر سي كي IVOMEC CK SUPER استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(177, ' ايفوميك سوبر سي كي IVOMEC CK SUPER نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(178, ' ايفوميك سوبر سي كي IVOMEC CK SUPER علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(179, ' مالتي فيت mluti vet co', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون ابيض سلده  . عدد36', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(180, ' مالتي فيت mluti vet co استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(181, ' مالتي فيت mluti vet co  نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(182, ' مالتي فيت mluti vet co علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 4, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(183, ' تراي فوس tri phos', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،استيكر خارجي .زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد20', 'each', 5, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(184, ' تراي فوس tri phos استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 5, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(185, ' تراي فوس tri phos نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 5, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(186, ' تراي فوس tri phos  علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 5, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(187, ' مالتي مور multi-more', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب د لؤي ،كاوتش د.لؤي ،كرتون مالتي بني  . عدد48', 'each', 5, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(188, ' مالتي مور multi-more استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 5, NULL, 0.00, NULL, 0, '2025-10-31 01:13:57', '2025-10-31 01:13:57'),
(189, ' مالتي مور multi-more نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 5, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(190, ' مالتي مور multi-more علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 5, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(191, ' تراي ماك tri mac', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه، بلاستيك مدور50مللي،فيليب لبني،كاوتش رمادي،كرتون تراي ماك . عدد10', 'each', 5, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(192, ' تراي ماك tri mac استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 5, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(193, ' تراي ماك tri mac نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 5, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(194, ' تراي ماك tri mac علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 5, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(195, ' تراي ديكلو مول tri-d-mol', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،استيكر خارجي .زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد20', 'each', 5, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(196, ' تراي ديكلو مول tri-d-mol استيكر  ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 5, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(197, ' تراي ديكلو مول tri-d-mol نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 5, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(198, ' تراي ديكلو مول tri-d-mol علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 5, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(199, ' تراي فلوكس tri flox 10%', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،استيكر خارجي .زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد20', 'each', 5, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(200, ' تراي فلوكس tri flox 10% استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 5, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(201, ' تراي فلوكس tri flox 10% نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 5, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(202, ' تراي فلوكس tri flox 10% علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 5, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(203, ' بوفي جان bovi-gan 50 m', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه.باكيت خارجي ،زجاج شفاف 50مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد24', 'each', 5, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(204, ' بوفي جان bovi-gan 50 m استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 5, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(205, ' بوفي جان bovi-gan 50 m نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 5, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(206, ' بوفي جان bovi-gan 50 m علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 5, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(207, ' تراي مكتين سوبر tri mectin super', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،بلاستيك مربع50مللي،فيليب لبني،كاوتش رمادي،باكيت تراي مكتين  سوبر. عدد20', 'each', 5, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(208, ' تراي مكتين سوبر tri mectin super استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 5, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(209, ' تراي مكتين سوبر tri mectin super نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 5, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(210, ' تراي مكتين سوبر tri mectin super علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 5, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(211, ' بوفي فاست bovi-fast grow ', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه.باكيت خارجي ،زجاج عسلي 50مللي،فيليب فضي،كاوتش رمادي،كرتون ابيض ساده . عدد24', 'each', 5, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(212, ' بوفي فاست bovi-fast grow  استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 5, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(213, ' بوفي فاست bovi-fast grow  نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 5, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(214, ' بوفي فاست bovi-fast grow  علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 5, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(215, ' بان توكسي PENTOXY', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،استيكر خارجي .زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد20', 'each', 5, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(216, ' بان توكسي PENTOXY استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 5, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(217, ' بان توكسي PENTOXY نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 5, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(218, ' بان توكسي PENTOXY علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 5, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(219, ' سونو بليكس sono-plex', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون سونو بليكس . عدد12', 'each', 5, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(220, ' سونو بليكس sono-plex استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 5, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(221, ' سونو بليكس sono-plex نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 5, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(222, ' سونو بليكس sono-plex علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 5, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(223, ' تراي تولد tri-told', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،استيكر خارجي .زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد20', 'each', 5, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(224, ' تراي تولد tri-told استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 5, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(225, ' تراي تولد tri-told نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 5, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(226, ' تراي تولد tri-told علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 5, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(227, ' بيتا اكتيفbeta active', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون بيتر فيت . عدد24', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(228, ' بيتا اكتيفbeta active استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(229, ' بيتا اكتيفbeta active نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(230, ' بيتا اكتيفbeta active علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(231, ' زيكسترون zextron', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون بيتر فيت . عدد24', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(232, ' زيكسترون zextron استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(233, ' زيكسترون zextron نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(234, ' زيكسترون zextron علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(235, ' الفا ماك سوبر alpha mac super ', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،بلاستيك مربع50مللي،فيليب لبني،كاوتش رمادي،كرتون بيتر فيت . عدد24', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(236, ' الفا ماك سوبر alpha mac super استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(237, ' الفا ماك سوبر alpha mac super نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(238, ' الفا ماك سوبر alpha mac super علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(239, ' الفا ماك alpha mac  ', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،بلاستيك مربع50مللي،فيليب لبني،كاوتش رمادي،كرتون بيتر فيت . عدد24', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(240, ' الفا ماك alpha mac  استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(241, ' الفا ماك alpha mac  نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(242, ' الفا ماك alpha mac   علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(243, ' ديكلو بيتا مول DICLABETA MOL', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون بيتر فيت . عدد24', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(244, ' ديكلو بيتا مول DICLABETA MOL استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(245, ' ديكلو بيتا مول DICLABETA MOL نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(246, ' ديكلو بيتا مول DICLABETA MOL علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(247, ' بيوتا سال BUTA SAL', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون بيتر فيت . عدد24', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(248, ' بيوتا سال BUTA SAL استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(249, ' بيوتا سال BUTA SAL نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(250, ' بيوتا سال BUTA SAL علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(251, ' ميتا زال MeTA ZAL', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد30', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(252, ' ميتا زال MeTA ZAL استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(253, ' ميتا زال MeTA ZAL نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(254, ' ميتا زال MeTA ZAL علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(255, ' انروكس enrox', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد30', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(256, ' انروكس enrox استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(257, ' انروكس enrox نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(258, ' انروكس enrox علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(259, ' انرو فلوكس enro FLOX ', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد36', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(260, ' انرو فلوكس enro FLOX  استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(261, ' انرو فلوكس enro FLOX  نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(262, ' انرو فلوكس enro FLOX  علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(263, ' ديفيدري سي devedry-c', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون بيتر فيت . عدد24', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(264, ' ديفيدري سي devedry-c استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(265, ' ديفيدري سي devedry-c نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(266, ' ديفيدري سي devedry-c علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(267, ' بيتا ميون beta myon', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون بيتر فيت . عدد24', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:58', '2025-10-31 01:13:58'),
(268, ' بيتا ميون beta myon استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(269, ' بيتا ميون beta myon نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(270, ' بيتا ميون beta myon علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(271, ' بييتا ماك beta mac', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،بلاستيك نص دايره50مللي،فيليب لبني،كاوتش رمادي،كرتون بيتر فيت . عدد24', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(272, ' بييتا ماك beta mac استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(273, ' بييتا ماك beta mac نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(274, ' بييتا ماك beta mac علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(275, ' بيتا ماك سوبر beta mac super', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،بلاستيك نص دايره50مللي،فيليب لبني،كاوتش رمادي،كرتون بيتر فيت . عدد24', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(276, ' بيتا ماك سوبر beta mac super استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(277, ' بيتا ماك سوبر beta mac super نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(278, ' بيتا ماك سوبر beta mac super علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(279, ' بيتا فيلينكسbeta FLUENIX', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج شفاف50مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده جاما . عدد36', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(280, ' بيتا فيلينكسbeta FLUENIX استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(281, ' بيتا فيلينكسbeta FLUENIX نشره  ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(282, ' بيتا فيلينكسbeta FLUENIX علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(283, ' نيو ماك سوبر new mac super', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،بلاستيك نص دايره50مللي،فيليب لبني،كاوتش رمادي،كرتون بيتر فيت . عدد24', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(284, ' نيو ماك سوبر new mac super استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(285, ' نيو ماك سوبر new mac super نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(286, ' نيو ماك سوبر new mac super علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(287, ' نيو ماك new mac ', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،بلاستيك نص دايره50مللي،فيليب لبني،كاوتش رمادي،كرتون بيتر فيت . عدد24', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(288, ' نيو ماك new mac  استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59');
INSERT INTO `products` (`id`, `name`, `sku`, `barcode`, `category_id`, `subcategory_id`, `type_e`, `type`, `description`, `unit`, `customer_id`, `image`, `unit_price`, `cost_price`, `min_stock_level`, `created_at`, `updated_at`) VALUES
(289, ' نيو ماك new mac  نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(290, ' نيو ماك new mac  علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(291, ' بيتا زال beta zal', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون بيتر فيت . عدد24', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(292, ' بيتا زال beta zal استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(293, ' بيتا زال beta zal نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(294, ' بيتا زال beta zal علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(295, 'نيوزال new zal ', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون بيتر فيت . عدد24', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(296, 'نيوزال new zal  استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(297, 'نيوزال new zal  نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(298, 'نيوزال new zal  علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(299, 'فيرو زال   FARO ZAL', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد30', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(300, 'فيرو زال   FARO ZAL استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(301, 'فيرو زال   FARO ZAL نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(302, 'فيرو زال   FARO ZAL علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(303, ' سي او فلوكس co-flox', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد30', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(304, ' سي او فلوكس co-flox استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(305, ' سي او فلوكس co-flox نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(306, ' سي او فلوكس co-flox علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(307, ' سي او زال co-zal', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد30', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(308, ' سي او زال co-zal استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(309, ' سي او زال co-zal نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(310, ' سي او زال co-zal علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(311, ' سي او امينو بليكس co-aminoplex', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد30', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(312, ' سي او امينو بليكس co-aminoplex استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(313, ' سي او امينو بليكس co-aminoplex نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(314, ' سي او امينو بليكس co-aminoplex علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(315, ' امينو ماكس amino max', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد30', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(316, ' امينو ماكس amino max استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(317, ' امينو ماكس amino max نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(318, ' امينو ماكس amino max علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(319, ' فسفوزين phosphozen', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد30', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(320, ' فسفوزين phosphozen استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(321, ' فسفوزين phosphozen نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(322, ' فسفوزين phosphozen علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(323, ' جرو فوس GROWPHOS', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون بيتر فيت . عدد24', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(324, ' جرو فوس GROWPHOS استيكر  ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(325, ' جرو فوس GROWPHOS نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(326, ' جرو فوس GROWPHOS علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(327, ' سون ميكس SUN MIX', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد30', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(328, ' سون ميكس SUN MIX استيكر  ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(329, ' سون ميكس SUN MIX نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(330, ' سون ميكس SUN MIX علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(331, ' اكوي بليكس Equi PLEX', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون بيتر فيت . عدد24', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(332, ' اكوي بليكس Equi PLEX استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(333, ' اكوي بليكس Equi PLEX نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(334, ' اكوي بليكس Equi PLEX علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(335, ' بيتا اوكسي BETA OXY', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد36', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(336, ' بيتا اوكسي BETA OXY استيكر  ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(337, ' بيتا اوكسي BETA OXY نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(338, ' بيتا اوكسي BETA OXY علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(339, ' ستروليتين  STROLITINE', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون بيتر فيت . عدد24', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(340, ' ستروليتين  STROLITINE استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(341, ' ستروليتين  STROLITINE نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(342, ' ستروليتين  STROLITINE علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(343, 'بيتا تراومسين ', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد36', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(344, 'بيتا تراومسين  استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(345, 'بيتا تراومسين  نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(346, 'بيتا تراومسين  علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(347, ' ايفو ماك I VOMAK', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون بيتر فيت . عدد24', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:13:59', '2025-10-31 01:13:59'),
(348, ' ايفو ماك I VOMAK استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(349, ' ايفو ماك I VOMAK نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(350, ' ايفو ماك I VOMAK علب ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(351, '  vitosource', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد36', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(352, '  استيكر  vitosource', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(353, 'نشره   vitosource', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(354, 'علبه   vitosource', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(355, ' مالتي مين MULTI MINE', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون بيتر فيت . عدد24', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(356, ' مالتي مين MULTI MINE استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(357, ' مالتي مين MULTI MINE نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(358, ' مالتي مين MULTI MINE علبه', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(359, 'ا د ه', NULL, NULL, 7, 30, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(360, 'ا د ه استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(361, 'ا د ه نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(362, 'ا د ه علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 6, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(363, '  الامكتين All mectin', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،بلاستيك نص دايره 50مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد35', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(364, '  الامكتين All mectin استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(365, '  الامكتين All mectin نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(366, '  الامكتين All mectin علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(367, 'بلو زال BLO ZAL', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد30', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(368, 'بلو زال BLO ZAL استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(369, 'بلو زال BLO ZAL نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(370, 'بلو زال BLO ZAL علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(371, ' بلو ميك BLO MEC ', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،بلاستيك نص دايره 50مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد42', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(372, ' بلو ميك BLO MEC  استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(373, ' بلو ميك BLO MEC  نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(374, ' بلو ميك BLO MEC  علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(375, ' بلو ميك بلس BLO MEC PLUS', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،بلاستيك نص دايره 50مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد35', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(376, ' بلو ميك بلس BLO MEC PLUS استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(377, ' بلو ميك بلس BLO MEC PLUS نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(378, ' بلو ميك بلس BLO MEC PLUS علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(379, ' مالتي بلو  multi BLO ', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد30', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(380, ' مالتي بلو  multi BLO  استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(381, ' مالتي بلو  multi BLO  نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(382, ' مالتي بلو  multi BLO  علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(383, 'الترا  زال  ULTRA ZAL', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد30', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(384, 'الترا  زال  ULTRA ZAL استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(385, 'الترا  زال  ULTRA ZAL نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(386, 'الترا  زال  ULTRA ZAL علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(387, ' الترا ميك سوبر  ULTRA MEC SU', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،بلاستيك نص دايره ،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد35', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(388, ' الترا ميك سوبر  ULTRA MEC SU استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(389, ' الترا ميك سوبر  ULTRA MEC SU نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(390, ' الترا ميك سوبر  ULTRA MEC SU علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(391, ' الترا بليكس  ULTRA PLEX', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد30', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(392, ' الترا بليكس  ULTRA PLEX استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(393, ' الترا بليكس  ULTRA PLEX نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(394, ' الترا بليكس  ULTRA PLEX علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(395, ' الا بليكس  ALL PLEX', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد30', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(396, ' الا بليكس  ALL PLEX استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(397, ' الا بليكس  ALL PLEX نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(398, ' الا بليكس  ALL PLEX علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(399, ' الا مكتين سوبرAll mectin super', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،بلاستيك نص دايره ،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد35', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(400, ' الا مكتين سوبرAll mectin super استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(401, ' الا مكتين سوبرAll mectin super نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(402, ' الا مكتين سوبرAll mectin super علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(403, ' جلوري مكتين glory mectin', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،بلاستيك نص دايره 50مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد30', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(404, ' جلوري مكتين glory mectin استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(405, ' جلوري مكتين glory mectin نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(406, ' جلوري مكتين glory mectin علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(407, ' جلوري فوس glory FOSPHAN', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد30', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(408, ' جلوري فوس glory FOSPHAN استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(409, ' جلوري فوس glory FOSPHAN نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(410, ' جلوري فوس glory FOSPHAN علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:00', '2025-10-31 01:14:00'),
(411, '  كاتو زال COTO ZAL', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد30', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(412, '  كاتو زال COTO ZAL استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(413, '  كاتو زال COTO ZAL نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(414, '  كاتو زال COTO ZAL علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(415, ' كافو سال  cafo saL', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي ١٠٠،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد30', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(416, ' كافو سال  cafo saL استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(417, ' كافو سال  cafo saL نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(418, ' كافو سال  cafo saL علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(419, 'امينو جروث ', NULL, NULL, 7, 30, 'POU', NULL, '', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(420, 'امينو جروث استيكر 100مللي ', NULL, NULL, 10, 11, 'POU', NULL, 'استيكر.بلاستيك عسلي100مللي.غطاء دبله حمرا.كرتون جاما مطبوع محلي.عدد50', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(421, 'امينو جروث استيكر 250مللي', NULL, NULL, 10, 12, 'POU', NULL, 'استيكر.بلاستيك250مللي.كرتون ابيض ساده جاما.عدد25 ', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(422, 'امينو جروث استيكر 1000مللي ', NULL, NULL, 10, 13, 'POU', NULL, 'استيكر.بلاستيك1000مللي كرتون ابيض ساده 36.عدد12', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(423, 'فينتو فيتا', NULL, NULL, 7, 30, 'POU', NULL, '', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(424, 'فينتو فيتا 100مللي ', NULL, NULL, 10, 11, 'POU', NULL, 'استيكر.بلاستيك عسلي100مللي.غطاء دبله حمرا.كرتون جاما مطبوع محلي.عدد50', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(425, 'فينتو فيتا 500مللي ', NULL, NULL, 10, 12, 'POU', NULL, 'استيكر.بلاستيك500مللي كرتون اابيض ساده جاما 36.عدد20', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(426, 'توكس سيناره', NULL, NULL, 7, 13, 'POU', NULL, '', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(427, 'توكس سيناره استيكر 100مللي', NULL, NULL, 10, 30, 'POU', NULL, 'استيكر.بلاستيك عسلي100مللي.غطاء دبله حمرا.كرتون جاما مطبوع محلي.عدد50', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(428, 'توكس سيناره  استيكر 250مللي ', NULL, NULL, 10, 11, 'POU', NULL, 'استيكر.بلاستيك250مللي.كرتون ابيض ساده جاما.عدد25 ', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(429, 'توكس سيناره استيكر 1000مللي ', NULL, NULL, 10, 12, 'POU', NULL, 'استيكر.بلاستيك1000مللي كرتون ابيض ساده 36.عدد12', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(430, 'اديفيتا ', NULL, NULL, 7, 13, 'POU', NULL, '', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(431, 'اديفيتا استيكر 100مللي ', NULL, NULL, 10, 30, 'POU', NULL, 'استيكر.بلاستيك عسلي100مللي.غطاء دبله حمرا.كرتون جاما مطبوع محلي.عدد50', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(432, 'اديفيتا استيكر 250مللي ', NULL, NULL, 10, 11, 'POU', NULL, 'استيكر.بلاستيك250مللي.كرتون ابيض ساده جاما.عدد25 ', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(433, 'اديفيتا استيكر 1000مللي ', NULL, NULL, 10, 12, 'POU', NULL, 'استيكر.بلاستيك1000مللي كرتون ابيض ساده 36.عدد12', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(434, 'فيتا جرو ', NULL, NULL, 7, 30, 'POU', NULL, 'استيكر.بلاستيك عسلي100مللي.غطاء دبله حمرا.كرتون جاما مطبوع محلي.عدد50', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(435, 'فيتا جرو استيكر 100مللي ', NULL, NULL, 10, 11, 'POU', NULL, 'استيكر.بلاستيك250مللي.كرتون ابيض ساده جاما.عدد25 ', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(436, 'فيتا جرو استيكر 250مللي ', NULL, NULL, 10, 12, 'POU', NULL, 'استيكر.بلاستيك1000مللي كرتون ابيض ساده 36.عدد12', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(437, 'فيتا جرو استيكر 1000مللي', NULL, NULL, 10, 13, 'POU', NULL, '', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(438, 'رينوكير ', NULL, NULL, 7, 30, 'POU', NULL, 'استيكر.بلاستيك عسلي100مللي.غطاء دبله حمرا.كرتون جاما مطبوع محلي.عدد50', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(439, 'رينوكير استيكر 100مللي ', NULL, NULL, 10, 11, 'POU', NULL, 'استيكر.بلاستيك250مللي.كرتون ابيض ساده جاما.عدد25 ', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(440, 'رينوكير استيكر 250مللي ', NULL, NULL, 10, 12, 'POU', NULL, 'استيكر.بلاستيك1000مللي كرتون ابيض ساده 36.عدد12', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(441, 'رينوكير استيكر  1000مللي ', NULL, NULL, 10, 13, 'POU', NULL, '', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(442, 'تيكنو ', NULL, NULL, 7, 30, 'POU', NULL, 'استيكر.بلاستيك عسلي100مللي.غطاء دبله حمرا.كرتون جاما مطبوع محلي.عدد50', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(443, 'تيكنو استيكر 100مللي ', NULL, NULL, 10, 11, 'POU', NULL, 'استيكر.بلاستيك500مللي كرتون اابيض ساده جاما 36.عدد20', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(444, 'تيكنو استيكر 500مللي ', NULL, NULL, 10, 11, 'POU', NULL, '', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(445, ' ديكلازيو coccl clazu', NULL, NULL, 7, 30, 'POU', NULL, 'استيكر.بلاستيك1000مللي كرتون ابيض ساده 36.عدد12', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(446, ' ديكلازيو coccl clazu استيكر 1000مللي ', NULL, NULL, 10, 11, 'POU', NULL, '', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(447, ' جراند grand seloz ', NULL, NULL, 7, 30, 'POU', NULL, 'استيكر.بلاستيك1000مللي كرتون ابيض ساده 36.عدد12', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(448, ' جراند grand seloz  استيكر1000مللي ', NULL, NULL, 10, 11, 'POU', NULL, '', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(449, 'اكتيفوس', NULL, NULL, 7, 30, 'POU', NULL, 'استيكر.بلاستيك عسلي100مللي.غطاء دبله حمرا.كرتون جاما مطبوع محلي.عدد50', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(450, 'اكتيفوس استيكر 100مللي ', NULL, NULL, 10, 11, 'POU', NULL, 'استيكر.بلاستيك250مللي.كرتون ابيض ساده جاما.عدد25 ', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(451, 'اكتيفوس استيكر 250مللي ', NULL, NULL, 10, 11, 'POU', NULL, 'استيكر.بلاستيك1000مللي كرتون ابيض ساده 36.عدد12', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(452, 'اكتيفوس استيكر 1000مللي ', NULL, NULL, 10, 11, 'POU', NULL, '', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(453, ' ه+ سيلنيوم', NULL, NULL, 7, 30, 'POU', NULL, 'استيكر.بلاستيك عسلي100مللي.غطاء دبله حمرا.كرتون جاما مطبوع محلي.عدد50', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(454, ' ه+ سيلنيوم استيكر 100مللي ', NULL, NULL, 10, 11, 'POU', NULL, 'استيكر.بلاستيك250مللي.كرتون ابيض ساده جاما.عدد25 ', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(455, ' ه+ سيلنيوم استيكر 250مللي ', NULL, NULL, 10, 11, 'POU', NULL, 'استيكر.بلاستيك1000مللي كرتون ابيض ساده 36.عدد12', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(456, ' ه+ سيلنيوم استيكر 1000مللي ', NULL, NULL, 10, 11, 'POU', NULL, '', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(457, ' اكتيفيتور', NULL, NULL, 7, 24, 'POU', NULL, 'استيكر.بلاستيك عسلي100مللي.غطاء دبله حمرا.كرتون جاما مطبوع محلي.عدد50', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(458, ' اكتيفيتور استيكر 100مللي ', NULL, NULL, 10, 11, 'POU', NULL, '', 'each', 7, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(459, ' ليفوكتينLevoctin', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،بلاستيك مدور 50مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد42', 'each', 8, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(460, ' ليفوكتينLevoctin استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 8, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(461, ' ليفوكتينLevoctin نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 8, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(462, ' ليفوكتينLevoctin علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 8, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(463, ' انرو فلوكس    Enrofloxacin', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد36', 'each', 8, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(464, ' انرو فلوكس    Enrofloxacin استيكر', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 8, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(465, ' انرو فلوكس    Enrofloxacin نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 8, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(466, ' انرو فلوكس    Enrofloxacin علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 8, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(467, '  ليفوكتين سوبر  Levoctin ', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،بلاستيك نص دايره  50مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد42', 'each', 8, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(468, '  ليفوكتين سوبر  Levoctin  استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 8, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(469, '  ليفوكتين سوبر  Levoctin  نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 8, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(470, '  ليفوكتين سوبر  Levoctin  علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 8, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(471, ' ليفو فوس Levo phos', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد30', 'each', 8, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(472, ' ليفو فوس Levo phos استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 8, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(473, ' ليفو فوس Levo phos نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 8, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(474, ' ليفو فوس Levo phos علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 8, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(475, ' بليكس ايفو plex evo', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد30', 'each', 8, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(476, ' بليكس ايفو plex evo استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 8, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(477, ' بليكس ايفو plex evo نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 8, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(478, ' بليكس ايفو plex evo علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 8, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(479, ' مومكتين momcten', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،بلاستيك نص دايره50مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد42', 'each', 8, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(480, ' مومكتين momcten استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 8, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(481, ' مومكتين momcten نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 8, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(482, ' مومكتين momcten علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 8, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(483, ' زاليفو zalevo', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد30', 'each', 8, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(484, ' زاليفو zalevo استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 8, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(485, ' زاليفو zalevo نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 8, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(486, ' زاليفو zalevo علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 8, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(487, ' باور جان POWER GAN', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 50مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد42', 'each', 8, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(488, ' باور جان POWER GAN استيكر  ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 8, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(489, ' باور جان POWER GAN نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 8, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(490, ' باور جان POWER GAN علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 8, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(491, 'ديليفو  DIALLEV', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر100مللي، استيكر 25جرام،علبه،بلاستيك ابيض 100مللي،غطاء دبله ابيض ،كرتون ابيض ساده . عدد48', 'each', 8, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(492, 'ديليفو  DIALLEV استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 8, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(493, 'ديليفو  DIALLEV نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 8, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(494, 'ديليفو  DIALLEV علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 8, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(495, '  مارليت MARILYTE', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر100مللي، استيكر 25جرام،علبه،بلاستيك ابيض 100مللي،غطاء دبله ابيض ،كرتون ابيض ساده . عدد48', 'each', 8, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(496, '  مارليت MARILYTE استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 8, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(497, '  مارليت MARILYTE نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 8, NULL, 0.00, NULL, 0, '2025-10-31 01:14:01', '2025-10-31 01:14:01'),
(498, '  مارليت MARILYTE علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 8, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(499, 'علامه ماىيه مربع ', NULL, NULL, 10, 14, 'INJ', NULL, '', 'each', 8, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(500, 'علامه ماىيه دايره', NULL, NULL, 10, 14, 'INJ', NULL, '', 'each', 8, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(501, ' هيبتاتونك hepta tonic', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون فارما  لاند . عدد20', 'each', 9, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(502, ' هيبتاتونك hepta tonic استيكر', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 9, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(503, ' هيبتاتونك hepta tonic نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 9, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(504, ' هيبتاتونك hepta tonic علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 9, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(505, ' ديكلو لاند DICLO LAND 5%', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون فارما  لاند . عدد20', 'each', 9, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(506, ' ديكلو لاند DICLO LAND 5% استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 9, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(507, ' ديكلو لاند DICLO LAND 5% نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 9, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(508, ' ديكلو لاند DICLO LAND 5% علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 9, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(509, ' فيوتشر ماك سوبر fu mac super', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،بلاستيك نص دايره 50مللي ،فيليب لبني،كاوتش رمادي،كرتون فيوتشر. عدد10', 'each', 10, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(510, ' فيوتشر ماك سوبر fu mac super استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 10, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(511, ' فيوتشر ماك سوبر fu mac super نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 10, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(512, ' فيوتشر ماك سوبر fu mac super علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 10, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(513, ' فيوتشر ماك fu mac ', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،بلاستيك  مدور 50مللي ،فيليب لبني،كاوتش رمادي،كرتون فيوتشر. عدد10', 'each', 10, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(514, ' فيوتشر ماك fu mac  استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 10, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(515, ' فيوتشر ماك fu mac  نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 10, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(516, ' فيوتشر ماك fu mac  علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 10, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(517, ' فيوتشر فوس fu  phos', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون فيوتشر . عدد30', 'each', 10, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(518, ' فيوتشر فوس fu  phos استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 10, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(519, ' فيوتشر فوس fu  phos نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 10, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(520, ' فيوتشر فوس fu  phos علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 10, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(521, '  فيوتشر زال fu zal', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون فيوتشر . عدد30', 'each', 10, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(522, '  فيوتشر زال fu zal استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 10, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(523, '  فيوتشر زال fu zal نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 10, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(524, '  فيوتشر زال fu zal علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 10, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(525, ' فيوتشر بليكس fu plex', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون فيوتشر . عدد30', 'each', 10, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(526, ' فيوتشر بليكس fu plex استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 10, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(527, ' فيوتشر بليكس fu plex نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 10, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(528, ' فيوتشر بليكس fu plex علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 10, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(529, ' فيوتشر ديكلو مول  fu DICLO MOL', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون فيوتشر . عدد30', 'each', 10, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(530, ' فيوتشر ديكلو مول  fu DICLO MOL استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 10, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(531, ' فيوتشر ديكلو مول  fu DICLO MOL نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 10, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(532, ' فيوتشر ديكلو مول  fu DICLO MOL علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 10, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(533, ' بايو زال bio zal', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد30', 'each', 10, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(534, ' بايو زال bio zal استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 10, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(535, ' بايو زال bio zal نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 10, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(536, ' بايو زال bio zal علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 10, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(537, ' هاي جاين HIGH GAIN', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد30', 'each', 10, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(538, ' هاي جاين HIGH GAIN استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 10, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(539, ' هاي جاين HIGH GAIN نشره  ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 10, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(540, ' هاي جاين HIGH GAIN علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 10, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(541, ' رو مكين', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،بلاستيك مدور50 مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد35', 'each', 10, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(542, ' رو مكين استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 10, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(543, ' رو مكين نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 10, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(544, ' رو مكين علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 10, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(545, ' كاتو زال CATO ZAL', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد30', 'each', 11, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(546, ' كاتو زال CATO ZAL استيكر', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 11, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(547, ' كاتو زال CATO ZAL نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 11, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(548, ' كاتو زال CATO ZAL علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 11, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(549, ' مالتي فيتامين MULTI VITAMIN', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد30', 'each', 11, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(550, ' مالتي فيتامين MULTI VITAMIN استيكر', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 11, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(551, ' مالتي فيتامين MULTI VITAMIN نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 11, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(552, ' مالتي فيتامين MULTI VITAMIN علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 11, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(553, ' بيرو فلام PERO FLAM', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد30', 'each', 11, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(554, ' بيرو فلام PERO FLAM استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 11, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(555, ' بيرو فلام PERO FLAM نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 11, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(556, ' بيرو فلام PERO FLAM علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 11, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(557, ' بيرو مكتين peromectin', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،بلاستيك مدور 50مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد42', 'each', 11, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(558, ' بيرو مكتين peromectin استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 11, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(559, ' بيرو مكتين peromectin نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 11, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(560, ' بيرو مكتين peromectin علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 11, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(561, ' بيرو مكتين سوبر peromectin super', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،بلاستيك نص دايره 50مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد40', 'each', 11, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(562, ' بيرو مكتين سوبر peromectin super استيكر', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 11, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(563, ' بيرو مكتين سوبر peromectin super نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 11, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(564, ' بيرو مكتين سوبر peromectin super علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 11, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(565, ' بيرو بان pero pan', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد30', 'each', 11, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(566, ' بيرو بان pero pan استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 11, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(567, ' بيرو بان pero pan نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 11, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(568, ' بيرو بان pero pan علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 11, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(569, ' سوبر فوس SUPER PHOS', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد30', 'each', 11, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(570, ' سوبر فوس SUPER PHOS استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 11, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(571, ' سوبر فوس SUPER PHOS نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 11, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(572, ' سوبر فوس SUPER PHOS علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 11, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(573, '  كايز فلوكس KALZA FLOX ', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد35', 'each', 11, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(574, '  كايز فلوكس KALZA FLOX استيكر  ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 11, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(575, '  كايز فلوكس KALZA FLOX نشره  ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 11, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(576, '  كايز فلوكس KALZA FLOX علبه  ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 11, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02');
INSERT INTO `products` (`id`, `name`, `sku`, `barcode`, `category_id`, `subcategory_id`, `type_e`, `type`, `description`, `unit`, `customer_id`, `image`, `unit_price`, `cost_price`, `min_stock_level`, `created_at`, `updated_at`) VALUES
(577, ' بيرو بليكس PERO plex', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد30', 'each', 11, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(578, ' بيرو بليكس PERO plex استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 11, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(579, ' بيرو بليكس PERO plex نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 11, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(580, ' بيرو بليكس PERO plex علب ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 11, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(581, ' جولدن ماك golden mac', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،بلاستيك نص دايره 50مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد35', 'each', 12, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(582, ' جولدن ماك golden mac استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 12, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(583, ' جولدن ماك golden mac نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 12, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(584, ' جولدن ماك golden mac علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 12, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(585, ' جولدن بليكس golden plex', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد30', 'each', 12, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(586, ' جولدن بليكس golden plex استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 12, NULL, 0.00, NULL, 0, '2025-10-31 01:14:02', '2025-10-31 01:14:02'),
(587, ' جولدن بليكس golden plex نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 12, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(588, ' جولدن بليكس golden plex علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 12, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(589, ' جولدن ماك سوبر golden mac super', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،بلاستيك نص دايره 50مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد35', 'each', 12, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(590, ' جولدن ماك سوبر golden mac super استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 12, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(591, ' جولدن ماك سوبر golden mac super نشره  ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 12, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(592, ' جولدن ماك سوبر golden mac super علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 12, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(593, ' جي كال g.cal', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد30', 'each', 12, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(594, ' جي كال g.cal استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 12, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(595, ' جي كال g.cal نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 12, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(596, ' جي كال g.cal علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 12, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(597, ' جولدن انرو golden enro', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد30', 'each', 12, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(598, ' جولدن انرو golden enro استيكر  ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 12, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(599, ' جولدن انرو golden enro نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 12, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(600, ' جولدن انرو golden enro علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 12, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(601, ' نيو زال جولدن   new zal golden ', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد30', 'each', 12, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(602, ' نيو زال جولدن   new zal golden  استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 12, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(603, ' نيو زال جولدن   new zal golden  نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 12, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(604, ' نيو زال جولدن   new zal golden  علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 12, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(605, ' جولدن فوس    golden PHOS', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده . عدد30', 'each', 12, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(606, ' جولدن فوس    golden PHOS استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 12, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(607, ' جولدن فوس    golden PHOS نشره  ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 12, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(608, ' جولدن فوس    golden PHOS علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 12, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(609, 'جراند فوس ', NULL, NULL, 7, 30, 'POU', NULL, '', 'each', 12, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(610, 'جراند فوس استيكر 100مللي ', NULL, NULL, 10, 11, 'POU', NULL, 'استيكر.بلاستيك1000مللي كرتون ابيض ساده 36.عدد12', 'each', 12, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(611, 'جراند فوس  استيكر 250مللي ', NULL, NULL, 10, 11, 'POU', NULL, '', 'each', 12, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(612, 'جراند فوس  استيكر 1000مللي ', NULL, NULL, 10, 11, 'POU', NULL, 'استيكر.بلاستيك1000مللي كرتون ابيض ساده 36.عدد12', 'each', 12, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(613, 'ا د جراند ', NULL, NULL, 7, 30, 'POU', NULL, '', 'each', 12, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(614, 'ا د جراند  استيكر 100مللي ', NULL, NULL, 10, 11, 'POU', NULL, '', 'each', 12, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(615, 'ا د جراند  استيكر250مللي ', NULL, NULL, 10, 11, 'POU', NULL, '', 'each', 12, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(616, 'ا د جراند  استيكر 1000مللي ', NULL, NULL, 10, 11, 'POU', NULL, '', 'each', 12, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(617, ' فسفو ماكس FOSFOMAX', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون زودياك  . عدد30', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(618, ' فسفو ماكس FOSFOMAXاستيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(619, ' فسفو ماكس FOSFOMAX نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(620, ' فسفو ماكس FOSFOMAX علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(621, ' ايفر ميك سوبر احمرEVERMEC SUPER', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه، بلاستيك نص دايره 50مللي ،فيليب لبني،كاوتش رمادي،كرتون زودياك  . عدد35', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(622, ' ايفر ميك سوبر احمرEVERMEC SUPER استيكر', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(623, ' ايفر ميك سوبر احمرEVERMEC SUPER نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(624, ' ايفر ميك سوبر احمرEVERMEC SUPER علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(625, ' ايفر ميك سوبر اسودEVERMEC SUPER ', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه، بلاستيك نص دايره 50مللي ،فيليب لبني،كاوتش رمادي،كرتون زودياك  . عدد35', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(626, ' ايفر ميك سوبر اسودEVERMEC SUPER  استيكر', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(627, ' ايفر ميك سوبر اسودEVERMEC SUPER  نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(628, ' ايفر ميك سوبر اسودEVERMEC SUPER  علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(629, ' اوكتا جان بلس octagan plus', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه، باكيت خارجي. زجاج شفاف 50مللي ،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده جاما  . عدد35', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(630, ' اوكتا جان بلس octagan plus استيكر', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(631, ' اوكتا جان بلس octagan plus نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(632, ' اوكتا جان بلس octagan plus علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(633, ' اوكتا جان octagan', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه، باكيت خارجي. زجاج شفاف 50مللي ،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده جاما  . عدد35', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(634, ' اوكتا جان octagan استيكر  ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(635, ' اوكتا جان octagan نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(636, ' اوكتا جان octagan علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(637, ' اوكسي فورت oxyforte', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون زودياك  . عدد30', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(638, ' اوكسي فورت oxyforte استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(639, ' اوكسي فورت oxyforte نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(640, ' اوكسي فورت oxyforte علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(641, ' ليفر جان LIVER GEN ', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده   . عدد30', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(642, ' ليفر جان LIVER GEN استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(643, ' ليفر جان LIVER GEN نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(644, ' ليفر جان LIVER GEN علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(645, '  مكتيزان MECTIZAN', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده   . عدد30', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(646, '  مكتيزان MECTIZAN استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(647, '  مكتيزان MECTIZAN نشره  ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(648, '  مكتيزان MECTIZAN علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(649, ' انرو جيكت ENRO JECT', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده   . عدد12', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(650, ' انرو جيكت ENRO JECT استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(651, ' انرو جيكت ENRO JECT نشره ', NULL, NULL, 10, 12, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون زودياك   . عدد30', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(652, ' انرو جيكت ENRO JECT علبه ', NULL, NULL, 10, 13, 'INJ', NULL, 'مطبوعات ', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(653, ' ديكلو مول DICLO MOL', NULL, NULL, 7, 30, 'INJ', NULL, '', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(654, ' ديكلو مول DICLO MOL استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, '', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(655, ' ديكلو مول DICLO MOL نشره ', NULL, NULL, 10, 12, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده زودياك   . عدد12', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(656, ' ديكلو مول DICLO MOL علبه ', NULL, NULL, 10, 13, 'INJ', NULL, 'مطبوعات ', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(657, ' نوتريمين NUTRIMIN', NULL, NULL, 7, 30, 'INJ', NULL, '', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(658, ' نوتريمين NUTRIMIN استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, '', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(659, ' نوتريمين NUTRIMIN نشره ', NULL, NULL, 10, 12, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون بايو فيت  . عدد30', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(660, ' نوتريمين NUTRIMIN علبه ', NULL, NULL, 10, 13, 'INJ', NULL, 'مطبوعات ', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(661, ' اكسترا فوس تونك EXTREPHOS TONIC ', NULL, NULL, 7, 30, 'INJ', NULL, '', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(662, ' اكسترا فوس تونك EXTREPHOS TONIC  استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, '', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(663, ' اكسترا فوس تونك EXTREPHOS TONIC  نشره ', NULL, NULL, 10, 12, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده  . عدد20', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(664, ' اكسترا فوس تونك EXTREPHOS TONIC  علبه ', NULL, NULL, 10, 13, 'INJ', NULL, 'مطبوعات ', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:03', '2025-10-31 01:14:03'),
(665, 'RESPOVAC', NULL, NULL, 7, 30, 'INJ', NULL, '', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(666, 'استيكر RESPOVAC', NULL, NULL, 10, 11, 'INJ', NULL, '', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(667, 'نشره RESPOVAC', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(668, 'علبه RESPOVAC', NULL, NULL, 10, 13, 'INJ', NULL, 'استيكر.بلاستيك 500 جرام .كرتون ابيض ساده 36.عدد 16', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(669, 'كوكسي برو COCCI PRO', NULL, NULL, 7, 30, 'POU', NULL, 'استيكر.بلاستيك 1000جرام .كرتون ابيض ساده 36.عدد12', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(670, 'كوكسي برو COCCI PRO استيكر 50مللي ', NULL, NULL, 10, 11, 'POU', NULL, '', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(671, 'كوكسي برو COCCI PRO استيكر 1000مللي', NULL, NULL, 10, 11, 'POU', NULL, 'استيكر.بلاستيك 500 جرام .كرتون ابيض ساده 36.عدد 16', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(672, 'انرو ENRO20%', NULL, NULL, 7, 30, 'POU', NULL, '', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(673, 'انرو ENRO20% استيكر500جرام ', NULL, NULL, 10, 11, 'POU', NULL, 'استيكر.بلاستيك 500 جرام .كرتون ابيض ساده 36.عدد 16', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(674, 'كولستين COLISTIN ', NULL, NULL, 7, 30, 'POU', NULL, '', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(675, 'كولستين COLISTIN  استيكر 500جرام ', NULL, NULL, 10, 11, 'POU', NULL, 'استيكر.بلاستيك 500 جرام .كرتون ابيض ساده 36.عدد 16', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(676, 'انروكس ENROX 20%', NULL, NULL, 7, 30, 'POU', NULL, '', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(677, 'انروكس ENROX 20% استيكر 500جرام ', NULL, NULL, 10, 11, 'POU', NULL, 'استيكر.بلاستيك 500 جرام .كرتون ابيض ساده 36.عدد 16', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(678, 'امبروكس AMPROCOX 25% ', NULL, NULL, 7, 30, 'POU', NULL, '', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(679, 'امبروكس AMPROCOX 25%  استيكر 500جرام', NULL, NULL, 10, 11, 'POU', NULL, '', 'each', 13, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(680, ' شيلد ماك سوبرshield mac ', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،بلاستيك نص دايره 50مللي ،فيليب لبني،كاوتش رمادي،كرتون شيلد    . عدد35', 'each', 14, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(681, ' شيلد ماك سوبرshield mac استيكر  ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 14, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(682, ' شيلد ماك سوبرshield mac  نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 14, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(683, ' شيلد ماك سوبرshield mac  علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 14, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(684, ' باور شيلد POWER SHIELD', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون شيلد    . عدد30', 'each', 14, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(685, ' باور شيلد POWER SHIELD استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 14, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(686, ' باور شيلد POWER SHIELD نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 14, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(687, ' باور شيلد POWER SHIELD علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 14, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(688, ' فوس شيلد PHOS SHIELD', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون شيلد    . عدد30', 'each', 14, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(689, ' فوس شيلد PHOS SHIELD استيكر  ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 14, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(690, ' فوس شيلد PHOS SHIELD نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 14, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(691, ' فوس شيلد PHOS SHIELD علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 14, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(692, 'تكنو ماك سوبر TECHNO MAC SUPER', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،بلاستيك مدور 50مللي ،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده جاما   . عدد35', 'each', 15, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(693, 'تكنو ماك سوبر TECHNO MAC SUPER استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 15, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(694, 'تكنو ماك سوبر TECHNO MAC SUPER نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 15, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(695, 'تكنو ماك سوبر TECHNO MAC SUPER علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 15, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(696, 'تكنو ماك  TECHNO MAC ', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،بلاستيك مدور 50مللي ،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده جاما   . عدد35', 'each', 15, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(697, 'تكنو ماك  TECHNO MAC  استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 15, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(698, 'تكنو ماك  TECHNO MAC  نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 15, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(699, 'تكنو ماك  TECHNO MAC  علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 15, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(700, ' فير بلس fer plus', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي  ،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده جاما   . عدد36', 'each', 16, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(701, ' فير بلس fer plus استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 16, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(702, ' فير بلس fer plus نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 16, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(703, ' فير بلس fer plus علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 16, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(704, 'بروتين سوبرprotein super', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي  ،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده جاما   . عدد36', 'each', 16, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(705, 'بروتين سوبرprotein super استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 16, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(706, 'بروتين سوبرprotein super نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 16, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(707, 'بروتين سوبرprotein super علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 16, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(708, ' امينو بلس amino plus', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي  ،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده جاما   . عدد36', 'each', 16, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(709, ' امينو بلس amino plus استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 16, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(710, ' امينو بلس amino plus نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 16, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(711, ' امينو بلس amino plus علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 16, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(712, '  اوفي بلكس ovi plex', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي  ،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده جاما   . عدد36', 'each', 16, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(713, '  اوفي بلكس ovi plex استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 16, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(714, '  اوفي بلكس ovi plex نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 16, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(715, '  اوفي بلكس ovi plex علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 16, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(716, ' ايفو بان ترند سوبرlvopantrend super', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،بلاستيك مدور 50مللي ،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده جاما   . عدد35', 'each', 16, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(717, ' ايفو بان ترند سوبرlvopantrend super استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 16, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(718, ' ايفو بان ترند سوبرlvopantrend super نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 16, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(719, ' ايفو بان ترند سوبرlvopantrend super علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 16, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(720, 'اميوفالimmuval  ', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي  ،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده جاما   . عدد36', 'each', 16, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(721, 'اميوفالimmuval   استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 16, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(722, 'اميوفالimmuval   نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 16, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(723, 'اميوفالimmuval   علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 16, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(724, ' ايفر مكتين احمرivermectin ', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،بلاستيك مدور 50مللي ،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده جاما   . عدد35', 'each', 16, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(725, ' ايفر مكتين احمرivermectin  استيكر', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 16, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(726, ' ايفر مكتين احمرivermectin  نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 16, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(727, ' ايفر مكتين احمرivermectin  علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 16, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(728, ' ايفر مكتين ازرقivermectin', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،بلاستيك مدور 50مللي ،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده جاما   . عدد35', 'each', 16, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(729, ' ايفر مكتين ازرقivermectin استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 16, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(730, ' ايفر مكتين ازرقivermectin نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 16, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(731, ' ايفر مكتين ازرقivermectin علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 16, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(732, ' مالتي فيتامين بلس MULTIVITAMIN PLUS', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي  ،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده جاما   . عدد36', 'each', 16, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(733, ' مالتي فيتامين بلس MULTIVITAMIN PLUS استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 16, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(734, ' مالتي فيتامين بلس MULTIVITAMIN PLUS نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 16, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(735, ' مالتي فيتامين بلس MULTIVITAMIN PLUS علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 16, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(736, ' مالتي فيتامين MULTIVITAMIN  ', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي  ،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده جاما   . عدد36', 'each', 16, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(737, ' مالتي فيتامين MULTIVITAMIN   استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 16, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(738, ' مالتي فيتامين MULTIVITAMIN   نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 16, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(739, ' مالتي فيتامين MULTIVITAMIN   علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 16, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(740, ' نيور زال neur zal', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده    . عدد30', 'each', 17, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(741, ' نيور زال neur zal استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 17, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(742, ' نيور زال neur zal نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 17, NULL, 0.00, NULL, 0, '2025-10-31 01:14:04', '2025-10-31 01:14:04'),
(743, ' نيور زال neur zal علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 17, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(744, ' نيور ميك سوبرneur mec super', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه، بلاستيك مدور 50مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده    . عدد35', 'each', 17, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(745, ' نيور ميك سوبرneur mec super استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 17, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(746, ' نيور ميك سوبرneur mec super نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 17, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(747, ' نيور ميك سوبرneur mec superعلبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 17, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(748, ' نيور ميك neur mec ', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه، بلاستيك مدور 50مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده    . عدد35', 'each', 17, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(749, ' نيور ميك neur mec  استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 17, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(750, ' نيور ميك neur mec  نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 17, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(751, ' نيور ميك neur mec  علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 17, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(752, ' نيور مكتين سوبر neur mectin super', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه، بلاستيك نص دايره 50مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده    . عدد35', 'each', 17, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(753, ' نيور مكتين سوبر neur mectin super استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 17, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(754, ' نيور مكتين سوبر neur mectin super نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 17, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(755, ' نيور مكتين سوبر neur mectin super علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 17, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(756, ' نيور بليكس neur PLEX', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده    . عدد30', 'each', 17, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(757, ' نيور بليكس neur PLEX استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 17, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(758, ' نيور بليكس neur PLEX نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 17, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(759, ' نيور بليكس neur PLEX علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 17, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(760, ' نيور ديكلو neur duclo ', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده    . عدد30', 'each', 17, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(761, ' نيور ديكلو neur duclo  استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 17, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(762, ' نيور ديكلو neur duclo  نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 17, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(763, ' نيور ديكلو neur duclo  علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 17, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(764, ' نيور ام بولد neur am bold', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه، زجاج شفاف 50مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده    . عدد42', 'each', 17, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(765, ' نيور ام بولد neur am bold استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 17, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(766, ' نيور ام بولد neur am bold نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 17, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(767, ' نيور ام بولد neur am bold علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 17, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(768, ' ليو زال leo zal', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون ليون    . عدد12', 'each', 18, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(769, ' ليو زال leo zal استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 18, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(770, ' ليو زال leo zal نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 18, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(771, ' ليو زال leo zal علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 18, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(772, ' فوس بلس phos plus', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون ليون    . عدد12', 'each', 18, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(773, ' فوس بلس phos plus استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 18, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(774, ' فوس بلس phos plus نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 18, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(775, ' فوس بلس phos plus علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 18, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(776, ' ديكلو مول diclo mol', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون ليون    . عدد12', 'each', 18, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(777, ' ديكلو مول diclo mol استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 18, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(778, ' ديكلو مول diclo mol نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 18, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(779, ' ديكلو مول diclo mol علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 18, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(780, ' ليو ماك leo mac', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،بلاستيك مدور50مللي،فيليب لبني،كاوتش رمادي،كرتون ليون    . عدد12', 'each', 18, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(781, ' ليو ماك leo mac استيكر  ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 18, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(782, ' ليو ماك leo mac نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 18, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(783, ' ليو ماك leo mac علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 18, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(784, ' ليو ماك بلس leo mac PLUS', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،بلاستيك مدور50مللي،فيليب لبني،كاوتش رمادي،كرتون ليون    . عدد12', 'each', 18, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(785, ' ليو ماك بلس leo mac PLUS استيكر', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 18, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(786, ' ليو ماك بلس leo mac PLUS نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 18, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(787, ' ليو ماك بلس leo mac PLUS علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 18, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(788, ' كاتو زال COT ZAL', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده  . عدد30', 'each', 18, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(789, ' كاتو زال COT ZAL استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 18, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(790, ' كاتو زال COT ZAL نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 18, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(791, ' كاتو زال COT ZAL علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 18, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(792, ' ليو ماك سوبرLEO MaC SUPER', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،بلاستيك مدور50مللي،فيليب لبني،كاوتش رمادي،كرتون ليون    . عدد12', 'each', 18, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(793, ' ليو ماك سوبرLEO MaC SUPER استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 18, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(794, ' ليو ماك سوبرLEO MaC SUPER نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 18, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(795, ' ليو ماك سوبرLEO MaC SUPER علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 18, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(796, ' تي بليكس T PLEX', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون ليون    . عدد12', 'each', 18, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(797, ' تي بليكس T PLEX استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 18, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(798, ' تي بليكس T PLEX نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 18, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(799, ' تي بليكس T PLEX علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 18, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(800, ' كال فوماج CAL PHOMEG', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون ليون    . عدد12', 'each', 18, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(801, ' كال فوماج CAL PHOMEG استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 18, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(802, ' كال فوماج CAL PHOMEG نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 18, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(803, ' كال فوماج CAL PHOMEG علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 18, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(804, ' اكس ماك x mac', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده  . عدد30', 'each', 19, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(805, ' اكس ماك x macاستيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 19, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(806, ' اكس ماك x mac نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 19, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(807, ' اكس ماك x mac علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 19, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(808, ' اوميجا زال omeg ksal', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون اوميجا مصر  . عدد30', 'each', 20, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(809, ' اوميجا زال omeg ksal استيكر', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 20, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(810, ' اوميجا زال omeg ksal نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 20, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(811, ' اوميجا زال omeg ksal علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 20, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(812, ' اوميجا زال omeg zal', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون اوميجا مصر  . عدد30', 'each', 20, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(813, ' اوميجا زال omeg zal استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 20, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(814, ' اوميجا زال omeg zal نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 20, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(815, ' اوميجا زال omeg zal علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 20, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(816, ' اوميجا فوس omeg phos', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون اوميجا مصر  . عدد30', 'each', 20, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(817, ' اوميجا فوس omeg phos استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 20, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(818, ' اوميجا فوس omeg phos نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 20, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(819, ' اوميجا فوس omeg phos علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 20, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(820, ' اوميجا فلام omeg flam', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون اوميجا مصر  . عدد30', 'each', 20, NULL, 0.00, NULL, 0, '2025-10-31 01:14:05', '2025-10-31 01:14:05'),
(821, ' اوميجا فلام omeg flam استيكر  ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 20, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(822, ' اوميجا فلام omeg flam نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 20, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(823, ' اوميجا فلام omeg flam علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 20, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(824, ' اوميجا اوكسي omeg oxy', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون اوميجا مصر  . عدد30', 'each', 20, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(825, ' اوميجا اوكسي omeg oxy استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 20, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(826, ' اوميجا اوكسي omeg oxy نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 20, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(827, ' اوميجا اوكسي omeg oxy علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 20, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(828, ' اومكتين  OMECTIN ', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون اوميجا مصر  . عدد35', 'each', 20, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(829, ' اومكتين  OMECTIN  استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 20, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(830, ' اومكتين  OMECTIN  نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 20, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(831, ' اومكتين  OMECTIN  علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 20, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(832, ' اومكتين سوبر  OMECTIN SUPER', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون اوميجا مصر  . عدد35', 'each', 20, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(833, ' اومكتين سوبر  OMECTIN SUPERاستيكر', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 20, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(834, ' اومكتين سوبر  OMECTIN SUPER نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 20, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(835, ' اومكتين سوبر  OMECTIN SUPER علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 20, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(836, 'ايزوسيل ه-سيلينيوم', NULL, NULL, 7, 30, 'POU', NULL, '', 'each', 21, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(837, 'ايزوسيل ه-سيلينيوم استيكر 100مللي', NULL, NULL, 10, 11, 'POU', NULL, 'استيكر .بلاستيك ابيض 100مللي .غطاء دبله ابيض .كرتون ابيض ساده جاما.عدد 56', 'each', 21, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(838, 'ايزوسيل ه-سيلينيوم استيكر 500مللي', NULL, NULL, 10, 11, 'POU', NULL, 'استيكر .بلاستيك 500مللي .كرتون ابيض ساده جاما 36.عدد 20', 'each', 21, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(839, 'ايزوسيل ه-سيلينيوم استيكر 1000مللي', NULL, NULL, 10, 11, 'POU', NULL, 'استيكر .بلاستيك 1000مللي .كرتون ابيض ساده جاما36.عدد 12', 'each', 21, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(840, 'ايزوفيت اد3ه', NULL, NULL, 7, 30, 'POU', NULL, '', 'each', 21, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(841, 'ايزوفيت اد3ه استيكر 100مللي ', NULL, NULL, 10, 11, 'POU', NULL, 'استيكر .بلاستيك ابيض 100مللي .غطاء دبله ابيض .كرتون ابيض ساده جاما.عدد 56', 'each', 21, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(842, 'ايزوفيت اد3ه استيكر 500مللي ', NULL, NULL, 10, 11, 'POU', NULL, 'استيكر .بلاستيك 500مللي .كرتون ابيض ساده جاما 36.عدد 20', 'each', 21, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(843, 'ايزوفيت اد3ه استيكر1000مللي ', NULL, NULL, 10, 11, 'POU', NULL, 'استيكر .بلاستيك 1000مللي .كرتون ابيض ساده جاما36.عدد 12', 'each', 21, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(844, 'ايزو فوس', NULL, NULL, 7, 30, 'POU', NULL, '', 'each', 21, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(845, 'ايزو فوس استيكر 100مللي ', NULL, NULL, 10, 11, 'POU', NULL, 'استيكر .بلاستيك ابيض 100مللي .غطاء دبله ابيض .كرتون ابيض ساده جاما.عدد 56', 'each', 21, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(846, 'ايزو فوس استيكر 500مللي ', NULL, NULL, 10, 11, 'POU', NULL, 'استيكر .بلاستيك 500مللي .كرتون ابيض ساده جاما 36.عدد 20', 'each', 21, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(847, 'ايزو فوس استيكر1000مملي ', NULL, NULL, 10, 11, 'POU', NULL, 'استيكر .بلاستيك 1000مللي .كرتون ابيض ساده جاما36.عدد 12', 'each', 21, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(848, 'سوبرانو اميون', NULL, NULL, 7, 30, 'POU', NULL, '', 'each', 21, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(849, 'سوبرانو اميون استيكر500مللي ', NULL, NULL, 10, 11, 'POU', NULL, 'استيكر .بلاستيك 500مللي .كرتون ابيض ساده جاما 36.عدد 20', 'each', 21, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(850, 'سوبرانو اميون استيكر1000مللي ', NULL, NULL, 10, 11, 'POU', NULL, 'استيكر .بلاستيك 1000مللي .كرتون ابيض ساده جاما36.عدد 12', 'each', 21, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(851, 'مالتيفيتور', NULL, NULL, 7, 30, 'POU', NULL, '', 'each', 21, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(852, 'مالتيفيتور استيكر 100مللي ', NULL, NULL, 10, 11, 'POU', NULL, 'استيكر .بلاستيك ابيض 100مللي .غطاء دبله ابيض .كرتون ابيض ساده جاما.عدد 56', 'each', 21, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(853, 'مالتيفيتور استيكر 500مللي ', NULL, NULL, 10, 11, 'POU', NULL, 'استيكر .بلاستيك 500مللي .كرتون ابيض ساده جاما 36.عدد 20', 'each', 21, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(854, 'مالتيفيتور استيكر 1000مللي ', NULL, NULL, 10, 11, 'POU', NULL, 'استيكر .بلاستيك 1000مللي .كرتون ابيض ساده جاما36.عدد 12', 'each', 21, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(855, 'ايزي توكس', NULL, NULL, 7, 30, 'POU', NULL, '', 'each', 21, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(856, 'ايزي توكس استيكر 100مللي', NULL, NULL, 10, 11, 'POU', NULL, 'استيكر .بلاستيك ابيض 100مللي .غطاء دبله ابيض .كرتون ابيض ساده جاما.عدد 56', 'each', 21, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(857, 'ايزي توكس استيكر500مللي ', NULL, NULL, 10, 11, 'POU', NULL, 'استيكر .بلاستيك 500مللي .كرتون ابيض ساده جاما 36.عدد 20', 'each', 21, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06');
INSERT INTO `products` (`id`, `name`, `sku`, `barcode`, `category_id`, `subcategory_id`, `type_e`, `type`, `description`, `unit`, `customer_id`, `image`, `unit_price`, `cost_price`, `min_stock_level`, `created_at`, `updated_at`) VALUES
(858, 'ايزي توكس استيكر1000مللي ', NULL, NULL, 10, 11, 'POU', NULL, 'استيكر .بلاستيك 1000مللي .كرتون ابيض ساده جاما36.عدد 12', 'each', 21, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(859, 'ليفورين ', NULL, NULL, 7, 30, 'POU', NULL, '', 'each', 21, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(860, 'ليفورين  استيكر100مللي ', NULL, NULL, 10, 11, 'POU', NULL, 'استيكر .بلاستيك ابيض 100مللي .غطاء دبله ابيض .كرتون ابيض ساده جاما.عدد 56', 'each', 21, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(861, 'ليفورين  استيكر500مللي', NULL, NULL, 10, 11, 'POU', NULL, 'استيكر .بلاستيك 500مللي .كرتون ابيض ساده جاما 36.عدد 20', 'each', 21, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(862, 'ليفورين  استيكر 1000مللي ', NULL, NULL, 10, 11, 'POU', NULL, 'استيكر .بلاستيك 1000مللي .كرتون ابيض ساده جاما36.عدد 12', 'each', 21, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(863, 'كوكريل', NULL, NULL, 7, 30, 'POU', NULL, '', 'each', 21, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(864, 'كوكريل استيكر 100مللي ', NULL, NULL, 10, 11, 'POU', NULL, 'استيكر .بلاستيك ابيض 100مللي .غطاء دبله ابيض .كرتون ابيض ساده جاما.عدد 56', 'each', 21, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(865, 'كوكريل استيكر500مللي ', NULL, NULL, 10, 11, 'POU', NULL, 'استيكر .بلاستيك 500مللي .كرتون ابيض ساده جاما 36.عدد 20', 'each', 21, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(866, 'كوكريل استيكر 1000مللي', NULL, NULL, 10, 11, 'POU', NULL, 'استيكر .بلاستيك 1000مللي .كرتون ابيض ساده جاما36.عدد 12', 'each', 21, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(867, 'مينتور', NULL, NULL, 7, 30, 'POU', NULL, '', 'each', 21, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(868, 'مينتور استيكر100مللي ', NULL, NULL, 10, 11, 'POU', NULL, 'استيكر .بلاستيك ابيض 100مللي .غطاء دبله ابيض .كرتون ابيض ساده جاما.عدد 56', 'each', 21, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(869, 'مينتور استيكر500مللي ', NULL, NULL, 10, 11, 'POU', NULL, 'استيكر .بلاستيك 500مللي .كرتون ابيض ساده جاما 36.عدد 20', 'each', 21, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(870, 'مينتور استيكر 1000مللي', NULL, NULL, 10, 11, 'POU', NULL, 'استيكر .بلاستيك 1000مللي .كرتون ابيض ساده جاما36.عدد 12', 'each', 21, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(871, 'اميوفير', NULL, NULL, 7, 30, 'POU', NULL, '', 'each', 21, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(872, 'اميوفير استيكر 100مللي ', NULL, NULL, 10, 11, 'POU', NULL, 'استيكر .بلاستيك ابيض 100مللي .غطاء دبله ابيض .كرتون ابيض ساده جاما.عدد 56', 'each', 21, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(873, 'اميوفير استيكر 500مللي ', NULL, NULL, 10, 11, 'POU', NULL, 'استيكر .بلاستيك 500مللي .كرتون ابيض ساده جاما 36.عدد 20', 'each', 21, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(874, 'اميوفير استيكر 1000مللي', NULL, NULL, 10, 11, 'POU', NULL, 'استيكر .بلاستيك 1000مللي .كرتون ابيض ساده جاما36.عدد 12', 'each', 21, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(875, 'هايبر تونك ', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده جاما  . عدد30', 'each', 22, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(876, 'هايبر تونك استيكر  ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 22, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(877, 'هايبر تونك  نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 22, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(878, 'هايبر تونك  علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 22, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(879, 'فوزال10%', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده جاما  . عدد30', 'each', 22, NULL, 0.00, NULL, 0, '2025-10-31 01:14:06', '2025-10-31 01:14:06'),
(880, 'فوزال10% استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 22, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(881, 'فوزال10% نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 22, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(882, 'فوزال10% علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 22, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(883, 'تولدين ب 20%', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده جاما  . عدد30', 'each', 22, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(884, 'تولدين ب 20% استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 22, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(885, 'تولدين ب 20% نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 22, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(886, 'تولدين ب 20% علبه', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 22, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(887, 'فلونين ', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج شفاف 50مللي ،فيليب لبني،كاوتش رمادي،كرتون ابيض جاما ساده . عدد30', 'each', 23, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(888, 'فلونين  استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 23, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(889, 'فلونين  نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 23, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(890, 'فلونين  علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 23, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(891, 'كيورامين  ', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه، بلاستيك نص دايره 50مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده جاما  . عدد30', 'each', 23, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(892, 'كيورامين   استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 23, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(893, 'كيورامين  نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 23, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(894, 'كيورامين   علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 23, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(895, '  اي بليكس E-PLEX', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده جاما  . عدد30', 'each', 23, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(896, '  اي بليكس E-PLEX استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 23, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(897, '  اي بليكس E-PLEX نشره  ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 23, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(898, '  اي بليكس E-PLEX علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 23, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(899, ' زومكتين سوبرzomectih super', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه، زجاج شفاف 50مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده جاما  . عدد36 ', 'each', 24, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(900, ' زومكتين سوبرzomectih super استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 24, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(901, ' زومكتين سوبرzomectih super نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 24, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(902, ' زومكتين سوبرzomectih super علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 24, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(903, ' مالتي مين multiamine', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده جاما  . عدد30', 'each', 24, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(904, ' مالتي مين multiamine استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 24, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(905, ' مالتي مين multiamine نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 24, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(906, ' مالتي مين multiamine علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 24, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(907, ' بايو زال BIO ZAL', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده جاما  . عدد30', 'each', 25, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(908, ' بايو زال BIO ZAL استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 25, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(909, ' بايو زال BIO ZAL نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 25, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(910, ' بايو زال BIO ZAL علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 25, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(911, ' بايو فوس BIO PHOS', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده جاما  . عدد30', 'each', 25, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(912, ' بايو فوس BIO PHOS استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 25, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(913, ' بايو فوس BIO PHOS نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 25, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(914, ' بايو فوس BIO PHOS علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 25, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(915, ' بايو مكتين BIOMECTIN', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه، بلاستيك  مدور  50مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده جاما  . عدد42 ', 'each', 25, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(916, ' بايو مكتين BIOMECTIN استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 25, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(917, ' بايو مكتين BIOMECTIN نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 25, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(918, ' بايو مكتين BIOMECTIN علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 25, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(919, ' بايو مكتين سوبر BIO MECTIN SUPER', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه، بلاستيك نص دايره 50مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده جاما  . عدد35 ', 'each', 25, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(920, ' بايو مكتين سوبر BIO MECTIN SUPER استيكر', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 25, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(921, ' بايو مكتين سوبر BIO MECTIN SUPER نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 25, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(922, ' بايو مكتين سوبر BIO MECTIN SUPER علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 25, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(923, ' بايو بليكس BIO PLEX', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده جاما  . عدد30', 'each', 25, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(924, ' بايو بليكس BIO PLEX استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 25, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(925, ' بايو بليكس BIO PLEX نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 25, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(926, ' بايو بليكس BIO PLEX علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 25, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(927, ' بايو ديكلو BIO DICLO', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده جاما  . عدد30', 'each', 25, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(928, ' بايو ديكلو BIO DICLO استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 25, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(929, ' بايو ديكلو BIO DICLO نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 25, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(930, ' بايو ديكلو BIO DICLO علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 25, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(931, ' بايو اوكسي BIO OXY', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده جاما  . عدد30', 'each', 25, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(932, ' بايو اوكسي BIO OXY استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 25, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(933, ' بايو اوكسي BIO OXY نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 25, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(934, ' بايو اوكسي BIO OXY علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 25, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(935, ' ايفر توك IVERTOK', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده جاما  . عدد30', 'each', 26, NULL, 0.00, NULL, 0, '2025-10-31 01:14:07', '2025-10-31 01:14:07'),
(936, ' ايفر توك IVERTOK استيكر', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 26, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(937, ' ايفر توك IVERTOK نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 26, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(938, ' ايفر توك IVERTOK علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 26, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(939, ' تراي بليكسرTRY PLEXER', NULL, NULL, 7, 30, 'INJ', NULL, 'استيكر، نشره،علبه،زجاج عسلي 100مللي،فيليب لبني،كاوتش رمادي،كرتون ابيض ساده جاما  . عدد30', 'each', 26, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(940, ' تراي بليكسرTRY PLEXER استيكر ', NULL, NULL, 10, 11, 'INJ', NULL, 'مطبوعات ', 'each', 26, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(941, ' تراي بليكسرTRY PLEXER نشره ', NULL, NULL, 10, 12, 'INJ', NULL, '', 'each', 26, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(942, ' تراي بليكسرTRY PLEXER علبه ', NULL, NULL, 10, 13, 'INJ', NULL, '', 'each', 26, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(943, 'زجاج عسلى محلي', NULL, NULL, 29, 27, 'RM', NULL, ' زجاجه عسلى 100مللي ', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(944, 'زجاج عسلى   مستورد', NULL, NULL, 29, 27, 'RM', NULL, ' زجاجه عسلى 100مللي ', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(945, 'زجاج شفاف ', NULL, NULL, 29, 27, 'RM', NULL, 'زجاجه شفاف 50مللي ', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(946, 'زجاج عسلي  محلي ', NULL, NULL, 29, 27, 'RM', NULL, 'زجاجه عسلي  50مللي ', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(947, 'زجاج شفاف', NULL, NULL, 29, 27, 'RM', NULL, 'زجاجه شفاف 100مللي ', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(948, 'زجاج شفاف 50مللى محلي', NULL, NULL, 29, 27, 'RM', NULL, 'زجاجه شفاف 50مللي ', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(949, 'كاوتش', NULL, NULL, 29, 27, 'RM', NULL, 'كاوتش مدور من الداخل', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(950, 'كاوتش ', NULL, NULL, 29, 27, 'RM', NULL, 'خاص ب د.لؤى', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(951, 'فليب اوف', NULL, NULL, 29, 27, 'RM', NULL, ' غامق', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(952, 'فليب اوف ', NULL, NULL, 29, 27, 'RM', NULL, 'شفاف', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(953, 'فليب اوف  ', NULL, NULL, 29, 27, 'RM', NULL, 'لبني', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(954, 'فليب اوف', NULL, NULL, 29, 27, 'RM', NULL, ' فضى', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(955, 'الغطاء', NULL, NULL, 29, 26, 'RM', NULL, 'غطاء شفاف ل عبوات ال 50 مللي (نصف دائره و المربعه', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(956, 'بلاستيك  دائره', NULL, NULL, 29, 26, 'RM', NULL, 'عبوه بلاستيك دائره حقن 50مللي ', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(957, 'بلاستيك  دائره المحروسه', NULL, NULL, 29, 26, 'RM', NULL, 'عبوه بلاستيك دائره حقن 50مللي ', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(958, 'بلاستيك  مربع', NULL, NULL, 29, 26, 'RM', NULL, 'عبوه بلاستيك مربع حقن 50مللي', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(959, 'بلاستيك  عسلى', NULL, NULL, 29, 26, 'RM', NULL, 'عبوه بلاستيك  عسلي 100مللي', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(960, 'بلاستيك عسلى ', NULL, NULL, 29, 26, 'RM', NULL, 'عبوه بلاستيك  عسلي 125مللي ', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(961, 'بلاستيك  نص دائره ', NULL, NULL, 29, 26, 'RM', NULL, 'عبوه بلاستيك بروبلين حقن مطبوع  50مللي', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(962, 'بلاستيك  نص دايره ', NULL, NULL, 29, 26, 'RM', NULL, 'عبوه بلاستيك بروبلين حقن 50مللي  ', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(963, 'علامه مائيه', NULL, NULL, 10, 14, 'RM', NULL, '', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(964, 'عبوه بلاستيك ابيض ', NULL, NULL, 29, 26, 'RM', NULL, 'عبوه بلاستيك 1000مللي ', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(965, 'بلاستك  اوميجا مصر', NULL, NULL, 29, 26, 'RM', NULL, 'عبوه بلاستيك 1000مللي ', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(966, 'بلاستك السعوديه', NULL, NULL, 29, 26, 'RM', NULL, 'عبوه بلاستيك 500مللي  ', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(967, 'بلاستك تكنو', NULL, NULL, 29, 26, 'RM', NULL, 'عبوه بلاستيك 500مللي  ', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(968, 'بلاستك اتش ار', NULL, NULL, 29, 26, 'RM', NULL, 'عبوه بلاستيك 500مللي  ', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(969, ' بلاستك ابو الليف ', NULL, NULL, 29, 26, 'RM', NULL, 'عبوه بلاستيك 250مللي  ', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(970, 'بلاستك الاندلس ', NULL, NULL, 29, 26, 'RM', NULL, 'عبوه بلاستيك 500مللي  ', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(971, 'بلاستك بزور', NULL, NULL, 29, 26, 'RM', NULL, 'عبوه بلاستيك 500مللي  ', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(972, 'بلاستك امريكي', NULL, NULL, 29, 26, 'RM', NULL, 'عبوه بلاستيك 500مللي  ', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(973, 'بلاستك ارجو', NULL, NULL, 29, 26, 'RM', NULL, 'عبوه بلاستيك 250مللي  ', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(974, 'بلاستك ارجو', NULL, NULL, 29, 26, 'RM', NULL, 'عبوه بلاستيك 250مللي  ', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(975, 'محمد سعد', NULL, NULL, 29, 26, 'RM', NULL, 'عبوه بلاستيك 1000جرام ', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(976, 'بلاستك السعوديه', NULL, NULL, 29, 26, 'RM', NULL, 'عبوه بلاستيك 500جرام ', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(977, 'المحروسه', NULL, NULL, 29, 26, 'RM', NULL, 'عبوه بلاستيك ب زورين 1000مللي', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(978, '  عبوه بلاستيك', NULL, NULL, 29, 26, 'RM', NULL, 'عبوه بلاستيك بحزين 1000مللي ', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(979, ' عبوه بلاستيك  ', NULL, NULL, 29, 26, 'RM', NULL, 'عبوه بلاستيك 500جرام ', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(980, 'بلاستك محمد سعد', NULL, NULL, 29, 26, 'RM', NULL, 'عبوه بلاستيك 500جرام ', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(981, 'بلاستك الاندلس ', NULL, NULL, 29, 26, 'RM', NULL, 'بلاستيك شفاف تصدير  10لتر', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(982, 'بلاستك شفاف تصدير ', NULL, NULL, 29, 26, 'RM', NULL, 'خامه بودر', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(983, 'اوكسى', NULL, NULL, 9, 17, 'RM', NULL, 'خامه بودر', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(984, 'ديكلو', NULL, NULL, 9, 17, 'RM', NULL, 'خامه بودر', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(985, 'ايفر', NULL, NULL, 9, 17, 'RM', NULL, 'خامه بودر', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(986, 'اموكسى', NULL, NULL, 9, 17, 'RM', NULL, 'خامه بودر', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(987, 'انرو', NULL, NULL, 9, 17, 'RM', NULL, 'خامه بودر', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(988, 'امبيسللين', NULL, NULL, 9, 17, 'RM', NULL, 'خامه بودر', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(989, ' كولستين محمد سعد', NULL, NULL, 9, 17, 'RM', NULL, 'خامه بودر', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(990, 'امبرول', NULL, NULL, 9, 17, 'RM', NULL, 'خامه بودر', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(991, 'اموكسى+امبيسيللين', NULL, NULL, 9, 17, 'RM', NULL, 'خامه بودر', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(992, 'كالسيوم', NULL, NULL, 9, 17, 'RM', NULL, 'خامه بودر', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(993, ' ديكلازيو', NULL, NULL, 9, 17, 'RM', NULL, 'خامه بودر', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(994, 'فسفور SODIUM', NULL, NULL, 9, 17, 'RM', NULL, 'خامه بودر', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(995, ' كولستين ', NULL, NULL, 9, 17, 'RM', NULL, 'خام سائل لزج', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(996, 'مونو', NULL, NULL, 9, 17, 'RM', NULL, 'خام سائل لزج', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(997, 'بولى', NULL, NULL, 9, 17, 'RM', NULL, 'خام سائل لزج', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(998, 'توين', NULL, NULL, 9, 17, 'RM', NULL, 'خام سائل لزج', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(999, 'بنزيل', NULL, NULL, 9, 17, 'RM', NULL, 'فيتامين بودر ابيض اللون', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(1000, 'فيتامينB1', NULL, NULL, 9, 17, 'RM', NULL, 'فيتامين بودر احمر اللون', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(1001, 'فيتامينB12', NULL, NULL, 9, 17, 'RM', NULL, 'فيتامين بودر ابيض اللون', 'gram', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(1002, 'فيتامينB3', NULL, NULL, 9, 17, 'RM', NULL, 'فيتامين بودر ابيض اللون', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(1003, 'فيتامينB5', NULL, NULL, 9, 17, 'RM', NULL, 'فيتامين بودر ابيض اللون', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(1004, 'فيتامينB6', NULL, NULL, 9, 17, 'RM', NULL, 'فيتامين بودر اصفر اللون', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(1005, 'فيتامينB2', NULL, NULL, 9, 17, 'RM', NULL, 'فيتامين بودر اصفر اللون', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(1006, 'فيتامينB9', NULL, NULL, 9, 17, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(1007, 'فيتامين e', NULL, NULL, 9, 17, 'RM', NULL, 'فيتامين سائل ', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(1008, ' فيتامين ه زيتي ', NULL, NULL, 9, 17, 'RM', NULL, 'فيتامين سائل ', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(1009, 'فيتامينات د.لؤي', NULL, NULL, 9, 17, 'RM', NULL, 'فيتامين   بودر ', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(1010, 'فيتامينات د.لؤي ', NULL, NULL, 9, 17, 'RM', NULL, 'فيتامين سائل ', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(1011, 'فيتامين c', NULL, NULL, 9, 17, 'RM', NULL, 'فيتامين   بودر ', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(1012, 'فيتامين كاف', NULL, NULL, 9, 17, 'RM', NULL, 'فيتامين   بودر ', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(1013, 'سيليمارين', NULL, NULL, 9, 17, 'RM', NULL, 'فيتامين   بودر ', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(1014, 'بيتاين', NULL, NULL, 9, 17, 'RM', NULL, 'فيتامين   بودر ', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(1015, 'ارجنين', NULL, NULL, 9, 17, 'RM', NULL, 'فيتامين   بودر ', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(1016, 'سترولتين', NULL, NULL, 9, 17, 'RM', NULL, 'فيتامين   بودر ', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(1017, ' سيناره', NULL, NULL, 9, 17, 'RM', NULL, 'فيتامين   بودر ', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(1018, ' ل-كرناتين', NULL, NULL, 9, 17, 'RM', NULL, 'فيتامين   بودر ', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(1019, ' mushroom', NULL, NULL, 9, 17, 'RM', NULL, 'فيتامين   بودر ', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(1020, 'منان', NULL, NULL, 9, 19, 'RM', NULL, 'فيتامين   بودر ', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(1021, 'برو بايل بارابين', NULL, NULL, 9, 22, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:08', '2025-10-31 01:14:08'),
(1022, 'ميثايل بارابين', NULL, NULL, 9, 22, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1023, 'بوريك اسيد', NULL, NULL, 9, 15, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1024, 'كوبلت', NULL, NULL, 9, 21, 'RM', NULL, '', 'gram', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1025, 'ماغنيسيوم سلفات', NULL, NULL, 9, 21, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1026, 'كلوريد بوتاسيوم', NULL, NULL, 9, 21, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1027, 'كبريتات  منجنيز', NULL, NULL, 9, 21, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1028, 'سلفات انهدريت', NULL, NULL, 9, 21, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1029, 'سلفات صوديوم', NULL, NULL, 9, 21, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1030, 'سلفات زنك انهدريت', NULL, NULL, 9, 21, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1031, 'سلفات زنك مونو', NULL, NULL, 9, 21, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1032, ' ماغنيسيوم اوكسي ', NULL, NULL, 9, 21, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1033, 'ايرن ستريت', NULL, NULL, 9, 21, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1034, 'صودا', NULL, NULL, 9, 21, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1035, 'ليسين', NULL, NULL, 9, 16, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1036, 'ايثانول امين', NULL, NULL, 9, 21, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1037, 'صوديوم بنزوات', NULL, NULL, 9, 21, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1038, 'صوديوم (اوكسى)', NULL, NULL, 9, 21, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1039, 'مثيونين', NULL, NULL, 9, 16, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1040, 'سلفات حديدوز هيبتا', NULL, NULL, 9, 21, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1041, 'سلفات حديدوز مونو', NULL, NULL, 9, 21, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1042, 'ستريك اسيد مونو ', NULL, NULL, 9, 25, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1043, 'ستريك اسيد انهدريت', NULL, NULL, 9, 25, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1044, 'تايلوز', NULL, NULL, 9, 22, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1045, 'بينزاوات', NULL, NULL, 9, 21, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1046, 'كابريتات نحاس', NULL, NULL, 9, 21, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1047, 'ملح', NULL, NULL, 9, 21, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1048, 'يوكا', NULL, NULL, 9, 19, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1049, 'كحول اثيلى', NULL, NULL, 9, 23, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1050, 'فورميك', NULL, NULL, 9, 15, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1051, 'اسيتيك', NULL, NULL, 9, 15, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1052, 'دراى', NULL, NULL, 9, 19, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1053, 'مثيونين سائل', NULL, NULL, 9, 16, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1054, 'سريبتول سائل', NULL, NULL, 9, 20, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1055, 'بروبيونيك', NULL, NULL, 9, 15, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1056, 'زيت شطه', NULL, NULL, 9, 19, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1057, 'زيت توم', NULL, NULL, 9, 19, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1058, 'فسفوريك اسيد', NULL, NULL, 9, 15, 'RM', NULL, 'اعشاب ', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1059, 'بابونج', NULL, NULL, 9, 19, 'RM', NULL, 'اعشاب ', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1060, 'دمسيسه', NULL, NULL, 9, 19, 'RM', NULL, 'اعشاب ', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1061, 'جنزبيل', NULL, NULL, 9, 19, 'RM', NULL, 'اعشاب ', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1062, 'شيح', NULL, NULL, 9, 19, 'RM', NULL, 'اعشاب ', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1063, 'ارطيمسيا', NULL, NULL, 9, 19, 'RM', NULL, 'اعشاب ', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1064, 'اسنيشا', NULL, NULL, 9, 19, 'RM', NULL, 'اعشاب ', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1065, 'كوماميل', NULL, NULL, 9, 19, 'RM', NULL, 'اعشاب ', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1066, 'اعشاب بارا مستورده', NULL, NULL, 9, 19, 'RM', NULL, 'اعشاب ', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1067, 'خماير', NULL, NULL, 9, 19, 'RM', NULL, 'اعشاب ', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1068, 'جزء المقىئ', NULL, NULL, 9, 19, 'RM', NULL, 'خامات بودر', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1069, 'msp', NULL, NULL, 9, 21, 'RM', NULL, 'خامات بودر', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1070, 'مالتى ديكسترين', NULL, NULL, 9, 20, 'RM', NULL, 'خامات بودر', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1071, 'ديكسترو لا مائى', NULL, NULL, 9, 20, 'RM', NULL, 'خامات بودر', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1072, 'صوديوم بيكاربونات', NULL, NULL, 9, 20, 'RM', NULL, 'خامات بودر', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1073, 'ايروسيل', NULL, NULL, 9, 22, 'RM', NULL, 'خامات بودر', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1074, 'ثلاثي سترات الصديوم', NULL, NULL, 9, 21, 'RM', NULL, 'خامات بودر', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1075, 'كلوريد حديد ', NULL, NULL, 9, 21, 'RM', NULL, 'خامات بودر', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1076, ' صوديوم سيلينايت', NULL, NULL, 9, 21, 'RM', NULL, 'خامات بودر', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1077, 'سلفا ', NULL, NULL, 9, 21, 'RM', NULL, ' ', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1078, 'لون ازرق', NULL, NULL, 9, 18, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1079, 'اسود لامع 85%', NULL, NULL, 9, 18, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1080, 'ابيض كلاودي ', NULL, NULL, 9, 18, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1081, 'اصفر غروب الشمس', NULL, NULL, 9, 18, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1082, 'بني شوكلاته غامق 25%', NULL, NULL, 9, 18, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1083, 'بني شوكلاته غامق 85%', NULL, NULL, 9, 18, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1084, 'احمر رازبرى85%', NULL, NULL, 9, 18, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1085, 'طارطرازين 85%', NULL, NULL, 9, 18, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1086, 'طارطرازين 25%', NULL, NULL, 9, 18, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1087, 'احمر كارمزون', NULL, NULL, 9, 18, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1088, 'اصفر حلوه', NULL, NULL, 9, 18, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1089, 'اصفر ', NULL, NULL, 9, 18, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1090, 'اخضر زرعي  85%', NULL, NULL, 9, 18, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1091, 'اخضر زرعي 25%', NULL, NULL, 9, 18, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1092, 'احمر بلحي ', NULL, NULL, 9, 18, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1093, 'ابيض %85', NULL, NULL, 9, 18, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1094, 'اسود لامع 50%', NULL, NULL, 9, 18, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1095, 'ابيض 1000', NULL, NULL, 9, 18, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1096, 'رائحه برتقال', NULL, NULL, 9, 18, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1097, 'رائحه ثوم', NULL, NULL, 9, 18, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1098, 'رائحه فانيليا', NULL, NULL, 9, 18, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1099, 'خوخ ', NULL, NULL, 9, 18, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1100, 'نعناع ', NULL, NULL, 9, 18, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1101, 'كريز', NULL, NULL, 9, 18, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1102, 'نعناع  سائل', NULL, NULL, 9, 18, 'RM', NULL, '', 'kilo', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1103, 'كرتون جاما الصغير مطبوع تصدير', NULL, NULL, 10, 28, 'RM', NULL, '', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1104, 'كرتون بيوفت مطبوع زودياك ', NULL, NULL, 10, 28, 'RM', NULL, '', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1105, 'كرتون زودياك مطبوع', NULL, NULL, 10, 28, 'RM', NULL, '', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1106, 'كرتون شيلد', NULL, NULL, 10, 28, 'RM', NULL, '', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1107, 'كرتون فارما', NULL, NULL, 10, 28, 'RM', NULL, '', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1108, 'كرتون د.لؤى ابيض ساده', NULL, NULL, 10, 28, 'RM', NULL, '', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:09', '2025-10-31 01:14:09'),
(1109, 'كرتون فيوتشر الكبير', NULL, NULL, 10, 28, 'RM', NULL, '', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:10', '2025-10-31 01:14:10'),
(1110, 'كرتون اوميجا مصر', NULL, NULL, 10, 28, 'RM', NULL, '', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:10', '2025-10-31 01:14:10'),
(1111, 'كرتون فيوتشر الصغير', NULL, NULL, 10, 28, 'RM', NULL, '', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:10', '2025-10-31 01:14:10'),
(1112, 'كرتون جاما مقاس 36 تصدير', NULL, NULL, 10, 28, 'RM', NULL, '', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:10', '2025-10-31 01:14:10'),
(1113, 'كرتون جاما الكبير مطبوع  تصدير', NULL, NULL, 10, 28, 'RM', NULL, '', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:10', '2025-10-31 01:14:10'),
(1114, 'كرتون بروكسى مطبوع', NULL, NULL, 10, 28, 'RM', NULL, '', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:10', '2025-10-31 01:14:10'),
(1115, 'كرتون جاما ساده صغير', NULL, NULL, 10, 28, 'RM', NULL, '', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:10', '2025-10-31 01:14:10'),
(1116, 'كرتون  ساده مقاس36 ', NULL, NULL, 10, 28, 'RM', NULL, '', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:10', '2025-10-31 01:14:10'),
(1117, 'كرتون الشيخ مصطفى ايفر', NULL, NULL, 10, 28, 'RM', NULL, '', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:10', '2025-10-31 01:14:10'),
(1118, 'كرتون الشيخ مصطفى', NULL, NULL, 10, 28, 'RM', NULL, '', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:10', '2025-10-31 01:14:10'),
(1119, 'تراى ماك', NULL, NULL, 10, 28, 'RM', NULL, '', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:10', '2025-10-31 01:14:10'),
(1120, 'كرتون 3الصغير ', NULL, NULL, 10, 28, 'RM', NULL, '', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:10', '2025-10-31 01:14:10'),
(1121, 'كرتونsono plex', NULL, NULL, 10, 28, 'RM', NULL, '', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:10', '2025-10-31 01:14:10'),
(1122, 'كرتون الفيوم', NULL, NULL, 10, 28, 'RM', NULL, '', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:10', '2025-10-31 01:14:10'),
(1123, 'كرتون جاما كبير مطبوع ', NULL, NULL, 10, 28, 'RM', NULL, '', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:10', '2025-10-31 01:14:10'),
(1124, 'كرتون جاما مطبوع صغير محلي ', NULL, NULL, 10, 28, 'RM', NULL, '', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:10', '2025-10-31 01:14:10'),
(1125, ' كرتون د.لؤي مالتي بني  ', NULL, NULL, 10, 28, 'RM', NULL, '', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:10', '2025-10-31 01:14:10'),
(1126, 'كرتون د لؤي مالتي صغير', NULL, NULL, 10, 28, 'RM', NULL, '', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:10', '2025-10-31 01:14:10'),
(1127, ' كرتون جاما ساده كبيره ', NULL, NULL, 10, 28, 'RM', NULL, '', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:10', '2025-10-31 01:14:10'),
(1128, 'كرتون ليون حمادي', NULL, NULL, 10, 28, 'RM', NULL, '', 'each', 0, NULL, 0.00, NULL, 0, '2025-10-31 01:14:10', '2025-10-31 01:14:10'),
(1129, 'abdelsalam test', '777', '', 29, 26, NULL, 'primary', 'test', NULL, NULL, NULL, 222.00, 111.00, 11, '2025-12-09 07:13:20', '2025-12-09 07:13:20');

-- --------------------------------------------------------

--
-- Table structure for table `product_components`
--

CREATE TABLE `product_components` (
  `id` int(11) NOT NULL,
  `final_product_id` int(11) NOT NULL,
  `component_id` int(11) NOT NULL,
  `quantity` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_orders`
--

CREATE TABLE `purchase_orders` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `status` enum('new','ordered','partially-received','received','cancelled') DEFAULT 'new',
  `total_amount` decimal(10,2) NOT NULL,
  `paid_amount` decimal(10,2) DEFAULT 0.00,
  `notes` text DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase_orders`
--

INSERT INTO `purchase_orders` (`id`, `vendor_id`, `contact_id`, `order_date`, `status`, `total_amount`, `paid_amount`, `notes`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2025-08-31', 'received', 8900.00, 8900.00, '', 3, '2025-08-30 21:32:54', '2025-08-30 21:35:45'),
(2, 1, 1, '2025-09-03', 'received', 19135.00, 19135.00, '', 3, '2025-09-04 11:48:59', '2025-09-04 11:52:46'),
(3, 1, 1, '2025-09-04', 'received', 20025.00, 20025.00, '', 3, '2025-09-04 11:58:36', '2025-09-04 12:54:41'),
(4, 1, 1, '2025-09-04', 'cancelled', 17200.00, 0.00, '', 3, '2025-09-04 12:50:17', '2025-09-04 12:51:03'),
(5, 2, 2, '2025-09-09', 'partially-received', 19125.00, 19125.00, '', 3, '2025-09-09 12:46:06', '2025-11-06 13:26:28'),
(6, 1, 1, '2025-11-19', 'partially-received', 1000.00, 0.00, '', 3, '2025-11-19 09:29:44', '2025-11-19 09:30:15'),
(7, 1, 1, '2025-11-19', 'ordered', 1000.00, 0.00, '', 3, '2025-11-19 09:31:05', '2025-11-19 09:31:05');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_items`
--

CREATE TABLE `purchase_order_items` (
  `id` int(11) NOT NULL,
  `purchase_order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `received_quantity` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase_order_items`
--

INSERT INTO `purchase_order_items` (`id`, `purchase_order_id`, `product_id`, `quantity`, `unit_price`, `total_price`, `received_quantity`) VALUES
(1, 1, 2, 100, 89.00, 8900.00, 0),
(2, 2, 2, 215, 89.00, 19135.00, 215),
(3, 3, 2, 225, 89.00, 20025.00, 200),
(4, 4, 2, 215, 80.00, 17200.00, 0),
(5, 5, 2, 225, 85.00, 19125.00, 200),
(6, 6, 458, 1000, 1.00, 1000.00, 0),
(7, 7, 458, 1000, 1.00, 1000.00, 0);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_payments`
--

CREATE TABLE `purchase_order_payments` (
  `id` int(11) NOT NULL,
  `purchase_order_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_method` enum('cash','transfer','wallet') NOT NULL,
  `reference` varchar(100) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase_order_payments`
--

INSERT INTO `purchase_order_payments` (`id`, `purchase_order_id`, `amount`, `payment_method`, `reference`, `notes`, `created_by`, `created_at`) VALUES
(1, 1, 8900.00, 'cash', '', '', 3, '2025-08-30 21:34:43'),
(2, 2, 19135.00, 'transfer', '', '', 3, '2025-09-04 11:52:46'),
(3, 3, 20025.00, 'transfer', '1234', 'تم الدفع كامل الفاتورة', 3, '2025-09-04 12:54:41'),
(4, 5, 19125.00, 'cash', 'الاستاذ عمر', 'تم تسليم الاستاذذ عمر المبلغ في مكتبه', 3, '2025-11-06 13:26:28');

-- --------------------------------------------------------

--
-- Table structure for table `quotations`
--

CREATE TABLE `quotations` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL,
  `quotation_date` date NOT NULL,
  `expiry_date` date DEFAULT NULL,
  `status` enum('draft','sent','accepted','rejected','converted') DEFAULT 'draft',
  `total_amount` decimal(10,2) NOT NULL,
  `notes` text DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotation_items`
--

CREATE TABLE `quotation_items` (
  `id` int(11) NOT NULL,
  `quotation_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `total_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `safes`
--

CREATE TABLE `safes` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `balance` decimal(10,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `safes`
--

INSERT INTO `safes` (`id`, `name`, `balance`) VALUES
(1, 'MAIN | Sadat Factory', 0.00),
(2, 'MAIN | 10th Of Ramadan', 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `transfer_items`
--

CREATE TABLE `transfer_items` (
  `id` int(11) NOT NULL,
  `transfer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transfer_items`
--

INSERT INTO `transfer_items` (`id`, `transfer_id`, `product_id`, `quantity`) VALUES
(1, 1, 2, 400.00),
(2, 2, 2, 1.00);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `role` enum('admin','accountant','salesman','inventory_manager','purchasing_supervisor','inventory_supervisor','operations_manager','production_supervisor','production_manager','sales_manager') NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `last_login` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `personal_balance` decimal(10,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `email`, `role`, `is_active`, `last_login`, `created_at`, `updated_at`, `personal_balance`) VALUES
(1, 'omar', '$2y$10$T.2mP8IKA.SA2GP0ZC1/ZuX3ZBF3eAeFQvrKoDlpXeVZEBQ9YN3AK', 'Omar Magdy', 'omar.m.abdelrahman@live.com', 'admin', 1, '2025-12-20 22:09:20', '2025-08-04 15:59:15', '2025-12-20 20:09:20', 0.00),
(2, 'yromea', '$2y$10$zO9toUYv2ndhcc6yjPY4O./RKcUnguo4fwNT3wLsOajkOJXYn6elq', 'Ebram Dawood', 'yromea@gmail.com', 'admin', 1, '2025-11-28 18:53:18', '2025-08-04 16:00:34', '2025-11-28 16:53:18', 0.00),
(3, 'eslam', '$2y$10$76AWJlNUjJZ5teiPug431uFHT68qntEIrV1Ce3KZnwfHtXy.Zw71u', 'Eslam El-Gamal', 'eslam.gamal@gamma-vet.com', 'admin', 1, '2025-12-13 00:15:11', '2025-08-04 20:41:12', '2025-12-12 22:15:11', 0.00),
(4, 'testx1', '$2y$10$8DlaeE0kynwZN4b0/gU87ucsXnJVhIxOEXGQTkW4tBBbMEqrCHLba', 'testx1', 'testx1@ithelpme.store', 'admin', 1, NULL, '2025-11-07 16:44:59', '2025-11-07 16:44:59', 0.00),
(5, 'testx2', '$2y$10$aUrybupGe/aCbS0ijR.9ye89BmXjim6MCMRUF84vQ4too3Wru.V5q', 'testx2', 'testx2@ithelpme.store', 'inventory_supervisor', 1, NULL, '2025-11-07 16:49:09', '2025-11-07 16:49:09', 0.00),
(6, 'testx3', '$2y$10$I3yvtUXKTOdFa9G0WU9qz.Um14wUnEh5k4n.QZ8cqusZq42J2NieS', 'testx3', 'testx3@ithelpme.store', 'production_manager', 1, NULL, '2025-11-07 16:52:40', '2025-11-07 16:52:40', 0.00),
(7, 'Ess', '$2y$10$.tUp6XWL5i4wBwHiK5kwzuul9w9xX4yQC6EI2VsD8Rv5Lwlk8kxVi', 'Esso', 'ess@ess.com', 'operations_manager', 1, '2025-11-07 20:05:53', '2025-11-07 18:05:13', '2025-12-20 18:43:59', 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` text DEFAULT NULL,
  `tax_number` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `wallet_balance` decimal(10,2) DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `name`, `type`, `tax_number`, `address`, `email`, `phone`, `wallet_balance`, `created_at`, `updated_at`) VALUES
(1, 'IThelp me', '2', 'das4d685as48fd7', NULL, 'omar.m.abdelrahman@live.com', '01554400044', 4999995.00, '2025-08-04 17:28:17', '2025-12-09 07:12:10'),
(2, 'Omar Magdy', '1', NULL, NULL, 'admin@omar.omar', '0100000000000', 40000.00, '2025-08-04 21:20:45', '2025-08-04 21:23:33');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_addresses`
--

CREATE TABLE `vendor_addresses` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `address_type` enum('billing','shipping','primary') NOT NULL,
  `address_line1` varchar(100) NOT NULL,
  `address_line2` varchar(100) DEFAULT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `postal_code` varchar(20) NOT NULL,
  `country` varchar(50) NOT NULL,
  `is_default` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vendor_addresses`
--

INSERT INTO `vendor_addresses` (`id`, `vendor_id`, `address_type`, `address_line1`, `address_line2`, `city`, `state`, `postal_code`, `country`, `is_default`) VALUES
(1, 1, 'primary', 'nasr city', NULL, 'cairo', 'kans;kdnf;kas', '1658', 'Egypt', 1),
(2, 2, 'primary', 'oomar', 'omar', 'omar', 'omar', 'omar', 'Egypt', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_contacts`
--

CREATE TABLE `vendor_contacts` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `is_primary` tinyint(1) DEFAULT 0,
  `position` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vendor_contacts`
--

INSERT INTO `vendor_contacts` (`id`, `vendor_id`, `name`, `email`, `phone`, `is_primary`, `position`) VALUES
(1, 1, 'Ebram Yoused', 'Yroma@gmail.com', '0121549845155', 1, 'IT Manager'),
(2, 2, 'omar', 'omar@omar', '010000000', 1, 'owner');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_documents`
--

CREATE TABLE `vendor_documents` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `document_type` varchar(50) NOT NULL,
  `document_number` varchar(100) NOT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_types`
--

CREATE TABLE `vendor_types` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vendor_types`
--

INSERT INTO `vendor_types` (`id`, `name`, `description`) VALUES
(1, 'supplier', 'Product/material supplier'),
(2, 'service', 'Service provider'),
(3, 'logistics', 'Logistics/shipping provider');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_wallet_transactions`
--

CREATE TABLE `vendor_wallet_transactions` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `type` enum('deposit','withdrawal','payment','refund') NOT NULL,
  `reference_id` int(11) DEFAULT NULL,
  `reference_type` varchar(50) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vendor_wallet_transactions`
--

INSERT INTO `vendor_wallet_transactions` (`id`, `vendor_id`, `amount`, `type`, `reference_id`, `reference_type`, `notes`, `created_by`, `created_at`) VALUES
(1, 1, 6000000.00, 'deposit', NULL, NULL, NULL, 1, '2025-08-04 17:28:17'),
(2, 1, 5500000.00, 'withdrawal', NULL, NULL, 'Cameras', 1, '2025-08-04 17:29:25'),
(3, 1, 5500000.00, 'withdrawal', NULL, NULL, 'Cameras', 1, '2025-08-04 17:29:37'),
(4, 1, 5000000.00, 'deposit', NULL, NULL, '', 1, '2025-08-04 17:30:35'),
(5, 1, 5000000.00, 'deposit', NULL, NULL, '', 1, '2025-08-04 17:31:23'),
(6, 2, 50000.00, 'deposit', NULL, NULL, NULL, 3, '2025-08-04 21:20:45'),
(7, 2, 100000.00, 'withdrawal', NULL, NULL, '', 3, '2025-08-04 21:21:23'),
(8, 2, 100000.00, 'withdrawal', NULL, NULL, '', 3, '2025-08-04 21:21:34'),
(9, 2, 100000.00, 'deposit', NULL, NULL, '', 3, '2025-08-04 21:22:27'),
(10, 2, 100000.00, 'deposit', NULL, NULL, '', 3, '2025-08-04 21:22:29'),
(11, 2, 10000.00, 'withdrawal', NULL, NULL, '', 3, '2025-08-04 21:23:33'),
(12, 1, 5.00, 'withdrawal', NULL, NULL, 'test', 1, '2025-12-09 07:12:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `customer_contacts`
--
ALTER TABLE `customer_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `customer_documents`
--
ALTER TABLE `customer_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `customer_types`
--
ALTER TABLE `customer_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_wallet_transactions`
--
ALTER TABLE `customer_wallet_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `finance_transfers`
--
ALTER TABLE `finance_transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory_products`
--
ALTER TABLE `inventory_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `inventory_id` (`inventory_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `inventory_transfers`
--
ALTER TABLE `inventory_transfers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transfer_reference` (`transfer_reference`),
  ADD KEY `from_inventory_id` (`from_inventory_id`),
  ADD KEY `to_inventory_id` (`to_inventory_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `internal_id` (`internal_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `contact_id` (`contact_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `order_payments`
--
ALTER TABLE `order_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sku` (`sku`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `subcategory_id` (`subcategory_id`);

--
-- Indexes for table `product_components`
--
ALTER TABLE `product_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `final_product_id` (`final_product_id`),
  ADD KEY `component_id` (`component_id`);

--
-- Indexes for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendor_id` (`vendor_id`),
  ADD KEY `contact_id` (`contact_id`);

--
-- Indexes for table `purchase_order_items`
--
ALTER TABLE `purchase_order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_order_id` (`purchase_order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `purchase_order_payments`
--
ALTER TABLE `purchase_order_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_order_id` (`purchase_order_id`);

--
-- Indexes for table `quotations`
--
ALTER TABLE `quotations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `contact_id` (`contact_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `quotation_items`
--
ALTER TABLE `quotation_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quotation_id` (`quotation_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `safes`
--
ALTER TABLE `safes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfer_items`
--
ALTER TABLE `transfer_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transfer_id` (`transfer_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_addresses`
--
ALTER TABLE `vendor_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendor_id` (`vendor_id`);

--
-- Indexes for table `vendor_contacts`
--
ALTER TABLE `vendor_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendor_id` (`vendor_id`);

--
-- Indexes for table `vendor_documents`
--
ALTER TABLE `vendor_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendor_id` (`vendor_id`);

--
-- Indexes for table `vendor_types`
--
ALTER TABLE `vendor_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_wallet_transactions`
--
ALTER TABLE `vendor_wallet_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendor_id` (`vendor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer_contacts`
--
ALTER TABLE `customer_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer_documents`
--
ALTER TABLE `customer_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_types`
--
ALTER TABLE `customer_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer_wallet_transactions`
--
ALTER TABLE `customer_wallet_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `finance_transfers`
--
ALTER TABLE `finance_transfers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `inventory_products`
--
ALTER TABLE `inventory_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inventory_transfers`
--
ALTER TABLE `inventory_transfers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_payments`
--
ALTER TABLE `order_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1130;

--
-- AUTO_INCREMENT for table `product_components`
--
ALTER TABLE `product_components`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `purchase_order_items`
--
ALTER TABLE `purchase_order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `purchase_order_payments`
--
ALTER TABLE `purchase_order_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `quotations`
--
ALTER TABLE `quotations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotation_items`
--
ALTER TABLE `quotation_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `safes`
--
ALTER TABLE `safes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transfer_items`
--
ALTER TABLE `transfer_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vendor_addresses`
--
ALTER TABLE `vendor_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vendor_contacts`
--
ALTER TABLE `vendor_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vendor_documents`
--
ALTER TABLE `vendor_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendor_types`
--
ALTER TABLE `vendor_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vendor_wallet_transactions`
--
ALTER TABLE `vendor_wallet_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  ADD CONSTRAINT `customer_addresses_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_contacts`
--
ALTER TABLE `customer_contacts`
  ADD CONSTRAINT `customer_contacts_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_documents`
--
ALTER TABLE `customer_documents`
  ADD CONSTRAINT `customer_documents_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_wallet_transactions`
--
ALTER TABLE `customer_wallet_transactions`
  ADD CONSTRAINT `customer_wallet_transactions_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Constraints for table `inventory_products`
--
ALTER TABLE `inventory_products`
  ADD CONSTRAINT `inventory_products_ibfk_1` FOREIGN KEY (`inventory_id`) REFERENCES `inventories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `inventory_products_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `inventory_transfers`
--
ALTER TABLE `inventory_transfers`
  ADD CONSTRAINT `inventory_transfers_ibfk_1` FOREIGN KEY (`from_inventory_id`) REFERENCES `inventories` (`id`),
  ADD CONSTRAINT `inventory_transfers_ibfk_2` FOREIGN KEY (`to_inventory_id`) REFERENCES `inventories` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`contact_id`) REFERENCES `customer_contacts` (`id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `order_payments`
--
ALTER TABLE `order_payments`
  ADD CONSTRAINT `order_payments_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`subcategory_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `product_components`
--
ALTER TABLE `product_components`
  ADD CONSTRAINT `product_components_ibfk_1` FOREIGN KEY (`final_product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_components_ibfk_2` FOREIGN KEY (`component_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  ADD CONSTRAINT `purchase_orders_ibfk_1` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`),
  ADD CONSTRAINT `purchase_orders_ibfk_2` FOREIGN KEY (`contact_id`) REFERENCES `vendor_contacts` (`id`);

--
-- Constraints for table `purchase_order_items`
--
ALTER TABLE `purchase_order_items`
  ADD CONSTRAINT `purchase_order_items_ibfk_1` FOREIGN KEY (`purchase_order_id`) REFERENCES `purchase_orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `purchase_order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `purchase_order_payments`
--
ALTER TABLE `purchase_order_payments`
  ADD CONSTRAINT `purchase_order_payments_ibfk_1` FOREIGN KEY (`purchase_order_id`) REFERENCES `purchase_orders` (`id`);

--
-- Constraints for table `quotations`
--
ALTER TABLE `quotations`
  ADD CONSTRAINT `quotations_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `quotations_ibfk_2` FOREIGN KEY (`contact_id`) REFERENCES `customer_contacts` (`id`),
  ADD CONSTRAINT `quotations_ibfk_3` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `quotation_items`
--
ALTER TABLE `quotation_items`
  ADD CONSTRAINT `quotation_items_ibfk_1` FOREIGN KEY (`quotation_id`) REFERENCES `quotations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `quotation_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `transfer_items`
--
ALTER TABLE `transfer_items`
  ADD CONSTRAINT `transfer_items_ibfk_1` FOREIGN KEY (`transfer_id`) REFERENCES `inventory_transfers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transfer_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `vendor_addresses`
--
ALTER TABLE `vendor_addresses`
  ADD CONSTRAINT `vendor_addresses_ibfk_1` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vendor_contacts`
--
ALTER TABLE `vendor_contacts`
  ADD CONSTRAINT `vendor_contacts_ibfk_1` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vendor_documents`
--
ALTER TABLE `vendor_documents`
  ADD CONSTRAINT `vendor_documents_ibfk_1` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vendor_wallet_transactions`
--
ALTER TABLE `vendor_wallet_transactions`
  ADD CONSTRAINT `vendor_wallet_transactions_ibfk_1` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
