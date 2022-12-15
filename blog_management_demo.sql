-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2022 at 02:42 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_management_demo`
--
CREATE DATABASE IF NOT EXISTS `blog_management_demo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `blog_management_demo`;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `slug`, `category_id`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Elva Lubowitz', 'elva-lubowitz', 3, NULL, 'Provident nobis itaque consequatur iste aut. Iusto illum nulla aut nihil. Dolorem earum in sed id qui eaque nisi. Assumenda minima quos velit amet facere magni numquam.', '2022-12-15 07:53:53', '2022-12-15 07:53:53'),
(2, 'Prof. Joey Quigley IV', 'prof-joey-quigley-iv', 2, NULL, 'Qui quas enim assumenda quos. Necessitatibus perspiciatis aut iure ut a maxime. Deserunt possimus quis molestiae qui repellendus. In et molestias qui sed suscipit.', '2022-12-15 07:53:53', '2022-12-15 07:53:53'),
(3, 'Hailey O\'Keefe', 'hailey-okeefe', 2, NULL, 'Quos officiis nihil cupiditate sed numquam et. Explicabo aut vero labore adipisci sit.', '2022-12-15 07:53:53', '2022-12-15 07:53:53'),
(4, 'Marlon Pagac', 'marlon-pagac', 2, NULL, 'Quia dolorem molestias et qui harum et sed. Est excepturi quia ut animi eius minima. Repellendus repudiandae aspernatur culpa sit qui natus.', '2022-12-15 07:53:53', '2022-12-15 07:53:53'),
(5, 'Prof. Jonatan Grant', 'prof-jonatan-grant', 2, NULL, 'Similique sit sunt dolorum quidem est qui enim. Unde temporibus recusandae omnis inventore alias dolor saepe. Ut architecto cupiditate cumque nemo dignissimos ad nam. Ut quia qui vitae qui.', '2022-12-15 07:53:53', '2022-12-15 07:53:53'),
(6, 'Marge Gerhold', 'marge-gerhold', 3, NULL, 'Eligendi ut repudiandae et consequatur. Voluptatibus occaecati nostrum quia. Non omnis perferendis repellat quia. Facilis rerum magni qui a autem quasi aut.', '2022-12-15 07:53:53', '2022-12-15 07:53:53'),
(7, 'Mrs. Herta Considine Jr.', 'mrs-herta-considine-jr', 1, NULL, 'Aut amet est porro ut quisquam. Facilis dicta voluptates expedita harum quisquam odio et aut. Blanditiis qui earum blanditiis perferendis.', '2022-12-15 07:53:53', '2022-12-15 07:53:53'),
(8, 'Korbin Satterfield', 'korbin-satterfield', 1, NULL, 'Deserunt pariatur natus ea fugit qui. Autem rerum minus architecto. Assumenda et consequatur dolorem aspernatur. Sed explicabo est et voluptas possimus ullam odio.', '2022-12-15 07:53:53', '2022-12-15 07:53:53'),
(9, 'Dr. Barbara Stark DVM', 'dr-barbara-stark-dvm', 1, NULL, 'Est voluptatem suscipit provident minima. Asperiores qui magnam qui deserunt ut omnis assumenda.', '2022-12-15 07:53:53', '2022-12-15 07:53:53'),
(10, 'Eriberto Funk', 'eriberto-funk', 2, NULL, 'Ipsum fuga qui provident ut. Et sit dolore quos qui voluptatem voluptas. Deleniti consequatur non cum inventore aut aut voluptatum.', '2022-12-15 07:53:53', '2022-12-15 07:53:53'),
(11, 'Lew Cole', 'lew-cole', 2, NULL, 'Nemo corporis voluptatum animi vero ex voluptas voluptatibus. Sit quis eligendi nihil voluptatem. Sed nam quibusdam error. Mollitia animi dolore omnis dicta odio a.', '2022-12-15 07:53:53', '2022-12-15 07:53:53'),
(12, 'Cecile O\'Connell', 'cecile-oconnell', 2, NULL, 'Ut minima quia soluta qui culpa recusandae unde quod. Rerum voluptatibus id ratione et. Neque possimus modi praesentium qui a.', '2022-12-15 07:53:53', '2022-12-15 07:53:53'),
(13, 'Agnes Padberg', 'agnes-padberg', 1, NULL, 'Commodi quam hic velit eveniet assumenda aspernatur. Nesciunt modi eum dolore id. Veniam fugit ut nostrum unde. Temporibus et ut necessitatibus.', '2022-12-15 07:53:53', '2022-12-15 07:53:53'),
(14, 'Mr. Rico Schaden III', 'mr-rico-schaden-iii', 1, NULL, 'Eos dolor sequi tempore. Rem voluptatem veritatis inventore dolore iste quia labore. Saepe asperiores doloremque recusandae eos est voluptas. Tenetur non sunt distinctio minima porro delectus.', '2022-12-15 07:53:53', '2022-12-15 07:53:53'),
(15, 'Claudia Herman DDS', 'claudia-herman-dds', 3, NULL, 'Qui voluptas et aut iure. Aliquid quidem quia recusandae modi adipisci officiis. Reiciendis commodi et voluptas commodi. Sunt deleniti eveniet fugiat blanditiis facilis.', '2022-12-15 07:53:53', '2022-12-15 07:53:53'),
(16, 'Reyes Harvey', 'reyes-harvey', 2, NULL, 'Rerum blanditiis atque cum sed consectetur. Sed facilis quod earum voluptas vel. Minima nihil quos nam dicta ratione.', '2022-12-15 07:53:53', '2022-12-15 07:53:53'),
(17, 'Sincere Carroll', 'sincere-carroll', 2, NULL, 'At provident ratione nulla similique aut quisquam. Et ipsum molestiae laborum voluptas similique quaerat atque rerum. Iste placeat fuga quia qui quia.', '2022-12-15 07:53:53', '2022-12-15 07:53:53'),
(18, 'Jaden Walter', 'jaden-walter', 3, NULL, 'Asperiores porro et provident. Eos totam provident ullam rerum in.', '2022-12-15 07:53:53', '2022-12-15 07:53:53'),
(19, 'Garfield Boehm', 'garfield-boehm', 2, NULL, 'Id et pariatur quia et. Eveniet aperiam assumenda alias accusantium dolores et. Molestiae dolor est facere iste sequi rerum suscipit nobis. Cum unde ex nisi unde.', '2022-12-15 07:53:53', '2022-12-15 07:53:53'),
(20, 'Harmony Kautzer', 'harmony-kautzer', 3, NULL, 'Ratione fuga consequatur eius consequatur voluptas vitae. Modi quia sed sit modi sit blanditiis ab. Adipisci non aut excepturi sit assumenda impedit doloribus.', '2022-12-15 07:53:53', '2022-12-15 07:53:53'),
(21, 'Test Blog', 'test-blog', 4, NULL, 'Test description 1', '2022-12-15 07:55:37', '2022-12-15 07:55:44'),
(22, 'Test Blog 2', 'test-blog-2', 5, NULL, 'Test blog 2 description 1', '2022-12-15 07:59:21', '2022-12-15 07:59:28');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `slug`, `name`, `created_at`, `updated_at`) VALUES
(1, 'technology-2', 'Technology', '2022-12-15 07:53:53', '2022-12-15 07:53:53'),
(2, 'food-2', 'Food', '2022-12-15 07:53:53', '2022-12-15 07:53:53'),
(3, 'traveling-2', 'Traveling', '2022-12-15 07:53:53', '2022-12-15 07:53:53'),
(4, 'test-1', 'Test Category', '2022-12-15 07:55:05', '2022-12-15 07:55:15'),
(5, 'test-category-2', 'Test Category 2.1', '2022-12-15 07:58:50', '2022-12-15 07:58:57');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_12_15_073535_create_category_table', 1),
(6, '2022_12_15_073558_create_blogs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$b0X.hWAq1cDY9hZjyD0oh.3okDZv0.ahRCuk8/ys/qTFKHGDVIqxK', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blogs_slug_unique` (`slug`) USING HASH;

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_slug_unique` (`slug`) USING HASH;

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
