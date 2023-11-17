-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2023 at 06:10 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `footwear`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_jsy3b_foot`
--

CREATE TABLE `app_jsy3b_foot` (
  `id` bigint(20) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_image` varchar(255) NOT NULL,
  `p_price` int(11) NOT NULL,
  `p_descripe` longtext NOT NULL,
  `p_discount` tinyint(1) NOT NULL,
  `p_end_discount` date DEFAULT NULL,
  `p_special_price` varchar(255) NOT NULL,
  `p_type` varchar(10) DEFAULT NULL,
  `p_stock` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app_jsy3b_foot`
--

INSERT INTO `app_jsy3b_foot` (`id`, `p_name`, `p_image`, `p_price`, `p_descripe`, `p_discount`, `p_end_discount`, `p_special_price`, `p_type`, `p_stock`) VALUES
(1, 'NIKE DUNK LOW PANDA', 's1', 4200, 'Dunk Low “Panda” นั้นไม่มีอะไรแปลกใหม่อย่างแน่นอน แม้ว่าความนิยมของมันจะบ่งบอกเป็นอย่างอื่นก็ตาม และเนื่องจากส่วนหนึ่งมาจากการแพร่หลายของทั้งคู่ จึงเชื่อมโยงการปิดกั้นสีดำบนพื้นขาวกับสัตว์กินไผ่อย่างรวดเร็วที่สุด แน่นอนว่าจะต้องทำการเปรียบเทียบกับ Air Jordan 1 Low ที่กำลังจะมาถึงนี้ ซึ่งสีนี้อาจทำให้เข้าใจผิดได้ง่ายว่าเป็นรองเท้าคู่ที่ออกแบบโดย Peter Moore', 0, NULL, '', 'unisex', '20'),
(2, 'NIKE AIR JORDAN LOW TRAVIS SCOTT', 's2', 40000, 'Travis scott', 0, NULL, '', 'male', '1'),
(3, 'NIKE LeBron XX Christmas EP', 's4', 7500, 'LeBron James ร้อนแรงเสมอในวันคริสต์มาส ไม่ต่างไปจากซานต้าที่ปีนลงไปในปล่องไฟ รุ่นพิเศษนี้มาในดีไซน์วันคริสต์มาสที่ดีที่สุดในอดีตของ LeBron และมาพร้อมของขวัญที่คุ้มค่าแก่การรอคอยที่พื้นรองเท้าชั้นใน', 0, NULL, '', 'male', '2'),
(4, 'Nike Dunk High 85', 's7', 4079, 'ย้อนอดีตไปกับรองเท้ารุ่นเรโทรยอดนิยมคู่นี้ โดยคู่นี้เฉลิมฉลองให้กับรุ่นออริจินัลปี 1985 พร้อมนำรูปทรงที่เป็นจุดเริ่มต้นของการปฏิวัตินอกคอร์ทกลับมาอีกครั้ง รายละเอียดสุดคลาสสิกและเสน่ห์ของรองเท้าบาสเก็ตแบบย้อนยุคช่วยให้คุณถ่ายทอดสไตล์วินเทจสู่ท้องถนนอีกครั้ง อีกทั้งส่วนหุ้มข้อสูงบุนวมยังให้คุณอวดสไตล์พร้อมความสบายได้ทุกที่', 0, NULL, '', 'Female', '3'),
(5, 'Nike Blazer Low ’77 Jumbo', 's6', 2879, 'คนอื่นอาจกล่าวว่า \"ถ้าดีอยู่แล้วก็ไม่ต้องแก้\" แต่เราพูดว่า \"ต้องทำให้สมบูรณ์แบบ\" ซุปเปอร์สตาร์แห่งสตรีทแวร์คู่นี้ปรับโฉมใหม่ด้วยรายละเอียดขนาดจัมโบ้ Nike Blazer Low \'77 Jumbo มาพร้อมลุคโอลด์สคูลแบบที่คุณชื่นชอบ โดดเด่นด้วยดีไซน์ Swoosh ขนาดโอเวอร์ไซส์ เชือกรองเท้าที่กว้างเป็นพิเศษ และงานเย็บที่หนากว่าเดิม', 0, NULL, '', 'Female', '3');

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
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add foot', 7, 'add_foot'),
(26, 'Can change foot', 7, 'change_foot'),
(27, 'Can delete foot', 7, 'delete_foot'),
(28, 'Can view foot', 7, 'view_foot'),
(29, 'Can add user', 8, 'add_user'),
(30, 'Can change user', 8, 'change_user'),
(31, 'Can delete user', 8, 'delete_user'),
(32, 'Can view user', 8, 'view_user'),
(33, 'Can add log', 9, 'add_log'),
(34, 'Can change log', 9, 'change_log'),
(35, 'Can delete log', 9, 'delete_log'),
(36, 'Can view log', 9, 'view_log');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$xg2sCfpVrp0L4RCyInjAbq$p58an4PRqHZX35zxcY2EoRP8A8l32SMZ+JKV6OBuegM=', '2023-11-17 16:49:38.378013', 0, 'Junior', 'Thammarach', 'Decutai', 'thammarach.decutai@gmail.com', 0, 1, '2023-11-17 16:49:38.257438');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `user_id` int(11) NOT NULL
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
(7, 'app_jsy3b', 'foot'),
(9, 'app_jsy3b', 'log'),
(8, 'app_jsy3b', 'user'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

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
(1, 'contenttypes', '0001_initial', '2023-11-17 16:21:09.806496'),
(2, 'auth', '0001_initial', '2023-11-17 16:21:10.109395'),
(3, 'admin', '0001_initial', '2023-11-17 16:21:10.172360'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-11-17 16:21:10.177887'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-11-17 16:21:10.182888'),
(6, 'app_jsy3b', '0001_initial', '2023-11-17 16:21:10.194312'),
(7, 'app_jsy3b', '0002_user', '2023-11-17 16:21:10.214670'),
(8, 'app_jsy3b', '0003_log', '2023-11-17 16:21:10.227444'),
(9, 'app_jsy3b', '0004_foot_p_discount_foot_p_end_discount_and_more', '2023-11-17 16:21:10.269209'),
(10, 'app_jsy3b', '0005_foot_p_type', '2023-11-17 16:21:10.280765'),
(11, 'app_jsy3b', '0006_foot_p_stock', '2023-11-17 16:21:10.293379'),
(12, 'app_jsy3b', '0007_alter_foot_p_special_price', '2023-11-17 16:21:10.307862'),
(13, 'app_jsy3b', '0008_alter_foot_p_stock', '2023-11-17 16:21:10.322916'),
(14, 'app_jsy3b', '0009_alter_foot_p_special_price', '2023-11-17 16:21:10.354506'),
(15, 'contenttypes', '0002_remove_content_type_name', '2023-11-17 16:21:10.399379'),
(16, 'auth', '0002_alter_permission_name_max_length', '2023-11-17 16:21:10.428836'),
(17, 'auth', '0003_alter_user_email_max_length', '2023-11-17 16:21:10.444124'),
(18, 'auth', '0004_alter_user_username_opts', '2023-11-17 16:21:10.449953'),
(19, 'auth', '0005_alter_user_last_login_null', '2023-11-17 16:21:10.475195'),
(20, 'auth', '0006_require_contenttypes_0002', '2023-11-17 16:21:10.477516'),
(21, 'auth', '0007_alter_validators_add_error_messages', '2023-11-17 16:21:10.484729'),
(22, 'auth', '0008_alter_user_username_max_length', '2023-11-17 16:21:10.500934'),
(23, 'auth', '0009_alter_user_last_name_max_length', '2023-11-17 16:21:10.515493'),
(24, 'auth', '0010_alter_group_name_max_length', '2023-11-17 16:21:10.530461'),
(25, 'auth', '0011_update_proxy_permissions', '2023-11-17 16:21:10.538504'),
(26, 'auth', '0012_alter_user_first_name_max_length', '2023-11-17 16:21:10.553883'),
(27, 'sessions', '0001_initial', '2023-11-17 16:21:10.577217'),
(28, 'app_jsy3b', '0010_alter_foot_p_stock', '2023-11-17 16:24:24.386092'),
(29, 'app_jsy3b', '0011_delete_log_delete_user', '2023-11-17 16:24:24.395970');

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
('r1we2k0klm2or6gx25eajd5xqr6cyh2a', '.eJxVjDsOwyAQRO9CHSHAfEzK9D4D2mUhOIlAMnYV5e6xJRdJN5r3Zt4swLaWsPW0hJnYlUl2-e0Q4jPVA9AD6r3x2Oq6zMgPhZ-086lRet1O9--gQC_7OhsSJKKyykgwo_MGpVfZojNao5XDMJAFlFYRak2j2xMmn0m4lJ1G9vkCx3c3cQ:1r422E:_jc34RUf3qSsPgUTk_iz71Fj3wCSZKMYKo-D97utuJc', '2023-12-01 16:49:38.380327');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_jsy3b_foot`
--
ALTER TABLE `app_jsy3b_foot`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

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
-- AUTO_INCREMENT for table `app_jsy3b_foot`
--
ALTER TABLE `app_jsy3b_foot`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

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
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
