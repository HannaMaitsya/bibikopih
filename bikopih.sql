-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2026 at 03:40 AM
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
-- Database: `bikopih`
--

-- --------------------------------------------------------

--
-- Table structure for table `brewing_methods`
--

CREATE TABLE `brewing_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `icon` varchar(255) NOT NULL DEFAULT '☕',
  `brew_time` varchar(255) DEFAULT NULL,
  `difficulty` varchar(255) NOT NULL DEFAULT 'Easy',
  `grind_size` varchar(255) NOT NULL DEFAULT 'Medium',
  `water_temp` varchar(255) DEFAULT NULL,
  `ratio` varchar(255) DEFAULT NULL,
  `steps` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brewing_methods`
--

INSERT INTO `brewing_methods` (`id`, `name`, `slug`, `description`, `icon`, `brew_time`, `difficulty`, `grind_size`, `water_temp`, `ratio`, `steps`, `created_at`, `updated_at`) VALUES
(1, 'V60', 'v60', 'Pour over yang bersih dan floral. Menonjolkan acidity dan tasting notes fruity.', 'V60', '2:30', 'Medium', 'Medium-Fine', '92°C', '1:15', '1. Panaskan 300ml air 92°C\n2. 20g kopi medium-fine\n3. Bloom 45 detik 50ml\n4. Tuang melingkar hingga 300ml\n5. Tunggu tetesan selesai', '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(2, 'French Press', 'french-press', 'Full immersion, body tebal dan manis. Cocok untuk chocolate & nutty.', 'French Press', '4:00', 'Easy', 'Coarse', '95°C', '1:12', '1. 30g kopi coarse\n2. 360ml air 95°C\n3. Aduk, tutup 4 menit\n4. Press perlahan\n5. Sajikan', '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(3, 'Espresso', 'espresso', 'Pekat, intense, crema tebal. Terbaik untuk dark roast dan chocolate.', 'Espresso', '0:28', 'Hard', 'Fine', '93°C', '1:2', '1. 18g kopi fine\n2. Tamping rata\n3. Ekstraksi 25-30 detik\n4. Hasil 36g espresso', '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(4, 'Tubruk', 'tubruk', 'Cara Indonesia paling jujur. Body penuh, pahit elegan, dan nostalgia.', 'Tubruk', '3:00', 'Easy', 'Medium-Fine', '100°C', '1:12', '1. 15g kopi + 180ml air mendidih\n2. Aduk sekali\n3. Diamkan 3 menit\n4. Tunggu ampas turun', '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(5, 'Moka Pot', 'moka-pot', 'Strong dan intense ala stovetop. Alternatif espresso rumahan.', 'Moka Pot', '5:00', 'Medium', 'Fine-Medium', '90°C', '1:10', '1. Isi air bawah valve\n2. Kopi rata tanpa tekan\n3. Api kecil\n4. Angkat saat mendesis', '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(6, 'Cold Brew', 'cold-brew', 'Diseduh dingin 12 jam. Manis, rendah asam, dan super smooth.', 'Cold Brew', '12:00', 'Easy', 'Coarse', 'Suhu ruang', '1:8', '1. 100g coarse + 800ml air\n2. Rendam 12 jam kulkas\n3. Saring\n4. Encerkan 1:1', '2026-10-04 22:51:37', '2026-10-04 22:51:37');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('img_resolve:00df8c21b73d38045f118bde3af06890', 's:54:\"http://127.0.0.1:8000/images/uploads/mood-creative.jpg\";', 1792028274),
('img_resolve:369b00836bcd03999571abdb5f8f9af4', 's:61:\"http://127.0.0.1:8000/images/uploads/origin-flores-bajawa.jpg\";', 1792028274),
('img_resolve:3fb876fcc998d86c2602e59339af59e5', 's:60:\"http://127.0.0.1:8000/images/uploads/coffee-ijen-classic.jpg\";', 1792028274),
('img_resolve:488fb9f1eece7b33021126b0afeb4927', 's:63:\"http://127.0.0.1:8000/images/uploads/coffee-kintamani-honey.jpg\";', 1792028274),
('img_resolve:54863079751ca9531e97e7f144ecfc79', 's:63:\"http://127.0.0.1:8000/images/uploads/coffee-mandailing-bold.jpg\";', 1792028274),
('img_resolve:7b188a242718f8a1c301577bc7e16310', 's:51:\"http://127.0.0.1:8000/images/uploads/mood-focus.jpg\";', 1792028274),
('img_resolve:805d9066d90737d3f20af4ac10d6fe7b', 's:60:\"http://127.0.0.1:8000/images/uploads/coffee-gayo-natural.jpg\";', 1792028274),
('img_resolve:8288a531c42c9ebaea4c2af5059ef6b5', 's:57:\"http://127.0.0.1:8000/images/uploads/origin-kintamani.jpg\";', 1792028274),
('img_resolve:8a10346180a10c2dcbf01dcb82ad78a4', 's:50:\"http://127.0.0.1:8000/images/uploads/mood-calm.jpg\";', 1792028274),
('img_resolve:901a9f4a5506e959dd9f1322bcc50713', 's:61:\"http://127.0.0.1:8000/images/uploads/coffee-toraja-washed.jpg\";', 1792028274),
('img_resolve:92684a323163f9b99a799be5dde1b94d', 's:54:\"http://127.0.0.1:8000/images/uploads/origin-toraja.jpg\";', 1792028274),
('img_resolve:e61ae1be10ae64809ecca4d64c7b24b6', 's:52:\"http://127.0.0.1:8000/images/uploads/origin-gayo.jpg\";', 1792028274),
('img_resolve:e772915162177e8a11cab5eb30206952', 's:52:\"http://127.0.0.1:8000/images/uploads/mood-energy.jpg\";', 1792028274);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `session_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 'ihj0KOQ1IQL8iyIwstOGDnzWGbFD4C7ACk7nPaBW', '2026-10-04 23:02:45', '2026-10-04 23:02:45'),
(2, NULL, 'ZLXzvNsxsfkot6NWjiYtmLVWVXeWHiofbfmeXdIg', '2026-10-04 23:04:10', '2026-10-04 23:04:10'),
(3, 3, NULL, '2026-10-04 23:19:53', '2026-10-04 23:19:53'),
(4, 2, NULL, '2026-10-04 23:29:52', '2026-10-04 23:29:52'),
(5, NULL, 'JWMKsXBjvdD6QUVWoYq6GHWbGxMzHinq8bWS2Pyw', '2026-10-08 17:45:05', '2026-10-08 17:45:05'),
(6, NULL, 'VxhltaSHiswmRviKPA6k2J9bbgQcMjDVmmOGGi3v', '2026-10-08 18:00:24', '2026-10-08 18:00:24'),
(7, NULL, '0jBvj4H55MhQrGmGlSMayBrpCLQfmVDvgJjR18PP', '2026-10-08 18:01:18', '2026-10-08 18:01:18'),
(8, NULL, 'VjOXwIuK1F397KojFEkFNiO2ud2nJ8BxQsZk6gzj', '2026-10-11 19:03:53', '2026-10-11 19:03:53'),
(9, NULL, 'yfXz3Tk78FiA3hKkYgVBKiMCWpOGf6OeGvSdBZMG', '2026-10-11 19:04:20', '2026-10-11 19:04:20'),
(10, NULL, '86wPsOmn4KooSmSsbvYy1IL1iJ2MgYxGB0RjMGxm', '2026-10-11 19:04:48', '2026-10-11 19:04:48'),
(12, NULL, 'COs5bzu7FxYJFOCAiyc9832aV2wTZmkGQM9F9edK', '2026-10-11 19:06:18', '2026-10-11 19:06:18'),
(13, 1, NULL, '2026-10-11 19:06:20', '2026-10-11 19:06:20'),
(14, NULL, '3dq78ocvu5nBQaoFrmZaFFGux5rmxM9jybHAJhYz', '2026-10-11 19:11:53', '2026-10-11 19:11:53'),
(16, 5, NULL, '2026-10-11 19:24:57', '2026-10-11 19:24:57'),
(17, NULL, 'UbnTR3JunYbNTld8lS3OHwav3x14PW2kPN7pGCdv', '2026-10-11 20:10:35', '2026-10-11 20:10:35'),
(18, NULL, '0G7Er29BA9IptB6g0mNNftazLFGvzBnDwovY12vl', '2026-10-11 20:54:48', '2026-10-11 20:54:48'),
(19, 6, NULL, '2026-10-11 21:59:39', '2026-10-11 21:59:39'),
(20, NULL, 'zxjIeuIGDh5XDsfmPEIbrIfPFuXhYOHR1hl3rrjg', '2026-10-11 22:50:37', '2026-10-11 22:50:37'),
(21, 7, NULL, '2026-10-11 23:04:54', '2026-10-11 23:04:54'),
(22, NULL, 'DwIwMY9Ez7WyWTuTAQcLQno0gJIyXZqwswYonToW', '2026-10-11 23:42:29', '2026-10-11 23:42:29'),
(23, NULL, '4qozIrFupf3Ru1TatkRG2bfBk4bTZXKPgypXkM36', '2026-10-11 23:51:23', '2026-10-11 23:51:23'),
(24, NULL, 'X1DW1rGql75PWittegCBhynuW95R9RGjNXAWUgAC', '2026-10-11 23:53:42', '2026-10-11 23:53:42'),
(25, NULL, 'l6IyOrQHZi2GAVBTflz990vsTA8rqo2zyXiqGn0E', '2026-10-13 17:58:09', '2026-10-13 17:58:09');

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

CREATE TABLE `cart_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cart_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `form_type` enum('whole_bean','ground') NOT NULL DEFAULT 'whole_bean',
  `blend_name` varchar(255) DEFAULT NULL,
  `blend_components` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`blend_components`)),
  `weight` int(11) NOT NULL DEFAULT 250,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `unit_price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart_items`
--

INSERT INTO `cart_items` (`id`, `cart_id`, `product_id`, `form_type`, `blend_name`, `blend_components`, `weight`, `quantity`, `unit_price`, `created_at`, `updated_at`) VALUES
(18, 13, 2, 'whole_bean', NULL, NULL, 250, 1, 79000, '2026-10-11 19:23:03', '2026-10-11 19:23:03');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `freshness_rules`
--

CREATE TABLE `freshness_rules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `min_days` int(11) NOT NULL DEFAULT 0,
  `max_days` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `color` varchar(255) NOT NULL DEFAULT '#2F7D4F',
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `freshness_rules`
--

INSERT INTO `freshness_rules` (`id`, `label`, `slug`, `min_days`, `max_days`, `description`, `color`, `order`, `created_at`, `updated_at`) VALUES
(1, 'VERY FRESH', 'very-fresh', 0, 4, 'Baru disangrai 0–4 hari. Masih degassing, aroma sangat hidup. Diamkan 12–24 jam setelah buka.', '#2F7D4F', 1, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(2, 'PEAK FLAVOR', 'peak-flavor', 5, 14, '5–14 hari: rasa di puncak. Manis, juicy, dan seimbang. Waktu terbaik untuk diseduh.', '#5BA46A', 2, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(3, 'AGING', 'aging', 15, NULL, '15+ hari: mulai aging. Seduh dengan grind sedikit lebih halus atau rasio lebih berani.', '#B07D4F', 3, '2026-10-04 22:51:37', '2026-10-04 22:51:37');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_10_05_000001_create_origins_table', 1),
(5, '2026_10_05_000002_create_brewing_methods_table', 1),
(6, '2026_10_05_000003_create_products_table', 1),
(7, '2026_10_05_000004_create_shop_tables', 1),
(8, '2026_10_05_000005_create_quiz_tables', 1),
(9, '2026_10_05_000006_create_notifications_table', 2),
(10, '2026_10_05_000007_add_payment_verification_to_orders', 3),
(11, '2026_10_05_000008_add_province_to_users', 4),
(12, '2026_10_05_000009_add_unique_review_per_user_product', 5),
(13, '2026_10_05_000010_add_blend_to_cart_and_order_items', 6),
(14, '2026_10_05_000011_add_soft_deletes_to_products_and_orders', 7),
(15, '2026_10_05_000012_add_rejection_reason_and_status_logs', 8),
(16, '2026_10_05_000013_add_non_negative_and_unique_carts', 9);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('16357173-7ee8-43f2-93e0-7115814660f5', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 5, '{\"title\":\"Pembayaran terverifikasi \\u2014 pesanan diproses\",\"status\":\"paid\",\"order_id\":9,\"order_number\":\"BKP-20261012-45583E\",\"total\":645000,\"url\":\"http:\\/\\/127.0.0.1:8000\\/orders\\/9\"}', NULL, '2026-10-11 20:26:47', '2026-10-11 20:26:47'),
('77dfe1d0-fa6a-4a73-8a94-090ec576aa1f', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 5, '{\"title\":\"Pesanan selesai\",\"status\":\"completed\",\"order_id\":9,\"order_number\":\"BKP-20261012-45583E\",\"total\":645000,\"url\":\"http:\\/\\/127.0.0.1:8000\\/orders\\/9\"}', NULL, '2026-10-11 20:26:57', '2026-10-11 20:26:57'),
('af3de464-f953-4e4c-a702-13e4e05e8c62', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\User', 1, '{\"title\":\"Pesanan baru\",\"order_id\":11,\"order_number\":\"BKP-20261012-346405\",\"customer\":\"april\",\"total\":94000,\"payment_method\":\"cod\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/orders\\/11\"}', NULL, '2026-10-11 23:06:59', '2026-10-11 23:06:59'),
('cd66bfbc-4da0-4b07-b50d-82ec801eac01', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\User', 1, '{\"title\":\"Pesanan baru\",\"order_id\":9,\"order_number\":\"BKP-20261012-45583E\",\"customer\":\"romanus\",\"total\":645000,\"payment_method\":\"ewallet\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/orders\\/9\"}', '2026-10-11 20:26:42', '2026-10-11 20:25:24', '2026-10-11 20:26:42'),
('e740a5d0-4ea9-428d-a8ba-a31fed3c2d11', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\User', 1, '{\"title\":\"Pesanan baru\",\"order_id\":10,\"order_number\":\"BKP-20261012-50C009\",\"customer\":\"bryan\",\"total\":190000,\"payment_method\":\"ewallet\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/orders\\/10\"}', NULL, '2026-10-11 22:00:37', '2026-10-11 22:00:37');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_number` varchar(255) NOT NULL,
  `recipient_name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `shipping_method` varchar(255) NOT NULL DEFAULT 'JNE Regular',
  `shipping_cost` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `payment_method` varchar(255) NOT NULL DEFAULT 'transfer',
  `payment_proof` varchar(255) DEFAULT NULL,
  `claimed_paid_at` timestamp NULL DEFAULT NULL,
  `verified_at` timestamp NULL DEFAULT NULL,
  `verified_by` bigint(20) UNSIGNED DEFAULT NULL,
  `rejection_reason` varchar(500) DEFAULT NULL,
  `order_status` enum('pending','awaiting_verification','paid','processing','shipped','completed','cancelled') NOT NULL DEFAULT 'pending',
  `subtotal` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `total` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `order_number`, `recipient_name`, `phone`, `address`, `city`, `postal_code`, `province`, `shipping_method`, `shipping_cost`, `payment_method`, `payment_proof`, `claimed_paid_at`, `verified_at`, `verified_by`, `rejection_reason`, `order_status`, `subtotal`, `total`, `notes`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 'BKP-20261005-B4E32F', 'bryan', '083805819301', 'bogor jawa barat', 'bogor', '160789', 'jabar', 'GoSend SameDay', 25000, 'qris', NULL, NULL, NULL, NULL, NULL, 'pending', 589000, 614000, 'halus jembut', '2026-10-04 23:32:27', '2026-10-04 23:32:27', NULL),
(2, 2, 'BKP-20261009-8E68A0', 'Customer Demo', '424323442', 'sdcewcdxefcefcefcefc', 'cfcvwdcfefff', '12e1e1e1', 'wdewdedwedwe', 'GoSend SameDay', 25000, 'qris', NULL, NULL, NULL, NULL, NULL, 'paid', 79000, 104000, 'ok', '2026-10-08 17:57:12', '2026-10-08 17:57:30', NULL),
(9, 5, 'BKP-20261012-45583E', 'romanus', '0838056819301', 'sjdnjvsfvsvdfss', 'Kabupaten Bogor', '12345', 'Jawa Barat', 'GoSend SameDay', 25000, 'ewallet', NULL, NULL, NULL, NULL, NULL, 'completed', 620000, 645000, NULL, '2026-10-11 20:25:24', '2026-10-11 20:26:57', NULL),
(10, 6, 'BKP-20261012-50C009', 'bryan', '08987654398', 'tanjung pinang', 'Kabupaten Lamongan', '97654', 'Jawa Timur', 'J&T Express', 14000, 'ewallet', NULL, NULL, NULL, NULL, NULL, 'pending', 176000, 190000, NULL, '2026-10-11 22:00:37', '2026-10-11 22:00:37', NULL),
(11, 7, 'BKP-20261012-346405', 'april', '08543532654', 'lkkjhgfdfsdfxgchvjb,kn.nm', 'Kota Bandar Lampung', '98754', 'Lampung', 'GoSend SameDay', 25000, 'cod', NULL, NULL, NULL, NULL, NULL, 'processing', 69000, 94000, 'ok', '2026-10-11 23:06:59', '2026-10-11 23:06:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `blend_name` varchar(255) DEFAULT NULL,
  `blend_components` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`blend_components`)),
  `form_type` varchar(255) NOT NULL DEFAULT 'whole_bean',
  `weight` int(11) NOT NULL DEFAULT 250,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `unit_price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `subtotal` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `product_name`, `blend_name`, `blend_components`, `form_type`, `weight`, `quantity`, `unit_price`, `subtotal`) VALUES
