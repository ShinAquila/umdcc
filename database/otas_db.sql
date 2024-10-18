-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2024 at 01:23 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `otas_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `archive_list`
--

CREATE TABLE `archive_list` (
  `id` int(30) NOT NULL,
  `archive_code` varchar(100) NOT NULL,
  `curriculum_id` int(30) NOT NULL,
  `year` year(4) NOT NULL,
  `title` text NOT NULL,
  `desc` text NOT NULL,
  `org` text NOT NULL,
  `banner_path` text NOT NULL,
  `document_path` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `student_id` int(30) DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `archive_list`
--

INSERT INTO `archive_list` (`id`, `archive_code`, `curriculum_id`, `year`, `title`, `desc`, `org`, `banner_path`, `document_path`, `status`, `student_id`, `date_created`, `date_updated`) VALUES
(6, '2024100001', 1, 2024, 'Coffee Day', '&lt;p&gt;An enhancement program for IT students&lt;/p&gt;', '&lt;p&gt;Programmers\' Guild of Information Technology&lt;/p&gt;', 'uploads/banners/archive-6.png?v=1729005079', 'uploads/pdf/archive-6.pdf?v=1729005079', 1, 4, '2024-10-15 23:11:18', '2024-10-15 23:12:23'),
(7, '2024100002', 7, 2024, 'Accounting Day', '&lt;p&gt;accounting day&lt;/p&gt;', '&lt;p&gt;accounting&lt;/p&gt;', 'uploads/banners/archive-7.png?v=1729006091', 'uploads/pdf/archive-7.pdf?v=1729006091', 1, 5, '2024-10-15 23:28:10', '2024-10-15 23:28:36'),
(8, '2024100003', 2, 2024, 'CPE Day', '&lt;p&gt;cpe day&lt;/p&gt;', '&lt;p&gt;ICPEP.SE&lt;/p&gt;', 'uploads/banners/archive-8.png?v=1729006213', 'uploads/pdf/archive-8.pdf?v=1729006221', 1, 6, '2024-10-15 23:30:12', '2024-10-15 23:30:49'),
(9, '2024100004', 4, 2024, 'Pol Sci Day', '&lt;p&gt;pol sci day&lt;/p&gt;', '&lt;p&gt;pol sci&lt;/p&gt;', 'uploads/banners/archive-9.png?v=1729006565', 'uploads/pdf/archive-9.pdf?v=1729006565', 1, 7, '2024-10-15 23:36:04', '2024-10-15 23:42:14'),
(10, '2024100005', 5, 2024, 'Business Administration Day', '&lt;p&gt;bus ad day&lt;/p&gt;', '&lt;p&gt;bus ad day&lt;/p&gt;', 'uploads/banners/archive-10.png?v=1729006650', 'uploads/pdf/archive-10.pdf?v=1729006650', 1, 8, '2024-10-15 23:37:29', '2024-10-15 23:42:17'),
(11, '2024100006', 6, 2024, 'Police Day', '&lt;p&gt;police&lt;/p&gt;', '&lt;p&gt;police&lt;/p&gt;', 'uploads/banners/archive-11.png?v=1729006725', 'uploads/pdf/archive-11.pdf?v=1729006725', 1, 9, '2024-10-15 23:38:44', '2024-10-15 23:42:19'),
(12, '2024100007', 3, 2024, 'Teacher\'s Day (2024)', '&lt;p&gt;teacher\'s day&lt;/p&gt;', '&lt;p&gt;DTE&lt;/p&gt;', 'uploads/banners/archive-12.png?v=1729006787', 'uploads/pdf/archive-12.pdf?v=1729006787', 1, 10, '2024-10-15 23:39:46', '2024-10-15 23:42:22'),
(13, '2024100008', 4, 2024, 'Science Day', '&lt;p&gt;science&lt;/p&gt;', '&lt;p&gt;science&lt;/p&gt;', 'uploads/banners/archive-13.png?v=1729006892', 'uploads/pdf/archive-13.pdf?v=1729006893', 1, 11, '2024-10-15 23:41:31', '2024-10-15 23:42:24');

-- --------------------------------------------------------

--
-- Table structure for table `curriculum_list`
--

CREATE TABLE `curriculum_list` (
  `id` int(30) NOT NULL,
  `department_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `curriculum_list`
