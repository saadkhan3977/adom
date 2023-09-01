-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 01, 2023 at 05:21 PM
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
-- Database: `adom`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `slug`, `photo`, `description`, `status`, `created_at`, `updated_at`) VALUES
(2, 'ad', 'ad', 'http://advance-ecommerce-in-laravel-9.test//storage/photos/7/banner/online-shopping-isometric-landing-page-web-banner_107791-3240.png', '<p>asdasd</p>', 'active', '2023-02-08 07:49:04', '2023-02-08 08:27:46'),
(3, 'sg', 'sg', 'http://advance-ecommerce-in-laravel-9.test//storage/photos/7/banner/1197678806.jpg', '<p>erf</p>', 'active', '2023-02-08 07:57:39', '2023-02-08 08:14:18'),
(4, 'sdg', 'sdg', 'http://advance-ecommerce-in-laravel-9.test//storage/photos/7/banner/online-shopping-isometric-landing-page-web-banne107791-3240.png', '<p>sdafsdfsdfgsd sdf</p>', 'active', '2023-02-08 08:29:54', '2023-02-08 08:29:54');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `title`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Adidas', 'test-brand', 'active', '2023-02-06 06:16:30', '2023-03-27 06:12:35'),
(3, 'Samsung', 'samsung', 'active', '2023-03-27 06:13:05', '2023-03-27 06:13:05');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `status` enum('new','progress','delivered','cancel') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `quantity` int NOT NULL,
  `amount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `product_id`, `order_id`, `user_id`, `price`, `status`, `quantity`, `amount`, `created_at`, `updated_at`) VALUES
(55, 28, 68, 20, 581.00, 'new', 1, 581.00, '2023-06-14 08:56:48', '2023-06-14 08:57:32'),
(56, 28, 69, 20, 581.00, 'new', 1, 581.00, '2023-06-14 08:59:08', '2023-06-14 09:01:20'),
(59, 17, 73, 20, 890.00, 'new', 1, 890.00, '2023-06-14 09:13:20', '2023-06-14 09:14:27');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_parent` tinyint(1) NOT NULL DEFAULT '1',
  `parent_id` bigint UNSIGNED DEFAULT NULL,
  `added_by` bigint UNSIGNED DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `summary`, `photo`, `is_parent`, `parent_id`, `added_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Paddles', 'paddles', '<p>sdfsdf</p>', 'http://advance-ecommerce-in-laravel-9.test//storage/photos/7/category/istockphoto-1427977485-612x612.jpg', 1, NULL, NULL, 'active', '2023-02-06 06:20:34', '2023-03-06 11:07:29'),
(2, 'Nets', 'nets', NULL, NULL, 1, NULL, NULL, 'active', '2023-03-06 11:07:00', '2023-03-06 11:07:00'),
(3, 'Bags', 'bags', NULL, NULL, 1, NULL, NULL, 'active', '2023-03-06 11:07:13', '2023-03-06 11:07:13'),
(4, 'Balls', 'balls', NULL, NULL, 1, NULL, NULL, 'active', '2023-03-06 11:07:46', '2023-03-06 11:07:46'),
(5, 'Accessories', 'accessories', NULL, NULL, 1, NULL, NULL, 'active', '2023-03-06 11:07:53', '2023-03-06 11:07:53'),
(6, 'Ball Machines', 'ball-machines', NULL, NULL, 1, NULL, NULL, 'active', '2023-03-06 11:07:59', '2023-05-09 16:20:34'),
(7, 'Apparel', 'apparel', NULL, NULL, 1, NULL, NULL, 'active', '2023-03-06 11:08:06', '2023-05-09 16:20:53'),
(8, 'Shoes', 'shoes', NULL, NULL, 1, NULL, NULL, 'active', '2023-03-06 11:08:15', '2023-03-06 11:08:15');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fixed','percent') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `value` decimal(20,2) NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `status`, `created_at`, `updated_at`) VALUES
(1, 'abc123', 'fixed', '300.00', 'active', NULL, NULL),
(2, '111111', 'percent', '10.00', 'active', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2020_07_10_021010_create_brands_table', 1),
(6, '2020_07_10_025334_create_banners_table', 1),
(7, '2020_07_10_112147_create_categories_table', 1),
(8, '2020_07_11_063857_create_products_table', 1),
(9, '2020_07_12_073132_create_post_categories_table', 1),
(10, '2020_07_12_073701_create_post_tags_table', 1),
(11, '2020_07_12_083638_create_posts_table', 1),
(12, '2020_07_13_151329_create_messages_table', 1),
(13, '2020_07_14_023748_create_shippings_table', 1),
(14, '2020_07_15_054356_create_orders_table', 1),
(15, '2020_07_15_102626_create_carts_table', 1),
(16, '2020_07_16_041623_create_notifications_table', 1),
(17, '2020_07_16_053240_create_coupons_table', 1),
(18, '2020_07_23_143757_create_wishlists_table', 1),
(19, '2020_07_24_074930_create_product_reviews_table', 1),
(20, '2020_07_24_131727_create_post_comments_table', 1),
(21, '2020_08_01_143408_create_settings_table', 1),
(22, '2023_02_08_162944_create_payments_table', 2),
(23, '2023_04_06_102135_create_product_q_a_s_table', 3),
(24, '2023_04_07_061653_create_vendor_reviews_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('0092cc3d-30a1-4ecc-8f68-61e339fc36b8', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/adom.test\\/vendor\\/order\\/26\",\"fas\":\"fa-file-alt\"}', NULL, '2023-06-09 09:38:52', '2023-06-09 09:38:52'),
('084238c1-ff5d-4d19-87ec-61792167bf26', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/adom.test\\/vendor\\/order\\/46\",\"fas\":\"fa-file-alt\"}', NULL, '2023-06-13 06:58:35', '2023-06-13 06:58:35'),
('1efe5bef-0bd8-4e63-b901-4ec9d76a3cb8', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/adom.test\\/vendor\\/order\\/37\",\"fas\":\"fa-file-alt\"}', NULL, '2023-06-12 11:31:32', '2023-06-12 11:31:32'),
('21b4bb4a-f021-469b-bdf9-7d2273a7e35d', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/adom.test\\/vendor\\/order\\/28\",\"fas\":\"fa-file-alt\"}', NULL, '2023-06-09 10:44:53', '2023-06-09 10:44:53'),
('22f1be87-76cb-4ac3-a0d7-5afbb3f59796', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New Product Rating!\",\"actionURL\":\"http:\\/\\/adom.test\\/product-detail\\/asd\",\"fas\":\"fa-star\"}', NULL, '2023-04-07 03:56:00', '2023-04-07 03:56:00'),
('2e420ff1-a473-4e0e-a8de-8cdfa06264af', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/adom.test\\/vendor\\/order\\/51\",\"fas\":\"fa-file-alt\"}', NULL, '2023-06-13 09:45:42', '2023-06-13 09:45:42'),
('390a6c10-6dff-433e-a170-7a336327d77a', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New Product Rating!\",\"actionURL\":\"http:\\/\\/advance-ecommerce-in-laravel-9.test\\/product-detail\\/asd\",\"fas\":\"fa-star\"}', NULL, '2023-02-08 09:56:22', '2023-02-08 09:56:22'),
('3bdec6fb-7b6b-4451-a2b6-64df8941beab', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New Product Rating!\",\"actionURL\":\"http:\\/\\/advance-ecommerce-in-laravel-9.test\\/product-detail\\/asd\",\"fas\":\"fa-star\"}', NULL, '2023-02-08 09:57:26', '2023-02-08 09:57:26'),
('3f1d152f-54ff-4e87-9e38-16edd9f9b7f5', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/advance-ecommerce-in-laravel-9.test\\/admin\\/order\\/20\",\"fas\":\"fa-file-alt\"}', NULL, '2023-02-08 12:56:29', '2023-02-08 12:56:29'),
('3fa3da30-03a7-40ad-9d72-d1c16cd90b67', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/advance-ecommerce-in-laravel-9.test\\/admin\\/order\\/17\",\"fas\":\"fa-file-alt\"}', NULL, '2023-02-08 12:46:06', '2023-02-08 12:46:06'),
('3fffe93c-11c8-47e1-9879-3845f096c69f', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/adom.test\\/vendor\\/order\\/27\",\"fas\":\"fa-file-alt\"}', NULL, '2023-06-09 09:40:17', '2023-06-09 09:40:17'),
('434dc232-a86c-4c09-b602-905eb391e12c', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/adom.test\\/vendor\\/order\\/45\",\"fas\":\"fa-file-alt\"}', NULL, '2023-06-13 06:57:50', '2023-06-13 06:57:50'),
('4b801fa0-1915-4cbf-a307-4e04c8cdd741', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New Product Rating!\",\"actionURL\":\"http:\\/\\/adom.test\\/product-detail\\/asd\",\"fas\":\"fa-star\"}', NULL, '2023-04-06 07:20:03', '2023-04-06 07:20:03'),
('4f65c8be-6f60-47b2-bb4d-dce0c781b387', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/advance-ecommerce-in-laravel-9.test\\/admin\\/order\\/19\",\"fas\":\"fa-file-alt\"}', NULL, '2023-02-08 12:49:35', '2023-02-08 12:49:35'),
('4fc059a2-4e6a-4dc7-b4f1-1cb963a3f0d7', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New Product Rating!\",\"actionURL\":\"http:\\/\\/adom.test\\/product-detail\\/asd\",\"fas\":\"fa-star\"}', NULL, '2023-04-06 07:18:35', '2023-04-06 07:18:35'),
('5a23b2ff-86fc-4345-87da-0b1d6bd0986f', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/adom.test\\/vendor\\/order\\/35\",\"fas\":\"fa-file-alt\"}', NULL, '2023-06-12 06:33:36', '2023-06-12 06:33:36'),
('61a856b3-c20c-4bb7-8968-7e9803908257', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/adom.test\\/vendor\\/order\\/31\",\"fas\":\"fa-file-alt\"}', NULL, '2023-06-12 05:53:43', '2023-06-12 05:53:43'),
('61e402cc-fced-47a2-bd21-955837cd396f', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/adom.test\\/vendor\\/order\\/33\",\"fas\":\"fa-file-alt\"}', NULL, '2023-06-12 06:28:52', '2023-06-12 06:28:52'),
('69c3844d-88f4-4aff-983f-d5678b4f54e6', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New Product Rating!\",\"actionURL\":\"http:\\/\\/adom.test\\/product-detail\\/sit-ad-laudantium-a\",\"fas\":\"fa-star\"}', NULL, '2023-04-05 04:53:58', '2023-04-05 04:53:58'),
('72576a68-e240-4f13-9547-98f504c70953', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/advance-ecommerce-in-laravel-9.test\\/admin\\/order\\/10\",\"fas\":\"fa-file-alt\"}', NULL, '2023-02-08 12:22:56', '2023-02-08 12:22:56'),
('7945bad9-f27f-4a84-bf98-d1a09697f4a3', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New Product Rating!\",\"actionURL\":\"http:\\/\\/adom.test\\/product-detail\\/asd\",\"fas\":\"fa-star\"}', NULL, '2023-04-07 03:55:31', '2023-04-07 03:55:31'),
('81a00fd1-e092-4a02-af3f-048a0fde8c4c', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/adom.test\\/vendor\\/order\\/73\",\"fas\":\"fa-file-alt\"}', NULL, '2023-06-14 09:14:27', '2023-06-14 09:14:27'),
('8257d13d-96d3-4999-ae45-5764e9f3f066', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New Product Rating!\",\"actionURL\":\"http:\\/\\/adom.test\\/product-detail\\/asd\",\"fas\":\"fa-star\"}', NULL, '2023-04-07 03:55:05', '2023-04-07 03:55:05'),
('84f60f45-d807-42f8-b94f-735c93baa1b7', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/advance-ecommerce-in-laravel-9.test\\/admin\\/order\\/16\",\"fas\":\"fa-file-alt\"}', NULL, '2023-02-08 12:43:15', '2023-02-08 12:43:15'),
('8796ec9c-2bd8-4d7f-808d-5db0c2ecc2fb', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/advance-ecommerce-in-laravel-9.test\\/admin\\/order\\/7\",\"fas\":\"fa-file-alt\"}', NULL, '2023-02-08 12:13:20', '2023-02-08 12:13:20'),
('8e1be0e1-35dd-41e9-a91f-6aa733181a3e', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/advance-ecommerce-in-laravel-9.test\\/admin\\/order\\/8\",\"fas\":\"fa-file-alt\"}', NULL, '2023-02-08 12:17:41', '2023-02-08 12:17:41'),
('98e30521-2db3-4e8f-a133-0de3ce470d59', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/advance-ecommerce-in-laravel-9.test\\/admin\\/order\\/12\",\"fas\":\"fa-file-alt\"}', NULL, '2023-02-08 12:40:37', '2023-02-08 12:40:37'),
('9afe8631-80f2-49cd-ac0b-b72feede6077', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/adom.test\\/vendor\\/order\\/41\",\"fas\":\"fa-file-alt\"}', NULL, '2023-06-13 06:48:29', '2023-06-13 06:48:29'),
('a92d4802-a7b6-4872-b1a9-7cf863e2ad1d', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New Product Rating!\",\"actionURL\":\"http:\\/\\/adom.test\\/product-detail\\/asd\",\"fas\":\"fa-star\"}', NULL, '2023-04-07 03:55:53', '2023-04-07 03:55:53'),
('a96a7ed6-fb58-477a-b68a-d89ce9531e23', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/adom.test\\/vendor\\/order\\/47\",\"fas\":\"fa-file-alt\"}', NULL, '2023-06-13 07:05:28', '2023-06-13 07:05:28'),
('aa8628c9-e9c8-4953-8956-e58b6158529d', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/advance-ecommerce-in-laravel-9.test\\/admin\\/order\\/14\",\"fas\":\"fa-file-alt\"}', NULL, '2023-02-08 12:42:52', '2023-02-08 12:42:52'),
('ac0b3367-04b4-40cc-8bbc-714d02bfa63b', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/adom.test\\/vendor\\/order\\/32\",\"fas\":\"fa-file-alt\"}', NULL, '2023-06-12 06:12:18', '2023-06-12 06:12:18'),
('b76801ac-ac3c-4a9c-bf8b-c05b39ff35df', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New Product Rating!\",\"actionURL\":\"http:\\/\\/adom.test\\/product-detail\\/sit-ad-laudantium-a\",\"fas\":\"fa-star\"}', NULL, '2023-04-05 04:33:30', '2023-04-05 04:33:30'),
('b9632282-7300-4145-9a67-b3e034dbcef3', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/adom.test\\/vendor\\/order\\/36\",\"fas\":\"fa-file-alt\"}', NULL, '2023-06-12 09:36:33', '2023-06-12 09:36:33'),
('bbd1a81a-ab4b-4736-adf3-274c9c637102', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/advance-ecommerce-in-laravel-9.test\\/admin\\/order\\/9\",\"fas\":\"fa-file-alt\"}', NULL, '2023-02-08 12:22:12', '2023-02-08 12:22:12'),
('bf7322e9-b51b-41c2-9abb-3bd4107a5be6', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/adom.test\\/vendor\\/order\\/29\",\"fas\":\"fa-file-alt\"}', NULL, '2023-06-09 10:46:34', '2023-06-09 10:46:34'),
('c041805f-c3bc-4a30-a433-8f20b944c06d', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/adom.test\\/vendor\\/order\\/50\",\"fas\":\"fa-file-alt\"}', NULL, '2023-06-13 09:37:13', '2023-06-13 09:37:13'),
('c06081c8-cd7b-4bef-8bca-82f9ef9e611a', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/advance-ecommerce-in-laravel-9.test\\/admin\\/order\\/6\",\"fas\":\"fa-file-alt\"}', NULL, '2023-02-08 11:54:20', '2023-02-08 11:54:20'),
('c07394b9-fb89-47e1-903b-30b003002849', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New Product Rating!\",\"actionURL\":\"http:\\/\\/adom.test\\/product-detail\\/asd\",\"fas\":\"fa-star\"}', NULL, '2023-04-06 07:19:58', '2023-04-06 07:19:58'),
('c17859d4-c5bd-40b2-834d-e3df8e6dc8a2', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/advance-ecommerce-in-laravel-9.test\\/admin\\/order\\/4\",\"fas\":\"fa-file-alt\"}', NULL, '2023-02-06 08:11:27', '2023-02-06 08:11:27'),
('c60ba6f5-0a10-4761-a23a-e7bce1265f73', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/advance-ecommerce-in-laravel-9.test\\/admin\\/order\\/15\",\"fas\":\"fa-file-alt\"}', NULL, '2023-02-08 12:42:57', '2023-02-08 12:42:57'),
('cc8e46d7-21c5-479a-bad8-06f9304a0d7c', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/advance-ecommerce-in-laravel-9.test\\/admin\\/order\\/5\",\"fas\":\"fa-file-alt\"}', NULL, '2023-02-06 08:11:58', '2023-02-06 08:11:58'),
('cce7cd50-f454-47f7-9987-dba61c229703', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/advance-ecommerce-in-laravel-9.test\\/admin\\/order\\/22\",\"fas\":\"fa-file-alt\"}', NULL, '2023-02-08 13:02:19', '2023-02-08 13:02:19'),
('cf9ff64e-545b-45da-a3dd-9f7bfdf8c994', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New Product Rating!\",\"actionURL\":\"http:\\/\\/adom.test\\/product-detail\\/asd\",\"fas\":\"fa-star\"}', NULL, '2023-04-07 03:55:42', '2023-04-07 03:55:42'),
('d3f9b0a7-40c2-4d50-9571-09a0df577791', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New Product Rating!\",\"actionURL\":\"https:\\/\\/adom.ad-wize.com\\/product-detail\\/asd\",\"fas\":\"fa-star\"}', NULL, '2023-04-07 10:38:16', '2023-04-07 10:38:16'),
('d5e73b1b-00e8-4765-aa3f-03da64b92f76', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/adom.test\\/vendor\\/order\\/30\",\"fas\":\"fa-file-alt\"}', NULL, '2023-06-09 11:04:04', '2023-06-09 11:04:04'),
('d744c513-13fa-4b4b-972e-1e09d0766f13', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/advance-ecommerce-in-laravel-9.test\\/admin\\/order\\/13\",\"fas\":\"fa-file-alt\"}', NULL, '2023-02-08 12:40:56', '2023-02-08 12:40:56'),
('d817fd3d-3b73-419f-9db4-7962a9d7b032', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New Product Rating!\",\"actionURL\":\"http:\\/\\/adom.test\\/product-detail\\/asd\",\"fas\":\"fa-star\"}', NULL, '2023-04-07 03:55:47', '2023-04-07 03:55:47'),
('d9a99871-c04e-4293-9e0a-fd923e5b0483', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/advance-ecommerce-in-laravel-9.test\\/admin\\/order\\/21\",\"fas\":\"fa-file-alt\"}', NULL, '2023-02-08 12:58:21', '2023-02-08 12:58:21'),
('dc645c77-a55c-4348-bbb5-e125f93a1f8c', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/advance-ecommerce-in-laravel-9.test\\/admin\\/order\\/3\",\"fas\":\"fa-file-alt\"}', NULL, '2023-02-06 07:12:13', '2023-02-06 07:12:13'),
('dd7870c9-60a9-4a7e-a741-dd63211f60bb', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/adom.test\\/vendor\\/order\\/34\",\"fas\":\"fa-file-alt\"}', NULL, '2023-06-12 06:31:34', '2023-06-12 06:31:34'),
('e1902d27-a01f-45bf-b33b-c0eeb329c26a', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/adom.test\\/vendor\\/order\\/39\",\"fas\":\"fa-file-alt\"}', NULL, '2023-06-12 13:04:04', '2023-06-12 13:04:04'),
('e390d2e0-9314-4ab5-bcfe-56cc8d37fb48', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New Product Rating!\",\"actionURL\":\"http:\\/\\/adom.test\\/product-detail\\/asd\",\"fas\":\"fa-star\"}', NULL, '2023-04-07 03:55:25', '2023-04-07 03:55:25'),
('ea1e1cc4-9920-472b-bb8f-1505e2bd4876', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New order created\",\"actionURL\":\"https:\\/\\/adom.ad-wize.com\\/vendor\\/order\\/25\",\"fas\":\"fa-file-alt\"}', NULL, '2023-05-26 16:59:27', '2023-05-26 16:59:27'),
('ee77504c-bc8e-4f90-b6a4-ae12eda60477', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/advance-ecommerce-in-laravel-9.test\\/admin\\/order\\/11\",\"fas\":\"fa-file-alt\"}', NULL, '2023-02-08 12:37:11', '2023-02-08 12:37:11'),
('f0cdc274-876d-4760-966e-b884d26f58d5', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/adom.test\\/vendor\\/order\\/24\",\"fas\":\"fa-file-alt\"}', NULL, '2023-03-28 02:06:23', '2023-03-28 02:06:23'),
('f42c93c6-dc44-4578-ac80-62eaa4e0f87c', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/adom.test\\/vendor\\/order\\/40\",\"fas\":\"fa-file-alt\"}', NULL, '2023-06-13 06:47:33', '2023-06-13 06:47:33'),
('f5a40a90-b218-4dfa-aaae-01938bb0451f', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New Product Rating!\",\"actionURL\":\"http:\\/\\/adom.test\\/product-detail\\/asd\",\"fas\":\"fa-star\"}', NULL, '2023-04-07 03:55:18', '2023-04-07 03:55:18'),
('f6ae3fce-cb96-44af-9fbf-2bf31ac00011', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/adom.test\\/vendor\\/order\\/23\",\"fas\":\"fa-file-alt\"}', NULL, '2023-03-14 11:53:19', '2023-03-14 11:53:19'),
('fa8b6b4e-465b-4270-bb2f-eb7e29fc22d5', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/adom.test\\/vendor\\/order\\/71\",\"fas\":\"fa-file-alt\"}', NULL, '2023-06-14 09:12:30', '2023-06-14 09:12:30'),
('fd097c7e-8bb8-41bd-885c-b8be8bbe2ff9', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/advance-ecommerce-in-laravel-9.test\\/admin\\/order\\/18\",\"fas\":\"fa-file-alt\"}', NULL, '2023-02-08 12:49:29', '2023-02-08 12:49:29'),
('ffdd7605-d567-46c8-9f6c-e9191122a0c9', 'App\\Notifications\\StatusNotification', 'App\\Models\\User', 7, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/adom.test\\/vendor\\/order\\/38\",\"fas\":\"fa-file-alt\"}', NULL, '2023-06-12 11:32:18', '2023-06-12 11:32:18');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `order_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `vendor_id` int DEFAULT NULL,
  `sub_total` double(8,2) NOT NULL,
  `shipping_id` bigint UNSIGNED DEFAULT NULL,
  `coupon` double(8,2) DEFAULT NULL,
  `total_amount` double(8,2) NOT NULL,
  `quantity` int NOT NULL,
  `payment_method` enum('stripe','paypal') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'stripe',
  `payment_status` enum('paid','unpaid') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `status` enum('new','process','delivered','cancel') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `another_ship` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `another_address` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `another_zip` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `another_city` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `another_phone` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `another_email` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_number`, `user_id`, `vendor_id`, `sub_total`, `shipping_id`, `coupon`, `total_amount`, `quantity`, `payment_method`, `payment_status`, `status`, `first_name`, `last_name`, `company_name`, `email`, `phone`, `country`, `zip_code`, `city`, `address`, `another_ship`, `another_address`, `another_zip`, `another_city`, `another_phone`, `another_email`, `note`, `created_at`, `updated_at`) VALUES
(68, 'ORD-J5HMII0XSL', 20, 24, 581.00, NULL, NULL, 581.00, 1, 'paypal', 'paid', 'new', 'Saad', 'Awan', NULL, 'saadkhan3977@gmail.com', '03042157462', 'PK', '0078', 'karachi', 'lyari karachi', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-14 08:57:02', '2023-06-14 08:57:32'),
(69, 'ORD-IZHGZTNUAB', 20, 24, 581.00, NULL, NULL, 581.00, 1, 'paypal', 'paid', 'new', 'Saad', 'Awan', NULL, 'saadkhan3977@gmail.com', '03042157462', 'PK', '0078', 'karachi', 'lyari karachi', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-14 08:59:13', '2023-06-14 09:01:20'),
(72, 'ORD-Y3XILNFT1W', 20, NULL, 890.00, NULL, NULL, 890.00, 1, 'stripe', 'paid', 'new', 'Saad', 'Awan', NULL, 'saadkhan3977@gmail.com', '03042157462', 'PK', '0078', 'karachi', 'lyari karachi', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-14 09:13:35', '2023-06-14 09:13:35'),
(73, 'ORD-EK5ZSGSM9Z', 20, NULL, 890.00, NULL, NULL, 890.00, 1, 'stripe', 'paid', 'new', 'Saad', 'Awan', NULL, 'saadkhan3977@gmail.com', '03042157462', 'PK', '0078', 'karachi', 'lyari karachi', '0', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-14 09:14:27', '2023-06-14 09:14:27');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('saadkhan3977@gmail.com', '$2y$10$njzlqkRoKj18fwlgmYW7RO8gx1GGVvQ6IQHEX4YyFJQM1MOopSyOi', '2023-03-06 10:15:20');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint UNSIGNED NOT NULL,
  `payment_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(10,2) NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `payment_id`, `payer_email`, `amount`, `currency`, `payment_status`, `created_at`, `updated_at`) VALUES
