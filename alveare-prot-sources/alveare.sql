-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2018 at 02:13 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alveare`
--

-- --------------------------------------------------------

--
-- Table structure for table `batches`
--

CREATE TABLE `batches` (
  `id` int(10) UNSIGNED NOT NULL,
  `batch_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `batches`
--

INSERT INTO `batches` (`id`, `batch_name`, `created_at`, `updated_at`) VALUES
(1, 'January - Morning - 2018', NULL, NULL),
(2, 'January - Evening - 2018', NULL, NULL),
(3, 'February - Morning - 2018', NULL, NULL),
(4, 'February - Evening - 2018', NULL, NULL),
(5, 'March - Morning - 2018', NULL, NULL),
(6, 'March - Evening - 2018', NULL, NULL),
(7, 'April - Morning - 2018', NULL, NULL),
(8, 'April - Evening - 2018', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `genders`
--

CREATE TABLE `genders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genders`
--

INSERT INTO `genders` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Male', NULL, NULL),
(2, 'Female', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` int(10) UNSIGNED NOT NULL,
  `grade` decimal(18,2) NOT NULL,
  `instructor_id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Student', NULL, NULL),
(2, 'Instructor', NULL, NULL),
(3, 'Manager', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '2014_10_12_100000_create_password_resets_table', 1),
(10, '2018_11_23_002309_create_projects_table', 7),
(11, '2018_11_23_002319_create_batches_table', 1),
(12, '2018_11_23_002336_create_levels_table', 1),
(13, '2018_11_23_002343_create_notices_table', 1),
(14, '2018_11_23_002350_create_grades_table', 1),
(19, '2018_11_23_020015_create_genders_table', 4),
(20, '2018_11_23_020635_create_batches_table', 4),
(21, '2018_11_29_013736_create_project_submits_table', 5),
(23, '2018_11_29_013550_create_project_statuses_table', 6),
(24, '2018_11_30_174338_create_project_users_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `instructor_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `title`, `content`, `instructor_id`, `created_at`, `updated_at`) VALUES
(1, 'Announcement 1', 'announcement or notice??', 9, '2018-12-01 16:00:00', '2018-12-01 16:00:00'),
(2, 'This is announcement 2', 'This is announcement 2', 9, '2018-12-02 00:16:34', '2018-12-02 00:16:34'),
(3, 'announcement 3 pips', 'ths is notice 3 ', 9, '2018-12-02 00:17:11', '2018-12-02 00:17:11'),
(4, 'post 4 from ins13', 'my announcement', 13, '2018-12-02 01:03:44', '2018-12-02 01:03:44');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('instructor@email.com', '$2y$10$9HsWIniwzoHg1k2wBCrx8uUC34jqaccyR.frhbGY1yOTEav.hkZUW', '2018-11-29 00:10:27');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instructor_id` int(10) UNSIGNED NOT NULL,
  `project_req` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deadline` date NOT NULL,
  `status_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `batch_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `project_name`, `instructor_id`, `project_req`, `deadline`, `status_id`, `batch_id`, `created_at`, `updated_at`) VALUES
(1, 'Project 1.5', 9, 'Requirements: Some requirements', '2018-09-30', 2, 6, '2018-11-28 00:36:25', '2018-12-01 16:36:04'),
(2, 'Project 2', 9, 'This requires a lot of stuff', '2018-11-24', 2, 6, '2018-11-28 19:01:03', '2018-12-01 16:43:51'),
(3, 'project title 0.5', 9, 'req', '2018-11-29', 1, 2, '2018-11-28 19:09:46', '2018-12-01 22:24:57'),
(4, 'Project 2', 9, 'Must have this and that.', '2018-11-29', 1, 4, '2018-11-28 19:11:43', '2018-11-28 19:11:43'),
(5, 'asdasd', 9, 'asdasd', '2018-11-23', 2, 1, '2018-11-28 19:34:43', '2018-12-01 16:39:29'),
(6, 'project 3', 9, 'this i project 3', '2018-11-30', 1, 2, '2018-11-28 19:36:43', '2018-11-28 19:36:43'),
(7, 'aweaweawe', 13, 'adweaweawea', '2018-11-14', 1, 1, '2018-11-29 19:13:59', '2018-11-29 19:13:59'),
(8, 'qweqwwzscz sdfzfsz', 13, 'adwewwwwqq', '2018-11-09', 1, 5, '2018-11-29 19:15:27', '2018-11-29 19:15:27'),
(9, 'aweaweqwe', 13, 'adwewqzbxc', '2018-11-24', 1, 5, '2018-11-29 19:16:01', '2018-11-29 19:16:01'),
(10, 'Project 4', 13, 'this must include this that', '2018-12-04', 1, 1, '2018-11-29 19:16:36', '2018-11-29 19:16:36'),
(11, 'project 5', 13, 'should have this that', '2018-12-01', 1, 7, '2018-11-29 19:17:26', '2018-11-29 19:17:26'),
(12, 'wqeweqweqweqeqwe', 13, 'awrqwrqw', '2018-11-11', 1, 5, '2018-11-29 19:18:33', '2018-11-29 19:18:33'),
(13, 'qewqweqwdsaczsd', 13, 'awqqgfqesad', '2018-11-23', 1, 4, '2018-11-29 19:19:55', '2018-11-29 19:19:55'),
(14, 'aweqwe', 13, 'dqweq asd azxc', '2018-11-17', 1, 6, '2018-11-29 19:21:34', '2018-11-29 19:21:34'),
(15, 'Project 5', 9, 'This is project test number 5', '2018-11-09', 1, 6, '2018-12-01 22:24:20', '2018-12-01 22:24:20');

-- --------------------------------------------------------

--
-- Table structure for table `project_statuses`
--

CREATE TABLE `project_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_statuses`
--

INSERT INTO `project_statuses` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Ongoing', '2018-11-28 18:04:59', '2018-11-28 18:04:59'),
(2, 'Closed', '2018-11-28 18:03:40', '2018-11-28 18:08:06'),
(3, 'Received', '2018-11-28 18:06:07', '2018-11-28 18:06:07'),
(4, 'Pending', '2018-11-28 18:06:56', '2018-11-28 18:06:56'),
(5, 'Approved', '2018-11-28 18:07:43', '2018-11-28 18:07:43');

-- --------------------------------------------------------

--
-- Table structure for table `project_submits`
--

CREATE TABLE `project_submits` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_submits`
--

INSERT INTO `project_submits` (`id`, `project_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 5, 10, '2018-11-30 01:57:32', '2018-11-30 01:57:32'),
(6, 7, 10, '2018-11-30 03:05:18', '2018-11-30 03:05:18');

-- --------------------------------------------------------

--
-- Table structure for table `project_users`
--

CREATE TABLE `project_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `status_id` int(10) UNSIGNED NOT NULL DEFAULT '4',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_users`
--

INSERT INTO `project_users` (`id`, `project_id`, `user_id`, `status_id`, `created_at`, `updated_at`) VALUES
(20, 7, 10, 4, '2018-11-30 12:32:00', '2018-11-30 12:32:00'),
(24, 10, 10, 4, '2018-11-30 12:37:27', '2018-11-30 12:37:27'),
(26, 5, 10, 4, '2018-11-30 12:38:21', '2018-11-30 12:38:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middlename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `contact` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_id` int(10) UNSIGNED NOT NULL,
  `batch_id` int(10) UNSIGNED NOT NULL,
  `senior_id` int(10) UNSIGNED NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `dob`, `contact`, `email`, `level_id`, `batch_id`, `senior_id`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(6, 'Julian Earvin King', 'Singson', 'Capagcuan', '1992-10-08', '2147483647', 'manager@email.com', 3, 1, 0, '$2y$10$U3VriqorSvozFFIEVyFu.OUGJFI9mDnYnjJm.93T/0u5jnnpiFvWW', 'KDSxqwFhWjeXENrUpHYMtU5ajgxIGAa9Bhvvwx9LyFsuiQu1mJ3t8BDrgN5A', NULL, NULL),
(9, 'dennice gabriellie', 'singson', 'capagcuan', '1994-10-08', '2147483647', 'instructor@email.com', 2, 1, 6, '$2y$10$U3VriqorSvozFFIEVyFu.OUGJFI9mDnYnjJm.93T/0u5jnnpiFvWW', 'bdr2UircWWEpmC0yDlsSwIIessHG44UH9lIXfeYjDCflkk2MgKzTJmH1uEKR', '2018-11-22 12:05:57', '2018-11-22 12:05:57'),
(10, 'gabriel lance', 'singson', 'capagcuan', '2000-12-24', '2147483647', 'student@email.com', 1, 1, 9, '$2y$10$U3VriqorSvozFFIEVyFu.OUGJFI9mDnYnjJm.93T/0u5jnnpiFvWW', 'x7EFpFAXEhZFQSRFEcwZWNHNkN0mCyOsK84TlunMdLrwXxY3wIBCCunaYzYJ', '2018-11-22 15:31:31', '2018-11-22 15:31:31'),
(11, 'bianca alexis', 'singson', 'capagcuan', '2018-11-17', '2147483647', 'student3@email.com', 1, 1, 13, '$2y$10$U3VriqorSvozFFIEVyFu.OUGJFI9mDnYnjJm.93T/0u5jnnpiFvWW', 'E2DTYVcZXps8ojQnp7cMWBlola5QcHxx3lFXrF12gJqtO0A7dabgyKavx4nY', '2018-11-26 09:37:42', '2018-11-26 09:37:42'),
(12, 'Earvin', 'Singson', 'Capagcuan', '2018-11-16', '09123456789', 'student2@email.com', 1, 4, 6, '$2y$10$C0lnOtthgj02I8xf48KNzOOETeebYl5JbcyjsQCK8e.SGbebMYYSS', 'OoB0ndkhv9tlIYoznCbLAS6XZx2y2tAo2BF2sLUu7PyUiYkeHXU2HKIRqata', '2018-11-29 18:05:44', '2018-11-29 18:05:44'),
(13, 'king', 'singson', 'Capagcuan', '2018-12-11', '09124567892', 'instructor3@email.com', 2, 1, 6, '$2y$10$dKC1gxNGeAeJqtvq26CVKu57L1NTaw5nWfiqd4jm5xa/h1uZkymt2', 'NFSZ7awIg5WYU4wlEyVDcJSANx09bB5cKhKLvtuILkPz2TlW49xkmeLkaCuD', '2018-11-29 18:41:44', '2018-11-29 18:41:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `batches`
--
ALTER TABLE `batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `grades_instructor_id_foreign` (`instructor_id`),
  ADD KEY `grades_student_id_foreign` (`student_id`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notices_instructor_id_foreign` (`instructor_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_instructor_id_foreign` (`instructor_id`),
  ADD KEY `status` (`status_id`),
  ADD KEY `batch_id` (`batch_id`);

--
-- Indexes for table `project_statuses`
--
ALTER TABLE `project_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_submits`
--
ALTER TABLE `project_submits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_submits_project_id_foreign` (`project_id`),
  ADD KEY `project_submits_user_id_foreign` (`user_id`);

--
-- Indexes for table `project_users`
--
ALTER TABLE `project_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_users_project_id_foreign` (`project_id`),
  ADD KEY `project_users_user_id_foreign` (`user_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `level_id` (`level_id`,`batch_id`),
  ADD KEY `users_ibfk_2` (`batch_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `batches`
--
ALTER TABLE `batches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `genders`
--
ALTER TABLE `genders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `project_statuses`
--
ALTER TABLE `project_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `project_submits`
--
ALTER TABLE `project_submits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `project_users`
--
ALTER TABLE `project_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `grades`
--
ALTER TABLE `grades`
  ADD CONSTRAINT `grades_instructor_id_foreign` FOREIGN KEY (`instructor_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `grades_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `notices`
--
ALTER TABLE `notices`
  ADD CONSTRAINT `notices_ibfk_1` FOREIGN KEY (`instructor_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`status_id`) REFERENCES `project_statuses` (`id`),
  ADD CONSTRAINT `projects_ibfk_2` FOREIGN KEY (`batch_id`) REFERENCES `batches` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `projects_instructor_id_foreign` FOREIGN KEY (`instructor_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `project_submits`
--
ALTER TABLE `project_submits`
  ADD CONSTRAINT `project_submits_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `project_submits_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `project_users`
--
ALTER TABLE `project_users`
  ADD CONSTRAINT `project_users_ibfk_1` FOREIGN KEY (`status_id`) REFERENCES `project_statuses` (`id`),
  ADD CONSTRAINT `project_users_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `project_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`batch_id`) REFERENCES `batches` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
