-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2024 at 09:35 PM
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
-- Database: `wooxtravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Mohamed', 'mohamed1@gmail.com', '$2y$12$wmdGjq3GSc5o5ffCS3HfNuaNALnA4gHnsHzrKVHYqBy.Srn32YF9W', '2024-08-14 19:48:14', '2024-08-14 19:48:14'),
(2, 'Mohamed Sadek', 'moa1@gmail.com', '$2y$12$.YCND/Xs5y0g7NPcu77VwOGFodgAThWP7LZcwpV.7JeoUCPh3mgCu', '2024-08-17 15:01:11', '2024-08-17 15:01:11');

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
('moa@gmail.com|127.0.0.1', 'i:1;', 1723908561),
('moa@gmail.com|127.0.0.1:timer', 'i:1723908561;', 1723908561),
('mohamedsadekreyad1@gmail.com|127.0.0.1', 'i:1;', 1723908548),
('mohamedsadekreyad1@gmail.com|127.0.0.1:timer', 'i:1723908548;', 1723908548);

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
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `price` varchar(30) NOT NULL,
  `num_days` int(10) NOT NULL,
  `country_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `image`, `price`, `num_days`, `country_id`, `created_at`, `updated_at`) VALUES
(1, 'Cairo', 'cities-01.jpg', '400', 5, 1, '2024-08-03 14:54:21', '2024-08-03 14:54:21'),
(2, 'Berlin', 'cities-02.jpg', '500', 7, 2, '2024-08-03 14:54:21', '2024-08-03 14:54:21'),
(3, 'Frankfurt', 'cities-03.jpg', '300', 4, 2, '2024-08-03 14:54:21', '2024-08-03 14:54:21'),
(5, 'Giza', 'cities-01.jpg', '500', 5, 1, '2024-08-17 14:51:54', '2024-08-17 14:51:54');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `population` varchar(30) NOT NULL,
  `territory` varchar(30) NOT NULL,
  `avg_price` int(20) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(200) NOT NULL,
  `continent` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `population`, `territory`, `avg_price`, `description`, `image`, `continent`, `created_at`, `updated_at`) VALUES
(1, 'Egypt', '100.41', '275.500', 165, 'Welcome To Egypt', 'country-01.jpg', 'Africa', '2024-06-18 18:19:50', '2024-06-18 18:19:50'),
(2, 'France', '100.40', '555.555', 100, 'Welcome To France', 'country-02.jpg', 'Europe', '2024-06-18 18:19:50', '2024-06-18 18:19:50');

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
(3, '0001_01_01_000002_create_jobs_table', 1);

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
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `phone_number` int(30) NOT NULL,
  `num_guests` int(20) NOT NULL,
  `check_in_date` varchar(200) NOT NULL,
  `destination` varchar(200) NOT NULL,
  `price` int(30) NOT NULL,
  `user_id` int(10) NOT NULL,
  `status` varchar(200) NOT NULL DEFAULT 'Processing',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `name`, `phone_number`, `num_guests`, `check_in_date`, `destination`, `price`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(20, 'reyad sadek', 114861354, 4, '2024-08-24', 'Frankfurt', 1200, 1, 'Processing', '2024-08-13 16:28:03', '2024-08-13 16:28:03'),
(21, 'mohamed', 114861354, 2, '2024-08-24', 'Frankfurt', 600, 1, 'Processing', '2024-08-13 16:28:24', '2024-08-13 16:28:24'),
(22, 'Mohamed', 114861354, 2, '2024-08-24', 'Frankfurt', 600, 1, 'Processing', '2024-08-13 16:28:42', '2024-08-13 16:28:42'),
(23, 'Mohamed', 114861354, 3, '2024-08-24', 'Frankfurt', 900, 1, 'Processing', '2024-08-13 16:28:47', '2024-08-13 16:28:47'),
(24, 'Mohamed', 114861354, 3, '2024-08-14', 'Frankfurt', 900, 1, 'Processing', '2024-08-13 16:29:02', '2024-08-13 16:29:02'),
(25, 'Mohamed', 114861354, 1, '2024-08-14', 'Frankfurt', 300, 1, 'Processing', '2024-08-13 16:32:53', '2024-08-13 16:32:53'),
(26, 'Mohamed Sadek', 1148613809, 2, '2024-08-30', 'Giza', 900, 1, 'Processing', '2024-08-13 16:33:49', '2024-08-13 16:33:49'),
(27, 'Mohamed Sadek', 1148613809, 2, '2024-08-30', 'Giza', 900, 1, 'Processing', '2024-08-13 16:37:09', '2024-08-13 16:37:09'),
(28, 'Mohamed Sadek', 1148613809, 2, '2024-08-31', 'Cairo', 800, 1, 'Processing', '2024-08-16 07:59:15', '2024-08-16 07:59:15'),
(29, 'mazen', 1012345678, 3, '2024-08-24', 'Cairo', 1200, 1, 'Processing', '2024-08-16 08:00:24', '2024-08-16 08:00:24'),
(30, 'Mazen', 114477656, 2, '2024-08-30', 'Berlin', 1000, 1, 'Booked Successfully', '2024-08-16 10:45:31', '2024-08-17 14:49:13'),
(32, 'Mohamed Sadek', 1148613809, 2, '2024-08-31', 'Giza', 1000, 1, 'Booked Successfully', '2024-08-17 14:59:13', '2024-08-17 15:01:33');

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
('tP5DPBc7gqwXu9R1qFh4oexqVSMM6K1EoQ8jBNZ6', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoibkU5QWdKMk1wQzloSlpsSGJtR2c0V0swWm5GMlhnQkRPWUEzVHZVUCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9hbGwtYm9va2luZ3MiO31zOjUyOiJsb2dpbl9hZG1pbl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjQ6ImF1dGgiO2E6MTp7czoyMToicGFzc3dvcmRfY29uZmlybWVkX2F0IjtpOjE3MjM5MTgzOTU7fX0=', 1723918554);

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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mohamed', 'mohamed@gmail.com', NULL, '$2y$12$sO6CCMFtOfndPC/PjHHPjOnD.KesVV7GpbunSvq8Phj14sdWR7GlW', NULL, '2024-06-13 05:23:50', '2024-06-13 05:23:50'),
(2, 'Mohamed Sadek', 'mohamedsadekreyad@gmail.com', NULL, '$2y$12$H8G93mIzFJN/Xs8U/8z4sOvL3zI5IWohb.o3tQOnx7lSOLNyzjvMq', NULL, '2024-08-11 16:41:17', '2024-08-11 16:41:17'),
(3, 'Mohamed Sadek', 'moa@gmail.com', NULL, '$2y$12$KGTYHjC5KWYx5bI4re5Z1OtNIMVdxNZtZ6rvAUfgy9/JE3Es8vAJe', NULL, '2024-08-12 17:11:14', '2024-08-12 17:11:14'),
(4, 'Mohamed Sadek', 'mohamed1@gmail.com', NULL, '$2y$12$wmdGjq3GSc5o5ffCS3HfNuaNALnA4gHnsHzrKVHYqBy.Srn32YF9W', NULL, '2024-08-14 16:47:21', '2024-08-14 16:47:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