(4, 'pi_3NIVxJHNvw3AIrpx09F5GgHx', 'saadkhan3977@gmail.com', 581.00, 'USD', 'succeeded', '2023-06-13 07:04:17', '2023-06-13 07:04:17'),
(5, 'pi_3NIVySHNvw3AIrpx0SFV66VR', 'saadkhan3977@gmail.com', 581.00, 'USD', 'succeeded', '2023-06-13 07:05:28', '2023-06-13 07:05:28'),
(6, 'pi_3NIYIdHNvw3AIrpx0moaYjSD', 'saadkhan3977@gmail.com', 1162.00, 'USD', 'succeeded', '2023-06-13 09:34:27', '2023-06-13 09:34:27'),
(7, 'pi_3NIYLJHNvw3AIrpx1tx12iOq', 'saadkhan3977@gmail.com', 1162.00, 'USD', 'succeeded', '2023-06-13 09:37:13', '2023-06-13 09:37:13'),
(8, 'pi_3NIYTVHNvw3AIrpx0rt4o1u9', 'saadkhan3977@gmail.com', 581.00, 'USD', 'succeeded', '2023-06-13 09:45:42', '2023-06-13 09:45:42'),
(9, 'pi_3NIuQwHNvw3AIrpx1FSdE45s', 'saadkhan3977@gmail.com', 493.00, 'USD', 'succeeded', '2023-06-14 09:12:29', '2023-06-14 09:12:29'),
(10, 'pi_3NIuS1HNvw3AIrpx0mO5FGs5', 'saadkhan3977@gmail.com', 890.00, 'USD', 'succeeded', '2023-06-14 09:13:35', '2023-06-14 09:13:35'),
(11, 'pi_3NIuSrHNvw3AIrpx0TEdjdse', 'saadkhan3977@gmail.com', 890.00, 'USD', 'succeeded', '2023-06-14 09:14:27', '2023-06-14 09:14:27');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `quote` text COLLATE utf8mb4_unicode_ci,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_cat_id` bigint UNSIGNED DEFAULT NULL,
  `post_tag_id` bigint UNSIGNED DEFAULT NULL,
  `added_by` bigint UNSIGNED DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `summary`, `description`, `quote`, `photo`, `tags`, `post_cat_id`, `post_tag_id`, `added_by`, `status`, `created_at`, `updated_at`) VALUES
(2, 'asd', 'asd', '<p>asd</p>', '<p>ds</p>', '<p>dasd</p>', 'http://adom.test/storage/photos/7/Logo/logo.png', 'new,old', NULL, NULL, NULL, 'active', '2023-03-08 09:57:37', '2023-03-08 10:27:55');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `title`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(5, 'Accessories', 'accessories', 'active', '2023-03-28 06:14:20', '2023-03-28 06:14:20'),
(6, 'Apparel', 'apparel', 'active', '2023-03-28 06:14:26', '2023-03-28 06:14:26'),
(7, 'Bags', 'bags', 'active', '2023-03-28 06:14:34', '2023-03-28 06:14:34'),
(8, 'Ball Machines', 'ball-machines', 'active', '2023-03-28 06:14:41', '2023-03-28 06:14:41'),
(9, 'Balls', 'balls', 'active', '2023-03-28 06:14:46', '2023-03-28 06:14:46'),
(10, 'Nets', 'nets', 'active', '2023-03-28 06:14:53', '2023-03-28 06:14:53'),
(11, 'Paddles', 'paddles', 'active', '2023-03-28 06:15:00', '2023-03-28 06:15:00'),
(12, 'Shoes', 'shoes', 'active', '2023-03-28 06:15:07', '2023-03-28 06:15:07');

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

CREATE TABLE `post_comments` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `post_id` bigint UNSIGNED DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `replied_comment` text COLLATE utf8mb4_unicode_ci,
  `parent_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`id`, `title`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'new', 'new', 'active', '2023-03-07 13:27:52', '2023-03-07 13:27:52'),
