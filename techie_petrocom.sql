-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 17, 2024 at 12:07 AM
-- Server version: 8.0.35
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `techie_petrocom`
--

-- --------------------------------------------------------

--
-- Table structure for table `client_details`
--

CREATE TABLE `client_details` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `client_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `primary_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sec_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sec_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `approved` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client_details`
--

INSERT INTO `client_details` (`id`, `created_at`, `updated_at`, `client_name`, `company_name`, `primary_email`, `sec_email`, `phone`, `sec_phone`, `photo`, `approved`) VALUES
(1, '2024-01-11 12:31:57', '2024-01-11 18:04:11', 'Rajiv Ranja', 'Rajiv', 'rajivforyu@gmail.com', 'null', '96393482588', 'null', '/storage/app/public/client_photo/Rajiv Ranjan Rajivpng', 0),
(2, '2024-01-11 13:35:57', '2024-01-11 18:05:04', 'test', 'test', 'test@gmail.com', 'null', '2323232323', 'null', '/storage/app/public/client_photo/test testpng', 1),
(3, '2024-01-11 17:51:54', '2024-01-15 14:57:45', 'Rajiv Ranjan', 'Rajiv', 'google@gmail.com', 'null', '2323232322', 'null', '/storage/app/public/client_photo/Rajiv Ranja Rajivpng', 1),
(4, '2024-01-14 22:00:41', '2024-01-14 22:00:51', 'Abc', 'petrocom', 'primary@gmail.com', NULL, '9820835484', NULL, '/storage/app/public/client_photo/Abc petrocompng', 0),
(5, '2024-01-16 23:37:06', '2024-01-16 23:37:06', 'Member', 'New member', 'member@gmail.com', NULL, '9820835484', NULL, '/storage/app/public/client_photo/Member New memberpng', 1);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `client_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `multidrop` int NOT NULL,
  `job_location_data` json NOT NULL,
  `vehicle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pod` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice` json DEFAULT NULL,
  `eta` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `created_at`, `updated_at`, `client_id`, `job_id`, `date`, `multidrop`, `job_location_data`, `vehicle`, `status`, `pod`, `invoice_status`, `invoice`, `eta`, `update`) VALUES
(1, '2024-01-11 14:16:44', '2024-01-11 19:54:08', '2', 'IKDKJF001', '2024-01-11', 0, '\"[{\\\"from\\\":\\\"DELHI\\\",\\\"to\\\":\\\"PATNA\\\"}]\"', 'JHJKH222', 'In-Progress', '/storage/app/public/pod/pod_IKDKJF001_2024-01-11.pdf', 'paid', '\"/storage/app/public/invoice/invoice__2024-01-11.pdf\"', '20:08', '\"[\\\"PICKUP\\\",\\\"Soon\\\"]\"'),
(2, '2024-01-11 18:30:35', '2024-01-14 21:21:09', '3', 'IKDKJF002', '2024-01-11', 1, '\"[{\\\"from\\\":\\\"HAZARIBAGH\\\",\\\"to\\\":\\\"RANCHI\\\"},{\\\"from\\\":\\\"Ranchi\\\",\\\"to\\\":\\\"Hazaribagh\\\"}]\"', 'JHO2AJ8787', 'Cancelled', NULL, 'due', NULL, '19:00', '\"[]\"'),
(3, '2024-01-11 19:01:23', '2024-01-11 19:01:23', '2', 'IKDKJF003', '2024-01-11', 0, '\"[{\\\"from\\\":\\\"HAZARIBAGH\\\",\\\"to\\\":\\\"RANCHI\\\"}]\"', 'JHJKH222', 'In-Progress', NULL, 'paid', NULL, '18:35', '\"[]\"'),
(4, '2024-01-11 19:57:24', '2024-01-14 21:27:43', '3', 'job_ian_23', '2024-01-15', 1, '\"[{\\\"from\\\":\\\"navi\\\",\\\"to\\\":\\\"mumbai\\\"},{\\\"from\\\":\\\"mumbai\\\",\\\"to\\\":\\\"patna\\\"}]\"', 'Car nano', 'In-Progress', NULL, 'due', NULL, '12:32', '\"[\\\"Vehicle will arrive to load \\\"]\"'),
(5, '2024-01-11 20:57:29', '2024-01-11 20:57:29', '2', 'job_1', '2024-01-11', 0, '\"[{\\\"from\\\":\\\"job 1\\\",\\\"to\\\":\\\"job 2\\\"}]\"', 'Vehicle 1', 'In-Progress', NULL, 'due', NULL, '20:31', '\"[]\"'),
(6, '2024-01-11 20:58:08', '2024-01-11 20:58:08', '2', 'job_2', '2024-01-11', 0, '\"[{\\\"from\\\":\\\"job 2\\\",\\\"to\\\":\\\"job 3\\\"}]\"', 'job 2', 'In-Progress', NULL, 'due', NULL, '20:48', '\"[]\"'),
(7, '2024-01-11 20:58:51', '2024-01-14 13:05:02', '2', 'job_3', '2024-01-15', 0, '\"[{\\\"from\\\":\\\"job 3\\\",\\\"to\\\":\\\"job 4\\\"}]\"', 'job 3', 'In-Progress', NULL, 'paid', NULL, '13:01', '\"[]\"'),
(8, '2024-01-11 21:00:11', '2024-01-14 13:07:25', '2', 'job_4', '2024-01-16', 0, '\"[{\\\"from\\\":\\\"job four\\\",\\\"to\\\":\\\"job five\\\"}]\"', 'vehicle 4', 'In-Progress', NULL, 'due', NULL, '08:01', '\"[\\\"gadi ab maal load krne aa rhe h \\\"]\"'),
(9, '2024-01-14 21:30:12', '2024-01-14 23:46:50', '3', 'test_1', '2024-01-17', 0, '\"[{\\\"from\\\":\\\"LANCING BN15 8UE\\\",\\\"to\\\":\\\" BRIGHTON,BN1 2FU\\\"}]\"', 'SWB', 'In-Progress', NULL, 'due', NULL, '01:00', '\"[]\"'),
(10, '2024-01-14 21:38:09', '2024-01-14 23:39:38', '3', 'test_2', '2024-01-14', 0, '\"[{\\\"from\\\":\\\"SHOTTS,ML7 4EQ\\\",\\\"to\\\":\\\"Barrow in- Furness,LA14 2ND\\\"}]\"', 'SWB', 'In-Progress', NULL, 'due', NULL, '01:00', '\"[]\"'),
(11, '2024-01-14 22:06:27', '2024-01-15 20:51:13', '3', 'test_3', '2024-01-15', 0, '\"[{\\\"from\\\":\\\"123\\\",\\\"to\\\":\\\"234\\\"}]\"', 'Car nano', 'In-Progress', NULL, 'due', NULL, '15:48', '\"[]\"'),
(12, '2024-01-14 23:48:38', '2024-01-15 13:59:52', '2', 'test', '2024-01-15', 0, '\"[{\\\"from\\\":\\\"HAZARIBAGH\\\",\\\"to\\\":\\\"RANCHI\\\"}]\"', 'test', 'Completed', NULL, 'paid', NULL, '04:18', '\"[]\"'),
(13, '2024-01-15 00:16:48', '2024-01-15 20:52:35', '2', 'test1', '2024-01-15', 0, '\"[{\\\"from\\\":\\\"sdfsf\\\",\\\"to\\\":\\\"sdfsdf\\\"}]\"', 'dsfsdf', 'In-Progress', NULL, 'paid', NULL, '12:35', '\"[]\"'),
(14, '2024-01-15 20:55:21', '2024-01-15 21:04:42', '3', 'Job_sunil', '2024-01-16', 0, '\"[{\\\"from\\\":\\\"SE1 \\\",\\\"to\\\":\\\"TW1\\\"}]\"', 'SWB', 'In-Progress', '/storage/app/public/pod/pod_Job_sunil_2024-01-16.pdf', 'due', NULL, '01:30', '\"[\\\"On the way\\\",\\\"ETA Changed\\\"]\"');

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
(32, '2014_10_12_000000_create_users_table', 1),
(33, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(34, '2019_08_19_000000_create_failed_jobs_table', 1),
(35, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(36, '2023_12_18_063209_create_jobs_table', 1),
(37, '2023_12_22_091921_create_client_details_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'auth_token', '4ae419cff34d7a35e6bae2024cfd0d453df5f7ebf290fddb1e1faf2d2fb2fadd', '[\"*\"]', '2024-01-15 21:24:32', NULL, '2024-01-11 12:15:30', '2024-01-15 21:24:32'),
(2, 'App\\Models\\User', 1, 'auth_token', 'a59a6afa99be050160fec4ac06fdac8e65e04135027cd76a3c421eb389c2516b', '[\"*\"]', '2024-01-11 15:25:57', NULL, '2024-01-11 12:16:20', '2024-01-11 15:25:57'),
(3, 'App\\Models\\User', 1, 'auth_token', '9d70fa27eba09e14258a9a00d3bbcba56432c43191c049165f54d45b0c6bafca', '[\"*\"]', '2024-01-11 12:21:38', NULL, '2024-01-11 12:21:14', '2024-01-11 12:21:38'),
(4, 'App\\Models\\User', 2, 'auth_token', '5fe5bb881873bd43b81122a6f311e8bd14440d64380e63b6ed5c89047f9c945d', '[\"*\"]', '2024-01-11 15:26:24', NULL, '2024-01-11 15:26:04', '2024-01-11 15:26:24'),
(5, 'App\\Models\\User', 1, 'auth_token', '6a25a3679f233bb80dac2a3fee3f9cf89d32a166c8d6fdad979eb686c5eddaf0', '[\"*\"]', '2024-01-11 15:27:03', NULL, '2024-01-11 15:26:47', '2024-01-11 15:27:03'),
(6, 'App\\Models\\User', 4, 'auth_token', '4ae9ba638cc2ee862a2caa0866f2a6da1d248f4325a142af67649da94e02bb25', '[\"*\"]', '2024-01-11 15:27:45', NULL, '2024-01-11 15:27:28', '2024-01-11 15:27:45'),
(7, 'App\\Models\\User', 1, 'auth_token', '5b2ea14315a16089087daf0124f9448860652a9769780f6bc411ca9e256e81a7', '[\"*\"]', '2024-01-11 18:05:16', NULL, '2024-01-11 15:28:11', '2024-01-11 18:05:16'),
(8, 'App\\Models\\User', 1, 'auth_token', '7b42799cd73528e9c665660775e77c07835f2cb0924da4991ab6b65fe2fffc35', '[\"*\"]', '2024-01-11 18:31:16', NULL, '2024-01-11 18:09:53', '2024-01-11 18:31:16'),
(9, 'App\\Models\\User', 5, 'auth_token', 'fa7f6abb9bb871547bc163d4549e208a9efcac36961d906390e9dd0b95f1ef71', '[\"*\"]', '2024-01-11 18:59:21', NULL, '2024-01-11 18:31:27', '2024-01-11 18:59:21'),
(10, 'App\\Models\\User', 1, 'auth_token', '0cb141aba1bd3fd1f09aea9f0d39e832515086f7b0601b8b50f7b3a17d713d8f', '[\"*\"]', '2024-01-12 10:42:09', NULL, '2024-01-11 18:59:28', '2024-01-12 10:42:09'),
(11, 'App\\Models\\User', 1, 'auth_token', '10849abf7a092f4979aea7c51bb7424fca943a2ffa975d1c00f57716370b2ad6', '[\"*\"]', '2024-01-11 20:08:48', NULL, '2024-01-11 19:51:18', '2024-01-11 20:08:48'),
(12, 'App\\Models\\User', 1, 'auth_token', '46b6b40b6ed9b48dd4941b1603449960d80151debdabb29e0bc8c3146cffd021', '[\"*\"]', '2024-01-11 20:10:14', NULL, '2024-01-11 20:09:24', '2024-01-11 20:10:14'),
(13, 'App\\Models\\User', 6, 'auth_token', '97861544478023ca0981aadf6dbfaaea1040d3a63454b58723eb1b8c8a85d924', '[\"*\"]', '2024-01-11 20:56:30', NULL, '2024-01-11 20:10:27', '2024-01-11 20:56:30'),
(14, 'App\\Models\\User', 1, 'auth_token', 'a03addd88e6eafa6800e97a15277c8de06ce2a0ba6630efb3c943a2e4af30486', '[\"*\"]', '2024-01-11 20:14:58', NULL, '2024-01-11 20:13:40', '2024-01-11 20:14:58'),
(15, 'App\\Models\\User', 1, 'auth_token', '2902e70d34db91d2432faf71fa9554a2d3430c4b73cc28f51e9703f9df0619ae', '[\"*\"]', '2024-01-11 21:02:15', NULL, '2024-01-11 20:56:39', '2024-01-11 21:02:15'),
(16, 'App\\Models\\User', 6, 'auth_token', 'a2c66831387cab5b32f67b4cb978837e6e5579286fb7b093f73d72a2986e2e1c', '[\"*\"]', '2024-01-11 21:08:11', NULL, '2024-01-11 21:05:17', '2024-01-11 21:08:11'),
(17, 'App\\Models\\User', 1, 'auth_token', '9a85b40deed7c3553af8abdd68d89d59eec3bb965f0ef4c4fc49ffeb18ee4c6b', '[\"*\"]', '2024-01-11 21:12:40', NULL, '2024-01-11 21:08:18', '2024-01-11 21:12:40'),
(18, 'App\\Models\\User', 2, 'auth_token', 'b956c20879ac730e49964d87217b903f651d76a16c2bdc1092ed545cfa6de0b1', '[\"*\"]', '2024-01-11 21:16:55', NULL, '2024-01-11 21:12:51', '2024-01-11 21:16:55'),
(19, 'App\\Models\\User', 1, 'auth_token', 'a8cf8132bf8766ca9780c79ff8679b0d4ae48d3761ba1460834f4c60b1e44986', '[\"*\"]', '2024-01-14 15:27:36', NULL, '2024-01-11 21:28:40', '2024-01-14 15:27:36'),
(20, 'App\\Models\\User', 5, 'auth_token', '2ce1daa289cf9d71a5947e8e5c6faad0c4118b5320f308256c1a9ebd73b7ddb8', '[\"*\"]', '2024-01-12 10:48:28', NULL, '2024-01-12 10:42:24', '2024-01-12 10:48:28'),
(21, 'App\\Models\\User', 6, 'auth_token', 'b2dc39e719d5ba1b2af22cc0e4471fa61371ac5ab262b2be920fe90e8de06a01', '[\"*\"]', '2024-01-13 13:05:24', NULL, '2024-01-12 10:48:36', '2024-01-13 13:05:24'),
(22, 'App\\Models\\User', 6, 'auth_token', 'b0c4a724dfb30c9a116d06e9c5504b2f6bcc81e640b9c1bf5bde15a00eb89c74', '[\"*\"]', '2024-01-13 13:22:22', NULL, '2024-01-13 13:05:30', '2024-01-13 13:22:22'),
(23, 'App\\Models\\User', 6, 'auth_token', 'af749dd0c779941194274ef3f83279145324023959033fc56c15de366ef6355c', '[\"*\"]', '2024-01-13 13:24:03', NULL, '2024-01-13 13:22:31', '2024-01-13 13:24:03'),
(24, 'App\\Models\\User', 6, 'auth_token', 'bb036ceeae1041315c89f85764aa44c2d25a3bfbe5a12c4e0e91062788e07c04', '[\"*\"]', '2024-01-13 13:26:13', NULL, '2024-01-13 13:24:20', '2024-01-13 13:26:13'),
(25, 'App\\Models\\User', 6, 'auth_token', 'c6d8935b1d143454ee89d2cba29bf25f18747d2cc0aa653d5183b899144c6628', '[\"*\"]', '2024-01-13 13:27:52', NULL, '2024-01-13 13:26:22', '2024-01-13 13:27:52'),
(26, 'App\\Models\\User', 6, 'auth_token', 'c16b76e333712e2b9624cd8ac5c0f45277e5f22928b32fb687e75a770a68afe6', '[\"*\"]', '2024-01-13 13:33:01', NULL, '2024-01-13 13:27:58', '2024-01-13 13:33:01'),
(27, 'App\\Models\\User', 6, 'auth_token', '65e8f86603ee4eacdcd277977f929b5cc9144a2a575b8fc4c0d4cfcc325a6f56', '[\"*\"]', '2024-01-13 13:34:02', NULL, '2024-01-13 13:33:22', '2024-01-13 13:34:02'),
(28, 'App\\Models\\User', 6, 'auth_token', '1f48e510da64b12352e3d9764d1de5f4db4f4c53452d6d6fac70890e0fec3f9c', '[\"*\"]', '2024-01-13 13:36:46', NULL, '2024-01-13 13:34:10', '2024-01-13 13:36:46'),
(29, 'App\\Models\\User', 6, 'auth_token', '95bafc3b003f214ce73cba476bfd40be652f64f7a8dea76fc079b6e391c205a5', '[\"*\"]', '2024-01-13 13:36:55', NULL, '2024-01-13 13:36:53', '2024-01-13 13:36:55'),
(30, 'App\\Models\\User', 6, 'auth_token', 'b2313cce54fd1e194ce2aefb11d8e6839d98036946742da12bdef0e86de867ad', '[\"*\"]', '2024-01-13 13:37:41', NULL, '2024-01-13 13:36:54', '2024-01-13 13:37:41'),
(31, 'App\\Models\\User', 6, 'auth_token', 'cdc9de31f6b68899be2b336ae2a0c2ad00ae83b6b2f2d046c00f910a3f689b55', '[\"*\"]', '2024-01-13 13:38:21', NULL, '2024-01-13 13:37:52', '2024-01-13 13:38:21'),
(32, 'App\\Models\\User', 6, 'auth_token', 'c56fdc265f3167bf0d6a5975d724e071fbd768400af8fc24544bbd9f293775ce', '[\"*\"]', '2024-01-13 13:39:21', NULL, '2024-01-13 13:38:26', '2024-01-13 13:39:21'),
(33, 'App\\Models\\User', 6, 'auth_token', 'd09ff5ca56ca18b7cd0acaabbe8264a0ac85af525cb17d8f3f2ab631e46c94ae', '[\"*\"]', '2024-01-13 13:40:29', NULL, '2024-01-13 13:39:28', '2024-01-13 13:40:29'),
(34, 'App\\Models\\User', 6, 'auth_token', '93dbf0a0237ece199df9399f58057ba82dbd51baf531b4a9c4cfea7399ffda58', '[\"*\"]', '2024-01-13 13:41:22', NULL, '2024-01-13 13:40:41', '2024-01-13 13:41:22'),
(35, 'App\\Models\\User', 6, 'auth_token', 'bc3df3c8aac0ccccc1b5a502b20eac9007c0ca2289e17af71ee6d82af1a88698', '[\"*\"]', '2024-01-13 13:43:16', NULL, '2024-01-13 13:41:34', '2024-01-13 13:43:16'),
(36, 'App\\Models\\User', 6, 'auth_token', '9672e8503e36aea5614afcef47df926ae821cb489dd20e0c1964f4ad9a33028d', '[\"*\"]', '2024-01-13 13:45:39', NULL, '2024-01-13 13:43:48', '2024-01-13 13:45:39'),
(37, 'App\\Models\\User', 6, 'auth_token', '059f3bc499ee4e950ff1f5cc5d370253aa061356746e87309c7dfae535d1b630', '[\"*\"]', '2024-01-13 13:46:17', NULL, '2024-01-13 13:45:45', '2024-01-13 13:46:17'),
(38, 'App\\Models\\User', 6, 'auth_token', 'b33dcfe2a1db247d1ededde6a897c32df51ad869ddc3b1697df93d2c30b9665a', '[\"*\"]', '2024-01-13 13:48:31', NULL, '2024-01-13 13:46:28', '2024-01-13 13:48:31'),
(39, 'App\\Models\\User', 6, 'auth_token', 'd210adfc628b47bc171c768c49c8a4c74c2e365922e7653eaea48acf190599bb', '[\"*\"]', '2024-01-13 13:49:06', NULL, '2024-01-13 13:48:36', '2024-01-13 13:49:06'),
(40, 'App\\Models\\User', 6, 'auth_token', '220f29bc55d9f88d389e795a5268dc989462c250e808e31159059e4e9c54dccd', '[\"*\"]', '2024-01-13 13:49:56', NULL, '2024-01-13 13:49:12', '2024-01-13 13:49:56'),
(41, 'App\\Models\\User', 6, 'auth_token', '380b6a81a891c1230ff7f62fe7d5b6277acde7994ad6d4999809d3af9535d6da', '[\"*\"]', '2024-01-13 13:54:10', NULL, '2024-01-13 13:50:01', '2024-01-13 13:54:10'),
(42, 'App\\Models\\User', 6, 'auth_token', '178fe9330137bd24a26c7a13fbc97af24a6b8c605a02455386ae6e2f2f979004', '[\"*\"]', '2024-01-13 13:55:24', NULL, '2024-01-13 13:54:14', '2024-01-13 13:55:24'),
(43, 'App\\Models\\User', 6, 'auth_token', 'c250d605ae0a862dfe608bea8ea81e693d339efe2309a2ba8464446ef0003fd3', '[\"*\"]', '2024-01-13 13:55:44', NULL, '2024-01-13 13:55:30', '2024-01-13 13:55:44'),
(44, 'App\\Models\\User', 6, 'auth_token', '722948de507307c33fad2ee6d973d682506023242ffc9410e9272eaebec68c9d', '[\"*\"]', '2024-01-13 13:56:37', NULL, '2024-01-13 13:56:02', '2024-01-13 13:56:37'),
(45, 'App\\Models\\User', 6, 'auth_token', '249e5f8bff8e73363a21874fd7ab9e8055dc40e49fa41dbcc9b37b2aef2c2ae0', '[\"*\"]', '2024-01-13 13:57:49', NULL, '2024-01-13 13:56:44', '2024-01-13 13:57:49'),
(46, 'App\\Models\\User', 1, 'auth_token', '8acf682ee82f37f7c86945fd987c5f4dbb6697a5d18801719333c2fa9551496e', '[\"*\"]', '2024-01-13 14:01:53', NULL, '2024-01-13 13:58:11', '2024-01-13 14:01:53'),
(47, 'App\\Models\\User', 6, 'auth_token', 'b4316b7ee94187c24df5f890f9239952de59298f07072d03d8aa909ea4ee96af', '[\"*\"]', NULL, NULL, '2024-01-13 14:01:59', '2024-01-13 14:01:59'),
(48, 'App\\Models\\User', 6, 'auth_token', '6e33a24dc442e2e87ad72d9899d7fdaaf9128ea79de696e40244a47062cbcd8f', '[\"*\"]', '2024-01-13 14:02:07', NULL, '2024-01-13 14:02:04', '2024-01-13 14:02:07'),
(49, 'App\\Models\\User', 1, 'auth_token', 'fd7a5c3a556b0b467876ebc6bf7824dd81a8b380eff1bd5cd055f98bea3adecb', '[\"*\"]', '2024-01-14 13:34:55', NULL, '2024-01-13 14:04:04', '2024-01-14 13:34:55'),
(50, 'App\\Models\\User', 6, 'auth_token', '5131779a0cc5543440d3f4d2e968a72a18d056deee2202d52ff2ec2100df2008', '[\"*\"]', '2024-01-14 13:45:15', NULL, '2024-01-14 13:35:09', '2024-01-14 13:45:15'),
(51, 'App\\Models\\User', 6, 'auth_token', '25624c563fe01c4a1e9b0ec15daa53ac0ed77514dbc4062aab43233462ed45b1', '[\"*\"]', '2024-01-15 00:39:29', NULL, '2024-01-14 13:49:29', '2024-01-15 00:39:29'),
(52, 'App\\Models\\User', 1, 'auth_token', '449018bd83405a31198e59a57bd9c823e8e1e440f85f9596bcb6cbac99cc25ee', '[\"*\"]', '2024-01-14 13:54:41', NULL, '2024-01-14 13:52:53', '2024-01-14 13:54:41'),
(53, 'App\\Models\\User', 1, 'auth_token', '54a99f4fbcad4fc3ab9275f1bb63a364d708f978ffe81fd67408e214d8a43a10', '[\"*\"]', '2024-01-15 11:51:54', NULL, '2024-01-14 15:45:42', '2024-01-15 11:51:54'),
(54, 'App\\Models\\User', 1, 'auth_token', '284ac94ea9aabc3acd8170260643d963405f0bda0a4117b23336af3bb018c286', '[\"*\"]', '2024-01-14 16:46:34', NULL, '2024-01-14 16:45:46', '2024-01-14 16:46:34'),
(55, 'App\\Models\\User', 6, 'auth_token', '866e175f68dbfb5bb95b3941501dcc53fdd67cb701bfd904c7db24ad4310c6f0', '[\"*\"]', '2024-01-14 17:39:01', NULL, '2024-01-14 16:47:03', '2024-01-14 17:39:01'),
(56, 'App\\Models\\User', 1, 'auth_token', '2bc96982adb5cdb3f5cd93cf10533d1a2660131bc079fc2200908a9c975b435d', '[\"*\"]', '2024-01-14 21:09:14', NULL, '2024-01-14 20:45:51', '2024-01-14 21:09:14'),
(57, 'App\\Models\\User', 6, 'auth_token', 'b5037b2e3966af2314e18bb7743447d34c2137d558217713bd3dc09afa0260f0', '[\"*\"]', '2024-01-14 21:15:47', NULL, '2024-01-14 21:09:33', '2024-01-14 21:15:47'),
(58, 'App\\Models\\User', 1, 'auth_token', '8f5316ad39e25881b7a4686e605e2d8f7d780f099fedb615c463be35841461f9', '[\"*\"]', '2024-01-14 21:16:35', NULL, '2024-01-14 21:15:54', '2024-01-14 21:16:35'),
(59, 'App\\Models\\User', 7, 'auth_token', '301ae6ac12deeb7a12ce20c329098e3f3b32bf5bcc005b20dfbea3916f058ea7', '[\"*\"]', '2024-01-14 21:17:00', NULL, '2024-01-14 21:16:53', '2024-01-14 21:17:00'),
(60, 'App\\Models\\User', 1, 'auth_token', '0ae172039aa5f243d854c7fc283016247931b5ee1cf55bee8659701afe69a42a', '[\"*\"]', '2024-01-14 21:17:38', NULL, '2024-01-14 21:17:30', '2024-01-14 21:17:38'),
(61, 'App\\Models\\User', 7, 'auth_token', '1f1dc09dccfdb032515a6f187eff234ed1835cbffc4eec854fb8d5e14d6366db', '[\"*\"]', '2024-01-14 21:43:32', NULL, '2024-01-14 21:18:06', '2024-01-14 21:43:32'),
(62, 'App\\Models\\User', 6, 'auth_token', '9e4398b8d3a48710d6c9620986b83e3ccc42ea08f39956948d21183687d9873b', '[\"*\"]', NULL, NULL, '2024-01-14 21:44:18', '2024-01-14 21:44:18'),
(63, 'App\\Models\\User', 6, 'auth_token', '101a218fbdc9bc43fd14581b70308dae7d1e0967f4fd535765ecbad7267fc079', '[\"*\"]', '2024-01-14 21:44:45', NULL, '2024-01-14 21:44:29', '2024-01-14 21:44:45'),
(64, 'App\\Models\\User', 1, 'auth_token', 'd7a029e91157a79ffb943a49a8eb4d2cd2e4c91fc6fc6c54684252115770f862', '[\"*\"]', '2024-01-14 22:14:51', NULL, '2024-01-14 21:44:51', '2024-01-14 22:14:51'),
(65, 'App\\Models\\User', 1, 'auth_token', '34689b49b3214e4e2162ba2c4290ea2c0863e8acad001d334e068474637b7389', '[\"*\"]', '2024-01-15 17:44:00', NULL, '2024-01-14 22:18:57', '2024-01-15 17:44:00'),
(66, 'App\\Models\\User', 1, 'auth_token', 'ce7e4d8d1bdb3db8ae344eb4ac397c6b33ec72e034deb9a68e0c4cccab1ff35f', '[\"*\"]', '2024-01-15 00:50:17', NULL, '2024-01-14 22:24:26', '2024-01-15 00:50:17'),
(67, 'App\\Models\\User', 1, 'auth_token', '5a7bbb06ee0c21f39ecd9ad70ffefd6b04d3c0be50049c3dbd2d3d053dd49e9a', '[\"*\"]', '2024-01-15 14:58:00', NULL, '2024-01-14 23:34:44', '2024-01-15 14:58:00'),
(68, 'App\\Models\\User', 1, 'auth_token', '9c35e9ccd264340d627e0cdbd5ae33d882256b46ab566e4c8b48eda35e2db889', '[\"*\"]', '2024-01-15 00:39:39', NULL, '2024-01-15 00:39:37', '2024-01-15 00:39:39'),
(69, 'App\\Models\\User', 6, 'auth_token', '9c3bb8883d41ef823c6f4a57912904435efa07d41a4a5554587bac7d94052a8d', '[\"*\"]', '2024-01-15 14:54:20', NULL, '2024-01-15 00:41:40', '2024-01-15 14:54:20'),
(70, 'App\\Models\\User', 6, 'auth_token', '817aa3dbf35e5b242f1af742f695ca2197e7d90170fcbd762804bcdb1299b771', '[\"*\"]', '2024-01-15 13:56:27', NULL, '2024-01-15 00:50:31', '2024-01-15 13:56:27'),
(71, 'App\\Models\\User', 1, 'auth_token', 'd18fb5944f6cd993fb380154a80fcfda08c191d0317e70be4854a02ca3c8063f', '[\"*\"]', '2024-01-16 12:39:47', NULL, '2024-01-15 13:56:30', '2024-01-16 12:39:47'),
(72, 'App\\Models\\User', 1, 'auth_token', '5cb697a1e71f5df59cd41d42b19c050e91e844494a3ddf21ad273ca281c03d47', '[\"*\"]', '2024-01-15 15:22:42', NULL, '2024-01-15 14:54:29', '2024-01-15 15:22:42'),
(73, 'App\\Models\\User', 5, 'auth_token', 'b8c489a957841fff94601be0d8ca69787629ca528989442409765ae2f459cc16', '[\"*\"]', '2024-01-15 19:36:35', NULL, '2024-01-15 14:58:19', '2024-01-15 19:36:35'),
(74, 'App\\Models\\User', 1, 'auth_token', '0501eb817dd9d8057570498097c3b4e66aeee5a967c694c8972269694b88a937', '[\"*\"]', '2024-01-15 20:42:02', NULL, '2024-01-15 20:41:25', '2024-01-15 20:42:02'),
(75, 'App\\Models\\User', 2, 'auth_token', '206c0b12b8506daab6eb30e6ac47379999d68dfe603f4461cdbf0c6d679e1c54', '[\"*\"]', '2024-01-15 21:05:18', NULL, '2024-01-15 20:41:39', '2024-01-15 21:05:18'),
(76, 'App\\Models\\User', 1, 'auth_token', '70961934f0d073fb3d931ab05cc655c892ec9ae595ffd2d4ceb0670641b79ecd', '[\"*\"]', '2024-01-16 23:33:28', NULL, '2024-01-16 23:33:09', '2024-01-16 23:33:28'),
(77, 'App\\Models\\User', 5, 'auth_token', '074a92411c74747a3d60c56c09cf0cd828ab7962c33fb6364dbe097f312c1f68', '[\"*\"]', '2024-01-16 23:34:08', NULL, '2024-01-16 23:33:48', '2024-01-16 23:34:08'),
(78, 'App\\Models\\User', 1, 'auth_token', 'd8affcef18d263ef441786201aedbbb2fe8ff5317a00c439f4cee0de80f746c2', '[\"*\"]', '2024-01-16 23:38:18', NULL, '2024-01-16 23:34:15', '2024-01-16 23:38:18'),
(79, 'App\\Models\\User', 8, 'auth_token', 'afc52f6af2ce69828f29f891ae09c0a3fd0e6e51e1c502780797650e9449bd37', '[\"*\"]', '2024-01-16 23:38:48', NULL, '2024-01-16 23:38:32', '2024-01-16 23:38:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `client_id` int DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `client_id`, `email`, `email_verified_at`, `password`, `type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, 'superadmin@admin.com', NULL, '$2y$12$6huPxgQd9YAHkSj64id3Yeou/LpPNcevxrhBZQph5QmOMS7UC/Hfe', 1, NULL, NULL, NULL),
(2, NULL, 'admin@admin.com', NULL, '$2y$12$DjOmVdV94kyq3Qw5KJbNfeiy4Zy9lYkqLk0L73Nejw.L1WnGSDrQu', 2, NULL, '2024-01-11 12:16:57', '2024-01-11 12:16:57'),
(3, NULL, 'admin1@admin.com', NULL, '$2y$12$QjZrxhBhOg60ld4LGrIss.WKhwgXudnk/7/1KaxpTKX2x32MHUyr.', 2, NULL, '2024-01-11 12:26:05', '2024-01-11 12:26:05'),
(4, 1, 'rajiv123@gmail.com', NULL, '$2y$12$7ox/w9YlGhfBUlLYxaPWnO9TkgJLChA6Quz//8JbkBOPbtYKie3Hq', 3, NULL, '2024-01-11 14:13:23', '2024-01-11 14:13:46'),
(5, 3, 'rajivforyu@gmail.com', NULL, '$2y$12$AYL9.3Qn16rM.YFIpLhPDeYPlZEe31GoagsAshPnbzUHTTShR1X5a', 3, NULL, '2024-01-11 18:31:14', '2024-01-11 18:31:14'),
(6, 2, 'test@gmail.com', NULL, '$2y$12$a6HUFuZuMEKuKHwmgPhFiudQ0RJB7LGqv/RIz7v1cl4uUG9YbZcgK', 3, NULL, '2024-01-11 20:10:09', '2024-01-11 20:10:09'),
(7, NULL, 'anand@gmail.com', NULL, '$2y$12$b43us94eR8vNpgvtWGyqqeu.MDTgHtbCFwXiRV2TADlx3./gI9auG', 2, NULL, '2024-01-14 21:16:17', '2024-01-14 21:16:17'),
(8, 5, 'member@gmail.com', NULL, '$2y$12$ulbOm0Ez7HI21pR14/vzSujzvLLCSJ0Selvkf0O7Rrcnbw4iO1gHy', 3, NULL, '2024-01-16 23:38:16', '2024-01-16 23:38:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client_details`
--
ALTER TABLE `client_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `client_details`
--
ALTER TABLE `client_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