(1, 1, 1, 'Gayo Natural', NULL, NULL, 'whole_bean', 1000, 1, 310000, 310000),
(2, 1, 2, 'Toraja Washed', NULL, NULL, 'ground', 1000, 1, 279000, 279000),
(3, 2, 2, 'Toraja Washed', NULL, NULL, 'whole_bean', 250, 1, 79000, 79000),
(10, 9, 1, 'Gayo Natural', NULL, NULL, 'whole_bean', 1000, 2, 310000, 620000),
(11, 10, 1, 'Gayo Natural', NULL, NULL, 'whole_bean', 250, 2, 88000, 176000),
(12, 11, 7, 'Ijen Classic', NULL, NULL, 'whole_bean', 250, 1, 69000, 69000);

-- --------------------------------------------------------

--
-- Table structure for table `order_status_logs`
--

CREATE TABLE `order_status_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `from_status` varchar(255) DEFAULT NULL,
  `to_status` varchar(255) NOT NULL,
  `changed_by` bigint(20) UNSIGNED DEFAULT NULL,
  `note` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `origins`
--

CREATE TABLE `origins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL DEFAULT 'Indonesia',
  `farm_producer` varchar(255) DEFAULT NULL,
  `altitude_range` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `origins`
--

INSERT INTO `origins` (`id`, `name`, `slug`, `region`, `country`, `farm_producer`, `altitude_range`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Gayo', 'gayo', 'Aceh, Sumatera', 'Indonesia', 'Koperasi Petani Gayo, Bener Meriah', '1200–1500 mdpl', 'Dataran tinggi Gayo di Bener Meriah, Aceh, menyimpan salah satu kopi arabika terbaik dunia. Tumbuh di ketinggian 1.200-1.500 mdpl dengan tanah vulkanik subur dan udara sejuk pegunungan. Proses natural menghasilkan body penuh, keasaman rendah, dan ledakan rasa cokelat gelap, stroberi, serta gula aren yang legit. Gayo Natural adalah pilihan sempurna bagi kamu yang menyukai kopi bold namun tetap manis dan hangat di tenggorokan.', NULL, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(2, 'Toraja', 'toraja', 'Tana Toraja, Sulawesi', 'Indonesia', 'Petani Toraja Sapan', '1400–1800 mdpl', 'Kopi Toraja telah mendunia sejak era kolonial dan tetap menjadi kebanggaan Sulawesi. Ditanam oleh para petani Toraja Sapan di ketinggian 1.400-1.800 mdpl, biji ini diolah dengan metode washed yang bersih dan konsisten. Rasanya tegas dan berkarakter: bold, keasaman rendah, dengan lapisan cokelat pekat, kayu manis hangat, dan gula aren. Setiap seduhan menghadirkan kehangatan tanah tinggi Sulawesi dalam cangkirmu.', NULL, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(3, 'Kintamani', 'kintamani', 'Bangli, Bali', 'Indonesia', 'Subak Abian Kintamani', '1200–1400 mdpl', 'Kintamani tumbuh di lereng Gunung Batur, Bangli, Bali, berdampingan dengan pohon jeruk Bali dalam sistem pertanian subak abian yang turun-temurun. Kombinasi unik ini memberi kopi karakter citrus yang cerah, aroma floral lembut, dan manis madu yang seimbang. Di ketinggian 1.200-1.400 mdpl, biji pilihan diolah dengan metode honey untuk mempertahankan rasa buah yang hidup. Cocok untuk kamu yang menyukai kopi segar, ringan, dan penuh kejutan rasa.', NULL, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(4, 'Flores Bajawa', 'flores-bajawa', 'Ngada, Flores', 'Indonesia', 'Kelompok Tani Bajawa', '1200–1700 mdpl', 'Flores Bajawa lahir dari tanah vulkanik Ngada yang kaya mineral di ketinggian 1.200-1.700 mdpl. Diolah dengan metode honey, kopi ini menonjolkan body tebal, rasa cokelat lembut, dan sentuhan kacang yang gurih, diakhiri aftertaste manis yang bertahan lama. Karakter vulkaniknya memberi kedalaman rasa yang khas dan sulit ditiru. Pilihan tepat bagi pencinta kopi dengan rasa mantap dan seimbang.', NULL, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(5, 'Mandailing', 'mandailing', 'Mandailing Natal, Sumatera', 'Indonesia', 'Lintong & Mandailing Estate', '1100–1500 mdpl', 'Mandailing dan Lintong dari Sumatera Utara adalah simbol kopi strong dengan karakter tegas. Ditanam di ketinggian 1.100-1.500 mdpl, biji ini disangrai gelap untuk memunculkan pahit yang elegan, cokelat gelap, dan molase yang kental. Rasanya pekat, penuh, dan membangunkan. Favorit sejati untuk espresso dan pecinta kopi hitam tanpa kompromi yang ingin merasakan kekuatan penuh kopi Sumatera.', NULL, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(6, 'Wamena', 'wamena', 'Lembah Baliem, Papua', 'Indonesia', 'Petani Organik Wamena', '1600–2000 mdpl', 'Dari Lembah Baliem, Papua, pada ketinggian 1.600-2.000 mdpl, tumbuh kopi organik yang ditanam secara alami tanpa bahan kimia oleh petani Wamena. Karakternya halus dan elegan: floral, fruity, dengan manis seperti teh dan keasaman juicy yang menyegarkan. Profilnya unik dan tidak biasa, mencerminkan kemurnian alam Papua. Sempurna untuk kamu yang ingin menjelajah rasa kopi Indonesia yang berbeda dan berkelas.', NULL, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(7, 'Ijen', 'ijen', 'Bondowoso, Jawa Timur', 'Indonesia', 'Perkebunan Blawan Ijen', '900–1500 mdpl', 'Java Ijen dari perkebunan Blawan, Bondowoso, Jawa Timur, adalah kopi klasik yang telah dibudidayakan sejak zaman Belanda. Tumbuh di ketinggian 900-1.500 mdpl, rasanya seimbang dengan sentuhan nutty, cokelat susu, dan body medium yang nyaman. Tidak terlalu kuat, tidak terlalu asam, menjadikannya teman harian yang menyenangkan. Pilihan pas bagi kamu yang menyukai kopi lembut, hangat, dan mudah dinikmati kapan saja.', NULL, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(8, 'Temanggung', 'temanggung', 'Temanggung, Jawa Tengah', 'Indonesia', 'Sumbing Sindoro Farm', '1000–1450 mdpl', 'Di lereng Gunung Sumbing dan Sindoro, Temanggung, Jawa Tengah, kopi arabika tumbuh di ketinggian 1.000-1.450 mdpl dengan sentuhan tanah vulkanik yang subur. Karakternya seimbang dan ramah: manis gula jawa yang khas, rempah halus, dan body yang lembut. Hangat dan menenangkan, kopi ini menghadirkan cita rasa tradisi Jawa dalam setiap tegukan. Cocok untuk kamu yang menyukai kopi manis, seimbang, dan penuh kehangatan.', NULL, '2026-10-04 22:51:37', '2026-10-04 22:51:37');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price_100g` int(10) UNSIGNED NOT NULL DEFAULT 35000,
  `price_250g` int(10) UNSIGNED NOT NULL DEFAULT 75000,
  `price_500g` int(10) UNSIGNED NOT NULL DEFAULT 140000,
  `price_1000g` int(10) UNSIGNED NOT NULL DEFAULT 260000,
  `stock` int(10) UNSIGNED NOT NULL DEFAULT 20,
  `altitude` varchar(255) DEFAULT NULL,
  `roast` enum('light','medium','dark') NOT NULL DEFAULT 'medium',
  `processing` enum('washed','natural','honey') NOT NULL DEFAULT 'washed',
  `taste_tags` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`taste_tags`)),
  `mood_tags` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`mood_tags`)),
  `strength` enum('light','balanced','strong') NOT NULL DEFAULT 'balanced',
  `acidity` enum('low','medium','high') NOT NULL DEFAULT 'medium',
  `acidity_score` int(11) NOT NULL DEFAULT 50,
  `sweetness_score` int(11) NOT NULL DEFAULT 50,
  `body` enum('light','medium','full') NOT NULL DEFAULT 'medium',
  `body_score` int(11) NOT NULL DEFAULT 50,
  `aroma_score` int(11) NOT NULL DEFAULT 50,
  `tasting_notes` text DEFAULT NULL,
  `roast_date` date DEFAULT NULL,
  `whole_bean_available` tinyint(1) NOT NULL DEFAULT 1,
  `ground_available` tinyint(1) NOT NULL DEFAULT 1,
  `image` varchar(255) DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `sold_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `origin_id`, `name`, `slug`, `description`, `price_100g`, `price_250g`, `price_500g`, `price_1000g`, `stock`, `altitude`, `roast`, `processing`, `taste_tags`, `mood_tags`, `strength`, `acidity`, `acidity_score`, `sweetness_score`, `body`, `body_score`, `aroma_score`, `tasting_notes`, `roast_date`, `whole_bean_available`, `ground_available`, `image`, `is_featured`, `is_active`, `sold_count`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Gayo Natural', 'gayo-natural', 'Signature kami. Natural process dari Bener Meriah dengan fermentasi buah yang juicy. Cokelat pekat bertemu stroberi dan winey manis. Untuk kamu yang cari energi dan kreativitas.', 42000, 88000, 165000, 310000, 9, '1400 mdpl', 'medium', 'natural', '[\"fruity\",\"chocolate\"]', '[\"energy\",\"creative\"]', 'strong', 'medium', 65, 78, 'full', 85, 88, 'Dark Chocolate, Strawberry, Brown Sugar, Winey', '2026-09-29', 1, 1, NULL, 1, 1, 15, '2026-10-04 22:51:37', '2026-10-11 22:00:37', NULL),
(2, 2, 'Toraja Washed', 'toraja-washed', 'Kopi tenang untuk sore yang lambat. Washed Toraja yang bersih, manis gula aren, dan aftertaste cokelat panjang. Rendah asam, nyaman di lambung.', 38000, 79000, 149000, 279000, 30, '1600 mdpl', 'dark', 'washed', '[\"chocolate\",\"nutty\"]', '[\"calm\",\"focus\"]', 'balanced', 'low', 30, 70, 'full', 90, 72, 'Dark Chocolate, Palm Sugar, Cinnamon, Earthy', '2026-10-02', 1, 1, NULL, 1, 1, 2, '2026-10-04 22:51:37', '2026-10-08 17:57:12', NULL),
(3, 3, 'Kintamani Honey', 'kintamani-honey', 'Honey process dari Bali dengan manis jeruk dan bunga. Bersih, ringan, dan menenangkan. Favorit untuk V60 dan yang sensitif asam berlebih.', 40000, 85000, 159000, 299000, 18, '1300 mdpl', 'light', 'honey', '[\"fruity\",\"floral\"]', '[\"calm\",\"creative\"]', 'light', 'high', 82, 85, 'light', 40, 90, 'Orange, Jasmine, Honey, Bergamot', '2026-09-27', 1, 1, NULL, 1, 1, 0, '2026-10-04 22:51:37', '2026-10-04 22:51:37', NULL),
(4, 4, 'Flores Bajawa Honey', 'flores-bajawa-honey', 'Vulkanik dan manis. Honey Bajawa dengan body tebal, kacang panggang, dan karamel. Teman fokus kerja yang tidak bikin gelisah.', 37000, 77000, 145000, 269000, 27, '1500 mdpl', 'medium', 'honey', '[\"chocolate\",\"nutty\"]', '[\"focus\",\"energy\"]', 'balanced', 'medium', 50, 80, 'full', 78, 75, 'Milk Chocolate, Hazelnut, Caramel', '2026-09-25', 1, 1, NULL, 0, 1, 0, '2026-10-04 22:51:37', '2026-10-04 22:51:37', NULL),
(5, 5, 'Mandailing Bold', 'mandailing-bold', 'Paling strong. Dark roast Mandailing untuk espresso dan susu. Pahit elegan, molase, dan crema tebal.', 35000, 72000, 135000, 255000, 8, '1300 mdpl', 'dark', 'washed', '[\"chocolate\"]', '[\"energy\",\"focus\"]', 'strong', 'low', 25, 55, 'full', 95, 68, 'Dark Chocolate, Molasses, Tobacco, Spice', '2026-10-03', 1, 1, NULL, 1, 1, 0, '2026-10-04 22:51:37', '2026-10-04 22:51:37', NULL),
(6, 6, 'Wamena Floral', 'wamena-floral', 'Organik dari Lembah Baliem. Ringan, floral, dan teh manis. Seperti jalan pagi di kebun. Untuk jiwa kreatif dan tenang.', 45000, 95000, 179000, 339000, 15, '1800 mdpl', 'light', 'washed', '[\"floral\",\"fruity\"]', '[\"creative\",\"calm\"]', 'light', 'high', 78, 72, 'light', 35, 95, 'Jasmine, Peach, Black Tea, Honey', '2026-09-15', 1, 1, NULL, 0, 1, 0, '2026-10-04 22:51:37', '2026-10-04 22:51:37', NULL),
(7, 7, 'Ijen Classic', 'ijen-classic', 'Kopi harian paling aman. Seimbang, nutty, dan bersahabat untuk semua metode. Cocok untuk pemula.', 33000, 69000, 129000, 239000, 39, '1200 mdpl', 'medium', 'washed', '[\"nutty\",\"chocolate\"]', '[\"focus\",\"calm\"]', 'balanced', 'medium', 45, 68, 'medium', 60, 65, 'Peanut, Cocoa, Brown Sugar', '2026-09-23', 1, 1, NULL, 0, 1, 1, '2026-10-04 22:51:37', '2026-10-11 23:06:59', NULL),
(8, 8, 'Sumbing Honey', 'sumbing-honey', 'Manis gula jawa dari lereng Sumbing. Honey Temanggung yang bulat, rempah halus, dan nyaman untuk sore.', 36000, 74000, 139000, 259000, 5, '1350 mdpl', 'medium', 'honey', '[\"nutty\",\"fruity\"]', '[\"calm\",\"focus\"]', 'balanced', 'medium', 55, 82, 'medium', 65, 78, 'Palm Sugar, Cashew, Dried Fruit, Spice', '2026-10-04', 1, 1, NULL, 0, 1, 0, '2026-10-04 22:51:37', '2026-10-04 22:51:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_brew`
--

