-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2023 at 08:50 AM
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
-- Database: `mezoya.id`
--

-- --------------------------------------------------------

--
-- Table structure for table `booths`
--

CREATE TABLE `booths` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `fix_cost` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booths`
--

INSERT INTO `booths` (`id`, `name`, `fix_cost`, `status`, `created_at`, `updated_at`) VALUES
('9acdd51a-efc8-4053-9f07-fe6c2c8ed240', 'Indo', 98333, 1, '2023-12-09 02:19:02', '2023-12-09 02:19:02'),
('9acdd51a-f05e-457e-a10a-aa9a96905b65', 'Depan STTD', 98333, 1, '2023-12-09 02:19:02', '2023-12-09 02:19:02'),
('9acdd51a-f0f9-460b-b9fa-299c86268ca2', 'Gazebo', 98333, 1, '2023-12-09 02:19:02', '2023-12-09 02:19:02'),
('9acdd51a-f182-4b37-a643-786775727134', 'Metland', 98333, 1, '2023-12-09 02:19:02', '2023-12-09 02:19:02'),
('9acdd51a-f206-459f-afaf-35978744eeb0', 'Pekopen', 98333, 1, '2023-12-09 02:19:02', '2023-12-09 02:19:02'),
('9acdd51a-f2b3-455a-a83a-db63fe7ddf1e', 'Wates', 98333, 1, '2023-12-09 02:19:02', '2023-12-09 02:19:02'),
('9acdd51a-f38d-414d-b197-98ded9191976', 'Rawa Julang', 98333, 1, '2023-12-09 02:19:02', '2023-12-09 02:19:02');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_19_191051_create_prices_table', 1),
(6, '2023_11_19_191105_create_needs_table', 1),
(7, '2023_11_19_191614_create_booths_table', 1),
(8, '2023_11_19_192736_create_reports_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `needs`
--

CREATE TABLE `needs` (
  `id` char(36) NOT NULL,
  `cup` int(11) NOT NULL DEFAULT 0,
  `straw` int(11) NOT NULL DEFAULT 0,
  `tea` int(11) NOT NULL DEFAULT 0,
  `varian` int(11) NOT NULL DEFAULT 0,
  `sugar` int(11) NOT NULL DEFAULT 0,
  `sugar_varian` int(11) NOT NULL DEFAULT 0,
  `sealer` int(11) NOT NULL DEFAULT 0,
  `plastic_small` int(11) NOT NULL DEFAULT 0,
  `plastic_big` int(11) NOT NULL DEFAULT 0,
  `gas` int(11) NOT NULL DEFAULT 0,
  `tissue` int(11) NOT NULL DEFAULT 0,
  `gallon_water` int(11) NOT NULL DEFAULT 0,
  `glass_water` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `needs`
--

INSERT INTO `needs` (`id`, `cup`, `straw`, `tea`, `varian`, `sugar`, `sugar_varian`, `sealer`, `plastic_small`, `plastic_big`, `gas`, `tissue`, `gallon_water`, `glass_water`, `created_at`, `updated_at`) VALUES
('9acdd51a-eebf-4902-a2af-65b534da63ce', 700, 50, 500, 800, 850, 567, 60, 167, 333, 2500, 267, 6333, 17, '2023-12-09 02:19:02', '2023-12-09 02:19:02');

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

CREATE TABLE `prices` (
  `id` char(36) NOT NULL,
  `original` int(11) NOT NULL DEFAULT 0,
  `varian` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prices`
--

INSERT INTO `prices` (`id`, `original`, `varian`, `created_at`, `updated_at`) VALUES
('9acdd51a-f485-4ef9-a7cd-f6fadc393ae8', 5000, 8000, '2023-12-09 02:19:02', '2023-12-09 02:19:02');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` char(36) NOT NULL,
  `date` date NOT NULL,
  `booth_id` char(36) NOT NULL,
  `status` enum('Buka','Tutup') NOT NULL,
  `stew` int(11) NOT NULL DEFAULT 0,
  `ice` int(11) NOT NULL DEFAULT 0,
  `sold_original` int(11) NOT NULL DEFAULT 0,
  `sold_varian` int(11) NOT NULL DEFAULT 0,
  `bon_name` varchar(255) DEFAULT NULL,
  `bon_amount` int(11) NOT NULL DEFAULT 0,
  `expenditure_name` varchar(255) DEFAULT NULL,
  `expenditure_amount` int(11) NOT NULL DEFAULT 0,
  `income_today` int(11) NOT NULL DEFAULT 0,
  `fix_cost` int(11) NOT NULL DEFAULT 0,
  `cup` int(11) NOT NULL DEFAULT 0,
  `straw` int(11) NOT NULL DEFAULT 0,
  `tea` int(11) NOT NULL DEFAULT 0,
  `varian` int(11) NOT NULL DEFAULT 0,
  `sugar` int(11) NOT NULL DEFAULT 0,
  `sugar_varian` int(11) NOT NULL DEFAULT 0,
  `sealer` int(11) NOT NULL DEFAULT 0,
  `plastic_big` int(11) NOT NULL DEFAULT 0,
  `gas` int(11) NOT NULL DEFAULT 0,
  `tissue` int(11) NOT NULL DEFAULT 0,
  `gallon_water` int(11) NOT NULL DEFAULT 0,
  `glass_water` int(11) NOT NULL DEFAULT 0,
  `total_expenses` int(11) NOT NULL DEFAULT 0,
  `total_income` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` char(36) NOT NULL,
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
('9acdd51a-ec11-4aeb-b320-527fd7e16e50', 'Super Admin', 'superadmin@melektea.com', '2023-12-09 02:19:02', '$2y$12$xZ1efZA1yozb/Y8Th.x3He4F.5qejMv0yiiwOm3qBdF80ZJjdikCu', 'ihhuKIP9MV', '2023-12-09 02:19:02', '2023-12-09 02:19:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booths`
--
ALTER TABLE `booths`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `needs`
--
ALTER TABLE `needs`
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
-- Indexes for table `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reports_booth_id_foreign` (`booth_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_booth_id_foreign` FOREIGN KEY (`booth_id`) REFERENCES `booths` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