(2, 'old', 'old', 'active', '2023-03-08 06:08:21', '2023-03-08 06:08:21');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int DEFAULT NULL,
  `vendor_id` int DEFAULT NULL,
  `cat_id` bigint UNSIGNED DEFAULT NULL,
  `child_cat_id` bigint UNSIGNED DEFAULT NULL,
  `brand_id` bigint UNSIGNED DEFAULT NULL,
  `brand` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `files` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `condition` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `price` double(8,2) NOT NULL,
  `is_featured` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `vendor_id`, `cat_id`, `child_cat_id`, `brand_id`, `brand`, `title`, `slug`, `description`, `photo`, `files`, `size`, `color`, `condition`, `tags`, `status`, `price`, `is_featured`, `created_at`, `updated_at`) VALUES
(1, 7, NULL, 3, NULL, 2, NULL, 'Mens Grey Hooded Double Contrast Track Suit', 'asd', '<h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp.0.i3.bd8amOt9mOt9SV\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 24px; font-family: Roboto-Medium; font-size: 16px; line-height: 52px; color: rgb(33, 33, 33); overflow: hidden; text-overflow: ellipsis; white-space: nowrap; height: 52px; background: rgb(250, 250, 250);\">Product details of Mens Grey Hooded Double Contrast Track Suit</h2><div class=\"pdp-product-detail\" data-spm=\"product_detail\" style=\"margin: 0px; padding: 0px; position: relative; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><div class=\"pdp-product-desc \" style=\"margin: 0px; padding: 5px 14px 5px 24px; height: auto; overflow-y: hidden;\"><div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden;\"><ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Mens Grey Hooded Double Contrast Track Suit</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Casual Style Track Suit</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Fabric : fleece</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Size: M, L &amp; XL</li></ul></div><div class=\"html-content detail-content\" style=\"margin: 16px 0px 0px; padding: 0px 0px 16px; word-break: break-word; position: relative; height: auto; line-height: 19px; overflow-y: hidden; border-bottom: 1px solid rgb(239, 240, 245);\"><div style=\"margin: 0px; padding: 8px 0px; white-space: pre-wrap;\"><span style=\"margin: 0px; padding: 0px;\">Mens Grey Hooded Double Contrast Track Suit</span><div style=\"margin: 0px; padding: 8px 0px;\"><span style=\"margin: 0px; padding: 0px;\">Winter Casual Style Track Suit</span></div><div style=\"margin: 0px; padding: 8px 0px;\"><span style=\"margin: 0px; padding: 0px;\">Fabric : fleece</span></div><div style=\"margin: 0px; padding: 8px 0px;\"><span style=\"margin: 0px; padding: 0px;\">Size: M, L &amp; XL</span></div><div style=\"margin: 0px; padding: 8px 0px;\"><span style=\"margin: 0px; padding: 0px;\">Note: We recommend hand washing for long-lasting life.﻿</span></div></div></div><div class=\"pdp-mod-specification\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i0.bd8amOt9mOt9SV\" style=\"margin: 16px 0px 0px; padding: 0px 0px 10px; border-bottom: 1px solid rgb(239, 240, 245); font-size: 14px;\"><h2 class=\"pdp-mod-section-title \" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-family: Roboto-Medium; font-size: 16px; line-height: 19px; color: rgb(33, 33, 33); letter-spacing: 0px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;\">Specifications of Mens Grey Hooded Double Contrast Track Suit</h2><div class=\"pdp-general-features\" style=\"margin: 0px; padding: 0px;\"><ul class=\"specification-keys\" style=\"margin: 16px -15px 0px; padding: 0px; list-style: none; height: auto;\"><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Brand</span><div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">No Brand</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">SKU</span><div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">129970584_PK-1289796826</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Apparel</span><div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">Party</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Age Range</span><div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">Standard</div></li></ul></div><div class=\"box-content\" style=\"margin: 28px 0px 0px; padding: 0px;\"><span class=\"key-title\" style=\"margin: 0px; padding: 0px; display: table-cell; width: 140px; color: rgb(117, 117, 117); word-break: break-word;\">What’s in the box</span><div class=\"html-content box-content-html\" style=\"margin: 0px; padding: 0px 0px 0px 18px; word-break: break-word; display: table-cell;\">1 X Mens Grey Hooded Double Contrast Track Suit</div></div></div></div></div>', 'https://adom.ad-wize.com/storage/photos/7/Product/bag1.png', NULL, 'M,L,XL', NULL, 'hot', '', 'active', 2799.00, 0, '2023-02-06 06:44:45', '2023-04-18 09:00:26'),
(2, 7, NULL, 3, NULL, 2, NULL, 'Men\'s Classic Plaid Jacket', 'mens-classic-plaid-jacket', '<h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp.0.i5.77baYBAOYBAOFW\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 24px; font-family: Roboto-Medium; font-size: 16px; line-height: 52px; color: rgb(33, 33, 33); overflow: hidden; text-overflow: ellipsis; white-space: nowrap; height: 52px; background: rgb(250, 250, 250);\">Product details of Men\'s Classic Plaid Jacket</h2><div class=\"pdp-product-detail\" data-spm=\"product_detail\" style=\"margin: 0px; padding: 0px; position: relative; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><div class=\"pdp-product-desc \" style=\"margin: 0px; padding: 5px 14px 5px 24px; height: auto; overflow-y: hidden;\"><div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden;\"><ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">100% New &amp; Good Quality</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Look Smart</li><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i0.77baYBAOYBAOFW\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Good Stitched</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Ready to Wear</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Easy Wash</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Premium Quality</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Fashionable Design</li></ul></div><div class=\"html-content detail-content\" style=\"margin: 16px 0px 0px; padding: 0px 0px 16px; word-break: break-word; position: relative; height: auto; line-height: 19px; overflow-y: hidden; border-bottom: 1px solid rgb(239, 240, 245);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 14px; white-space: pre-wrap;\"><span style=\"margin: 0px; padding: 0px;\">Men\'s Classic Plaid Jacket</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 14px; white-space: pre-wrap;\"><span style=\"margin: 0px; padding: 0px;\">For winter new Collection Zipper Upper Jacket</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 14px; white-space: pre-wrap;\"><span style=\"margin: 0px; padding: 0px;\">Full stitched ready to wear easy wash</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 14px; white-space: pre-wrap;\"><span style=\"margin: 0px; padding: 0px;\">Sizes.</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 14px; white-space: pre-wrap;\"><span style=\"margin: 0px; padding: 0px;\">M</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 14px; white-space: pre-wrap;\"><span style=\"margin: 0px; padding: 0px;\">L</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 14px; white-space: pre-wrap;\"><span style=\"margin: 0px; padding: 0px;\">XL</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 14px; white-space: pre-wrap;\"><span style=\"margin: 0px; padding: 0px;\">Fabric. Fleece </span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 14px; white-space: pre-wrap;\"><span style=\"margin: 0px; padding: 0px;\">Note : we recommend hand Wash.</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 14px;\"></p></div><div class=\"pdp-mod-specification\" style=\"margin: 16px 0px 0px; padding: 0px 0px 10px; border-bottom: 1px solid rgb(239, 240, 245); font-size: 14px;\"><h2 class=\"pdp-mod-section-title \" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-family: Roboto-Medium; font-size: 16px; line-height: 19px; color: rgb(33, 33, 33); letter-spacing: 0px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;\">Specifications of Men\'s Classic Plaid Jacket</h2><div class=\"pdp-general-features\" style=\"margin: 0px; padding: 0px;\"><ul class=\"specification-keys\" style=\"margin: 16px -15px 0px; padding: 0px; list-style: none; height: auto;\"><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Brand</span><div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">No Brand</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">SKU</span><div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">179740023_PK-1357854643</div></li></ul></div><div class=\"box-content\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i1.77baYBAOYBAOFW\" style=\"margin: 28px 0px 0px; padding: 0px;\"><span class=\"key-title\" style=\"margin: 0px; padding: 0px; display: table-cell; width: 140px; color: rgb(117, 117, 117); word-break: break-word;\">What’s in the box</span><div class=\"html-content box-content-html\" style=\"margin: 0px; padding: 0px 0px 0px 18px; word-break: break-word; display: table-cell;\">1 x Pack Men\'s Classic Plaid Jacket</div></div></div></div></div>', 'https://adom.ad-wize.com/storage/photos/7/Product/bag2.png', NULL, 'M,L,XL', NULL, 'hot', '', 'active', 2100.00, 0, '2023-02-08 10:06:37', '2023-04-18 09:00:20'),
(3, 7, NULL, 3, NULL, 2, NULL, 'Billum ipsam nihil p', 'abc', '<p>asdsa</p>', 'https://adom.ad-wize.com/storage/photos/7/Product/bag3.png', NULL, 'M', NULL, 'hot', '', 'active', 250.00, 0, '2023-03-03 11:01:48', '2023-04-18 09:00:06'),
(4, 7, NULL, 5, NULL, 2, NULL, 'Cillum ipsam nihil p', 'cillum-ipsam-nihil-p', 'Labore ut repellendu.e', 'https://adom.ad-wize.com/storage/photos/7/Product/3.png', NULL, 'M,L', NULL, 'new', '', 'active', 493.00, 1, '2023-03-09 07:31:05', '2023-04-18 09:03:13'),
(5, 7, NULL, 8, NULL, 2, NULL, 'Nihil repellendus V', 'nihil-repellendus-v', 'Cupiditate illo exce.sa', 'https://adom.ad-wize.com/storage/photos/7/Product/2.png', NULL, 'M,L', NULL, 'new', 'new,old', 'active', 778.00, 1, '2023-03-09 07:40:05', '2023-04-18 09:02:40'),
(6, 7, NULL, 1, NULL, 2, NULL, 'Sit ad laudantium a', 'sit-ad-laudantium-a', 'Explicabo. Eius eos .as', 'https://adom.ad-wize.com/storage/photos/7/Product/1.png', NULL, 'M,L,XL', NULL, 'default', 'new', 'active', 236.00, 1, '2023-03-09 11:05:40', '2023-04-18 09:01:34'),
(8, 7, NULL, 4, NULL, 3, NULL, 'test', 'test', '<p>kljhsdkln</p>', 'https://adom.ad-wize.com/storage/photos/7/Product/ball1.png', NULL, 'L', NULL, 'new', 'new,old', 'active', 179.00, 0, '2023-03-10 13:00:28', '2023-04-18 08:59:10'),
(12, 7, NULL, 3, NULL, 2, NULL, 'Menss Grey Hooded Double Contrast Track Suit', 'debitis-ratione-est', '<h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp.0.i3.bd8amOt9mOt9SV\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 24px; font-family: Roboto-Medium; font-size: 16px; line-height: 52px; color: rgb(33, 33, 33); overflow: hidden; text-overflow: ellipsis; white-space: nowrap; height: 52px; background: rgb(250, 250, 250);\">Product details of Mens Grey Hooded Double Contrast Track Suit</h2><div class=\"pdp-product-detail\" data-spm=\"product_detail\" style=\"margin: 0px; padding: 0px; position: relative; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><div class=\"pdp-product-desc \" style=\"margin: 0px; padding: 5px 14px 5px 24px; height: auto; overflow-y: hidden;\"><div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden;\"><ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Mens Grey Hooded Double Contrast Track Suit</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Casual Style Track Suit</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Fabric : fleece</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Size: M, L &amp; XL</li></ul></div><div class=\"html-content detail-content\" style=\"margin: 16px 0px 0px; padding: 0px 0px 16px; word-break: break-word; position: relative; height: auto; line-height: 19px; overflow-y: hidden; border-bottom: 1px solid rgb(239, 240, 245);\"><div style=\"margin: 0px; padding: 8px 0px; white-space: pre-wrap;\"><span style=\"margin: 0px; padding: 0px;\">Mens Grey Hooded Double Contrast Track Suit</span><div style=\"margin: 0px; padding: 8px 0px;\"><span style=\"margin: 0px; padding: 0px;\">Winter Casual Style Track Suit</span></div><div style=\"margin: 0px; padding: 8px 0px;\"><span style=\"margin: 0px; padding: 0px;\">Fabric : fleece</span></div><div style=\"margin: 0px; padding: 8px 0px;\"><span style=\"margin: 0px; padding: 0px;\">Size: M, L &amp; XL</span></div><div style=\"margin: 0px; padding: 8px 0px;\"><span style=\"margin: 0px; padding: 0px;\">Note: We recommend hand washing for long-lasting life.﻿</span></div></div></div><div class=\"pdp-mod-specification\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i0.bd8amOt9mOt9SV\" style=\"margin: 16px 0px 0px; padding: 0px 0px 10px; border-bottom: 1px solid rgb(239, 240, 245); font-size: 14px;\"><h2 class=\"pdp-mod-section-title \" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-family: Roboto-Medium; font-size: 16px; line-height: 19px; color: rgb(33, 33, 33); letter-spacing: 0px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;\">Specifications of Mens Grey Hooded Double Contrast Track Suit</h2><div class=\"pdp-general-features\" style=\"margin: 0px; padding: 0px;\"><ul class=\"specification-keys\" style=\"margin: 16px -15px 0px; padding: 0px; list-style: none; height: auto;\"><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Brand</span><div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">No Brand</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">SKU</span><div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">129970584_PK-1289796826</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Apparel</span><div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">Party</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Age Range</span><div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">Standard</div></li></ul></div><div class=\"box-content\" style=\"margin: 28px 0px 0px; padding: 0px;\"><span class=\"key-title\" style=\"margin: 0px; padding: 0px; display: table-cell; width: 140px; color: rgb(117, 117, 117); word-break: break-word;\">What’s in the box</span><div class=\"html-content box-content-html\" style=\"margin: 0px; padding: 0px 0px 0px 18px; word-break: break-word; display: table-cell;\">1 X Mens Grey Hooded Double Contrast Track Suit</div></div></div></div></div>', 'https://adom.ad-wize.com/storage/photos/7/Product/bag4.png', NULL, 'M,L,XL', NULL, 'hot', 'new', 'active', 2799.00, 0, '2023-03-28 01:19:36', '2023-04-18 08:58:45'),
(13, 7, NULL, 1, NULL, 3, NULL, 'In voluptas id dicta', 'in-voluptas-id-dicta', '<p>&nbsp;wa&nbsp;</p>', 'https://adom.ad-wize.com/storage/photos/7/Product/paddle1.png', NULL, 'S,M', NULL, 'new', 'new', 'active', 50.00, 0, '2023-04-18 06:36:50', '2023-04-18 08:57:44'),
(14, 7, NULL, 1, NULL, 2, NULL, 'Ut fugiat eligendi m', 'ut-fugiat-eligendi-m', 'Elit, earum ut sit, .se&nbsp;', 'https://adom.ad-wize.com/storage/photos/7/Product/paddle2.png', NULL, 'S,M,L', NULL, 'new', 'new,old', 'active', 35.00, 0, '2023-04-18 07:08:01', '2023-04-18 07:08:01'),
(15, 7, NULL, 1, NULL, 3, NULL, 'A sit odio ut conseq', 'a-sit-odio-ut-conseq', 'Sed sint, distinctio.awd', 'https://adom.ad-wize.com/storage/photos/7/Product/paddle3.png', NULL, 'S,M', NULL, 'default', 'new,old', 'active', 855.00, 0, '2023-04-18 07:08:43', '2023-04-18 07:08:51'),
(16, 7, NULL, 1, NULL, 3, NULL, 'Voluptate duis ut co', 'voluptate-duis-ut-co', 'Blanditiis enim cons.&nbsp;', 'https://adom.ad-wize.com/storage/photos/7/Product/paddle4.png', NULL, 'S', NULL, 'hot', 'old', 'active', 50.00, 0, '2023-04-18 07:09:25', '2023-04-18 08:57:28'),
(17, 7, NULL, 2, NULL, 2, NULL, 'Debitis qui nesciunt', 'debitis-qui-nesciunt', 'In cillum et asperio.awd', 'https://adom.ad-wize.com/storage/photos/7/Product/nets1.png', NULL, 'M,L', NULL, 'hot', 'old', 'active', 890.00, 0, '2023-04-18 08:49:39', '2023-04-18 08:49:39'),
(18, 7, NULL, 2, NULL, 3, NULL, 'Libero unde sapiente', 'libero-unde-sapiente', 'Ullamco exercitation.sf', 'https://adom.ad-wize.com/storage/photos/7/Product/nets2.png', NULL, 'S,M,XL', NULL, 'hot', 'new,old', 'active', 416.00, 0, '2023-04-18 08:50:19', '2023-04-18 08:50:19'),
(19, 7, NULL, 2, NULL, 3, NULL, 'Incidunt ad aut dol', 'incidunt-ad-aut-dol', 'dExplicabo. Vitae ips.ad', 'https://adom.ad-wize.com/storage/photos/7/Product/nets3.png', NULL, 'S,M,XL', NULL, 'default', 'new', 'active', 953.00, 0, '2023-04-18 08:50:44', '2023-04-18 08:50:44'),
(20, 7, NULL, 2, NULL, 3, NULL, 'Proident vel maiore', 'proident-vel-maiore', 'Et laboris obcaecati.f', 'https://adom.ad-wize.com/storage/photos/7/Product/nets4.png', NULL, 'S,L,XL', NULL, 'hot', 'new,old', 'active', 674.00, 0, '2023-04-18 08:51:10', '2023-04-18 08:57:12'),
(21, 7, NULL, 4, NULL, 2, NULL, 'Natus tempora conseq', 'natus-tempora-conseq', 'Nostrum impedit, et .dg', 'https://adom.ad-wize.com/storage/photos/7/Product/ball2.png', NULL, 'S', NULL, 'default', 'new', 'active', 340.00, 0, '2023-04-18 08:52:19', '2023-04-18 08:52:19'),
(22, 7, NULL, 4, NULL, 2, NULL, 'Repellendus Volupta', 'repellendus-volupta', 'Lorem delectus, omni.f', 'https://adom.ad-wize.com/storage/photos/7/Product/ball3.png', NULL, 'M', NULL, 'default', 'new', 'active', 256.00, 0, '2023-04-18 08:53:06', '2023-04-18 08:53:06'),
(23, 7, NULL, 4, NULL, 3, NULL, 'Eos mollitia eu qui', 'eos-mollitia-eu-qui', 'Iusto pariatur? Sed .fs', 'https://adom.ad-wize.com/storage/photos/7/Product/ball4.png', NULL, 'L', NULL, 'hot', 'old', 'active', 911.00, 0, '2023-04-18 08:53:42', '2023-04-18 08:53:42'),
(24, 7, NULL, 5, NULL, 2, NULL, 'Vero quidem aperiam', 'vero-quidem-aperiam', 'Consectetur, qui qui.df', 'https://adom.ad-wize.com/storage/photos/7/Product/acc1.png', NULL, 'S,L', NULL, 'default', 'new,old', 'active', 691.00, 0, '2023-04-18 08:54:28', '2023-04-18 08:54:28'),
(25, 7, NULL, 5, NULL, 2, NULL, 'Anim rerum maiores s', 'anim-rerum-maiores-s', 'Voluptatem. Nesciunt.d', 'https://adom.ad-wize.com/storage/photos/7/Product/acc2.png', NULL, 'XL', NULL, 'default', 'new,old', 'active', 742.00, 0, '2023-04-18 08:54:48', '2023-04-18 08:56:58'),
(26, 7, NULL, 5, NULL, 2, NULL, 'Sit dolor commodi e', 'sit-dolor-commodi-e', 'Itaque veniam, iste .d', 'https://adom.ad-wize.com/storage/photos/7/Product/acc3.png', NULL, 'M,L,XL', NULL, 'default', 'new,old', 'active', 24.00, 0, '2023-04-18 08:55:11', '2023-04-18 08:56:41'),
(27, 7, NULL, 5, NULL, 2, NULL, 'Itaque rerum dicta t', 'itaque-rerum-dicta-t', 'Sunt, aut placeat, d.d', 'https://adom.ad-wize.com/storage/photos/7/Product/acc4.png', NULL, 'M', NULL, 'default', 'old', 'active', 123.00, 0, '2023-04-18 08:55:31', '2023-04-18 08:56:29'),
(28, 7, NULL, 4, NULL, 2, NULL, 'Placeat adipisicing', 'placeat-adipisicing', 'Nesciunt, et natus u.&nbsp;', 'https://adom.ad-wize.com/storage/photos/7/Product/4.png', NULL, 'S,L', NULL, 'hot', 'new', 'active', 581.00, 1, '2023-04-18 09:06:15', '2023-04-18 09:06:15'),
(29, 7, NULL, 1, NULL, 2, NULL, 'Minima sint quam rem', 'minima-sint-quam-rem', 'Lorem rem eos except.&nbsp;', 'https://adom.ad-wize.com/storage/photos/7/Product/carousel-main.jpg', NULL, 'L', NULL, 'default', 'new,old', 'active', 800.00, 0, '2023-04-18 09:13:54', '2023-04-18 09:13:54'),
(30, 22, NULL, 8, NULL, 3, 'asd', 'Skechers Women\'s Squad Sr Food Service Shoe', 'skechers-womens-squad-sr-food-service-shoe', '<p><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">SKECHERS Work Electrical Hazard (EH) footwear meets ASTM F2413-2011 EH requirements. Footwear is constructed to provide a secondary level of protection on surfaces that are substantially insulated against accidental contact with electrically energized objects. Footwear is tested to resist disruptive discharge to ground under the potential of 18kV 60Hz AC for one minute with no current flow in excess of one mill ampere under dry conditions.</span><br></p>', 'https://adom.ad-wize.com/storage/photos/22/Product/81ofYchE-sL._AC_UX535_.jpg', NULL, 'S,M', 'black', 'Used-Like-New', 'new', 'active', 45.00, NULL, '2023-04-27 16:47:47', '2023-05-09 16:17:08');