CREATE TABLE `product_brew` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `brewing_method_id` bigint(20) UNSIGNED NOT NULL,
  `is_recommended` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_brew`
--

INSERT INTO `product_brew` (`id`, `product_id`, `brewing_method_id`, `is_recommended`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(2, 1, 2, 1, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(3, 1, 4, 0, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(4, 1, 3, 1, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(5, 2, 2, 1, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(6, 2, 4, 1, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(7, 2, 3, 1, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(8, 3, 1, 1, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(9, 3, 6, 1, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(10, 4, 2, 1, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(11, 4, 1, 1, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(12, 4, 5, 1, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(13, 5, 3, 1, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(14, 5, 4, 1, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(15, 5, 5, 1, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(16, 6, 1, 1, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(17, 6, 6, 1, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(18, 7, 4, 1, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(19, 7, 2, 1, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(20, 7, 1, 1, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(21, 8, 1, 1, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(22, 8, 4, 1, '2026-10-04 22:51:37', '2026-10-04 22:51:37');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_options`
--

CREATE TABLE `quiz_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quiz_question_id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `icon` varchar(255) NOT NULL DEFAULT '☕',
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quiz_options`
--

INSERT INTO `quiz_options` (`id`, `quiz_question_id`, `value`, `label`, `description`, `icon`, `order`, `created_at`, `updated_at`) VALUES
(1, 1, 'energy', 'Energy', 'Butuh dorongan biar melek & semangat', 'A', 1, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(2, 1, 'focus', 'Focus', 'Butuh fokus kerja / belajar', 'A', 2, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(3, 1, 'calm', 'Calm', 'Santai, slow morning, me-time', 'A', 3, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(4, 1, 'creative', 'Creative', 'Cari inspirasi & eksplorasi rasa', 'A', 4, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(5, 2, 'chocolate', 'Chocolate', 'Cokelat, manis, dan bold', 'A', 1, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(6, 2, 'fruity', 'Fruity', 'Segar buah-buahan', 'A', 2, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(7, 2, 'floral', 'Floral', 'Wangi bunga & teh', 'A', 3, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(8, 2, 'nutty', 'Nutty', 'Kacang panggang & karamel', 'A', 4, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(9, 3, 'light', 'Light', 'Ringan, smooth, santai', 'A', 1, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(10, 3, 'balanced', 'Balanced', 'Seimbang untuk harian', 'A', 2, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(11, 3, 'strong', 'Strong', 'Nendang, pekat, full', 'A', 3, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(12, 4, 'light', 'Light', 'Terang, fruity, kompleks', 'A', 1, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(13, 4, 'medium', 'Medium', 'Seimbang & manis', 'A', 2, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(14, 4, 'dark', 'Dark', 'Bold, pahit elegan', 'A', 3, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(15, 5, 'V60', 'V60', 'Pour over bersih', 'A', 1, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(16, 5, 'French Press', 'French Press', 'Body tebal', 'A', 2, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(17, 5, 'Espresso', 'Espresso', 'Pekat & crema', 'A', 3, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(18, 5, 'Tubruk', 'Tubruk', 'Klasik Indonesia', 'A', 4, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(19, 6, 'low', 'Low', 'Tidak suka asam', 'A', 1, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(20, 6, 'medium', 'Medium', 'Segar secukupnya', 'A', 2, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(21, 6, 'high', 'High', 'Suka juicy & bright', 'A', 3, '2026-10-04 22:51:37', '2026-10-04 22:51:37');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_option_scores`
--

CREATE TABLE `quiz_option_scores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quiz_option_id` bigint(20) UNSIGNED NOT NULL,
  `match_field` varchar(255) NOT NULL,
  `match_value` varchar(255) NOT NULL,
  `weight` int(11) NOT NULL DEFAULT 20,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quiz_option_scores`
--

INSERT INTO `quiz_option_scores` (`id`, `quiz_option_id`, `match_field`, `match_value`, `weight`, `created_at`, `updated_at`) VALUES
(1, 1, 'mood', 'energy', 20, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(2, 2, 'mood', 'focus', 20, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(3, 3, 'mood', 'calm', 20, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(4, 4, 'mood', 'creative', 20, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(5, 5, 'taste', 'chocolate', 25, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(6, 6, 'taste', 'fruity', 25, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(7, 7, 'taste', 'floral', 25, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(8, 8, 'taste', 'nutty', 25, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(9, 9, 'strength', 'light', 15, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(10, 10, 'strength', 'balanced', 15, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(11, 11, 'strength', 'strong', 15, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(12, 12, 'roast', 'light', 15, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(13, 13, 'roast', 'medium', 15, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(14, 14, 'roast', 'dark', 15, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(15, 15, 'brewing', 'V60', 15, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(16, 16, 'brewing', 'French Press', 15, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(17, 17, 'brewing', 'Espresso', 15, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(18, 18, 'brewing', 'Tubruk', 15, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(19, 19, 'acidity', 'low', 10, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(20, 20, 'acidity', 'medium', 10, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(21, 21, 'acidity', 'high', 10, '2026-10-04 22:51:37', '2026-10-04 22:51:37');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_questions`
--

CREATE TABLE `quiz_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `question` varchar(255) NOT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `icon` varchar(255) NOT NULL DEFAULT '☕',
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quiz_questions`
--

INSERT INTO `quiz_questions` (`id`, `key`, `question`, `subtitle`, `icon`, `order`, `created_at`, `updated_at`) VALUES
(1, 'mood', 'Lagi butuh kopi buat apa?', 'Pilih mood yang paling kamu rasakan hari ini', 'Q', 1, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(2, 'taste', 'Rasa seperti apa yang kamu suka?', 'Bayangkan gigitan pertama yang bikin nyaman', 'Q', 2, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(3, 'strength', 'Seberapa strong kopimu?', 'Level intensitas kafein & body', 'Q', 3, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(4, 'roast', 'Level roast favorit?', 'Mempengaruhi pahit & manis', 'Q', 4, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(5, 'brewing', 'Biasa seduh pakai apa?', 'Kami cocokkan dengan metode terbaik', 'Q', 5, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(6, 'acidity', 'Gimana soal acidity?', 'Kesegaran asam buah vs rendah asam', 'Q', 6, '2026-10-04 22:51:37', '2026-10-04 22:51:37');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL DEFAULT 5,
  `comment` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('5EzRsDl4XXI42NauKBy1rcOIkSOpMKyPpkXYHKlm', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT; Windows NT 10.0; en-US) WindowsPowerShell/5.1.26100.9444', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidXVnRXBoRzR6SU1wRmZFYXNFMTdqYW1ud2dmOUNucXJBM0NjdFdWdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODIyMC9tYXRjaCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1791784236),
('6lBtYQFTchNh5iR4j1BlV57ipUjuSyOnC45KlWWw', 2, '127.0.0.1', 'Symfony', 'ZXlKcGRpSTZJa3RhUTA5eFZqUnNMMHB5WlZweFNUQlhVV2xZWjJjOVBTSXNJblpoYkhWbElqb2lXbk5TV0ZaNllqbEZaRGtyUVVseFVqQmxWV0o0TjNkVVRHNURjRlJLZWtzNU1IVTJiRk50UVVaaGJVc3ZZV3R2U0U0eVVIRnZhRVI1VTNwNUwwa3dPVzB4V2l0UVJVaGtSbEJGWlhseVYzcHVja3M0VVRaeGRFOVdMemRDWlUwNE5rSkljSEJaWWxaU1ZGWnVTV0pXYjFKM05GUXdNVGxsVlhKMVVXOVJVRmg2VTBWMk4wNVBjMGxRY2l0cWVEVnlUbkZHT1RJNEwzZGpaMjFPUWpGUWJuVk1Xa2xSTjBGWU5YWXZTMDQwZUdkM1EwaDFaSEkzZDNaa2VTOTFaV3BMZWlzM2NGZG5aekJ6SzA5RE9HMVFORGx2Ym5RM1ZGaDBaMWhtV0d3MFVHWktUVWxYWVhwMU5VZDFiRTVzYmpJM1YwcFNUalpvVEZaV1ExTkxXVE5VWVdaTlEwdFFVV3N4ZURaTFdIVlZOSGRwTDJ0Mk4wcHpWbVpISzNNemRrcFdhMUpXYjB4dU4zcHdXbFpxZUVZclJFazNhVGgyV1ZSeGFVazJlUzlHVFV4SFRYZHBSWEZsV0dWYU56aGpibkE1Vkd4a2RqQkJQVDBpTENKdFlXTWlPaUl5WmpJME1EWmpOR1U1TkdReFpEWmxORE0yTVRrMFpUSTBObU0wWVRkbE5ETTROR1prTXpsak9XUm1aR1l4WlRjeVpHUmhaVE13WW1ZeE5qVXdNakZsSWl3aWRHRm5Jam9pSW4wPQ==', 1791941146),
('9CKPtvwkxQKCWUuZRhDTsZXhAYOqNg9wk4DPGE8z', 2, '127.0.0.1', 'Symfony', 'ZXlKcGRpSTZJbUZYTWxwd0szbHZUbWh3VjJjMk0zVk1jVUZNWkVFOVBTSXNJblpoYkhWbElqb2lia3RLTW14eEszTktZelpCVGtKSFFVTXpORkp0TVVzM1ZUVnJiVWQ1ZW5SMmJVRnhSMnN5WjNKdVVqSnZUMUZrTDA5WlMyOUhRM1oyUzBOVE9EWlBkU3RySzNKU2FrWkxXbTR3U0RWeWFTdHZhR3BRYTJsa2RVUXdNVmROVkdOVmFtWjFaa1ZUY25WMlp6aGllWEpqTmxkU1ZrMXhTRzlVYzJ0WlZtUkRRVVJsZFdRMGVrOVVhRWs0U1RkeVFubHNTVWxCWlhsVGFGVkJXVEJNUVRsSVNGSlFaekJ3VG1vMGVreHJXVTgzVjJGaVVIQXdlWEZZUWtwdFRTOTRjM3B0UlhwMWJUWlZZVEExTmpOeGMzTklXVkZPWjNRdmRtNWtWR1F6YTA5bGEwaGlRM0JrY2tZM2NYZG5TVmhKVUVwRFF6WlZNMkZhT1dSUVNHcFlaR051V1hocmJVSnpWMlJaV0c1bE1scDFjMHhMTm5ndlNUbHBVbFJVTjFneVlUZzJXQzl4YkdoV1IyVkxSREJvWkVaSGR5dERkV2xTZVc1U0sxQklRemt2TkVadFRIcGpaWFIxWkRrMVMxTXJUbGxSVWpsVmVFazJlRmRuYlZkd2ExaHdVR3hOZUhsbmIyeERSMkZZWkRoSlMwYzBPQ3RTUW5BMVlUWTBUR2hsTDFReElpd2liV0ZqSWpvaU9XUTBZak5pWmpRNU4ySmlaV1JoTVRoaVlXUXdObU16TkRJeVlqTXdaV1ZtTnpObU1HRXhOR1V3WTJSaFkySTRNREE0WWpobU1HRXlPVE5qWVRjd01DSXNJblJoWnlJNklpSjk=', 1791939489),
('dQv9yjeGvrptSnwrojDds8XeIZgVNmGQ5MY9WKMr', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT; Windows NT 10.0; en-US) WindowsPowerShell/5.1.26100.9444', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUjNJQzJLaFIwUlZuNjg5bGZYcEQ0WFpOekZqZkNBNXUwVHpaSEtrTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODIyMC9yZWdpc3RlciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1791784238),
('engQEvlflUuy9eNiervScC3fuzpGT9jCGiMO5csL', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/154.0.0.0 Safari/537.36', 'ZXlKcGRpSTZJakJOWmpNM2FsbzFNa1JIYTIxYWVuQlhiM2RaWTNjOVBTSXNJblpoYkhWbElqb2lOMVpxYXpsSWJGRTBlRFYxYWsxdGIwbHlXRlZEYUVZeE1YaGtValpCVFZWcVFUaFNRMWR2UkVRek5HRkRUR3B1V0ZOUmFVRlBiRXh4TVVaMFJVWlFORGhPU3pjelJXUk5SMmg1YTIxWlZraFJRWFoxYzBSQmNUUnhlV2h3WVcwMU16Uk1SR05uYzA5b09XbDFNemhzT0dGUlRrdDBjblV6U0RKQ01saG1lblJqV0hGSFJrZFJSVTlwUWtoS01tSkhOM0puTkhKU01YVXhUSEJaU1c5TE5pOTVWazh3UlN0MGRVUTFUSFZ4UWs5WVRERTJSVkV5YWt4TVFWVldjRUZRYW1ad1NFMWxVemh0VldGTVZpdGFOMkoyU2t3M1VVSk9aWGhaYVRobFlYUnNjR3czVEhOTE5GRTVTbFpFVmxWUE5XcDVVWE5uZDFvelZWRmlTbXRVU1NJc0ltMWhZeUk2SWpaa1pEWTNNbVU0TkRaa09HVmhaRFU1TUdJeE5qZzROV05qTnpBeE1HRXpabVprWWpBeU1USmhaRGsyT0RJMVlUYzBNekZrT0RBMlpEZzJPRE0zTVdRaUxDSjBZV2NpT2lJaWZRPT0=', 1791787734),
('fcQOrKOOZXE5nIMkMiXYbNjbR7FRcLFLZiDr9eZt', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT; Windows NT 10.0; en-US) WindowsPowerShell/5.1.26100.9444', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiT1ZxVUk2aTZxZWhXZGlyUlZTSnkzbjl4MktXZFR5bmlvR0dJZHExQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly8xMjcuMC4wLjE6ODIyMC9hZG1pbi9mcmVzaG5lc3MtcnVsZXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1791784241),
('FlhFtxiAxWVOA6h0hmRmfTrgCbgD2vjuOc5QrAqq', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT; Windows NT 10.0; en-US) WindowsPowerShell/5.1.26100.9444', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRVY1MlVTb2FCU09ZTW5CWEJ0ZGRPUUdKS2RuZFM4dGplUXJvMHJNQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODIyMC9jb2ZmZWUvZ2F5by1uYXR1cmFsIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1791784236),
('gQVqqio2a7P88DpmYQGRgb0dFttVVPP5oZ2DNkBD', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT; Windows NT 10.0; en-US) WindowsPowerShell/5.1.26100.9444', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic29lM3NHajVUZkdIZWMwWjN3aVJEUHRnOXhyeDFkNEFSZ3JLWXZLdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODIyMC9jb2ZmZWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1791784235),
('ma47drd0t9bY08rQFTqmadx3ts4zf9UNEqwzRAlx', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT; Windows NT 10.0; en-US) WindowsPowerShell/5.1.26100.9444', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibXNiVHpsUHBpMmhXSFoxdndQWVc4RW9XRzNkaTNQVEptTHZZOEVqOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODIyMC9tYXRjaC9xdWl6Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1791784236),
('PLW4IVEKGGDXT2YsnqnbMjfm8Z5sJKT3cdTDoWPx', NULL, '127.0.0.1', 'Symfony', 'ZXlKcGRpSTZJa0Y1WlZjeFltaHVVVE5YTUhCbldHOURaV3hvVVhjOVBTSXNJblpoYkhWbElqb2lOWGw0U3pWdVYyTjROV1J0ZUdkSFRrVkxlU3R6V0VkYWN6WlZNR05GTTBsT1Z6bDRSMnRJVFdOeWIzRjVSSFZCUzBveWVUSklXamd4VUZsRGFuUklNVE5LVEV0elVWVnFTRmx6WTFacWFFdDRNRTVTWW1nNFIxRkZUbkV6ZGxaVWNqUmFMell2YlhjemNVbzFkRkZwYzFFNVNYazFkSFJPUjJoRFF6SmpRVE14V0hacmVrRlZXbTVrVjJGeFNreEtiMmQyU1RsNk9UVTVlakJJUkdkQ01uRnNUbmhQUWxFMWVsSnFaa1pHVW5WYVF6bEJhVUkzZDNsak9URXJNbFJoV0VwRGNFWkVSbEZtZUdFdmRsTk1NM05EUVdaeFMxbGhURk5VWmtsNGFGQk9VRXdyY0hadFYyTTNlRGRaWW10WmRTdHVkbWxxTlUxVFVqaFNNM1kyZHlJc0ltMWhZeUk2SW1Zd01Ea3lPRGRtTkRCak1qQTFNREV3WmpBME0yTXpaakl5T0dWalpURmlNVEZsTXpRMFlUSXhOVFk1WTJVMVpEUmtNVEk0TURZeU9ERTFObUV6TmpraUxDSjBZV2NpT2lJaWZRPT0=', 1791939488),
('r7csqv2ATXi2zKIrPnBiiJpUb1jdS4Dgjifsb4aa', NULL, '127.0.0.1', 'Symfony', 'ZXlKcGRpSTZJakJ5VWpZNVZEQTBLM0o2UTJwbWMyWndaMWRWTlZFOVBTSXNJblpoYkhWbElqb2lSbTVPY1daR1pETjRVekJXT0dKRFZFSjROMDl6UzAxU2NqVTROVWRHUXpaTlNVUnliVEpSZW14RFVVVnFUVVpRV1hWWmJtZDFiMGR0YVdsMVUzcDJlRGhZYW1ocWRGVnBNRWd5V0RGdE5IaHhVelpaVlVSbU1qQXZORU5rVldSWGQxUnZRbFZvZEc5UGRIbEtSeTloUXl0VFZITktZa0Y2YW0xeEwycFFhbGRHV1hSelRFNVRkMHhyUVhCdFpFUTNaRFJVU1VoV2VFNURTMHhOUzNwb2FrcExVSEJxWlVNMUwyUnVSMnhZWWxKREwwVktUakZYS3pKRVEzWlNUbVZuVnpOUFQzZHNUMUZhV1RKc016TjRjV0ZaUjB4MmVVZFBjM1ZsYzNsNFlqQkdiM2h4YUVWRGVqUm5aVTByTlRKNGFIUnlkRGx5UzJsWVpFZEZObGhQY3lJc0ltMWhZeUk2SWpJNFl6STJPR016T0dGaU9ESTNNREV6TmpZeVlqQTBNV0U0T0RjNFlUaGhOVFV5Tm1JNFkySTROMkUxWW1KaU1qbG1NbVkzTmpnME9EY3lZMll4TmpNaUxDSjBZV2NpT2lJaWZRPT0=', 1791787883),
('Rhjh080ZTlIq1rTZAZAgobaOsWmOJ9GJEAygIqpc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'ZXlKcGRpSTZJazlIV0hGaVZDOHpaa2RXVldvelF6SkllazQxTDFFOVBTSXNJblpoYkhWbElqb2lWbGN6ZDFFeVVscDZiMU51YUdGNlYwbHhlVk5SZEhocFNGaExNRk55S3pGM1FsVnhVVzVHZFU4MFEzUmhWU3RrUTA5c2NURk1VVTFFU1dkVVpsQlBZa1JWVlRsTUt5dG9VWFIxVEd0eVNFWkhjVkY2TlZSeWRsVnZOMWhETDNobGFtWXpaRFkxZWtocWFGbFRjamN4TVZoV1MyZDFWR1ZCY2twaloxTkJTR0ZxVXpBeGNsQlJUVzFxUWtWR2RreEVWWGcwT0d4UlEySkNVR0ZqYXpOd2IwMXBWRkJpWjBkVlpsZExibXRFY0VsSlQyRnZNRTVHVm5vclRHMHdla1ZCWTFaSVlrWkdWV2hpY0VwM2VFMVRLMmRuVFhwaWQxazRNR3cxZVRZMVlsWnZaR1pHZWtWd1VVSmlOa3A2UlhabmVuQjFWV0ZRVlVOVWVtcHpZM2x1TnlJc0ltMWhZeUk2SWpaaU16TTBZemhoTnpnMU9UQTVaV0UzTldNd01tSTBPVEU0TmpkaE5UYzJZbVkzT1RRMFptWTBOVGczWXpBMFlUTmtPV1pqTUdZMVpXRXhaVEEyTldRaUxDSjBZV2NpT2lJaWZRPT0=', 1791941874),
('S1vn86UK17kjJ3l8DyOGn2qRcge2PApDjO5Sv966', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'ZXlKcGRpSTZJbXgyVTFWVFppOW5SM0ZFZUdkdFkzRnJZbHBZVDJjOVBTSXNJblpoYkhWbElqb2lOSE5FVUZSMUsyaEdhbWRsYkRNNU16aEpSRnBWV0RGbVZFNTRSRGRYYWtKVWFWcFdlWFJFYzA1cVpqSnVLeXRrTTBkTlIxSnJhV3RrWTJkQ1VYaFZUMDVuUzBWclVHeE5Oa2R4YzNKR1FubE9lRVpKYWxBemMyaFdRbE51SzNoNFZEWndkbU00UkVoWVlrOUJVRmRJUmtOWlZFcG9kM1JIV0RkUVFXY3ZWM1I1UW13ck4zRXpZazU1TVc1TlRqRklNVGxSZDIxRVdWcGlhMHRyUm05VlRFOTRjVlUzVW14a1dFZDBSRE5vV1cxTFZGRlVhVU5FVUdsUWFYSlVXazlUVEc1UlZYRmtWbTFGY2twc1JWQlBRMWhuTkVaeVUxazJaMkZCVW5CbFNraGxkVk5FVm1wNlVHSlpUU3RCTWxWbFQxcGlOVzFuVFc1V2VGRkpWazB3YVZCUFdHZzVNMVZWVDNSM1NUQmxSMnB2WW5sa1RtYzlQU0lzSW0xaFl5STZJamd3WXpRM01XRmhOVGszWVRjeU1tTmlOR1V3TlRVek4yTmhNekUwWWpneVlUWmxNREUwTm1JNE1HUXhNVE13T1dKaVpHWXhNRFJsTVdRME16WmhZVFVpTENKMFlXY2lPaUlpZlE9PQ==', 1791939238),
('SaP1TblWRLBUnnOSOGmyV9pNk2wGImiQvLzJkNPC', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT; Windows NT 10.0; en-US) WindowsPowerShell/5.1.26100.9444', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiREJMRmZqZ3l4Qlk4OUtUVmFBZnJXRWFzNE5lM0I0ekV3U0tEbzBKQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODIyMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1791784237),
('sJGumZ24fdH1bCN2A0vLBz6iIPv9Z79MbQiSS2f9', NULL, '127.0.0.1', 'Symfony', 'ZXlKcGRpSTZJbVJuTUZCUlNIQkpjQzlMUWxWMUx6TkxXVVJWVWxFOVBTSXNJblpoYkhWbElqb2lZVmd2ZG1kT2RWQTBSMHBOVkhZMldFeGxWWEpaZFVFeVdsTlhkRUZLZEdGMWJVRkVZWEV4SzFGa05VVkRNbmcxTkROUE5UaHRaRWc1UW5jNFMweFViSE5zZFRWNE5FRkxkbEV2T1RablRYaGxSMDVzWVhocVVuUTBVVEV4ZURrNWVrUkNhWGhsYzJGTlQxcEZNRzE1TTJkSGNVcEpXRVJtTTFobVpEaE5VVFJRZUhBM1EwaE5ZWEZXV2l0amMwTTJXbkZpTVhCd1kzbG5ZMFEwTjFweVMxTjBWVE5aYkZGVFNHbDNNRVZqVUVkU1MzbFVUMk5uVjFkbE5YaFRXRFZ0T1hkWk9VSkxZWFpEU0dkWFVURjNibFF2TW0xa2NsQmhOMk5oZWs5VVEwNUVSamRYY1hkRVNEbG1VRW80V1c5VE0wZDZOVUpFTDNNNGVXczRURTlPWnlJc0ltMWhZeUk2SW1NME1EZ3dORFE0Tnpsa056RTVNelUyTVRjNVpXRTNaVEV5TnpJeU1EWm1OMlF5WkRRek5XRmpPV001TXpNME9EVmpPR1UwWWpSbE1qa3daVFJsWmpraUxDSjBZV2NpT2lJaWZRPT0=', 1791788022),
('VCOM3bcKfCVAy6P3XwQjJEJxMnB88GTB6GF9jNHH', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT; Windows NT 10.0; en-US) WindowsPowerShell/5.1.26100.9444', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ2RrQ1BkekZwNmQ2S1VmRnd0NlhPaDdtRHRYdUNSWUJSYlNPa2VZYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODIyMC9ndWlkZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1791784237),
('vMF8AsryBQUGU09kAGh3c2kq5tdt8HewL0PvQTCa', NULL, '127.0.0.1', 'Symfony', 'ZXlKcGRpSTZJalozUmxkdFRUWnphR28zWlZOa0wwaENjVVpFVFZFOVBTSXNJblpoYkhWbElqb2lhbUpvV21GeGJrbEVTVVZLWTFZeFVXdGFOMGc1TTJjMVkycEpXRW94UnpCcGVuVjJSMUpTTm14SmNXY3JSWFJIT0RORFZFZE1jbXRMYjBwbFpXWTVRbE12WjI5UmR6ZFdNUzkxTTBGVE5tdDRPRk5qWVV0WmRUTnZLM05tYUdJMVpqaFZjMWhHWjNSalIycDBXUzg0Y1RVMlMyUTRhR0pvWVdOUmFrRlJTMnQxYXpad01pdHhSMFozTDNGT1RtRlBlVEpHYTNsVVduVmxjM0Y0VkZFNFZWcFBZMUpYWTIxTllrbE9TRUptVUVNcllsRjNWMnByVFhWRVRVTlVOMk42YTBFcmFtMVJVRUpuUkVkNVpESktWbkJzU0V4SllWWXlMeXQ1WlhwTVZITnJiV3hOTWtOSFUyWjBZV2xEYzNwcE9XSkZkMjl4Wmt4NlZqZEpNbW95TlNJc0ltMWhZeUk2SWpGbE1HRmlaakZsTWpSaE5ERXlPVGxsTlRaa05tUmxNMll3Wm1aa09EWmxNekJpTlRjd1l6ZGlNbVUwTkRNM09XWXpaRFl6TmpWaVpEZzJZMlE1WVRJaUxDSjBZV2NpT2lJaWZRPT0=', 1791787349),
('ximxG6FG8q4AJU89rak9Z1vMt78RrvFgj25FOXjc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT; Windows NT 10.0; en-US) WindowsPowerShell/5.1.26100.9444', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibFFGbVJ5UXl5N1lhUmFzNDZ3VjAycFBBWlFHY05ZMXZQazZ5UDZ1cSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODIyMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1791784235),
('xNCWa6uw3MRxnXCV3RVCGAiqBA8pr7F7FbwMp4TM', NULL, '127.0.0.1', 'Symfony', 'ZXlKcGRpSTZJakYzUVRrMVVXbHJWbEo2ZDFNNGQweFJPRlZ0TlVFOVBTSXNJblpoYkhWbElqb2laV1puVDFoclRFVkhRMjVxV2t4V1pXSkNXbEkxY0VVM1YwSmtZakJxV0d4TlNWZDZWMDgxYWtoRWNHaHFTMHhrWkZaWU9UTlhkR1Z2U0dSTkx6UkNNV2RCZFV0R1kxTldVMFZJYVcwMmRYVTBSWE5yT1d4Q1dTOVlZelZuV2t0VGFXbERRVEpCVjFCS2NYaEpaMHBWZUZaalJtcGxWRUZ1VFZoUmJHcFZTV1o2TTFoR01qUjFVemRHWldkaFpTOU5SRUZJYVUwd1kwcFhjMWRHVkVrMFJucElLMk5RWTNRM2FGaGpVbkZKWTBWVGQycFBaWHBPWW5sVU5WRkpjMHhIZFU1MU5EaHZiMVZQTkhaVVMxUmpZbXRHVTNWcFQxSmhOSHBJYzFKNWFreHVVMHBET1ZwcU1rTndTVXN5WWl0NFdta3hRWFJDTjBrclJ6TnlTWHBpS3lJc0ltMWhZeUk2SWpWa01XUmxabUkwTURrelpEVmhOMlpsWlRBME56ZGtNekpsWkdRMk1XUm1NamN6TkRRNU9UTXlNelkyWkRnM056QTJZMll5WkdOaU1tVm1OakZsTW1RaUxDSjBZV2NpT2lJaWZRPT0=', 1791787924),
('zxjIeuIGDh5XDsfmPEIbrIfPFuXhYOHR1hl3rrjg', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT; Windows NT 10.0; en-US) WindowsPowerShell/5.1.26100.9444', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUlZrZldaT3A1SkVhUE5JUEM3UHRzTEdCZlRpaDdBTGJGYTV4VE1FdCI7czoxMzoiZ3Vlc3RfY2FydF9pZCI7aToyMDtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNjoiaHR0cDovLzEyNy4wLjAuMTo4MjIwL2NhcnQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1791784237);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','customer') NOT NULL DEFAULT 'customer',
  `phone` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `phone`, `address`, `city`, `province`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin Bikopih', 'admin@example.com', NULL, '$2y$12$m3ScFjBw3W.ScwavJJgc7e65Iv6hr4yc/l.z1QKqMZUx6X4j4tNG.', 'admin', NULL, NULL, NULL, NULL, NULL, '2026-10-04 22:51:36', '2026-10-04 22:51:36'),
(2, 'Customer Demo', 'customer@example.com', NULL, '$2y$12$kePRgtquJ49f6Ebo2SVMCuGKrDB6lHbL65j211sQ7tGnYXyUtal6K', 'customer', NULL, NULL, NULL, NULL, NULL, '2026-10-04 22:51:37', '2026-10-04 22:51:37'),
(3, 'bryan', 'koncet1232@gmail.com', NULL, '$2y$12$QhM..5pKr.q4Hn3DhUh7SOHRjzU3fZa0HvOwZ4UzzI3XY00hl6uo2', 'customer', NULL, NULL, NULL, NULL, NULL, '2026-10-04 23:18:14', '2026-10-04 23:18:14'),
(4, 'romanus', 'nyomanyus123@gmail.com', NULL, '$2y$12$RJACPlD/tbvwyDyOixDYs.7ULRjFAQtsQRpQO054w2JMLIKWFfZoq', 'customer', NULL, NULL, NULL, NULL, NULL, '2026-10-08 17:46:26', '2026-10-08 17:46:26'),
(5, 'romanus', 'romanus123@gmail.com', NULL, '$2y$12$k7ASIbc7As3tJuAP5U5PGexVQoHNiuuTZpdMpw5IvrpKCvT.KoFcy', 'customer', NULL, NULL, NULL, NULL, NULL, '2026-10-11 19:24:57', '2026-10-11 19:24:57'),
(6, 'bryan', 'bryan1234@gmail.com', NULL, '$2y$12$Ktr2EzUvd2xrefCV/hmt8u5ZR5xzVD4b8AKUvWKuEWmQIwKzCtcX.', 'customer', NULL, NULL, NULL, NULL, NULL, '2026-10-11 21:59:39', '2026-10-11 21:59:39'),
(7, 'april', 'april1234@gmail.com', NULL, '$2y$12$No.ZhefZr0uBhEeK2RPlGuVHj.xMsHHsejtQW4w0WtQNPVz2SOhyW', 'customer', NULL, NULL, NULL, NULL, NULL, '2026-10-11 23:04:54', '2026-10-11 23:04:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brewing_methods`
--
ALTER TABLE `brewing_methods`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brewing_methods_slug_unique` (`slug`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `carts_user_id_unique` (`user_id`),
  ADD UNIQUE KEY `carts_session_id_unique` (`session_id`);

--
-- Indexes for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_items_cart_id_foreign` (`cart_id`),
  ADD KEY `cart_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `freshness_rules`
--
ALTER TABLE `freshness_rules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `freshness_rules_slug_unique` (`slug`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_order_number_unique` (`order_number`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_verified_by_foreign` (`verified_by`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `order_status_logs`
--
ALTER TABLE `order_status_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_status_logs_changed_by_foreign` (`changed_by`),
  ADD KEY `order_status_logs_order_id_created_at_index` (`order_id`,`created_at`);

--
-- Indexes for table `origins`
--
ALTER TABLE `origins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `origins_slug_unique` (`slug`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_origin_id_foreign` (`origin_id`);

--
-- Indexes for table `product_brew`
--
ALTER TABLE `product_brew`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_brew_product_id_brewing_method_id_unique` (`product_id`,`brewing_method_id`),
  ADD KEY `product_brew_brewing_method_id_foreign` (`brewing_method_id`);

--
-- Indexes for table `quiz_options`
--
ALTER TABLE `quiz_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_options_quiz_question_id_foreign` (`quiz_question_id`);

--
-- Indexes for table `quiz_option_scores`
--
ALTER TABLE `quiz_option_scores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_option_scores_quiz_option_id_foreign` (`quiz_option_id`);

--
-- Indexes for table `quiz_questions`
--
ALTER TABLE `quiz_questions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `quiz_questions_key_unique` (`key`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reviews_user_product_unique` (`user_id`,`product_id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brewing_methods`
--
ALTER TABLE `brewing_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `freshness_rules`
--
ALTER TABLE `freshness_rules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order_status_logs`
--
ALTER TABLE `order_status_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `origins`
--
ALTER TABLE `origins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_brew`
--
ALTER TABLE `product_brew`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `quiz_options`
--
ALTER TABLE `quiz_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `quiz_option_scores`
--
ALTER TABLE `quiz_option_scores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `quiz_questions`
--
ALTER TABLE `quiz_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `cart_items_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_verified_by_foreign` FOREIGN KEY (`verified_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `order_status_logs`
--
ALTER TABLE `order_status_logs`
  ADD CONSTRAINT `order_status_logs_changed_by_foreign` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `order_status_logs_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_origin_id_foreign` FOREIGN KEY (`origin_id`) REFERENCES `origins` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `product_brew`
--
ALTER TABLE `product_brew`
  ADD CONSTRAINT `product_brew_brewing_method_id_foreign` FOREIGN KEY (`brewing_method_id`) REFERENCES `brewing_methods` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_brew_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quiz_options`
--
ALTER TABLE `quiz_options`
  ADD CONSTRAINT `quiz_options_quiz_question_id_foreign` FOREIGN KEY (`quiz_question_id`) REFERENCES `quiz_questions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quiz_option_scores`
--
ALTER TABLE `quiz_option_scores`
  ADD CONSTRAINT `quiz_option_scores_quiz_option_id_foreign` FOREIGN KEY (`quiz_option_id`) REFERENCES `quiz_options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