--

INSERT INTO `curriculum_list` (`id`, `department_id`, `name`, `description`, `status`, `date_created`, `date_updated`) VALUES
(1, 1, 'BSIT', 'Bachelor of Science in Information Technology', 1, '2021-12-07 10:10:20', '2024-10-15 21:53:43'),
(2, 1, 'BSCPE', 'Bachelor of Science in Computer Engineering', 1, '2021-12-07 10:10:56', '2024-10-15 21:54:13'),
(3, 2, 'BEED', 'Bachelor of Elementary Education', 1, '2021-12-07 10:12:50', '2024-10-15 22:00:08'),
(4, 3, 'BAPS', 'Bachelor of Arts in Political Science', 1, '2021-12-07 10:13:10', '2024-10-15 22:00:22'),
(5, 4, 'BSBA', 'Bachelor of Science in Business Administration', 1, '2021-12-07 10:14:05', '2024-10-15 22:00:37'),
(6, 5, 'BSIC', 'Bachelor of Science in Criminology', 1, '2021-12-07 10:14:26', '2024-10-15 22:00:48'),
(7, 6, 'BSMA', 'Bachelor of Science in Management Accounting', 1, '2021-12-07 10:15:28', '2024-10-15 22:01:04');

-- --------------------------------------------------------

--
-- Table structure for table `department_list`
--

CREATE TABLE `department_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department_list`
--

INSERT INTO `department_list` (`id`, `name`, `description`, `status`, `date_created`, `date_updated`) VALUES
(1, 'Department of Technical Programs', 'Offers vocational and technical courses designed to equip students with practical skills for various trades and industries.', 1, '2021-12-07 09:28:16', '2024-10-15 21:45:27'),
(2, 'Department of Teacher Education', 'Focuses on preparing future educators by providing comprehensive training in teaching methodologies ad educational theories.', 1, '2021-12-07 09:28:33', '2024-10-15 21:45:52'),
(3, 'Department of Arts and Sciences', 'Provides a wide range of programs in liberal arts and sciences, fostering critical thinking, creativity, and a broad understanding of various academic fields.', 1, '2021-12-07 09:34:11', '2024-10-15 21:46:31'),
(4, 'Department of Business Administration', 'Offers programs aimed at developing business management skills, entrepreneurship, and leadership, preparing students for roles in the corporate world.', 1, '2021-12-07 09:34:55', '2024-10-15 21:47:09'),
(5, 'Department of Criminal Justice Education', 'Prepares students for careers in law enforcement, security, and criminology, with a focus on justice, crime prevention, and law enforcement procedures.', 1, '2021-12-07 09:35:19', '2024-10-15 21:47:54'),
(6, 'Department of Accounting Education', 'Specializes in training students in financial accounting, auditing, and financial management, equipping them for careers in finance and accountancy.', 1, '2021-12-07 09:37:04', '2024-10-15 21:48:27');

-- --------------------------------------------------------

--
-- Table structure for table `student_list`
--