-- --------------------------------------------------------

--
-- Table structure for table `product_q_a`
--

CREATE TABLE `product_q_a` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_q_a`
--

INSERT INTO `product_q_a` (`id`, `product_id`, `user_id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, '1', '19', 'asdas', 'asdasfcsdsdv sdfa', '2023-04-06 05:40:54', '2023-04-06 07:16:53'),
(2, '1', '20', 'xdgsdv', 'sdfg', '2023-04-07 03:53:41', '2023-04-07 10:29:01');

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `product_id` bigint UNSIGNED DEFAULT NULL,
  `rate` tinyint NOT NULL DEFAULT '0',
  `review` text COLLATE utf8mb4_unicode_ci,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `user_id`, `product_id`, `rate`, `review`, `status`, `created_at`, `updated_at`) VALUES
(17, 22, 1, 5, 'testing', 'active', '2023-04-07 10:38:16', '2023-04-07 10:38:16');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_des` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `files` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyright` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `description`, `short_des`, `logo`, `photo`, `files`, `address`, `phone`, `copyright`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. sed ut perspiciatis unde sunt in culpa qui officia deserunt mollit anim id est laborum. sed ut perspiciatis unde omnis iste natus error sit voluptatem Excepteu\r\n\r\n                            sunt in culpa qui officia deserunt mollit anim id est laborum. sed ut perspiciatis Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. sed ut perspi deserunt mollit anim id est laborum. sed ut perspi.', 'Praesent dapibus, neque id cursus ucibus, tortor neque egestas augue, magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.', 'https://adom.ad-wize.com/storage/photos/7/Logo/Pickle_Marketplace_Main_Logo_2400x1800 (1).png', 'image.jpg', NULL, 'NO. 342 - London Oxford Street, 012 United Kingdom', '+92 304 2157 462', 'Copyright © 2023 Adam | Impact Enterprises LLC. All rights reserved.', 'saadkhan3977@gmail.com', NULL, '2023-05-26 17:48:49');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `type`, `price`, `status`, `created_at`, `updated_at`) VALUES
(1, 'PDX', '50.00', 'active', '2023-02-08 13:00:49', '2023-02-08 13:00:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('admin','user','vendor') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `email_verified_at`, `password`, `photo`, `role`, `provider`, `provider_id`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(7, 'Admin', 'admin@gmail.com', NULL, NULL, '$2a$12$FT97GFMZbS3ZHL1g4LmSTOVkDs2H1o4zvdYlElInEc1ocCNT5CMYW', 'http://advance-ecommerce-in-laravel-9.test//storage/photos/7/profile/299815879_1710194642691788_5117155732056870252_n.jpg', 'admin', NULL, NULL, 'active', NULL, NULL, '2023-02-08 08:07:10'),
(20, 'user', 'user@gmail.com', NULL, NULL, '$2y$10$jpxCn1KANfsZXw16BY5DyeJ7hwp2hFiwQ1q0feAxi.VMdzf9Bo5oK', NULL, 'user', NULL, NULL, 'active', NULL, '2023-03-10 12:21:28', '2023-03-10 12:21:28'),
(21, 'jhon', 'jhon@gmail.com', NULL, NULL, '$2y$10$sw3A6jK0EKtRfjs2zTptA.7HdZOmQu1Y3ouUBsDt/5Hc6BQJfU71q', NULL, 'user', NULL, NULL, 'active', NULL, '2023-04-04 18:27:32', '2023-04-04 18:27:32'),
(22, 'smith@gmail.com', 'smith@gmail.com', '3541', NULL, '$2y$10$0xslZl839fRLYZP1N4Q58OJvN4rWKdjl5Ml0BiDU3LMdLoNlPfDoG', NULL, 'vendor', NULL, NULL, 'active', NULL, '2023-04-04 18:48:20', '2023-05-09 16:18:50'),
(23, 'impactpickleball', 'adam.impactpickleball@gmail.com', NULL, NULL, '$2y$10$aRLQYYwBq.ambpgXmSLDx..SZzzs7HsTkkJ7UlakKdUhwhuPbnHzO', NULL, 'vendor', NULL, NULL, 'active', NULL, '2023-04-18 20:38:18', '2023-04-18 20:38:18'),
(24, 'saad', 'saadkhan3977@gmail.com', NULL, NULL, '$2y$10$3GQYjw/mDLWVRI36Qtrjl.cDk4XbigRHF0lvuOyYDeNyvOc9VqN3m', NULL, 'vendor', NULL, NULL, 'active', NULL, '2023-04-27 16:40:07', '2023-04-27 16:40:07'),
(25, 'saad', 'saadkhanuser@gmail.com', NULL, NULL, '$2y$10$jIVIJxz5Cwy2fsxuyjRmbOkpt2r/yv4/LOlQ0bKeICrSoPzPiw5Ae', NULL, 'user', NULL, NULL, 'active', NULL, '2023-04-27 16:41:28', '2023-04-27 16:41:28');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_reviews`
--

CREATE TABLE `vendor_reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `vendor_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendor_reviews`
--

INSERT INTO `vendor_reviews` (`id`, `vendor_id`, `user_id`, `status`, `review`, `created_at`, `updated_at`) VALUES
(3, '22', '22', '1', 'das', '2023-04-07 10:41:58', '2023-04-07 10:41:58');

-- --------------------------------------------------------

--
-- Table structure for table `veriant_colors`
--

CREATE TABLE `veriant_colors` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `veriant_colors`
--

INSERT INTO `veriant_colors` (`id`, `product_id`, `name`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(2, 32, 'Black', '10', '350', '2023-05-01 09:17:53', '2023-05-01 09:17:53');

-- --------------------------------------------------------

--
-- Table structure for table `veriant_sizes`
--

CREATE TABLE `veriant_sizes` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `veriant_sizes`
--

INSERT INTO `veriant_sizes` (`id`, `product_id`, `name`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(3, 32, '40', '5', '340', '2023-05-01 09:17:53', '2023-05-01 09:17:53'),
(4, 32, '41', '6', '360', '2023-05-01 09:17:53', '2023-05-01 09:17:53');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `cart_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `quantity` int NOT NULL,
  `amount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `product_id`, `cart_id`, `user_id`, `price`, `quantity`, `amount`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, 1287.54, 1, 1287.54, '2023-03-10 13:20:29', '2023-03-10 13:20:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `banners_slug_unique` (`slug`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_product_id_foreign` (`product_id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_order_id_foreign` (`order_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`),
  ADD KEY `categories_added_by_foreign` (`added_by`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
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
  ADD KEY `orders_shipping_id_foreign` (`shipping_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_post_cat_id_foreign` (`post_cat_id`),
  ADD KEY `posts_post_tag_id_foreign` (`post_tag_id`),
  ADD KEY `posts_added_by_foreign` (`added_by`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_categories_slug_unique` (`slug`);

--
-- Indexes for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_comments_user_id_foreign` (`user_id`),
  ADD KEY `post_comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_tags_slug_unique` (`slug`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_cat_id_foreign` (`cat_id`),
  ADD KEY `products_child_cat_id_foreign` (`child_cat_id`);

--
-- Indexes for table `product_q_a`
--
ALTER TABLE `product_q_a`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_reviews_user_id_foreign` (`user_id`),
  ADD KEY `product_reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vendor_reviews`
--
ALTER TABLE `vendor_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `veriant_colors`
--
ALTER TABLE `veriant_colors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `veriant_colors_product_id_foreign` (`product_id`);

--
-- Indexes for table `veriant_sizes`
--
ALTER TABLE `veriant_sizes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `veriant_sizes_product_id_foreign` (`product_id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_product_id_foreign` (`product_id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`),
  ADD KEY `wishlists_cart_id_foreign` (`cart_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `post_comments`
--
ALTER TABLE `post_comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `product_q_a`
--
ALTER TABLE `product_q_a`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `vendor_reviews`
--
ALTER TABLE `vendor_reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `veriant_colors`
--
ALTER TABLE `veriant_colors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `veriant_sizes`
--
ALTER TABLE `veriant_sizes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_shipping_id_foreign` FOREIGN KEY (`shipping_id`) REFERENCES `shippings` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `posts_post_cat_id_foreign` FOREIGN KEY (`post_cat_id`) REFERENCES `post_categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `posts_post_tag_id_foreign` FOREIGN KEY (`post_tag_id`) REFERENCES `post_tags` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD CONSTRAINT `post_comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `post_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_child_cat_id_foreign` FOREIGN KEY (`child_cat_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `product_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
