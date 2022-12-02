-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 29, 2022 at 04:21 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `EcomCredit`
--

-- --------------------------------------------------------

--
-- Table structure for table `api_avatar`
--

CREATE TABLE `api_avatar` (
  `id` bigint(20) NOT NULL,
  `session` varchar(200) NOT NULL,
  `file` varchar(100) NOT NULL,
  `method` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `api_avatar`
--

INSERT INTO `api_avatar` (`id`, `session`, `file`, `method`) VALUES
(199, 'ekehHPTk8rTYFMQ3LRsHIB38FrrtbB5q', 'uploads/2022/11/11/7.jpg', 'mattruoc'),
(200, 'ekehHPTk8rTYFMQ3LRsHIB38FrrtbB5q', 'uploads/2022/11/11/luadao2.jpeg', 'matsau'),
(201, 'ekehHPTk8rTYFMQ3LRsHIB38FrrtbB5q', 'uploads/2022/11/11/4.jpg', 'chandung'),
(202, 'fLpIT5TLSQrVJmRN3xVb9fm7uAiutnwQ', 'uploads/2022/11/11/7_dZLpPhl.jpg', 'mattruoc'),
(203, 'fLpIT5TLSQrVJmRN3xVb9fm7uAiutnwQ', 'uploads/2022/11/11/luadao2_lvCMysM.jpeg', 'matsau'),
(204, 'fLpIT5TLSQrVJmRN3xVb9fm7uAiutnwQ', 'uploads/2022/11/11/1.jpg', 'chandung'),
(205, 'mjkUPYrGpfmHaZOMHtKD3NgOnOsSjoaS', 'uploads/2022/11/11/4_MluraTf.jpg', 'mattruoc'),
(206, 'mjkUPYrGpfmHaZOMHtKD3NgOnOsSjoaS', 'uploads/2022/11/11/luadao2_UrmOMV5.jpeg', 'matsau'),
(207, 'mjkUPYrGpfmHaZOMHtKD3NgOnOsSjoaS', 'uploads/2022/11/11/4_adcScHx.jpg', 'chandung'),
(208, '8s6bijETRBmsQZkJ9MW8XQQ2IZ0B2sy0', 'uploads/2022/11/11/5.jpg', 'mattruoc'),
(209, '8s6bijETRBmsQZkJ9MW8XQQ2IZ0B2sy0', 'uploads/2022/11/11/luadao.jpeg', 'matsau'),
(210, '8s6bijETRBmsQZkJ9MW8XQQ2IZ0B2sy0', 'uploads/2022/11/11/2.jpg', 'chandung'),
(211, 'AgVnavKADhp80nWPUtl0njVz7MlLamHq', 'uploads/2022/11/11/luadao2_kNZf3oM.jpeg', 'mattruoc'),
(212, 'AgVnavKADhp80nWPUtl0njVz7MlLamHq', 'uploads/2022/11/11/5_AWz2hOY.jpg', 'matsau'),
(213, 'AgVnavKADhp80nWPUtl0njVz7MlLamHq', 'uploads/2022/11/11/4_xJVcj2Q.jpg', 'chandung'),
(214, 'iLgxLRX1z4OD1NwFte2FBv93e8nuH2YT', 'uploads/2022/11/11/backgroup.png', 'mattruoc'),
(215, 'iLgxLRX1z4OD1NwFte2FBv93e8nuH2YT', 'uploads/2022/11/11/df0787208b.png', 'matsau'),
(216, 'iLgxLRX1z4OD1NwFte2FBv93e8nuH2YT', 'uploads/2022/11/11/Rectangle_42.png', 'chandung'),
(217, 'AzJSudo9UCBQzUJxHJRSn2Wk0SdSJ53S', 'uploads/2022/11/12/6.jpg', 'mattruoc'),
(218, 'AzJSudo9UCBQzUJxHJRSn2Wk0SdSJ53S', 'uploads/2022/11/12/luadao2.jpeg', 'matsau'),
(219, 'AzJSudo9UCBQzUJxHJRSn2Wk0SdSJ53S', 'uploads/2022/11/12/2.jpg', 'chandung'),
(220, 'rRXa7JoxxUrfZKUBNHDudhe5Es1VT2xH', 'uploads/2022/11/12/banner.jpg', 'mattruoc'),
(221, 'rRXa7JoxxUrfZKUBNHDudhe5Es1VT2xH', 'uploads/2022/11/12/banner2.png', 'matsau'),
(222, 'rRXa7JoxxUrfZKUBNHDudhe5Es1VT2xH', 'uploads/2022/11/12/cs600-600x600.jpg', 'chandung'),
(223, 'nJi62FZKJvFB0Fmjwv4hUVO2Ct7q5f9X', 'uploads/2022/11/12/luadao.jpeg', 'mattruoc'),
(224, 'nJi62FZKJvFB0Fmjwv4hUVO2Ct7q5f9X', 'uploads/2022/11/12/2_lUoMsWD.jpg', 'matsau'),
(225, 'nJi62FZKJvFB0Fmjwv4hUVO2Ct7q5f9X', 'uploads/2022/11/12/3.jpg', 'chandung'),
(226, '7vZHrclr1BxBuEWvD5Ksjk20samHDTMD', 'uploads/2022/11/12/34cc46d089364f681627.jpg', 'mattruoc'),
(227, '94JcJGFlK9J0NOSeVf4R309zY92E8zza', 'uploads/2022/11/12/4_9bp7txl.jpg', 'mattruoc'),
(228, '94JcJGFlK9J0NOSeVf4R309zY92E8zza', 'uploads/2022/11/12/luadao_WDWHdjT.jpeg', 'matsau'),
(229, '7vZHrclr1BxBuEWvD5Ksjk20samHDTMD', 'uploads/2022/11/12/6_AIeFpez.jpg', 'matsau'),
(230, 'cXtOSTIo2bpxDJZSdMH4TnXY9UkxrtVo', 'uploads/2022/11/12/luadao_tk1Tnfp.jpeg', 'mattruoc'),
(231, 'cXtOSTIo2bpxDJZSdMH4TnXY9UkxrtVo', 'uploads/2022/11/12/luadao2_wU5FhHE.jpeg', 'matsau'),
(232, 'cXtOSTIo2bpxDJZSdMH4TnXY9UkxrtVo', 'uploads/2022/11/12/4_M5GDByJ.jpg', 'chandung'),
(233, 'jT74aV84xiKnWFI0fZflv0TKnIb3dKsu', 'uploads/2022/11/12/3226A53C-2FC5-418D-8076-0B4EB70C4F49.png', 'mattruoc'),
(234, 'jT74aV84xiKnWFI0fZflv0TKnIb3dKsu', 'uploads/2022/11/12/5E4A6C0D-5B5A-4BB9-BB8F-94E1F964E511.png', 'matsau'),
(235, 'jT74aV84xiKnWFI0fZflv0TKnIb3dKsu', 'uploads/2022/11/12/820D37B4-352F-4DE5-B451-E253092F9CA0.png', 'chandung'),
(236, 'n1ZzAwGKfd7Tm0w9zzvx180GpztOsz7d', 'uploads/2022/11/12/z3810062578390_666d9b0db1a501a596b76eddcc9c584b.jpg', 'mattruoc'),
(237, 'n1ZzAwGKfd7Tm0w9zzvx180GpztOsz7d', 'uploads/2022/11/12/z3810062616261_00ea09b0d9af4ce86b713053271c61c0.jpg', 'matsau'),
(238, 'n1ZzAwGKfd7Tm0w9zzvx180GpztOsz7d', 'uploads/2022/11/12/z3810062669710_26cff95bc40b7582051cd9db8f3f2352.jpg', 'chandung'),
(239, '5AyvZh2lWtCvgWBXX9Smv9OvwrbRdiD7', 'uploads/2022/11/13/5C727B79-2DFB-4BD5-8EE9-451D238E41D8.png', 'mattruoc'),
(240, '5AyvZh2lWtCvgWBXX9Smv9OvwrbRdiD7', 'uploads/2022/11/13/FE11BDD6-E285-43DF-A3D3-EA63AB464BC5.png', 'matsau'),
(241, '5AyvZh2lWtCvgWBXX9Smv9OvwrbRdiD7', 'uploads/2022/11/13/A693F601-DC8F-483F-A484-8C6D7B821CDE.png', 'chandung'),
(242, '7W5ySeejFrIEKgHICnBFNfkJ22YAcBzQ', 'uploads/2022/11/13/exciter-155-vva_thanhnien-10_snag.jpeg', 'mattruoc'),
(243, '7W5ySeejFrIEKgHICnBFNfkJ22YAcBzQ', 'uploads/2022/11/13/wvn.05c0546a95f7eb4.57994898.jpg', 'matsau'),
(244, '7W5ySeejFrIEKgHICnBFNfkJ22YAcBzQ', 'uploads/2022/11/13/xe.png', 'chandung'),
(245, 'BIsMG9LEdv8iNHnmK5RRyDqDkH79QD3Y', 'uploads/2022/11/13/34cc46d089364f681627.jpg', 'mattruoc'),
(246, 'BIsMG9LEdv8iNHnmK5RRyDqDkH79QD3Y', 'uploads/2022/11/13/2.jpg', 'matsau'),
(247, 'BIsMG9LEdv8iNHnmK5RRyDqDkH79QD3Y', 'uploads/2022/11/13/luadao.jpeg', 'chandung'),
(248, 'VDHXk3pxmoLU34zFdmAf7zvGNmPRCZtT', 'uploads/2022/11/13/2132e409ad724865fe6375cdf463f7c2.jpg', 'mattruoc'),
(249, 'VDHXk3pxmoLU34zFdmAf7zvGNmPRCZtT', 'uploads/2022/11/13/2132e409ad724865fe6375cdf463f7c2_cFkX4Jp.jpg', 'matsau'),
(250, 'VDHXk3pxmoLU34zFdmAf7zvGNmPRCZtT', 'uploads/2022/11/13/2132e409ad724865fe6375cdf463f7c2_diRu1IY.jpg', 'chandung'),
(251, 'YlPYv57d0rw1W3odGJV3dX8m2SOb0EKl', 'uploads/2022/11/13/394060F9-02D3-41C7-BC7F-465F4366B9DA.png', 'mattruoc'),
(252, 'RfjXom0cf0NYOWWhFHtjQ8JlDarjP0uj', 'uploads/2022/11/17/ảnh-6.jpg', 'mattruoc'),
(253, 'RfjXom0cf0NYOWWhFHtjQ8JlDarjP0uj', 'uploads/2022/11/17/bac-si-gia-dinh-1479493791307.jpg', 'matsau'),
(254, 'RfjXom0cf0NYOWWhFHtjQ8JlDarjP0uj', 'uploads/2022/11/17/20210409_BS_Dao_Danh_Vinh.png', 'chandung'),
(255, 'JT1vkDsAD5qUaA71i6RZPTxa2OcfIcDJ', 'uploads/2022/11/17/ảnh-6_y1Ylamb.jpg', 'mattruoc'),
(256, 'JT1vkDsAD5qUaA71i6RZPTxa2OcfIcDJ', 'uploads/2022/11/17/bac-si-gia-dinh-1479493791307_eZyyn5v.jpg', 'matsau'),
(257, 'JT1vkDsAD5qUaA71i6RZPTxa2OcfIcDJ', 'uploads/2022/11/17/BS-Khuc-Minh-Thuy.jpg', 'chandung'),
(258, '6uUcAckUQDRmesUEtiB1IdBRjXG276pu', 'uploads/2022/11/20/bg-footer-min.jpeg', 'mattruoc'),
(259, '6uUcAckUQDRmesUEtiB1IdBRjXG276pu', 'uploads/2022/11/20/CEMS.png', 'matsau'),
(260, '6uUcAckUQDRmesUEtiB1IdBRjXG276pu', 'uploads/2022/11/20/CimentHaLong.jpeg', 'chandung'),
(261, 'bZDVB5105p0bqBGER240zFyzWzBdkcJC', 'uploads/2022/11/20/Screenshot_20221114-110457.png', 'mattruoc'),
(262, 'bZDVB5105p0bqBGER240zFyzWzBdkcJC', 'uploads/2022/11/20/Screenshot_20221114-110457_WEr4TEk.png', 'matsau'),
(263, 'bZDVB5105p0bqBGER240zFyzWzBdkcJC', 'uploads/2022/11/20/Screenshot_20221114-110457_UCUc5DD.png', 'chandung');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(21, 'Can add create user order', 6, 'add_createuserorder'),
(22, 'Can change create user order', 6, 'change_createuserorder'),
(23, 'Can delete create user order', 6, 'delete_createuserorder'),
(24, 'Can view create user order', 6, 'view_createuserorder'),
(25, 'Can add user', 7, 'add_myuser'),
(26, 'Can change user', 7, 'change_myuser'),
(27, 'Can delete user', 7, 'delete_myuser'),
(28, 'Can view user', 7, 'view_myuser'),
(29, 'Can add avatar', 8, 'add_avatar'),
(30, 'Can change avatar', 8, 'change_avatar'),
(31, 'Can delete avatar', 8, 'delete_avatar'),
(32, 'Can view avatar', 8, 'view_avatar'),
(33, 'Can add bank information', 9, 'add_bankinformation'),
(34, 'Can change bank information', 9, 'change_bankinformation'),
(35, 'Can delete bank information', 9, 'delete_bankinformation'),
(36, 'Can view bank information', 9, 'view_bankinformation'),
(37, 'Can add history', 10, 'add_history'),
(38, 'Can change history', 10, 'change_history'),
(39, 'Can delete history', 10, 'delete_history'),
(40, 'Can view history', 10, 'view_history'),
(41, 'Can add rut tien', 11, 'add_ruttien'),
(42, 'Can change rut tien', 11, 'change_ruttien'),
(43, 'Can delete rut tien', 11, 'delete_ruttien'),
(44, 'Can view rut tien', 11, 'view_ruttien');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(8, 'api', 'avatar'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(10, 'history', 'history'),
(11, 'rut', 'ruttien'),
(5, 'sessions', 'session'),
(9, 'users', 'bankinformation'),
(6, 'users', 'createuserorder'),
(7, 'users', 'myuser');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-11-08 14:55:06.473759'),
(2, 'contenttypes', '0002_remove_content_type_name', '2022-11-08 14:55:06.494162'),
(3, 'auth', '0001_initial', '2022-11-08 14:55:06.594020'),
(4, 'auth', '0002_alter_permission_name_max_length', '2022-11-08 14:55:06.614304'),
(5, 'auth', '0003_alter_user_email_max_length', '2022-11-08 14:55:06.618882'),
(6, 'auth', '0004_alter_user_username_opts', '2022-11-08 14:55:06.623566'),
(7, 'auth', '0005_alter_user_last_login_null', '2022-11-08 14:55:06.628079'),
(8, 'auth', '0006_require_contenttypes_0002', '2022-11-08 14:55:06.629276'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2022-11-08 14:55:06.633510'),
(10, 'auth', '0008_alter_user_username_max_length', '2022-11-08 14:55:06.637854'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2022-11-08 14:55:06.643539'),
(12, 'auth', '0010_alter_group_name_max_length', '2022-11-08 14:55:06.652968'),
(13, 'auth', '0011_update_proxy_permissions', '2022-11-08 14:55:06.657464'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2022-11-08 14:55:06.661950'),
(15, 'users', '0001_initial', '2022-11-08 14:55:06.791763'),
(16, 'admin', '0001_initial', '2022-11-08 14:55:06.835130'),
(17, 'admin', '0002_logentry_remove_auto_add', '2022-11-08 14:55:06.843415'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2022-11-08 14:55:06.851008'),
(19, 'sessions', '0001_initial', '2022-11-08 14:55:06.872640'),
(20, 'users', '0002_alter_createuserorder_so_dien_thoai', '2022-11-08 14:55:06.932805'),
(21, 'users', '0003_rename_so_dien_thoai_createuserorder_phone_and_more', '2022-11-08 14:55:07.062358'),
(22, 'users', '0004_alter_createuserorder_sinh_nhat', '2022-11-08 14:55:07.080013'),
(23, 'users', '0005_rename_phone_createuserorder_user', '2022-11-08 15:05:22.753771'),
(24, 'api', '0001_initial', '2022-11-08 22:42:41.033944'),
(25, 'api', '0002_avatar_method', '2022-11-08 22:43:59.038435'),
(26, 'api', '0003_rename_avatar_avatar_file', '2022-11-08 23:04:05.139889'),
(27, 'api', '0004_alter_avatar_file', '2022-11-08 23:09:23.461055'),
(28, 'api', '0005_rename_seesion_avatar_session_alter_avatar_file', '2022-11-08 23:35:02.783114'),
(29, 'api', '0006_alter_avatar_method', '2022-11-09 09:24:26.965149'),
(30, 'users', '0006_bankinformation', '2022-11-09 10:48:56.727210'),
(31, 'users', '0007_rename_user_id_bankinformation_user', '2022-11-09 10:50:24.156495'),
(32, 'users', '0008_createuserorder_so_du', '2022-11-09 13:48:11.695461'),
(33, 'users', '0009_createuserorder_khoan_vay_createuserorder_ky_han_and_more', '2022-11-09 15:18:29.465636'),
(34, 'users', '0010_createuserorder_create', '2022-11-09 15:24:30.085468'),
(35, 'users', '0011_alter_createuserorder_create', '2022-11-09 15:27:27.069149'),
(36, 'users', '0012_createuserorder_confirm', '2022-11-10 04:50:44.703648'),
(37, 'users', '0013_createuserorder_dong_bang', '2022-11-10 14:45:17.764102'),
(38, 'users', '0014_createuserorder_muon_rut', '2022-11-10 17:21:53.258914'),
(39, 'history', '0001_initial', '2022-11-11 05:33:13.752133'),
(40, 'users', '0015_alter_createuserorder_muon_rut_and_more', '2022-11-11 06:24:41.457837'),
(41, 'users', '0016_alter_bankinformation_id_chu_the', '2022-11-11 15:34:54.047795'),
(42, 'history', '0002_history_status', '2022-11-12 08:01:16.336333'),
(43, 'rut', '0001_initial', '2022-11-13 08:36:01.380868'),
(44, 'history', '0003_remove_history_status', '2022-11-13 08:37:20.012927'),
(45, 'users', '0017_remove_createuserorder_muon_rut', '2022-11-13 08:37:44.439709'),
(46, 'rut', '0002_ruttien_trangthai', '2022-11-13 09:21:39.982509'),
(47, 'users', '0018_createuserorder_chovay_status', '2022-11-17 13:51:29.497470');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0xgam33aj4ofisbi23tef38oropo8afw', '.eJxNjUELgjAYhv_K2HmHzUClWxEEmp1MC7oMp3OUG-lmSPTf-6Ye-i4fz7vne_fB0tWDxVt8Sp5JeexvssiS62X_jlNDRalfo6unQ6x2mOCq08L2zlSgrzhwt0LLtXBaLvRoDdcjn4ACuoxPJ5AgSu-O1c0GtX5zphELkAWgtGbQQLA1WuY9z4zK4cJ3olx5uQIZPMaYt5uNlqjzuYjUXwOC7-dq_85ITEMShhEqzvMpxd8fLG9LeA:1otnt7:eZZEqJc8-NLbTTo-dXzmlqzdv4KKhVhWDZdWD-KUF0E', '2022-11-26 10:37:25.691773'),
('1e43tpm4ytszype446t2skvvyqppsmxl', '.eJxVjktPwzAQhP-K5XMUZe3EbjgiBOJRCiLABaly_IjTUltKHESL-O_YbQ7UF2tmvp3dH9xNegz4At8-HMgKXir3LjYH6-Dp5vsQXq9X4o5ePZOG4AzLnVNhmLyM-CxHMc3CCqcm153U1nrhvsQ-KlKcXnL3EYrW_ccE2lBk0y_AISAoRFEUGmJDhoN3XTOIpe-bOJE6UdMnWEY4cgCQaENdh3bJV7z_14Di-mN1yiFbFCxjjKO3x-NoumQtpmDX06iHda9ifbk4N1sht9qlRG3iAT6X3oWhb_OE5HM65kuv9OflzJ4VWDHaNM25IRWvRVUXSjCjq5Jxw2ldVtDKStXEkFLTUoKuGaEt06VWUFCoW2oWrca_fw1FgfI:1ovecn:GArK6jJg0PyqHuY7p0mmNIZBq3e5ZO2BpB9-K3GlH30', '2022-12-01 13:08:13.289170'),
('2k2yxo2qod473f9dook8w3bep914dk39', '.eJxNjV0LgjAUhv_K2LXIpjCry4wo06iQIOhm-DEtnDE3SaL_3pl60bk5PO-e8-6DhSk6jVeYvcOu4fx2XhahijcnFUe-6Lc7Hb3Wl2T_wA7OGplrZdoM9Bk7bmaouMyNFBM9q5bLng9AHpnGpgNIEB3uhhaljyq7OZWIekgDEFJQaHCwbqVIFU_aOoUL24nS2soZyOBRSq1d-lKgxuZ5UP81IPh-rLbv1F0Q5jIWoOtxPCX4-wP4d0s6:1ott7K:I52E42WNVdgWYIsi15YG7KrJiQIrKETsepMY4lVKy_s', '2022-11-26 16:12:26.075134'),
('3chvj5f334ly1hgoogbpnt3zqt4kjv0d', '.eJxdjs1OwzAQhF_F8rmKvE7iFG5FvVBUQChwQEjVxj9JKLVFEldUiHdnXXIAfLFm5tvZ_eRttOPEL_mmhuN-Pa7W5fsjriro1cPzff2B8k67a73e8AXXB2-mIQZN-CxHjLPo0Jvo2x-17wL6I55ISfHzknsiiKyblwjW5axLP4JnINlEQggL1LDgU_BtPeA29DVNpE5W9wnWBBMHAIl2uW_ZIfmm6n81MFp_rk45ZEuhMqUq9nR7Hk2X7DBO3S6Odtj1huqrf2aDem99SswrHRAyHfw09E2WkGxOx2wbjH27mtk_BR2OHU1baaVrisJB6axcmkpiXjrRiEo2BVRCgFA5lNa6ZpkXRiEhF85pq4wSEjX_-gbOK4Ir:1ovgc2:-feWcQQH4vndjG5PO6EKB4EZRFSdXZQusITq8S0lHgk', '2022-12-01 15:15:34.085784'),
('3s8cxh828dq9cuaa4yawmto5qfduea18', '.eJxNjcsKwjAQRX8lZJ1FpmJb3BcVqyANBcFN7Fttom0iVPHfnbRdOJvh3Jy5-dDKFr2hK3pp36fnNjTHTXlNinWURjyBR9rcY700iYgpo1mrctNZnaE-Yy_tDLVUuVXVRLdaS_WSA5LHp3HpgBJGu7OFolyQ2m0JioBHDALnBWADo0arSnRyrxuBF66TiMbJGcroAYCzy4WqSOvyPGj-Ggh-P1a7d2Ah95nvByQ9jKecfn8U5UtU:1ow44j:KH1vlbT6qwldCrtG8zgaItJAH-9OmtGl1Kl_8PExGlw', '2022-12-02 16:18:45.402362'),
('466rofuevm3z8lfdo6ky2msuflr0eo45', '.eJyrVkovTS0uUbJSiiwuL_Q1qnA1NjQ0Nc32L0w2yiuK9DTy9_AxCfNwL0xX0lFKzs1LKSkqzU8GKodyixNLoZyMxLyU0rx0EK8WAKepGuY:1otT8t:ozdu9cMdhkkd4cLVrdgNqd7nRaHgqDoS4mgONzTdHCA', '2022-11-25 12:28:19.790807'),
('4e86ny80bvdpnj868v5tpihb1heeu6wl', '.eJxVj19PwyAUxb8K4blpSqEwfHP6tswXpybGpLnlT-nmILbFOI3fXdj64Hgh55zfPVx-cB_NNOMbzODF79eOfWyOMjJ1-rpn349PDdA714-vtxoXWB29nscYVMIXOUFchAOvo-8v6uAC-E84JVVXl5PdU4KStXmLxFiKXL6BeERqNCdRVYakhgLPwfe7EbZh2KWJ3Il2Q4ZVghNHCMm0pb5Hx-xrMfxrQOn5c3XOSbGqeMG5QM8P59G8SQtxdm2czNgOOn9-dW12oA7G50Tv0wKhVMHP49CVGSmXdCq3QZv39cJeFTiYXJ4WwtaNkNDISgO3pmFcWEEla0inGi1rWzNDmSJG8pp23DCjSUWJ7KhddQb__gHFK4Jt:1ovT9z:wFU0_dvHMEIxxMqQZaLbU7XVbmc16EMXw7ru1XurGKE', '2022-12-01 00:53:43.226874'),
('4yri5ly4onzk6actqrbybryreox5mkxz', '.eJxVjL0OgjAYRd-lsyEthbY4anTQoHEyTqT9-idqMZQOxvjuYmRhPPeee9_IJRMHtERr7sLWHzever93bS-entTF4Zzz9rS7HKBECwSPoIc-dTDqE0aZJvAy6BTcnxqZBt-kaPrmqseI8XmoJNxM-DW6lcF1GXRh6K8q-ynZ1Mas7rS5ryZ3duBl9OMaK8VZVTKBLRdYMSMocMVoaUlRYYE5NjLXnFFCCkpzBpZgyMGCEoTIokSfLwf0UTc:1ovLK8:g3HiOM3gkI78YJtHN-t2Qw39N7HwMXh0grkQQ3ecdyc', '2022-11-30 16:31:40.230291'),
('5re9wmkkcb7i3rr1de581f32tghdbpus', '.eJyrVkovTS0uUbJSMnWsLIvKMMoJL3EuSw93ioiwDM4ts_QvKy9KCkrJdDFX0lFKzs1LKSkqzU8GKodyixNLoZyMxLyU0rx0EK8WAOZBG_o:1ou9OP:2bDfeIZVvBSXTV-x8buF9vQCHqjGiG5c9xUcg9kP26o', '2022-11-27 09:35:09.299134'),
('6eqqlf4ateqadojj1cu18ht8kx9uxkma', '.eJyrVkovTS0uUbJScqwMzissyjLK8wg2TszyyMg39Yoqyi0OCy8pME3xigxS0lFKzs1LKSkqzU8GKodyixNLoZyMxLyU0rx0EK8WAO9nHBk:1otpMX:pZlgoTmfzXK5G_YRqbC6bPS7W3PZQ-_xFVgvoP0Bo2c', '2022-11-26 12:11:53.507976'),
('6r8g36uzr80qp0qopmvu0b3brksu41ud', '.eJyrVkovTS0uUbJSCioISzUMdXcLyclxrcp3CwrMTM0wKjMyjQj1y_Qv9PRX0lFKzs1LKSkqzU8GKodyixNLoZyMxLyU0rx0EK8WAMvqG4M:1ovKRr:UEE5SpwwaNsmXUtwC8zK0uQxUu91yphBwA5MVzHeG_E', '2022-11-30 15:35:35.441936'),
('7xvaess4hy9c95u7mz7a8i25ib1a4qa3', '.eJyrVkovTS0uUbJSSrRIc_bwTy9ONi92NPM2S87KLTD1sAgxTC6o8gz0dytV0lFKzs1LKSkqzU8GKodyixNLoZyMxLyU0rx0EK8WALfnGzw:1ow45g:LwhBVjJpN2m94DFPutoIdiDVs3FD__rVreNUDUp83Ck', '2022-12-02 16:19:44.620319'),
('80d6d2mwcdyuq3qdjwbrv8pnun1eczz0', '.eJxtzcGKwjAQBuBXCTkXm0lLtd5VqOjCbhEEL0OTpt2tidhmwYrv7qS7Bw_mEubPN3_u3HjdD3zJ87Sois262-aF2H986UOdfiYiH4-5XC3GEXnEq7NVw9W7iri_dA5VH0shZQwQg4zT2ffF_LMe_XvUeVToSOqJNmiVt4YsTT-NQ_uLN5qk-DshvRGiaHvyoOuENeFGsAwkG2gQQoMNZYOzprzizrUlbYROVrYBV4TJAUDQdWINO4dczduXBkbfT9XhHaKFyKIsm7PDfloV_PEEb4FaZw:1oto5Q:lNeWOuXHlZhqPS6-oixNjFD03Y51_cuu8UJDV5I8nUM', '2022-11-26 10:50:08.311797'),
('8g1g4g9i2taf6d0wk2ufo611xix9hfnu', '.eJxVjktvgzAQhP-K5TNC-AGG3lr1cYjSS1GqSJUi4wfQNLYEmBRV_e9dJxwaX6yZ_XZ2fnAbzDjhO3z_NNPHRXNWzPvv5_Nmp0pbvmleO_byfl72OMHq5PQ0BK8AX-Uowyo66XRw7VUdOy_dLBdQLLu-6C4AgbX5CMRYhrr4S-IQoWgCkWWGQEKCJ-_aepBb39ewETNR3UdYAQwcISTSlrkWnaKvRf8vAcH5S3Sc00SQLIECaPd6WY1NDjJM3SGMZjj0GuJ5eWs2Uh2NixP9CQV8qrybhr5JI5Ku0zHdem2-Hlb2JqCTYxe3hbA0F5XMq0zLwpqcF8IKVvGcNCrXFbWUG8YVMVVBWVMYbjTJGKkaZsvG4N8_LYaCAA:1otS9M:2TZqcG5OKcRmHJgyHaflqKK90rEkYfRdnhCs90XkWHE', '2022-11-25 11:24:44.762402'),
('8ptx4ceejlcewjrl67uf18128obr4cf3', '.eJxVjl9LwzAUxb9KyHMpTdMmjY8qVBwT1CmbCCPNn7bOJdA2jil-d2-2Pri8hHPu7557fnAbzDjhK1x97zfP6_pNsEN9p3mv5dPj4X692PR1_XJzu8EJVnunpyF4BfgsRxlm0Umng2vPatd56b7kEVSenV90jwCBtXgPxFiKuvhL4hDJ0QQiywyBhARP3rWrQS59v4KNmIlWfYQVwMARQiJtqWvRPvrQ918CgvOn6DgnSZWxhDGOXh9Oq7HJVoap24bRDNteQ3xRXZqNVDvj4kR_QAGfKu-moW_SiKTzdEyXXpvP65m9COjk2MVtzm1eciFLkWnJrCkLxi2noihJo0otcpsXhhaKGMFy2jBTGE0ySkRDbdUY_PsHP1qCFA:1ovKGH:TJJ2nAYmlbEUl8WTTXJNxoPh7qCYnZH3KW4ljkpkDOU', '2022-11-30 15:23:37.575839'),
('9aqc6bdgp5qi8mc2pzo00jw76zlpee1q', '.eJxdkEtLAzEUhf9KyHoY8pjMw2Xpora0IE6LglAySebR2gRnEqGK_92bOgs1m3DO_e7JIZ-4C2by-A4Xox6XT-xx7ferw_Oq_nholpe3brMw63C_O-1xgtXFaj8GpwCf5STDLHppdbDdjzr3Ttp3eQXFyM-J7hUgsDYvgZqWoz7eklpEGfIgCDEUEhLsne3qUW7dUMNGzET1EGEFMHCU0ki33HboEn1dDL8SEDx_i45zlhSUJFAAHXa31djkKIPvj2Ey43HQEC_-mY1UZ2PjRJ-ggEuVs34cmjQi6Tyd0q3T5nUxs38Cejn1sF2KimW0yQXLCy5YqdpciIznsqwqxqk0hpZNRoRqVMXyjKtcwc-Q1vCWsFKX-OsbqHOBoA:1otiJm:pCvDPeVP75jDiOhxu4V4WjAyPc_Vkgw98HCBh3Nj6Zs', '2022-11-26 04:40:34.465405'),
('9luvdqbujpgxybp8i8zcy4nsdx1uw1f3', '.eJxNjdEKgjAUhl9l7NqLTUOr64jIEoJhFN0MndPCDXVLNHr3ztSLzs3h-_edfx8sregM3uL0OSabzOzi4nDbJ_tTurqM5C7E8aqanjU99nBWq9y0VmegL9hxu0DJVW6VnOlVaq7efADyyTwuHUCCKH5YKooAlW5zqhD1kQEgRFBo8LDRSrKWn3XF4MJ1IlY5OQMZPEqps4tASVS7PI-qvwYE30_V7p16axJ6YRihNJlOCf7-ADzxS44:1ouSWu:E5_Cg60dOwJlFby5wo1izMDRJfm_QTBvaEMIeSJzfzw', '2022-11-28 06:01:12.904405'),
('9nwqeeaaihw4ysnd32n4e2o8mo9byl0j', '.eJxVjl9LwzAUxb9KyLOU3LZJOt8U9jBlY8gQFGFk-dPWuQSbRp3id_dm64PLSzjn_u6554e2ycaRXtOHeZzX3-u792chnFiIqJrFF18Dc0836XO2oldUH7wZhxQ04pOMKk2iU94k357VvgvKf6gjqpKdX3aPCKF1_5LAuop0-VfgCZRkRMGYBUy4omPw7WZQy9BvcCNnkk2fYY0wcgCQaVf5lhyyb2T_L4Hg-VN0npeFBFZgAfK4Oq3mJluVxm6boh22vcF4Xl2aO6X31ueJecUCodDBj0O_KzJSTNNYLIOxb7cTexHQqdjhtpXOOiZ4PdOmdsxIyaGspG5qyS0IpVilBBecNQ6wJoBgmrlGulnp0HX09w9itICs:1otTGY:d9ZwHVPAPRRPTAZBKCbFyUU6Vp7ftm18lx8TQP9F3T0', '2022-11-25 12:36:14.810367'),
('a9up035ew5qkhozd7o7j9kxrw3x3rrkm', '.eJxdkM1KxDAUhV8lZD2U_DSZ1p3iRmQEsSMuhCFN0qZOm0DbjFTx3b2Z6UInm3DO-e65Id-4jXaa8Q0-NX33dvvwpcbwSV_6Yb_00u_dc6h8TdVyjzdYD97MYwwa8FVOKq7CKW-iby_q6ILyJ7WAYuRykrsABNbje6S24cilW1GPJEEzCEIshYYNnoNvq1HtQlfBROpEVZdgDTBwlNJEN9y3aEi-2XZ_GhCsP1enPN_yDec5en06D6Z3HFSc3SFOdjx0BsrFlVkrfbQ-JeYD1odMBz-PXZ0lJFvTKdsFY_u7lf1X4NTkYLoQJctpLQWTWy5YoRspRM6lKsqScaqspUWdE6FrXTKZcy01_AtpLG8IK0yBf34BVF-CQw:1ozeFU:b6H0eYzX3wONuziFQgSWGFJAtAwWEbp2HRpQOgN_bNE', '2022-12-12 13:32:40.131341'),
('avmtezpkz021r50j9cy3kgquwnzamqbp', '.eJyrVkovTS0uUbJSsiwO8XbKsUhyrsgPzXGqyrIMDyg0iijNyzd19XPOLY5S0lFKzs1LKSkqzU8GKodyixNLoZyMxLyU0rx0EK8WANgDG8U:1otlu6:W7bH3s7kWUccf1goQuJ8gh-xP4dJzPHZggHzZf8soSU', '2022-11-26 08:30:18.780670'),
('cc20lnp6oj3f0itfcvm3fe5rm9mflwwo', '.eJxVjEEOwiAQRe_C2pABykBduvcMhBlAqoYmpV0Z765NutDtf-_9lwhxW2vYel7ClMRZoBOn35EiP3LbSbrHdpslz21dJpK7Ig_a5XVO-Xk53L-DGnv91kDkcLTooTgPhNkbdoTGFjWM4MFBjjo5NEoNxmjkooA1FyavVByseH8A48I3EQ:1ou9l5:bAazNzsXvyWWjfBmgda2qYjXmX5otdU3CcMGKe34jzc', '2022-11-27 09:58:35.695570'),
('ci9wxyihvpgxk2hg6vsfxvhz1eknblkd', '.eJxNjcsOgjAQRX-l6bqLFhIg7txIfMCKYDBuKo-WIK2B1ojGf3cKLJzN5Nyeuf1gYevR4A0u7t1lZ-MkL6JD7D9ewTkRN5oW7_3WnJJaYoLLXlVmsLoEfcWR2xUkV5VVYqFOaq6efALy6DIunUCC6Hi1rG58JN3mTCHmIQNAac2ggWCjlcgGnug2gwvXibLWySXI4DHGnN34SqDe5VXY_jUg-H6udu-MRDQgQRCiPJ1PKf7-AOUtSyI:1ow44W:3U5q1aRl8aAywp8uv4Rul9-WUpUd3XC1kvlUk_gqJ0E', '2022-12-02 16:18:32.278622'),
('dcy16342ytgbmyi0z8wqz1outfqczcvm', '.eJyrVkovTS0uUbJSMs5KqQoxjwry9clJDS7KNXKJ8s02cAtyS_YrrsxLCjJS0lFKzs1LKSkqzU8GKodyixNLoZyMxLyU0rx0EK8WAMqYG4Q:1ovgPr:JN7ro4sv8ahVrdNGdI94L0tEk-YZRVI_tJMm0ltnSzk', '2022-12-01 15:02:59.840024'),
('dgsg3p882not983zeu5u3qiiu8kw0ibu', '.eJxdkEtPxCAUhf8KYd00BQqlLieuNOOqmpiYTCjQxzzAtjA6Mf53LzNdqGzIOee7hxu-cB_tEvAdPoapCr4Je3XxYXoOH93rO7l_YCaSiXyeNzjD-uRMmKPXgK9yUXEVg3Imuv6mDoNX7qwuoGhxO8m9AATW41sktmNoSLciDhGKAoiisAQaMhy865tZbf3YwETqRM2YYA0wcISQRHfM9eiUfFONvxoQPH-tTjnJZCEyISr08nQdTZvsVAzDLi523o0G6vk_s1X6YF1KzB4W8Ln2LsxjmyckX9Ml33pjj5uV_VMwqGWAaclrWpJWcCoqxqnUneC8ZELJuqaMKGuJbMuC61bXVJRMCw0_U3SWdQWVRuLvH1QHgr0:1ovfq5:FAToN8zgsevrh5SLZCUON7U8TjsfknplXN_ztkD2oZU', '2022-12-01 14:26:01.576917'),
('fzlzgbootplm1v0ch89sevp269goc1dt', '.eJxdkF1LwzAYhf9KyHUp-WjS1LtNLwTdYGzoEGGkSfrhXIJtMxjif_fN7IWam3DOed6Tl3ziNrpxwje42G_08WW5bsqwFPfPi9PIhNne3j1uF5sPcd7jDJuTt9MQgwF8lqOOs-i0t9G3P-rYBe3P-gKKkZ-T3AtAYD28Ruoajrp0a-oRZWgCQYij0JDhKfh2N-hV6HcwkTrRrk-wARg4SmmiG-5bdEq-LftfDQiev1annGaKyEzKEj2tr6Npk4OOU3eIoxsOvYV68c-stTk6nxL7BguE3AQ_DX2dJySf0zFfBevelzP7p6DTYwfTSlSsoLUUTJZcMGUaKUTBpVZVxTjVzlFVF0SY2lRMFtxIAz9DGscbwpRV-OsbXjSA1A:1otlYY:mT2uLaWCqLJ7OfEe6EbhZQomo2A3JjU7TtNOw4UH4es', '2022-11-26 08:08:02.157182'),
('h8cxpqjlfmvuralgroj6x9skoab2evoo', '.eJyrVkovTS0uUbJSMig38Q4ySTRzygwqKgtydwkP8DV1N08z9A42zynILTRS0lFKzs1LKSkqzU8GKodyixNLoZyMxLyU0rx0EK8WAJYeGrM:1otqMf:iSEnIvVoF7Kx36VKB4vbIFMC8e7Wnr9UTKjE-a7JGE0', '2022-11-26 13:16:05.427541'),
('hfj6yswqzzw5uilta9hqbz18pxga3jnn', '.eJyrVkovTS0uUbJSCkrLisjPNUhOM_CL9A8Pz3DzKMkKtPDKcUksygowKM1S0lFKzs1LKSkqzU8GKodyixNLoZyMxLyU0rx0EK8WANnVG8U:1ovgSm:18rAsTUO6k1hji_lz0ks42NMk14RkQUJKbGrX1IVAH8', '2022-12-01 15:06:00.891909'),
('hoij23b3bs2z8428wrnn208fhvpee325', '.eJxVjklPwzAQhf-K5XMVeezWTrlRLiwqFwqiElLlNUkXG5KYLoj_jt3mQH2x3nvfvJkfXEXb9fgGf94d3OG0V1q_bB_o-vEVTnR5u7yfvx_ar262xyOsd970bQw64YPsZBxELb2JvrqoTR2k_5bHpCi5vOweE5Ssp48I1jFU51-CR0BRnwQhFlLDCPfBV4tWzkOzSBO5Ey2aDOsEJw4AMu2Yr9Au-0Y0_xpQWn-uzjkUJeEF5wK9PZ9H8yUrGft6FTvbrhqT6rm4NpXUG-tzYtbpgFDo4Pu2UUVGiiHtinkwdjsb2KuCWnZ1miZKCT6d8JI4URLFbcm0UJxNHIynpCSCWEmN4AxgzBjl2gHRVDutSgA5nuDfP9aTgk8:1ouATw:MXypn1CJperUTY4riOSlPwp_0ymT51Y5lh1Kqe-youQ', '2022-11-27 10:44:56.450493'),
('hoxq6gl2vtyudx06k6kam8zayh95fs0r', '.eJyrVkovTS0uUbJSCqwMCE5MSywwSgypyAt3qXA3dE4rdnMK9TNNT_Pxr8xT0lFKzs1LKSkqzU8GKodyixNLoZyMxLyU0rx0EK8WAOA6G9c:1ou9wH:QCM4L-UFZ1lODuzkM_iVoT0GduomJ9jzGxmjxIwz3_s', '2022-11-27 10:10:09.979655'),
('hrfk6um7d3ih0uqrt61axz47kioy0jw5', '.eJxNjbEOgjAURX-l6dyhhQjqrGEwGBOJOrhUSkujtAZaDBr_3Vdg8C0v5_a82w9WvuocXuPX4p22Sjb-KDIqL_njfHhmrm97vbmtTLfFBJeNEa71tgR9xo77GWpuhDdqonttuen5ABTRaUI6gATR7upZJWNUh82ZQSxCDoDSikEDwc4aVbQ8t7qAi9CJCh3kEmTwGGPBlrFRqAm5SPVfA4Lvx-rwzsiSJiRJUnTaj6cUf3-_T0wf:1otlVu:okv18Q-RKSfb65ESpG5nnhMxTC_Ihdx0Zwikdg_Ld3g', '2022-11-26 08:05:18.638415'),
('i5xdshlibdlfm9ab9a4r3n3ipnxrpm1j', '.eJyrVkovTS0uUbJSKvYtTQm3zPVxtixzd8koqgxyLa8wCiioMsjx8vRIi0xT0lFKzs1LKSkqzU8GKodyixNLoZyMxLyU0rx0EK8WAOTtG-8:1otS20:chL534GYEAH056wMh-G78HmJ3Q5XjQQVu1WU3KLXxBM', '2022-11-25 11:17:08.209590'),
('jn7uh190cemvq90f3shbki09mf1v97iv', '.eJxtjl9LwzAUxb9K6PPo8q9N6-MexkQnKkUQhJE0t03XLZltIwzxu5vMPjhYCISc8zvn3u-k9TBOyV0CPZjNc9UXQ_W-3r6wx9dxc79ixXoYJrXKPpNFUh-tngbv6oD708FJPS4ppnRJSLwi3Z_aGRulvw0dvNTS0YDChTXSam_b2zCfG3vjpP2S50BR_Heieg7hID18eAINQya-klhEKJrCB2MgNsYnZ9tqkFvXVSERZ6Gqi3Ad4MARQiLdMNuiY9S16P41oDD-Uh19sihwvshzgd6eLtG4yU76yez8CMOu06GeF9eiknUPNjp6HxZwae3sNHQqjUg6u2O6dRoOq5m9KjByNDEtREMzUcqsxFrmDWQ8F41gJc-IqjNd0oZyYLwmUOaUqRw4aIIZKRVrCgXJzy_VsJme:1ouSFR:8M2O39JbWQVpk_-laUo2aRomZ1HVWGnHa-jrwNcHIZs', '2022-11-28 05:43:09.611866'),
('kc98p9m2o32r13xx38oz150842hqfmou', '.eJxVjs1qwzAQhF9F6ByMZFuS02PTQKFNm4PJoRSCrB9bSS2BbQXc0nfvKvGh0UXM7Lez84PbaMYJP2ByeN8P7VN9et5s5st2Dvm33Ed6GPvta_PhHF5h1Xs9DTEowBc5yriITnodfXtT5y5If5EzKEZuL7kzQGC9fEZqbIG69EvqEc3RBIIQQyFhhafg23qQu-Bq2EiZqHYJVgADRylNtC18i_rka-H-JSA4f41O8zJjlGecC3R4u66mJkcZp-4YRzMcnU4li3uzkepsfJroExQImQp-GlyTJSRbpmO2C9p8PS7sXUAnxw62jbDGEs7KtdKlJVoIRvNCqKoUzFAuJSkkZ5yRylJBoRwnithK2HVuwbX49w9IqoH7:1owMmr:PTBBRORsvmwwkp97I7TchGDnI_kJ5M5tMMUgoDRjL0A', '2022-12-03 12:17:33.797450'),
('kw014f12poclre0sfb1qrbd3zl2yq1pj', '.eJxdkMtOwzAURH_F8jqK_IgdhyWqYEELqlSVDVLl2M6DtrZIYkSL-Heu2ywo3lgzc-74yt-4jW6c8B0et6XvFw9yuf2aFq8vj0s-fJy1ag_q7OKwXuMMm6O30xCDAXyWo46z6LS30bdXte-C9p_6BIqR60nuCSCwnt4idQ1HXbo19YgyNIEgxFFoyPAUfLsZ9Cr0G5hInWjTJ9gADBylNNEN9y06Jt-W_Z8GBM9fqlNOM0VkJmWJts-X0bTJTsep28XRDbveQr34Z9ba7J1PiX2HBUJugp-Gvs4Tks_pmK-CdYf7mb0p6PTYwbQSFStoLQWTJRdMmUYKUXCpVVUxTrVzVNUFEaY2FZMFN9LAz5DG8YYwZRX--QURUoHz:1ouFKu:-eYVOOhimG62vEp7sLcrovVU9huIESBNwmwbOMbgzgQ', '2022-11-27 15:55:56.110222'),
('l35i52aiex5er7w6yqmt1a1jnfchrwis', '.eJyrVkovTS0uUbJS8jdLLPAqigwsrHTKcXaOqEoNKzXyNwzyzoxMTHTNzDBS0lFKzs1LKSkqzU8GKodyixNLoZyMxLyU0rx0EK8WANUYG6Y:1ovHE7:ysUsyGR9ObH3AxYmP4Rr2D3CZRp7tYbBil0h8eS9VOw', '2022-11-30 12:09:11.814577'),
('l9j7i0purbj4mke7u26zd81pnu9c21ya', '.eJxNjcsOgjAQRX-l6ZqQFhJA15qQIERTghs3lVfRUBBaEzD-u1Ng4Wwm5_bM7QfXuhwV3uNrH_E4TFj8EOcwmsPXIeiD-2WXzSfGjszHFs5bWahBdznoG45cbyC4LLSsV3qKjss3n4Acso5JJ5Agim6alpWLhNmcSkQdpAAIKSk0WFh1sk4HHndNChemE6WNkXOQwaOUGrtyZY1akxd-89eA4Pul2rxTOyCe7Xk-ypLllODvD65LSuE:1ouGsG:IFUbveOxKfuznLnsMXrHvNLCEyptCO9nwb2CVPxupPA', '2022-11-27 17:34:28.347513'),
('lpdtn3n4wks9tq6d3d6i0cyyxxnzi1y7', '.eJxVjktrwzAQhP-K0NkYrWzHSW81pU8SCjU9lEJY62E5aSRqSy2h9L9XSnxodBEz--3s_NA-qMnTK7rDjW5uFuL2jTXfvgnmsf18My_r67vncF89rGhGxcFKPwYnIj7LCcMsDFoZbH9We-PQfuExKs7OL7nHCEXr6T2A0gUx6UewBDjxUTCmICZk1DvbtyOu3dDGjZRJ2iHBIsKRA4BE68L25JB8WQ__Ekg8f4pOc57VwLJYgLxuTqupyRaDN9swqXE7yBhfLS_NDsVe2TSRu1jA5cJZPw5dnpB8nk752kn10czsRYDBycTtkhVcAupCARSAQvGKV6Vc1lCvpJKLDktZllwLgSiYXJZMV9BxLaGQUC86-vsHGKCCZg:1otW06:2xN4QNW7XlqkB6PgV3LDAsRndPMIpmzsb9FlVbjCS6Q', '2022-11-25 15:31:26.353943'),
('mfwa1ivgu6gftrxynprqqfnk7iges3ng', '.eJyrVkovTS0uUbJSMow09_HO9TQ3Ck3L93Vx80zKzksOL7KwzPVOTA52CTBS0lFKzs1LKSkqzU8GKodyixNLoZyMxLyU0rx0EK8WAKAJGt0:1ou9ZF:7H27Arj6-Lvg8paOBnRWV5tqcktVE13FvONG2tyQ5zI', '2022-11-27 09:46:21.909649'),
('ml7kqgdx675v4ei64kyph7bary9l512x', '.eJyrVkovTS0uUbJS8is0T83JK3IuCElMyzL3NU3LLncOTQ_ItkipDCwuTSlQ0lFKzs1LKSkqzU8GKodyixNLoZyMxLyU0rx0EK8WAP3VHGs:1otuH2:arSoxB6miSLL8XXAoyQBtxc6K3Cda0OSEZg3eOJGiBE', '2022-11-26 17:26:32.798267'),
('n6r5ecw041dlopwthtlqvcmnnxc27kfw', '.eJyrVkovTS0uUbJSKjJNSUlJN_ZMSgzLr3B0y01MqUgKyA-t8vE2KwvPdTNV0lFKzs1LKSkqzU8GKodyixNLoZyMxLyU0rx0EK8WAOxVHAg:1otjsk:A-CasuCN1OqC7sNdaTk3z425clwABFNH57eIGEa-7-g', '2022-11-26 06:20:46.205549'),
('o07y4t5vv572v92an8oifekn265anq5y', '.eJxVjs1OwzAQhF_F8rmK1kltJ9wKCCFKuRBxqJAq1z9xKLWlJAZViHdn3eZAfbFm9tvZ-aFdsuNEb2j0_PvJ3t89-GZ8rWEV5PbxsO9gvYVn2xlDF1Qfg5mGFDXisxxVmoVXwaTQXdTBRxW-1AlVCZeX3RNCaK3fE7OuIj7_igXCSjKhALAMExZ0iqFrB7WJfYsbOZO0fYY1wsgxxjLtqtCRY_aN7P8lEDx_js5zVtQgCiEkeXs5r-YmO5Umv0ujHXa9wXheXZt7pQ825In5wAKx0DFMQ78vMlLM07HYRGM_b2f2KsCr0eO2lc46EHzZaLN0YKTkrKykrpeSWyaUgkoJLjjUjkmG5QRocLV0TenQdfT3DwZVgSQ:1otluM:qPW-uQC32Ucjux-0Pf-wNu1Gta38khWtE8ovjdQIZSE', '2022-11-26 08:30:34.659430'),
('o7hrudwman54n3twfnh58vbvazyr4dq0', '.eJxVjs1OwzAQhF_F8rmKsnFi19yAIiFouFBxQqoc_yRpUztKbKSCeHfsNgfqizUz387uD26Dnj2-w-O9DVZuxQE23-NQb-To-Tg-mych34ft4wteYXmyyk_ByYgvchZhEZ2wKtj2qo6dE_ZLnKMq8utL7jlC0Xr9DKANQV36BVgEBfJR5LmG2LDC3tl2N4na9bs4kTrRrk-wjHDkACDRhtgWnZKvWP-vAcX1l-qUQ7bOaUYpQx9vl9F0yV4E3-3DrKd9r2J9ub41GyGP2qZEHeIBLpPO-qlvsoRkSzpntVN6eFjYm4JOzF2aZswUFeOi4rkS1OiqpMwwwssKGlkpXpii1KSUoDktSEN1qRXkBHhDzLrR-PcPwhKDEQ:1ouFTF:5o6YNpJVOTtg5DUtMmULvWI0ykyq7s2uReVGmV4rk7o', '2022-11-27 16:04:33.001831'),
('ogwa3zffn5ccl66dum98e3bcbw64dtuk', '.eJxVjl9LwzAUxb9KyfMoucmadL5tMEFkIlhEhzDyt42zCbSNY4jf3WTrg8tLOOf87rn3B7XRjBO6Q66PZP22Jc7uhvfNieI19Mfmpd-7h9Nzdb9HC6R6r6chBpXwWY4izqITXkffXtWxC8J_i3NSBF9fds8JStbjRwRjadHlX4AvgBRTEhgbSA0LNAXfNoPYBdekidxZNC7DKsGJA4BMW-rbos--5u5fQ5HWX6pzDmWNWckYL16fLqP5koOIU3eIoxkOTqd6xm9NKdTR-Jzoz3RAKFXw0-BkmZFyTsdyF7T52szsTUEnxi5NYyk5W1WsxpbXWDJTU8Ulo5WF5QrXmGMjiOaMAiwpJUxZwIooq2QNIJYV-v0DL9GBPA:1ok2rw:uoogq-RTiPryMm_XV0p5BJyOGne-g3XnEL7qoodf2KM', '2022-10-30 12:35:52.671648'),
('ou46ylowp7g31xp3fsd06357gdfh2owq', '.eJyrVkovTS0uUbJSSqv0iQrxK84KTfcwc3RK83XOdsowT88PMysoy_UICzNW0lFKzs1LKSkqzU8GKodyixNLoZyMxLyU0rx0EK8WANA3G44:1ouMmY:yS7Bh5TjoC0vmSilhjGBBTxtVAKvO1P5a89utbOoWS8', '2022-11-27 23:52:58.567887'),
('ow2yn3zn0vwkzvso5lc0kw7mh8w2ixrl', '.eJyrVkovTS0uUbJSKigoDCzz9g4uMTQuDM03SsyzNPEwKMqrDPC2CLFwS05R0lFKzs1LKSkqzU8GKodyixNLoZyMxLyU0rx0EK8WAMpWG2g:1owMCA:C-O4yWeatEp_FQdrwg2OMr1g28X6whuyAkUg3kVqVvk', '2022-12-03 11:39:38.921616'),
('qxjt1708m6pa24m96t8u4l15gspqadvj', '.eJxVjE2PgjAURf9L14YIbSl1aQLGOGxMJo5uyGv7Sv2gZCgdYybz30ciG5fn3nPvL2kjhpGsCGzWx2L3-VVvsXqUZQUfe3e43cufDr43p0dFFkR33oxD7PVTnzFAnMGBN9G3L2ogjq6JAYfmbJ4RK95DBfqKfmrMBXzbJ7r343BWyaQkcxuSujd4W8_u24GD4Ka1EDbjQgKXSwO5Rc5yYQWVjKdKcyMzmzGkTKco84yqHBmadElTqagtFJK_f7xBUs8:1ouASh:XzGBpbfTUS37JPaDrJm7MJH7jhTLpkpou_zo8jg_nxg', '2022-11-27 10:43:39.917037'),
('r78qc8vwsqpplp7dx6ye7rc0e7tpcm5a', '.eJxVj0trwzAQhP-K0DkYrR-S02MLJSUkPTRpaSkYRQ_bcSJR2yoJpf-9q8SHRhcxs9_OMj-0DmYY6R19e35c7z_0Q7fdnqwqjzrPu5cntjjIxVf-vjzRGVVHp8c-eIX4JAcZJtFIp4Orr6qSYWyqMJi-ajVaRXZr7qTqjIsTvZeu9onybuzbXRKRZJoOycprc7if2JuARg4NbhthjWW8yOdK55ZpIQpIM6HKXBQGuJQsk7zgBSstCGAAnClmS2HnqUXXYmjXeOm-5RnTUnZ90T1jH7SWnwGMzUgTfwmOQEpGFIwZwLIzOnpXb3q58u0GN2J9smkjrBBGDgAibTNXk2P0tWj_JRA8f4mOc0hKxhPOBXldX1YZ_f0DnGGBdg:1ouAKX:j_5gB4OjRyxsZxEXIWc4MXfjsLVJDOkHkPNv_ZKDcgE', '2022-11-27 10:35:13.992921'),
('rm98l8448yxcg8m6vmgu1khqqpeoasxb', '.eJyrVkovTS0uUbJS8gpwMfbLD3fKN8jK8zfPNUkMMjL1yPfPdXVMzalKD8pT0lFKzs1LKSkqzU8GKodyixNLoZyMxLyU0rx0EK8WALGSGzk:1ouMeW:ovsKLCU5HdgdBntBMNtU_5GaW57i7VIT69GQm21GL0Y', '2022-11-27 23:44:40.982472'),
('ryqr8zpy4cu3rv9ekndlnz3lpqm3om51', '.eJyrVkovTS0uUbJSMvNOzzGpCKzy8glJqTQuSTQ3C65M9LD0Ngkw8jGKTHFW0lFKzs1LKSkqzU8GKodyixNLoZyMxLyU0rx0EK8WAKsvGuM:1owdxY:j_B55qzRkFp0YTWSt63S_r1yYwg0WzyWMbFZSw1Mb4M', '2022-12-04 06:37:44.467171'),
('s5dsvpre86fgfbp311ac24pyy4v7quuu', '.eJxVjktrwzAQhP-K0TkYSdYj7tF9QUt6KCGFUgirl-2mkVrbKiSl_71S4kOji5iZb2f3B7XRjhO6Qur1ZtNwgvknVl_N_e0zZfh4dzi-HBuz0w_XaIH03ptpiEEnfJYjxFl04E307VntugD-Gw5JUXx-2T0kKFmPb5FYVxVd_oH4gtBiSgJjS1LDAk3Bt-sBVqFfp4ncWaz7DOsEJ44QkmlX-bbYZ9_I_l9DkdafqnNOyiUWpRCy2DydRvMlW4hTt42jHba9SfWSXpoK9M76nJj3dEAodfDT0KsyI-WcjuUqGPvRzOxFQQdjl6cV506QioMyxFIBDpZCCicdaKDSUCJqZqpau1oxwZgSmmiOcc0IZ9JR9PsHmISBsw:1owe7S:TyVfk1DT33Dy59qfw8FuTi5yZ5QDMCeincpokP3ISYg', '2022-12-04 06:47:58.942899'),
('sdmjl8c4o8rnq3f1039vjx0x0335nhmz', '.eJxVj8tOwzAURH_F8jqK_Igdh2WlIhCUbqLCAqm6sZ0HpbaUxFQF8e_YbRY0m2jmnhlrfnAX7DTjO_xcvn6fjtsGtgXb8fUa5BvVdXcq4Z7Njw8KZ1gfnZnH4HXEFzlBWEQPzgTXXdUewtzvw2TH_WCiJcit2YA-WJcu5gNc53Pt3TwOTZ6QfLlO-cYb-7la2JuCHqY-ppWoWEEbKZgsuWBKt1KIgktQVcU4BWupagoidKMrJguupaa2Ja3lLWHKpFGH3oP7gnNsY-T6Jfcc90Tr6T3EAEd9-gN1iDI0R0GIpXFshmfvunqEjR_qmEjzUT0kWEc4cpTSRLfcdeiYfFMO_xpQfP5Sne40U0RmUpZo93KJEvz7B274gMk:1ozYLh:U6J9yHqPKldGxWG9odzsSN9fQ8KmcvzNWxL3u2DGb3M', '2022-12-12 07:14:41.974110'),
('ssp37zzwx8d0hmszsoxvn6op3gidy35v', '.eJxtkG1LwzAUhf9KyWfpcm_XJvXjkCG4TZAiCsJI89LWbclom-kU_7vJnODAEEjuuc85ueSTNF4PI7km3aJ5Xzw8wcf0_gZWb_NR43x2KDPNrb_F54pcEbmzauy9kwH3-60TapggRZwAxF0LuWl65_fp3jZnfBD-f1gZyjhDyutfuhVW-XC9JqHatE7YgziGCunPiuoxQEG6e_GgTZa08RRgE8BkDAWlGk5ho7NN1Yul66rgiJlJ1UVYBjhwABBpk9km2UVdse5PQhKeP0XHPqYMaBoGSB5XJ2ucZC382K79oPt1p0J8zi7F-Bfaxo56DQO4VDo79l2dRiQ9d4d06ZTezs7sRUArhja4p6agKDDThsvCQIlQM824yQuaA8-mJerSFJLXBc8EKMlVzrhEWiuqJeNIvr4B5uSVTw:1otT1b:iN2dnLjp29BFkP8HPpqQIKMALFK2lGWww5tlAMSTDJE', '2022-11-25 12:20:47.087153'),
('tngj719onepl0x7rauulnz9cx863q2bg', '.eJxdkF1LwzAYhf9KyHUp-Wi61js3hIHWG8ecIIw0ST9Wl2CbyKb4332z9ULNTTjnfd6TQ75wG8zk8Q0up2HlT7tD9Rlud-vd07henV7en4e7bamX2j_gBKuj1X4MTgE-y0mGWXTS6mDbqxo6J-2HPINi5HqiewYIrPvXQE3DURdvSS2iDHkQhBgKCQn2zrabUVau38BGzESbPsIKYOAopZFuuG3RMfp60f9KQPD8JTrOWbKgJIECaPt4WY1N9jL4bh8mM-57DfHin1lLNRgbJ_oABVyqnPVjX6cRSefplFZOm7flzP4J6OTUwXYhSpbROhcsX3DBCtXkQmQ8l0VZMk6lMbSoMyJUrUqWZ1zlCn6GNIY3hBW6wN8_UuKCDA:1otRVa:pncPlgCCXASbgaxUHo3avp3EWnX0gSItiL8XYdIc69E', '2022-11-25 10:43:38.165943'),
('u03cijnsrxqvw8xc5r1ekivmqdxf0757', '.eJxVjstuwjAURH_F8jqK_EjspDtaqYsiKhaAuqiE_EwMxUZJXIGq_nttyKJ4Y83MuXPvD-yiGSf4BLfrFXVn2Vze7HHntmzNkdWX4dV-LBcv5HCGBVQnr6chBpXwWY4izqIXXkff3dWxD8J_i2tSBN1fdq8JStbyM2JjKejzL7AHmIApCYQMTg0FnILvNoNYBbdJE7kTbFyGVYIThzHOtKW-A6fsa-7-NYC0_ladc1w0iBWMcbB7v43mS_YiTv0-jmbYO53qq-bRlEIdjc-JPqQDQqmCnwYny4yUczqWq6DN1_PMPhT0YuzzNOeW1LwVdYu0YNbUFeOW07aqsVS1bokllaGVwqZlhEpmKqMxoriV1DbSwN8_iJqCRQ:1ouC6P:yqHJdUzodL5oTXu3qsBBcDRMmlACa4L1CS_OAvF36Eo', '2022-11-27 12:28:45.816006'),
('ubthgkaf2a79892p2xyldlfv154ptn2q', '.eJxVjs1uwyAQhF8FcY4sCMbEvaWVeqlSKWqaUyWL8GNIGpBsiOJWffcuqQ8NFzSz387ON-6zGRN-wFP2x6-aP119ulxP2-1a99yp9vnN5C3fv2_wAqtz0GnIUQE-y1HmWTgZdA79nzq5KMNFTqAomV-xJ6DAe_nI1FiGXPklDYguUQJBiKEQscAphn43yE30O9gooWjnC6wABo5SWmjLQo_OxdfC_0tAcP8WXeZtRRirGKvR_vW2Wpp0MifX5dEMndcQz9m9eZDqZEKZ6CMUiJWKIQ3-UBWkmqdjtYnafD7O7F2Ak6ODbSOssaThdat0bYkWgtMlE2pVC25oIyVhsuENJytLBYVyDVHEroRtlxZci39-AehWgkg:1ou5Na:FhqtPKWMfYtqVTDBnNpRtmhDzUH3KUJ0udzuoKfAfqM', '2022-11-27 05:18:02.800569'),
('v3yur40g5udpmntk2peqhgp88pllde5e', '.eJxVjMtuwjAURP_FaxQlfuGwK1QtC0AIUYS6iexrO6EQG8U2QiD-vUFkw_LMnJk7qpMJEU3Q7nO-P5LztfWLH0JvX7r9sOPb5XvVrjez37hFIwSt07FLHnp9wCDTAI10Orn6RZVMsalSMF110H3E8vdQSTga92z0n3S1z8C72B1U9lSyoQ3Z0mtzmg7u20EjQ9OvBSsxLRRnmI8JwwIsZ4wSLkVZYlJIYwqhaM5AQYk5JcChMDa3htgcCy3Q4x-gzFIS:1ouAGS:VKhCGRB0ttuUjh31Zc2isxDPh5ZolV2K5k_UtUC7l0k', '2022-11-27 10:31:00.075170'),
('v7ddwcrhz721ao8e7y11fiyvij01ovri', '.eJxVjM0OgjAQBt-lZ0NaS1v0KCc1BmOMBy9kbbsUxZJQ6k-M7y5GLh5nvtl9kSra0JM5OeNDAW_yA65hByvBj9t8uX8uXHGp711xIxOir970XWz1kI8YII7gwJvoqx-VEHtXxmC7sjaDEvxfnkBfrP8u5gy-ahPd-r6rT8k3ScY1JJvW2GYxtn8PHAQ3XFuFFqkU6UybFKlRSrApVzpLlbBMAlAOUkhBM2SKUcYk1RQzhbMpDhbJ-wPI2FIP:1ovgUn:zkupK300rzvrJZ47oI7S592Z_CxSbosPBYfh_ZxjviY', '2022-12-01 15:08:05.879079'),
('vmi36nvxynee6a11ll94nwsxybx64dw3', '.eJxNjUELgjAYhv_K2NnDpqDVTaIionmRCOky1E0xN9TNsOi_90099F0-nnfP9-6DpS0Hg3eY2bt-xVk2xd3zJEaedAeWnJvt_s2OiRYN9nDeqsL0Vuegrzhwu0LFVWGVXKipNFcjn4B8soxLJ5AgujwsLUWAKrc5VYj6yAAQUlJo8LDRSqY9v-o6hQvXidLayTnI4FFKnS0CJVHr8iKq_xoQfD9Xu3fqbUjohWGEbmw-Jfj7A4qLS94:1otoed:Z-YfmeUu9XMIKEfHiecvvOrt6XItBnvD7bDKjVYKoN0', '2022-11-26 11:26:31.187544'),
('vqrgpnmiu4n32hqp9h8rrn2af1peixtt', '.eJxNjcsKgzAQRX8lZC2SKPjoFxSkXbSpi9JNMJqkagKaCFL6752oi85mODdnbj5Y-nZ2-ITfdzb2xJ2fdaLt8qiGMl2Gm5GqsKIsK40j3IxGuMnbBvQDZ-4PUNwIb-ROvbLcLHwFSsg-IV1Bgqh6edp2KVJhc2oQTZADIKSl0BBhZ41kE79YzeAidCKmg9yADB6lNNhdaiQaQy5y_deA4PutOrzTuCBZnGU5qq_bKcHfHzZnS4E:1otqMk:7SHlZRlIWqESsfyIP86S38HZXcuD46yvHzTOoc6YOLw', '2022-11-26 13:16:10.478474'),
('w5zs0bf7k0s19z7hnzn0np4kfutcpbw7', '.eJxNjdEKgjAUhl9l7HoXm4JWlwVJRCNJgqCbpXNKuJFuoUbv3pl60bk5fP--8--DlZOdxRuc7m9q7Lc84b3rdzyX6zDZtZfDw9hzWowvTHDe6MK2zuSgL9gJt0AldOG0mulZGaHfYgAK6Dw-HUCC6Hh3TJYhqvwWTCMWIAtAqWTQQLA1WmWtOJk6gwvfibLayznI4DHGvF2GWqHG50Vc_zUg-H6q9u-MrGhEoihGVz6dUvz9AW06S8M:1ovfDx:WZFwKO2AyJHdBlMzOxWz5XvLBCFinFNZl12HYxjCpjo', '2022-12-01 13:46:37.905996'),
('wuunznwqjg9x1wd334nt23zuap3ao5vg', '.eJxtjktrwzAQhP-K8Tk4Wjm2nBwDPbQlhRTTllAIGz1s5yEFyyqE0v_eVepDAxECodlvZuc7bYL2Q7pIK1_uuv1D_bo8-fXm8DRfvVcf6zV_3LAl9xeWTlJ5smrog5OEh_PRofJTzjifAsRbZPtzM2Iew33oGFChI1Jf0RatCra5z_Ix8NA6tF94IYqzvxPVC5lJev4MoE2etPFFsAnwZKAPYxpstA_ONnWPK9fV5Ii7krqLsCSYOACItMltk5yirkT3LyGh9dfoOOcTAWxCBZK3l6s1NtliGNpt8Lrfdorii_xW3KE8aBsnak8FXCadHfpul0UkG6c-Wzmlj8uRvQlo0bfk1sJow8piNpdqZpgSogCeC1nNRKGhRGQ5lkVZsMoA1QQomWSmEmbODakm_fkFdpGYCQ:1otSFN:aY1hZz12B_tWzXeU6Biek6pC4TLHuJ6ccEN1Xf7A6-k', '2022-11-25 11:30:57.577511'),
('x7j5p54gfoq6fku2c1eh75kr01kogvfr', '.eJyrVkovTS0uUbJSCokKcKwIdvPLKIt0TcyuyvdwDi12q_T2KsowizILj3RW0lFKzs1LKSkqzU8GKodyixNLoZyMxLyU0rx0EK8WANoSG7g:1ovgOg:BmKf2-ApsCmPLX8A4al78enEq3gxRHVETNFM-iCVt3s', '2022-12-01 15:01:46.914665'),
('xe807dcw0urzpjc8dr0gb1gsnpnzicfe', '.eJxVjktrwzAQhP-K0DkYrR1LTo-FFpqSFEpISygERQ_LeUitbZUmpf-9q8SHRBcxs9_Ozi-to-l6ekcfX55WD59fR7t6dz8G9lNxmp1cmC5Pb9vJazenI6oOXvdtDArxQXYyDsJJr6OvL2rngvTf8ogqZ5eX3CNCaD1_RDC2IC79EjyBnPQoGDOACSPaB18vWjkLzQI3UiZZNAlWCCMHAIm2ha_JIflaNFcJBM-fo9McsorxjHNBlvPzamqylrF369iZdt1ojC-LW3Mj1c74NNFbLBAyFXzfNpssIdkw7bJZ0GZ_P7A3AU52DreNsMYyXo4nSo8t00KUkBdCVWNRGuBSskLykpessiAAy3GmmK2EneQWXUv__gHA-oJG:1owe25:35qN2HJ8mD3eCcL_jk_Kxr5JfsWE2aVKeA_M3OuKoyk', '2022-12-04 06:42:25.546956'),
('yiyytljwksqcf8hdnsw3jvjr0b4r2idv', '.eJyrVkovTS0uUbJSCnQsLI80CvINMyv1zHX3Kra08HIxN3LOKixJc0v3yjZS0lFKzs1LKSkqzU8GKodyixNLoZyMxLyU0rx0EK8WAKxIGwI:1otpMX:ulBzK2NSSMl5BYfsG1jMdF1bd2N1qV2JmSVKvVJ13pk', '2022-11-26 12:11:53.239734'),
('z0o8vpop80iquqycjknxhlc6x9bfxkay', '.eJxVj71uwyAUhV_FYo4sro3B7tYuGaK0i9WhqhTxa7upobIhaVz13QuJh4YFnXO-e7j8oC7o2aMHZOFteTxvd0axdsTnZllO31Dj7dfiX-aFKbRBcrTKT8HJiK9y5mEVPbcq2O6mjr3j9sQvURX4dpJ7iVC0du8BtCmzPt0cbAZF5qPAWENs2CDvbNdOfO-GNk6kzqwdEiwjHDkASLQpbZeNyVds-NeQxeev1SmHvMY0p5Rlr8_X0bTJgQffH8Ksp8OgYj0l96bg8qhtStRHXMDl0lk_DSJPSL6mc753Sn8-rexdQc_nPn1eGKCccyHLBmpGGmIMpYIWoqoKwoBQzKmQDVQaG8HLguCKsLpWoOtC1BL9_gFyCYKQ:1otuM9:4UeOZzhB0kCjnHkxakREiE140SKod-Cob8Zh5_Fa0Es', '2022-11-26 17:31:49.052810'),
('z32418zzgg8eyn8vyrlpf6yfxi0tsc7b', '.eJxtj1tPAjEQhf_KZp_J0gul4pu-qUCCbngyIbOd7gXYluy2KjH-d6fIgyY2TZpz5psz08-8iXYM-W1eL08PpSqXL5th-9g_r-XHtlrUvY53XQzufZNPctM7DEP0hvB4OnrAcSqYEFPO09XF_tRcsRHi_9AxAoIXhNoL24LD6BqCSR1aD-4NzqQE-znJPRNE1tNr5LaWWZte4C7jIgskGLPcpbDgXVMOsPJdSR0pMyu7BBuCieOcJ7qWrsn65KPufiVkNP4Snepiojmb0ALZdn1pTZvsIIZ2F0c77Dqk-Nnir1mBOViXKrinBXxhvAtDVxUJKa7VsVh5tMf7K_snoIWxTZ-XVigAtDeAyihUSiqrFwphjgrmBlHJWqtqxioN0s6VEJxbjkyAZUKz_OsbnL2TpQ:1otQCB:l_ZoNZWAExWkIURy5Qgv4fWH6yQsrkXxDrdfceWXPCo', '2022-11-25 09:19:31.501683'),
('ze2ev8ugcvvua8m5vjmbzlizcukp2673', '.eJxVjs1KxDAURl8lZF1K07RJ605Xoo4o1EFFGPJz09SZSbBtBor47iZjF0424fvuuSf5xn2AacZXuDwtR2lf794f5C394ocXs2V9B2_2Wj0v26cGZ1gdnZ7H4FXE1ziJsAYrnA6u_0t764U7iSV5i7-T2iVCsbr_CAQMRTbdgjhESjTHUBRAoiHDs3d9N4qNH7q4kZyoGxKsIhw5QkiiDXU9OqZe8-GfAcXnz-o0J1lTsIwxjraP59X0k50Is92FCcbdoKO-ai5LKdQeXJroz_gBnyvv5nGQeULydTrlG6_hcLOyFwIrJpu2OTdlzVtRt4UWzEBdMW44bauaSFXrtjRlBbRSBFpWUsmgAk0KSlpJTSMB__wC9lSCiw:1owOKf:EjsHNWjsfJ93QmkiqiMSK7ZvTPVG9KCsTDQW4QJE98A', '2022-12-03 13:56:33.022791');

-- --------------------------------------------------------

--
-- Table structure for table `history_history`
--

CREATE TABLE `history_history` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `hanh_dong` varchar(200) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history_history`
--

INSERT INTO `history_history` (`id`, `fullname`, `phone`, `hanh_dong`, `create_time`, `user_id`) VALUES
(1, 'Đinh Công Mạnh', '0981863824', 'Tạo lệnh rút 1000 VND vào ngân hàng 0981863824 stk 0981863824', '2022-11-13 15:56:06.918784', 50),
(2, 'Vu Xuan Phuong', '0877946666', 'Đánh dấu lệnh rút tiền ID #1 là thành công', '2022-11-13 15:56:27.144335', 48),
(3, 'Vu Xuan Phuong', '0877946666', 'Đánh dấu lệnh rút tiền ID #1 là thành công', '2022-11-13 15:57:58.838689', 48),
(4, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Nguyen van c - Số CMND 23985723857', '2022-11-13 15:58:22.264184', 48),
(5, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Nguyen van c - Số CMND 23985723857', '2022-11-13 15:58:23.027768', 48),
(6, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Nguyen van c - Số CMND 23985723857', '2022-11-13 15:58:23.592133', 48),
(7, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Nguyen van c - Số CMND 23985723857', '2022-11-13 15:58:24.103557', 48),
(8, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Nguyen van c - Số CMND 23985723857', '2022-11-13 15:58:27.526088', 48),
(9, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Nguyen van c - Số CMND 23985723857', '2022-11-13 15:58:33.029791', 48),
(10, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Nguyen van c - Số CMND 23985723857', '2022-11-13 15:58:34.569930', 48),
(11, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Nguyen van c - Số CMND 23985723857', '2022-11-13 15:58:36.074142', 48),
(12, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Nguyen van c - Số CMND 23985723857', '2022-11-13 15:58:41.229240', 48),
(13, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Nguyen van c - Số CMND 23985723857', '2022-11-13 15:58:47.930142', 48),
(14, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Nguyen van c - Số CMND 23985723857', '2022-11-13 15:59:32.366624', 48),
(15, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Nguyen van c - Số CMND 23985723857', '2022-11-13 15:59:34.982173', 48),
(16, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản gamelobby123 - Số CMND 12321132', '2022-11-13 15:59:40.894692', 48),
(17, 'test account', '0962290920', 'Đóng băng tài khoản 0877946444566 - Số CMND 0877946444', '2022-11-13 16:00:19.369866', 53),
(18, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Cuong - Số CMND 38383839', '2022-11-13 16:00:24.816253', 48),
(19, 'test account', '0962290920', 'Cộng 24000000VNĐ cho 0877946444. Số dư hiện tại 88000000', '2022-11-13 16:01:00.986226', 53),
(20, 'test account', '0962290920', 'Đóng băng tài khoản Nguyen van c - Số CMND 23985723857', '2022-11-13 16:01:28.288579', 53),
(21, 'test account', '0962290920', 'Trừ 2800000VNĐ cho 0866566755. Số dư hiện tại 0', '2022-11-13 16:01:45.786534', 53),
(22, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản 0877946444566 - Số CMND 0877946444', '2022-11-13 16:04:42.876307', 48),
(23, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản 0877946444566 - Số CMND 0877946444', '2022-11-13 16:04:44.094762', 48),
(24, 'test account', '0962290920', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-13 16:06:54.097374', 53),
(25, 'test account', '0962290920', 'Mở băng tài khoản Nguyen van c - Số CMND 23985723857', '2022-11-13 16:07:25.510932', 53),
(26, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 00:04:19.525522', 48),
(27, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 00:06:31.939239', 48),
(28, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 05:45:09.513119', 48),
(29, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 05:45:11.060203', 48),
(30, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 05:45:18.311882', 48),
(31, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 05:45:25.246119', 48),
(32, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 05:45:26.960467', 48),
(33, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 05:45:27.774366', 48),
(34, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 05:45:28.413497', 48),
(35, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 05:45:28.875261', 48),
(36, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 05:45:29.412045', 48),
(37, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 05:45:36.063222', 48),
(38, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 05:45:41.708153', 48),
(39, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 05:47:31.726016', 48),
(40, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 05:47:32.568607', 48),
(41, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 05:47:33.689152', 48),
(42, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 05:47:34.756579', 48),
(43, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 05:48:38.956148', 48),
(44, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 05:48:39.909010', 48),
(45, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 05:48:46.943508', 48),
(46, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 05:48:47.792033', 48),
(47, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 05:49:02.641914', 48),
(48, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 05:49:04.378903', 48),
(49, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 05:49:46.957970', 48),
(50, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 05:49:47.924912', 48),
(51, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 05:49:51.126407', 48),
(52, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 05:49:52.557890', 48),
(53, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 05:49:53.973804', 48),
(54, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 05:49:54.941254', 48),
(55, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 05:49:56.223559', 48),
(56, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 05:49:57.413000', 48),
(57, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 05:49:59.473260', 48),
(58, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 05:50:19.341494', 48),
(59, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 05:50:21.561842', 48),
(60, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 05:50:29.842666', 48),
(61, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 05:50:33.611784', 48),
(62, 'Vu Xuan Phuong', '0877946666', 'Cộng 880000001VNĐ cho 0877946444. Số dư hiện tại 968000001', '2022-11-14 05:52:08.393243', 48),
(63, 'Vu Xuan Phuong', '0877946666', 'Cộng 9680000012VNĐ cho 0877946444. Số dư hiện tại 10648000013', '2022-11-14 05:52:31.798150', 48),
(64, 'Vu Xuan Phuong', '0877946666', 'Trừ 10648000013VNĐ cho 0877946444. Số dư hiện tại 0', '2022-11-14 05:52:58.029900', 48),
(65, 'Vu Xuan Phuong', '0877946666', 'Trừ 0VNĐ cho 0877946444. Số dư hiện tại 0', '2022-11-14 05:53:37.206468', 48),
(66, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 05:57:13.722376', 48),
(67, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 05:57:17.542156', 48),
(68, 'Đinh Công Mạnh', '0981863824', 'Thay đổi thông tin tài khoản', '2022-11-14 05:58:58.800729', 50),
(69, 'Đinh Công Mạnh', '0981863824', 'Thay đổi thông tin tài khoản', '2022-11-14 05:59:08.618462', 50),
(70, 'Đinh Công Mạnh', '0981863824', 'Thay đổi thông tin tài khoản', '2022-11-14 05:59:36.283631', 50),
(71, 'Đinh Công Mạnh', '0981863824', 'Tạo lệnh rút 1000 VND vào ngân hàng 0981863824 stk 0981863824', '2022-11-14 05:59:50.519980', 50),
(72, 'Đinh Công Mạnh', '0981863824', 'Tạo lệnh rút 1000 VND vào ngân hàng 0981863824 stk 0981863824', '2022-11-14 06:00:50.315256', 50),
(73, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:01:56.622040', 48),
(74, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:01:57.557194', 48),
(75, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:01:58.506717', 48),
(76, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:01:58.905320', 48),
(77, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:01:59.379533', 48),
(78, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:01:59.788595', 48),
(79, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:02:00.274808', 48),
(80, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:02:01.674102', 48),
(81, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:02:02.260242', 48),
(82, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:02:02.808217', 48),
(83, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:02:03.375205', 48),
(84, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:02:03.822268', 48),
(85, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:02:04.306626', 48),
(86, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:02:04.860183', 48),
(87, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:02:06.090440', 48),
(88, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:02:06.962669', 48),
(89, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:02:08.125606', 48),
(90, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:02:09.289368', 48),
(91, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:02:10.460770', 48),
(92, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:02:12.072357', 48),
(93, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:02:13.989548', 48),
(94, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:02:16.176615', 48),
(95, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:02:18.611377', 48),
(96, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:03:12.224947', 48),
(97, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:03:13.143672', 48),
(98, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:03:13.758610', 48),
(99, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:03:24.808412', 48),
(100, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:03:41.340219', 48),
(101, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:03:42.506654', 48),
(102, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:04:21.892784', 48),
(103, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:04:22.940289', 48),
(104, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:04:32.660885', 48),
(105, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:04:34.677185', 48),
(106, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:05:37.789255', 48),
(107, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:05:38.790309', 48),
(108, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:05:40.706912', 48),
(109, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:05:42.353507', 48),
(110, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:05:44.273927', 48),
(111, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:05:45.721975', 48),
(112, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:05:47.697074', 48),
(113, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:05:49.226745', 48),
(114, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:05:50.656365', 48),
(115, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:05:52.540297', 48),
(116, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:05:53.995037', 48),
(117, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:05:55.589371', 48),
(118, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:06:04.141500', 48),
(119, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:06:06.759091', 48),
(120, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:06:47.889609', 48),
(121, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:06:49.740524', 48),
(122, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:06:54.220799', 48),
(123, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:06:57.493762', 48),
(124, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:07:00.858907', 48),
(125, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:07:11.289358', 48),
(126, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:07:12.472926', 48),
(127, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:07:13.890494', 48),
(128, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:07:15.483896', 48),
(129, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:07:17.156119', 48),
(130, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:07:18.805210', 48),
(131, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:07:33.905847', 48),
(132, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:07:36.407535', 48),
(133, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:07:38.754504', 48),
(134, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:07:41.258687', 48),
(135, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:07:45.441913', 48),
(136, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:08:27.144878', 48),
(137, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:08:28.507592', 48),
(138, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:08:30.334835', 48),
(139, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:08:32.183748', 48),
(140, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:08:33.641863', 48),
(141, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:08:35.368264', 48),
(142, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:08:37.072253', 48),
(143, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-14 06:08:39.172351', 48),
(144, 'Vu Xuan Phuong', '0877946666', 'Đánh dấu lệnh rút tiền ID #3 là thành công', '2022-11-14 06:10:49.433854', 48),
(145, 'Vu Xuan Phuong', '0877946666', 'Huỷ lệnh rút tiền ID #2', '2022-11-14 06:10:51.310184', 48),
(146, 'Vu Xuan Phuong', '0877946666', 'Mở băng tài khoản Oc - Số CMND 0877946444', '2022-11-16 11:09:20.533600', 48),
(147, 'Vu Xuan Phuong', '0877946666', 'Đóng băng tài khoản Oc - Số CMND 0877946444', '2022-11-16 11:09:21.200800', 48),
(148, 'test account', '0962290920', 'Cộng 20800000VNĐ cho 123456789. Số dư hiện tại 41600000', '2022-10-16 12:31:33.723320', 53),
(149, 'Nguyen van c', '123456789', 'Tạo lệnh rút 20000000 VND vào ngân hàng 445566 stk abcdefgh', '2022-10-16 12:35:39.514319', 67),
(150, 'Nguyen van c', '123456789', 'Tạo lệnh rút 20000000 VND vào ngân hàng 445566 stk abcdefgh', '2022-10-16 12:35:40.399180', 67),
(151, 'test account', '0962290920', 'Huỷ lệnh rút tiền ID #4', '2022-11-17 15:08:31.951469', 53),
(152, 'test account', '0962290920', 'Huỷ lệnh rút tiền ID #5', '2022-11-17 15:08:35.281667', 53),
(153, 'test account', '0962290920', 'Đóng băng tài khoản Nguyễn Văn Cường - Số CMND 3475987234895', '2022-11-17 15:11:01.460218', 53),
(154, 'Vu Xuan Phuong', '0877946666', 'Duyệt thành công khoản vay 20000000VND cho Vu Xuan Phuong', '2022-11-17 15:58:12.772922', 48),
(155, 'Đinh Công Mạnh', '0981863824', 'Tạo lệnh rút 1000 VND vào ngân hàng 0981863824 stk 0981863824', '2022-11-28 13:38:12.396570', 50),
(156, 'Đinh Công Mạnh', '0981863824', 'Tạo lệnh rút 1000 VND vào ngân hàng 0981863824 stk 0981863824', '2022-11-28 13:38:34.717999', 50);

-- --------------------------------------------------------

--
-- Table structure for table `rut_ruttien`
--

CREATE TABLE `rut_ruttien` (
  `id` bigint(20) NOT NULL,
  `fullname` longtext NOT NULL,
  `phone` longtext NOT NULL,
  `so_tien` longtext NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `trangthai` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rut_ruttien`
--

INSERT INTO `rut_ruttien` (`id`, `fullname`, `phone`, `so_tien`, `create_time`, `status`, `user_id`, `trangthai`) VALUES
(1, 'Đinh Công Mạnh', '0981863824', '1000', '2022-11-13 15:57:58.833054', 0, 50, 'Hoàn thành'),
(2, 'Đinh Công Mạnh', '0981863824', '1000', '2022-11-14 06:10:51.303006', 0, 50, 'Đã huỷ'),
(3, 'Đinh Công Mạnh', '0981863824', '1000', '2022-11-14 06:10:49.429555', 0, 50, 'Hoàn thành'),
(4, 'Nguyen van c', '123456789', '20000000', '2022-11-17 15:08:31.945798', 0, 67, 'Đã huỷ'),
(5, 'Nguyen van c', '123456789', '20000000', '2022-11-17 15:08:35.276394', 0, 67, 'Đã huỷ'),
(6, 'Đinh Công Mạnh', '0981863824', '1000', '2022-11-28 13:38:12.392042', 1, 50, 'Chờ xác nhận'),
(7, 'Đinh Công Mạnh', '0981863824', '1000', '2022-11-28 13:38:34.711062', 1, 50, 'Chờ xác nhận');

-- --------------------------------------------------------

--
-- Table structure for table `users_bankinformation`
--

CREATE TABLE `users_bankinformation` (
  `id` bigint(20) NOT NULL,
  `ten_ngan_hang` varchar(50) NOT NULL,
  `id_chu_the` varchar(100) NOT NULL,
  `so_tai_khoan` varchar(100) NOT NULL,
  `ten_chu_the` varchar(100) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_bankinformation`
--

INSERT INTO `users_bankinformation` (`id`, `ten_ngan_hang`, `id_chu_the`, `so_tai_khoan`, `ten_chu_the`, `user_id`) VALUES
(15, 'VietComBank', '555555', '39010000934555', 'Vu Xuan Phuong', 48),
(16, 'VietComBankkhkhhh', '0877946669', '123123123', 'Vu Xuan Phuong', 49),
(17, '0981863824', '0981863824', '0981863824', '0981863824', 50),
(18, 'VietComBank', '0877946669', '390100009944', 'Vu Xuan Phuong', 51),
(19, 'VietComBank', '0877946669', '390100009944', 'Vu Xuan Phuong', 52),
(20, 'VietComBank', '0877946669', '0962290920', 'Vu Xuan Phuong', 53),
(21, 'VietComBank', '0877946669', '39010000934555', 'Vu Xuan Phuong', 54),
(22, 'techcombank', '83948290384', '0973233076', 'Nguyễn van phú', 57),
(23, 'VietComBank', '', '12131123', 'Vu Xuan Phuong', 58),
(24, 'VietComBank', '', '0982833821', 'Dinh Thu Trang', 59),
(25, 'techcombank', '', '19034802429013', 'techcomabnk', 60),
(26, 'VCB', '', '0964556554', 'Ngo thu Trang', 61),
(27, 'VietComBankk', '', '08779464111', '08779464111', 62),
(28, 'Tech', '', '28282892', 'Nguyen van cuong', 64),
(29, 'VietComBank', '', '390100009944', 'Vu Xuan Phuong', 65),
(30, '445566', '', 'abcdefgh', 'NGUYEN VAN CƯỜNG', 67),
(31, '0877946442', '', '45678910', '0877946444', 68),
(32, 'techcombank', '', '19034802429013', 'Nguyenvancuong', 70),
(33, 'Nguyen Minh Ngoc', '', '2388293048', 'Nguyen minh ngoc', 71),
(34, 'Hddhdj', '', '888899998888', 'Hddhdhd', 72);

-- --------------------------------------------------------

--
-- Table structure for table `users_createuserorder`
--

CREATE TABLE `users_createuserorder` (
  `id` bigint(20) NOT NULL,
  `ho_ten` varchar(50) NOT NULL,
  `sinh_nhat` varchar(12) NOT NULL,
  `so_cmnd` varchar(20) NOT NULL,
  `cmnd_mat_truoc` varchar(100) NOT NULL,
  `cmnd_mat_sau` varchar(100) NOT NULL,
  `chan_dung` varchar(100) NOT NULL,
  `dia_chi` varchar(200) NOT NULL,
  `nghe_nghiep` varchar(100) NOT NULL,
  `thu_nhap` varchar(500) NOT NULL,
  `muc_dich_vay` longtext NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `so_du` varchar(500) NOT NULL,
  `khoan_vay` varchar(100) NOT NULL,
  `ky_han` varchar(100) NOT NULL,
  `thanhtoanmoithang` varchar(200) NOT NULL,
  `create` datetime(6) NOT NULL,
  `confirm` tinyint(1) NOT NULL,
  `dong_bang` tinyint(1) NOT NULL,
  `chovay_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_createuserorder`
--

INSERT INTO `users_createuserorder` (`id`, `ho_ten`, `sinh_nhat`, `so_cmnd`, `cmnd_mat_truoc`, `cmnd_mat_sau`, `chan_dung`, `dia_chi`, `nghe_nghiep`, `thu_nhap`, `muc_dich_vay`, `user_id`, `so_du`, `khoan_vay`, `ky_han`, `thanhtoanmoithang`, `create`, `confirm`, `dong_bang`, `chovay_status`) VALUES
(26, 'Vu Xuan Phuong', '25/07/1998', '390131231231', 'uploads/2022/11/11/luadao2.jpeg', 'uploads/2022/11/11/luadao2.jpeg', 'uploads/2022/11/11/4.jpg', 'Thai Nguyen', 'Thai Nguyen', '250000', 'Hoc', 48, '0', '20000000', 'Kỳ hạn 12 tháng', ' Tiền đóng mỗi tháng khoảng 2,710,000 VNĐ', '2022-11-12 11:27:25.716597', 1, 1, 0),
(27, 'Đinh Công Mạnh123', '25/07/1888', '123312812313', 'uploads/2022/11/11/7.jpg', 'uploads/2022/11/11/luadao2.jpeg', 'uploads/2022/11/11/1.jpg', 'Thai Nguyen', 'Thai Nguyen', '250000', 'An choi', 49, '70000', '20000000', 'Kỳ hạn 12 tháng', ' Tiền đóng mỗi tháng khoảng 2,710,000 VNĐ', '2022-11-13 15:04:07.459066', 1, 1, 0),
(28, 'Đinh Công Mạnh', '12/31/312_', '13212321', 'uploads/<django.db.models.fields.CharField>/mattruoc/2132e409ad724865fe6375cdf463f7c2.jpg', 'uploads/<django.db.models.fields.CharField>/matsau/2132e409ad724865fe6375cdf463f7c2.jpg', 'uploads/<django.db.models.fields.CharField>/chandung/2132e409ad724865fe6375cdf463f7c2.jpg', 'Thai Nguyen', 'Sinh Vien', '0877946669', '123', 50, '35998', '20000000', 'Kỳ hạn 12 tháng', ' Tiền đóng mỗi tháng khoảng 2,710,000 VNĐ', '2022-11-28 13:38:34.713297', 1, 0, 0),
(29, 'Vu Xuan Phuong', '33/33/3333', '2312312312331213', 'uploads/2022/11/11/4.jpg', 'uploads/2022/11/11/luadao2.jpeg', 'uploads/2022/11/11/4.jpg', 'Thai Nguyen', 'Sih Vien', '150000', 'An choi', 51, '500000', '20000000', 'Kỳ hạn 12 tháng', ' Tiền đóng mỗi tháng khoảng 2,710,000 VNĐ', '2022-11-11 11:23:54.147733', 0, 0, 0),
(30, 'Vu Xuan Phuong', '44/44/444_', '123123123', '', '', '', 'Thai Nguyen', 'Sinh Viên', '1400000', 'choi', 52, '20500000', '20000000', 'Kỳ hạn 12 tháng', ' Tiền đóng mỗi tháng khoảng 2,710,000 VNĐ', '2022-11-17 15:58:12.762725', 0, 1, 1),
(31, 'test account', '25/08/1996', '0962290920', 'uploads/2022/11/11/5.jpg', 'uploads/2022/11/11/luadao.jpeg', 'uploads/2022/11/11/2.jpg', 'Thái Nguyên', 'Sih Vien', '250000', 'Kinh Doanh', 53, '20000001', '20000000', 'Kỳ hạn 12 tháng', ' Tiền đóng mỗi tháng khoảng 2,710,000 VNĐ', '2022-11-17 15:57:04.025401', 0, 0, 1),
(32, 'Sản phẩm', '12/31/2313', '123123213', 'uploads/2022/11/11/luadao2.jpeg', 'uploads/2022/11/11/5.jpg', 'uploads/2022/11/11/4.jpg', 'Thái NGuyên', 'Thai Nguyen', '250000', 'choi', 54, '20000000', '20000000', 'Kỳ hạn 12 tháng', ' Tiền đóng mỗi tháng khoảng 2,710,000 VNĐ', '2022-11-17 15:56:55.177463', 0, 0, 1),
(33, 'Sản phẩm', '12/31/2312', '123123', '', '', '', 'Thai Nguyen', 'Sinh Viên', '150000', 'An choi', 55, '200000000', '200000000', 'Kỳ hạn 12 tháng', ' Tiền đóng mỗi tháng khoảng 18,066,667 VNĐ', '2022-11-17 15:52:08.697530', 0, 0, 1),
(34, 'Sản phẩm', '12/31/2123', '123123312', '', '', '', 'Thái Nguyên', 'Thái Nguyên', '250000', 'Thái Nguyên', 56, '100000000', '50000000', 'Kỳ hạn 12 tháng', ' Tiền đóng mỗi tháng khoảng 4,516,667 VNĐ', '2022-11-17 15:51:20.542016', 0, 0, 1),
(35, 'Nguyễn van cường', '22/22/2222', '9820502938', 'uploads/2022/11/11/backgroup.png', 'uploads/2022/11/11/df0787208b.png', 'uploads/2022/11/11/Rectangle_42.png', 'HN', 'it', '20000000', 'kf', 57, '20000000', '20000000', 'Kỳ hạn 12 tháng', ' Tiền đóng mỗi tháng khoảng 2.710.000 VNĐ', '2022-11-17 14:21:55.961074', 1, 0, 1),
(36, 'Sản phẩm', '23/13/1123', '123123123123', '', '', '', '12312132123', '123213321', '123213123', '123123321', 58, '20000000', '20000000', 'Kỳ hạn 12 tháng', ' Tiền đóng mỗi tháng khoảng 2,710,000 VNĐ', '2022-11-17 14:20:06.925215', 0, 1, 1),
(37, 'tester', '25/07/1998', '123123123', 'uploads/2022/11/12/6.jpg', 'uploads/2022/11/12/luadao2.jpeg', 'uploads/2022/11/12/2.jpg', 'Can Tho', 'IT', '250000', 'thich thi vay', 59, '19800000', '20000000', 'Kỳ hạn 12 tháng', ' Tiền đóng mỗi tháng khoảng 2,710,000 VNĐ', '2022-11-17 14:19:14.110567', 0, 0, 1),
(38, 'Nguyen van cường', '22/22/2222', '129075091275', 'uploads/2022/11/12/banner.jpg', 'uploads/2022/11/12/banner2.png', 'uploads/2022/11/12/cs600-600x600.jpg', 'Hà nội', 'IT', '3000000', 'kd', 60, '420000000', '20000000', 'Kỳ hạn 12 tháng', ' Tiền đóng mỗi tháng khoảng 2.710.000 VNĐ', '2022-11-17 14:18:51.740907', 1, 1, 1),
(39, 'images2313', '13/21/3123', '25071998', 'uploads/2022/11/12/luadao.jpeg', 'uploads/2022/11/12/2.jpg', 'uploads/2022/11/12/3.jpg', 'Phúc Hà', 'Sinh Viên', '1400000', 'An choi', 61, '300000000', '300000000', 'Kỳ hạn 12 tháng', ' Tiền đóng mỗi tháng khoảng 27,100,000 VNĐ', '2022-11-17 14:13:38.610832', 0, 0, 1),
(40, 'Vũ Xuân Phương', '12/31/2312', '098167554', 'uploads/<django.db.models.fields.CharField>/mattruoc/luadao.jpeg', 'uploads/<django.db.models.fields.CharField>/matsau/luadao2.jpeg', 'uploads/<django.db.models.fields.CharField>/chandung/4.jpg', 'Thái Nguyên', 'IT', '250000', 'An choi', 62, '20000000', '20000000', 'Kỳ hạn 12 tháng', ' Tiền đóng mỗi tháng khoảng 1,806,667 VNĐ', '2022-11-17 14:13:01.195008', 0, 1, 1),
(41, 'Cuong', '22/22/2222', '38383839', 'uploads/<django.db.models.fields.CharField>/mattruoc/z3810062578390_666d9b0db1a501a596b7_HhkUzlL.jpg', 'uploads/<django.db.models.fields.CharField>/matsau/z3810062616261_00ea09b0d9af4ce86b7130_YwQiBaO.jpg', 'uploads/<django.db.models.fields.CharField>/chandung/z3810062669710_26cff95bc40b7582051c_uPQ4xEN.jpg', 'Hn', 'Hn', '3000000', 'Hd', 64, '40000000', '20000000', 'Kỳ hạn 12 tháng', ' Tiền đóng mỗi tháng khoảng 1.806.667 VNĐ', '2022-11-17 14:12:01.146993', 1, 0, 1),
(42, 'gamelobby123', '12/31/3121', '12321132', '', '', '', 'Phúc Hà', 'Phúc Hà', '1200000', 'choi', 65, '70000000', '70000000', 'Kỳ hạn 12 tháng', ' Tiền đóng mỗi tháng khoảng 6,323,334 VNĐ', '2022-11-17 14:11:28.764283', 0, 0, 1),
(43, 'Nguyen van c', '22/22/2222', '23985723857', 'uploads/2022/11/13/exciter-155-vva_thanhnien-10_snag.jpeg', 'uploads/2022/11/13/wvn.05c0546a95f7eb4.57994898.jpg', 'uploads/2022/11/13/xe.png', 'HN', 'IT', '200000000', 'KD', 67, '61600000', '20000000', 'Kỳ hạn 12 tháng', ' Tiền đóng mỗi tháng khoảng 1.806.667 VNĐ', '2022-11-17 15:08:35.273516', 0, 0, 1),
(44, 'Oc', '08/77/9464', '0877946444', 'uploads/2022/11/13/34cc46d089364f681627.jpg', 'uploads/2022/11/13/2.jpg', 'uploads/2022/11/13/luadao.jpeg', '0877946444', '0877946444', '0877946444', '0877946444', 68, '100000000', '100000000', 'Kỳ hạn 12 tháng', ' Tiền đóng mỗi tháng khoảng 9,033,334 VNĐ', '2022-11-17 14:09:48.995135', 0, 1, 1),
(45, 'Nguyễn Văn Cường', '22/22/2222', '3475987234895', 'uploads/2022/11/17/ảnh-6.jpg', 'uploads/2022/11/17/bac-si-gia-dinh-1479493791307.jpg', 'uploads/2022/11/17/BS-Khuc-Minh-Thuy.jpg', 'Xóm 4 Phúc Lâm', 'IT', '2000000', 'Kinhdoanh', 70, '20000000', '20000000', 'Kỳ hạn 12 tháng', ' Tiền đóng mỗi tháng khoảng 1.806.667 VNĐ', '2022-11-17 15:11:01.448553', 0, 1, 1),
(46, 'Nguyễn Văn Cường', '22/22/2222', '3475987234895', 'uploads/2022/11/20/bg-footer-min.jpeg', 'uploads/2022/11/20/CEMS.png', 'uploads/2022/11/20/CimentHaLong.jpeg', 'Xóm 4 Phúc Lâm', 'IT', '2000000', 'Kinhdoanh', 71, '0', '20000000', 'Kỳ hạn 12 tháng', ' Tiền đóng mỗi tháng khoảng 1.806.667 VNĐ', '2022-11-20 06:41:16.127442', 0, 0, 0),
(47, 'Shshshsj', '12/03/1998', '123456789', 'uploads/2022/11/20/Screenshot_20221114-110457.png', 'uploads/2022/11/20/Screenshot_20221114-110457.png', 'uploads/2022/11/20/Screenshot_20221114-110457.png', 'Yddydy', 'Dyyd', '193383838', 'Hddhdh', 72, '0', '20000000', 'Kỳ hạn 12 tháng', ' Tiền đóng mỗi tháng khoảng 1.806.667 VNĐ', '2022-11-20 06:47:58.941771', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_myuser`
--

CREATE TABLE `users_myuser` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `phone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_myuser`
--

INSERT INTO `users_myuser` (`id`, `password`, `last_login`, `is_superuser`, `username`, `email`, `is_staff`, `is_active`, `date_joined`, `phone`) VALUES
(48, 'pbkdf2_sha256$320000$jDdWQfhg8SskTfz5EWITjj$GDr+reL/3Xfmx3Ls5bXiVAULZtPPmRy4wC8d44wOKqI=', '2022-11-28 05:48:39.522463', 1, '0877946666', '', 0, 1, '2022-11-11 09:13:25.723664', '0877946666'),
(49, 'pbkdf2_sha256$320000$pTAwpQDpQ2CdYLAN3hP9tl$H+mxqBHNr+0k3xSRvoBXC8JI9ggwh8/FpuvV07Hudtk=', '2022-11-11 09:19:31.499468', 0, '0877946664', '', 0, 1, '2022-11-11 09:19:31.352309', '0877946664'),
(50, 'pbkdf2_sha256$320000$XvgoU61qnzBQaUSfyiSATw$QFQ03eZhtdI0dr8sZWWWYyOVwGCDO+FDe+E49wl33zM=', '2022-11-28 13:32:40.129125', 0, '0981863824', '', 0, 1, '2022-11-11 10:43:05.791954', '0981863824'),
(51, 'pbkdf2_sha256$320000$sJXv5uAEkTNaG1OmqOlihp$yokh1CmPKGu2VTAoVgTnVo/GAVM8RtnVrG+mxg6Dtno=', '2022-11-11 11:21:16.969633', 0, '08779464446', '', 0, 1, '2022-11-11 11:21:16.822591', '08779464446'),
(52, 'pbkdf2_sha256$320000$xWC9q7Vc2iAMiZFUD5ZHPu$bMKiurPpzIDUsYkzGt/GEvf1yzbP8c2u4mgMRZDTGEE=', '2022-11-11 11:27:01.944443', 0, '312132123', '', 0, 1, '2022-11-11 11:27:01.795003', '312132123'),
(53, 'pbkdf2_sha256$320000$yoXPcnbmlcBb8togef9PLS$OW0AH1HxHRmFYoThXiDdb5qNX8vJ+TKpH9hLwVmv8U0=', '2022-11-20 06:42:25.545353', 1, '0962290920', '', 0, 1, '2022-11-11 11:30:57.426269', '0962290920'),
(54, 'pbkdf2_sha256$320000$2X0lQYPeEGAPKVm6xDexAI$0n6cNe5ldGU/ZWm8wr9L/xwhkDbrV6MxJlRpFuxBmA4=', '2022-11-11 11:45:20.804357', 0, '12312132', '', 0, 1, '2022-11-11 11:45:20.655360', '12312132'),
(55, 'pbkdf2_sha256$320000$TIpY31JHPZrBA0FYOXZe8f$nls/bsf/o36JWp5JdISy/36RjG0Edld0Q903uhB+mgk=', '2022-11-11 11:52:20.188445', 0, '0981863833', '', 0, 1, '2022-11-11 11:52:20.044392', '0981863833'),
(56, 'pbkdf2_sha256$320000$kTiq6M8vpFy1PiYl9AKr9i$CDEZ8IrKH83XiNkk5ta33ILyYnN2FEcK20QdSeTxUxI=', '2022-11-11 11:53:06.085978', 0, '09818638333', '', 0, 1, '2022-11-11 11:53:05.943189', '09818638333'),
(57, 'pbkdf2_sha256$320000$eczkey989xPAOxNeFVxaUj$Z+sNmsj8I+Lu/PPYkmhY7tI36p8TLkgIp3MZs0xU53E=', '2022-11-11 12:20:47.085225', 0, '0911111111', '', 0, 1, '2022-11-11 12:20:46.941588', '0911111111'),
(58, 'pbkdf2_sha256$320000$x98RyP7NQeOlYcyAGNeUW9$vCFzCMUiTidUkEJTQP4QgcyWFALCkvTr2jpACNtmfgI=', '2022-11-11 15:31:26.350566', 0, '12312131', '', 0, 1, '2022-11-11 15:31:26.201476', '12312131'),
(59, 'pbkdf2_sha256$320000$SkCGhV6C5YDhDVzH3ieBOP$TdoRwUkJRZtraohcAt92+yVpkS4YpswpQAiyMj5PI9A=', '2022-11-12 04:00:42.703922', 0, '0982833821', '', 0, 1, '2022-11-12 04:00:42.550567', '0982833821'),
(60, 'pbkdf2_sha256$320000$nMxSOWwBUIGGq38L2OVpVe$yTbpMNbCCFumF4oehOarN3N0EShVQYiD2nH8zXoL7qw=', '2022-11-12 08:07:50.834437', 0, '012345', '', 0, 1, '2022-11-12 06:23:20.198186', '012345'),
(61, 'pbkdf2_sha256$320000$fU7rooE0iDPP7eFANGiXQ4$IO2jUUWqSdON6mWCokoOz6V04R996bPSDQc8z5CqGf4=', '2022-11-12 07:29:08.500795', 0, '0964556554', '', 0, 1, '2022-11-12 07:29:08.350632', '0964556554'),
(62, 'pbkdf2_sha256$320000$p3lZR0AIRIoojFzDB1wrD5$HzerXMoe5lx8HOv4lnYv+TRshAArelS4ZXjn83rXfnU=', '2022-11-12 11:16:42.405138', 0, '08779464111', '', 0, 1, '2022-11-12 11:16:42.258022', '0963864442'),
(63, 'pbkdf2_sha256$320000$kRuJ2KXNCa25BFAOg2hEPV$E9rb1ybC21fFQU9vyCACLvK7SJdb+vkFEL8vyGOeuUI=', '2022-11-12 11:18:46.807823', 0, 'undefined', '', 0, 1, '2022-11-12 11:18:46.694152', 'undefined'),
(64, 'pbkdf2_sha256$320000$TNkEq9mhgoQKbnjXRwvFtc$vjpZRd/e1W1SZ5mZVNRUjMKOoMPuCWWUEsnsdv1xYVI=', '2022-11-12 17:23:32.575069', 0, '09123456', '', 0, 1, '2022-11-12 12:14:37.723485', '09123456'),
(65, 'pbkdf2_sha256$320000$VFBbaKlGIcrV5aONGRtmGO$gXS2H7vFQmD/ozRhNoV4ZNbSmYs+MmYURnMvNQXVfrs=', '2022-11-13 00:07:57.439715', 0, '0866566755', '', 0, 1, '2022-11-13 00:07:57.292870', '0866566755'),
(66, 'pbkdf2_sha256$320000$ms250TE1WMvvyw1xaFBHFm$wDpE9ngVq1eN/E895sg6Plc8CFn6trAlrrJ8M9ysCNA=', '2022-11-13 09:35:09.303773', 0, '0123456', '', 0, 1, '2022-11-13 09:35:09.153831', '0123456'),
(67, 'pbkdf2_sha256$320000$QGjkc45nlE7OHkAfMpdgv1$coqjLmldVoZLIl5ak5OHmCxfWhcBQAzZEsL5Umsnnis=', '2022-11-17 15:06:41.657531', 0, '123456789', '', 0, 1, '2022-11-13 09:41:30.997540', '123456789'),
(68, 'pbkdf2_sha256$320000$GSCGfqOJYTaTrrtQ3e5Lbp$bViVIEuE+LDidt2XLd3LviX3DJGqTbuMxtCzvarzCvk=', '2022-11-13 10:28:02.233544', 0, '0877946444', '', 0, 1, '2022-11-13 10:28:02.085759', '0877946444'),
(69, 'pbkdf2_sha256$320000$ROPgwVG5FUli9qQjkdyFmY$CFo6PSpPs8cgI/NPZLwn9f7qb/vHnJAJoKX2etPOol4=', '2022-11-17 15:06:00.896326', 0, '000000', '', 0, 1, '2022-11-17 15:06:00.742274', '000000'),
(70, 'pbkdf2_sha256$320000$eCwhCzRVHPLi1Z9HshzPwU$Ku2KoL0kDjAhNGPgDGZqYyoC13kjYbsgnLZXSKAXWUM=', '2022-11-17 15:07:28.028386', 0, '0966666666', '', 0, 1, '2022-11-17 15:07:27.883876', '0966666666'),
(71, 'pbkdf2_sha256$320000$Zji08RdhfxNbhb0Qte8mPa$41OjtCF3dKeU0AMqQpBLtEXggCoglLoXhqvzHsKP27Y=', '2022-11-20 06:41:16.125085', 0, '012345678', '', 0, 1, '2022-11-20 06:41:15.982945', '012345678'),
(72, 'pbkdf2_sha256$320000$Fbz5RBAPd8aHOamzf4T3bR$GwrZKrAuQXgz8+d+PEMEuV2O4Uk7KjZvlkm4OEelMIA=', '2022-11-20 06:47:58.940717', 0, '0366666666', '', 0, 1, '2022-11-20 06:47:58.779522', '0366666666');

-- --------------------------------------------------------

--
-- Table structure for table `users_myuser_groups`
--

CREATE TABLE `users_myuser_groups` (
  `id` bigint(20) NOT NULL,
  `myuser_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users_myuser_user_permissions`
--

CREATE TABLE `users_myuser_user_permissions` (
  `id` bigint(20) NOT NULL,
  `myuser_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `api_avatar`
--
ALTER TABLE `api_avatar`
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
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_users_myuser_id` (`user_id`);

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
-- Indexes for table `history_history`
--
ALTER TABLE `history_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `history_history_user_id_4e4120ab_fk_users_myuser_id` (`user_id`);

--
-- Indexes for table `rut_ruttien`
--
ALTER TABLE `rut_ruttien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rut_ruttien_user_id_8aca0aef_fk_users_myuser_id` (`user_id`);

--
-- Indexes for table `users_bankinformation`
--
ALTER TABLE `users_bankinformation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_bankinformation_user_id_81389c63_fk_users_myuser_id` (`user_id`);

--
-- Indexes for table `users_createuserorder`
--
ALTER TABLE `users_createuserorder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_createuserorder_so_dien_thoai_id_cddc80c9` (`user_id`);

--
-- Indexes for table `users_myuser`
--
ALTER TABLE `users_myuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `users_myuser_groups`
--
ALTER TABLE `users_myuser_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_myuser_groups_myuser_id_group_id_701de95c_uniq` (`myuser_id`,`group_id`),
  ADD KEY `users_myuser_groups_group_id_320a3e7b_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `users_myuser_user_permissions`
--
ALTER TABLE `users_myuser_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_myuser_user_permis_myuser_id_permission_id_bfff4a24_uniq` (`myuser_id`,`permission_id`),
  ADD KEY `users_myuser_user_pe_permission_id_6f8831ec_fk_auth_perm` (`permission_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `api_avatar`
--
ALTER TABLE `api_avatar`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=264;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `history_history`
--
ALTER TABLE `history_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `rut_ruttien`
--
ALTER TABLE `rut_ruttien`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users_bankinformation`
--
ALTER TABLE `users_bankinformation`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users_createuserorder`
--
ALTER TABLE `users_createuserorder`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `users_myuser`
--
ALTER TABLE `users_myuser`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `users_myuser_groups`
--
ALTER TABLE `users_myuser_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_myuser_user_permissions`
--
ALTER TABLE `users_myuser_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

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
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`);

--
-- Constraints for table `history_history`
--
ALTER TABLE `history_history`
  ADD CONSTRAINT `history_history_user_id_4e4120ab_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`);

--
-- Constraints for table `rut_ruttien`
--
ALTER TABLE `rut_ruttien`
  ADD CONSTRAINT `rut_ruttien_user_id_8aca0aef_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`);

--
-- Constraints for table `users_bankinformation`
--
ALTER TABLE `users_bankinformation`
  ADD CONSTRAINT `users_bankinformation_user_id_81389c63_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`);

--
-- Constraints for table `users_createuserorder`
--
ALTER TABLE `users_createuserorder`
  ADD CONSTRAINT `users_createuserorder_user_id_8d7ff48c_fk_users_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_myuser` (`id`);

--
-- Constraints for table `users_myuser_groups`
--
ALTER TABLE `users_myuser_groups`
  ADD CONSTRAINT `users_myuser_groups_group_id_320a3e7b_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `users_myuser_groups_myuser_id_6c79e2c5_fk_users_myuser_id` FOREIGN KEY (`myuser_id`) REFERENCES `users_myuser` (`id`);

--
-- Constraints for table `users_myuser_user_permissions`
--
ALTER TABLE `users_myuser_user_permissions`
  ADD CONSTRAINT `users_myuser_user_pe_myuser_id_7135c2f9_fk_users_myu` FOREIGN KEY (`myuser_id`) REFERENCES `users_myuser` (`id`),
  ADD CONSTRAINT `users_myuser_user_pe_permission_id_6f8831ec_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