CREATE TABLE `student_list` (
  `id` int(30) NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text NOT NULL,
  `lastname` text NOT NULL,
  `department_id` int(30) NOT NULL,
  `curriculum_id` int(30) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `gender` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `avatar` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_list`
--

INSERT INTO `student_list` (`id`, `firstname`, `middlename`, `lastname`, `department_id`, `curriculum_id`, `email`, `password`, `gender`, `status`, `avatar`, `date_created`, `date_updated`) VALUES
(4, 'Vincent Ace', '', 'Rivera', 1, 1, 'augusto08rivera12@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Male', 1, 'uploads/student-4.png?v=1729001463', '2024-10-15 22:05:05', '2024-10-15 22:11:03'),
(5, 'Eric', '', 'Gonzales', 6, 7, 'ericgonzales@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Male', 1, 'uploads/student-5.png?v=1729006412', '2024-10-15 22:17:58', '2024-10-15 23:33:32'),
(6, 'Rita', '', 'Domingo', 1, 2, 'ritadomingo@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Female', 1, 'uploads/student-6.png?v=1729006329', '2024-10-15 22:18:47', '2024-10-15 23:32:09'),
(7, 'Teressa', '', 'Ochua', 3, 4, 'teressaochua@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Female', 1, 'uploads/student-7.png?v=1729006588', '2024-10-15 22:19:39', '2024-10-15 23:36:28'),
(8, 'Yzma', '', 'Kuzco', 4, 5, 'yzmakuzco@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Female', 1, 'uploads/student-8.png?v=1729006674', '2024-10-15 22:20:35', '2024-10-15 23:37:54'),
(9, 'Josuiji', '', 'Shinri', 5, 6, 'josuijishinri@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Male', 1, 'uploads/student-9.png?v=1729006745', '2024-10-15 22:21:02', '2024-10-15 23:39:05'),
(10, 'Shu', '', 'Yamino', 2, 3, 'shuyamino@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Male', 1, 'uploads/student-10.png?v=1729006832', '2024-10-15 22:21:35', '2024-10-15 23:40:32'),
(11, 'Gawr', '', 'Gura', 3, 4, 'gawrgura@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Female', 1, 'uploads/student-11.png?v=1729006915', '2024-10-15 22:22:12', '2024-10-15 23:41:55');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'UM Digos College Chronicles'),
(6, 'short_name', 'UMDC Chronicles'),
(11, 'logo', 'uploads/logo-1638840281.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover-1638840281.png'),
(15, 'content', 'Array'),
(16, 'email', 'info@university101.com'),
(17, 'contact', '09854698789 / 78945632'),
(18, 'from_time', '11:00'),
(19, 'to_time', '21:30'),
(20, 'address', 'Under the Tree, Here Street, There City, Anywhere 1014');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '0=not verified, 1 = verified',
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `status`, `date_added`, `date_updated`) VALUES
(2, 'shin', NULL, 'shin', 'shin', '827ccb0eea8a706c4c34a16891f84e7b', 'uploads/avatar-2.png?v=1729034608', NULL, 2, 1, '2021-12-13 14:38:02', '2024-10-16 07:23:28'),
(3, 'Admin', NULL, 'Admin', 'Admin', '827ccb0eea8a706c4c34a16891f84e7b', 'uploads/avatar-3.png?v=1729001271', NULL, 1, 1, '2024-10-15 22:07:51', '2024-10-15 22:08:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `archive_list`
--
ALTER TABLE `archive_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `curriculum_id` (`curriculum_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `curriculum_list`
--
ALTER TABLE `curriculum_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `department_list`
--
ALTER TABLE `department_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_list`
--
ALTER TABLE `student_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`) USING HASH,
  ADD KEY `department_id` (`department_id`),
  ADD KEY `curriculum_id` (`curriculum_id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `archive_list`
--
ALTER TABLE `archive_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `curriculum_list`
--
ALTER TABLE `curriculum_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `department_list`
--
ALTER TABLE `department_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student_list`
--
ALTER TABLE `student_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `archive_list`
--
ALTER TABLE `archive_list`
  ADD CONSTRAINT `archive_list_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_list` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `curriculum_list`
--
ALTER TABLE `curriculum_list`
  ADD CONSTRAINT `curriculum_list_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_list`
--
ALTER TABLE `student_list`
  ADD CONSTRAINT `student_list_ibfk_1` FOREIGN KEY (`curriculum_id`) REFERENCES `curriculum_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_list_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `department_list` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
