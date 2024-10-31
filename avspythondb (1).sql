-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2024 at 05:24 PM
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
-- Database: `avspythondb`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_customuser'),
(22, 'Can change user', 6, 'change_customuser'),
(23, 'Can delete user', 6, 'delete_customuser'),
(24, 'Can view user', 6, 'view_customuser'),
(25, 'Can add add visitor', 7, 'add_addvisitor'),
(26, 'Can change add visitor', 7, 'change_addvisitor'),
(27, 'Can delete add visitor', 7, 'delete_addvisitor'),
(28, 'Can view add visitor', 7, 'view_addvisitor'),
(29, 'Can add visitor pass', 8, 'add_visitorpass'),
(30, 'Can change visitor pass', 8, 'change_visitorpass'),
(31, 'Can delete visitor pass', 8, 'delete_visitorpass'),
(32, 'Can view visitor pass', 8, 'view_visitorpass');

-- --------------------------------------------------------

--
-- Table structure for table `avsapp_addvisitor`
--

CREATE TABLE `avsapp_addvisitor` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `email` varchar(150) NOT NULL,
  `mobilenumber` varchar(15) NOT NULL,
  `address` varchar(250) NOT NULL,
  `whomtomeet` varchar(250) NOT NULL,
  `reasontomeet` varchar(250) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` date NOT NULL,
  `remark` varchar(250) NOT NULL,
  `status` varchar(200) NOT NULL,
  `apartmentno` varchar(150) NOT NULL,
  `category` varchar(150) NOT NULL,
  `floororwings` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `avsapp_addvisitor`
--

INSERT INTO `avsapp_addvisitor` (`id`, `fullname`, `email`, `mobilenumber`, `address`, `whomtomeet`, `reasontomeet`, `created_at`, `updated_at`, `remark`, `status`, `apartmentno`, `category`, `floororwings`) VALUES
(1, 'Rakesh Sharma', 'rakesh@gmail.com', '4654654654', 'O-908, GHU, Block-7', 'Mr. Gagan', 'Personal', '2024-03-18 12:05:20.980898', '2024-03-18', 'Out', 'Out', 'Q-901', 'Guest', 'Block-Q  7 floor'),
(3, 'John Macob', 'john@gmail.com', '7987987897', 'J-898, J Block Sai Apartment New Delhi', 'Janki Das', 'Personal ', '2024-03-20 05:37:35.289971', '2024-03-20', 'Out', 'Out', 'O-910', 'Guest', '9 floor'),
(4, 'AMit kumar', 'amikrt12@gmail.com', '4563214563', 'A 123 Xyz Apartment New Delhi 110092', 'Rahul', 'Personal', '2024-03-22 15:20:45.712598', '2024-03-22', 'out ', 'Out', '803', 'Guest', 'V ');

-- --------------------------------------------------------

--
-- Table structure for table `avsapp_customuser`
--

CREATE TABLE `avsapp_customuser` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `profile_pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `avsapp_customuser`
--

INSERT INTO `avsapp_customuser` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `profile_pic`) VALUES
(1, 'pbkdf2_sha256$390000$B1zeXafT7dmOukUEZ8GNFY$sTx6pdpZ5tS8Qj5XR19Qb8weT6vXbYxqbmAEhu4xuD4=', '2024-03-23 15:19:28.832912', 1, 'admin', 'Test', 'Sample', 'admin@gmail.com', 1, 1, '2024-03-18 06:54:40.313629', 'media/profile_pic/team1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `avsapp_customuser_groups`
--

CREATE TABLE `avsapp_customuser_groups` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avsapp_customuser_user_permissions`
--

CREATE TABLE `avsapp_customuser_user_permissions` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avsapp_visitorpass`
--

CREATE TABLE `avsapp_visitorpass` (
  `id` bigint(20) NOT NULL,
  `category` varchar(150) NOT NULL,
  `visname` varchar(200) NOT NULL,
  `mobilenumber` varchar(150) NOT NULL,
  `address` varchar(15) NOT NULL,
  `apartment` varchar(150) NOT NULL,
  `floor` varchar(150) NOT NULL,
  `inputdate` varchar(250) NOT NULL,
  `todate` varchar(250) NOT NULL,
  `passdescription` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `avsapp_visitorpass`
--

INSERT INTO `avsapp_visitorpass` (`id`, `category`, `visname`, `mobilenumber`, `address`, `apartment`, `floor`, `inputdate`, `todate`, `passdescription`, `created_at`, `updated_at`) VALUES
(1, 'Maid', 'Renuka Shah', '1234567899', 'Kamal Nagar Gha', '708', '7', '2024-03-19', '2024-03-25', 'It is maid pass valid for one week only ', '2024-03-18 13:09:05.929122', '2024-03-18'),
(2, 'Cook', 'Gyatri Devi', '7894525669', 'B 5-50, Shonapu', 'H-991', '9', '2024-03-19', '2024-04-19', 'This pass valid for one month only.', '2024-03-19 04:51:16.939126', '2024-03-18'),
(4, 'Cook', 'Harish', '5567891236', 'K-890 Vasant vi', 'K-901', '9', '2024-03-19', '2024-03-26', 'This pass valid for one week only.', '2024-03-19 04:54:37.158425', '2024-03-18'),
(6, 'Cook', 'Meena', '6363635241', 'Hno 181/1 ABC V', 'A 123', '1', '2024-04-01', '2024-09-30', 'Cook', '2024-03-22 15:22:04.507271', '2024-03-22');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(7, 'avsapp', 'addvisitor'),
(6, 'avsapp', 'customuser'),
(8, 'avsapp', 'visitorpass'),
(4, 'contenttypes', 'contenttype'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-03-18 06:42:07.562088'),
(2, 'contenttypes', '0002_remove_content_type_name', '2024-03-18 06:42:07.618461'),
(3, 'auth', '0001_initial', '2024-03-18 06:42:07.963814'),
(4, 'auth', '0002_alter_permission_name_max_length', '2024-03-18 06:42:08.012800'),
(5, 'auth', '0003_alter_user_email_max_length', '2024-03-18 06:42:08.024766'),
(6, 'auth', '0004_alter_user_username_opts', '2024-03-18 06:42:08.032746'),
(7, 'auth', '0005_alter_user_last_login_null', '2024-03-18 06:42:08.042202'),
(8, 'auth', '0006_require_contenttypes_0002', '2024-03-18 06:42:08.046502'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2024-03-18 06:42:08.055478'),
(10, 'auth', '0008_alter_user_username_max_length', '2024-03-18 06:42:08.064227'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2024-03-18 06:42:08.074143'),
(12, 'auth', '0010_alter_group_name_max_length', '2024-03-18 06:42:08.086776'),
(13, 'auth', '0011_update_proxy_permissions', '2024-03-18 06:42:08.098251'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2024-03-18 06:42:08.109691'),
(15, 'avsapp', '0001_initial', '2024-03-18 06:42:08.371337'),
(16, 'admin', '0001_initial', '2024-03-18 06:42:08.468488'),
(17, 'admin', '0002_logentry_remove_auto_add', '2024-03-18 06:42:08.481453'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2024-03-18 06:42:08.494271'),
(19, 'avsapp', '0002_addvisitor', '2024-03-18 06:42:08.592654'),
(20, 'avsapp', '0003_remove_addvisitor_admin_and_more', '2024-03-18 06:42:08.858031'),
(21, 'avsapp', '0004_addvisitor_remark', '2024-03-18 06:42:08.870119'),
(22, 'avsapp', '0005_remove_addvisitor_remark', '2024-03-18 06:42:08.881337'),
(23, 'avsapp', '0006_addvisitor_remark', '2024-03-18 06:42:08.895105'),
(24, 'avsapp', '0007_alter_addvisitor_remark', '2024-03-18 06:42:08.899863'),
(25, 'avsapp', '0008_alter_addvisitor_remark', '2024-03-18 06:42:08.906277'),
(26, 'avsapp', '0009_addvisitor_status', '2024-03-18 06:42:08.921599'),
(27, 'avsapp', '0010_alter_addvisitor_status', '2024-03-18 06:42:09.001002'),
(28, 'avsapp', '0011_alter_addvisitor_mobilenumber', '2024-03-18 06:42:09.034911'),
(29, 'sessions', '0001_initial', '2024-03-18 06:42:09.067254'),
(30, 'avsapp', '0012_remove_addvisitor_department_addvisitor_apartmentno_and_more', '2024-03-18 12:00:04.006227'),
(31, 'avsapp', '0013_visitorpass', '2024-03-18 12:59:57.425831');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1lbr9u525gpnj3y3ukhoevb0pxzehowk', '.eJxVjEEOwiAURO_C2pBC-QVcuvcMZICvVE2blHZlvLs06UJ3kzdv5i0CtrWErfISxizOQonTL4tIT572Ij8w3WeZ5mldxih3RR5tldc58-tyuH8HBbW0NTIpBeMc8Q0UEdnrFrpEA2kPB4azBr5x0-kha0u-Z8sUE6j3WXy-_K04aw:1ro39c:M4mmj2jedd6pVIStVTbDVfoowlIV9wucypDqWOtneVA', '2024-04-06 15:19:28.836560');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `avsapp_addvisitor`
--
ALTER TABLE `avsapp_addvisitor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `avsapp_customuser`
--
ALTER TABLE `avsapp_customuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `avsapp_customuser_groups`
--
ALTER TABLE `avsapp_customuser_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `avsapp_customuser_groups_customuser_id_group_id_82b1ce18_uniq` (`customuser_id`,`group_id`),
  ADD KEY `avsapp_customuser_groups_group_id_df86a43c_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `avsapp_customuser_user_permissions`
--
ALTER TABLE `avsapp_customuser_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `avsapp_customuser_user_p_customuser_id_permission_952162ac_uniq` (`customuser_id`,`permission_id`),
  ADD KEY `avsapp_customuser_us_permission_id_f8372dfc_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `avsapp_visitorpass`
--
ALTER TABLE `avsapp_visitorpass`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_avsapp_customuser_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `avsapp_addvisitor`
--
ALTER TABLE `avsapp_addvisitor`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `avsapp_customuser`
--
ALTER TABLE `avsapp_customuser`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `avsapp_customuser_groups`
--
ALTER TABLE `avsapp_customuser_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `avsapp_customuser_user_permissions`
--
ALTER TABLE `avsapp_customuser_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `avsapp_visitorpass`
--
ALTER TABLE `avsapp_visitorpass`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `avsapp_customuser_groups`
--
ALTER TABLE `avsapp_customuser_groups`
  ADD CONSTRAINT `avsapp_customuser_gr_customuser_id_e5c9a530_fk_avsapp_cu` FOREIGN KEY (`customuser_id`) REFERENCES `avsapp_customuser` (`id`),
  ADD CONSTRAINT `avsapp_customuser_groups_group_id_df86a43c_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `avsapp_customuser_user_permissions`
--
ALTER TABLE `avsapp_customuser_user_permissions`
  ADD CONSTRAINT `avsapp_customuser_us_customuser_id_70456b9e_fk_avsapp_cu` FOREIGN KEY (`customuser_id`) REFERENCES `avsapp_customuser` (`id`),
  ADD CONSTRAINT `avsapp_customuser_us_permission_id_f8372dfc_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_avsapp_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `avsapp_customuser` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
