-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 18, 2025 at 07:34 AM
-- Server version: 10.11.10-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u499940289_edUcareSrGu`
--

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` text NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `config_name` varchar(200) NOT NULL DEFAULT '',
  `short_name` varchar(100) NOT NULL,
  `directory` varchar(500) NOT NULL,
  `description` text DEFAULT NULL,
  `price` float(10,2) NOT NULL DEFAULT 0.00,
  `current_version` varchar(50) DEFAULT NULL,
  `article_link` text NOT NULL,
  `installation_by` int(11) DEFAULT NULL,
  `uninstall_version` varchar(50) DEFAULT NULL,
  `unistall_by` int(11) DEFAULT NULL,
  `addon_prod` text DEFAULT NULL,
  `addon_ver` text DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `current_stage` int(11) NOT NULL DEFAULT 0 COMMENT '0 for buy addon,1 for folder available ready to install,2 for folder addon installed',
  `product_order` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `addons`
--

INSERT INTO `addons` (`id`, `product_id`, `image`, `name`, `config_name`, `short_name`, `directory`, `description`, `price`, `current_version`, `article_link`, `installation_by`, `uninstall_version`, `unistall_by`, `addon_prod`, `addon_ver`, `last_update`, `current_stage`, `product_order`, `created_at`, `updated_at`) VALUES
(1, 47443722, 'uploads/addon_images/sscbse_images.jpg', 'Smart School CBSE Examination', 'cbse-config', 'sscbse', 'cbse_examination', 'CBSE Examination addon adds CBSE Examination module in Smart School. Using this module teacher/staff can create and print marksheets with advance features.', 0.00, NULL, 'https://go.smart-school.in/cbse-exam', NULL, NULL, NULL, NULL, NULL, '2024-09-03 16:04:58', 0, 4, '2024-09-03 16:04:58', '2025-03-03 05:32:37'),
(2, 44278049, 'uploads/addon_images/sstfa_images.jpg', 'Smart School Two Factor Authentication', 'google-authenticate-config', 'sstfa', 'two_factor_authentication', 'Two Factor Authentication addon adds Two Factor Authentication module in Smart School. Using this module you can enhance login security of your Smart School users.', 0.00, NULL, 'https://go.smart-school.in/2fa', NULL, NULL, NULL, NULL, NULL, '2025-01-29 11:16:14', 0, 5, '2024-09-07 10:45:18', '2025-03-03 05:32:28'),
(3, 44277916, 'uploads/addon_images/ssmb_images.jpg', 'Smart School Multi Branch', 'multibranch-config', 'ssmb', 'multi_branch', 'Multi Branch addon adds Multi Branch module in Smart School. Using this module Superadmin user can add other any number of schools/branches.', 0.00, NULL, 'https://go.smart-school.in/multi-branch', NULL, '3.0', 1, NULL, NULL, '2025-07-04 05:44:40', 0, 6, '2024-09-07 10:45:18', '2025-07-04 05:44:40'),
(4, 44247532, 'uploads/addon_images/ssbr_images.jpg', 'Smart School Behaviour Records', 'behaviour-report-config', 'ssbr', 'behavior_records', 'Behaviour Records addon adds Behaviour Records module in Smart School. Using this module teacher/staff can create different incidents with positive/negative marks and then assign these incidents on students.', 0.00, NULL, 'https://go.smart-school.in/behaviour-records', NULL, NULL, NULL, NULL, NULL, '2025-01-29 11:16:19', 0, 7, '2024-09-07 10:45:42', '2025-03-03 05:32:11'),
(5, 33101540, 'uploads/addon_images/ssoclc_images.jpg', 'Smart School Online Course', 'onlinecourse-config', 'ssoclc', 'online_course', 'Online Course addon adds Online Course module in Smart School. Using this module teacher/staff can create free or paid online course with their study material based on video, audio or in document content format.', 0.00, NULL, 'https://go.smart-school.in/online-course', NULL, NULL, NULL, NULL, NULL, '2025-01-29 11:16:19', 0, 8, '2024-09-07 10:45:42', '2025-03-03 05:32:02'),
(6, 27492043, 'uploads/addon_images/sszlc_images.jpg', 'Smart School Zoom Live Classes', 'zoom-config', 'sszlc', 'zoom_live_class', 'Zoom Live Class addon adds Zoom Live Class module in Smart School. Using this module teacher/staff can create live online classes using Zoom.us service. Further students can join these classes.', 0.00, NULL, 'https://go.smart-school.in/zoom', NULL, NULL, NULL, NULL, NULL, '2025-01-29 11:16:17', 0, 10, '2024-09-07 10:46:10', '2025-03-03 05:31:49'),
(7, 28941973, 'uploads/addon_images/ssglc_images.jpg', 'Smart School Gmeet Live Class', 'gmeet-config', 'ssglc', 'gmeet_live_class', 'Gmeet Live Class addon adds Gmeet Live Class module in Smart School. Using this module teacher/staff can create live online classes using http://meet.google.com service. Further students can join these classes.', 0.00, NULL, 'https://go.smart-school.in/gmeet', NULL, NULL, NULL, NULL, NULL, '2025-01-29 11:16:24', 0, 9, '2024-09-07 10:46:10', '2025-03-03 05:31:33'),
(8, 50336584, 'uploads/addon_images/ssqra_images.jpg', 'Smart School QR Code Attendance', 'qrattendance-config', 'ssqra', 'qr_code_attendance', 'QR Code Attendance addon adds automated Student/Staff attendance using QR/Barcode module in Smart School. Using this module Student/Staff can submit their attendance by just scanning their ID Card.', 0.00, NULL, 'https://go.smart-school.in/qr-attendance', NULL, NULL, NULL, NULL, NULL, '2025-01-28 22:28:58', 0, 3, '2025-01-13 13:10:06', '2025-03-03 05:32:47'),
(9, 57220011, 'uploads/addon_images/ssqfc_images.jpg', 'Smart School Quick Fees Create', 'quickfees-config', 'ssqfc', 'quick_fees_create', 'Quick Fees Create addon adds one click fees create feature in Smart School Fees Collection module. Using this you can create and assign fees on students in just few seconds and all Fees Category, Fees Groups, Fees Masters will be create automatically in your Smart School.', 0.00, NULL, 'https://go.smart-school.in/quick-fees', NULL, NULL, NULL, NULL, NULL, '2025-01-28 22:28:58', 0, 2, '2025-01-13 13:10:06', '2025-03-03 05:33:00'),
(10, 57219905, 'uploads/addon_images/sstpa_images.jpg', 'Smart School Thermal Print', 'thermalprint-config', 'sstpa', 'thermal_print', 'Thermal Print addon adds Thermal Printer compatible small size fees receipt print capability in Smart School. Using this module you can utilize modern cost effective fees receipt printing in Smart School.', 0.00, NULL, 'https://go.smart-school.in/thermal-print', NULL, NULL, NULL, NULL, NULL, '2025-01-30 10:28:42', 0, 1, '2025-01-13 13:10:06', '2025-03-03 05:33:06');

-- --------------------------------------------------------

--
-- Table structure for table `addon_versions`
--

CREATE TABLE `addon_versions` (
  `id` int(11) NOT NULL,
  `addon_id` int(11) DEFAULT NULL,
  `version` varchar(10) DEFAULT NULL,
  `version_order` int(11) DEFAULT NULL,
  `folder_path` text DEFAULT NULL,
  `sort_description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `alumni_events`
--

CREATE TABLE `alumni_events` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `event_for` varchar(100) NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section` varchar(255) NOT NULL,
  `from_date` datetime NOT NULL,
  `to_date` datetime NOT NULL,
  `note` text NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `is_active` int(11) NOT NULL,
  `event_notification_message` text NOT NULL,
  `show_onwebsite` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `alumni_students`
--

CREATE TABLE `alumni_students` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `current_email` varchar(255) NOT NULL,
  `current_phone` varchar(255) NOT NULL,
  `occupation` text NOT NULL,
  `address` text NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `annual_calendar`
--

CREATE TABLE `annual_calendar` (
  `id` int(11) NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `holiday_type` int(11) NOT NULL,
  `from_date` datetime DEFAULT NULL,
  `to_date` datetime DEFAULT NULL,
  `description` text NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `holiday_color` varchar(200) NOT NULL,
  `front_site` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendence_type`
--

CREATE TABLE `attendence_type` (
  `id` int(11) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `key_value` varchar(50) NOT NULL,
  `long_lang_name` varchar(250) DEFAULT NULL,
  `long_name_style` varchar(250) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `for_qr_attendance` int(11) NOT NULL DEFAULT 1,
  `for_schedule` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `attendence_type`
--

INSERT INTO `attendence_type` (`id`, `type`, `key_value`, `long_lang_name`, `long_name_style`, `is_active`, `for_qr_attendance`, `for_schedule`, `created_at`, `updated_at`) VALUES
(1, 'Present', '<b class=\"text text-success\">P</b>', 'present', 'label label-success', 'yes', 1, 1, '2023-12-13 07:53:10', '0000-00-00 00:00:00'),
(2, 'Late With Excuse', '<b class=\"text text-warning\">E</b>', 'late_with_excuse', 'label label-warning text-dark', 'no', 0, 0, '2023-12-13 07:51:03', '0000-00-00 00:00:00'),
(3, 'Late', '<b class=\"text text-warning\">L</b>', 'late', 'label label-warning text-dark', 'yes', 1, 1, '2023-12-13 07:51:09', '0000-00-00 00:00:00'),
(4, 'Absent', '<b class=\"text text-danger\">A</b>', 'absent', 'label label-danger', 'yes', 0, 0, '2023-12-15 06:18:05', '0000-00-00 00:00:00'),
(5, 'Holiday', 'H', 'holiday', 'label label-info', 'yes', 0, 0, '2023-12-14 12:57:13', '0000-00-00 00:00:00'),
(6, 'Half Day', '<b class=\"text text-warning\">F</b>', 'half_day', 'label label-warning text-dark', 'yes', 1, 1, '2023-12-15 06:18:37', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `book_title` varchar(100) NOT NULL,
  `book_no` varchar(50) NOT NULL,
  `isbn_no` varchar(100) NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `rack_no` varchar(100) NOT NULL,
  `publish` varchar(100) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `perunitcost` float(10,2) DEFAULT NULL,
  `postdate` date DEFAULT NULL,
  `description` text DEFAULT NULL,
  `available` varchar(10) DEFAULT 'yes',
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book_issues`
--

CREATE TABLE `book_issues` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `member_id` int(11) DEFAULT NULL,
  `duereturn_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `is_returned` int(11) DEFAULT 0,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `captcha`
--

CREATE TABLE `captcha` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `captcha`
--

INSERT INTO `captcha` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'userlogin', 0, '2021-01-19 08:10:29', '2025-07-03 06:17:15'),
(2, 'login', 0, '2021-01-19 08:10:31', '2025-07-03 06:17:15'),
(3, 'admission', 0, '2021-01-19 04:48:11', '2025-07-03 06:17:15'),
(4, 'complain', 0, '2021-01-19 04:48:13', '2025-07-03 06:17:15'),
(5, 'contact_us', 0, '2021-01-19 04:48:15', '2025-07-03 06:17:15');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'OBC', 'no', '2025-07-16 07:16:04', '2025-07-16 07:16:04'),
(2, 'GENERAL', 'no', '2025-07-16 07:16:11', '2025-07-16 07:16:11'),
(3, 'MUSLIM', 'no', '2025-07-16 07:16:17', '2025-07-16 07:16:17'),
(4, 'MUSLIM IIB', 'no', '2025-07-16 07:16:35', '2025-07-16 07:16:35'),
(5, 'BCE', 'no', '2025-07-16 07:16:45', '2025-07-16 07:16:45'),
(6, 'SC LAMA', 'no', '2025-07-16 07:17:00', '2025-07-16 07:17:00'),
(7, 'CHRISTIAN', 'no', '2025-07-16 07:17:11', '2025-07-16 07:17:11'),
(8, 'SC', 'no', '2025-07-16 07:17:21', '2025-07-16 07:17:21'),
(9, 'HINDU', 'no', '2025-07-16 07:17:26', '2025-07-16 07:17:26'),
(11, 'ISLAM/MUSLIM', 'no', '2025-07-17 07:26:24', '2025-07-17 07:26:24');

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` int(11) NOT NULL,
  `certificate_name` varchar(100) NOT NULL,
  `certificate_text` text NOT NULL,
  `left_header` varchar(100) NOT NULL,
  `center_header` varchar(100) NOT NULL,
  `right_header` varchar(100) NOT NULL,
  `left_footer` varchar(100) NOT NULL,
  `right_footer` varchar(100) NOT NULL,
  `center_footer` varchar(100) NOT NULL,
  `background_image` varchar(100) DEFAULT NULL,
  `created_for` tinyint(1) NOT NULL COMMENT '1 = staff, 2 = students',
  `status` tinyint(1) NOT NULL,
  `header_height` int(11) NOT NULL,
  `content_height` int(11) NOT NULL,
  `footer_height` int(11) NOT NULL,
  `content_width` int(11) NOT NULL,
  `enable_student_image` tinyint(1) NOT NULL COMMENT '0=no,1=yes',
  `enable_image_height` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `certificates`
--

INSERT INTO `certificates` (`id`, `certificate_name`, `certificate_text`, `left_header`, `center_header`, `right_header`, `left_footer`, `right_footer`, `center_footer`, `background_image`, `created_for`, `status`, `header_height`, `content_height`, `footer_height`, `content_width`, `enable_student_image`, `enable_image_height`, `created_at`, `updated_at`) VALUES
(1, 'Sample Transfer Certificate', 'This is certify that <b>[name]</b> has born on [dob]  <br> and have following details [present_address] [guardian] [created_at] [admission_no] [roll_no] [class] [section] [gender] [admission_date] [category] [cast] [father_name] [mother_name] [religion] [email] [phone] .<br>We wish best of luck for future endeavors.', 'Reff. No.....1111111.........', 'To Whomever It May Concern', 'Date: _10__/_10__/__2019__', '.................................<br>admin', '.................................<br>principal', '.................................<br>admin', 'sampletc121.png', 2, 1, 360, 400, 480, 810, 1, 230, '2019-12-21 15:14:34', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `chat_connections`
--

CREATE TABLE `chat_connections` (
  `id` int(11) NOT NULL,
  `chat_user_one` int(11) NOT NULL,
  `chat_user_two` int(11) NOT NULL,
  `ip` varchar(30) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chat_messages`
--

CREATE TABLE `chat_messages` (
  `id` int(11) NOT NULL,
  `message` text DEFAULT NULL,
  `chat_user_id` int(11) NOT NULL,
  `ip` varchar(30) NOT NULL,
  `time` int(11) NOT NULL,
  `is_first` int(11) DEFAULT 0,
  `is_read` int(11) NOT NULL DEFAULT 0,
  `chat_connection_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chat_users`
--

CREATE TABLE `chat_users` (
  `id` int(11) NOT NULL,
  `user_type` varchar(20) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `create_staff_id` int(11) DEFAULT NULL,
  `create_student_id` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `class` varchar(60) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `class`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'BPT 1st YEAR', 'no', '2025-07-16 05:49:27', '2025-07-16 05:49:27');

-- --------------------------------------------------------

--
-- Table structure for table `class_sections`
--

CREATE TABLE `class_sections` (
  `id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `class_sections`
--

INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'no', '2025-07-16 05:49:27', '2025-07-16 05:49:27');

-- --------------------------------------------------------

--
-- Table structure for table `class_section_times`
--

CREATE TABLE `class_section_times` (
  `id` int(11) NOT NULL,
  `class_section_id` int(11) DEFAULT NULL,
  `time` time DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class_teacher`
--

CREATE TABLE `class_teacher` (
  `id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `id` int(11) NOT NULL,
  `complaint_type` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `email` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `description` text NOT NULL,
  `action_taken` varchar(200) NOT NULL,
  `assigned` varchar(50) NOT NULL,
  `note` text NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `complaint_type`
--

CREATE TABLE `complaint_type` (
  `id` int(11) NOT NULL,
  `complaint_type` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `is_public` varchar(10) DEFAULT 'No',
  `class_id` int(11) DEFAULT NULL,
  `cls_sec_id` int(11) DEFAULT NULL,
  `file` varchar(250) DEFAULT NULL,
  `date` date NOT NULL,
  `note` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `content_for`
--

CREATE TABLE `content_for` (
  `id` int(11) NOT NULL,
  `role` varchar(50) DEFAULT NULL,
  `content_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `content_types`
--

CREATE TABLE `content_types` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` int(11) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cumulative_fine`
--

CREATE TABLE `cumulative_fine` (
  `id` int(11) NOT NULL,
  `overdue_day` int(11) NOT NULL,
  `fine_amount` float(10,2) NOT NULL,
  `fee_groups_feetype_id` int(11) NOT NULL,
  `fee_session_group_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `short_name` varchar(100) DEFAULT NULL,
  `symbol` varchar(10) DEFAULT NULL,
  `base_price` varchar(10) NOT NULL DEFAULT '1',
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `short_name`, `symbol`, `base_price`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'AED', 'AED', 'AEDf', '1', 0, '2022-12-30 06:19:15', '2025-07-03 06:17:15'),
(2, 'AFN', 'AFN', '؋', '1', 0, '2022-12-30 06:19:19', '2025-07-03 06:17:15'),
(3, 'ALL', 'ALL', 'ALL', '1', 0, '2022-12-30 06:19:22', '2025-07-03 06:17:15'),
(4, 'AMD', 'AMD', 'AMD', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(5, 'ANG', 'ANG', 'ANG', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(6, 'AOA', 'AOA', 'AOA', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(7, 'ARS', 'ARS', 'ARS', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(8, 'AUD', 'AUD', 'AUD', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(9, 'AWG', 'AWG', 'AWG', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(10, 'AZN', 'AZN', 'AZN', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(11, 'BAM', 'BAM', 'BAM', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(12, 'BAM', 'BAM', 'BAM', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(13, 'BDT', 'BDT', 'BDT', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(14, 'BGN', 'BGN', 'BGN', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(15, 'BHD', 'BHD', 'BHD', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(16, 'BIF', 'BIF', 'BIF', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(17, 'BMD', 'BMD', 'BMD', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(18, 'BND', 'BND', 'BND', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(19, 'BOB', 'BOB', 'BOB', '1', 0, '2022-12-30 06:19:29', '2025-07-03 06:17:15'),
(20, 'BOV', 'BOV', 'BOV', '1', 0, '2022-12-30 06:19:38', '2025-07-03 06:17:15'),
(21, 'BRL', 'BRL', 'BRL', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(22, 'BSD', 'BSD', 'BSD', '1', 0, '2022-12-30 06:19:40', '2025-07-03 06:17:15'),
(23, 'BTN', 'BTN', 'BTN', '1', 0, '2022-12-30 06:19:42', '2025-07-03 06:17:15'),
(24, 'BWP', 'BWP', 'BWP', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(25, 'BYN', 'BYN', 'BYN', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(26, 'BYR', 'BYR', 'BYR', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(27, 'BZD', 'BZD', 'BZD', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(28, 'CAD', 'CAD', 'CAD', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(29, 'CDF', 'CDF', 'CDF', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(30, 'CHE', 'CHE', 'CHE', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(31, 'CHF', 'CHF', 'CHF', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(32, 'CHW', 'CHW', 'CHW', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(33, 'CLF', 'CLF', 'CLF', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(34, 'CLP', 'CLP', 'CLP', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(35, 'CNY', 'CNY', 'CNY', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(36, 'COP', 'COP', 'COP', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(37, 'COU', 'COU', 'COU', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(38, 'CRC', 'CRC', 'CRC', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(39, 'CUC', 'CUC', 'CUC', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(40, 'CUP', 'CUP', 'CUP', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(41, 'CVE', 'CVE', 'CVE', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(42, 'CZK', 'CZK', 'CZK', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(43, 'DJF', 'DJF', 'DJF', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(44, 'DKK', 'DKK', 'DKK', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(45, 'DOP', 'DOP', 'DOP', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(46, 'DZD', 'DZD', 'DZD', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(47, 'EGP', 'EGP', 'EGP', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(48, 'ERN', 'ERN', 'ERN', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(49, 'ETB', 'ETB', 'ETB', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(50, 'EUR', 'EUR', '€', '1', 0, '2022-12-30 06:20:25', '2025-07-03 06:17:15'),
(51, 'FJD', 'FJD', 'FJD', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(52, 'FKP', 'FKP', 'FKP', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(53, 'GBP', 'GBP', '£', '1', 0, '2022-12-30 06:20:29', '2025-07-03 06:17:15'),
(54, 'GEL', 'GEL', 'GEL', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(55, 'GHS', 'GHS', 'GHS', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(56, 'GIP', 'GIP', 'GIP', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(57, 'GMD', 'GMD', 'GMD', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(58, 'GNF', 'GNF', 'GNF', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(59, 'GTQ', 'GTQ', 'GTQ', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(60, 'GYD', 'GYD', 'GYD', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(61, 'HKD', 'HKD', 'HKD', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(62, 'HNL', 'HNL', 'HNL', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(63, 'HRK', 'HRK', 'HRK', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(64, 'HTG', 'HTG', 'HTG', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(65, 'HUF', 'HUF', 'HUF', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(66, 'IDR', 'IDR', 'IDR', '1', 0, '2022-12-30 06:20:34', '2025-07-03 06:17:15'),
(67, 'ILS', 'ILS', 'ILS', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(68, 'INR', 'INR', '₹', '1', 1, '2022-12-30 06:20:37', '2025-07-03 10:43:14'),
(69, 'IQD', 'IQD', 'IQD', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(70, 'IRR', 'IRR', 'IRR', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(71, 'ISK', 'ISK', 'ISK', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(72, 'JMD', 'JMD', 'JMD', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(73, 'JOD', 'JOD', 'JOD', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(74, 'JPY', 'JPY', 'JPY', '1', 0, '2022-12-30 06:19:56', '2025-07-03 06:17:15'),
(75, 'KES', 'KES', 'KES', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(76, 'KGS', 'KGS', 'KGS', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(77, 'KHR', 'KHR', 'KHR', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(78, 'KMF', 'KMF', 'KMF', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(79, 'KPW', 'KPW', 'KPW', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(80, 'KRW', 'KRW', 'KRW', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(81, 'KWD', 'KWD', 'KWD', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(82, 'KYD', 'KYD', 'KYD', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(83, 'KZT', 'KZT', 'KZT', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(84, 'LAK', 'LAK', 'LAK', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(85, 'LBP', 'LBP', 'LBP', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(86, 'LKR', 'LKR', 'LKR', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(87, 'LRD', 'LRD', 'LRD', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(88, 'LSL', 'LSL', 'LSL', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(89, 'LYD', 'LYD', 'LYD', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(90, 'MAD', 'MAD', 'MAD', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(91, 'MDL', 'MDL', 'MDL', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(92, 'MGA', 'MGA', 'MGA', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(93, 'MKD', 'MKD', 'MKD', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(94, 'MMK', 'MMK', 'MMK', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(95, 'MNT', 'MNT', 'MNT', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(96, 'MOP', 'MOP', 'MOP', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(97, 'MRO', 'MRO', 'MRO', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(98, 'MUR', 'MUR', 'MUR', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(99, 'MVR', 'MVR', 'MVR', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(100, 'MWK', 'MWK', 'MWK', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(101, 'MXN', 'MXN', 'MXN', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(102, 'MXV', 'MXV', 'MXV', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(103, 'MYR', 'MYR', 'MYR', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(104, 'MZN', 'MZN', 'MZN', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(105, 'NAD', 'NAD', 'NAD', '1', 0, '2022-07-30 09:32:37', '2025-07-03 06:17:15'),
(106, 'NGN', 'NGN', 'NGN', '1', 0, '2022-12-30 06:20:42', '2025-07-03 06:17:15'),
(107, 'NIO', 'NIO', 'NIO', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(108, 'NOK', 'NOK', 'NOK', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(109, 'NPR', 'NPR', 'NPR', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(110, 'NZD', 'NZD', 'NZD', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(111, 'OMR', 'OMR', 'OMR', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(112, 'PAB', 'PAB', 'PAB', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(113, 'PEN', 'PEN', 'PEN', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(114, 'PGK', 'PGK', 'PGK', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(115, 'PHP', 'PHP', 'PHP', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(116, 'PKR', 'PKR', 'PKR', '1', 0, '2022-12-30 06:20:19', '2025-07-03 06:17:15'),
(117, 'PLN', 'PLN', 'PLN', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(118, 'PYG', 'PYG', 'PYG', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(119, 'QAR', 'QAR', 'QAR', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(120, 'RON', 'RON', 'RON', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(121, 'RSD', 'RSD', 'RSD', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(122, 'RUB', 'RUB', 'RUB', '1', 0, '2022-12-30 06:20:16', '2025-07-03 06:17:15'),
(123, 'RWF', 'RWF', 'RWF', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(124, 'SAR', 'SAR', 'SAR', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(125, 'SBD', 'SBD', 'SBD', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(126, 'SCR', 'SCR', 'SCR', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(127, 'SDG', 'SDG', 'SDG', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(128, 'SEK', 'SEK', 'SEK', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(129, 'SGD', 'SGD', 'SGD', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(130, 'SHP', 'SHP', 'SHP', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(131, 'SLL', 'SLL', 'SLL', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(132, 'SOS', 'SOS', 'SOS', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(133, 'SRD', 'SRD', 'SRD', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(134, 'SSP', 'SSP', 'SSP', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(135, 'STD', 'STD', 'STD', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(136, 'SVC', 'SVC', 'SVC', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(137, 'SYP', 'SYP', 'SYP', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(138, 'SZL', 'SZL', 'SZL', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(139, 'THB', 'THB', 'THB', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(140, 'TJS', 'TJS', 'TJS', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(141, 'TMT', 'TMT', 'TMT', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(142, 'TND', 'TND', 'TND', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(143, 'TOP', 'TOP', 'TOP', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(144, 'TRY', 'TRY', 'TRY', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(145, 'TTD', 'TTD', 'TTD', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(146, 'TWD', 'TWD', 'TWD', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(147, 'TZS', 'TZS', 'TZS', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(148, 'UAH', 'UAH', 'UAH', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(149, 'UGX', 'UGX', 'UGX', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(150, 'USD', 'USD', '', '1', 0, '2022-07-22 10:55:15', '2025-07-16 09:19:31'),
(151, 'USN', 'USN', 'USN', '1', 0, '2022-12-30 06:20:03', '2025-07-03 06:17:15'),
(152, 'UYI', 'UYI', 'UYI', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(153, 'UYU', 'UYU', 'UYU', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(154, 'UZS', 'UZS', 'UZS', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(155, 'VEF', 'VEF', 'VEF', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(156, 'VND', 'VND', 'VND', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(157, 'VUV', 'VUV', 'VUV', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(158, 'WST', 'WST', 'WST', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(159, 'XAF', 'XAF', 'XAF', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(160, 'XAG', 'XAG', 'XAG', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(161, 'XAU', 'XAU', 'XAU', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(162, 'XBA', 'XBA', 'XBA', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(163, 'XBB', 'XBB', 'XBB', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(164, 'XBC', 'XBC', 'XBC', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(165, 'XBD', 'XBD', 'XBD', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(166, 'XCD', 'XCD', 'XCD', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(167, 'XDR', 'XDR', 'XDR', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(168, 'XOF', 'XOF', 'XOF', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(169, 'XPD', 'XPD', 'XPD', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(170, 'XPF', 'XPF', 'XPF', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(171, 'XPT', 'XPT', 'XPT', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(172, 'XSU', 'XSU', 'XSU', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(173, 'XTS', 'XTS', 'XTS', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(174, 'XUA', 'XUA', 'XUA', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(175, 'XXX', 'XXX', 'XXX', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(176, 'YER', 'YER', 'YER', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15'),
(177, 'ZAR', 'ZAR', 'ZAR', '1', 0, '2022-12-30 06:20:07', '2025-07-03 06:17:15'),
(178, 'ZMW', 'ZMW', 'ZMW', '1', 0, '2022-07-30 07:34:00', '2025-07-03 06:17:15'),
(179, 'ZWL', 'ZWL', 'ZWL', '1', 0, '2022-07-22 10:55:15', '2025-07-03 06:17:15');

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `belong_to` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `bs_column` int(11) DEFAULT NULL,
  `validation` int(11) DEFAULT 0,
  `field_values` text DEFAULT NULL,
  `show_table` varchar(100) DEFAULT NULL,
  `visible_on_table` int(11) NOT NULL,
  `weight` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_values`
--

CREATE TABLE `custom_field_values` (
  `id` int(11) NOT NULL,
  `belong_table_id` int(11) DEFAULT NULL,
  `custom_field_id` int(11) DEFAULT NULL,
  `field_value` varchar(500) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `daily_assignment`
--

CREATE TABLE `daily_assignment` (
  `id` int(11) NOT NULL,
  `student_session_id` int(11) NOT NULL,
  `subject_group_subject_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `evaluated_by` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `evaluation_date` date DEFAULT NULL,
  `remark` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `department_name` varchar(200) NOT NULL,
  `is_active` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `department_name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Pharmaceutical ', 'yes', '2025-07-03 12:37:35', '2025-07-03 12:37:35'),
(2, 'PHYSIOTHERAPY', 'yes', '2025-07-18 05:46:51', '2025-07-18 05:46:51');

-- --------------------------------------------------------

--
-- Table structure for table `disable_reason`
--

CREATE TABLE `disable_reason` (
  `id` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dispatch_receive`
--

CREATE TABLE `dispatch_receive` (
  `id` int(11) NOT NULL,
  `reference_no` varchar(50) NOT NULL,
  `to_title` varchar(100) NOT NULL,
  `type` varchar(10) NOT NULL,
  `address` varchar(500) NOT NULL,
  `note` varchar(500) NOT NULL,
  `from_title` varchar(200) NOT NULL,
  `date` date DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_attachments`
--

CREATE TABLE `email_attachments` (
  `id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  `directory` varchar(255) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `attachment_name` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_config`
--

CREATE TABLE `email_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `email_type` varchar(100) DEFAULT NULL,
  `smtp_server` varchar(100) DEFAULT NULL,
  `smtp_port` varchar(100) DEFAULT NULL,
  `smtp_email` varchar(255) DEFAULT NULL,
  `smtp_username` varchar(100) DEFAULT NULL,
  `smtp_password` varchar(100) DEFAULT NULL,
  `ssl_tls` varchar(100) DEFAULT NULL,
  `smtp_auth` varchar(10) NOT NULL,
  `api_key` varchar(255) DEFAULT NULL,
  `api_secret` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `email_config`
--

INSERT INTO `email_config` (`id`, `email_type`, `smtp_server`, `smtp_port`, `smtp_email`, `smtp_username`, `smtp_password`, `ssl_tls`, `smtp_auth`, `api_key`, `api_secret`, `region`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'sendmail', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 'yes', '2020-02-28 13:46:03', '2025-07-03 06:17:15');

-- --------------------------------------------------------

--
-- Table structure for table `email_template`
--

CREATE TABLE `email_template` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_template_attachment`
--

CREATE TABLE `email_template_attachment` (
  `id` int(11) NOT NULL,
  `email_template_id` int(11) NOT NULL,
  `attachment` varchar(100) NOT NULL,
  `attachment_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `reference` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(500) NOT NULL,
  `follow_up_date` date NOT NULL,
  `note` text NOT NULL,
  `source` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `assigned` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `no_of_child` varchar(11) DEFAULT NULL,
  `status` varchar(100) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_type`
--

CREATE TABLE `enquiry_type` (
  `id` int(11) NOT NULL,
  `enquiry_type` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `event_title` varchar(200) NOT NULL,
  `event_description` text NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `event_type` varchar(100) NOT NULL,
  `event_color` varchar(200) NOT NULL,
  `event_for` varchar(100) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `is_active` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `sesion_id` int(11) NOT NULL,
  `note` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_groups`
--

CREATE TABLE `exam_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `exam_type` varchar(250) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` int(11) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_group_class_batch_exams`
--

CREATE TABLE `exam_group_class_batch_exams` (
  `id` int(11) NOT NULL,
  `exam` varchar(250) DEFAULT NULL,
  `passing_percentage` float(10,2) DEFAULT NULL,
  `session_id` int(11) NOT NULL,
  `date_from` date DEFAULT NULL,
  `date_to` date DEFAULT NULL,
  `exam_group_id` int(11) DEFAULT NULL,
  `use_exam_roll_no` int(11) NOT NULL DEFAULT 1,
  `is_publish` int(11) DEFAULT 0,
  `is_rank_generated` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_group_class_batch_exam_students`
--

CREATE TABLE `exam_group_class_batch_exam_students` (
  `id` int(11) NOT NULL,
  `exam_group_class_batch_exam_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_session_id` int(11) NOT NULL,
  `roll_no` int(11) DEFAULT NULL,
  `teacher_remark` text DEFAULT NULL,
  `rank` int(11) NOT NULL DEFAULT 0,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_group_class_batch_exam_subjects`
--

CREATE TABLE `exam_group_class_batch_exam_subjects` (
  `id` int(11) NOT NULL,
  `exam_group_class_batch_exams_id` int(11) DEFAULT NULL,
  `subject_id` int(11) NOT NULL,
  `date_from` date NOT NULL,
  `time_from` time NOT NULL,
  `duration` varchar(50) NOT NULL,
  `room_no` varchar(100) DEFAULT NULL,
  `max_marks` float(10,2) DEFAULT NULL,
  `min_marks` float(10,2) DEFAULT NULL,
  `credit_hours` float(10,2) DEFAULT 0.00,
  `date_to` datetime DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_group_exam_connections`
--

CREATE TABLE `exam_group_exam_connections` (
  `id` int(11) NOT NULL,
  `exam_group_id` int(11) DEFAULT NULL,
  `exam_group_class_batch_exams_id` int(11) DEFAULT NULL,
  `exam_weightage` float(10,2) DEFAULT 0.00,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_group_exam_results`
--

CREATE TABLE `exam_group_exam_results` (
  `id` int(11) NOT NULL,
  `exam_group_class_batch_exam_student_id` int(11) NOT NULL,
  `exam_group_class_batch_exam_subject_id` int(11) DEFAULT NULL,
  `exam_group_student_id` int(11) DEFAULT NULL,
  `attendence` varchar(10) DEFAULT NULL,
  `get_marks` float(10,2) DEFAULT 0.00,
  `note` text DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_group_students`
--

CREATE TABLE `exam_group_students` (
  `id` int(11) NOT NULL,
  `exam_group_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_schedules`
--

CREATE TABLE `exam_schedules` (
  `id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `teacher_subject_id` int(11) DEFAULT NULL,
  `date_of_exam` date DEFAULT NULL,
  `start_to` varchar(50) DEFAULT NULL,
  `end_from` varchar(50) DEFAULT NULL,
  `room_no` varchar(50) DEFAULT NULL,
  `full_marks` int(11) DEFAULT NULL,
  `passing_marks` int(11) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(11) NOT NULL,
  `exp_head_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `invoice_no` varchar(200) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `documents` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'yes',
  `is_deleted` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_head`
--

CREATE TABLE `expense_head` (
  `id` int(11) NOT NULL,
  `exp_category` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'yes',
  `is_deleted` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feemasters`
--

CREATE TABLE `feemasters` (
  `id` int(11) NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `feetype_id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fees_discounts`
--

CREATE TABLE `fees_discounts` (
  `id` int(11) NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `percentage` float(10,2) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `discount_limit` int(11) DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fees_reminder`
--

CREATE TABLE `fees_reminder` (
  `id` int(11) NOT NULL,
  `reminder_type` varchar(10) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `fees_reminder`
--

INSERT INTO `fees_reminder` (`id`, `reminder_type`, `day`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'before', 2, 0, '2020-02-28 13:38:32', NULL),
(2, 'before', 5, 0, '2020-02-28 13:38:36', NULL),
(3, 'after', 2, 0, '2020-02-28 13:38:40', NULL),
(4, 'after', 5, 0, '2020-02-28 13:38:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `feetype`
--

CREATE TABLE `feetype` (
  `id` int(11) NOT NULL,
  `is_system` int(11) NOT NULL DEFAULT 0,
  `feecategory_id` int(11) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `code` varchar(100) NOT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `description` text DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `nature` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `feetype`
--

INSERT INTO `feetype` (`id`, `is_system`, `feecategory_id`, `type`, `code`, `is_active`, `description`, `session_id`, `student_session_id`, `nature`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'TUITION FEE', '001', 'no', '', NULL, NULL, '', '2025-07-16 05:44:20', '2025-07-16 05:44:20');

-- --------------------------------------------------------

--
-- Table structure for table `fee_groups`
--

CREATE TABLE `fee_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `is_system` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `nature` varchar(255) NOT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `fee_groups`
--

INSERT INTO `fee_groups` (`id`, `name`, `is_system`, `description`, `nature`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'ADMISSION ', 0, '', '', 'no', '2025-07-16 05:44:32', '2025-07-16 05:44:32'),
(2, 'ADMISSION\'', 0, '', '', 'no', '2025-07-16 05:44:56', '2025-07-16 05:44:56'),
(3, 'ADMISSION.', 0, '', '', 'no', '2025-07-16 05:45:03', '2025-07-16 05:45:03'),
(4, 'ADMISSION*', 0, '', '', 'no', '2025-07-16 05:45:11', '2025-07-16 05:45:11'),
(5, 'ADMISSION^', 0, '', '', 'no', '2025-07-16 05:45:17', '2025-07-16 05:45:17'),
(6, 'ADMISSION!', 0, '', '', 'no', '2025-07-16 05:45:23', '2025-07-16 05:45:23'),
(7, 'ADMISSION`', 0, '', '', 'no', '2025-07-16 05:45:30', '2025-07-16 05:45:30'),
(8, 'ADMISSION~', 0, '', '', 'no', '2025-07-16 05:45:35', '2025-07-16 05:45:35'),
(9, 'ADMISSION\'\'', 0, '', '', 'no', '2025-07-16 05:45:47', '2025-07-16 05:45:47'),
(10, 'ADMISSION-', 0, '', '', 'no', '2025-07-16 05:45:58', '2025-07-16 05:45:58');

-- --------------------------------------------------------

--
-- Table structure for table `fee_groups_feetype`
--

CREATE TABLE `fee_groups_feetype` (
  `id` int(11) NOT NULL,
  `fee_session_group_id` int(11) DEFAULT NULL,
  `fee_groups_id` int(11) DEFAULT NULL,
  `feetype_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `fine_type` varchar(50) NOT NULL DEFAULT 'none',
  `due_date` date DEFAULT NULL,
  `fine_percentage` float(10,2) NOT NULL DEFAULT 0.00,
  `fine_amount` float(10,2) NOT NULL DEFAULT 0.00,
  `fine_per_day` int(11) NOT NULL DEFAULT 0,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `fee_groups_feetype`
--

INSERT INTO `fee_groups_feetype` (`id`, `fee_session_group_id`, `fee_groups_id`, `feetype_id`, `session_id`, `amount`, `fine_type`, `due_date`, `fine_percentage`, `fine_amount`, `fine_per_day`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 21, 100000.00, 'none', NULL, 0.00, 0.00, 0, 'no', '2025-07-16 05:46:25', '2025-07-16 05:46:25'),
(2, 2, 2, 1, 21, 65000.00, 'none', NULL, 0.00, 0.00, 0, 'no', '2025-07-16 05:46:36', '2025-07-16 05:46:36'),
(3, 3, 3, 1, 21, 75000.00, 'none', NULL, 0.00, 0.00, 0, 'no', '2025-07-16 05:46:45', '2025-07-16 05:46:45'),
(4, 4, 4, 1, 21, 80000.00, 'none', NULL, 0.00, 0.00, 0, 'no', '2025-07-16 05:46:54', '2025-07-16 05:46:54'),
(5, 5, 5, 1, 21, 85000.00, 'none', NULL, 0.00, 0.00, 0, 'no', '2025-07-16 05:47:05', '2025-07-16 05:47:05'),
(6, 6, 6, 1, 21, 95000.00, 'none', NULL, 0.00, 0.00, 0, 'no', '2025-07-16 05:47:39', '2025-07-16 05:47:39'),
(7, 7, 7, 1, 21, 60000.00, 'none', NULL, 0.00, 0.00, 0, 'no', '2025-07-16 05:48:06', '2025-07-16 05:48:06'),
(8, 8, 8, 1, 21, 90000.00, 'none', NULL, 0.00, 0.00, 0, 'no', '2025-07-17 07:04:23', '2025-07-17 07:04:23'),
(9, 9, 9, 1, 21, 70000.00, 'none', NULL, 0.00, 0.00, 0, 'no', '2025-07-17 10:32:18', '2025-07-17 10:32:18');

-- --------------------------------------------------------

--
-- Table structure for table `fee_receipt_no`
--

CREATE TABLE `fee_receipt_no` (
  `id` int(11) NOT NULL,
  `payment` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fee_session_groups`
--

CREATE TABLE `fee_session_groups` (
  `id` int(11) NOT NULL,
  `fee_groups_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `fee_session_groups`
--

INSERT INTO `fee_session_groups` (`id`, `fee_groups_id`, `session_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 21, 'no', '2025-07-16 05:46:25', '2025-07-16 05:46:25'),
(2, 2, 21, 'no', '2025-07-16 05:46:36', '2025-07-16 05:46:36'),
(3, 3, 21, 'no', '2025-07-16 05:46:45', '2025-07-16 05:46:45'),
(4, 4, 21, 'no', '2025-07-16 05:46:54', '2025-07-16 05:46:54'),
(5, 5, 21, 'no', '2025-07-16 05:47:05', '2025-07-16 05:47:05'),
(6, 6, 21, 'no', '2025-07-16 05:47:39', '2025-07-16 05:47:39'),
(7, 7, 21, 'no', '2025-07-16 05:48:06', '2025-07-16 05:48:06'),
(8, 8, 21, 'no', '2025-07-17 07:04:23', '2025-07-17 07:04:23'),
(9, 9, 21, 'no', '2025-07-17 10:32:18', '2025-07-17 10:32:18');

-- --------------------------------------------------------

--
-- Table structure for table `filetypes`
--

CREATE TABLE `filetypes` (
  `id` int(11) NOT NULL,
  `file_extension` text DEFAULT NULL,
  `file_mime` text DEFAULT NULL,
  `file_size` int(11) NOT NULL,
  `image_extension` text DEFAULT NULL,
  `image_mime` text DEFAULT NULL,
  `image_size` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `filetypes`
--

INSERT INTO `filetypes` (`id`, `file_extension`, `file_mime`, `file_size`, `image_extension`, `image_mime`, `image_size`, `created_at`, `updated_at`) VALUES
(1, 'pdf, zip, jpg, jpeg, png, txt, 7z, gif, csv, docx, mp3, mp4, accdb, odt, ods, ppt, pptx, xlsx, wmv, jfif, apk, ppt, bmp, jpe, mdb, rar, xls, svg', 'application/pdf, image/zip, image/jpg, image/png, image/jpeg, text/plain, application/x-zip-compressed, application/zip, image/gif, text/csv, application/vnd.openxmlformats-officedocument.wordprocessingml.document, audio/mpeg, application/msaccess, application/vnd.oasis.opendocument.text, application/vnd.oasis.opendocument.spreadsheet, application/vnd.ms-powerpoint, application/vnd.openxmlformats-officedocument.presentationml.presentation, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet, video/x-ms-wmv, video/mp4, image/jpeg, application/vnd.android.package-archive, application/x-msdownload, application/vnd.ms-powerpoint, image/bmp, image/jpeg, application/msaccess, application/vnd.ms-excel, image/svg+xml', 100048576, 'jfif, png, jpe, jpeg, jpg, bmp, gif, svg', 'image/jpeg, image/png, image/jpeg, image/jpeg, image/bmp, image/gif, image/x-ms-bmp, image/svg+xml', 10048576, '2021-01-30 13:03:03', '2025-07-03 06:17:15');

-- --------------------------------------------------------

--
-- Table structure for table `follow_up`
--

CREATE TABLE `follow_up` (
  `id` int(11) NOT NULL,
  `enquiry_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `next_date` date NOT NULL,
  `response` text NOT NULL,
  `note` text NOT NULL,
  `followup_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_media_gallery`
--

CREATE TABLE `front_cms_media_gallery` (
  `id` int(11) NOT NULL,
  `image` varchar(300) DEFAULT NULL,
  `thumb_path` varchar(300) DEFAULT NULL,
  `dir_path` varchar(300) DEFAULT NULL,
  `img_name` varchar(300) DEFAULT NULL,
  `thumb_name` varchar(300) DEFAULT NULL,
  `file_type` varchar(100) NOT NULL,
  `file_size` varchar(100) NOT NULL,
  `vid_url` text NOT NULL,
  `vid_title` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_menus`
--

CREATE TABLE `front_cms_menus` (
  `id` int(11) NOT NULL,
  `menu` varchar(100) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `open_new_tab` int(11) NOT NULL DEFAULT 0,
  `ext_url` text NOT NULL,
  `ext_url_link` text NOT NULL,
  `publish` int(11) NOT NULL DEFAULT 0,
  `content_type` varchar(10) NOT NULL DEFAULT 'manual',
  `is_active` varchar(10) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `front_cms_menus`
--

INSERT INTO `front_cms_menus` (`id`, `menu`, `slug`, `description`, `open_new_tab`, `ext_url`, `ext_url_link`, `publish`, `content_type`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Main Menu', 'main-menu', 'Main menu', 0, '', '', 0, 'default', 'no', '2018-04-20 14:54:49', '2025-07-03 06:17:15'),
(2, 'Bottom Menu', 'bottom-menu', 'Bottom Menu', 0, '', '', 0, 'default', 'no', '2018-04-20 14:54:55', '2025-07-03 06:17:15');

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_menu_items`
--

CREATE TABLE `front_cms_menu_items` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `menu` varchar(100) DEFAULT NULL,
  `page_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `ext_url` text DEFAULT NULL,
  `open_new_tab` int(11) DEFAULT 0,
  `ext_url_link` text DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `publish` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `is_active` varchar(10) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `front_cms_menu_items`
--

INSERT INTO `front_cms_menu_items` (`id`, `menu_id`, `menu`, `page_id`, `parent_id`, `ext_url`, `open_new_tab`, `ext_url_link`, `slug`, `weight`, `publish`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 'Home', 1, 0, NULL, NULL, NULL, 'home', 1, 0, NULL, 'no', '2019-12-02 22:11:50', '2025-07-03 06:17:15'),
(2, 1, 'Contact Us', 76, 0, NULL, NULL, NULL, 'contact-us', 4, 0, NULL, 'no', '2019-12-02 22:11:52', '2025-07-03 06:17:15'),
(3, 1, 'Complain', 2, 0, NULL, NULL, NULL, 'complain', 3, 0, NULL, 'no', '2019-12-02 22:11:52', '2025-07-03 06:17:15'),
(4, 1, 'Online Admission', 0, 0, '1', NULL, 'http://yourschoolurl.com/online_admission', 'admssion', 2, 0, NULL, 'no', '2019-12-21 15:33:00', '2025-07-03 06:17:15');

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_pages`
--

CREATE TABLE `front_cms_pages` (
  `id` int(11) NOT NULL,
  `page_type` varchar(10) NOT NULL DEFAULT 'manual',
  `is_homepage` int(11) DEFAULT 0,
  `title` varchar(250) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keyword` text DEFAULT NULL,
  `feature_image` varchar(200) NOT NULL,
  `description` longtext DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `publish` int(11) DEFAULT 0,
  `sidebar` int(11) DEFAULT 0,
  `is_active` varchar(10) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `front_cms_pages`
--

INSERT INTO `front_cms_pages` (`id`, `page_type`, `is_homepage`, `title`, `url`, `type`, `slug`, `meta_title`, `meta_description`, `meta_keyword`, `feature_image`, `description`, `publish_date`, `publish`, `sidebar`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'default', 1, 'Home', 'page/home', 'page', 'home', '', '', '', '', '<p>home page</p>', '0000-00-00', 1, NULL, 'no', '2019-12-02 15:23:47', '2025-07-03 06:17:15'),
(2, 'default', 0, 'Complain', 'page/complain', 'page', 'complain', 'Complain form', '                                                                                                                                                                                    complain form                                                                                                                                                                                                                                ', 'complain form', '', '<p>[form-builder:complain]</p>', '0000-00-00', 1, NULL, 'no', '2019-11-13 10:16:36', '2025-07-03 06:17:15'),
(3, 'default', 0, '404 page', 'page/404-page', 'page', '404-page', '', '                                ', '', '', '<html>\r\n<head>\r\n <title></title>\r\n</head>\r\n<body>\r\n<p>404 page found</p>\r\n</body>\r\n</html>', '0000-00-00', 0, NULL, 'no', '2018-05-18 14:46:04', '2025-07-03 06:17:15'),
(4, 'default', 0, 'Contact us', 'page/contact-us', 'page', 'contact-us', '', '', '', '', '<section class=\"contact\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<h2 class=\"col-md-12 col-sm-12\">Send In Your Query</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"col-md-12 col-sm-12\">[form-builder:contact_us]<!--./row--></div>\r\n<!--./col-md-12--></div>\r\n<!--./row--></div>\r\n<!--./container--></section>\r\n\r\n<div class=\"col-md-4 col-sm-4\">\r\n<div class=\"contact-item\"><img src=\"http://192.168.1.81/repos/smartschool/uploads/gallery/media/pin.svg\" />\r\n<h3>Our Location</h3>\r\n\r\n<p>350 Fifth Avenue, 34th floor New York NY 10118-3299 USA</p>\r\n</div>\r\n<!--./contact-item--></div>\r\n<!--./col-md-4-->\r\n\r\n<div class=\"col-md-4 col-sm-4\">\r\n<div class=\"contact-item\"><img src=\"http://192.168.1.81/repos/smartschool/uploads/gallery/media/phone.svg\" />\r\n<h3>CALL US</h3>\r\n\r\n<p>E-mail : info@abcschool.com</p>\r\n\r\n<p>Mobile : +91-9009987654</p>\r\n</div>\r\n<!--./contact-item--></div>\r\n<!--./col-md-4-->\r\n\r\n<div class=\"col-md-4 col-sm-4\">\r\n<div class=\"contact-item\"><img src=\"http://192.168.1.81/repos/smartschool/uploads/gallery/media/clock.svg\" />\r\n<h3>Working Hours</h3>\r\n\r\n<p>Mon-Fri : 9 am to 5 pm</p>\r\n\r\n<p>Sat : 9 am to 3 pm</p>\r\n</div>\r\n<!--./contact-item--></div>\r\n<!--./col-md-4-->\r\n\r\n<div class=\"col-md-12 col-sm-12\">\r\n<div class=\"mapWrapper fullwidth\"><iframe frameborder=\"0\" height=\"500\" marginheight=\"0\" marginwidth=\"0\" scrolling=\"no\" src=\"http://maps.google.com/maps?f=q&source=s_q&hl=EN&q=time+square&aq=&sll=40.716558,-73.931122&sspn=0.40438,1.056747&ie=UTF8&rq=1&ev=p&split=1&radius=33.22&hq=time+square&hnear=&ll=37.061753,-95.677185&spn=0.438347,0.769043&z=9&output=embed\" width=\"100%\"></iframe></div>\r\n</div>', '0000-00-00', 0, NULL, 'no', '2019-05-04 15:46:41', '2025-07-03 06:17:15');

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_page_contents`
--

CREATE TABLE `front_cms_page_contents` (
  `id` int(11) NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  `content_type` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_programs`
--

CREATE TABLE `front_cms_programs` (
  `id` int(11) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `event_start` date DEFAULT NULL,
  `event_end` date DEFAULT NULL,
  `event_venue` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` varchar(10) DEFAULT 'no',
  `meta_title` text NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `feature_image` text NOT NULL,
  `publish_date` date DEFAULT NULL,
  `publish` varchar(10) DEFAULT '0',
  `sidebar` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_program_photos`
--

CREATE TABLE `front_cms_program_photos` (
  `id` int(11) NOT NULL,
  `program_id` int(11) DEFAULT NULL,
  `media_gallery_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_settings`
--

CREATE TABLE `front_cms_settings` (
  `id` int(11) NOT NULL,
  `theme` varchar(50) DEFAULT NULL,
  `is_active_rtl` int(11) DEFAULT 0,
  `is_active_front_cms` int(11) DEFAULT 0,
  `is_active_sidebar` int(11) DEFAULT 0,
  `logo` varchar(200) DEFAULT NULL,
  `contact_us_email` varchar(100) DEFAULT NULL,
  `complain_form_email` varchar(100) DEFAULT NULL,
  `sidebar_options` text NOT NULL,
  `whatsapp_url` varchar(255) NOT NULL,
  `fb_url` varchar(200) NOT NULL,
  `twitter_url` varchar(200) NOT NULL,
  `youtube_url` varchar(200) NOT NULL,
  `google_plus` varchar(200) NOT NULL,
  `instagram_url` varchar(200) NOT NULL,
  `pinterest_url` varchar(200) NOT NULL,
  `linkedin_url` varchar(200) NOT NULL,
  `google_analytics` text DEFAULT NULL,
  `footer_text` varchar(500) DEFAULT NULL,
  `cookie_consent` varchar(255) NOT NULL,
  `fav_icon` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `front_cms_settings`
--

INSERT INTO `front_cms_settings` (`id`, `theme`, `is_active_rtl`, `is_active_front_cms`, `is_active_sidebar`, `logo`, `contact_us_email`, `complain_form_email`, `sidebar_options`, `whatsapp_url`, `fb_url`, `twitter_url`, `youtube_url`, `google_plus`, `instagram_url`, `pinterest_url`, `linkedin_url`, `google_analytics`, `footer_text`, `cookie_consent`, `fav_icon`, `created_at`, `updated_at`) VALUES
(1, 'material_pink', NULL, NULL, NULL, './uploads/school_content/logo/1672900975-128524590063b6716fc26ed!front_logo-608ff44a5f8f07.35255544.png', '', '', '[]', '', '', '', '', '', '', '', '', '', '', '', './uploads/school_content/logo/1672900975-63781378463b6716fc2886!front_fav_icon-608ff44a5fdb33.94953981.png', '2023-01-05 06:42:55', '2025-07-03 06:17:15');

-- --------------------------------------------------------

--
-- Table structure for table `gateway_ins`
--

CREATE TABLE `gateway_ins` (
  `id` int(11) NOT NULL,
  `online_admission_id` int(11) DEFAULT NULL,
  `gateway_name` varchar(50) NOT NULL,
  `module_type` varchar(255) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `parameter_details` mediumtext NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gateway_ins_response`
--

CREATE TABLE `gateway_ins_response` (
  `id` int(11) NOT NULL,
  `gateway_ins_id` int(11) DEFAULT NULL,
  `posted_data` text DEFAULT NULL,
  `response` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_calls`
--

CREATE TABLE `general_calls` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` varchar(12) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(500) NOT NULL,
  `follow_up_date` date NOT NULL,
  `call_duration` varchar(50) NOT NULL,
  `note` text NOT NULL,
  `call_type` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` int(11) NOT NULL,
  `exam_type` varchar(250) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `point` float(10,1) DEFAULT NULL,
  `mark_from` float(10,2) DEFAULT NULL,
  `mark_upto` float(10,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `holiday_type`
--

CREATE TABLE `holiday_type` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `is_default` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `holiday_type`
--

INSERT INTO `holiday_type` (`id`, `type`, `is_default`) VALUES
(1, 'Holiday', 1),
(2, 'Vacation', 1),
(3, 'Activity', 1);

-- --------------------------------------------------------

--
-- Table structure for table `homework`
--

CREATE TABLE `homework` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `subject_group_subject_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `homework_date` date NOT NULL,
  `submit_date` date NOT NULL,
  `marks` float(10,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `create_date` date NOT NULL,
  `evaluation_date` date DEFAULT NULL,
  `document` varchar(200) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `evaluated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `homework_evaluation`
--

CREATE TABLE `homework_evaluation` (
  `id` int(11) NOT NULL,
  `homework_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `marks` float(10,2) DEFAULT NULL,
  `note` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hostel`
--

CREATE TABLE `hostel` (
  `id` int(11) NOT NULL,
  `hostel_name` varchar(100) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `intake` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hostel_rooms`
--

CREATE TABLE `hostel_rooms` (
  `id` int(11) NOT NULL,
  `hostel_id` int(11) DEFAULT NULL,
  `room_type_id` int(11) DEFAULT NULL,
  `room_no` varchar(200) DEFAULT NULL,
  `no_of_bed` int(11) DEFAULT NULL,
  `cost_per_bed` float(10,2) DEFAULT 0.00,
  `title` varchar(200) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `id_card`
--

CREATE TABLE `id_card` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `school_name` varchar(100) NOT NULL,
  `school_address` varchar(500) NOT NULL,
  `background` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `sign_image` varchar(100) NOT NULL,
  `enable_vertical_card` int(11) NOT NULL DEFAULT 0,
  `header_color` varchar(100) NOT NULL,
  `enable_admission_no` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_student_name` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_class` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_fathers_name` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_mothers_name` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_address` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_phone` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_dob` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_blood_group` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_student_barcode` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0=disable,1=enable',
  `enable_student_rollno` tinyint(1) NOT NULL COMMENT '0=disable,1=enable	',
  `enable_student_house_name` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=disable,1=enable	',
  `status` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `id_card`
--

INSERT INTO `id_card` (`id`, `title`, `school_name`, `school_address`, `background`, `logo`, `sign_image`, `enable_vertical_card`, `header_color`, `enable_admission_no`, `enable_student_name`, `enable_class`, `enable_fathers_name`, `enable_mothers_name`, `enable_address`, `enable_phone`, `enable_dob`, `enable_blood_group`, `enable_student_barcode`, `enable_student_rollno`, `enable_student_house_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sample Student Identity Card Horizontal', 'Mount Carmel School', '110 Kings Street, CA  Phone: 456542 Email: mount@gmail.com', 'samplebackground12.png', 'samplelogo12.png', 'samplesign12.png', 0, '#595959', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 1, '2025-07-03 06:17:15', '2025-07-03 06:17:15'),
(2, 'Sample Student Identity Card Vertical', 'Mount Carmel School', '110 Kings Street, CA  Phone: 456542 Email: mount@gmail.com', 'samplebackground12.png', 'samplelogo12.png', 'samplesign12.png', 1, '#595959', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 1, '2025-07-03 06:17:15', '2025-07-03 06:17:15');

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

CREATE TABLE `income` (
  `id` int(11) NOT NULL,
  `income_head_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `invoice_no` varchar(200) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `amount` float(10,2) DEFAULT 0.00,
  `note` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'yes',
  `documents` varchar(255) DEFAULT NULL,
  `is_deleted` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `income_head`
--

CREATE TABLE `income_head` (
  `id` int(11) NOT NULL,
  `income_category` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_active` varchar(255) NOT NULL DEFAULT 'yes',
  `is_deleted` varchar(255) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `item_category_id` int(11) DEFAULT NULL,
  `item_store_id` int(11) DEFAULT NULL,
  `item_supplier_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `item_photo` varchar(225) DEFAULT NULL,
  `description` text NOT NULL,
  `quantity` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_category`
--

CREATE TABLE `item_category` (
  `id` int(11) NOT NULL,
  `item_category` varchar(255) NOT NULL,
  `is_active` varchar(255) NOT NULL DEFAULT 'yes',
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_issue`
--

CREATE TABLE `item_issue` (
  `id` int(11) NOT NULL,
  `issue_type` varchar(15) DEFAULT NULL,
  `issue_to` int(11) NOT NULL,
  `issue_by` int(11) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `item_category_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `note` text NOT NULL,
  `is_returned` int(11) NOT NULL DEFAULT 1,
  `is_active` varchar(10) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_stock`
--

CREATE TABLE `item_stock` (
  `id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `symbol` varchar(10) NOT NULL DEFAULT '+',
  `quantity` int(11) DEFAULT NULL,
  `purchase_price` float(10,2) NOT NULL,
  `date` date NOT NULL,
  `attachment` varchar(250) DEFAULT NULL,
  `description` text NOT NULL,
  `is_active` varchar(10) DEFAULT 'yes',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_store`
--

CREATE TABLE `item_store` (
  `id` int(11) NOT NULL,
  `item_store` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_supplier`
--

CREATE TABLE `item_supplier` (
  `id` int(11) NOT NULL,
  `item_supplier` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact_person_name` varchar(255) NOT NULL,
  `contact_person_phone` varchar(255) NOT NULL,
  `contact_person_email` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `language` varchar(50) DEFAULT NULL,
  `short_code` varchar(255) NOT NULL,
  `country_code` varchar(255) NOT NULL,
  `is_rtl` int(11) NOT NULL,
  `is_deleted` varchar(10) NOT NULL DEFAULT 'yes',
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_rtl`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Azerbaijan', 'az', 'az', 0, 'no', 'no', '2019-11-20 11:23:12', '0000-00-00 00:00:00'),
(2, 'Albanian', 'sq', 'al', 0, 'no', 'no', '2019-11-20 11:42:42', '0000-00-00 00:00:00'),
(3, 'Amharic', 'am', 'am', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(4, 'English', 'en', 'us', 0, 'no', 'no', '2019-11-20 11:38:50', '0000-00-00 00:00:00'),
(5, 'Arabic', 'ar', 'sa', 0, 'no', 'no', '2019-11-20 11:47:28', '0000-00-00 00:00:00'),
(7, 'Afrikaans', 'af', 'af', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(8, 'Basque', 'eu', 'es', 0, 'no', 'no', '2019-11-20 11:54:10', '0000-00-00 00:00:00'),
(11, 'Bengali', 'bn', 'in', 0, 'no', 'no', '2019-11-20 11:41:53', '0000-00-00 00:00:00'),
(13, 'Bosnian', 'bs', 'bs', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(14, 'Welsh', 'cy', 'cy', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(15, 'Hungarian', 'hu', 'hu', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(16, 'Vietnamese', 'vi', 'vi', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(17, 'Haitian', 'ht', 'ht', 0, 'no', 'no', '2021-01-23 07:09:32', '0000-00-00 00:00:00'),
(18, 'Galician', 'gl', 'gl', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(19, 'Dutch', 'nl', 'nl', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(21, 'Greek', 'el', 'gr', 0, 'no', 'no', '2019-11-20 12:12:08', '0000-00-00 00:00:00'),
(22, 'Georgian', 'ka', 'ge', 0, 'no', 'no', '2019-11-20 12:11:40', '0000-00-00 00:00:00'),
(23, 'Gujarati', 'gu', 'in', 0, 'no', 'no', '2019-11-20 11:39:16', '0000-00-00 00:00:00'),
(24, 'Danish', 'da', 'dk', 0, 'no', 'no', '2019-11-20 12:03:25', '0000-00-00 00:00:00'),
(25, 'Hebrew', 'he', 'il', 0, 'no', 'no', '2019-11-20 12:13:50', '0000-00-00 00:00:00'),
(26, 'Yiddish', 'yi', 'il', 0, 'no', 'no', '2019-11-20 12:25:33', '0000-00-00 00:00:00'),
(27, 'Indonesian', 'id', 'id', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(28, 'Irish', 'ga', 'ga', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(29, 'Italian', 'it', 'it', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(30, 'Icelandic', 'is', 'is', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(31, 'Spanish', 'es', 'es', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(33, 'Kannada', 'kn', 'kn', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(34, 'Catalan', 'ca', 'ca', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(36, 'Chinese', 'zh', 'cn', 0, 'no', 'no', '2019-11-20 12:01:48', '0000-00-00 00:00:00'),
(37, 'Korean', 'ko', 'kr', 0, 'no', 'no', '2019-11-20 12:19:09', '0000-00-00 00:00:00'),
(38, 'Xhosa', 'xh', 'ls', 0, 'no', 'no', '2019-11-20 12:24:39', '0000-00-00 00:00:00'),
(39, 'Latin', 'la', 'it', 0, 'no', 'no', '2021-01-23 07:09:32', '0000-00-00 00:00:00'),
(40, 'Latvian', 'lv', 'lv', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(41, 'Lithuanian', 'lt', 'lt', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(43, 'Malagasy', 'mg', 'mg', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(44, 'Malay', 'ms', 'ms', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(45, 'Malayalam', 'ml', 'ml', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(46, 'Maltese', 'mt', 'mt', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(47, 'Macedonian', 'mk', 'mk', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(48, 'Maori', 'mi', 'nz', 0, 'no', 'no', '2019-11-20 12:20:27', '0000-00-00 00:00:00'),
(49, 'Marathi', 'mr', 'in', 0, 'no', 'no', '2019-11-20 11:39:51', '0000-00-00 00:00:00'),
(51, 'Mongolian', 'mn', 'mn', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(52, 'German', 'de', 'de', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(53, 'Nepali', 'ne', 'ne', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(54, 'Norwegian', 'no', 'no', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(55, 'Punjabi', 'pa', 'in', 0, 'no', 'no', '2019-11-20 11:40:16', '0000-00-00 00:00:00'),
(57, 'Persian', 'fa', 'ir', 0, 'no', 'no', '2019-11-20 12:21:17', '0000-00-00 00:00:00'),
(59, 'Portuguese', 'pt', 'pt', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(60, 'Romanian', 'ro', 'ro', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(61, 'Russian', 'ru', 'ru', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(62, 'Cebuano', 'ceb', 'ph', 0, 'no', 'no', '2019-11-20 11:59:12', '0000-00-00 00:00:00'),
(64, 'Sinhala', 'si', 'lk ', 0, 'no', 'no', '2021-01-23 07:09:32', '0000-00-00 00:00:00'),
(65, 'Slovakian', 'sk', 'sk', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(66, 'Slovenian', 'sl', 'sl', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(67, 'Swahili', 'sw', 'ke', 0, 'no', 'no', '2019-11-20 12:21:57', '0000-00-00 00:00:00'),
(68, 'Sundanese', 'su', 'sd', 0, 'no', 'no', '2019-12-03 11:06:57', '0000-00-00 00:00:00'),
(70, 'Thai', 'th', 'th', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(71, 'Tagalog', 'tl', 'tl', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(72, 'Tamil', 'ta', 'in', 0, 'no', 'no', '2019-11-20 11:40:53', '0000-00-00 00:00:00'),
(74, 'Telugu', 'te', 'in', 0, 'no', 'no', '2019-11-20 11:41:15', '0000-00-00 00:00:00'),
(75, 'Turkish', 'tr', 'tr', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(77, 'Uzbek', 'uz', 'uz', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(79, 'Urdu', 'ur', 'pk', 0, 'no', 'no', '2019-11-20 12:23:57', '0000-00-00 00:00:00'),
(80, 'Finnish', 'fi', 'fi', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(81, 'French', 'fr', 'fr', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(82, 'Hindi', 'hi', 'in', 0, 'no', 'no', '2019-11-20 11:36:34', '0000-00-00 00:00:00'),
(84, 'Czech', 'cs', 'cz', 0, 'no', 'no', '2019-11-20 12:02:36', '0000-00-00 00:00:00'),
(85, 'Swedish', 'sv', 'sv', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(86, 'Scottish', 'gd', 'gd', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(87, 'Estonian', 'et', 'et', 0, 'no', 'no', '2019-11-20 11:24:23', '0000-00-00 00:00:00'),
(88, 'Esperanto', 'eo', 'br', 0, 'no', 'no', '2019-11-21 04:49:18', '0000-00-00 00:00:00'),
(89, 'Javanese', 'jv', 'id', 0, 'no', 'no', '2019-11-20 12:18:29', '0000-00-00 00:00:00'),
(90, 'Japanese', 'ja', 'jp', 0, 'no', 'no', '2019-11-20 12:14:39', '0000-00-00 00:00:00'),
(91, 'Polish', 'pl', 'pl', 0, 'no', 'no', '2020-06-15 03:25:27', '0000-00-00 00:00:00'),
(92, 'Kurdish', 'ku', 'iq', 0, 'no', 'no', '2020-12-21 00:15:31', '0000-00-00 00:00:00'),
(93, 'Lao', 'lo', 'la', 0, 'no', 'no', '2020-12-21 00:15:36', '0000-00-00 00:00:00'),
(94, 'Croatia', 'hr', 'hr', 0, 'no', 'no', '2022-06-07 11:48:21', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `leave_types`
--

CREATE TABLE `leave_types` (
  `id` int(11) NOT NULL,
  `type` varchar(200) NOT NULL,
  `is_active` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `subject_group_subject_id` int(11) NOT NULL,
  `subject_group_class_sections_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lesson_plan_forum`
--

CREATE TABLE `lesson_plan_forum` (
  `id` int(11) NOT NULL,
  `subject_syllabus_id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL COMMENT 'staff,student',
  `staff_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `message` text NOT NULL,
  `created_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `libarary_members`
--

CREATE TABLE `libarary_members` (
  `id` int(11) NOT NULL,
  `library_card_no` varchar(50) DEFAULT NULL,
  `member_type` varchar(50) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `message` text DEFAULT NULL,
  `record_id` text DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  `ip_address` varchar(50) DEFAULT NULL,
  `platform` varchar(50) DEFAULT NULL,
  `agent` varchar(50) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES
(1, 'Record updated On permission group id 27', '27', 1, 'Update', '49.37.161.60', 'Windows 10', 'Chrome 137.0.0.0', '2025-07-03 10:37:23', NULL),
(2, 'Record updated On permission group id 26', '26', 1, 'Update', '49.37.161.60', 'Windows 10', 'Chrome 137.0.0.0', '2025-07-03 10:37:38', NULL),
(3, 'Record updated On settings id 1', '1', 1, 'Update', '49.37.161.60', 'Windows 10', 'Chrome 137.0.0.0', '2025-07-03 12:02:17', NULL),
(4, 'Record updated On settings id 1', '1', 1, 'Update', '49.37.161.60', 'Windows 10', 'Chrome 137.0.0.0', '2025-07-03 12:02:24', NULL),
(5, 'New Record inserted On  staff designation id 1', '1', 1, 'Insert', '49.37.161.60', 'Windows 10', 'Chrome 137.0.0.0', '2025-07-03 12:36:38', NULL),
(6, 'New Record inserted On department id 1', '1', 1, 'Insert', '49.37.161.60', 'Windows 10', 'Chrome 137.0.0.0', '2025-07-03 12:37:35', NULL),
(7, 'Record updated On settings id 1', '1', 1, 'Update', '49.37.161.60', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 05:03:17', NULL),
(8, 'Record updated On settings id 1', '1', 1, 'Update', '49.37.161.60', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 05:03:35', NULL),
(9, 'Record updated On settings id 1', '1', 1, 'Update', '49.37.161.60', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 05:04:25', NULL),
(10, 'Record updated On settings id 1', '1', 1, 'Update', '49.37.161.60', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 05:05:11', NULL),
(11, 'Record updated On settings id 1', '1', 1, 'Update', '49.37.161.60', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 05:10:20', NULL),
(12, 'Record updated On settings id 1', '1', 1, 'Update', '49.37.161.60', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 05:10:29', NULL),
(13, 'Record updated On settings id 1', '1', 1, 'Update', '49.37.161.60', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 05:12:38', NULL),
(14, 'Record updated On settings id 1', '1', 1, 'Update', '49.37.161.60', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 05:25:42', NULL),
(15, 'Record updated On settings id 1', '1', 1, 'Update', '49.37.161.60', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 05:26:11', NULL),
(16, 'Record updated On settings id 1', '1', 1, 'Update', '49.37.161.60', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 05:41:43', NULL),
(17, 'New Record inserted On  fee type id 1', '1', 1, 'Insert', '157.45.249.5', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 05:44:20', NULL),
(18, 'New Record inserted On  fee group id 1', '1', 1, 'Insert', '157.45.249.5', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 05:44:32', NULL),
(19, 'New Record inserted On  fee group id 2', '2', 1, 'Insert', '157.45.249.5', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 05:44:56', NULL),
(20, 'New Record inserted On  fee group id 3', '3', 1, 'Insert', '157.45.249.5', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 05:45:03', NULL),
(21, 'New Record inserted On  fee group id 4', '4', 1, 'Insert', '157.45.249.5', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 05:45:11', NULL),
(22, 'New Record inserted On  fee group id 5', '5', 1, 'Insert', '157.45.249.5', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 05:45:17', NULL),
(23, 'New Record inserted On  fee group id 6', '6', 1, 'Insert', '157.45.249.5', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 05:45:23', NULL),
(24, 'New Record inserted On  fee group id 7', '7', 1, 'Insert', '157.45.249.5', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 05:45:30', NULL),
(25, 'New Record inserted On  fee group id 8', '8', 1, 'Insert', '157.45.249.5', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 05:45:35', NULL),
(26, 'New Record inserted On  fee group id 9', '9', 1, 'Insert', '157.45.249.5', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 05:45:47', NULL),
(27, 'New Record inserted On  fee group id 10', '10', 1, 'Insert', '157.45.249.5', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 05:45:58', NULL),
(28, 'New Record inserted On  fee groups feetype id 1', '1', 1, 'Insert', '157.45.249.5', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 05:46:25', NULL),
(29, 'New Record inserted On  fee groups feetype id 2', '2', 1, 'Insert', '157.45.249.5', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 05:46:36', NULL),
(30, 'New Record inserted On  fee groups feetype id 3', '3', 1, 'Insert', '157.45.249.5', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 05:46:45', NULL),
(31, 'New Record inserted On  fee groups feetype id 4', '4', 1, 'Insert', '157.45.249.5', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 05:46:54', NULL),
(32, 'New Record inserted On  fee groups feetype id 5', '5', 1, 'Insert', '157.45.249.5', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 05:47:05', NULL),
(33, 'New Record inserted On  fee groups feetype id 6', '6', 1, 'Insert', '157.45.249.5', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 05:47:39', NULL),
(34, 'New Record inserted On  fee groups feetype id 7', '7', 1, 'Insert', '157.45.249.5', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 05:48:06', NULL),
(35, 'New Record inserted On sections id 1', '1', 1, 'Insert', '157.45.249.5', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 05:49:16', NULL),
(36, 'New Record inserted On subject groups id 1', '1', 1, 'Insert', '157.45.249.5', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 05:49:27', NULL),
(37, 'New Record inserted On students id 1', '1', 1, 'Insert', '157.45.249.5', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 07:13:20', NULL),
(38, 'New Record inserted On  student session id 1', '1', 1, 'Insert', '157.45.249.5', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 07:13:20', NULL),
(39, 'New Record inserted On users id 1', '1', 1, 'Insert', '157.45.249.5', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 07:13:20', NULL),
(40, 'New Record inserted On users id 2', '2', 1, 'Insert', '157.45.249.5', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 07:13:20', NULL),
(41, 'Record updated On students id 1', '1', 1, 'Update', '157.45.249.5', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 07:13:20', NULL),
(42, 'Record updated On students id 1', '1', 1, 'Update', '157.45.249.5', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 07:14:32', NULL),
(43, 'Record updated On  student session id 1', '1', 1, 'Update', '157.45.249.5', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 07:14:32', NULL),
(44, 'New Record inserted On  categories id 1', '1', 1, 'Insert', '157.45.249.5', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 07:16:04', NULL),
(45, 'New Record inserted On  categories id 2', '2', 1, 'Insert', '157.45.249.5', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 07:16:11', NULL),
(46, 'New Record inserted On  categories id 3', '3', 1, 'Insert', '157.45.249.5', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 07:16:17', NULL),
(47, 'New Record inserted On  categories id 4', '4', 1, 'Insert', '157.45.249.5', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 07:16:35', NULL),
(48, 'New Record inserted On  categories id 5', '5', 1, 'Insert', '157.45.249.5', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 07:16:45', NULL),
(49, 'New Record inserted On  categories id 6', '6', 1, 'Insert', '157.45.249.5', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 07:17:00', NULL),
(50, 'New Record inserted On  categories id 7', '7', 1, 'Insert', '157.45.249.5', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 07:17:11', NULL),
(51, 'New Record inserted On  categories id 8', '8', 1, 'Insert', '157.45.249.5', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 07:17:21', NULL),
(52, 'New Record inserted On  categories id 9', '9', 1, 'Insert', '157.45.249.5', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 07:17:26', NULL),
(53, 'New Record inserted On students id 2', '2', 1, 'Insert', '157.45.233.159', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 07:23:49', NULL),
(54, 'New Record inserted On  student session id 2', '2', 1, 'Insert', '157.45.233.159', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 07:23:49', NULL),
(55, 'New Record inserted On users id 3', '3', 1, 'Insert', '157.45.233.159', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 07:23:49', NULL),
(56, 'New Record inserted On users id 4', '4', 1, 'Insert', '157.45.233.159', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 07:23:49', NULL),
(57, 'Record updated On students id 2', '2', 1, 'Update', '157.45.233.159', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 07:23:49', NULL),
(58, 'New Record inserted On students id 3', '3', 1, 'Insert', '157.45.246.135', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 07:29:41', NULL),
(59, 'New Record inserted On  student session id 3', '3', 1, 'Insert', '157.45.246.135', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 07:29:41', NULL),
(60, 'New Record inserted On users id 5', '5', 1, 'Insert', '157.45.246.135', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 07:29:41', NULL),
(61, 'New Record inserted On users id 6', '6', 1, 'Insert', '157.45.246.135', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 07:29:41', NULL),
(62, 'Record updated On students id 3', '3', 1, 'Update', '157.45.246.135', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 07:29:41', NULL),
(63, 'New Record inserted On students id 4', '4', 1, 'Insert', '157.45.253.3', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 07:34:38', NULL),
(64, 'New Record inserted On  student session id 4', '4', 1, 'Insert', '157.45.253.3', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 07:34:38', NULL),
(65, 'New Record inserted On users id 7', '7', 1, 'Insert', '157.45.253.3', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 07:34:38', NULL),
(66, 'New Record inserted On users id 8', '8', 1, 'Insert', '157.45.253.3', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 07:34:38', NULL),
(67, 'Record updated On students id 4', '4', 1, 'Update', '157.45.253.3', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 07:34:38', NULL),
(68, 'Record updated On students id 4', '4', 1, 'Update', '157.45.253.3', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 07:35:18', NULL),
(69, 'Record updated On  student session id 4', '4', 1, 'Update', '157.45.253.3', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 07:35:18', NULL),
(70, 'Record updated On students id 4', '4', 1, 'Update', '157.45.253.3', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 07:37:06', NULL),
(71, 'Record updated On  student session id 4', '4', 1, 'Update', '157.45.253.3', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 07:37:06', NULL),
(72, 'New Record inserted On students id 5', '5', 1, 'Insert', '157.45.253.3', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 07:43:25', NULL),
(73, 'New Record inserted On  student session id 5', '5', 1, 'Insert', '157.45.253.3', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 07:43:25', NULL),
(74, 'New Record inserted On users id 9', '9', 1, 'Insert', '157.45.253.3', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 07:43:25', NULL),
(75, 'New Record inserted On users id 10', '10', 1, 'Insert', '157.45.253.3', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 07:43:25', NULL),
(76, 'Record updated On students id 5', '5', 1, 'Update', '157.45.253.3', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 07:43:25', NULL),
(77, 'New Record inserted On students id 6', '6', 1, 'Insert', '157.45.253.3', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 07:48:31', NULL),
(78, 'New Record inserted On  student session id 6', '6', 1, 'Insert', '157.45.253.3', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 07:48:31', NULL),
(79, 'New Record inserted On users id 11', '11', 1, 'Insert', '157.45.253.3', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 07:48:31', NULL),
(80, 'New Record inserted On users id 12', '12', 1, 'Insert', '157.45.253.3', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 07:48:31', NULL),
(81, 'Record updated On students id 6', '6', 1, 'Update', '157.45.253.3', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 07:48:31', NULL),
(82, 'New Record inserted On students id 7', '7', 1, 'Insert', '157.45.246.100', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 07:54:00', NULL),
(83, 'New Record inserted On  student session id 7', '7', 1, 'Insert', '157.45.246.100', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 07:54:00', NULL),
(84, 'New Record inserted On users id 13', '13', 1, 'Insert', '157.45.246.100', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 07:54:00', NULL),
(85, 'New Record inserted On users id 14', '14', 1, 'Insert', '157.45.246.100', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 07:54:00', NULL),
(86, 'Record updated On students id 7', '7', 1, 'Update', '157.45.246.100', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 07:54:00', NULL),
(87, 'New Record inserted On students id 8', '8', 1, 'Insert', '157.45.232.230', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:00:26', NULL),
(88, 'New Record inserted On  student session id 8', '8', 1, 'Insert', '157.45.232.230', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:00:26', NULL),
(89, 'New Record inserted On users id 15', '15', 1, 'Insert', '157.45.232.230', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:00:26', NULL),
(90, 'New Record inserted On users id 16', '16', 1, 'Insert', '157.45.232.230', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:00:26', NULL),
(91, 'Record updated On students id 8', '8', 1, 'Update', '157.45.232.230', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:00:26', NULL),
(92, 'Record updated On students id 7', '7', 1, 'Update', '157.45.232.230', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:02:51', NULL),
(93, 'Record updated On  student session id 7', '7', 1, 'Update', '157.45.232.230', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:02:51', NULL),
(94, 'Record updated On students id 6', '6', 1, 'Update', '157.45.232.230', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:04:01', NULL),
(95, 'Record updated On  student session id 6', '6', 1, 'Update', '157.45.232.230', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:04:01', NULL),
(96, 'Record updated On students id 5', '5', 1, 'Update', '157.45.232.230', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:05:04', NULL),
(97, 'Record updated On  student session id 5', '5', 1, 'Update', '157.45.232.230', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:05:04', NULL),
(98, 'Record updated On students id 4', '4', 1, 'Update', '157.45.232.230', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:06:11', NULL),
(99, 'Record updated On  student session id 4', '4', 1, 'Update', '157.45.232.230', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:06:11', NULL),
(100, 'Record updated On students id 3', '3', 1, 'Update', '157.45.232.230', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:07:03', NULL),
(101, 'Record updated On  student session id 3', '3', 1, 'Update', '157.45.232.230', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:07:03', NULL),
(102, 'Record updated On students id 2', '2', 1, 'Update', '157.45.232.230', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:07:25', NULL),
(103, 'Record updated On  student session id 2', '2', 1, 'Update', '157.45.232.230', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:07:25', NULL),
(104, 'Record updated On students id 1', '1', 1, 'Update', '157.45.232.230', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:08:52', NULL),
(105, 'Record updated On  student session id 1', '1', 1, 'Update', '157.45.232.230', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:08:52', NULL),
(106, 'New Record inserted On students id 9', '9', 1, 'Insert', '157.45.250.120', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:14:04', NULL),
(107, 'New Record inserted On  student session id 9', '9', 1, 'Insert', '157.45.250.120', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:14:04', NULL),
(108, 'New Record inserted On users id 17', '17', 1, 'Insert', '157.45.250.120', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:14:04', NULL),
(109, 'New Record inserted On users id 18', '18', 1, 'Insert', '157.45.250.120', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:14:04', NULL),
(110, 'Record updated On students id 9', '9', 1, 'Update', '157.45.250.120', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:14:04', NULL),
(111, 'New Record inserted On students id 10', '10', 1, 'Insert', '157.45.253.159', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:21:27', NULL),
(112, 'New Record inserted On  student session id 10', '10', 1, 'Insert', '157.45.253.159', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:21:27', NULL),
(113, 'New Record inserted On users id 19', '19', 1, 'Insert', '157.45.253.159', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:21:27', NULL),
(114, 'New Record inserted On users id 20', '20', 1, 'Insert', '157.45.253.159', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:21:27', NULL),
(115, 'Record updated On students id 10', '10', 1, 'Update', '157.45.253.159', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:21:27', NULL),
(116, 'New Record inserted On students id 11', '11', 1, 'Insert', '157.45.253.159', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:30:41', NULL),
(117, 'New Record inserted On  student session id 11', '11', 1, 'Insert', '157.45.253.159', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:30:41', NULL),
(118, 'New Record inserted On users id 21', '21', 1, 'Insert', '157.45.253.159', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:30:41', NULL),
(119, 'New Record inserted On users id 22', '22', 1, 'Insert', '157.45.253.159', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:30:41', NULL),
(120, 'Record updated On students id 11', '11', 1, 'Update', '157.45.253.159', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:30:41', NULL),
(121, 'Record updated On students id 11', '11', 1, 'Update', '157.45.253.159', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:32:10', NULL),
(122, 'Record updated On  student session id 11', '11', 1, 'Update', '157.45.253.159', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:32:10', NULL),
(123, 'New Record inserted On students id 12', '12', 1, 'Insert', '157.45.253.159', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:35:24', NULL),
(124, 'New Record inserted On  student session id 12', '12', 1, 'Insert', '157.45.253.159', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:35:24', NULL),
(125, 'New Record inserted On users id 23', '23', 1, 'Insert', '157.45.253.159', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:35:24', NULL),
(126, 'New Record inserted On users id 24', '24', 1, 'Insert', '157.45.253.159', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:35:24', NULL),
(127, 'Record updated On students id 12', '12', 1, 'Update', '157.45.253.159', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:35:24', NULL),
(128, 'Record updated On students id 8', '8', 1, 'Update', '157.45.253.159', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:45:40', NULL),
(129, 'Record updated On  student session id 8', '8', 1, 'Update', '157.45.253.159', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:45:40', NULL),
(130, 'Record updated On students id 7', '7', 1, 'Update', '157.45.253.159', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:46:07', NULL),
(131, 'Record updated On  student session id 7', '7', 1, 'Update', '157.45.253.159', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:46:07', NULL),
(132, 'Record updated On students id 6', '6', 1, 'Update', '157.45.253.159', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:46:31', NULL),
(133, 'Record updated On  student session id 6', '6', 1, 'Update', '157.45.253.159', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:46:31', NULL),
(134, 'Record updated On students id 5', '5', 1, 'Update', '157.45.253.159', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:46:58', NULL),
(135, 'Record updated On  student session id 5', '5', 1, 'Update', '157.45.253.159', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:46:58', NULL),
(136, 'Record updated On students id 10', '10', 1, 'Update', '157.45.253.159', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:47:21', NULL),
(137, 'Record updated On  student session id 10', '10', 1, 'Update', '157.45.253.159', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:47:21', NULL),
(138, 'Record updated On students id 11', '11', 1, 'Update', '157.45.253.159', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:47:48', NULL),
(139, 'Record updated On  student session id 11', '11', 1, 'Update', '157.45.253.159', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:47:48', NULL),
(140, 'Record updated On students id 1', '1', 1, 'Update', '157.45.253.159', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:49:52', NULL),
(141, 'Record updated On  student session id 1', '1', 1, 'Update', '157.45.253.159', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:49:52', NULL),
(142, 'Record updated On students id 4', '4', 1, 'Update', '157.45.253.159', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:51:23', NULL),
(143, 'Record updated On  student session id 4', '4', 1, 'Update', '157.45.253.159', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 08:51:23', NULL),
(144, 'Record updated On settings id 1', '1', 1, 'Update', '49.37.161.60', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 09:17:43', NULL),
(145, 'New Record inserted On students id 13', '13', 1, 'Insert', '152.57.138.141', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 09:51:12', NULL),
(146, 'New Record inserted On  student session id 13', '13', 1, 'Insert', '152.57.138.141', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 09:51:12', NULL),
(147, 'New Record inserted On users id 25', '25', 1, 'Insert', '152.57.138.141', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 09:51:12', NULL),
(148, 'New Record inserted On users id 26', '26', 1, 'Insert', '152.57.138.141', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 09:51:12', NULL),
(149, 'Record updated On students id 13', '13', 1, 'Update', '152.57.138.141', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 09:51:12', NULL),
(150, 'New Record inserted On students id 14', '14', 1, 'Insert', '157.45.253.159', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 10:18:47', NULL),
(151, 'New Record inserted On  student session id 14', '14', 1, 'Insert', '157.45.253.159', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 10:18:47', NULL),
(152, 'New Record inserted On users id 27', '27', 1, 'Insert', '157.45.253.159', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 10:18:47', NULL),
(153, 'New Record inserted On users id 28', '28', 1, 'Insert', '157.45.253.159', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 10:18:47', NULL),
(154, 'Record updated On students id 14', '14', 1, 'Update', '157.45.253.159', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 10:18:47', NULL),
(155, 'New Record inserted On students id 15', '15', 1, 'Insert', '157.45.253.159', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 10:27:48', NULL),
(156, 'New Record inserted On  student session id 15', '15', 1, 'Insert', '157.45.253.159', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 10:27:48', NULL),
(157, 'New Record inserted On users id 29', '29', 1, 'Insert', '157.45.253.159', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 10:27:48', NULL),
(158, 'New Record inserted On users id 30', '30', 1, 'Insert', '157.45.253.159', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 10:27:48', NULL),
(159, 'Record updated On students id 15', '15', 1, 'Update', '157.45.253.159', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-16 10:27:48', NULL),
(160, 'New Record inserted On students id 16', '16', 1, 'Insert', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 06:49:46', NULL),
(161, 'New Record inserted On  student session id 16', '16', 1, 'Insert', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 06:49:46', NULL),
(162, 'New Record inserted On users id 31', '31', 1, 'Insert', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 06:49:46', NULL),
(163, 'New Record inserted On users id 32', '32', 1, 'Insert', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 06:49:46', NULL),
(164, 'Record updated On students id 16', '16', 1, 'Update', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 06:49:46', NULL),
(165, 'New Record inserted On students id 17', '17', 1, 'Insert', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 07:03:06', NULL),
(166, 'New Record inserted On  student session id 17', '17', 1, 'Insert', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 07:03:06', NULL),
(167, 'New Record inserted On users id 33', '33', 1, 'Insert', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 07:03:06', NULL),
(168, 'New Record inserted On users id 34', '34', 1, 'Insert', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 07:03:06', NULL),
(169, 'Record updated On students id 17', '17', 1, 'Update', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 07:03:06', NULL),
(170, 'New Record inserted On  fee groups feetype id 8', '8', 1, 'Insert', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 07:04:23', NULL),
(171, 'Record updated On students id 17', '17', 1, 'Update', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 07:04:49', NULL),
(172, 'Record updated On  student session id 17', '17', 1, 'Update', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 07:04:49', NULL),
(173, 'New Record inserted On students id 18', '18', 1, 'Insert', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 07:09:58', NULL),
(174, 'New Record inserted On  student session id 18', '18', 1, 'Insert', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 07:09:58', NULL),
(175, 'New Record inserted On users id 35', '35', 1, 'Insert', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 07:09:58', NULL),
(176, 'New Record inserted On users id 36', '36', 1, 'Insert', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 07:09:58', NULL),
(177, 'Record updated On students id 18', '18', 1, 'Update', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 07:09:58', NULL),
(178, 'New Record inserted On students id 19', '19', 1, 'Insert', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 07:17:24', NULL),
(179, 'New Record inserted On  student session id 19', '19', 1, 'Insert', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 07:17:24', NULL),
(180, 'New Record inserted On users id 37', '37', 1, 'Insert', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 07:17:24', NULL),
(181, 'New Record inserted On users id 38', '38', 1, 'Insert', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 07:17:24', NULL),
(182, 'Record updated On students id 19', '19', 1, 'Update', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 07:17:24', NULL),
(183, 'New Record inserted On  categories id 10', '10', 1, 'Insert', '49.37.161.60', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 07:24:43', NULL),
(184, 'Record deleted On categories id 10', '10', 1, 'Delete', '49.37.161.60', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 07:24:47', NULL),
(185, 'New Record inserted On  categories id 11', '11', 1, 'Insert', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 07:26:24', NULL),
(186, 'New Record inserted On students id 20', '20', 1, 'Insert', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 07:30:41', NULL),
(187, 'New Record inserted On  student session id 20', '20', 1, 'Insert', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 07:30:41', NULL),
(188, 'New Record inserted On users id 39', '39', 1, 'Insert', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 07:30:41', NULL),
(189, 'New Record inserted On users id 40', '40', 1, 'Insert', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 07:30:41', NULL),
(190, 'Record updated On students id 20', '20', 1, 'Update', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 07:30:41', NULL),
(191, 'New Record inserted On students id 21', '21', 1, 'Insert', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 07:32:46', NULL),
(192, 'New Record inserted On  student session id 21', '21', 1, 'Insert', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 07:32:46', NULL),
(193, 'New Record inserted On users id 41', '41', 1, 'Insert', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 07:32:46', NULL),
(194, 'New Record inserted On users id 42', '42', 1, 'Insert', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 07:32:46', NULL),
(195, 'Record updated On students id 21', '21', 1, 'Update', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 07:32:46', NULL),
(196, 'New Record inserted On students id 22', '22', 1, 'Insert', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 07:36:51', NULL),
(197, 'New Record inserted On  student session id 22', '22', 1, 'Insert', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 07:36:51', NULL),
(198, 'New Record inserted On users id 43', '43', 1, 'Insert', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 07:36:51', NULL),
(199, 'New Record inserted On users id 44', '44', 1, 'Insert', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 07:36:51', NULL),
(200, 'Record updated On students id 22', '22', 1, 'Update', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 07:36:51', NULL),
(201, 'New Record inserted On students id 23', '23', 1, 'Insert', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 07:39:54', NULL),
(202, 'New Record inserted On  student session id 23', '23', 1, 'Insert', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 07:39:54', NULL),
(203, 'New Record inserted On users id 45', '45', 1, 'Insert', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 07:39:54', NULL),
(204, 'New Record inserted On users id 46', '46', 1, 'Insert', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 07:39:54', NULL),
(205, 'Record updated On students id 23', '23', 1, 'Update', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 07:39:54', NULL),
(206, 'New Record inserted On students id 24', '24', 1, 'Insert', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 07:49:55', NULL),
(207, 'New Record inserted On  student session id 24', '24', 1, 'Insert', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 07:49:55', NULL),
(208, 'New Record inserted On users id 47', '47', 1, 'Insert', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 07:49:55', NULL),
(209, 'New Record inserted On users id 48', '48', 1, 'Insert', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 07:49:55', NULL),
(210, 'Record updated On students id 24', '24', 1, 'Update', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 07:49:55', NULL),
(211, 'New Record inserted On students id 25', '25', 1, 'Insert', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 07:59:01', NULL),
(212, 'New Record inserted On  student session id 25', '25', 1, 'Insert', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 07:59:01', NULL),
(213, 'New Record inserted On users id 49', '49', 1, 'Insert', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 07:59:01', NULL),
(214, 'New Record inserted On users id 50', '50', 1, 'Insert', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 07:59:01', NULL),
(215, 'Record updated On students id 25', '25', 1, 'Update', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 07:59:01', NULL),
(216, 'Record updated On students id 21', '21', 1, 'Update', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 08:46:25', NULL),
(217, 'Record updated On  student session id 21', '21', 1, 'Update', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 08:46:25', NULL),
(218, 'Record updated On students id 23', '23', 1, 'Update', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 09:15:43', NULL),
(219, 'Record updated On  student session id 23', '23', 1, 'Update', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 09:15:43', NULL),
(220, 'Record updated On students id 24', '24', 1, 'Update', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 09:19:53', NULL),
(221, 'Record updated On  student session id 24', '24', 1, 'Update', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 09:19:53', NULL),
(222, 'Record updated On students id 25', '25', 1, 'Update', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 09:23:59', NULL),
(223, 'Record updated On  student session id 25', '25', 1, 'Update', '157.45.241.87', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 09:23:59', NULL),
(224, 'New Record inserted On students id 26', '26', 1, 'Insert', '152.57.117.199', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 10:10:08', NULL),
(225, 'New Record inserted On  student session id 26', '26', 1, 'Insert', '152.57.117.199', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 10:10:08', NULL),
(226, 'New Record inserted On users id 51', '51', 1, 'Insert', '152.57.117.199', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 10:10:08', NULL),
(227, 'New Record inserted On users id 52', '52', 1, 'Insert', '152.57.117.199', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 10:10:08', NULL),
(228, 'Record updated On students id 26', '26', 1, 'Update', '152.57.117.199', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 10:10:08', NULL),
(229, 'New Record inserted On students id 27', '27', 1, 'Insert', '152.57.23.140', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 10:16:09', NULL),
(230, 'New Record inserted On  student session id 27', '27', 1, 'Insert', '152.57.23.140', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 10:16:09', NULL),
(231, 'New Record inserted On users id 53', '53', 1, 'Insert', '152.57.23.140', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 10:16:09', NULL),
(232, 'New Record inserted On users id 54', '54', 1, 'Insert', '152.57.23.140', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 10:16:09', NULL),
(233, 'Record updated On students id 27', '27', 1, 'Update', '152.57.23.140', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 10:16:09', NULL),
(234, 'New Record inserted On students id 28', '28', 1, 'Insert', '152.57.139.216', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 10:20:35', NULL),
(235, 'New Record inserted On  student session id 28', '28', 1, 'Insert', '152.57.139.216', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 10:20:35', NULL),
(236, 'New Record inserted On users id 55', '55', 1, 'Insert', '152.57.139.216', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 10:20:35', NULL),
(237, 'New Record inserted On users id 56', '56', 1, 'Insert', '152.57.139.216', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 10:20:35', NULL),
(238, 'Record updated On students id 28', '28', 1, 'Update', '152.57.139.216', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 10:20:35', NULL),
(239, 'New Record inserted On students id 29', '29', 1, 'Insert', '152.57.124.207', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 10:24:43', NULL),
(240, 'New Record inserted On  student session id 29', '29', 1, 'Insert', '152.57.124.207', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 10:24:43', NULL),
(241, 'New Record inserted On users id 57', '57', 1, 'Insert', '152.57.124.207', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 10:24:43', NULL),
(242, 'New Record inserted On users id 58', '58', 1, 'Insert', '152.57.124.207', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 10:24:43', NULL),
(243, 'Record updated On students id 29', '29', 1, 'Update', '152.57.124.207', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 10:24:43', NULL),
(244, 'New Record inserted On students id 30', '30', 1, 'Insert', '152.57.45.178', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 10:28:33', NULL),
(245, 'New Record inserted On  student session id 30', '30', 1, 'Insert', '152.57.45.178', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 10:28:33', NULL),
(246, 'New Record inserted On users id 59', '59', 1, 'Insert', '152.57.45.178', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 10:28:33', NULL),
(247, 'New Record inserted On users id 60', '60', 1, 'Insert', '152.57.45.178', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 10:28:33', NULL),
(248, 'Record updated On students id 30', '30', 1, 'Update', '152.57.45.178', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 10:28:33', NULL),
(249, 'New Record inserted On students id 31', '31', 1, 'Insert', '152.57.45.178', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 10:31:55', NULL),
(250, 'New Record inserted On  student session id 31', '31', 1, 'Insert', '152.57.45.178', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 10:31:55', NULL),
(251, 'New Record inserted On users id 61', '61', 1, 'Insert', '152.57.45.178', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 10:31:55', NULL),
(252, 'New Record inserted On users id 62', '62', 1, 'Insert', '152.57.45.178', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 10:31:55', NULL),
(253, 'Record updated On students id 31', '31', 1, 'Update', '152.57.45.178', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 10:31:55', NULL),
(254, 'New Record inserted On  fee groups feetype id 9', '9', 1, 'Insert', '152.57.45.178', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 10:32:18', NULL),
(255, 'Record updated On students id 31', '31', 1, 'Update', '152.57.45.178', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 10:32:35', NULL),
(256, 'Record updated On  student session id 31', '31', 1, 'Update', '152.57.45.178', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-17 10:32:35', NULL),
(257, 'New Record inserted On students id 32', '32', 1, 'Insert', '157.45.240.188', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 04:52:01', NULL),
(258, 'New Record inserted On  student session id 32', '32', 1, 'Insert', '157.45.240.188', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 04:52:01', NULL),
(259, 'New Record inserted On users id 63', '63', 1, 'Insert', '157.45.240.188', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 04:52:01', NULL),
(260, 'New Record inserted On users id 64', '64', 1, 'Insert', '157.45.240.188', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 04:52:01', NULL),
(261, 'Record updated On students id 32', '32', 1, 'Update', '157.45.240.188', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 04:52:01', NULL),
(262, 'Record updated On notification setting id 1', '1', 1, 'Update', '49.37.161.60', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 04:55:16', NULL),
(263, 'Record updated On notification setting id 2', '2', 1, 'Update', '49.37.161.60', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 04:55:16', NULL),
(264, 'Record updated On notification setting id 3', '3', 1, 'Update', '49.37.161.60', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 04:55:16', NULL),
(265, 'Record updated On notification setting id 4', '4', 1, 'Update', '49.37.161.60', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 04:55:16', NULL),
(266, 'Record updated On notification setting id 6', '6', 1, 'Update', '49.37.161.60', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 04:55:16', NULL),
(267, 'Record updated On notification setting id 7', '7', 1, 'Update', '49.37.161.60', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 04:55:16', NULL),
(268, 'Record updated On notification setting id 8', '8', 1, 'Update', '49.37.161.60', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 04:55:16', NULL),
(269, 'Record updated On notification setting id 9', '9', 1, 'Update', '49.37.161.60', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 04:55:16', NULL),
(270, 'Record updated On notification setting id 10', '10', 1, 'Update', '49.37.161.60', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 04:55:16', NULL),
(271, 'Record updated On notification setting id 11', '11', 1, 'Update', '49.37.161.60', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 04:55:16', NULL),
(272, 'Record updated On notification setting id 12', '12', 1, 'Update', '49.37.161.60', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 04:55:16', NULL),
(273, 'Record updated On notification setting id 13', '13', 1, 'Update', '49.37.161.60', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 04:55:16', NULL),
(274, 'Record updated On notification setting id 14', '14', 1, 'Update', '49.37.161.60', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 04:55:16', NULL),
(275, 'Record updated On notification setting id 15', '15', 1, 'Update', '49.37.161.60', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 04:55:16', NULL),
(276, 'Record updated On notification setting id 16', '16', 1, 'Update', '49.37.161.60', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 04:55:16', NULL),
(277, 'Record updated On notification setting id 17', '17', 1, 'Update', '49.37.161.60', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 04:55:16', NULL),
(278, 'Record updated On notification setting id 18', '18', 1, 'Update', '49.37.161.60', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 04:55:16', NULL),
(279, 'Record updated On notification setting id 20', '20', 1, 'Update', '49.37.161.60', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 04:55:16', NULL),
(280, 'Record updated On notification setting id 19', '19', 1, 'Update', '49.37.161.60', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 04:55:16', NULL),
(281, 'Record updated On notification setting id 21', '21', 1, 'Update', '49.37.161.60', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 04:55:16', NULL),
(282, 'Record updated On notification setting id 22', '22', 1, 'Update', '49.37.161.60', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 04:55:16', NULL),
(283, 'Record updated On notification setting id 1', '1', 1, 'Update', '157.45.240.188', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 04:59:36', NULL),
(284, 'Record updated On notification setting id 2', '2', 1, 'Update', '157.45.240.188', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 04:59:36', NULL),
(285, 'Record updated On notification setting id 3', '3', 1, 'Update', '157.45.240.188', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 04:59:36', NULL),
(286, 'Record updated On notification setting id 4', '4', 1, 'Update', '157.45.240.188', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 04:59:36', NULL),
(287, 'Record updated On notification setting id 6', '6', 1, 'Update', '157.45.240.188', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 04:59:36', NULL),
(288, 'Record updated On notification setting id 7', '7', 1, 'Update', '157.45.240.188', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 04:59:36', NULL),
(289, 'Record updated On notification setting id 8', '8', 1, 'Update', '157.45.240.188', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 04:59:36', NULL),
(290, 'Record updated On notification setting id 9', '9', 1, 'Update', '157.45.240.188', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 04:59:36', NULL),
(291, 'Record updated On notification setting id 10', '10', 1, 'Update', '157.45.240.188', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 04:59:36', NULL),
(292, 'Record updated On notification setting id 11', '11', 1, 'Update', '157.45.240.188', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 04:59:36', NULL),
(293, 'Record updated On notification setting id 12', '12', 1, 'Update', '157.45.240.188', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 04:59:36', NULL),
(294, 'Record updated On notification setting id 13', '13', 1, 'Update', '157.45.240.188', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 04:59:36', NULL),
(295, 'Record updated On notification setting id 14', '14', 1, 'Update', '157.45.240.188', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 04:59:36', NULL),
(296, 'Record updated On notification setting id 15', '15', 1, 'Update', '157.45.240.188', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 04:59:36', NULL),
(297, 'Record updated On notification setting id 16', '16', 1, 'Update', '157.45.240.188', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 04:59:36', NULL),
(298, 'Record updated On notification setting id 17', '17', 1, 'Update', '157.45.240.188', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 04:59:36', NULL),
(299, 'Record updated On notification setting id 18', '18', 1, 'Update', '157.45.240.188', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 04:59:36', NULL),
(300, 'Record updated On notification setting id 20', '20', 1, 'Update', '157.45.240.188', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 04:59:36', NULL),
(301, 'Record updated On notification setting id 19', '19', 1, 'Update', '157.45.240.188', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 04:59:36', NULL),
(302, 'Record updated On notification setting id 21', '21', 1, 'Update', '157.45.240.188', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 04:59:36', NULL),
(303, 'Record updated On notification setting id 22', '22', 1, 'Update', '157.45.240.188', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 04:59:36', NULL),
(304, 'New Record inserted On students id 33', '33', 1, 'Insert', '157.45.240.188', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 05:03:50', NULL),
(305, 'New Record inserted On  student session id 33', '33', 1, 'Insert', '157.45.240.188', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 05:03:50', NULL),
(306, 'New Record inserted On users id 65', '65', 1, 'Insert', '157.45.240.188', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 05:03:50', NULL),
(307, 'New Record inserted On users id 66', '66', 1, 'Insert', '157.45.240.188', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 05:03:50', NULL),
(308, 'Record updated On students id 33', '33', 1, 'Update', '157.45.240.188', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 05:03:50', NULL),
(309, 'New Record inserted On roles id 8', '8', 1, 'Insert', '157.45.240.188', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 05:19:13', NULL),
(310, 'New Record inserted On roles id 9', '9', 1, 'Insert', '157.45.240.188', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 05:19:28', NULL),
(311, 'New Record inserted On  staff designation id 2', '2', 1, 'Insert', '157.45.240.188', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 05:45:52', NULL),
(312, 'New Record inserted On department id 2', '2', 1, 'Insert', '157.45.240.188', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 05:46:51', NULL),
(313, 'Record updated On staff id 2', '2', 1, 'Update', '157.45.240.188', 'Windows 10', 'Chrome 138.0.0.0', '2025-07-18 05:47:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mark_divisions`
--

CREATE TABLE `mark_divisions` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `percentage_from` float(10,2) DEFAULT NULL,
  `percentage_to` float(10,2) DEFAULT NULL,
  `is_active` int(11) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `template_id` varchar(100) DEFAULT NULL,
  `email_template_id` int(11) DEFAULT NULL,
  `sms_template_id` int(11) DEFAULT NULL,
  `send_through` varchar(20) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `send_mail` varchar(10) DEFAULT '0',
  `send_sms` varchar(10) DEFAULT '0',
  `is_group` varchar(10) DEFAULT '0',
  `is_individual` varchar(10) DEFAULT '0',
  `is_class` int(11) NOT NULL DEFAULT 0,
  `is_schedule` int(11) NOT NULL,
  `sent` int(11) DEFAULT NULL,
  `schedule_date_time` datetime DEFAULT NULL,
  `group_list` text DEFAULT NULL,
  `user_list` text DEFAULT NULL,
  `send_to` varchar(255) DEFAULT NULL,
  `schedule_class` int(11) DEFAULT NULL,
  `schedule_section` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification_roles`
--

CREATE TABLE `notification_roles` (
  `id` int(11) NOT NULL,
  `send_notification_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification_setting`
--

CREATE TABLE `notification_setting` (
  `id` int(11) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `is_mail` varchar(10) DEFAULT '0',
  `is_sms` varchar(10) DEFAULT '0',
  `is_notification` int(11) NOT NULL DEFAULT 0,
  `display_notification` int(11) NOT NULL DEFAULT 0,
  `display_sms` int(11) NOT NULL DEFAULT 1,
  `is_student_recipient` int(11) DEFAULT NULL,
  `is_guardian_recipient` int(11) DEFAULT NULL,
  `is_staff_recipient` int(11) DEFAULT NULL,
  `display_student_recipient` int(11) DEFAULT NULL,
  `display_guardian_recipient` int(11) DEFAULT NULL,
  `display_staff_recipient` int(11) DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `template_id` varchar(100) NOT NULL,
  `template` longtext NOT NULL,
  `variables` text NOT NULL,
  `notification_order` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `notification_setting`
--

INSERT INTO `notification_setting` (`id`, `type`, `is_mail`, `is_sms`, `is_notification`, `display_notification`, `display_sms`, `is_student_recipient`, `is_guardian_recipient`, `is_staff_recipient`, `display_student_recipient`, `display_guardian_recipient`, `display_staff_recipient`, `subject`, `template_id`, `template`, `variables`, `notification_order`, `created_at`, `updated_at`) VALUES
(1, 'student_admission', '1', '1', 0, 0, 1, 1, 1, 0, 1, 1, NULL, 'Student Admission', '', 'Dear {{student_name}} your admission is confirm in Class: {{class}} Section:  {{section}} for Session: {{current_session_name}} for more \r\ndetail\r\n contact\r\n System\r\n Admin\r\n {{class}} {{section}} {{admission_no}} {{roll_no}} {{admission_date}} {{mobileno}} {{email}} {{dob}} {{guardian_name}} {{guardian_relation}} {{guardian_phone}} {{father_name}} {{father_phone}} {{blood_group}} {{mother_name}} {{gender}} {{guardian_email}}', '{{student_name}} {{class}}  {{section}}  {{admission_no}}  {{roll_no}}  {{admission_date}}   {{mobileno}}  {{email}}  {{dob}}  {{guardian_name}}  {{guardian_relation}}  {{guardian_phone}}  {{father_name}}  {{father_phone}}  {{blood_group}}  {{mother_name}}  {{gender}} {{guardian_email}} {{current_session_name}} ', NULL, '2022-12-28 09:52:24', '2025-07-18 04:59:36'),
(2, 'exam_result', '1', '0', 0, 1, 1, 1, 1, 0, 1, 1, NULL, 'Exam Result', '', 'Dear {{student_name}} - {{exam_roll_no}}, your {{exam}} result has been published.', '{{student_name}} {{exam_roll_no}} {{exam}}', NULL, '2022-12-28 09:52:24', '2025-02-26 06:31:30'),
(3, 'fee_submission', '0', '0', 0, 1, 1, 0, 0, 0, 1, 1, NULL, 'Fee Submission', '', 'Dear parents, we have received Fees Amount {{fee_amount}} for  {{student_name}}  by Your School Name \r\n{{class}} {{section}} {{fine_type}} {{fine_percentage}} {{fine_amount}} {{fee_group_name}} {{type}} {{code}} {{email}} {{contact_no}} {{invoice_id}} {{sub_invoice_id}} {{due_date}} {{amount}} {{fee_amount}}', '{{student_name}} {{class}} {{section}} {{fine_type}} {{fine_percentage}} {{fine_amount}} {{fee_group_name}} {{type}} {{code}} {{email}} {{contact_no}} {{invoice_id}} {{sub_invoice_id}} {{due_date}} {{amount}} {{fee_amount}}', NULL, '2022-12-28 09:52:24', '2025-07-18 04:59:36'),
(4, 'student_absent_attendence', '1', '0', 0, 1, 1, 1, 1, 0, 1, 1, NULL, 'Absent Attendence', '', 'Absent Notice :{{student_name}}  was absent on date {{date}} in period {{subject_name}} {{subject_code}} {{subject_type}} from Your School Name', '{{student_name}} {{mobileno}} {{email}} {{father_name}} {{father_phone}} {{father_occupation}} {{mother_name}} {{mother_phone}} {{guardian_name}} {{guardian_phone}} {{guardian_occupation}} {{guardian_email}} {{date}} {{current_session_name}} {{time_from}} {{time_to}} {{subject_name}} {{subject_code}} {{subject_type}}  ', NULL, '2022-12-28 09:52:24', '2025-02-13 10:38:04'),
(6, 'homework', '1', '0', 0, 1, 1, 1, 1, 0, 1, 1, NULL, 'Homework', '', 'New Homework has been created for \r\n{{student_name}} at\r\n\r\n\r\n\r\n{{homework_date}} for the class {{class}} {{section}} {{subject}}. kindly submit your\r\n\r\n\r\n homework before {{submit_date}} .Thank you', '{{homework_date}} {{submit_date}} {{class}} {{section}} {{subject}} {{student_name}} {{admission_no}} ', NULL, '2022-12-28 09:52:24', '2025-02-26 06:31:30'),
(7, 'fees_reminder', '1', '0', 0, 1, 1, 1, 1, 0, 1, 1, NULL, 'Fees Reminder', '', 'Dear parents, please pay fee amount Rs.{{due_amount}} of {{fee_type}} before {{due_date}} for {{student_name}}  from smart school (ignore if you already paid)', '{{fee_type}}{{fee_code}}{{due_date}}{{student_name}}{{school_name}}{{fee_amount}}{{due_amount}}{{deposit_amount}} ', NULL, '2022-12-28 09:52:24', '2025-02-13 10:21:49'),
(8, 'forgot_password', '1', '0', 0, 0, 0, 0, 0, 1, 1, 1, 1, 'Forgot Password', '', 'Dear  {{name}} , \r\n    Recently a request was submitted to reset password for your account. If you didn\'t make the request, just ignore this email. Otherwise you can reset your password using this link <a href=\'{{resetPassLink}}\'>Click here to reset your password</a>,\r\nif you\'re having trouble clicking the password reset button, copy and paste the URL below into your web browser. your username {{username}}\r\n{{resetPassLink}}\r\n Regards,\r\n {{school_name}}', '{{school_name}}{{name}}{{username}}{{resetPassLink}} ', NULL, '2022-12-28 09:52:24', '2025-07-18 04:59:36'),
(9, 'online_examination_publish_exam', '1', '0', 0, 1, 1, 1, 1, 0, 1, 1, NULL, 'Online Examination Publish Exam', '', 'A new exam {{exam_title}} has been created for  duration: {{time_duration}} min, which will be available from:  {{exam_from}} to  {{exam_to}}.', '{{exam_title}} {{exam_from}} {{exam_to}} {{time_duration}} {{attempt}} {{passing_percentage}}', NULL, '2022-12-28 09:52:24', '2025-02-26 06:31:30'),
(10, 'online_examination_publish_result', '1', '0', 0, 1, 1, 1, 1, 0, 1, 1, NULL, 'Online Examination Publish Result', '', 'Exam {{exam_title}} result has been declared which was conducted between  {{exam_from}} to   {{exam_to}}, for more details, please check your student portal.', '{{exam_title}} {{exam_from}} {{exam_to}} {{time_duration}} {{attempt}} {{passing_percentage}}', NULL, '2022-12-28 09:52:24', '2025-02-26 06:31:30'),
(11, 'online_admission_form_submission', '1', '0', 0, 1, 1, 1, 1, 0, 1, 1, NULL, 'Online Admission Form Submission', '', 'Dear {{firstname}}  {{lastname}} your online admission form is Submitted successfully  on date {{date}}. Your Reference number is {{reference_no}}. Please remember your reference number for further process.', ' {{firstname}} {{lastname}} {{date}} {{reference_no}}', NULL, '2022-12-28 09:52:24', '2025-02-13 10:21:49'),
(12, 'online_admission_fees_submission', '1', '0', 0, 1, 1, 1, 1, 0, 1, 1, NULL, 'Online Admission Fees Submission', '', 'Dear {{firstname}}  {{lastname}} your online admission form is Submitted successfully and the payment of {{paid_amount}} has recieved successfully on date {{date}}. Your Reference number is {{reference_no}}. Please remember your reference number for further process.', ' {{firstname}} {{lastname}} {{date}} {{paid_amount}} {{reference_no}}', NULL, '2022-12-28 09:52:24', '2025-02-26 06:30:59'),
(13, 'student_login_credential', '0', '0', 0, 0, 1, 1, 1, 0, 1, 1, NULL, 'Student Login Credential', '', 'Hello {{display_name}} your login details for Url: {{url}} Username: {{username}}  Password: {{password}} admission No: {{admission_no}}', '{{url}} {{display_name}} {{username}} {{password}} {{admission_no}}', NULL, '2022-08-06 05:34:41', '2025-07-18 04:59:36'),
(14, 'staff_login_credential', '1', '0', 0, 0, 1, 0, 0, 1, NULL, NULL, 1, 'Staff Login Credential', '', 'Hello {{first_name}} {{last_name}} your login details for Url: {{url}} Username: {{username}}  Password: {{password}} Employee ID: {{employee_id}}', '{{url}} {{first_name}} {{last_name}} {{username}} {{password}} {{employee_id}}', NULL, '2021-12-23 11:59:13', '2025-02-26 06:30:14'),
(15, 'fee_processing', '0', '0', 0, 1, 1, 1, 1, 0, 1, 1, NULL, 'Fee processing', '', 'Dear parents, we have received Fees Amount {{fee_amount}} for  {{student_name}}  by Your School Name \r\n{{class}} {{section}} {{email}} {{contact_no}}\r\n\r\n{{student_name}} {{class}} {{section}} {{email}} {{contact_no}} transaction_id :{{transaction_id}} {{fee_amount}}', '{{student_name}} {{class}} {{section}} {{email}} {{contact_no}} {{transaction_id}} {{fee_amount}}', NULL, '2021-12-22 10:15:42', '2025-07-18 04:59:36'),
(16, 'online_admission_fees_processing', '0', '0', 0, 1, 1, 1, 1, 0, 1, 1, NULL, 'Online Admission Fees Processing', '', 'Dear {{firstname}}  {{lastname}} your online admission form is Submitted successfully and the payment of {{paid_amount}} has processing on date {{date}}. Your Reference number is {{reference_no}} and your transaction id {{transaction_id}}. Please remember your reference number for further process.', ' {{firstname}} {{lastname}} {{date}} {{paid_amount}} {{reference_no}} {{transaction_id}}', NULL, '2022-08-06 11:09:47', '2025-07-18 04:59:36'),
(17, 'student_apply_leave', '0', '0', 0, 0, 1, 0, 1, 1, NULL, 1, 1, 'Student Apply Leave ( {{student_name}} - {{admission_no}} )', '', 'My Name is {{student_name}} Class {{class}} section {{section}}. I have to apply leave on {{apply_date}}and from {{from_date}} to {{to_date}}. {{message}} please provide.', '{{message}} {{apply_date}} {{from_date}} {{to_date}} {{student_name}} {{class}} {{section}}', NULL, '2022-03-12 11:58:37', '2025-07-18 04:59:36'),
(18, 'email_pdf_exam_marksheet', '1', '0', 0, 0, 0, 1, 1, 0, 1, 1, NULL, 'Email PDF Exam Marksheet ( {{student_name}} - {{admission_no}} )', '', 'Dear {{student_name}} ({{admission_no}}) {{class}} Section {{section}}. We have mailed you the marksheet of Exam {{exam}} Roll no.{{roll_no}}', '{{student_name}} {{class}}  {{section}}  {{admission_no}}  {{roll_no}} {{exam}} {{admit_card_roll_no}} ', NULL, '2022-03-12 12:24:42', '2025-02-13 10:08:56'),
(19, 'homework_evaluation', '1', '0', 0, 1, 1, 1, 1, 0, 1, 1, NULL, 'Homework Evaluation', '', 'Homework Evaluation\r\nHomework Assign Date:  {{homework_date}}  \r\nLast Submit Date: {{submit_date}}\r\nStudent Name: {{student_name}} .\r\nAdmission No {{admission_no}}\r\n{{class}}\r\nsection: {{section}}\r\nsubject : {{subject}} \r\nMarks: {{marks}}/{{max_marks}}\r\nDate:{{evaluation_date}}\r\nThank you', '{{homework_date}} {{submit_date}} {{class}} {{section}} {{subject}} {{student_name}} {{admission_no}} {{max_marks}} {{marks}} {{evaluation_date}}', 120, '2025-01-15 08:00:34', '2025-02-26 06:30:36'),
(20, 'student_present_attendence', '1', '0', 0, 1, 1, 1, 1, 0, 1, 1, NULL, 'Present Attendence', '', 'Present Notice :{{student_name}} {{admission_no}} was present on date {{date}} in in_time {{in_time}} period subject-{{subject_name}}, subject_code - {{subject_code}}, subject_type-{{subject_type}}, period_time_from-  {{period_time_from}}, period_time_to-  {{period_time_to}}, mobile no - {{mobileno}}, email -  {{email}}, father name -  {{father_name}}, father phone - {{father_phone}}, father occupation -  {{father_occupation}}, mother name -  {{mother_name}}, mother phone - {{mother_phone}}, guardian name -  {{guardian_name}}, guardian phone -  {{guardian_phone}}, guardian occupation - {{guardian_occupation}}, guardian email - {{guardian_email}}', '{{student_name}} {{mobileno}} {{email}} {{father_name}} {{father_phone}} {{father_occupation}} {{mother_name}} {{mother_phone}} {{guardian_name}} {{guardian_phone}} {{guardian_occupation}} {{guardian_email}} {{date}} {{in_time}}  ({{admission_no}}) {{period_time_from}} {{period_time_to}} {{subject_name}} {{subject_code}} {{subject_type}}', 15, '2025-01-13 05:55:46', '2025-02-26 06:33:37'),
(21, 'staff_present_attendence', '1', '0', 0, 1, 1, 0, 0, 1, NULL, NULL, 1, 'staff Present Attendence', '', 'Present Notice: Staff Name {{staff_name}} ({{employee_id}}) is Present on Date : {{date}} at Time : {{in_time}}\r\n<br>\r\nstaff contact no:{{contact_no}}\r\n<br>\r\nstaff mail id : {{email}}', '{{date}} {{in_time}} {{staff_name}} {{employee_id}} {{contact_no}} {{email}}\n', 190, '2025-02-07 11:43:28', '2025-02-13 10:40:00'),
(22, 'staff_absent_attendence', '1', '0', 0, 1, 1, 0, 0, 1, NULL, NULL, 1, 'staff Absent Attendence', '', 'Absent Notice: Staff Name {{staff_name}} ({{employee_id}}) is Absent on Date : {{date}} \r\n<br>\r\nstaff contact no:{{contact_no}}\r\n<br>\r\nstaff mail id : {{email}}', '{{date}} {{staff_name}} {{employee_id}} {{contact_no}} {{email}}\n', 200, '2025-02-07 11:43:28', '2025-02-13 10:40:00');

-- --------------------------------------------------------

--
-- Table structure for table `offline_fees_payments`
--

CREATE TABLE `offline_fees_payments` (
  `id` int(11) NOT NULL,
  `invoice_id` varchar(50) DEFAULT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `student_fees_master_id` int(11) DEFAULT NULL,
  `fee_groups_feetype_id` int(11) DEFAULT NULL,
  `student_transport_fee_id` int(11) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `bank_from` varchar(200) DEFAULT NULL,
  `bank_account_transferred` varchar(200) DEFAULT NULL,
  `reference` varchar(200) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `submit_date` datetime DEFAULT NULL,
  `approve_date` datetime DEFAULT NULL,
  `attachment` text DEFAULT NULL,
  `reply` text DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `is_active` varchar(1) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `onlineexam`
--

CREATE TABLE `onlineexam` (
  `id` int(11) NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `exam` text DEFAULT NULL,
  `attempt` int(11) NOT NULL,
  `exam_from` datetime DEFAULT NULL,
  `exam_to` datetime DEFAULT NULL,
  `is_quiz` int(11) NOT NULL DEFAULT 0,
  `auto_publish_date` datetime DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `duration` time NOT NULL,
  `passing_percentage` float NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `publish_result` int(11) NOT NULL DEFAULT 0,
  `answer_word_count` int(11) NOT NULL DEFAULT -1,
  `is_active` varchar(1) DEFAULT '0',
  `is_marks_display` int(11) NOT NULL DEFAULT 0,
  `is_neg_marking` int(11) NOT NULL DEFAULT 0,
  `is_random_question` int(11) NOT NULL DEFAULT 0,
  `is_rank_generated` int(11) NOT NULL DEFAULT 0,
  `publish_exam_notification` int(11) NOT NULL,
  `publish_result_notification` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `onlineexam_attempts`
--

CREATE TABLE `onlineexam_attempts` (
  `id` int(11) NOT NULL,
  `onlineexam_student_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `onlineexam_questions`
--

CREATE TABLE `onlineexam_questions` (
  `id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `onlineexam_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `marks` float(10,2) NOT NULL DEFAULT 0.00,
  `neg_marks` float(10,2) DEFAULT 0.00,
  `is_active` varchar(1) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `onlineexam_students`
--

CREATE TABLE `onlineexam_students` (
  `id` int(11) NOT NULL,
  `onlineexam_id` int(11) DEFAULT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `is_attempted` int(11) NOT NULL DEFAULT 0,
  `rank` int(11) DEFAULT 0,
  `quiz_attempted` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `onlineexam_student_results`
--

CREATE TABLE `onlineexam_student_results` (
  `id` int(11) NOT NULL,
  `onlineexam_student_id` int(11) NOT NULL,
  `onlineexam_question_id` int(11) NOT NULL,
  `select_option` longtext DEFAULT NULL,
  `marks` float(10,2) NOT NULL DEFAULT 0.00,
  `remark` text DEFAULT NULL,
  `attachment_name` text DEFAULT NULL,
  `attachment_upload_name` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `online_admissions`
--

CREATE TABLE `online_admissions` (
  `id` int(11) NOT NULL,
  `admission_no` varchar(100) DEFAULT NULL,
  `roll_no` varchar(100) DEFAULT NULL,
  `reference_no` varchar(50) NOT NULL,
  `admission_date` date DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `middlename` varchar(255) NOT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `rte` varchar(20) NOT NULL DEFAULT 'No',
  `image` varchar(255) DEFAULT NULL,
  `mobileno` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `pincode` varchar(100) DEFAULT NULL,
  `religion` varchar(100) DEFAULT NULL,
  `cast` varchar(50) NOT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `current_address` text DEFAULT NULL,
  `permanent_address` text DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `class_section_id` int(11) DEFAULT NULL,
  `route_id` int(11) NOT NULL,
  `school_house_id` int(11) DEFAULT NULL,
  `blood_group` varchar(200) NOT NULL,
  `vehroute_id` int(11) NOT NULL,
  `hostel_room_id` int(11) DEFAULT NULL,
  `adhar_no` varchar(100) DEFAULT NULL,
  `samagra_id` varchar(100) DEFAULT NULL,
  `bank_account_no` varchar(100) DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `ifsc_code` varchar(100) DEFAULT NULL,
  `guardian_is` varchar(100) NOT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `father_phone` varchar(100) DEFAULT NULL,
  `father_occupation` varchar(100) DEFAULT NULL,
  `mother_name` varchar(100) DEFAULT NULL,
  `mother_phone` varchar(100) DEFAULT NULL,
  `mother_occupation` varchar(100) DEFAULT NULL,
  `guardian_name` varchar(100) DEFAULT NULL,
  `guardian_relation` varchar(100) DEFAULT NULL,
  `guardian_phone` varchar(100) DEFAULT NULL,
  `guardian_occupation` varchar(150) NOT NULL,
  `guardian_address` text DEFAULT NULL,
  `guardian_email` varchar(100) NOT NULL,
  `father_pic` varchar(255) NOT NULL,
  `mother_pic` varchar(255) NOT NULL,
  `guardian_pic` varchar(255) NOT NULL,
  `is_enroll` int(11) DEFAULT 0,
  `previous_school` text DEFAULT NULL,
  `height` varchar(100) NOT NULL,
  `weight` varchar(100) NOT NULL,
  `note` text NOT NULL,
  `form_status` int(11) NOT NULL,
  `paid_status` int(11) NOT NULL,
  `measurement_date` date DEFAULT NULL,
  `app_key` text DEFAULT NULL,
  `document` text DEFAULT NULL,
  `submit_date` date DEFAULT NULL,
  `disable_at` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `online_admission_custom_field_value`
--

CREATE TABLE `online_admission_custom_field_value` (
  `id` int(11) NOT NULL,
  `belong_table_id` int(11) DEFAULT NULL,
  `custom_field_id` int(11) DEFAULT NULL,
  `field_value` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `online_admission_fields`
--

CREATE TABLE `online_admission_fields` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `online_admission_fields`
--

INSERT INTO `online_admission_fields` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'middlename', 0, '2021-05-28 10:29:23', '2025-07-03 06:17:15'),
(2, 'lastname', 1, '2021-06-02 04:49:19', '2025-07-03 06:17:15'),
(3, 'category', 0, '2021-06-02 04:48:35', '2025-07-03 06:17:15'),
(4, 'religion', 0, '2021-06-02 04:48:35', '2025-07-03 06:17:15'),
(5, 'cast', 0, '2021-06-02 04:48:35', '2025-07-03 06:17:15'),
(6, 'mobile_no', 1, '2021-06-02 04:50:24', '2025-07-03 06:17:15'),
(7, 'admission_date', 0, '2021-06-02 04:48:35', '2025-07-03 06:17:15'),
(8, 'student_photo', 0, '2021-06-02 04:48:35', '2025-07-03 06:17:15'),
(9, 'is_student_house', 0, '2021-05-29 13:22:53', '2025-07-03 06:17:15'),
(10, 'is_blood_group', 0, '2021-06-02 04:48:35', '2025-07-03 06:17:15'),
(11, 'student_height', 0, '2021-06-02 04:48:35', '2025-07-03 06:17:15'),
(12, 'student_weight', 0, '2021-06-02 04:48:35', '2025-07-03 06:17:15'),
(13, 'father_name', 0, '2021-06-02 04:48:35', '2025-07-03 06:17:15'),
(14, 'father_phone', 0, '2021-06-02 04:48:35', '2025-07-03 06:17:15'),
(15, 'father_occupation', 0, '2021-06-02 04:48:35', '2025-07-03 06:17:15'),
(16, 'father_pic', 0, '2021-06-02 04:48:35', '2025-07-03 06:17:15'),
(17, 'mother_name', 0, '2021-06-02 04:48:35', '2025-07-03 06:17:15'),
(18, 'mother_phone', 0, '2021-06-02 04:48:35', '2025-07-03 06:17:15'),
(19, 'mother_occupation', 0, '2021-06-02 04:48:35', '2025-07-03 06:17:15'),
(20, 'mother_pic', 0, '2021-06-02 04:48:35', '2025-07-03 06:17:15'),
(21, 'guardian_name', 1, '2021-06-02 04:50:54', '2025-07-03 06:17:15'),
(22, 'guardian_phone', 1, '2021-06-02 04:50:54', '2025-07-03 06:17:15'),
(23, 'if_guardian_is', 1, '2021-06-02 04:50:54', '2025-07-03 06:17:15'),
(24, 'guardian_relation', 1, '2021-06-02 04:50:54', '2025-07-03 06:17:15'),
(25, 'guardian_email', 1, '2021-06-02 04:51:35', '2025-07-03 06:17:15'),
(26, 'guardian_occupation', 1, '2021-06-02 04:51:26', '2025-07-03 06:17:15'),
(27, 'guardian_address', 1, '2021-06-02 04:51:31', '2025-07-03 06:17:15'),
(28, 'bank_account_no', 0, '2021-06-02 04:48:35', '2025-07-03 06:17:15'),
(29, 'bank_name', 0, '2021-06-02 04:48:35', '2025-07-03 06:17:15'),
(30, 'ifsc_code', 0, '2021-06-02 04:48:35', '2025-07-03 06:17:15'),
(31, 'national_identification_no', 0, '2021-06-02 04:48:35', '2025-07-03 06:17:15'),
(32, 'local_identification_no', 0, '2021-06-02 04:48:35', '2025-07-03 06:17:15'),
(33, 'rte', 0, '2021-06-02 04:48:35', '2025-07-03 06:17:15'),
(34, 'previous_school_details', 0, '2021-06-02 04:48:35', '2025-07-03 06:17:15'),
(35, 'guardian_photo', 1, '2021-06-02 04:51:29', '2025-07-03 06:17:15'),
(36, 'student_note', 0, '2021-06-02 04:55:08', '2025-07-03 06:17:15'),
(37, 'measurement_date', 0, '2021-06-02 04:48:35', '2025-07-03 06:17:15'),
(38, 'student_email', 1, '2021-06-02 04:49:38', '2025-07-03 06:17:15'),
(39, 'current_address', 0, '2021-06-02 04:48:35', '2025-07-03 06:17:15'),
(40, 'permanent_address', 0, '2021-06-02 04:48:35', '2025-07-03 06:17:15'),
(41, 'upload_documents', 1, '2022-09-20 08:00:32', '2025-07-03 06:17:15');

-- --------------------------------------------------------

--
-- Table structure for table `online_admission_payment`
--

CREATE TABLE `online_admission_payment` (
  `id` int(11) NOT NULL,
  `online_admission_id` int(11) NOT NULL,
  `paid_amount` float(10,2) NOT NULL,
  `payment_mode` varchar(50) NOT NULL,
  `payment_type` varchar(100) NOT NULL,
  `transaction_id` varchar(100) NOT NULL,
  `note` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  `processing_charge_type` varchar(255) DEFAULT NULL,
  `processing_charge_value` float(10,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_settings`
--

CREATE TABLE `payment_settings` (
  `id` int(11) NOT NULL,
  `payment_type` varchar(200) NOT NULL,
  `api_username` varchar(200) DEFAULT NULL,
  `api_secret_key` varchar(200) NOT NULL,
  `salt` varchar(200) NOT NULL,
  `api_publishable_key` varchar(200) NOT NULL,
  `api_password` varchar(200) DEFAULT NULL,
  `api_signature` varchar(200) DEFAULT NULL,
  `api_email` varchar(200) DEFAULT NULL,
  `paypal_demo` varchar(100) NOT NULL,
  `account_no` varchar(200) NOT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `gateway_mode` int(11) NOT NULL COMMENT '0 Testing, 1 live',
  `paytm_website` varchar(255) NOT NULL,
  `paytm_industrytype` varchar(255) NOT NULL,
  `charge_type` varchar(255) DEFAULT NULL,
  `charge_value` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payslip_allowance`
--

CREATE TABLE `payslip_allowance` (
  `id` int(11) NOT NULL,
  `payslip_id` int(11) NOT NULL,
  `allowance_type` varchar(200) NOT NULL,
  `amount` float NOT NULL,
  `staff_id` int(11) NOT NULL,
  `cal_type` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_category`
--

CREATE TABLE `permission_category` (
  `id` int(11) NOT NULL,
  `perm_group_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `short_code` varchar(100) DEFAULT NULL,
  `enable_view` int(11) DEFAULT 0,
  `enable_add` int(11) DEFAULT 0,
  `enable_edit` int(11) DEFAULT 0,
  `enable_delete` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `permission_category`
--

INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 'Student', 'student', 1, 1, 1, 1, '2019-10-24 05:42:03', '2025-07-03 06:17:16'),
(2, 1, 'Import Student', 'import_student', 1, 0, 0, 0, '2018-06-22 10:17:19', '2025-07-03 06:17:16'),
(3, 1, 'Student Categories', 'student_categories', 1, 1, 1, 1, '2018-06-22 10:17:36', '2025-07-03 06:17:16'),
(4, 1, 'Student Houses', 'student_houses', 1, 1, 1, 1, '2018-06-22 10:17:53', '2025-07-03 06:17:16'),
(5, 2, 'Collect Fees', 'collect_fees', 1, 1, 0, 1, '2018-06-22 10:21:03', '2025-07-03 06:17:16'),
(6, 2, 'Fees Carry Forward', 'fees_carry_forward', 1, 0, 0, 0, '2018-06-27 00:18:15', '2025-07-03 06:17:16'),
(7, 2, 'Fees Master', 'fees_master', 1, 1, 1, 1, '2018-06-27 00:18:57', '2025-07-03 06:17:16'),
(8, 2, 'Fees Group', 'fees_group', 1, 1, 1, 1, '2018-06-22 10:21:46', '2025-07-03 06:17:16'),
(9, 3, 'Income', 'income', 1, 1, 1, 1, '2018-06-22 10:23:21', '2025-07-03 06:17:16'),
(10, 3, 'Income Head', 'income_head', 1, 1, 1, 1, '2018-06-22 10:22:44', '2025-07-03 06:17:16'),
(11, 3, 'Search Income', 'search_income', 1, 0, 0, 0, '2018-06-22 10:23:00', '2025-07-03 06:17:16'),
(12, 4, 'Expense', 'expense', 1, 1, 1, 1, '2018-06-22 10:24:06', '2025-07-03 06:17:16'),
(13, 4, 'Expense Head', 'expense_head', 1, 1, 1, 1, '2018-06-22 10:23:47', '2025-07-03 06:17:16'),
(14, 4, 'Search Expense', 'search_expense', 1, 0, 0, 0, '2018-06-22 10:24:13', '2025-07-03 06:17:16'),
(15, 5, 'Student / Period Attendance', 'student_attendance', 1, 1, 1, 0, '2019-11-29 01:19:05', '2025-07-03 06:17:16'),
(20, 6, 'Marks Grade', 'marks_grade', 1, 1, 1, 1, '2018-06-22 10:25:25', '2025-07-03 06:17:16'),
(21, 7, 'Class Timetable', 'class_timetable', 1, 0, 1, 0, '2019-11-24 03:05:17', '2025-07-03 06:17:16'),
(23, 7, 'Subject', 'subject', 1, 1, 1, 1, '2018-06-22 10:32:17', '2025-07-03 06:17:16'),
(24, 7, 'Class', 'class', 1, 1, 1, 1, '2018-06-22 10:32:35', '2025-07-03 06:17:16'),
(25, 7, 'Section', 'section', 1, 1, 1, 1, '2018-06-22 10:31:10', '2025-07-03 06:17:16'),
(26, 7, 'Promote Student', 'promote_student', 1, 0, 0, 0, '2018-06-22 10:32:47', '2025-07-03 06:17:16'),
(27, 8, 'Upload Content', 'upload_content', 1, 1, 0, 1, '2018-06-22 10:33:19', '2025-07-03 06:17:16'),
(28, 9, 'Books List', 'books', 1, 1, 1, 1, '2019-11-24 00:37:12', '2025-07-03 06:17:16'),
(29, 9, 'Issue Return', 'issue_return', 1, 0, 0, 0, '2019-11-24 00:37:18', '2025-07-03 06:17:16'),
(30, 9, 'Add Staff Member', 'add_staff_member', 1, 0, 0, 0, '2018-07-02 11:37:00', '2025-07-03 06:17:16'),
(31, 10, 'Issue Item', 'issue_item', 1, 1, 1, 1, '2019-11-29 06:39:27', '2025-07-03 06:17:16'),
(32, 10, 'Add Item Stock', 'item_stock', 1, 1, 1, 1, '2019-11-24 00:39:17', '2025-07-03 06:17:16'),
(33, 10, 'Add Item', 'item', 1, 1, 1, 1, '2019-11-24 00:39:39', '2025-07-03 06:17:16'),
(34, 10, 'Item Store', 'store', 1, 1, 1, 1, '2019-11-24 00:40:41', '2025-07-03 06:17:16'),
(35, 10, 'Item Supplier', 'supplier', 1, 1, 1, 1, '2019-11-24 00:40:49', '2025-07-03 06:17:16'),
(37, 11, 'Routes', 'routes', 1, 1, 1, 1, '2018-06-22 10:39:17', '2025-07-03 06:17:16'),
(38, 11, 'Vehicle', 'vehicle', 1, 1, 1, 1, '2018-06-22 10:39:36', '2025-07-03 06:17:16'),
(39, 11, 'Assign Vehicle', 'assign_vehicle', 1, 1, 1, 1, '2018-06-27 04:39:20', '2025-07-03 06:17:16'),
(40, 12, 'Hostel', 'hostel', 1, 1, 1, 1, '2018-06-22 10:40:49', '2025-07-03 06:17:16'),
(41, 12, 'Room Type', 'room_type', 1, 1, 1, 1, '2018-06-22 10:40:27', '2025-07-03 06:17:16'),
(42, 12, 'Hostel Rooms', 'hostel_rooms', 1, 1, 1, 1, '2018-06-25 06:23:03', '2025-07-03 06:17:16'),
(43, 13, 'Notice Board', 'notice_board', 1, 1, 1, 1, '2018-06-22 10:41:17', '2025-07-03 06:17:16'),
(44, 13, 'Email', 'email', 1, 0, 0, 0, '2019-11-26 05:20:37', '2025-07-03 06:17:16'),
(46, 13, 'Email / SMS Log', 'email_sms_log', 1, 0, 0, 0, '2018-06-22 10:41:23', '2025-07-03 06:17:16'),
(53, 15, 'Languages', 'languages', 0, 1, 0, 1, '2021-01-23 07:09:32', '2025-07-03 06:17:16'),
(54, 15, 'General Setting', 'general_setting', 1, 0, 1, 0, '2018-07-05 09:08:35', '2025-07-03 06:17:16'),
(55, 15, 'Session Setting', 'session_setting', 1, 1, 1, 1, '2018-06-22 10:44:15', '2025-07-03 06:17:16'),
(56, 15, 'Notification Setting', 'notification_setting', 1, 0, 1, 0, '2018-07-05 09:08:41', '2025-07-03 06:17:16'),
(57, 15, 'SMS Setting', 'sms_setting', 1, 0, 1, 0, '2018-07-05 09:08:47', '2025-07-03 06:17:16'),
(58, 15, 'Email Setting', 'email_setting', 1, 0, 1, 0, '2018-07-05 09:08:51', '2025-07-03 06:17:16'),
(59, 15, 'Front CMS Setting', 'front_cms_setting', 1, 0, 1, 0, '2018-07-05 09:08:55', '2025-07-03 06:17:16'),
(60, 15, 'Payment Methods', 'payment_methods', 1, 0, 1, 0, '2018-07-05 09:08:59', '2025-07-03 06:17:16'),
(61, 16, 'Menus', 'menus', 1, 1, 0, 1, '2018-07-09 03:50:06', '2025-07-03 06:17:16'),
(62, 16, 'Media Manager', 'media_manager', 1, 1, 0, 1, '2018-07-09 03:50:26', '2025-07-03 06:17:16'),
(63, 16, 'Banner Images', 'banner_images', 1, 1, 0, 1, '2018-06-22 10:46:02', '2025-07-03 06:17:16'),
(64, 16, 'Pages', 'pages', 1, 1, 1, 1, '2018-06-22 10:46:21', '2025-07-03 06:17:16'),
(65, 16, 'Gallery', 'gallery', 1, 1, 1, 1, '2018-06-22 10:47:02', '2025-07-03 06:17:16'),
(66, 16, 'Event', 'event', 1, 1, 1, 1, '2018-06-22 10:47:20', '2025-07-03 06:17:16'),
(67, 16, 'News', 'notice', 1, 1, 1, 1, '2018-07-03 08:39:34', '2025-07-03 06:17:16'),
(68, 2, 'Fees Group Assign', 'fees_group_assign', 1, 0, 0, 0, '2018-06-22 10:20:42', '2025-07-03 06:17:16'),
(69, 2, 'Fees Type', 'fees_type', 1, 1, 1, 1, '2018-06-22 10:19:34', '2025-07-03 06:17:16'),
(70, 2, 'Fees Discount', 'fees_discount', 1, 1, 1, 1, '2018-06-22 10:20:10', '2025-07-03 06:17:16'),
(71, 2, 'Fees Discount Assign', 'fees_discount_assign', 1, 0, 0, 0, '2018-06-22 10:20:17', '2025-07-03 06:17:16'),
(73, 2, 'Search Fees Payment', 'search_fees_payment', 1, 0, 0, 0, '2018-06-22 10:20:27', '2025-07-03 06:17:16'),
(74, 2, 'Search Due Fees', 'search_due_fees', 1, 0, 0, 0, '2018-06-22 10:20:35', '2025-07-03 06:17:16'),
(77, 7, 'Assign Class Teacher', 'assign_class_teacher', 1, 1, 1, 1, '2018-06-22 10:30:52', '2025-07-03 06:17:16'),
(78, 17, 'Admission Enquiry', 'admission_enquiry', 1, 1, 1, 1, '2018-06-22 10:51:24', '2025-07-03 06:17:16'),
(79, 17, 'Follow Up Admission Enquiry', 'follow_up_admission_enquiry', 1, 1, 0, 1, '2018-06-22 10:51:39', '2025-07-03 06:17:16'),
(80, 17, 'Visitor Book', 'visitor_book', 1, 1, 1, 1, '2018-06-22 10:48:58', '2025-07-03 06:17:16'),
(81, 17, 'Phone Call Log', 'phone_call_log', 1, 1, 1, 1, '2018-06-22 10:50:57', '2025-07-03 06:17:16'),
(82, 17, 'Postal Dispatch', 'postal_dispatch', 1, 1, 1, 1, '2018-06-22 10:50:21', '2025-07-03 06:17:16'),
(83, 17, 'Postal Receive', 'postal_receive', 1, 1, 1, 1, '2018-06-22 10:50:04', '2025-07-03 06:17:16'),
(84, 17, 'Complain', 'complaint', 1, 1, 1, 1, '2018-07-03 08:40:55', '2025-07-03 06:17:16'),
(85, 17, 'Setup Front Office', 'setup_font_office', 1, 1, 1, 1, '2025-02-13 09:03:14', '2025-07-03 06:17:16'),
(86, 18, 'Staff', 'staff', 1, 1, 1, 1, '2018-06-22 10:53:31', '2025-07-03 06:17:16'),
(87, 18, 'Disable Staff', 'disable_staff', 1, 0, 0, 0, '2018-06-22 10:53:12', '2025-07-03 06:17:16'),
(88, 18, 'Staff Attendance', 'staff_attendance', 1, 1, 1, 0, '2018-06-22 10:53:10', '2025-07-03 06:17:16'),
(90, 18, 'Staff Payroll', 'staff_payroll', 1, 1, 0, 1, '2018-06-22 10:52:51', '2025-07-03 06:17:16'),
(93, 19, 'Homework', 'homework', 1, 1, 1, 1, '2018-06-22 10:53:50', '2025-07-03 06:17:16'),
(94, 19, 'Homework Evaluation', 'homework_evaluation', 1, 1, 0, 0, '2018-06-27 03:07:21', '2025-07-03 06:17:16'),
(96, 20, 'Student Certificate', 'student_certificate', 1, 1, 1, 1, '2018-07-06 10:41:07', '2025-07-03 06:17:16'),
(97, 20, 'Generate Certificate', 'generate_certificate', 1, 0, 0, 0, '2018-07-06 10:37:16', '2025-07-03 06:17:16'),
(98, 20, 'Student ID Card', 'student_id_card', 1, 1, 1, 1, '2018-07-06 10:41:28', '2025-07-03 06:17:16'),
(99, 20, 'Generate ID Card', 'generate_id_card', 1, 0, 0, 0, '2018-07-06 10:41:49', '2025-07-03 06:17:16'),
(102, 21, 'Calendar To Do List', 'calendar_to_do_list', 1, 1, 1, 1, '2018-06-22 10:54:41', '2025-07-03 06:17:16'),
(104, 10, 'Item Category', 'item_category', 1, 1, 1, 1, '2018-06-22 10:34:33', '2025-07-03 06:17:16'),
(106, 22, 'Quick Session Change', 'quick_session_change', 1, 0, 0, 0, '2018-06-22 10:54:45', '2025-07-03 06:17:16'),
(107, 1, 'Disable Student', 'disable_student', 1, 0, 0, 0, '2018-06-25 06:21:34', '2025-07-03 06:17:16'),
(108, 18, ' Approve Leave Request', 'approve_leave_request', 1, 0, 1, 1, '2020-10-05 08:56:27', '2025-07-03 06:17:16'),
(109, 18, 'Apply Leave', 'apply_leave', 1, 1, 0, 0, '2019-11-28 23:47:46', '2025-07-03 06:17:16'),
(110, 18, 'Leave Types ', 'leave_types', 1, 1, 1, 1, '2018-07-02 10:17:56', '2025-07-03 06:17:16'),
(111, 18, 'Department', 'department', 1, 1, 1, 1, '2018-06-26 03:57:07', '2025-07-03 06:17:16'),
(112, 18, 'Designation', 'designation', 1, 1, 1, 1, '2018-06-26 03:57:07', '2025-07-03 06:17:16'),
(113, 22, 'Fees Collection And Expense Monthly Chart', 'fees_collection_and_expense_monthly_chart', 1, 0, 0, 0, '2018-07-03 07:08:15', '2025-07-03 06:17:16'),
(114, 22, 'Fees Collection And Expense Yearly Chart', 'fees_collection_and_expense_yearly_chart', 1, 0, 0, 0, '2018-07-03 07:08:15', '2025-07-03 06:17:16'),
(115, 22, 'Monthly Fees Collection Widget', 'Monthly fees_collection_widget', 1, 0, 0, 0, '2018-07-03 07:13:35', '2025-07-03 06:17:16'),
(116, 22, 'Monthly Expense Widget', 'monthly_expense_widget', 1, 0, 0, 0, '2018-07-03 07:13:35', '2025-07-03 06:17:16'),
(117, 22, 'Student Count Widget', 'student_count_widget', 1, 0, 0, 0, '2018-07-03 07:13:35', '2025-07-03 06:17:16'),
(118, 22, 'Staff Role Count Widget', 'staff_role_count_widget', 1, 0, 0, 0, '2018-07-03 07:13:35', '2025-07-03 06:17:16'),
(122, 5, 'Attendance By Date', 'attendance_by_date', 1, 0, 0, 0, '2018-07-03 08:42:29', '2025-07-03 06:17:16'),
(123, 9, 'Add Student', 'add_student', 1, 0, 0, 0, '2018-07-03 08:42:29', '2025-07-03 06:17:16'),
(126, 15, 'User Status', 'user_status', 1, 0, 0, 0, '2018-07-03 08:42:29', '2025-07-03 06:17:16'),
(127, 18, 'Can See Other Users Profile', 'can_see_other_users_profile', 1, 0, 0, 0, '2018-07-03 08:42:29', '2025-07-03 06:17:16'),
(128, 1, 'Student Timeline', 'student_timeline', 1, 1, 1, 1, '2022-12-28 09:52:24', '2025-07-03 06:17:16'),
(129, 18, 'Staff Timeline', 'staff_timeline', 1, 1, 1, 1, '2022-12-28 09:52:24', '2025-07-03 06:17:16'),
(130, 15, 'Backup', 'backup', 1, 1, 0, 1, '2018-07-09 04:17:17', '2025-07-03 06:17:16'),
(131, 15, 'Restore', 'restore', 1, 0, 0, 0, '2018-07-09 04:17:17', '2025-07-03 06:17:16'),
(134, 1, 'Disable Reason', 'disable_reason', 1, 1, 1, 1, '2019-11-27 06:39:21', '2025-07-03 06:17:16'),
(135, 2, 'Fees Reminder', 'fees_reminder', 1, 0, 1, 0, '2019-10-25 00:39:49', '2025-07-03 06:17:16'),
(136, 5, 'Approve Leave', 'approve_leave', 1, 1, 1, 1, '2022-12-28 09:52:24', '2025-07-03 06:17:16'),
(137, 6, 'Exam Group', 'exam_group', 1, 1, 1, 1, '2019-10-25 01:02:34', '2025-07-03 06:17:16'),
(141, 6, 'Design Admit Card', 'design_admit_card', 1, 1, 1, 1, '2019-10-25 01:06:59', '2025-07-03 06:17:16'),
(142, 6, 'Print Admit Card', 'print_admit_card', 1, 0, 0, 0, '2019-11-23 23:57:51', '2025-07-03 06:17:16'),
(143, 6, 'Design Marksheet', 'design_marksheet', 1, 1, 1, 1, '2019-10-25 01:10:25', '2025-07-03 06:17:16'),
(144, 6, 'Print Marksheet', 'print_marksheet', 1, 0, 0, 0, '2019-10-25 01:11:02', '2025-07-03 06:17:16'),
(145, 7, 'Teachers Timetable', 'teachers_time_table', 1, 0, 0, 0, '2019-11-30 02:52:21', '2025-07-03 06:17:16'),
(146, 14, 'Student Report', 'student_report', 1, 0, 0, 0, '2019-10-25 01:27:00', '2025-07-03 06:17:16'),
(147, 14, 'Guardian Report', 'guardian_report', 1, 0, 0, 0, '2019-10-25 01:30:27', '2025-07-03 06:17:16'),
(148, 14, 'Student History', 'student_history', 1, 0, 0, 0, '2019-10-25 01:39:07', '2025-07-03 06:17:16'),
(149, 14, 'Student Login Credential Report', 'student_login_credential_report', 1, 0, 0, 0, '2019-10-25 01:39:07', '2025-07-03 06:17:16'),
(150, 14, 'Class Subject Report', 'class_subject_report', 1, 0, 0, 0, '2019-10-25 01:39:07', '2025-07-03 06:17:16'),
(151, 14, 'Admission Report', 'admission_report', 1, 0, 0, 0, '2019-10-25 01:39:07', '2025-07-03 06:17:16'),
(152, 14, 'Sibling Report', 'sibling_report', 1, 0, 0, 0, '2019-10-25 01:39:07', '2025-07-03 06:17:16'),
(153, 14, 'Homework Evaluation Report', 'homehork_evaluation_report', 1, 0, 0, 0, '2019-11-24 01:04:24', '2025-07-03 06:17:16'),
(154, 14, 'Student Profile', 'student_profile', 1, 0, 0, 0, '2019-10-25 01:39:07', '2025-07-03 06:17:16'),
(155, 14, 'Fees Statement', 'fees_statement', 1, 0, 0, 0, '2019-10-25 01:55:52', '2025-07-03 06:17:16'),
(156, 14, 'Balance Fees Report', 'balance_fees_report', 1, 0, 0, 0, '2019-10-25 01:55:52', '2025-07-03 06:17:16'),
(157, 14, 'Fees Collection Report', 'fees_collection_report', 1, 0, 0, 0, '2019-10-25 01:55:52', '2025-07-03 06:17:16'),
(158, 14, 'Online Fees Collection Report', 'online_fees_collection_report', 1, 0, 0, 0, '2019-10-25 01:55:52', '2025-07-03 06:17:16'),
(159, 14, 'Income Report', 'income_report', 1, 0, 0, 0, '2019-10-25 01:55:52', '2025-07-03 06:17:16'),
(160, 14, 'Expense Report', 'expense_report', 1, 0, 0, 0, '2019-10-25 01:55:52', '2025-07-03 06:17:16'),
(161, 14, 'PayRoll Report', 'payroll_report', 1, 0, 0, 0, '2019-10-31 00:23:22', '2025-07-03 06:17:16'),
(162, 14, 'Income Group Report', 'income_group_report', 1, 0, 0, 0, '2019-10-25 01:55:52', '2025-07-03 06:17:16'),
(163, 14, 'Expense Group Report', 'expense_group_report', 1, 0, 0, 0, '2019-10-25 01:55:52', '2025-07-03 06:17:16'),
(164, 14, 'Attendance Report', 'attendance_report', 1, 0, 0, 0, '2019-10-25 02:08:06', '2025-07-03 06:17:16'),
(165, 14, 'Staff Attendance Report', 'staff_attendance_report', 1, 0, 0, 0, '2019-10-25 02:08:06', '2025-07-03 06:17:16'),
(174, 14, 'Transport Report', 'transport_report', 1, 0, 0, 0, '2019-10-25 02:13:56', '2025-07-03 06:17:16'),
(175, 14, 'Hostel Report', 'hostel_report', 1, 0, 0, 0, '2019-11-27 06:51:53', '2025-07-03 06:17:16'),
(176, 14, 'Audit Trail Report', 'audit_trail_report', 1, 0, 0, 0, '2019-10-25 02:16:39', '2025-07-03 06:17:16'),
(177, 14, 'User Log', 'user_log', 1, 0, 0, 0, '2019-10-25 02:19:27', '2025-07-03 06:17:16'),
(178, 14, 'Book Issue Report', 'book_issue_report', 1, 0, 0, 0, '2019-10-25 02:29:04', '2025-07-03 06:17:16'),
(179, 14, 'Book Due Report', 'book_due_report', 1, 0, 0, 0, '2019-10-25 02:29:04', '2025-07-03 06:17:16'),
(180, 14, 'Book Inventory Report', 'book_inventory_report', 1, 0, 0, 0, '2019-10-25 02:29:04', '2025-07-03 06:17:16'),
(181, 14, 'Stock Report', 'stock_report', 1, 0, 0, 0, '2019-10-25 02:31:28', '2025-07-03 06:17:16'),
(182, 14, 'Add Item Report', 'add_item_report', 1, 0, 0, 0, '2019-10-25 02:31:28', '2025-07-03 06:17:16'),
(183, 14, 'Issue Item Report', 'issue_item_report', 1, 0, 0, 0, '2019-11-29 03:48:06', '2025-07-03 06:17:16'),
(185, 23, 'Online Examination', 'online_examination', 1, 1, 1, 1, '2019-11-23 23:54:50', '2025-07-03 06:17:16'),
(186, 23, 'Question Bank', 'question_bank', 1, 1, 1, 1, '2019-11-23 23:55:18', '2025-07-03 06:17:16'),
(187, 6, 'Exam Result', 'exam_result', 1, 0, 0, 0, '2019-11-23 23:58:50', '2025-07-03 06:17:16'),
(188, 7, 'Subject Group', 'subject_group', 1, 1, 1, 1, '2019-11-24 00:34:32', '2025-07-03 06:17:16'),
(189, 18, 'Teachers Rating', 'teachers_rating', 1, 0, 1, 1, '2019-11-24 03:12:54', '2025-07-03 06:17:16'),
(190, 22, 'Fees Awaiting Payment Widegts', 'fees_awaiting_payment_widegts', 1, 0, 0, 0, '2019-11-24 00:52:51', '2025-07-03 06:17:16'),
(191, 22, 'Converted Leads Widegts', 'conveted_leads_widegts', 1, 0, 0, 0, '2025-02-13 09:03:14', '2025-07-03 06:17:16'),
(192, 22, 'Fees Overview Widegts', 'fees_overview_widegts', 1, 0, 0, 0, '2019-11-24 00:57:41', '2025-07-03 06:17:16'),
(193, 22, 'Enquiry Overview Widegts', 'enquiry_overview_widegts', 1, 0, 0, 0, '2019-12-02 05:06:09', '2025-07-03 06:17:16'),
(194, 22, 'Library Overview Widegts', 'book_overview_widegts', 1, 0, 0, 0, '2019-12-01 01:13:04', '2025-07-03 06:17:16'),
(195, 22, 'Student Today Attendance Widegts', 'today_attendance_widegts', 1, 0, 0, 0, '2019-12-03 04:57:45', '2025-07-03 06:17:16'),
(196, 6, 'Marks Import', 'marks_import', 1, 0, 0, 0, '2019-11-24 01:02:11', '2025-07-03 06:17:16'),
(197, 14, 'Student Attendance Type Report', 'student_attendance_type_report', 1, 0, 0, 0, '2019-11-24 01:06:32', '2025-07-03 06:17:16'),
(198, 14, 'Exam Marks Report', 'exam_marks_report', 1, 0, 0, 0, '2019-11-24 01:11:15', '2025-07-03 06:17:16'),
(200, 14, 'Online Exam Wise Report', 'online_exam_wise_report', 1, 0, 0, 0, '2019-11-24 01:18:14', '2025-07-03 06:17:16'),
(201, 14, 'Online Exams Report', 'online_exams_report', 1, 0, 0, 0, '2019-11-29 02:48:05', '2025-07-03 06:17:16'),
(202, 14, 'Online Exams Attempt Report', 'online_exams_attempt_report', 1, 0, 0, 0, '2019-11-29 02:46:24', '2025-07-03 06:17:16'),
(203, 14, 'Online Exams Rank Report', 'online_exams_rank_report', 1, 0, 0, 0, '2019-11-24 01:22:25', '2025-07-03 06:17:16'),
(204, 14, 'Staff Report', 'staff_report', 1, 0, 0, 0, '2019-11-24 01:25:27', '2025-07-03 06:17:16'),
(205, 6, 'Exam', 'exam', 1, 1, 1, 1, '2019-11-24 04:55:48', '2025-07-03 06:17:16'),
(207, 6, 'Exam Publish', 'exam_publish', 1, 0, 0, 0, '2019-11-24 05:15:04', '2025-07-03 06:17:16'),
(208, 6, 'Link Exam', 'link_exam', 1, 0, 1, 0, '2019-11-24 05:15:04', '2025-07-03 06:17:16'),
(210, 6, 'Assign / View student', 'exam_assign_view_student', 1, 0, 1, 0, '2019-11-24 05:15:04', '2025-07-03 06:17:16'),
(211, 6, 'Exam Subject', 'exam_subject', 1, 0, 1, 0, '2019-11-24 05:15:04', '2025-07-03 06:17:16'),
(212, 6, 'Exam Marks', 'exam_marks', 1, 0, 1, 0, '2019-11-24 05:15:04', '2025-07-03 06:17:16'),
(213, 15, 'Language Switcher', 'language_switcher', 1, 0, 0, 0, '2019-11-24 05:17:11', '2025-07-03 06:17:16'),
(214, 23, 'Add Questions in Exam ', 'add_questions_in_exam', 1, 0, 1, 0, '2019-11-28 01:38:57', '2025-07-03 06:17:16'),
(215, 15, 'Custom Fields', 'custom_fields', 1, 0, 0, 0, '2019-11-29 04:08:35', '2025-07-03 06:17:16'),
(216, 15, 'System Fields', 'system_fields', 1, 0, 0, 0, '2019-11-25 00:15:01', '2025-07-03 06:17:16'),
(217, 13, 'SMS', 'sms', 1, 0, 0, 0, '2018-06-22 10:40:54', '2025-07-03 06:17:16'),
(219, 14, 'Student / Period Attendance Report', 'student_period_attendance_report', 1, 0, 0, 0, '2019-11-29 02:19:31', '2025-07-03 06:17:16'),
(220, 14, 'Biometric Attendance Log', 'biometric_attendance_log', 1, 0, 0, 0, '2019-11-27 05:59:16', '2025-07-03 06:17:16'),
(221, 14, 'Book Issue Return Report', 'book_issue_return_report', 1, 0, 0, 0, '2019-11-27 06:30:23', '2025-07-03 06:17:16'),
(222, 23, 'Assign / View Student', 'online_assign_view_student', 1, 0, 1, 0, '2019-11-28 04:20:22', '2025-07-03 06:17:16'),
(223, 14, 'Rank Report', 'rank_report', 1, 0, 0, 0, '2019-11-29 02:30:21', '2025-07-03 06:17:16'),
(224, 25, 'Chat', 'chat', 1, 0, 0, 0, '2019-11-29 04:10:28', '2025-07-03 06:17:16'),
(226, 22, 'Income Donut Graph', 'income_donut_graph', 1, 0, 0, 0, '2019-11-29 05:00:33', '2025-07-03 06:17:16'),
(227, 22, 'Expense Donut Graph', 'expense_donut_graph', 1, 0, 0, 0, '2019-11-29 05:01:10', '2025-07-03 06:17:16'),
(228, 9, 'Import Book', 'import_book', 1, 0, 0, 0, '2019-11-29 06:21:01', '2025-07-03 06:17:16'),
(229, 22, 'Staff Present Today Widegts', 'staff_present_today_widegts', 1, 0, 0, 0, '2019-11-29 06:48:00', '2025-07-03 06:17:16'),
(230, 22, 'Student Present Today Widegts', 'student_present_today_widegts', 1, 0, 0, 0, '2019-11-29 06:47:42', '2025-07-03 06:17:16'),
(231, 26, 'Multi Class Student', 'multi_class_student', 1, 1, 1, 1, '2020-10-05 08:56:27', '2025-07-03 06:17:16'),
(232, 27, 'Online Admission', 'online_admission', 1, 0, 1, 1, '2019-12-02 06:11:10', '2025-07-03 06:17:16'),
(233, 15, 'Print Header Footer', 'print_header_footer', 1, 0, 0, 0, '2020-02-12 02:02:02', '2025-07-03 06:17:16'),
(234, 28, 'Manage Alumni', 'manage_alumni', 1, 1, 1, 1, '2020-06-02 03:15:46', '2025-07-03 06:17:16'),
(235, 28, 'Events', 'events', 1, 1, 1, 1, '2020-05-28 21:48:52', '2025-07-03 06:17:16'),
(236, 29, 'Manage Lesson Plan', 'manage_lesson_plan', 1, 1, 1, 0, '2020-05-28 22:17:37', '2025-07-03 06:17:16'),
(237, 29, 'Manage Syllabus Status', 'manage_syllabus_status', 1, 0, 1, 0, '2020-05-28 22:20:11', '2025-07-03 06:17:16'),
(238, 29, 'Lesson', 'lesson', 1, 1, 1, 1, '2020-05-28 22:20:11', '2025-07-03 06:17:16'),
(239, 29, 'Topic', 'topic', 1, 1, 1, 1, '2020-05-28 22:20:11', '2025-07-03 06:17:16'),
(240, 14, 'Syllabus Status Report', 'syllabus_status_report', 1, 0, 0, 0, '2020-05-28 23:17:54', '2025-07-03 06:17:16'),
(241, 14, 'Teacher Syllabus Status Report', 'teacher_syllabus_status_report', 1, 0, 0, 0, '2020-05-28 23:17:54', '2025-07-03 06:17:16'),
(242, 14, 'Alumni Report', 'alumni_report', 1, 0, 0, 0, '2020-06-07 23:59:54', '2025-07-03 06:17:16'),
(243, 15, 'Student Profile Update', 'student_profile_update', 1, 0, 0, 0, '2020-08-21 05:36:33', '2025-07-03 06:17:16'),
(244, 14, 'Student Gender Ratio Report', 'student_gender_ratio_report', 1, 0, 0, 0, '2020-08-22 12:37:51', '2025-07-03 06:17:16'),
(245, 14, 'Student Teacher Ratio Report', 'student_teacher_ratio_report', 1, 0, 0, 0, '2020-08-22 12:42:27', '2025-07-03 06:17:16'),
(246, 14, 'Daily Attendance Report', 'daily_attendance_report', 1, 0, 0, 0, '2020-08-22 12:43:16', '2025-07-03 06:17:16'),
(247, 23, 'Import Question', 'import_question', 1, 0, 0, 0, '2019-11-23 18:25:18', '2025-07-03 06:17:16'),
(248, 20, 'Staff ID Card', 'staff_id_card', 1, 1, 1, 1, '2018-07-06 10:41:28', '2025-07-03 06:17:16'),
(249, 20, 'Generate Staff ID Card', 'generate_staff_id_card', 1, 0, 0, 0, '2018-07-06 10:41:49', '2025-07-03 06:17:16'),
(250, 19, 'Daily Assignment', 'daily_assignment', 1, 0, 0, 0, '2022-03-02 07:28:23', '2025-07-03 06:17:16'),
(251, 6, 'Marks Division', 'marks_division', 1, 1, 1, 1, '2022-07-01 15:24:16', '2025-07-03 06:17:16'),
(252, 13, 'Schedule Email SMS Log', 'schedule_email_sms_log', 1, 0, 1, 0, '2022-07-09 11:25:16', '2025-07-03 06:17:16'),
(253, 13, 'Login Credentials Send', 'login_credentials_send', 1, 0, 0, 0, '2022-07-01 15:46:10', '2025-07-03 06:17:16'),
(254, 13, 'Email Template', 'email_template', 1, 1, 1, 1, '2022-07-01 15:46:10', '2025-07-03 06:17:16'),
(255, 13, 'SMS Template', 'sms_template', 1, 1, 1, 1, '2022-07-01 15:46:10', '2025-07-03 06:17:16'),
(256, 14, 'Balance Fees Report With Remark', 'balance_fees_report_with_remark', 1, 0, 0, 0, '2019-10-25 01:55:52', '2025-07-03 06:17:16'),
(257, 14, 'Balance Fees Statement', 'balance_fees_statement', 1, 0, 0, 0, '2019-10-25 01:55:52', '2025-07-03 06:17:16'),
(258, 14, 'Daily Collection Report', 'daily_collection_report', 1, 0, 0, 0, '2019-10-25 01:55:52', '2025-07-03 06:17:16'),
(259, 11, 'Fees Master', 'transport_fees_master', 1, 0, 1, 0, '2022-07-05 09:29:19', '2025-07-03 06:17:16'),
(260, 11, 'Pickup Point', 'pickup_point', 1, 1, 1, 1, '2022-07-04 09:50:08', '2025-07-03 06:17:16'),
(261, 11, 'Route Pickup Point', 'route_pickup_point', 1, 1, 1, 1, '2022-07-04 09:50:08', '2025-07-03 06:17:16'),
(262, 11, 'Student Transport Fees', 'student_transport_fees', 1, 1, 1, 0, '2022-07-05 10:15:55', '2025-07-03 06:17:16'),
(263, 29, 'Comments', 'lesson_plan_comments', 1, 1, 0, 1, '2020-05-28 22:20:11', '2025-07-03 06:17:16'),
(264, 15, 'Sidebar Menu', 'sidebar_menu', 1, 0, 0, 0, '2022-07-11 12:01:17', '2025-07-03 06:17:16'),
(265, 15, 'Currency', 'currency', 1, 0, 0, 0, '2020-08-21 05:36:33', '2025-07-03 06:17:16'),
(266, 6, 'Exam Schedule', 'exam_schedule', 1, 0, 0, 0, '2019-11-23 23:58:50', '2025-07-03 06:17:16'),
(267, 6, 'Generate Rank', 'generate_rank', 1, 0, 0, 0, '2019-11-24 05:15:04', '2025-07-03 06:17:16'),
(268, 8, 'Content Type', 'content_type', 1, 1, 1, 1, '2022-07-08 05:18:54', '2025-07-03 06:17:16'),
(269, 8, 'Content Share List', 'content_share_list', 1, 0, 0, 1, '2022-07-08 05:18:58', '2025-07-03 06:17:16'),
(270, 8, 'Video Tutorial', 'video_tutorial', 1, 1, 1, 1, '2022-07-08 05:19:01', '2025-07-03 06:17:16'),
(271, 15, 'Currency Switcher', 'currency_switcher', 1, 0, 0, 0, '2019-11-24 05:17:11', '2025-07-03 06:17:16'),
(272, 2, 'Offline Bank Payments', 'offline_bank_payments', 1, 0, 0, 0, '2018-06-27 00:18:15', '2025-07-03 06:17:16'),
(273, 29, 'Copy Old Lessons', 'copy_old_lesson', 1, 0, 0, 0, '2020-05-28 22:20:11', '2025-07-03 06:17:16'),
(274, 30, 'Annual Calendar', 'annual_calendar', 1, 1, 1, 1, '2020-05-28 22:20:11', '2025-07-03 06:17:16'),
(275, 30, 'Holiday Type', 'holiday_type', 1, 1, 1, 1, '2024-10-14 12:31:14', '2025-07-03 06:17:16'),
(276, 14, 'Online Admission Report', 'online_admission_report', 1, 0, 0, 0, '2020-08-22 12:42:27', '2025-07-03 06:17:16'),
(277, 31, 'Download CV', 'download_cv', 1, 0, 0, 0, '2024-12-10 11:06:30', '2025-07-03 06:17:16'),
(278, 31, 'Build CV', 'build_cv', 1, 1, 0, 1, '2024-12-13 07:05:10', '2025-07-03 06:17:16'),
(279, 31, 'Setting', 'download_cv_setting', 1, 0, 0, 0, '2024-12-10 11:06:30', '2025-07-03 06:17:16'),
(280, 22, 'Student Head Count Widget', 'student_head_count_widget', 1, 0, 0, 0, '2018-07-03 07:13:35', '2025-07-03 06:17:16'),
(281, 22, 'Staff Approved Leave Widegts', 'staff_approved_leave_widegts', 1, 0, 0, 0, '2018-07-03 07:13:35', '2025-07-03 06:17:16'),
(282, 22, 'Student Approved Leave Widegts', 'student_approved_leave_widegts', 1, 0, 0, 0, '2018-07-03 07:13:35', '2025-07-03 06:17:16');

-- --------------------------------------------------------

--
-- Table structure for table `permission_group`
--

CREATE TABLE `permission_group` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `short_code` varchar(100) NOT NULL,
  `is_active` int(11) DEFAULT 0,
  `system` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `permission_group`
--

INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `created_at`, `updated_at`) VALUES
(1, 'Student Information', 'student_information', 1, 1, '2019-03-15 09:30:22', '2025-07-03 06:17:16'),
(2, 'Fees Collection', 'fees_collection', 1, 0, '2020-06-11 00:51:35', '2025-07-03 06:17:16'),
(3, 'Income', 'income', 1, 0, '2020-06-01 01:57:39', '2025-07-03 06:17:16'),
(4, 'Expense', 'expense', 1, 0, '2019-03-15 09:06:22', '2025-07-03 06:17:16'),
(5, 'Student Attendance', 'student_attendance', 1, 0, '2018-07-02 07:48:08', '2025-07-03 06:17:16'),
(6, 'Examination', 'examination', 1, 0, '2018-07-11 02:49:08', '2025-07-03 06:17:16'),
(7, 'Academics', 'academics', 1, 1, '2018-07-02 07:25:43', '2025-07-03 06:17:16'),
(8, 'Download Center', 'download_center', 1, 0, '2018-07-02 07:49:29', '2025-07-03 06:17:16'),
(9, 'Library', 'library', 1, 0, '2018-06-28 11:13:14', '2025-07-03 06:17:16'),
(10, 'Inventory', 'inventory', 1, 0, '2018-06-27 00:48:58', '2025-07-03 06:17:16'),
(11, 'Transport', 'transport', 1, 0, '2018-06-27 07:51:26', '2025-07-03 06:17:16'),
(12, 'Hostel', 'hostel', 1, 0, '2018-07-02 07:49:32', '2025-07-03 06:17:16'),
(13, 'Communicate', 'communicate', 1, 0, '2018-07-02 07:50:00', '2025-07-03 06:17:16'),
(14, 'Reports', 'reports', 1, 1, '2018-06-27 03:40:22', '2025-07-03 06:17:16'),
(15, 'System Settings', 'system_settings', 1, 1, '2018-06-27 03:40:28', '2025-07-03 06:17:16'),
(16, 'Front CMS', 'front_cms', 1, 0, '2018-07-10 05:16:54', '2025-07-03 06:17:16'),
(17, 'Front Office', 'front_office', 1, 0, '2018-06-27 03:45:30', '2025-07-03 06:17:16'),
(18, 'Human Resource', 'human_resource', 1, 1, '2018-06-27 03:41:02', '2025-07-03 06:17:16'),
(19, 'Homework', 'homework', 1, 0, '2018-06-27 00:49:38', '2025-07-03 06:17:16'),
(20, 'Certificate', 'certificate', 1, 0, '2018-06-27 07:51:29', '2025-07-03 06:17:16'),
(21, 'Calendar To Do List', 'calendar_to_do_list', 1, 0, '2019-03-15 09:06:25', '2025-07-03 06:17:16'),
(22, 'Dashboard and Widgets', 'dashboard_and_widgets', 1, 1, '2018-06-27 03:41:17', '2025-07-03 06:17:16'),
(23, 'Online Examination', 'online_examination', 1, 0, '2020-06-01 02:25:36', '2025-07-03 06:17:16'),
(25, 'Chat', 'chat', 1, 0, '2019-11-23 23:54:04', '2025-07-03 06:17:16'),
(26, 'Multi Class', 'multi_class', 0, 0, '2019-11-27 12:14:14', '2025-07-03 10:37:38'),
(27, 'Online Admission', 'online_admission', 0, 0, '2019-11-27 02:42:13', '2025-07-03 10:37:23'),
(28, 'Alumni', 'alumni', 1, 0, '2020-05-29 00:26:38', '2025-07-03 06:17:16'),
(29, 'Lesson Plan', 'lesson_plan', 1, 0, '2020-06-07 05:38:30', '2025-07-03 06:17:16'),
(30, 'Annual Calendar', 'annual_calendar', 1, 0, '2024-10-22 10:45:56', '2025-07-03 06:17:16'),
(31, 'Student CV', 'student_cv', 1, 0, '2024-12-13 11:54:57', '2025-07-03 06:17:16');

-- --------------------------------------------------------

--
-- Table structure for table `permission_student`
--

CREATE TABLE `permission_student` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `short_code` varchar(100) NOT NULL,
  `system` int(11) NOT NULL,
  `student` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `permission_student`
--

INSERT INTO `permission_student` (`id`, `name`, `short_code`, `system`, `student`, `parent`, `group_id`, `created_at`, `updated_at`) VALUES
(1, 'Fees', 'fees', 0, 1, 1, 2, '2020-06-11 00:51:35', '2025-07-03 06:17:16'),
(2, 'Class Timetable', 'class_timetable', 1, 1, 1, 7, '2020-05-30 19:57:50', '2025-07-03 06:17:16'),
(3, 'Homework', 'homework', 0, 1, 1, 19, '2020-06-01 02:49:14', '2025-07-03 06:17:16'),
(4, 'Download Center', 'download_center', 0, 1, 1, 8, '2020-06-01 02:52:49', '2025-07-03 06:17:16'),
(5, 'Attendance', 'attendance', 0, 1, 1, 5, '2020-06-01 02:57:18', '2025-07-03 06:17:16'),
(7, 'Examinations', 'examinations', 0, 1, 1, 6, '2020-06-01 02:59:50', '2025-07-03 06:17:16'),
(8, 'Notice Board', 'notice_board', 0, 1, 1, 13, '2020-06-01 03:00:35', '2025-07-03 06:17:16'),
(11, 'Library', 'library', 0, 1, 1, 9, '2020-06-01 03:02:37', '2025-07-03 06:17:16'),
(12, 'Transport Routes', 'transport_routes', 0, 1, 1, 11, '2020-06-01 03:51:30', '2025-07-03 06:17:16'),
(13, 'Hostel Rooms', 'hostel_rooms', 0, 1, 1, 12, '2020-06-01 03:52:27', '2025-07-03 06:17:16'),
(14, 'Calendar To Do List', 'calendar_to_do_list', 0, 1, 1, 21, '2020-06-01 03:53:18', '2025-07-03 06:17:16'),
(15, 'Online Examination', 'online_examination', 0, 1, 1, 23, '2020-06-11 05:20:01', '2025-07-03 06:17:16'),
(16, 'Teachers Rating', 'teachers_rating', 0, 1, 1, NULL, '2022-12-28 09:52:28', '2025-07-03 06:17:16'),
(17, 'Chat', 'chat', 0, 1, 1, 25, '2020-06-01 04:53:06', '2025-07-03 06:17:16'),
(18, 'Multi Class', 'multi_class', 1, 0, 0, 26, '2020-05-30 19:56:52', '2025-07-03 10:37:38'),
(19, 'Lesson Plan', 'lesson_plan', 0, 1, 1, 29, '2020-06-07 05:38:30', '2025-07-03 06:17:16'),
(20, 'Syllabus Status', 'syllabus_status', 0, 1, 1, 29, '2020-06-07 05:38:30', '2025-07-03 06:17:16'),
(23, 'Apply Leave', 'apply_leave', 0, 1, 1, NULL, '2022-12-28 09:52:28', '2025-07-03 06:17:16'),
(24, 'Visitor Book', 'visitor_book', 0, 1, 1, NULL, '2022-10-10 11:45:18', '2025-07-03 06:17:16'),
(25, 'Student Timeline', 'student_timeline', 0, 1, 1, NULL, '2022-10-11 04:50:29', '2025-07-03 06:17:16');

-- --------------------------------------------------------

--
-- Table structure for table `pickup_point`
--

CREATE TABLE `pickup_point` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `print_headerfooter`
--

CREATE TABLE `print_headerfooter` (
  `id` int(11) NOT NULL,
  `print_type` varchar(255) NOT NULL,
  `header_image` varchar(255) NOT NULL,
  `footer_content` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `entry_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `print_headerfooter`
--

INSERT INTO `print_headerfooter` (`id`, `print_type`, `header_image`, `footer_content`, `created_by`, `entry_date`, `created_at`, `updated_at`) VALUES
(1, 'staff_payslip', '1752643123-303338949687736332cc68!latter head sunrise college_pay.png', 'This payslip is computer generated hence no signature is required.', 1, '2025-07-16 05:18:43', '2022-12-28 09:52:24', '2025-07-16 05:18:43'),
(2, 'student_receipt', '1752643061-1734911390687735f5f1e72!latter head sunrise college_Fee.png', '<p><b><small>a) Fees once deposited will not be refunded under any circumstances.</small></b></p><p><b><small>b) Original receipt should be submitted for refund of caution money.&nbsp;</small></b></p><p><b><br></b></p><p><b>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Authorized signatory</b></p><p><b><small></small><br></b></p>', 1, '2025-07-16 09:30:35', '2022-12-28 09:52:24', '2025-07-16 09:30:35'),
(3, 'online_admission_receipt', '1752643115-12966122666877362bc7c29!latter head sunrise college_online.png', 'This receipt is for online admission  computer ffffffff generated hence no signature is required.', 1, '2025-07-16 05:18:35', '2022-12-28 09:52:24', '2025-07-16 05:18:35'),
(4, 'online_exam', '1752643107-54263791068773623859e3!latter head sunrise college_online ex.png', 'This receipt is for online exam computer  generated hence no signature is required.', 1, '2025-07-16 05:18:27', '2022-09-08 17:28:34', '2025-07-16 05:18:27'),
(5, 'general_purpose', '1752643099-4200078166877361b71882!latter head sunrise college_grnr.png', '<h1>\r\n\r\n</h1><p>footer text here ....</p>', 1, '2025-07-16 05:18:19', '2022-09-08 17:28:34', '2025-07-16 05:18:19');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `question_type` varchar(100) NOT NULL,
  `level` varchar(10) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) DEFAULT NULL,
  `class_section_id` int(11) DEFAULT NULL,
  `question` text DEFAULT NULL,
  `opt_a` text DEFAULT NULL,
  `opt_b` text DEFAULT NULL,
  `opt_c` text DEFAULT NULL,
  `opt_d` text DEFAULT NULL,
  `opt_e` text DEFAULT NULL,
  `correct` text DEFAULT NULL,
  `descriptive_word_limit` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `read_notification`
--

CREATE TABLE `read_notification` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `notification_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reference`
--

CREATE TABLE `reference` (
  `id` int(11) NOT NULL,
  `reference` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resume_additional_fields_settings`
--

CREATE TABLE `resume_additional_fields_settings` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `resume_additional_fields_settings`
--

INSERT INTO `resume_additional_fields_settings` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'work_experience', 1, '2024-12-06 06:17:04', '2025-07-03 06:17:16'),
(2, 'education_qalification', 1, '2024-12-06 06:17:04', '2025-07-03 06:17:16'),
(3, 'technical_skills', 1, '2024-12-06 06:17:04', '2025-07-03 06:17:16'),
(4, 'reference', 1, '2024-12-06 06:17:04', '2025-07-03 06:17:16'),
(5, 'other_details', 1, '2024-12-06 06:17:04', '2025-07-03 06:17:16');

-- --------------------------------------------------------

--
-- Table structure for table `resume_settings_fields`
--

CREATE TABLE `resume_settings_fields` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `resume_settings_fields`
--

INSERT INTO `resume_settings_fields` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'middlename', 1, '2025-02-14 06:40:33', '2025-02-14 06:40:33'),
(2, 'lastname', 1, '2025-02-14 06:40:34', '2025-02-14 06:40:34'),
(3, 'gender', 1, '2025-02-14 06:40:35', '2025-02-14 06:40:35'),
(4, 'dob', 1, '2025-02-14 06:40:36', '2025-02-14 06:40:36'),
(5, 'category', 1, '2025-02-14 06:40:37', '2025-02-14 06:40:37'),
(6, 'religion', 1, '2025-02-14 06:40:38', '2025-02-14 06:40:38'),
(7, 'cast', 1, '2025-02-14 06:40:40', '2025-02-14 06:40:40'),
(8, 'mobile_no', 1, '2025-02-14 06:40:41', '2025-02-14 06:40:41'),
(9, 'student_email', 1, '2025-02-14 06:40:41', '2025-02-14 06:40:41'),
(10, 'student_photo', 1, '2025-02-14 06:40:42', '2025-02-14 06:40:42'),
(11, 'is_blood_group', 1, '2025-02-14 06:40:43', '2025-02-14 06:40:43'),
(12, 'height', 1, '2025-02-14 06:40:44', '2025-02-14 06:40:44'),
(13, 'weight', 1, '2025-02-14 06:40:46', '2025-02-14 06:40:46'),
(14, 'father_name', 1, '2025-02-14 06:40:47', '2025-02-14 06:40:47'),
(15, 'father_phone', 1, '2025-02-14 06:40:48', '2025-02-14 06:40:48'),
(16, 'father_occupation', 1, '2025-02-14 06:40:49', '2025-02-14 06:40:49'),
(17, 'father_pic', 1, '2025-02-14 06:40:49', '2025-02-14 06:40:49'),
(18, 'mother_name', 1, '2025-02-14 06:40:50', '2025-02-14 06:40:50'),
(19, 'mother_phone', 1, '2025-02-14 06:40:51', '2025-02-14 06:40:51'),
(20, 'mother_occupation', 1, '2025-02-14 06:40:52', '2025-02-14 06:40:52'),
(21, 'mother_pic', 1, '2025-02-14 06:40:52', '2025-02-14 06:40:52'),
(22, 'if_guardian_is', 1, '2025-02-14 06:40:53', '2025-02-14 06:42:17'),
(23, 'guardian_name', 1, '2025-02-14 06:41:31', '2025-02-14 06:42:17'),
(24, 'guardian_relation', 1, '2025-02-14 06:41:31', '2025-02-14 06:42:17'),
(25, 'guardian_email', 1, '2025-02-14 06:41:32', '2025-02-14 06:42:17'),
(26, 'guardian_photo', 1, '2025-02-14 06:41:33', '2025-02-14 06:42:17'),
(27, 'guardian_phone', 1, '2025-02-14 06:41:34', '2025-02-14 06:42:17'),
(28, 'guardian_occupation', 1, '2025-02-14 06:41:34', '2025-02-14 06:42:17'),
(29, 'guardian_address', 1, '2025-02-14 06:41:35', '2025-02-14 06:42:17'),
(30, 'current_address', 1, '2025-02-14 06:41:36', '2025-02-14 06:41:36'),
(31, 'permanent_address', 1, '2025-02-14 06:41:37', '2025-02-14 06:41:37'),
(32, 'national_identification_no', 1, '2025-02-14 06:41:37', '2025-02-14 06:41:37'),
(33, 'local_identification_no', 1, '2025-02-14 06:41:38', '2025-02-14 06:41:38'),
(34, 'personal_details', 1, '2025-02-14 06:41:39', '2025-02-14 06:41:39'),
(35, 'parent_guardian_detail', 1, '2025-02-14 06:41:41', '2025-02-14 06:41:41');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(150) DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `is_system` int(11) NOT NULL DEFAULT 0,
  `is_superadmin` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `is_active`, `is_system`, `is_superadmin`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, 0, 1, 0, '2018-06-30 15:39:11', '0000-00-00 00:00:00'),
(2, 'Teacher', NULL, 0, 1, 0, '2018-06-30 15:39:14', '0000-00-00 00:00:00'),
(3, 'Accountant', NULL, 0, 1, 0, '2018-06-30 15:39:17', '0000-00-00 00:00:00'),
(4, 'Librarian', NULL, 0, 1, 0, '2018-06-30 15:39:21', '0000-00-00 00:00:00'),
(6, 'Receptionist', NULL, 0, 1, 0, '2018-07-02 05:39:03', '0000-00-00 00:00:00'),
(7, 'Super Admin', NULL, 0, 1, 1, '2018-07-11 14:11:29', '0000-00-00 00:00:00'),
(8, 'FEES MANAGEMENT*', NULL, 0, 0, 0, '2025-07-18 05:19:13', '2025-07-18 05:19:13'),
(9, 'FRONT OFFICE MANAGEMENT', NULL, 0, 0, 0, '2025-07-18 05:19:28', '2025-07-18 05:19:28');

-- --------------------------------------------------------

--
-- Table structure for table `roles_permissions`
--

CREATE TABLE `roles_permissions` (
  `id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `perm_cat_id` int(11) DEFAULT NULL,
  `can_view` int(11) DEFAULT NULL,
  `can_add` int(11) DEFAULT NULL,
  `can_edit` int(11) DEFAULT NULL,
  `can_delete` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `roles_permissions`
--

INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`, `updated_at`) VALUES
(11, 1, 78, 1, 1, 1, 1, '2018-07-03 00:49:43', '2025-07-03 06:17:16'),
(23, 1, 12, 1, 1, 1, 1, '2018-07-06 09:45:38', '2025-07-03 06:17:16'),
(24, 1, 13, 1, 1, 1, 1, '2018-07-06 09:48:28', '2025-07-03 06:17:16'),
(26, 1, 15, 1, 1, 1, 0, '2019-11-27 23:47:28', '2025-07-03 06:17:16'),
(31, 1, 21, 1, 0, 1, 0, '2019-11-26 04:51:15', '2025-07-03 06:17:16'),
(34, 1, 24, 1, 1, 1, 1, '2019-11-28 06:35:20', '2025-07-03 06:17:16'),
(43, 1, 32, 1, 1, 1, 1, '2018-07-06 10:22:05', '2025-07-03 06:17:16'),
(44, 1, 33, 1, 1, 1, 1, '2018-07-06 10:22:29', '2025-07-03 06:17:16'),
(45, 1, 34, 1, 1, 1, 1, '2018-07-06 10:23:59', '2025-07-03 06:17:16'),
(46, 1, 35, 1, 1, 1, 1, '2018-07-06 10:24:34', '2025-07-03 06:17:16'),
(47, 1, 104, 1, 1, 1, 1, '2018-07-06 10:23:08', '2025-07-03 06:17:16'),
(48, 1, 37, 1, 1, 1, 1, '2018-07-06 10:25:30', '2025-07-03 06:17:16'),
(49, 1, 38, 1, 1, 1, 1, '2018-07-09 05:15:27', '2025-07-03 06:17:16'),
(61, 1, 55, 1, 1, 1, 1, '2018-07-02 09:24:16', '2025-07-03 06:17:16'),
(67, 1, 61, 1, 1, 0, 1, '2018-07-09 05:59:19', '2025-07-03 06:17:16'),
(68, 1, 62, 1, 1, 0, 1, '2018-07-09 05:59:19', '2025-07-03 06:17:16'),
(69, 1, 63, 1, 1, 0, 1, '2018-07-09 03:51:38', '2025-07-03 06:17:16'),
(70, 1, 64, 1, 1, 1, 1, '2018-07-09 03:02:19', '2025-07-03 06:17:16'),
(71, 1, 65, 1, 1, 1, 1, '2018-07-09 03:11:21', '2025-07-03 06:17:16'),
(72, 1, 66, 1, 1, 1, 1, '2018-07-09 03:13:09', '2025-07-03 06:17:16'),
(73, 1, 67, 1, 1, 1, 1, '2018-07-09 03:14:47', '2025-07-03 06:17:16'),
(74, 1, 79, 1, 1, 0, 1, '2019-11-30 01:32:51', '2025-07-03 06:17:16'),
(75, 1, 80, 1, 1, 1, 1, '2018-07-06 09:41:23', '2025-07-03 06:17:16'),
(76, 1, 81, 1, 1, 1, 1, '2018-07-06 09:41:23', '2025-07-03 06:17:16'),
(78, 1, 83, 1, 1, 1, 1, '2018-07-06 09:41:23', '2025-07-03 06:17:16'),
(79, 1, 84, 1, 1, 1, 1, '2018-07-06 09:41:23', '2025-07-03 06:17:16'),
(80, 1, 85, 1, 1, 1, 1, '2018-07-12 00:16:00', '2025-07-03 06:17:16'),
(94, 1, 82, 1, 1, 1, 1, '2018-07-06 09:41:23', '2025-07-03 06:17:16'),
(120, 1, 39, 1, 1, 1, 1, '2018-07-06 10:26:28', '2025-07-03 06:17:16'),
(156, 1, 9, 1, 1, 1, 1, '2019-11-27 23:45:46', '2025-07-03 06:17:16'),
(157, 1, 10, 1, 1, 1, 1, '2019-11-27 23:45:46', '2025-07-03 06:17:16'),
(159, 1, 40, 1, 1, 1, 1, '2019-11-30 00:49:39', '2025-07-03 06:17:16'),
(160, 1, 41, 1, 1, 1, 1, '2019-12-02 05:43:41', '2025-07-03 06:17:16'),
(161, 1, 42, 1, 1, 1, 1, '2019-11-30 00:49:39', '2025-07-03 06:17:16'),
(169, 1, 27, 1, 1, 0, 1, '2019-11-29 06:15:37', '2025-07-03 06:17:16'),
(178, 1, 54, 1, 0, 1, 0, '2018-07-05 09:09:22', '2025-07-03 06:17:16'),
(179, 1, 56, 1, 0, 1, 0, '2019-11-30 00:49:54', '2025-07-03 06:17:16'),
(180, 1, 57, 1, 0, 1, 0, '2019-11-30 01:32:51', '2025-07-03 06:17:16'),
(181, 1, 58, 1, 0, 1, 0, '2019-11-30 01:32:51', '2025-07-03 06:17:16'),
(182, 1, 59, 1, 0, 1, 0, '2019-11-30 01:32:51', '2025-07-03 06:17:16'),
(183, 1, 60, 1, 0, 1, 0, '2019-11-30 00:59:57', '2025-07-03 06:17:16'),
(201, 1, 14, 1, 0, 0, 0, '2018-07-02 11:22:03', '2025-07-03 06:17:16'),
(204, 1, 26, 1, 0, 0, 0, '2018-07-02 11:32:05', '2025-07-03 06:17:16'),
(206, 1, 29, 1, 0, 0, 0, '2018-07-02 11:43:54', '2025-07-03 06:17:16'),
(207, 1, 30, 1, 0, 0, 0, '2018-07-02 11:43:54', '2025-07-03 06:17:16'),
(208, 1, 31, 1, 1, 1, 1, '2019-11-30 01:32:51', '2025-07-03 06:17:16'),
(222, 1, 1, 1, 1, 1, 1, '2019-11-27 22:55:06', '2025-07-03 06:17:16'),
(307, 1, 126, 1, 0, 0, 0, '2018-07-03 09:26:13', '2025-07-03 06:17:16'),
(315, 1, 123, 1, 0, 0, 0, '2018-07-03 10:27:03', '2025-07-03 06:17:16'),
(369, 1, 102, 1, 1, 1, 1, '2019-12-02 05:02:15', '2025-07-03 06:17:16'),
(435, 1, 96, 1, 1, 1, 1, '2018-07-09 01:03:54', '2025-07-03 06:17:16'),
(461, 1, 97, 1, 0, 0, 0, '2018-07-09 01:00:16', '2025-07-03 06:17:16'),
(464, 1, 86, 1, 1, 1, 1, '2019-11-28 06:39:19', '2025-07-03 06:17:16'),
(474, 1, 130, 1, 1, 0, 1, '2018-07-09 10:56:36', '2025-07-03 06:17:16'),
(476, 1, 131, 1, 0, 0, 0, '2018-07-09 04:53:32', '2025-07-03 06:17:16'),
(557, 6, 82, 1, 1, 1, 1, '2019-12-01 01:48:28', '2025-07-03 06:17:16'),
(558, 6, 83, 1, 1, 1, 1, '2019-12-01 01:49:08', '2025-07-03 06:17:16'),
(559, 6, 84, 1, 1, 1, 1, '2019-12-01 01:49:59', '2025-07-03 06:17:16'),
(575, 6, 44, 1, 0, 0, 0, '2018-07-10 07:35:33', '2025-07-03 06:17:16'),
(576, 6, 46, 1, 0, 0, 0, '2018-07-10 07:35:33', '2025-07-03 06:17:16'),
(578, 6, 102, 1, 1, 1, 1, '2019-12-01 01:52:27', '2025-07-03 06:17:16'),
(625, 1, 28, 1, 1, 1, 1, '2019-11-29 06:19:18', '2025-07-03 06:17:16'),
(634, 4, 102, 1, 1, 1, 1, '2019-12-01 01:03:00', '2025-07-03 06:17:16'),
(669, 1, 145, 1, 0, 0, 0, '2019-11-26 04:51:15', '2025-07-03 06:17:16'),
(677, 1, 153, 1, 0, 0, 0, '2019-11-01 02:28:24', '2025-07-03 06:17:16'),
(720, 1, 216, 1, 0, 0, 0, '2019-11-26 05:24:12', '2025-07-03 06:17:16'),
(728, 1, 185, 1, 1, 1, 1, '2019-11-28 02:50:33', '2025-07-03 06:17:16'),
(729, 1, 186, 1, 1, 1, 1, '2019-11-28 02:49:07', '2025-07-03 06:17:16'),
(730, 1, 214, 1, 0, 1, 0, '2019-11-28 01:47:53', '2025-07-03 06:17:16'),
(732, 1, 198, 1, 0, 0, 0, '2019-11-26 05:24:30', '2025-07-03 06:17:16'),
(734, 1, 200, 1, 0, 0, 0, '2019-11-26 05:24:30', '2025-07-03 06:17:16'),
(735, 1, 201, 1, 0, 0, 0, '2019-11-26 05:24:30', '2025-07-03 06:17:16'),
(736, 1, 202, 1, 0, 0, 0, '2019-11-26 05:24:30', '2025-07-03 06:17:16'),
(737, 1, 203, 1, 0, 0, 0, '2019-11-26 05:24:30', '2025-07-03 06:17:16'),
(747, 1, 2, 1, 0, 0, 0, '2019-11-27 22:56:08', '2025-07-03 06:17:16'),
(748, 1, 3, 1, 1, 1, 1, '2019-11-27 22:56:32', '2025-07-03 06:17:16'),
(749, 1, 4, 1, 1, 1, 1, '2019-11-27 22:56:48', '2025-07-03 06:17:16'),
(751, 1, 128, 0, 1, 0, 1, '2019-11-27 22:57:01', '2025-07-03 06:17:16'),
(754, 1, 134, 1, 1, 1, 1, '2019-11-27 23:18:21', '2025-07-03 06:17:16'),
(755, 1, 5, 1, 1, 0, 1, '2019-11-27 23:35:07', '2025-07-03 06:17:16'),
(756, 1, 6, 1, 0, 0, 0, '2019-11-27 23:35:25', '2025-07-03 06:17:16'),
(757, 1, 7, 1, 1, 1, 1, '2019-11-27 23:36:35', '2025-07-03 06:17:16'),
(758, 1, 8, 1, 1, 1, 1, '2019-11-27 23:37:27', '2025-07-03 06:17:16'),
(760, 1, 68, 1, 0, 0, 0, '2019-11-27 23:38:06', '2025-07-03 06:17:16'),
(761, 1, 69, 1, 1, 1, 1, '2019-11-27 23:39:06', '2025-07-03 06:17:16'),
(762, 1, 70, 1, 1, 1, 1, '2019-11-27 23:39:41', '2025-07-03 06:17:16'),
(763, 1, 71, 1, 0, 0, 0, '2019-11-27 23:39:59', '2025-07-03 06:17:16'),
(765, 1, 73, 1, 0, 0, 0, '2019-11-27 23:43:15', '2025-07-03 06:17:16'),
(766, 1, 74, 1, 0, 0, 0, '2019-11-27 23:43:55', '2025-07-03 06:17:16'),
(768, 1, 11, 1, 0, 0, 0, '2019-11-27 23:45:46', '2025-07-03 06:17:16'),
(769, 1, 122, 1, 0, 0, 0, '2019-11-27 23:52:43', '2025-07-03 06:17:16'),
(771, 1, 136, 1, 0, 0, 0, '2019-11-27 23:55:36', '2025-07-03 06:17:16'),
(772, 1, 20, 1, 1, 1, 1, '2019-11-28 04:06:44', '2025-07-03 06:17:16'),
(773, 1, 137, 1, 1, 1, 1, '2019-11-28 00:46:14', '2025-07-03 06:17:16'),
(774, 1, 141, 1, 1, 1, 1, '2019-11-28 00:59:42', '2025-07-03 06:17:16'),
(775, 1, 142, 1, 0, 0, 0, '2019-11-27 23:56:12', '2025-07-03 06:17:16'),
(776, 1, 143, 1, 1, 1, 1, '2019-11-28 00:59:42', '2025-07-03 06:17:16'),
(777, 1, 144, 1, 0, 0, 0, '2019-11-27 23:56:12', '2025-07-03 06:17:16'),
(778, 1, 187, 1, 0, 0, 0, '2019-11-27 23:56:12', '2025-07-03 06:17:16'),
(779, 1, 196, 1, 0, 0, 0, '2019-11-27 23:56:12', '2025-07-03 06:17:16'),
(781, 1, 207, 1, 0, 0, 0, '2019-11-27 23:56:12', '2025-07-03 06:17:16'),
(782, 1, 208, 1, 0, 1, 0, '2019-11-28 00:10:22', '2025-07-03 06:17:16'),
(783, 1, 210, 1, 0, 1, 0, '2019-11-28 00:34:40', '2025-07-03 06:17:16'),
(784, 1, 211, 1, 0, 1, 0, '2019-11-28 00:38:23', '2025-07-03 06:17:16'),
(785, 1, 212, 1, 0, 1, 0, '2019-11-28 00:42:15', '2025-07-03 06:17:16'),
(786, 1, 205, 1, 1, 1, 1, '2019-11-28 00:42:15', '2025-07-03 06:17:16'),
(787, 1, 222, 1, 0, 1, 0, '2019-11-28 01:36:36', '2025-07-03 06:17:16'),
(788, 1, 77, 1, 1, 1, 1, '2019-11-28 06:22:10', '2025-07-03 06:17:16'),
(789, 1, 188, 1, 1, 1, 1, '2019-11-28 06:26:16', '2025-07-03 06:17:16'),
(790, 1, 23, 1, 1, 1, 1, '2019-11-28 06:34:20', '2025-07-03 06:17:16'),
(791, 1, 25, 1, 1, 1, 1, '2019-11-28 06:36:20', '2025-07-03 06:17:16'),
(792, 1, 127, 1, 0, 0, 0, '2019-11-28 06:41:25', '2025-07-03 06:17:16'),
(794, 1, 88, 1, 1, 1, 0, '2019-11-28 06:43:04', '2025-07-03 06:17:16'),
(795, 1, 90, 1, 1, 0, 1, '2019-11-28 06:46:22', '2025-07-03 06:17:16'),
(796, 1, 108, 1, 0, 1, 1, '2021-01-23 07:09:32', '2025-07-03 06:17:16'),
(797, 1, 109, 1, 1, 0, 0, '2019-11-28 23:38:11', '2025-07-03 06:17:16'),
(798, 1, 110, 1, 1, 1, 1, '2019-11-28 23:49:29', '2025-07-03 06:17:16'),
(799, 1, 111, 1, 1, 1, 1, '2019-11-28 23:49:57', '2025-07-03 06:17:16'),
(800, 1, 112, 1, 1, 1, 1, '2019-11-28 23:49:57', '2025-07-03 06:17:16'),
(801, 1, 129, 0, 1, 0, 1, '2019-11-28 23:49:57', '2025-07-03 06:17:16'),
(802, 1, 189, 1, 0, 1, 1, '2019-11-28 23:59:22', '2025-07-03 06:17:16'),
(810, 2, 1, 1, 1, 1, 1, '2019-11-30 02:54:16', '2025-07-03 06:17:16'),
(817, 1, 93, 1, 1, 1, 1, '2019-11-29 00:56:14', '2025-07-03 06:17:16'),
(825, 1, 87, 1, 0, 0, 0, '2019-11-29 00:56:14', '2025-07-03 06:17:16'),
(829, 1, 94, 1, 1, 0, 0, '2019-11-29 00:57:57', '2025-07-03 06:17:16'),
(836, 1, 146, 1, 0, 0, 0, '2019-11-29 01:13:28', '2025-07-03 06:17:16'),
(837, 1, 147, 1, 0, 0, 0, '2019-11-29 01:13:28', '2025-07-03 06:17:16'),
(838, 1, 148, 1, 0, 0, 0, '2019-11-29 01:13:28', '2025-07-03 06:17:16'),
(839, 1, 149, 1, 0, 0, 0, '2019-11-29 01:13:28', '2025-07-03 06:17:16'),
(840, 1, 150, 1, 0, 0, 0, '2019-11-29 01:13:28', '2025-07-03 06:17:16'),
(841, 1, 151, 1, 0, 0, 0, '2019-11-29 01:13:28', '2025-07-03 06:17:16'),
(842, 1, 152, 1, 0, 0, 0, '2019-11-29 01:13:28', '2025-07-03 06:17:16'),
(843, 1, 154, 1, 0, 0, 0, '2019-11-29 01:13:28', '2025-07-03 06:17:16'),
(862, 1, 155, 1, 0, 0, 0, '2019-11-29 02:07:30', '2025-07-03 06:17:16'),
(863, 1, 156, 1, 0, 0, 0, '2019-11-29 02:07:52', '2025-07-03 06:17:16'),
(864, 1, 157, 1, 0, 0, 0, '2019-11-29 02:08:05', '2025-07-03 06:17:16'),
(874, 1, 158, 1, 0, 0, 0, '2019-11-29 02:14:03', '2025-07-03 06:17:16'),
(875, 1, 159, 1, 0, 0, 0, '2019-11-29 02:14:31', '2025-07-03 06:17:16'),
(876, 1, 160, 1, 0, 0, 0, '2019-11-29 02:14:44', '2025-07-03 06:17:16'),
(878, 1, 162, 1, 0, 0, 0, '2019-11-29 02:15:58', '2025-07-03 06:17:16'),
(879, 1, 163, 1, 0, 0, 0, '2019-11-29 02:16:19', '2025-07-03 06:17:16'),
(882, 1, 164, 1, 0, 0, 0, '2019-11-29 02:25:17', '2025-07-03 06:17:16'),
(884, 1, 165, 1, 0, 0, 0, '2019-11-29 02:25:30', '2025-07-03 06:17:16'),
(886, 1, 197, 1, 0, 0, 0, '2019-11-29 02:25:48', '2025-07-03 06:17:16'),
(887, 1, 219, 1, 0, 0, 0, '2019-11-29 02:26:05', '2025-07-03 06:17:16'),
(889, 1, 220, 1, 0, 0, 0, '2019-11-29 02:26:22', '2025-07-03 06:17:16'),
(932, 1, 204, 1, 0, 0, 0, '2019-11-29 03:43:27', '2025-07-03 06:17:16'),
(933, 1, 221, 1, 0, 0, 0, '2019-11-29 03:45:04', '2025-07-03 06:17:16'),
(934, 1, 178, 1, 0, 0, 0, '2019-11-29 03:45:16', '2025-07-03 06:17:16'),
(935, 1, 179, 1, 0, 0, 0, '2019-11-29 03:45:33', '2025-07-03 06:17:16'),
(936, 1, 161, 1, 0, 0, 0, '2019-11-29 03:45:48', '2025-07-03 06:17:16'),
(937, 1, 180, 1, 0, 0, 0, '2019-11-29 03:45:48', '2025-07-03 06:17:16'),
(938, 1, 181, 1, 0, 0, 0, '2019-11-29 03:49:33', '2025-07-03 06:17:16'),
(939, 1, 182, 1, 0, 0, 0, '2019-11-29 03:49:45', '2025-07-03 06:17:16'),
(940, 1, 183, 1, 0, 0, 0, '2019-11-29 03:49:56', '2025-07-03 06:17:16'),
(941, 1, 174, 1, 0, 0, 0, '2019-11-29 03:50:53', '2025-07-03 06:17:16'),
(943, 1, 176, 1, 0, 0, 0, '2019-11-29 03:52:10', '2025-07-03 06:17:16'),
(944, 1, 177, 1, 0, 0, 0, '2019-11-29 03:52:22', '2025-07-03 06:17:16'),
(945, 1, 53, 0, 1, 0, 1, '2021-01-23 07:09:32', '2025-07-03 06:17:16'),
(946, 1, 215, 1, 0, 0, 0, '2019-11-29 04:01:37', '2025-07-03 06:17:16'),
(947, 1, 213, 1, 0, 0, 0, '2019-11-29 04:07:45', '2025-07-03 06:17:16'),
(974, 1, 224, 1, 0, 0, 0, '2019-11-29 04:32:52', '2025-07-03 06:17:16'),
(1026, 1, 135, 1, 0, 1, 0, '2019-11-29 06:02:12', '2025-07-03 06:17:16'),
(1031, 1, 228, 1, 0, 0, 0, '2019-11-29 06:21:16', '2025-07-03 06:17:16'),
(1083, 1, 175, 1, 0, 0, 0, '2019-11-30 00:37:24', '2025-07-03 06:17:16'),
(1086, 1, 43, 1, 1, 1, 1, '2019-11-30 00:49:39', '2025-07-03 06:17:16'),
(1087, 1, 44, 1, 0, 0, 0, '2019-11-30 00:49:39', '2025-07-03 06:17:16'),
(1088, 1, 46, 1, 0, 0, 0, '2019-11-30 00:49:39', '2025-07-03 06:17:16'),
(1089, 1, 217, 1, 0, 0, 0, '2019-11-30 00:49:39', '2025-07-03 06:17:16'),
(1090, 1, 98, 1, 1, 1, 1, '2019-11-30 01:32:51', '2025-07-03 06:17:16'),
(1091, 1, 99, 1, 0, 0, 0, '2019-11-30 01:30:18', '2025-07-03 06:17:16'),
(1092, 1, 223, 1, 0, 0, 0, '2019-11-30 01:32:51', '2025-07-03 06:17:16'),
(1103, 2, 205, 1, 1, 1, 1, '2019-11-30 01:56:04', '2025-07-03 06:17:16'),
(1105, 2, 23, 1, 0, 0, 0, '2019-11-30 01:56:04', '2025-07-03 06:17:16'),
(1106, 2, 24, 1, 0, 0, 0, '2019-11-30 01:56:04', '2025-07-03 06:17:16'),
(1107, 2, 25, 1, 0, 0, 0, '2019-11-30 01:56:04', '2025-07-03 06:17:16'),
(1108, 2, 77, 1, 0, 0, 0, '2019-11-30 01:56:04', '2025-07-03 06:17:16'),
(1119, 2, 117, 1, 0, 0, 0, '2019-11-30 01:56:04', '2025-07-03 06:17:16'),
(1123, 3, 8, 1, 1, 1, 1, '2019-11-30 06:46:18', '2025-07-03 06:17:16'),
(1125, 3, 69, 1, 1, 1, 1, '2019-11-30 07:00:49', '2025-07-03 06:17:16'),
(1126, 3, 70, 1, 1, 1, 1, '2019-11-30 07:04:46', '2025-07-03 06:17:16'),
(1130, 3, 9, 1, 1, 1, 1, '2019-11-30 07:14:54', '2025-07-03 06:17:16'),
(1131, 3, 10, 1, 1, 1, 1, '2019-11-30 07:16:02', '2025-07-03 06:17:16'),
(1134, 3, 35, 1, 1, 1, 1, '2019-11-30 07:25:04', '2025-07-03 06:17:16'),
(1135, 3, 104, 1, 1, 1, 1, '2019-11-30 07:25:53', '2025-07-03 06:17:16'),
(1140, 3, 41, 1, 1, 1, 1, '2019-11-30 07:37:13', '2025-07-03 06:17:16'),
(1141, 3, 42, 1, 1, 1, 1, '2019-11-30 07:37:46', '2025-07-03 06:17:16'),
(1142, 3, 43, 1, 1, 1, 1, '2019-11-30 07:42:06', '2025-07-03 06:17:16'),
(1151, 3, 87, 1, 0, 0, 0, '2019-11-30 02:23:13', '2025-07-03 06:17:16'),
(1152, 3, 88, 1, 1, 1, 0, '2019-11-30 02:23:13', '2025-07-03 06:17:16'),
(1153, 3, 90, 1, 1, 0, 1, '2019-11-30 02:23:13', '2025-07-03 06:17:16'),
(1154, 3, 108, 1, 0, 1, 0, '2019-11-30 02:23:13', '2025-07-03 06:17:16'),
(1155, 3, 109, 1, 1, 0, 0, '2019-11-30 02:23:13', '2025-07-03 06:17:16'),
(1156, 3, 110, 1, 1, 1, 1, '2019-11-30 02:23:13', '2025-07-03 06:17:16'),
(1157, 3, 111, 1, 1, 1, 1, '2019-11-30 02:23:13', '2025-07-03 06:17:16'),
(1158, 3, 112, 1, 1, 1, 1, '2019-11-30 02:23:13', '2025-07-03 06:17:16'),
(1159, 3, 127, 1, 0, 0, 0, '2019-11-30 02:23:13', '2025-07-03 06:17:16'),
(1160, 3, 129, 0, 1, 0, 1, '2019-11-30 02:23:13', '2025-07-03 06:17:16'),
(1161, 3, 102, 1, 1, 1, 1, '2019-11-30 02:23:13', '2025-07-03 06:17:16'),
(1162, 3, 106, 1, 0, 0, 0, '2019-11-30 02:23:13', '2025-07-03 06:17:16'),
(1163, 3, 113, 1, 0, 0, 0, '2019-11-30 02:23:13', '2025-07-03 06:17:16'),
(1164, 3, 114, 1, 0, 0, 0, '2019-11-30 02:23:13', '2025-07-03 06:17:16'),
(1165, 3, 115, 1, 0, 0, 0, '2019-11-30 02:23:13', '2025-07-03 06:17:16'),
(1166, 3, 116, 1, 0, 0, 0, '2019-11-30 02:23:13', '2025-07-03 06:17:16'),
(1167, 3, 117, 1, 0, 0, 0, '2019-11-30 02:23:13', '2025-07-03 06:17:16'),
(1168, 3, 118, 1, 0, 0, 0, '2019-11-30 02:23:13', '2025-07-03 06:17:16'),
(1171, 2, 142, 1, 0, 0, 0, '2019-11-30 02:36:17', '2025-07-03 06:17:16'),
(1172, 2, 144, 1, 0, 0, 0, '2019-11-30 02:36:17', '2025-07-03 06:17:16'),
(1179, 2, 212, 1, 0, 1, 0, '2019-11-30 02:36:17', '2025-07-03 06:17:16'),
(1183, 2, 148, 1, 0, 0, 0, '2019-11-30 02:36:17', '2025-07-03 06:17:16'),
(1184, 2, 149, 1, 0, 0, 0, '2019-11-30 02:36:17', '2025-07-03 06:17:16'),
(1185, 2, 150, 1, 0, 0, 0, '2019-11-30 02:36:17', '2025-07-03 06:17:16'),
(1186, 2, 151, 1, 0, 0, 0, '2019-11-30 02:36:17', '2025-07-03 06:17:16'),
(1187, 2, 152, 1, 0, 0, 0, '2019-11-30 02:36:17', '2025-07-03 06:17:16'),
(1188, 2, 153, 1, 0, 0, 0, '2019-11-30 02:36:17', '2025-07-03 06:17:16'),
(1189, 2, 154, 1, 0, 0, 0, '2019-11-30 02:36:17', '2025-07-03 06:17:16'),
(1190, 2, 197, 1, 0, 0, 0, '2019-11-30 02:36:17', '2025-07-03 06:17:16'),
(1191, 2, 198, 1, 0, 0, 0, '2019-11-30 02:36:17', '2025-07-03 06:17:16'),
(1193, 2, 200, 1, 0, 0, 0, '2019-11-30 02:36:17', '2025-07-03 06:17:16'),
(1194, 2, 201, 1, 0, 0, 0, '2019-11-30 02:36:17', '2025-07-03 06:17:16'),
(1195, 2, 202, 1, 0, 0, 0, '2019-11-30 02:36:17', '2025-07-03 06:17:16'),
(1196, 2, 203, 1, 0, 0, 0, '2019-11-30 02:36:17', '2025-07-03 06:17:16'),
(1197, 2, 219, 1, 0, 0, 0, '2019-11-30 02:36:17', '2025-07-03 06:17:16'),
(1198, 2, 223, 1, 0, 0, 0, '2019-11-30 02:36:17', '2025-07-03 06:17:16'),
(1199, 2, 213, 1, 0, 0, 0, '2019-11-30 02:36:17', '2025-07-03 06:17:16'),
(1201, 2, 230, 1, 0, 0, 0, '2019-11-30 02:36:17', '2025-07-03 06:17:16'),
(1204, 2, 214, 1, 0, 1, 0, '2019-11-30 02:36:17', '2025-07-03 06:17:16'),
(1206, 2, 224, 1, 0, 0, 0, '2019-11-30 02:36:17', '2025-07-03 06:17:16'),
(1208, 2, 2, 1, 0, 0, 0, '2019-11-30 02:55:45', '2025-07-03 06:17:16'),
(1210, 2, 143, 1, 1, 1, 1, '2019-11-30 02:57:28', '2025-07-03 06:17:16'),
(1211, 2, 145, 1, 0, 0, 0, '2019-11-30 02:57:28', '2025-07-03 06:17:16'),
(1214, 2, 3, 1, 1, 1, 1, '2019-11-30 03:03:18', '2025-07-03 06:17:16'),
(1216, 2, 4, 1, 1, 1, 1, '2019-11-30 03:32:56', '2025-07-03 06:17:16'),
(1218, 2, 128, 0, 1, 0, 1, '2019-11-30 03:37:44', '2025-07-03 06:17:16'),
(1220, 3, 135, 1, 0, 1, 0, '2019-11-30 07:08:56', '2025-07-03 06:17:16'),
(1231, 3, 190, 1, 0, 0, 0, '2019-11-30 03:44:02', '2025-07-03 06:17:16'),
(1232, 3, 192, 1, 0, 0, 0, '2019-11-30 03:44:02', '2025-07-03 06:17:16'),
(1233, 3, 226, 1, 0, 0, 0, '2019-11-30 03:44:02', '2025-07-03 06:17:16'),
(1234, 3, 227, 1, 0, 0, 0, '2019-11-30 03:44:02', '2025-07-03 06:17:16'),
(1235, 3, 224, 1, 0, 0, 0, '2019-11-30 03:44:02', '2025-07-03 06:17:16'),
(1236, 2, 15, 1, 1, 1, 0, '2019-11-30 03:54:25', '2025-07-03 06:17:16'),
(1239, 2, 122, 1, 0, 0, 0, '2019-11-30 03:57:48', '2025-07-03 06:17:16'),
(1240, 2, 136, 1, 0, 0, 0, '2019-11-30 03:57:48', '2025-07-03 06:17:16'),
(1242, 6, 217, 1, 0, 0, 0, '2019-11-30 04:00:13', '2025-07-03 06:17:16'),
(1243, 6, 224, 1, 0, 0, 0, '2019-11-30 04:00:13', '2025-07-03 06:17:16'),
(1245, 2, 20, 1, 1, 1, 1, '2019-11-30 04:01:28', '2025-07-03 06:17:16'),
(1246, 2, 137, 1, 1, 1, 1, '2019-11-30 04:02:40', '2025-07-03 06:17:16'),
(1248, 2, 141, 1, 1, 1, 1, '2019-11-30 04:04:04', '2025-07-03 06:17:16'),
(1250, 2, 187, 1, 0, 0, 0, '2019-11-30 04:11:19', '2025-07-03 06:17:16'),
(1252, 2, 207, 1, 0, 0, 0, '2019-11-30 04:21:21', '2025-07-03 06:17:16'),
(1253, 2, 208, 1, 0, 1, 0, '2019-11-30 04:22:00', '2025-07-03 06:17:16'),
(1255, 2, 210, 1, 0, 1, 0, '2019-11-30 04:22:58', '2025-07-03 06:17:16'),
(1256, 2, 211, 1, 0, 1, 0, '2019-11-30 04:24:03', '2025-07-03 06:17:16'),
(1257, 2, 21, 1, 0, 0, 0, '2019-11-30 04:32:59', '2025-07-03 06:17:16'),
(1259, 2, 188, 1, 0, 0, 0, '2019-11-30 04:34:35', '2025-07-03 06:17:16'),
(1260, 2, 27, 1, 0, 0, 0, '2019-11-30 04:36:13', '2025-07-03 06:17:16'),
(1262, 2, 43, 1, 1, 1, 1, '2019-11-30 04:39:42', '2025-07-03 06:17:16'),
(1263, 2, 44, 1, 0, 0, 0, '2019-11-30 04:41:43', '2025-07-03 06:17:16'),
(1264, 2, 46, 1, 0, 0, 0, '2019-11-30 04:41:43', '2025-07-03 06:17:16'),
(1265, 2, 217, 1, 0, 0, 0, '2019-11-30 04:41:43', '2025-07-03 06:17:16'),
(1266, 2, 146, 1, 0, 0, 0, '2019-11-30 04:46:35', '2025-07-03 06:17:16'),
(1267, 2, 147, 1, 0, 0, 0, '2019-11-30 04:47:37', '2025-07-03 06:17:16'),
(1269, 2, 164, 1, 0, 0, 0, '2019-11-30 04:51:04', '2025-07-03 06:17:16'),
(1271, 2, 109, 1, 1, 0, 0, '2019-11-30 05:03:37', '2025-07-03 06:17:16'),
(1272, 2, 93, 1, 1, 1, 1, '2019-11-30 05:07:25', '2025-07-03 06:17:16'),
(1273, 2, 94, 1, 1, 0, 0, '2019-11-30 05:07:42', '2025-07-03 06:17:16'),
(1275, 2, 102, 1, 1, 1, 1, '2019-11-30 05:11:22', '2025-07-03 06:17:16'),
(1277, 2, 196, 1, 0, 0, 0, '2019-11-30 05:15:01', '2025-07-03 06:17:16'),
(1278, 2, 195, 1, 0, 0, 0, '2019-11-30 05:19:08', '2025-07-03 06:17:16'),
(1279, 2, 185, 1, 1, 1, 1, '2019-11-30 05:21:44', '2025-07-03 06:17:16'),
(1280, 2, 186, 1, 1, 1, 1, '2019-11-30 05:22:43', '2025-07-03 06:17:16'),
(1281, 2, 222, 1, 0, 1, 0, '2019-11-30 05:24:30', '2025-07-03 06:17:16'),
(1283, 3, 5, 1, 1, 0, 1, '2019-11-30 06:43:04', '2025-07-03 06:17:16'),
(1284, 3, 6, 1, 0, 0, 0, '2019-11-30 06:43:29', '2025-07-03 06:17:16'),
(1285, 3, 7, 1, 1, 1, 1, '2019-11-30 06:44:39', '2025-07-03 06:17:16'),
(1286, 3, 68, 1, 0, 0, 0, '2019-11-30 06:46:58', '2025-07-03 06:17:16'),
(1287, 3, 71, 1, 0, 0, 0, '2019-11-30 07:05:41', '2025-07-03 06:17:16'),
(1288, 3, 73, 1, 0, 0, 0, '2019-11-30 07:05:59', '2025-07-03 06:17:16'),
(1289, 3, 74, 1, 0, 0, 0, '2019-11-30 07:06:08', '2025-07-03 06:17:16'),
(1290, 3, 11, 1, 0, 0, 0, '2019-11-30 07:16:37', '2025-07-03 06:17:16'),
(1291, 3, 12, 1, 1, 1, 1, '2019-11-30 07:19:29', '2025-07-03 06:17:16'),
(1292, 3, 13, 1, 1, 1, 1, '2019-11-30 07:22:27', '2025-07-03 06:17:16'),
(1294, 3, 14, 1, 0, 0, 0, '2019-11-30 07:22:55', '2025-07-03 06:17:16'),
(1295, 3, 31, 1, 1, 1, 1, '2019-12-02 06:30:37', '2025-07-03 06:17:16'),
(1297, 3, 37, 1, 1, 1, 1, '2019-11-30 07:28:09', '2025-07-03 06:17:16'),
(1298, 3, 38, 1, 1, 1, 1, '2019-11-30 07:29:02', '2025-07-03 06:17:16'),
(1299, 3, 39, 1, 1, 1, 1, '2019-11-30 07:30:07', '2025-07-03 06:17:16'),
(1300, 3, 40, 1, 1, 1, 1, '2019-11-30 07:32:43', '2025-07-03 06:17:16'),
(1301, 3, 44, 1, 0, 0, 0, '2019-11-30 07:44:09', '2025-07-03 06:17:16'),
(1302, 3, 46, 1, 0, 0, 0, '2019-11-30 07:44:09', '2025-07-03 06:17:16'),
(1303, 3, 217, 1, 0, 0, 0, '2019-11-30 07:44:09', '2025-07-03 06:17:16'),
(1304, 3, 155, 1, 0, 0, 0, '2019-11-30 07:44:32', '2025-07-03 06:17:16'),
(1305, 3, 156, 1, 0, 0, 0, '2019-11-30 07:45:18', '2025-07-03 06:17:16'),
(1306, 3, 157, 1, 0, 0, 0, '2019-11-30 07:45:42', '2025-07-03 06:17:16'),
(1307, 3, 158, 1, 0, 0, 0, '2019-11-30 07:46:07', '2025-07-03 06:17:16'),
(1308, 3, 159, 1, 0, 0, 0, '2019-11-30 07:46:21', '2025-07-03 06:17:16'),
(1309, 3, 160, 1, 0, 0, 0, '2019-11-30 07:46:33', '2025-07-03 06:17:16'),
(1313, 3, 161, 1, 0, 0, 0, '2019-11-30 07:48:26', '2025-07-03 06:17:16'),
(1314, 3, 162, 1, 0, 0, 0, '2019-11-30 07:48:48', '2025-07-03 06:17:16'),
(1315, 3, 163, 1, 0, 0, 0, '2019-11-30 07:48:48', '2025-07-03 06:17:16'),
(1316, 3, 164, 1, 0, 0, 0, '2019-11-30 07:49:47', '2025-07-03 06:17:16'),
(1317, 3, 165, 1, 0, 0, 0, '2019-11-30 07:49:47', '2025-07-03 06:17:16'),
(1318, 3, 174, 1, 0, 0, 0, '2019-11-30 07:49:47', '2025-07-03 06:17:16'),
(1319, 3, 175, 1, 0, 0, 0, '2019-11-30 07:49:59', '2025-07-03 06:17:16'),
(1320, 3, 181, 1, 0, 0, 0, '2019-11-30 07:50:08', '2025-07-03 06:17:16'),
(1321, 3, 86, 1, 1, 1, 1, '2019-11-30 07:54:08', '2025-07-03 06:17:16'),
(1322, 4, 28, 1, 1, 1, 1, '2019-12-01 00:52:39', '2025-07-03 06:17:16'),
(1324, 4, 29, 1, 0, 0, 0, '2019-12-01 00:53:46', '2025-07-03 06:17:16'),
(1325, 4, 30, 1, 0, 0, 0, '2019-12-01 00:53:59', '2025-07-03 06:17:16'),
(1326, 4, 123, 1, 0, 0, 0, '2019-12-01 00:54:26', '2025-07-03 06:17:16'),
(1327, 4, 228, 1, 0, 0, 0, '2019-12-01 00:54:39', '2025-07-03 06:17:16'),
(1328, 4, 43, 1, 1, 1, 1, '2019-12-01 00:58:05', '2025-07-03 06:17:16'),
(1332, 4, 44, 1, 0, 0, 0, '2019-12-01 00:59:16', '2025-07-03 06:17:16'),
(1333, 4, 46, 1, 0, 0, 0, '2019-12-01 00:59:16', '2025-07-03 06:17:16'),
(1334, 4, 217, 1, 0, 0, 0, '2019-12-01 00:59:16', '2025-07-03 06:17:16'),
(1335, 4, 178, 1, 0, 0, 0, '2019-12-01 00:59:59', '2025-07-03 06:17:16'),
(1336, 4, 179, 1, 0, 0, 0, '2019-12-01 01:00:11', '2025-07-03 06:17:16'),
(1337, 4, 180, 1, 0, 0, 0, '2019-12-01 01:00:29', '2025-07-03 06:17:16'),
(1338, 4, 221, 1, 0, 0, 0, '2019-12-01 01:00:46', '2025-07-03 06:17:16'),
(1339, 4, 86, 1, 0, 0, 0, '2019-12-01 01:01:02', '2025-07-03 06:17:16'),
(1341, 4, 106, 1, 0, 0, 0, '2019-12-01 01:05:21', '2025-07-03 06:17:16'),
(1342, 1, 107, 1, 0, 0, 0, '2019-12-01 01:06:44', '2025-07-03 06:17:16'),
(1343, 4, 117, 1, 0, 0, 0, '2019-12-01 01:10:20', '2025-07-03 06:17:16'),
(1344, 4, 194, 1, 0, 0, 0, '2019-12-01 01:11:35', '2025-07-03 06:17:16'),
(1348, 4, 230, 1, 0, 0, 0, '2019-12-01 01:19:15', '2025-07-03 06:17:16'),
(1350, 6, 1, 1, 0, 0, 0, '2019-12-01 01:35:32', '2025-07-03 06:17:16'),
(1351, 6, 21, 1, 0, 0, 0, '2019-12-01 01:36:29', '2025-07-03 06:17:16'),
(1352, 6, 23, 1, 0, 0, 0, '2019-12-01 01:36:45', '2025-07-03 06:17:16'),
(1353, 6, 24, 1, 0, 0, 0, '2019-12-01 01:37:05', '2025-07-03 06:17:16'),
(1354, 6, 25, 1, 0, 0, 0, '2019-12-01 01:37:34', '2025-07-03 06:17:16'),
(1355, 6, 77, 1, 0, 0, 0, '2019-12-01 01:38:08', '2025-07-03 06:17:16'),
(1356, 6, 188, 1, 0, 0, 0, '2019-12-01 01:38:45', '2025-07-03 06:17:16'),
(1357, 6, 43, 1, 1, 1, 1, '2019-12-01 01:40:44', '2025-07-03 06:17:16'),
(1358, 6, 78, 1, 1, 1, 1, '2019-12-01 01:43:04', '2025-07-03 06:17:16'),
(1360, 6, 79, 1, 1, 0, 1, '2019-12-01 01:44:39', '2025-07-03 06:17:16'),
(1361, 6, 80, 1, 1, 1, 1, '2019-12-01 01:45:08', '2025-07-03 06:17:16'),
(1362, 6, 81, 1, 1, 1, 1, '2019-12-01 01:47:50', '2025-07-03 06:17:16'),
(1363, 6, 85, 1, 1, 1, 1, '2019-12-01 01:50:43', '2025-07-03 06:17:16'),
(1364, 6, 86, 1, 0, 0, 0, '2019-12-01 01:51:10', '2025-07-03 06:17:16'),
(1365, 6, 106, 1, 0, 0, 0, '2019-12-01 01:52:55', '2025-07-03 06:17:16'),
(1366, 6, 117, 1, 0, 0, 0, '2019-12-01 01:53:08', '2025-07-03 06:17:16'),
(1394, 1, 106, 1, 0, 0, 0, '2019-12-02 05:20:33', '2025-07-03 06:17:16'),
(1395, 1, 113, 1, 0, 0, 0, '2019-12-02 05:20:59', '2025-07-03 06:17:16'),
(1396, 1, 114, 1, 0, 0, 0, '2019-12-02 05:21:34', '2025-07-03 06:17:16'),
(1397, 1, 115, 1, 0, 0, 0, '2019-12-02 05:21:34', '2025-07-03 06:17:16'),
(1398, 1, 116, 1, 0, 0, 0, '2019-12-02 05:21:54', '2025-07-03 06:17:16'),
(1399, 1, 117, 1, 0, 0, 0, '2019-12-02 05:22:04', '2025-07-03 06:17:16'),
(1400, 1, 118, 1, 0, 0, 0, '2019-12-02 05:22:20', '2025-07-03 06:17:16'),
(1402, 1, 191, 1, 0, 0, 0, '2019-12-02 05:23:34', '2025-07-03 06:17:16'),
(1403, 1, 192, 1, 0, 0, 0, '2019-12-02 05:23:47', '2025-07-03 06:17:16'),
(1404, 1, 193, 1, 0, 0, 0, '2019-12-02 05:23:58', '2025-07-03 06:17:16'),
(1405, 1, 194, 1, 0, 0, 0, '2019-12-02 05:24:11', '2025-07-03 06:17:16'),
(1406, 1, 195, 1, 0, 0, 0, '2019-12-02 05:24:20', '2025-07-03 06:17:16'),
(1408, 1, 227, 1, 0, 0, 0, '2019-12-02 05:25:47', '2025-07-03 06:17:16'),
(1410, 1, 226, 1, 0, 0, 0, '2019-12-02 05:31:41', '2025-07-03 06:17:16'),
(1411, 1, 229, 1, 0, 0, 0, '2019-12-02 05:32:57', '2025-07-03 06:17:16'),
(1412, 1, 230, 1, 0, 0, 0, '2019-12-02 05:32:57', '2025-07-03 06:17:16'),
(1413, 1, 190, 1, 0, 0, 0, '2019-12-02 05:43:41', '2025-07-03 06:17:16'),
(1414, 2, 174, 1, 0, 0, 0, '2019-12-02 05:54:37', '2025-07-03 06:17:16'),
(1415, 2, 175, 1, 0, 0, 0, '2019-12-02 05:54:37', '2025-07-03 06:17:16'),
(1418, 2, 232, 1, 0, 1, 1, '2019-12-02 06:11:27', '2025-07-03 06:17:16'),
(1419, 2, 231, 1, 0, 0, 0, '2019-12-02 06:12:28', '2025-07-03 06:17:16'),
(1420, 1, 231, 1, 1, 1, 1, '2021-01-23 07:09:32', '2025-07-03 06:17:16'),
(1421, 1, 232, 1, 0, 1, 1, '2019-12-02 06:19:32', '2025-07-03 06:17:16'),
(1422, 3, 32, 1, 1, 1, 1, '2019-12-02 06:30:37', '2025-07-03 06:17:16'),
(1423, 3, 33, 1, 1, 1, 1, '2019-12-02 06:30:37', '2025-07-03 06:17:16'),
(1424, 3, 34, 1, 1, 1, 1, '2019-12-02 06:30:37', '2025-07-03 06:17:16'),
(1425, 3, 182, 1, 0, 0, 0, '2019-12-02 06:30:37', '2025-07-03 06:17:16'),
(1426, 3, 183, 1, 0, 0, 0, '2019-12-02 06:30:37', '2025-07-03 06:17:16'),
(1427, 3, 189, 1, 0, 1, 1, '2019-12-02 06:30:37', '2025-07-03 06:17:16'),
(1428, 3, 229, 1, 0, 0, 0, '2019-12-02 06:30:37', '2025-07-03 06:17:16'),
(1429, 3, 230, 1, 0, 0, 0, '2019-12-02 06:30:37', '2025-07-03 06:17:16'),
(1430, 4, 213, 1, 0, 0, 0, '2019-12-02 06:32:14', '2025-07-03 06:17:16'),
(1432, 4, 224, 1, 0, 0, 0, '2019-12-02 06:32:14', '2025-07-03 06:17:16'),
(1433, 4, 195, 1, 0, 0, 0, '2019-12-03 04:57:53', '2025-07-03 06:17:16'),
(1434, 4, 229, 1, 0, 0, 0, '2019-12-03 04:58:19', '2025-07-03 06:17:16'),
(1436, 6, 213, 1, 0, 0, 0, '2019-12-03 05:10:11', '2025-07-03 06:17:16'),
(1437, 6, 191, 1, 0, 0, 0, '2019-12-03 05:10:11', '2025-07-03 06:17:16'),
(1438, 6, 193, 1, 0, 0, 0, '2019-12-03 05:10:11', '2025-07-03 06:17:16'),
(1439, 6, 230, 1, 0, 0, 0, '2019-12-03 05:10:11', '2025-07-03 06:17:16'),
(1440, 2, 106, 1, 0, 0, 0, '2020-01-25 04:21:36', '2025-07-03 06:17:16'),
(1441, 2, 107, 1, 0, 0, 0, '2020-02-12 02:10:13', '2025-07-03 06:17:16'),
(1442, 2, 134, 1, 1, 1, 1, '2020-02-12 02:12:36', '2025-07-03 06:17:16'),
(1443, 1, 233, 1, 0, 0, 0, '2020-02-12 02:21:57', '2025-07-03 06:17:16'),
(1444, 2, 86, 1, 0, 0, 0, '2020-02-12 02:22:33', '2025-07-03 06:17:16'),
(1445, 3, 233, 1, 0, 0, 0, '2020-02-12 03:51:17', '2025-07-03 06:17:16'),
(1446, 1, 234, 1, 1, 1, 1, '2020-06-01 21:51:09', '2025-07-03 06:17:16'),
(1447, 1, 235, 1, 1, 1, 1, '2020-05-29 23:17:01', '2025-07-03 06:17:16'),
(1448, 1, 236, 1, 1, 1, 0, '2020-05-29 23:17:52', '2025-07-03 06:17:16'),
(1449, 1, 237, 1, 0, 1, 0, '2020-05-29 23:18:18', '2025-07-03 06:17:16'),
(1450, 1, 238, 1, 1, 1, 1, '2020-05-29 23:19:52', '2025-07-03 06:17:16'),
(1451, 1, 239, 1, 1, 1, 1, '2020-05-29 23:22:10', '2025-07-03 06:17:16'),
(1452, 2, 236, 1, 1, 1, 0, '2020-05-29 23:40:33', '2025-07-03 06:17:16'),
(1453, 2, 237, 1, 0, 1, 0, '2020-05-29 23:40:33', '2025-07-03 06:17:16'),
(1454, 2, 238, 1, 1, 1, 1, '2020-05-29 23:40:33', '2025-07-03 06:17:16'),
(1455, 2, 239, 1, 1, 1, 1, '2020-05-29 23:40:33', '2025-07-03 06:17:16'),
(1456, 2, 240, 1, 0, 0, 0, '2020-05-28 20:51:18', '2025-07-03 06:17:16'),
(1457, 2, 241, 1, 0, 0, 0, '2020-05-28 20:51:18', '2025-07-03 06:17:16'),
(1458, 1, 240, 1, 0, 0, 0, '2020-06-07 18:30:42', '2025-07-03 06:17:16'),
(1459, 1, 241, 1, 0, 0, 0, '2020-06-07 18:30:42', '2025-07-03 06:17:16'),
(1460, 1, 242, 1, 0, 0, 0, '2020-06-07 18:30:42', '2025-07-03 06:17:16'),
(1461, 2, 242, 1, 0, 0, 0, '2020-06-11 22:45:24', '2025-07-03 06:17:16'),
(1462, 3, 242, 1, 0, 0, 0, '2020-06-14 22:46:54', '2025-07-03 06:17:16'),
(1463, 6, 242, 1, 0, 0, 0, '2020-06-14 22:48:14', '2025-07-03 06:17:16'),
(1464, 1, 243, 1, 0, 0, 0, '2020-09-12 06:05:45', '2025-07-03 06:17:16'),
(1465, 1, 109, 1, 1, 0, 0, '2020-09-21 06:33:50', '2025-07-03 06:17:16'),
(1466, 1, 108, 1, 0, 1, 1, '2023-11-04 12:52:08', '2025-07-03 06:17:16'),
(1467, 1, 244, 1, 0, 0, 0, '2020-09-21 06:59:54', '2025-07-03 06:17:16'),
(1468, 1, 245, 1, 0, 0, 0, '2020-09-21 06:59:54', '2025-07-03 06:17:16'),
(1469, 1, 246, 1, 0, 0, 0, '2020-09-21 06:59:54', '2025-07-03 06:17:16'),
(1470, 1, 247, 1, 0, 0, 0, '2021-01-07 06:12:14', '2025-07-03 06:17:16'),
(1472, 2, 247, 1, 0, 0, 0, '2021-01-21 12:46:40', '2025-07-03 06:17:16'),
(1473, 1, 248, 1, 1, 1, 1, '2021-05-19 12:52:49', '2025-07-03 06:17:16'),
(1474, 1, 249, 1, 0, 0, 0, '2021-05-19 12:52:49', '2025-07-03 06:17:16'),
(1475, 2, 248, 1, 1, 1, 1, '2021-05-28 13:11:52', '2025-07-03 06:17:16'),
(1476, 3, 248, 1, 1, 1, 1, '2021-05-28 09:36:16', '2025-07-03 06:17:16'),
(1477, 3, 249, 1, 0, 0, 0, '2021-05-28 09:36:16', '2025-07-03 06:17:16'),
(1478, 6, 248, 1, 0, 0, 0, '2021-05-28 09:56:14', '2025-07-03 06:17:16'),
(1479, 6, 249, 1, 0, 0, 0, '2021-05-28 09:56:14', '2025-07-03 06:17:16'),
(1480, 2, 249, 1, 0, 0, 0, '2021-05-28 13:11:52', '2025-07-03 06:17:16'),
(1481, 1, 269, 1, 0, 0, 1, '2023-11-04 12:52:08', '2025-07-03 06:17:16'),
(1482, 2, 269, 1, 0, 0, 1, '2023-11-04 12:52:28', '2025-07-03 06:17:16'),
(1483, 3, 269, 1, 0, 0, 1, '2023-11-04 12:53:22', '2025-07-03 06:17:16'),
(1484, 4, 269, 1, 0, 0, 1, '2023-11-04 12:53:34', '2025-07-03 06:17:16'),
(1485, 6, 269, 1, 0, 0, 1, '2023-11-04 12:53:52', '2025-07-03 06:17:16'),
(1493, 8, 5, 1, 1, NULL, 1, '2025-07-18 05:20:19', '2025-07-18 05:20:21'),
(1494, 8, 6, 1, NULL, NULL, NULL, '2025-07-18 05:20:22', '2025-07-18 05:20:22'),
(1495, 8, 7, 1, 1, 1, 1, '2025-07-18 05:20:25', '2025-07-18 05:20:31'),
(1496, 8, 8, 1, 1, 1, 1, '2025-07-18 05:20:32', '2025-07-18 05:20:36'),
(1497, 8, 68, 1, NULL, NULL, NULL, '2025-07-18 05:20:37', '2025-07-18 05:20:37'),
(1498, 8, 69, 1, 1, 1, 1, '2025-07-18 05:20:38', '2025-07-18 05:20:41'),
(1499, 8, 70, 0, 0, 0, 0, '2025-07-18 05:20:42', '2025-07-18 05:20:52'),
(1500, 8, 71, 0, NULL, NULL, NULL, '2025-07-18 05:20:55', '2025-07-18 05:20:57'),
(1501, 8, 73, 1, NULL, NULL, NULL, '2025-07-18 05:20:58', '2025-07-18 05:20:58'),
(1502, 8, 74, 1, NULL, NULL, NULL, '2025-07-18 05:20:59', '2025-07-18 05:20:59'),
(1503, 8, 135, 1, NULL, 1, NULL, '2025-07-18 05:21:00', '2025-07-18 05:21:01'),
(1504, 8, 272, 1, NULL, NULL, NULL, '2025-07-18 05:21:02', '2025-07-18 05:21:02'),
(1505, 8, 156, 0, NULL, NULL, NULL, '2025-07-18 05:54:09', '2025-07-18 05:56:23');

-- --------------------------------------------------------

--
-- Table structure for table `room_types`
--

CREATE TABLE `room_types` (
  `id` int(11) NOT NULL,
  `room_type` varchar(200) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `route_pickup_point`
--

CREATE TABLE `route_pickup_point` (
  `id` int(11) NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `transport_route_id` int(11) NOT NULL,
  `pickup_point_id` int(11) NOT NULL,
  `fees` float(10,2) DEFAULT 0.00,
  `destination_distance` float(10,1) DEFAULT 0.0,
  `pickup_time` time DEFAULT NULL,
  `order_number` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `school_houses`
--

CREATE TABLE `school_houses` (
  `id` int(11) NOT NULL,
  `house_name` varchar(200) NOT NULL,
  `description` varchar(400) NOT NULL,
  `is_active` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sch_settings`
--

CREATE TABLE `sch_settings` (
  `id` int(11) NOT NULL,
  `base_url` varchar(500) DEFAULT NULL,
  `folder_path` text DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `biometric` int(11) DEFAULT 0,
  `biometric_device` text DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `lang_id` int(11) DEFAULT NULL,
  `languages` varchar(500) NOT NULL,
  `dise_code` varchar(50) DEFAULT NULL,
  `date_format` varchar(50) NOT NULL,
  `time_format` varchar(255) NOT NULL,
  `currency` varchar(50) NOT NULL,
  `currency_symbol` varchar(50) NOT NULL,
  `is_rtl` varchar(10) DEFAULT 'disabled',
  `is_duplicate_fees_invoice` varchar(100) DEFAULT '0',
  `collect_back_date_fees` int(11) NOT NULL,
  `single_page_print` int(11) DEFAULT 0,
  `timezone` varchar(30) DEFAULT 'UTC',
  `session_id` int(11) DEFAULT NULL,
  `cron_secret_key` varchar(100) NOT NULL,
  `currency_place` varchar(50) NOT NULL DEFAULT 'before_number',
  `currency_format` varchar(20) DEFAULT NULL,
  `class_teacher` varchar(100) NOT NULL,
  `start_month` varchar(40) NOT NULL,
  `attendence_type` int(11) NOT NULL DEFAULT 0,
  `low_attendance_limit` float(10,2) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `admin_logo` varchar(255) NOT NULL,
  `admin_small_logo` varchar(255) NOT NULL,
  `admin_login_page_background` varchar(255) NOT NULL,
  `user_login_page_background` varchar(255) NOT NULL,
  `theme` varchar(200) NOT NULL DEFAULT 'default.jpg',
  `fee_due_days` int(11) DEFAULT 0,
  `adm_auto_insert` int(11) NOT NULL DEFAULT 1,
  `adm_prefix` varchar(50) NOT NULL DEFAULT 'ssadm19/20',
  `adm_start_from` varchar(11) NOT NULL,
  `adm_no_digit` int(11) NOT NULL DEFAULT 6,
  `adm_update_status` int(11) NOT NULL DEFAULT 0,
  `staffid_auto_insert` int(11) NOT NULL DEFAULT 1,
  `staffid_prefix` varchar(100) NOT NULL DEFAULT 'staffss/19/20',
  `staffid_start_from` varchar(50) NOT NULL,
  `staffid_no_digit` int(11) NOT NULL DEFAULT 6,
  `staffid_update_status` int(11) NOT NULL DEFAULT 0,
  `is_active` varchar(255) DEFAULT 'no',
  `online_admission` int(11) DEFAULT 0,
  `online_admission_payment` varchar(50) NOT NULL,
  `online_admission_amount` float NOT NULL,
  `online_admission_instruction` text NOT NULL,
  `online_admission_conditions` text NOT NULL,
  `online_admission_application_form` varchar(255) DEFAULT NULL,
  `exam_result` int(11) NOT NULL,
  `is_blood_group` int(11) NOT NULL DEFAULT 1,
  `is_student_house` int(11) NOT NULL DEFAULT 1,
  `roll_no` int(11) NOT NULL DEFAULT 1,
  `category` int(11) NOT NULL,
  `religion` int(11) NOT NULL DEFAULT 1,
  `cast` int(11) NOT NULL DEFAULT 1,
  `mobile_no` int(11) NOT NULL DEFAULT 1,
  `student_email` int(11) NOT NULL DEFAULT 1,
  `admission_date` int(11) NOT NULL DEFAULT 1,
  `lastname` int(11) NOT NULL,
  `middlename` int(11) NOT NULL DEFAULT 1,
  `student_photo` int(11) NOT NULL DEFAULT 1,
  `student_height` int(11) NOT NULL DEFAULT 1,
  `student_weight` int(11) NOT NULL DEFAULT 1,
  `measurement_date` int(11) NOT NULL DEFAULT 1,
  `father_name` int(11) NOT NULL DEFAULT 1,
  `father_phone` int(11) NOT NULL DEFAULT 1,
  `father_occupation` int(11) NOT NULL DEFAULT 1,
  `father_pic` int(11) NOT NULL DEFAULT 1,
  `mother_name` int(11) NOT NULL DEFAULT 1,
  `mother_phone` int(11) NOT NULL DEFAULT 1,
  `mother_occupation` int(11) NOT NULL DEFAULT 1,
  `mother_pic` int(11) NOT NULL DEFAULT 1,
  `guardian_name` int(11) NOT NULL,
  `guardian_relation` int(11) NOT NULL DEFAULT 1,
  `guardian_phone` int(11) NOT NULL,
  `guardian_email` int(11) NOT NULL DEFAULT 1,
  `guardian_pic` int(11) NOT NULL DEFAULT 1,
  `guardian_occupation` int(11) NOT NULL,
  `guardian_address` int(11) NOT NULL DEFAULT 1,
  `current_address` int(11) NOT NULL DEFAULT 1,
  `permanent_address` int(11) NOT NULL DEFAULT 1,
  `route_list` int(11) NOT NULL DEFAULT 1,
  `hostel_id` int(11) NOT NULL DEFAULT 1,
  `bank_account_no` int(11) NOT NULL DEFAULT 1,
  `ifsc_code` int(11) NOT NULL,
  `bank_name` int(11) NOT NULL,
  `national_identification_no` int(11) NOT NULL DEFAULT 1,
  `local_identification_no` int(11) NOT NULL DEFAULT 1,
  `rte` int(11) NOT NULL DEFAULT 1,
  `previous_school_details` int(11) NOT NULL DEFAULT 1,
  `student_note` int(11) NOT NULL DEFAULT 1,
  `upload_documents` int(11) NOT NULL DEFAULT 1,
  `student_barcode` int(11) NOT NULL DEFAULT 1,
  `staff_designation` int(11) NOT NULL DEFAULT 1,
  `staff_department` int(11) NOT NULL DEFAULT 1,
  `staff_last_name` int(11) NOT NULL DEFAULT 1,
  `staff_father_name` int(11) NOT NULL DEFAULT 1,
  `staff_mother_name` int(11) NOT NULL DEFAULT 1,
  `staff_date_of_joining` int(11) NOT NULL DEFAULT 1,
  `staff_phone` int(11) NOT NULL DEFAULT 1,
  `staff_emergency_contact` int(11) NOT NULL DEFAULT 1,
  `staff_marital_status` int(11) NOT NULL DEFAULT 1,
  `staff_photo` int(11) NOT NULL DEFAULT 1,
  `staff_current_address` int(11) NOT NULL DEFAULT 1,
  `staff_permanent_address` int(11) NOT NULL DEFAULT 1,
  `staff_qualification` int(11) NOT NULL DEFAULT 1,
  `staff_work_experience` int(11) NOT NULL DEFAULT 1,
  `staff_note` int(11) NOT NULL DEFAULT 1,
  `staff_epf_no` int(11) NOT NULL DEFAULT 1,
  `staff_basic_salary` int(11) NOT NULL DEFAULT 1,
  `staff_contract_type` int(11) NOT NULL DEFAULT 1,
  `staff_work_shift` int(11) NOT NULL DEFAULT 1,
  `staff_work_location` int(11) NOT NULL DEFAULT 1,
  `staff_leaves` int(11) NOT NULL DEFAULT 1,
  `staff_account_details` int(11) NOT NULL DEFAULT 1,
  `staff_social_media` int(11) NOT NULL DEFAULT 1,
  `staff_upload_documents` int(11) NOT NULL DEFAULT 1,
  `staff_barcode` int(11) NOT NULL DEFAULT 1,
  `staff_notification_email` varchar(50) NOT NULL,
  `mobile_api_url` tinytext NOT NULL,
  `app_primary_color_code` varchar(20) DEFAULT NULL,
  `app_secondary_color_code` varchar(20) DEFAULT NULL,
  `admin_mobile_api_url` tinytext NOT NULL,
  `admin_app_primary_color_code` varchar(20) NOT NULL,
  `admin_app_secondary_color_code` varchar(20) NOT NULL,
  `app_logo` varchar(250) DEFAULT NULL,
  `student_profile_edit` int(11) NOT NULL DEFAULT 0,
  `start_week` varchar(10) NOT NULL,
  `my_question` int(11) NOT NULL,
  `superadmin_restriction` varchar(20) NOT NULL,
  `student_timeline` varchar(20) NOT NULL,
  `calendar_event_reminder` int(11) DEFAULT NULL,
  `event_reminder` varchar(20) NOT NULL,
  `student_login` varchar(100) DEFAULT NULL,
  `parent_login` varchar(100) DEFAULT NULL,
  `student_panel_login` int(11) NOT NULL DEFAULT 1,
  `parent_panel_login` int(11) NOT NULL DEFAULT 1,
  `is_student_feature_lock` int(11) NOT NULL DEFAULT 0,
  `maintenance_mode` int(11) NOT NULL DEFAULT 0,
  `lock_grace_period` int(11) NOT NULL DEFAULT 0,
  `is_offline_fee_payment` int(11) NOT NULL DEFAULT 0,
  `offline_bank_payment_instruction` text NOT NULL,
  `scan_code_type` varchar(50) NOT NULL DEFAULT 'barcode',
  `student_resume_download` int(11) NOT NULL DEFAULT 1,
  `download_admit_card` int(11) NOT NULL DEFAULT 0,
  `fees_discount` int(11) NOT NULL,
  `front_side_whatsapp` int(11) NOT NULL DEFAULT 0,
  `front_side_whatsapp_mobile` varchar(50) DEFAULT NULL,
  `front_side_whatsapp_from` time DEFAULT NULL,
  `front_side_whatsapp_to` time DEFAULT NULL,
  `admin_panel_whatsapp` int(11) NOT NULL DEFAULT 0,
  `admin_panel_whatsapp_mobile` varchar(50) DEFAULT NULL,
  `admin_panel_whatsapp_from` time DEFAULT NULL,
  `admin_panel_whatsapp_to` time DEFAULT NULL,
  `student_panel_whatsapp` int(11) NOT NULL DEFAULT 0,
  `student_panel_whatsapp_mobile` varchar(50) DEFAULT NULL,
  `student_panel_whatsapp_from` time DEFAULT NULL,
  `student_panel_whatsapp_to` time DEFAULT NULL,
  `saas_key` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `sch_settings`
--

INSERT INTO `sch_settings` (`id`, `base_url`, `folder_path`, `name`, `biometric`, `biometric_device`, `email`, `phone`, `address`, `lang_id`, `languages`, `dise_code`, `date_format`, `time_format`, `currency`, `currency_symbol`, `is_rtl`, `is_duplicate_fees_invoice`, `collect_back_date_fees`, `single_page_print`, `timezone`, `session_id`, `cron_secret_key`, `currency_place`, `currency_format`, `class_teacher`, `start_month`, `attendence_type`, `low_attendance_limit`, `image`, `admin_logo`, `admin_small_logo`, `admin_login_page_background`, `user_login_page_background`, `theme`, `fee_due_days`, `adm_auto_insert`, `adm_prefix`, `adm_start_from`, `adm_no_digit`, `adm_update_status`, `staffid_auto_insert`, `staffid_prefix`, `staffid_start_from`, `staffid_no_digit`, `staffid_update_status`, `is_active`, `online_admission`, `online_admission_payment`, `online_admission_amount`, `online_admission_instruction`, `online_admission_conditions`, `online_admission_application_form`, `exam_result`, `is_blood_group`, `is_student_house`, `roll_no`, `category`, `religion`, `cast`, `mobile_no`, `student_email`, `admission_date`, `lastname`, `middlename`, `student_photo`, `student_height`, `student_weight`, `measurement_date`, `father_name`, `father_phone`, `father_occupation`, `father_pic`, `mother_name`, `mother_phone`, `mother_occupation`, `mother_pic`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_email`, `guardian_pic`, `guardian_occupation`, `guardian_address`, `current_address`, `permanent_address`, `route_list`, `hostel_id`, `bank_account_no`, `ifsc_code`, `bank_name`, `national_identification_no`, `local_identification_no`, `rte`, `previous_school_details`, `student_note`, `upload_documents`, `student_barcode`, `staff_designation`, `staff_department`, `staff_last_name`, `staff_father_name`, `staff_mother_name`, `staff_date_of_joining`, `staff_phone`, `staff_emergency_contact`, `staff_marital_status`, `staff_photo`, `staff_current_address`, `staff_permanent_address`, `staff_qualification`, `staff_work_experience`, `staff_note`, `staff_epf_no`, `staff_basic_salary`, `staff_contract_type`, `staff_work_shift`, `staff_work_location`, `staff_leaves`, `staff_account_details`, `staff_social_media`, `staff_upload_documents`, `staff_barcode`, `staff_notification_email`, `mobile_api_url`, `app_primary_color_code`, `app_secondary_color_code`, `admin_mobile_api_url`, `admin_app_primary_color_code`, `admin_app_secondary_color_code`, `app_logo`, `student_profile_edit`, `start_week`, `my_question`, `superadmin_restriction`, `student_timeline`, `calendar_event_reminder`, `event_reminder`, `student_login`, `parent_login`, `student_panel_login`, `parent_panel_login`, `is_student_feature_lock`, `maintenance_mode`, `lock_grace_period`, `is_offline_fee_payment`, `offline_bank_payment_instruction`, `scan_code_type`, `student_resume_download`, `download_admit_card`, `fees_discount`, `front_side_whatsapp`, `front_side_whatsapp_mobile`, `front_side_whatsapp_from`, `front_side_whatsapp_to`, `admin_panel_whatsapp`, `admin_panel_whatsapp_mobile`, `admin_panel_whatsapp_from`, `admin_panel_whatsapp_to`, `student_panel_whatsapp`, `student_panel_whatsapp_mobile`, `student_panel_whatsapp_from`, `student_panel_whatsapp_to`, `saas_key`, `created_at`, `updated_at`) VALUES
(1, 'https://educare.sunrisegroupofinstitution.com/', '/home/u499940289/domains/sunrisegroupofinstitution.com/public_html/educare/', 'SUNRISE COLLEGE OF PHYSIOTHERAPY', 0, '', 'yourschoolemail@domain.com', 'Your School Phone', 'Your School Address', 4, '[\"4\"]', 'Your School Code', 'm/d/Y', '12-hour', '68', '$', 'disabled', '0,1', 1, 1, 'UTC', 21, '', 'after_number', '#,###.##', 'no', '4', 0, 0.00, '1.png', '1752642620-21098467566877343cdaf21!SUNRISE COLLEGE OF PHYSIOTHERAPY.png', '1752642758-1944051991687734c6dea4a!icon.jpg', '1663064530-1070210809632059d2b8b0b!1662796232-1721792380631c41c80d038!login_bg3.jpg', '1663065284-93117584263205cc49769c!1662964519-2099955753631ed327d0ffa!login_bg5.jpg', 'red.jpg', 60, 0, '', '', 0, 1, 0, '', '', 0, 1, 'no', 0, '', 0, '', '<p>&nbsp;Please enter your institution online admission terms & conditions here.</p>', NULL, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '', '', '#424242', '#eeeeee', '', '', '', '1752642629-1844011598687734455a5fd!SUNRISE COLLEGE OF PHYSIOTHERAPY.png', 0, 'Monday', 0, 'enabled', 'disabled', 0, 'disabled', '[\"admission_no\",\"mobile_number\",\"email\"]', '[\"mobile_number\",\"email\"]', 1, 1, 0, 0, 0, 1, '', 'qrcode', 1, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2022-12-30 06:44:20', '2025-07-16 09:19:24');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `section` varchar(60) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `section`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'A', 'no', '2025-07-16 05:49:16', '2025-07-16 05:49:16');

-- --------------------------------------------------------

--
-- Table structure for table `send_notification`
--

CREATE TABLE `send_notification` (
  `id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `date` date DEFAULT NULL,
  `attachment` varchar(500) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `visible_student` varchar(10) NOT NULL DEFAULT 'no',
  `visible_staff` varchar(10) NOT NULL DEFAULT 'no',
  `visible_parent` varchar(10) NOT NULL DEFAULT 'no',
  `created_by` varchar(60) DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL,
  `session` varchar(60) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES
(7, '2016-17', 'no', '2017-04-20 06:42:19', '0000-00-00 00:00:00'),
(11, '2017-18', 'no', '2017-04-20 06:41:37', '0000-00-00 00:00:00'),
(13, '2018-19', 'no', '2016-08-24 19:26:44', '0000-00-00 00:00:00'),
(14, '2019-20', 'no', '2016-08-24 19:26:55', '0000-00-00 00:00:00'),
(15, '2020-21', 'no', '2016-10-01 05:28:08', '0000-00-00 00:00:00'),
(16, '2021-22', 'no', '2016-10-01 05:28:20', '0000-00-00 00:00:00'),
(18, '2022-23', 'no', '2016-10-01 05:29:02', '0000-00-00 00:00:00'),
(19, '2023-24', 'no', '2016-10-01 05:29:10', '0000-00-00 00:00:00'),
(20, '2024-25', 'no', '2016-10-01 05:29:18', '0000-00-00 00:00:00'),
(21, '2025-26', 'no', '2016-10-01 05:30:10', '0000-00-00 00:00:00'),
(22, '2026-27', 'no', '2016-10-01 05:30:18', '0000-00-00 00:00:00'),
(23, '2027-28', 'no', '2016-10-01 05:30:24', '0000-00-00 00:00:00'),
(24, '2028-29', 'no', '2016-10-01 05:30:30', '0000-00-00 00:00:00'),
(25, '2029-30', 'no', '2016-10-01 05:30:37', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `share_contents`
--

CREATE TABLE `share_contents` (
  `id` int(11) NOT NULL,
  `send_to` varchar(50) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `share_date` date DEFAULT NULL,
  `valid_upto` date DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `share_content_for`
--

CREATE TABLE `share_content_for` (
  `id` int(11) NOT NULL,
  `group_id` varchar(20) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `user_parent_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `class_section_id` int(11) DEFAULT NULL,
  `share_content_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `share_upload_contents`
--

CREATE TABLE `share_upload_contents` (
  `id` int(11) NOT NULL,
  `upload_content_id` int(11) DEFAULT NULL,
  `share_content_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sidebar_menus`
--

CREATE TABLE `sidebar_menus` (
  `id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `permission_group_id` int(11) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `menu` varchar(500) DEFAULT NULL,
  `activate_menu` varchar(100) DEFAULT NULL,
  `lang_key` varchar(250) NOT NULL,
  `system_level` int(11) DEFAULT 0,
  `level` int(11) DEFAULT NULL,
  `sidebar_display` int(11) DEFAULT 0,
  `access_permissions` text DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `sidebar_menus`
--

INSERT INTO `sidebar_menus` (`id`, `product_name`, `permission_group_id`, `icon`, `menu`, `activate_menu`, `lang_key`, `system_level`, `level`, `sidebar_display`, `access_permissions`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '', 17, 'fa fa-ioxhost ftlayer', 'Front Office', 'front_office', 'front_office', 10, 1, 1, '(\'admission_enquiry\', \'can_view\') || (\'visitor_book\', \'can_view\') ||       (\'phon_call_log\', \'can_view\') ||  (\'postal_dispatch\', \'can_view\') ||       (\'postal_receive\', \'can_view\') || (\'complaint\', \'can_view\') ||(\'setup_font_office\', \'can_view\')', 1, '2023-01-10 12:49:51', '2025-07-03 06:17:16'),
(2, '', 1, 'fa fa-user-plus ftlayer', 'Student Information', 'student_information', 'student_information', 20, 2, 1, '(\'student\', \'can_view\') || (\'student\', \'can_add\') || (\'student_history\', \'can_view\') || (\'student_categories\', \'can_view\') || (\'student_houses\', \'can_view\') || (\'disable_student\', \'can_view\') || (\'disable_reason\', \'can_view\') || (\'online_admission\', \'can_view\') || (\'multiclass_student\', \'can_view\') || (\'disable_reason\', \'can_view\')', 1, '2023-01-10 12:49:51', '2025-07-03 06:17:16'),
(3, '', 2, 'fa fa-money ftlayer', 'Fees Collection', 'fees_collection', 'fees_collection', 30, 3, 1, '(\'collect_fees\', \'can_view\') || (\'search_fees_payment\', \'can_view\') || (\'search_due_fees\', \'can_view\') || (\'fees_statement\', \'can_view\') || (\'fees_carry_forward\', \'can_view\') || (\'fees_master\', \'can_view\') || (\'fees_group\', \'can_view\') || (\'fees_type\', \'can_view\') || (\'fees_discount\', \'can_view\') || (\'accountants\', \'can_view\')', 1, '2023-01-10 12:49:51', '2025-07-03 06:17:16'),
(4, '', 3, 'fa fa-usd ftlayer', 'Income', 'income', 'income', 40, 10, 1, '(\'income\', \'can_view\') || (\'search_income\', \'can_view\') || (\'income_head\', \'can_view\')', 1, '2023-01-10 12:49:37', '2025-07-03 06:17:16'),
(7, '', 4, 'fa fa-credit-card ftlayer', 'Expense', 'expense', 'expenses', 50, 11, 1, '(\'expense\', \'can_view\') || (\'search_expense\', \'can_view\') || (\'expense_head\', \'can_view\')', 1, '2023-01-10 12:49:37', '2025-07-03 06:17:16'),
(10, '', 5, 'fa fa-calendar-check-o ftlayer', 'Attendance', 'attendance', 'attendance', 60, 13, 1, '(\'student_attendance\', \'can_view\')', 1, '2023-01-10 12:49:37', '2025-07-03 06:17:16'),
(11, '', 6, 'fa fa-map-o ftlayer', 'Examinations', 'examinations', 'examinations', 70, 12, 1, '(\'exam_group\', \'can_view\') || (\'exam_result\', \'can_view\') || (\'design_admit_card\', \'can_view\') || (\'print_admit_card\', \'can_view\') || (\'design_marksheet\', \'can_view\') || (\'print_marksheet\', \'can_view\') || (\'marks_grade\', \'can_view\')', 1, '2023-01-10 12:49:37', '2025-07-03 06:17:16'),
(12, '', 23, 'fa fa-rss ftlayer', 'Online Examinations', 'online_examinations', 'online_examinations', 80, 14, 1, '(\'online_examination\', \'can_view\') ||  (\'question_bank\', \'can_view\'', 1, '2023-01-10 12:49:37', '2025-07-03 06:17:16'),
(13, '', 29, 'fa fa-list-alt ftlayer', 'Lesson Plan', 'lesson_plan', 'lesson_plan', 90, 16, 1, '(\'manage_lesson_plan\', \'can_view\') || (\'manage_syllabus_status\', \'can_view\') || (\'lesson\', \'can_view\') ||  (\'topic\', \'can_view\')||  (\'copy_old_lesson\', \'can_view\')', 1, '2023-01-10 12:49:37', '2025-07-03 06:17:16'),
(14, '', 7, 'fa fa-mortar-board ftlayer', 'Academics', 'academics', 'academics', 100, 15, 1, '(\'class_timetable\', \'can_view\') || (\'teachers_timetable\', \'can_view\') || (\'assign_class_teacher\', \'can_view\') || (\'promote_student\', \'can_view\') || (\'subject_group\', \'can_view\') || (\'section\', \'can_view\') || (\'subject\', \'can_view\') || (\'class\', \'can_view\') || (\'section\', \'can_view\')', 1, '2023-01-10 12:49:37', '2025-07-03 06:17:16'),
(15, '', 18, 'fa fa-sitemap ftlayer', 'Human Resource', 'human_resource', 'human_resource', 110, 17, 1, '(\'staff\', \'can_view\') || (\'approve_leave_request\', \'can_view\') || (\'apply_leave\', \'can_view\') || (\'leave_types\', \'can_view\') || (\'teachers_rating\', \'can_view\') || (\'department\', \'can_view\') || (\'designation\', \'can_view\') || (\'disable_staff\', \'can_view\')', 1, '2023-01-10 12:49:37', '2025-07-03 06:17:16'),
(16, '', 13, 'fa fa-bullhorn ftlayer', 'Communicate', 'communicate', 'communicate', 120, 18, 1, '(\'notice_board\', \'can_view\') || (\'email\', \'can_view\') || (\'sms\', \'can_view\') || (\'email_sms_log\', \'can_view\')', 1, '2023-01-10 12:49:37', '2025-07-03 06:17:16'),
(17, '', 8, 'fa fa-download ftlayer', 'Download Center', 'download_center', 'download_center', 130, 19, 1, '(\'upload_content\', \'can_view\') || (\'video_tutorial\', \'can_view\') || (\'content_type\', \'can_view\') || (\'content_share_list\', \'can_view\')', 1, '2023-01-10 12:49:37', '2025-07-03 06:17:16'),
(18, '', 19, 'fa fa-flask ftlayer', 'Homework', 'homework', 'homework', 140, 20, 1, '(\'homework\', \'can_view\') || (\'homework\', \'can_view\')', 1, '2023-01-10 12:49:37', '2025-07-03 06:17:16'),
(19, '', 9, 'fa fa-book ftlayer', 'Library', 'library', 'library', 150, 21, 1, '(\'books\', \'can_view\') || (\'issue_return\', \'can_view\') || (\'add_staff_member\', \'can_view\') || (\'add_student\', \'can_view\')', 1, '2023-01-10 12:49:37', '2025-07-03 06:17:16'),
(20, '', 10, 'fa fa-object-group ftlayer', 'Inventory', 'inventory', 'inventory', 160, 22, 1, '(\'issue_item\', \'can_view\') || (\'item_stock\', \'can_view\') || (\'item\', \'can_view\') || (\'item_category\', \'can_view\') || (\'item_category\', \'can_view\') || (\'store\', \'can_view\') || (\'supplier\', \'can_view\')', 1, '2023-01-10 12:49:37', '2025-07-03 06:17:16'),
(21, '', 11, 'fa fa-bus ftlayer', 'Transport', 'transport', 'transport', 170, 23, 1, '(\'routes\', \'can_view\') || (\'vehicle\', \'can_view\') || (\'assign_vehicle\', \'can_view\') || (\'transport_fees_master\', \'can_view\') || (\'pickup_point\', \'can_view\') || (\'route_pickup_point\', \'can_view\') || (\'student_transport_fees\', \'can_view\')      ', 1, '2023-01-10 12:49:37', '2025-07-03 06:17:16'),
(22, '', 12, 'fa fa-building-o ftlayer', 'Hostel', 'hostel', 'hostel', 180, 24, 1, '(\'hostel_rooms\', \'can_view\') || (\'room_type\', \'can_view\') || (\'hostel\', \'can_view\')', 1, '2023-01-10 12:49:37', '2025-07-03 06:17:16'),
(23, '', 20, 'fa fa-newspaper-o ftlayer', 'Certificate', 'certificate', 'certificate', 190, 25, 1, '(\'student_certificate\', \'can_view\') || (\'generate_certificate\', \'can_view\') || (\'student_id_card\', \'can_view\') || (\'generate_id_card\', \'can_view\') || (\'staff_id_card\', \'can_view\') || (\'generate_staff_id_card\', \'can_view\')', 1, '2023-01-10 12:49:37', '2025-07-03 06:17:16'),
(24, '', 16, 'fa fa-empire ftlayer', 'Front CMS', 'front_cms', 'front_cms', 200, 26, 1, '(\'event\', \'can_view\') || (\'gallery\', \'can_view\') || (\'notice\', \'can_view\') || (\'media_manager\', \'can_view\') || (\'pages\', \'can_view\') || (\'menus\', \'can_view\') || (\'banner_images\', \'can_view\')', 1, '2023-01-10 12:49:37', '2025-07-03 06:17:16'),
(25, '', 28, 'fa fa-universal-access ftlayer', 'Alumni', 'alumni', 'alumni', 210, 27, 1, '(\'manage_alumni\', \'can_view\') || (\'events\', \'can_view\')', 1, '2023-01-10 12:49:37', '2025-07-03 06:17:16'),
(26, '', 14, 'fa fa-line-chart ftlayer', 'Reports', 'reports', 'reports', 220, 28, 1, '(\'student_report\', \'can_view\') || (\'guardian_report\', \'can_view\') || (\'student_history\', \'can_view\') || (\'student_login_credential_report\', \'can_view\') || (\'class_subject_report\', \'can_view\') || (\'admission_report\', \'can_view\') || (\'sibling_report\', \'can_view\') || (\'evaluation_report\', \'can_view\') || (\'student_profile\', \'can_view\') || (\'fees_statement\', \'can_view\') || (\'balance_fees_report\', \'can_view\') || (\'fees_collection_report\', \'can_view\') || (\'online_fees_collection_report\', \'can_view\') || (\'income_report\', \'can_view\') || (\'expense_report\', \'can_view\') || (\'payroll_report\', \'can_view\') || (\'income_group_report\', \'can_view\') || (\'expense_group_report\', \'can_view\') || (\'attendance_report\', \'can_view\') || (\'staff_attendance_report\', \'can_view\') || (\'exam_marks_report\', \'can_view\') ||        (\'online_exam_wise_report\', \'can_view\') || (\'online_exams_report\', \'can_view\') || (\'online_exams_attempt_report\', \'can_view\') || (\'online_exams_rank_report\', \'can_view\') || (\'payroll_report\', \'can_view\') || (\'transport_report\', \'can_view\') || (\'hostel_report\', \'can_view\') || (\'audit_trail_report\', \'can_view\') || (\'user_log\', \'can_view\') || (\'book_issue_report\', \'can_view\') || (\'book_due_report\', \'can_view\') || (\'book_inventory_report\', \'can_view\') || (\'stock_report\', \'can_view\') ||      (\'add_item_report\', \'can_view\') || (\'issue_inventory_report\', \'can_view\') || (\'syllabus_status_report\', \'can_view\') ||    (\'teacher_syllabus_status_report\', \'can_view\') || (\'daily_collection_report\', \'can_view\') || (\'balance_fees_statement\', \'can_view\') || (\'balance_fees_report_with_remark\', \'can_view\')', 1, '2023-01-10 12:49:37', '2025-07-03 06:17:16'),
(27, '', 15, 'fa fa-gears ftlayer', 'System Settings', 'system_settings', 'system_setting', 230, 29, 1, '(\'general_setting\', \'can_view\') || (\'session_setting\', \'can_view\') || (\'notification_setting\', \'can_view\') || (\'sms_setting\', \'can_view\') || (\'email_setting\', \'can_view\') || (\'payment_methods\', \'can_view\') || (\'languages\', \'can_view\') || (\'user_status\', \'can_view\') || (\'backup_restore\', \'can_view\') || (\'print_header_footer\', \'can_view\') || (\'backup\', \'can_view\') || (\'front_cms_setting\', \'can_view\') || (\'custom_fields\', \'can_view\') || (\'system_fields\', \'can_view\') || (\'student_profile_update\', \'can_view\') || (\'currency\', \'can_view\') || (\'language_switcher\', \'can_view\') || (\'sidebar_menu\', \'can_view\') || (\'online_admission\', \'can_view\')\r\n', 1, '2023-01-10 12:49:37', '2025-07-03 06:17:16'),
(36, '', 30, 'fa fa-calendar', 'Annual Calendar', 'holiday', 'annual_calendar', 240, 16, 1, '(\'annual_calendar\', \'can_view\')\r\n', 1, '2025-01-18 09:15:03', '2025-07-03 06:17:16'),
(37, '', 31, 'fa fa-ioxhost ftlayer', 'Student CV', 'student_cv', 'student_cv', 1, 23, 1, '(\'download_cv\', \'can_view\') || (\'build_cv\', \'can_view\') || (\'resume_setting\', \'can_view\') || (\'student_resume_details\', \'can_view\')', 1, '2025-01-18 09:15:07', '2025-07-03 06:17:16');

-- --------------------------------------------------------

--
-- Table structure for table `sidebar_sub_menus`
--

CREATE TABLE `sidebar_sub_menus` (
  `id` int(11) NOT NULL,
  `sidebar_menu_id` int(11) DEFAULT NULL,
  `menu` varchar(500) DEFAULT NULL,
  `key` varchar(500) DEFAULT NULL,
  `lang_key` varchar(250) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `access_permissions` varchar(500) DEFAULT NULL,
  `permission_group_id` int(11) DEFAULT NULL,
  `activate_controller` varchar(100) DEFAULT NULL COMMENT 'income',
  `activate_methods` varchar(500) DEFAULT NULL COMMENT 'index,edit',
  `addon_permission` varchar(100) DEFAULT NULL,
  `is_active` int(11) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `sidebar_sub_menus`
--

INSERT INTO `sidebar_sub_menus` (`id`, `sidebar_menu_id`, `menu`, `key`, `lang_key`, `url`, `level`, `access_permissions`, `permission_group_id`, `activate_controller`, `activate_methods`, `addon_permission`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 'admission_enquiry', NULL, 'admission_enquiry', 'admin/enquiry', 1, '(\'admission_enquiry\', \'can_view\')', NULL, 'enquiry', 'index', NULL, 1, '2022-07-11 12:04:46', '2025-07-03 06:17:16'),
(2, 1, 'visitor_book', NULL, 'visitor_book', 'admin/visitors', 2, '(\'visitor_book\', \'can_view\')', NULL, 'visitors', 'index', NULL, 1, '2022-07-11 12:04:46', '2025-07-03 06:17:16'),
(3, 1, 'phone_call_log', NULL, 'phone_call_log', 'admin/generalcall', 3, '(\'phone_call_log\', \'can_view\')', NULL, 'generalcall', 'index,edit', NULL, 1, '2022-05-10 11:40:07', '2025-07-03 06:17:16'),
(4, 1, 'postal_dispatch', NULL, 'postal_dispatch', 'admin/dispatch', 4, '(\'postal_dispatch\', \'can_view\')', NULL, 'dispatch', 'index,editdispatch', NULL, 1, '2022-05-10 11:40:09', '2025-07-03 06:17:16'),
(5, 1, 'postal_receive', NULL, 'postal_receive', 'admin/receive', 5, '(\'postal_receive\', \'can_view\')', NULL, 'receive', 'index,editreceive', NULL, 1, '2022-05-10 11:40:09', '2025-07-03 06:17:16'),
(6, 1, 'complain', NULL, 'complain', 'admin/complaint', 6, '(\'complaint\', \'can_view\')', NULL, 'complaint', 'index,edit', NULL, 1, '2022-05-10 11:40:00', '2025-07-03 06:17:16'),
(7, 1, 'setup_front_office', NULL, 'setup_front_office', 'admin/visitorspurpose', 7, '(\'setup_font_office\', \'can_view\')', NULL, 'visitorspurpose', 'index,edit', NULL, 1, '2022-04-18 15:43:15', '2025-07-03 06:17:16'),
(9, 2, 'student_admission', NULL, 'student_admission', 'student/create', 2, '(\'student\', \'can_add\')', NULL, 'student', 'create,import', NULL, 1, '2022-08-30 07:51:02', '2025-07-03 06:17:16'),
(10, 2, 'online_admission', NULL, 'online_admission', 'admin/onlinestudent', 3, '(\'online_admission\', \'can_view\')', 27, 'onlinestudent', 'index,edit', NULL, 1, '2022-05-10 11:40:30', '2025-07-03 06:17:16'),
(11, 2, 'disable_student', NULL, 'disabled_students', 'student/disablestudentslist', 4, '(\'disable_student\', \'can_view\')', NULL, 'student', 'disablestudentslist', '', 1, '2022-07-23 06:49:00', '2025-07-03 06:17:16'),
(12, 3, 'collect_fees', NULL, 'collect_fees', 'studentfee', 1, '(\'collect_fees\', \'can_view\')', NULL, 'studentfee', 'index,addfee', NULL, 1, '2022-07-23 06:53:34', '2025-07-03 06:17:16'),
(13, 3, 'search_fees_payment', NULL, 'search_fees_payment', 'studentfee/searchpayment', 3, '(\'search_fees_payment\', \'can_view\')', NULL, 'studentfee', 'searchpayment', NULL, 1, '2022-08-08 06:03:40', '2025-07-03 06:17:16'),
(14, 3, 'search_due_fees', NULL, 'search_due_fees', 'studentfee/feesearch', 4, '(\'search_due_fees\', \'can_view\')', NULL, 'studentfee', 'feesearch', NULL, 1, '2022-08-08 06:03:38', '2025-07-03 06:17:16'),
(15, 3, 'fees_master', NULL, 'fees_master', 'admin/feemaster', 5, '(\'fees_master\', \'can_view\')', NULL, 'feemaster', 'index,assign,edit', NULL, 1, '2022-09-24 07:35:55', '2025-07-03 06:17:16'),
(16, 3, 'fees_group', NULL, 'fees_group', 'admin/feegroup', 6, '(\'fees_group\', \'can_view\')', NULL, 'feegroup', 'index,edit', NULL, 1, '2022-08-08 06:03:32', '2025-07-03 06:17:16'),
(17, 4, 'add_income', NULL, 'add_income', 'admin/income', 1, '(\'income\', \'can_view\')', NULL, 'income', 'index,edit', NULL, 1, '2022-07-23 07:03:40', '2025-07-03 06:17:16'),
(18, 4, 'search_income', NULL, 'search_income', 'admin/income/incomesearch', 2, '(\'search_income\', \'can_view\')', NULL, 'income', 'incomesearch', NULL, 1, '2022-07-23 07:10:13', '2025-07-03 06:17:16'),
(19, 4, 'income_head', NULL, 'income_head', 'admin/incomehead', 3, '(\'income_head\', \'can_view\')', NULL, 'incomehead', 'index,edit', NULL, 1, '2022-07-23 07:11:11', '2025-07-03 06:17:16'),
(20, 2, 'student_details', NULL, 'student_details', 'student/search', 1, '(\'student\', \'can_view\')', NULL, 'student', 'search,view,edit', NULL, 1, '2022-08-30 07:51:05', '2025-07-03 06:17:16'),
(21, 2, 'multi_class_student', NULL, 'multi_class_student', 'student/multiclass', 5, '(\'multi_class_student\', \'can_view\')', 26, 'student', 'multiclass', NULL, 1, '2022-07-23 06:48:37', '2025-07-03 06:17:16'),
(22, 2, 'bulk_delete', NULL, 'bulk_delete', 'student/bulkdelete', 6, '(\'student\', \'can_delete\')', NULL, 'student', 'bulkdelete', NULL, 1, '2022-07-23 06:48:11', '2025-07-03 06:17:16'),
(23, 2, 'student_categories', NULL, 'student_categories', 'category', 7, '(\'student_categories\', \'can_view\')', NULL, 'category', 'index,edit', NULL, 1, '2022-07-23 06:47:24', '2025-07-03 06:17:16'),
(24, 2, 'student_house', NULL, 'student_house', 'admin/schoolhouse', 8, '(\'student_houses\', \'can_view\')', NULL, 'schoolhouse', 'index,edit', NULL, 1, '2022-07-23 06:49:59', '2025-07-03 06:17:16'),
(25, 2, 'disable_reason', NULL, 'disable_reason', 'admin/disable_reason', 9, '(\'disable_reason\', \'can_view\')', NULL, 'disable_reason', 'index,edit', NULL, 1, '2022-07-23 06:50:41', '2025-07-03 06:17:16'),
(29, 7, 'add_expense', NULL, 'add_expense', 'admin/expense', 1, '(\'expense\', \'can_view\')', NULL, 'expense', 'index,edit', '', 1, '2022-07-23 07:12:25', '2025-07-03 06:17:16'),
(32, 3, 'fees_type', NULL, 'fees_type', 'admin/feetype', 7, '(\'fees_type\', \'can_view\')', NULL, 'feetype', 'index,edit', '', 1, '2022-08-08 06:03:29', '2025-07-03 06:17:16'),
(33, 10, 'attendance_by_date', 'attendance_by_date', 'attendance_by_date', 'admin/stuattendence/attendencereport', 3, '(\'attendance_by_date\', \'can_view\')', NULL, 'stuattendence', 'attendencereport', '', 1, '2022-10-20 05:50:25', '2025-07-03 06:17:16'),
(34, 10, 'student_attendance', 'student_attendance', 'student_attendance', 'admin/stuattendence', 1, '(\'student_attendance\', \'can_view\')', NULL, 'stuattendence', 'index', '', 1, '2022-10-20 05:50:25', '2025-07-03 06:17:16'),
(35, 10, 'approve_leave', 'approve_leave', 'approve_leave', 'admin/approve_leave', 2, '(\'approve_leave\', \'can_view\')', NULL, 'approve_leave', 'index', '', 1, '2022-10-14 16:16:44', '2025-07-03 06:17:16'),
(36, 11, 'exam_group', NULL, 'exam_group', 'admin/examgroup', 1, '(\'exam_group\', \'can_view\')', NULL, 'examgroup', 'index,addexam,edit', '', 1, '2022-07-23 07:23:01', '2025-07-03 06:17:16'),
(37, 11, 'exam_schedule', NULL, 'exam_schedule', 'admin/exam_schedule', 2, '(\'student_attendance\', \'can_view\')', NULL, 'exam_schedule', 'index', '', 1, '2022-05-16 07:01:34', '2025-07-03 06:17:16'),
(38, 11, 'exam_result', NULL, 'exam_result', 'admin/examresult', 3, '(\'exam_result\', \'can_view\')', NULL, 'examresult', 'index', '', 1, '2022-05-16 07:01:34', '2025-07-03 06:17:16'),
(39, 11, 'design_admit_card', NULL, 'design_admit_card', 'admin/admitcard', 4, '(\'design_admit_card\', \'can_view\')', NULL, 'admitcard', 'index,edit', '', 1, '2022-07-23 07:28:02', '2025-07-03 06:17:16'),
(40, 11, 'print_admit_card', NULL, 'print_admit_card', 'admin/examresult/admitcard', 5, '(\'print_admit_card\', \'can_view\')', NULL, 'examresult', 'admitcard', '', 1, '2022-05-16 07:01:34', '2025-07-03 06:17:16'),
(41, 11, 'design_marksheet', NULL, 'design_marksheet', 'admin/marksheet', 6, '(\'design_marksheet\', \'can_view\')', NULL, 'marksheet', 'index,edit', '', 1, '2022-07-23 07:35:35', '2025-07-03 06:17:16'),
(42, 11, 'print_marksheet', NULL, 'print_marksheet', 'admin/examresult/marksheet', 7, '(\'print_marksheet\', \'can_view\')', NULL, 'examresult', 'marksheet', '', 1, '2022-05-16 07:01:38', '2025-07-03 06:17:16'),
(43, 11, 'marks_grade', NULL, 'marks_grade', 'admin/grade', 8, '(\'marks_grade\', \'can_view\')', NULL, 'grade', 'index,edit', '', 1, '2022-07-23 07:37:15', '2025-07-03 06:17:16'),
(44, 11, 'marks_division', NULL, 'marks_division', 'admin/marksdivision', 9, '(\'marks_division\', \'can_view\')', NULL, 'marksdivision', 'index,edit', '', 1, '2022-08-25 06:04:26', '2025-07-03 06:17:16'),
(45, 12, 'online_exam', NULL, 'online_exam', 'admin/onlineexam', 1, '(\'online_examination\', \'can_view\')', NULL, 'onlineexam', 'index,evalution,assign', '', 1, '2022-08-30 13:03:45', '2025-07-03 06:17:16'),
(46, 12, 'question_bank', NULL, 'question_bank', 'admin/question', 1, '(\'question_bank\', \'can_view\')', NULL, 'question', 'index,read', '', 1, '2022-08-30 11:03:13', '2025-07-03 06:17:16'),
(47, 13, 'manage_lesson_plan', NULL, 'manage_lesson_plan', 'admin/syllabus', 2, '(\'manage_lesson_plan\', \'can_view\')', NULL, 'syllabus', 'index', '', 1, '2022-09-03 16:59:31', '2025-07-03 06:17:16'),
(48, 13, 'manage_syllabus_status', NULL, 'manage_syllabus_status', 'admin/syllabus/status', 3, '(\'manage_syllabus_status\', \'can_view\')', NULL, 'syllabus', 'status', '', 1, '2022-09-03 16:59:35', '2025-07-03 06:17:16'),
(49, 13, 'lesson', NULL, 'lesson', 'admin/lessonplan/lesson', 4, '(\'lesson\', \'can_view\')', NULL, 'lessonplan', 'lesson,editlesson', '', 1, '2022-09-15 11:30:55', '2025-07-03 06:17:16'),
(50, 13, 'topic', NULL, 'topic', 'admin/lessonplan/topic', 5, '(\'topic\', \'can_view\')', NULL, 'lessonplan', 'topic,edittopic', '', 1, '2022-09-15 11:30:24', '2025-07-03 06:17:16'),
(51, 14, 'class_timetable', NULL, 'class_timetable', 'admin/timetable/classreport', 1, '(\'class_timetable\', \'can_view\')', NULL, 'timetable', 'classreport,create', '', 1, '2022-07-23 09:01:22', '2025-07-03 06:17:16'),
(52, 14, 'teachers_timetable', NULL, 'teachers_timetable', 'admin/timetable/mytimetable', 2, '(\'teachers_time_table\', \'can_view\')', NULL, 'timetable', 'mytimetable', '', 1, '2022-07-20 12:22:59', '2025-07-03 06:17:16'),
(53, 14, 'assign_class_teacher', NULL, 'assign_class_teacher', 'admin/teacher/assign_class_teacher', 3, '(\'assign_class_teacher\', \'can_view\')', NULL, 'teacher', 'assign_class_teacher,update_class_teacher', '', 1, '2022-07-23 09:00:19', '2025-07-03 06:17:16'),
(54, 14, 'promote_students', NULL, 'promote_students', 'admin/stdtransfer', 4, '(\'promote_student\', \'can_view\')', NULL, 'stdtransfer', 'index', '', 1, '2022-07-20 12:22:54', '2025-07-03 06:17:16'),
(55, 14, 'subject_group', NULL, 'subject_group', 'admin/subjectgroup', 5, '(\'subject_group\', \'can_view\')', NULL, 'subjectgroup', 'index,edit', '', 1, '2022-07-23 08:59:42', '2025-07-03 06:17:16'),
(56, 14, 'subjects', NULL, 'subjects', 'admin/subject', 6, '(\'subject\', \'can_view\')', NULL, 'subject', 'index,edit', '', 1, '2022-07-23 08:59:20', '2025-07-03 06:17:16'),
(57, 14, 'class', NULL, 'class', 'classes', 7, '(\'class\', \'can_view\')', NULL, 'classes', 'index,edit', '', 1, '2022-07-23 08:58:49', '2025-07-03 06:17:16'),
(58, 14, 'sections', NULL, 'sections', 'sections', 8, '(\'section\', \'can_view\')', NULL, 'sections', 'index,edit', '', 1, '2022-07-23 08:58:21', '2025-07-03 06:17:16'),
(59, 15, 'staff_directory', NULL, 'staff_directory', 'admin/staff', 1, '(\'staff\', \'can_view\')', NULL, 'staff', 'index,edit,profile,create', '', 1, '2022-10-12 09:13:24', '2025-07-03 06:17:16'),
(60, 15, 'staff_attendance', NULL, 'staff_attendance', 'admin/staffattendance', 1, '(\'staff_attendance\', \'can_view\')', NULL, 'staffattendance', 'index', '', 1, '2022-09-07 12:04:15', '2025-07-03 06:17:16'),
(61, 15, 'payroll', NULL, 'payroll', 'admin/payroll', 1, '(\'staff_payroll\', \'can_view\')', NULL, 'payroll', 'index,edit,create', '', 1, '2022-08-16 11:58:44', '2025-07-03 06:17:16'),
(62, 15, 'approve_leave_request', NULL, 'approve_leave_request', 'admin/leaverequest/leaverequest', 1, '(\'approve_leave_request\', \'can_view\')', NULL, 'leaverequest', 'leaverequest', '', 1, '2022-05-16 09:04:33', '2025-07-03 06:17:16'),
(74, 15, 'apply_leave', NULL, 'apply_leave', 'admin/staff/leaverequest', 1, '(\'apply_leave\', \'can_view\')', NULL, 'staff', 'leaverequest', '', 1, '2022-05-16 09:11:41', '2025-07-03 06:17:16'),
(75, 15, 'leave_type', NULL, 'leave_type', 'admin/leavetypes', 1, '(\'leave_types\', \'can_view\')', NULL, 'leavetypes', 'index,leaveedit,createleavetype', '', 1, '2022-10-18 11:19:22', '2025-07-03 06:17:16'),
(76, 15, 'teachers_rating', NULL, 'teachers_rating', 'admin/staff/rating', 1, '(\'teachers_rating\', \'can_view\')', NULL, 'staff', 'rating', '', 1, '2022-05-16 09:15:31', '2025-07-03 06:17:16'),
(77, 15, 'department', NULL, 'department', 'admin/department/department', 1, '(\'department\', \'can_view\')', NULL, 'department', 'department,departmentedit', '', 1, '2022-07-23 09:14:20', '2025-07-03 06:17:16'),
(78, 15, 'designation', NULL, 'designation', 'admin/designation/designation', 1, '(\'designation\', \'can_view\')', NULL, 'designation', 'designation,designationedit', '', 1, '2022-07-23 09:15:04', '2025-07-03 06:17:16'),
(79, 15, 'disabled_staff', NULL, 'disabled_staff', 'admin/staff/disablestafflist', 1, '(\'disable_staff\', \'can_view\')', NULL, 'staff', 'disablestafflist', '', 1, '2022-09-13 07:46:56', '2025-07-03 06:17:16'),
(80, 16, 'notice_board', NULL, 'notice_board', 'admin/notification', 1, '(\'notice_board\', \'can_view\')', NULL, 'notification', 'index,edit,add', '', 1, '2022-07-23 09:17:24', '2025-07-03 06:17:16'),
(81, 16, 'send_email', NULL, 'send_email', 'admin/mailsms/compose', 2, '(\'email\', \'can_view\')', NULL, 'mailsms', 'compose', '', 1, '2022-09-02 16:52:46', '2025-07-03 06:17:16'),
(82, 16, 'send_sms', NULL, 'send_sms', 'admin/mailsms/compose_sms', 3, '(\'sms\', \'can_view\')', NULL, 'mailsms', 'compose_sms', '', 1, '2022-09-02 16:52:46', '2025-07-03 06:17:16'),
(83, 16, 'email_sms_log', NULL, 'email_sms_log', 'admin/mailsms/index', 4, '(\'email_sms_log\', \'can_view\')', NULL, 'mailsms', 'index', '', 1, '2022-09-02 16:52:50', '2025-07-03 06:17:16'),
(84, 16, 'schedule_email_sms_log', NULL, 'schedule_email_sms_log', 'admin/mailsms/schedule', 5, '(\'schedule_email_sms_log\', \'can_view\')', NULL, 'mailsms', 'schedule,edit_schedule', '', 1, '2022-09-13 07:07:38', '2025-07-03 06:17:16'),
(85, 16, 'login_credentials_send', NULL, 'login_credentials_send', 'student/bulkmail', 6, '(\'login_credentials_send\', \'can_view\')', NULL, 'student', 'bulkmail', '', 1, '2022-09-02 16:52:46', '2025-07-03 06:17:16'),
(86, 16, 'email_template', NULL, 'email_template', 'admin/mailsms/email_template', 7, '(\'email_template\', \'can_view\')', NULL, 'mailsms', 'email_template', '', 1, '2022-09-02 16:52:46', '2025-07-03 06:17:16'),
(87, 16, 'sms_template', NULL, 'sms_template', 'admin/mailsms/sms_template', 8, '(\'sms_template\', \'can_view\')', NULL, 'mailsms', 'sms_template', '', 1, '2022-09-02 16:52:46', '2025-07-03 06:17:16'),
(88, 17, 'content_type', NULL, 'content_type', 'admin/contenttype', 3, '(\'content_type\', \'can_view\')', NULL, 'contenttype', 'index,edit', '', 1, '2022-07-23 09:24:45', '2025-07-03 06:17:16'),
(89, 17, 'content_share_list', NULL, 'content_share_list', 'admin/content/list', 2, '(\'content_share_list\', \'can_view\')', NULL, 'content', 'list', '', 1, '2022-07-22 10:07:17', '2025-07-03 06:17:16'),
(90, 17, 'upload_content', NULL, 'upload_content', 'admin/content/upload', 1, '(\'upload_content\', \'can_view\')', NULL, 'content', 'upload', '', 1, '2022-07-22 10:07:17', '2025-07-03 06:17:16'),
(91, 17, 'video_tutorial', NULL, 'video_tutorial', 'admin/video_tutorial', 4, '(\'video_tutorial\', \'can_view\')', NULL, 'video_tutorial', 'index', '', 1, '2022-07-22 10:07:17', '2025-07-03 06:17:16'),
(92, 18, 'add_homework', NULL, 'add_homework', 'homework', 1, '(\'homework\', \'can_view\')', NULL, 'homework', 'index', '', 1, '2022-06-25 09:50:01', '2025-07-03 06:17:16'),
(93, 18, 'daily_assignment', NULL, 'daily_assignment', 'homework/dailyassignment', 2, '(\'daily_assignment\', \'can_view\')', NULL, 'homework', 'dailyassignment', '', 1, '2022-07-23 09:27:23', '2025-07-03 06:17:16'),
(94, 19, 'book_list', NULL, 'book_list', 'admin/book/getall', 1, '(\'books\', \'can_view\')', NULL, 'book', 'getall,index,edit,import,issue_returnreport', '', 1, '2022-09-07 11:45:50', '2025-07-03 06:17:16'),
(95, 19, 'issue_return', NULL, 'issue_return', 'admin/member', 1, '(\'issue_return\', \'can_view\')', NULL, 'member', 'index,issue', '', 1, '2022-07-23 09:32:48', '2025-07-03 06:17:16'),
(96, 19, 'add_student', NULL, 'add_student', 'admin/member/student', 1, '(\'add_student\', \'can_view\')', NULL, 'member', 'student', '', 1, '2022-05-16 11:22:54', '2025-07-03 06:17:16'),
(97, 19, 'add_staff_member', NULL, 'add_staff_member', 'admin/member/teacher', 1, '(\'add_staff_member\', \'can_view\')', NULL, 'member', 'teacher', '', 1, '2022-05-16 11:31:43', '2025-07-03 06:17:16'),
(98, 7, 'search_expense', NULL, 'search_expense', 'admin/expense/expensesearch', 1, '(\'search_expense\', \'can_view\')', NULL, 'expense', 'expensesearch', '', 1, '2022-05-16 11:36:09', '2025-07-03 06:17:16'),
(99, 7, 'expense_head', NULL, 'expense_head', 'admin/expensehead', 1, '(\'expense_head\', \'can_view\')', NULL, 'expensehead', 'index,edit', '', 1, '2022-07-23 07:16:17', '2025-07-03 06:17:16'),
(100, 20, 'issue_item', NULL, 'issue_item', 'admin/issueitem', 1, '(\'issue_item\', \'can_view\')', NULL, 'issueitem', 'index,create', '', 1, '2022-07-23 09:35:03', '2025-07-03 06:17:16'),
(101, 20, 'add_item_stock', NULL, 'add_item_stock', 'admin/itemstock', 1, '(\'item_stock\', \'can_view\')', NULL, 'itemstock', 'index,edit', '', 1, '2022-07-23 09:36:17', '2025-07-03 06:17:16'),
(102, 20, 'add_item', NULL, 'add_item', 'admin/item', 1, '(\'item\', \'can_view\')', NULL, 'item', 'index,edit', '', 1, '2022-07-23 09:36:56', '2025-07-03 06:17:16'),
(103, 20, 'item_category', NULL, 'item_category', 'admin/itemcategory', 1, '(\'item_category\', \'can_view\')', NULL, 'itemcategory', 'index,edit', '', 1, '2022-07-23 09:37:12', '2025-07-03 06:17:16'),
(104, 20, 'item_store', NULL, 'item_store', 'admin/itemstore', 1, '(\'store\', \'can_view\')', NULL, 'itemstore', 'index,edit,create', '', 1, '2022-09-16 11:49:03', '2025-07-03 06:17:16'),
(105, 20, 'item_supplier', NULL, 'item_supplier', 'admin/itemsupplier', 1, '(\'supplier\', \'can_view\')', NULL, 'itemsupplier', 'index,edit,create', '', 1, '2022-07-23 09:38:22', '2025-07-03 06:17:16'),
(106, 21, 'fees_master', NULL, 'fees_master', 'admin/transport/feemaster', 1, '(\'transport_fees_master\', \'can_view\')', NULL, 'transport', 'feemaster', '', 1, '2023-03-31 05:33:14', '2025-07-03 06:17:16'),
(107, 21, 'pickup_point', NULL, 'pickup_point', 'admin/pickuppoint', 1, '(\'pickup_point\', \'can_view\')', NULL, 'pickuppoint', 'index', '', 1, '2023-03-31 05:24:24', '2025-07-03 06:17:16'),
(108, 21, 'routes', NULL, 'routes', 'admin/route', 1, '(\'routes\', \'can_view\')', NULL, 'route', 'index,edit', '', 1, '2022-09-17 06:21:23', '2025-07-03 06:17:16'),
(109, 21, 'vehicles', NULL, 'vehicles', 'admin/vehicle', 1, '(\'vehicle\', \'can_view\')', NULL, 'vehicle', 'index', '', 1, '2022-05-16 12:29:35', '2025-07-03 06:17:16'),
(110, 21, 'assign_vehicle', NULL, 'assign_vehicle', 'admin/vehroute', 1, '(\'assign_vehicle\',\'can_view\')', NULL, 'vehroute', 'index,edit', '', 1, '2022-10-19 07:06:08', '2025-07-03 06:17:16'),
(111, 21, 'route_pickup_point', NULL, 'route_pickup_point', 'admin/pickuppoint/assign', 1, '(\'route_pickup_point\', \'can_view\')', NULL, 'pickuppoint', 'assign', '', 1, '2023-03-31 05:25:08', '2025-07-03 06:17:16'),
(112, 21, 'student_transport_fees', NULL, 'student_transport_fees', 'admin/pickuppoint/student_fees', 1, '(\'student_transport_fees\', \'can_view\')', NULL, 'pickuppoint', 'student_fees', '', 1, '2023-03-31 05:25:43', '2025-07-03 06:17:16'),
(113, 22, 'hostel_rooms', NULL, 'hostel_rooms', 'admin/hostelroom', 1, '(\'hostel_rooms\', \'can_view\')', NULL, 'hostelroom', 'index,edit', '', 1, '2022-07-23 10:27:48', '2025-07-03 06:17:16'),
(114, 22, 'room_type', NULL, 'room_type', 'admin/roomtype', 2, '(\'room_type\', \'can_view\')', NULL, 'roomtype', 'index,edit', '', 1, '2022-07-23 10:32:14', '2025-07-03 06:17:16'),
(115, 22, 'hostel', NULL, 'hostel', 'admin/hostel', 3, '(\'hostel\', \'can_view\')', NULL, 'hostel', 'index,edit', '', 1, '2022-07-23 10:32:39', '2025-07-03 06:17:16'),
(116, 23, 'student_certificate', NULL, 'student_certificate', 'admin/certificate', 1, '(\'student_certificate\', \'can_view\')', NULL, 'certificate', 'index,edit', '', 1, '2022-07-23 10:44:30', '2025-07-03 06:17:16'),
(117, 23, 'generate_certificate', NULL, 'generate_certificate', 'admin/generatecertificate', 1, '(\'generate_certificate\', \'can_view\')', NULL, 'generatecertificate', 'index,search', '', 1, '2022-07-23 10:46:16', '2025-07-03 06:17:16'),
(118, 23, 'student_id_card', NULL, 'student_id_card', 'admin/studentidcard', 1, '(\'student_id_card\', \'can_view\')', NULL, 'studentidcard', 'index,edit', '', 1, '2022-07-23 10:47:01', '2025-07-03 06:17:16'),
(119, 23, 'generate_id_card', NULL, 'generate_id_card', 'admin/generateidcard/search', 1, '(\'generate_id_card\', \'can_view\')', NULL, 'generateidcard', 'search', '', 1, '2022-05-18 05:35:13', '2025-07-03 06:17:16'),
(120, 23, 'staff_id_card', NULL, 'staff_id_card', 'admin/staffidcard', 1, '(\'staff_id_card\', \'can_view\')', NULL, 'staffidcard', 'index,edit', '', 1, '2022-07-23 10:48:13', '2025-07-03 06:17:16'),
(121, 23, 'generate_staff_id_card', NULL, 'generate_staff_id_card', 'admin/generatestaffidcard', 1, '(\'generate_staff_id_card\', \'can_view\')', NULL, 'generatestaffidcard', 'index,search', '', 1, '2022-07-23 10:49:06', '2025-07-03 06:17:16'),
(122, 24, 'event', NULL, 'event', 'admin/front/events', 1, '(\'event\', \'can_view\')', NULL, 'events', 'index,edit,create', '', 1, '2022-07-23 10:51:51', '2025-07-03 06:17:16'),
(123, 24, 'gallery', NULL, 'gallery', 'admin/front/gallery', 1, '(\'gallery\', \'can_view\')', NULL, 'gallery', 'index,edit,create', '', 1, '2022-07-23 10:52:22', '2025-07-03 06:17:16'),
(124, 24, 'news', NULL, 'news', 'admin/front/notice', 1, '(\'notice\', \'can_view\')', NULL, 'notice', 'index,edit,create', '', 1, '2022-07-23 10:54:23', '2025-07-03 06:17:16'),
(125, 24, 'media_manager', NULL, 'media_manager', 'admin/front/media', 1, '(\'media_manager\', \'can_view\')', NULL, 'media', 'index', '', 1, '2022-05-18 06:03:32', '2025-07-03 06:17:16'),
(126, 24, 'pages', NULL, 'pages', 'admin/front/page', 1, '(\'pages\', \'can_view\')', NULL, 'page', 'index,edit,create', '', 1, '2022-07-23 10:55:28', '2025-07-03 06:17:16'),
(127, 24, 'menus', NULL, 'menus', 'admin/front/menus', 1, '(\'menus\', \'can_view\')', NULL, 'menus', 'index,additem', '', 1, '2022-07-23 10:56:31', '2025-07-03 06:17:16'),
(128, 24, 'banner_images', NULL, 'banner_images', 'admin/front/banner', 1, '(\'banner_images\', \'can_view\')', NULL, 'banner', 'index', '', 1, '2022-05-18 06:10:53', '2025-07-03 06:17:16'),
(129, 25, 'manage_alumini', NULL, 'manage_alumini', 'admin/alumni/alumnilist', 1, '(\'manage_alumni\', \'can_view\')', NULL, 'alumni', 'alumnilist', '', 1, '2022-07-23 10:58:36', '2025-07-03 06:17:16'),
(130, 25, 'events', NULL, 'events', 'admin/alumni/events', 1, '(\'events\', \'can_view\')', NULL, 'alumni', 'events', '', 1, '2022-07-23 10:59:09', '2025-07-03 06:17:16'),
(131, 26, 'student_information', NULL, 'student_information', 'report/studentinformation', 1, '(\'student_report\', \'can_view\') || (\'guardian_report\', \'can_view\') || (\'student_history\', \'can_view\') || (\'student_login_credential_report\', \'can_view\') || (\'class_subject_report\', \'can_view\') || (\'admission_report\', \'can_view\') || (\'sibling_report\', \'can_view\') || (\'homehork_evaluation_report\', \'can_view\') || (\'student_profile\', \'can_view\') || (\'student_gender_ratio_report\', \'can_view\') || (\'student_teacher_ratio_report\', \'can_view\')', NULL, 'report', 'studentinformation,studentreport,online_admission_report,student_teacher_ratio,boys_girls_ratio,student_profile,sibling_report,admission_report,class_subject,classsectionreport,guardianreport,admissionreport,logindetailreport,parentlogindetailreport', '', 1, '2022-09-26 05:26:53', '2025-07-03 06:17:16'),
(132, 26, 'finance', NULL, 'finance', 'financereports/finance', 2, '(\'fees_statement\', \'can_view\') || (\'balance_fees_report\', \'can_view\') || (\'fees_collection_report\', \'can_view\') || (\'online_fees_collection_report\', \'can_view\') || (\'income_report\', \'can_view\') || (\'expense_report\', \'can_view\') || (\'payroll_report\', \'can_view\') || (\'income_group_report\', \'can_view\') || (\'expense_group_report\', \'can_view\') || (\'online_admission\', \'can_view\')', NULL, 'financereports', 'finance,reportduefees,reportdailycollection,reportbyname,studentacademicreport,collection_report,onlinefees_report,duefeesremark,income,expense,payroll,incomegroup,expensegroup,onlineadmission', '', 1, '2022-09-24 12:20:32', '2025-07-03 06:17:16'),
(133, 26, 'attendance', NULL, 'attendance', 'attendencereports/attendance', 3, '(\'attendance_report\', \'can_view\') || (\'student_attendance_type_report\', \'can_view\') || (\'daily_attendance_report\', \'can_view\') || (\'staff_attendance_report\', \'can_view\')', NULL, 'attendencereports', 'attendance,classattendencereport,attendancereport,daily_attendance_report,staffattendancereport,biometric_attlog,reportbymonthstudent,reportbymonth', '', 1, '2022-09-26 11:36:08', '2025-07-03 06:17:16'),
(134, 26, 'examinations', NULL, 'examinations', 'admin/examresult/examinations', 4, '(\'rank_report\', \'can_view\')', NULL, 'examresult', 'rankreport,examinations', '', 1, '2022-09-20 08:34:13', '2025-07-03 06:17:16'),
(135, 26, 'lesson_plan', NULL, 'lesson_plan', 'report/lesson_plan', 6, '(\'syllabus_status_report\', \'can_view\') || (\'teacher_syllabus_status_report\', \'can_view\')', NULL, 'report', 'lesson_plan,teachersyllabusstatus', '', 1, '2022-07-25 11:39:17', '2025-07-03 06:17:16'),
(136, 26, 'human_resource', NULL, 'human_resource', 'report/human_resource', 7, '(\'staff_report\', \'can_view\') || (\'payroll_report\', \'can_view\')', NULL, 'report', 'human_resource,staff_report,payrollreport', '', 1, '2022-07-25 11:38:20', '2025-07-03 06:17:16'),
(137, 26, 'library', NULL, 'library', 'report/library', 9, '(\'book_issue_report\', \'can_view\') || (\'book_due_report\', \'can_view\') || (\'book_issue_return_report\', \'can_view\') || (\'book_inventory_report\', \'can_view\')', NULL, 'report', 'library,studentbookissuereport,bookduereport,bookinventory', '', 1, '2022-09-07 11:53:15', '2025-07-03 06:17:16'),
(138, 26, 'inventory', NULL, 'inventory', 'report/inventory', 10, '(\'stock_report\', \'can_view\') || (\'add_item_report\', \'can_view\') || (\'issue_item_report\', \'can_view\')', NULL, 'report', 'inventory,inventorystock,additem,issueinventory', '', 1, '2022-07-25 11:30:57', '2025-07-03 06:17:16'),
(139, 26, 'hostel', NULL, 'hostel', 'admin/hostelroom/studenthosteldetails', 12, '(\'hostel_report\', \'can_view\')', NULL, 'hostelroom', 'studenthosteldetails', '', 1, '2022-07-20 12:30:07', '2025-07-03 06:17:16'),
(140, 26, 'alumni', NULL, 'alumni', 'report/alumnireport', 13, '(\'alumni_report\', \'can_view\')', NULL, 'report', 'alumnireport', '', 1, '2022-07-20 12:30:07', '2025-07-03 06:17:16'),
(141, 26, 'user_log', NULL, 'user_log', 'admin/userlog', 14, '(\'user_log\', \'can_view\')', NULL, 'userlog', 'index', '', 1, '2022-07-20 12:30:07', '2025-07-03 06:17:16'),
(142, 26, 'audit_trail_report', NULL, 'audit_trail_report', 'admin/audit', 15, '(\'audit_trail_report\', \'can_view\')', NULL, 'audit', 'index', '', 1, '2022-07-20 12:30:07', '2025-07-03 06:17:16'),
(143, 26, 'online_examinations', NULL, 'online_examinations', 'admin/onlineexam/report', 5, '(\'online_exam_wise_report\', \'can_view\') || (\'online_exams_report\', \'can_view\') || (\'online_exams_attempt_report\', \'can_view\') || (\'online_exams_rank_report\', \'can_view\')', NULL, 'onlineexam', 'report,onlineexams', '', 1, '2022-07-25 11:48:23', '2025-07-03 06:17:16'),
(144, 26, 'homework', NULL, 'homework', 'homework/homeworkordailyassignmentreport', 8, '(\'homework\', \'can_view\') || (\'daily_assignment\', \'can_view\')', NULL, 'homework', 'homeworkordailyassignmentreport,homeworkreport,evaluation_report,dailyassignmentreport', '', 1, '2022-09-21 09:28:47', '2025-07-03 06:17:16'),
(145, 26, 'transport', NULL, 'transport', 'admin/route/studenttransportdetails', 11, '(\'transport_report\', \'can_view\')', NULL, 'route', 'studenttransportdetails', '', 1, '2022-07-20 12:30:07', '2025-07-03 06:17:16'),
(146, 27, 'general_setting', NULL, 'general_setting', 'schsettings', 1, '(\'general_setting\', \'can_view\')', NULL, 'schsettings', 'index,logo,miscellaneous,backendtheme,mobileapp,studentguardianpanel,fees,idautogeneration,attendancetype,maintenance,whatsappsettings', '', 1, '2025-02-13 09:03:12', '2025-07-03 06:17:16'),
(147, 27, 'session_setting', NULL, 'session_setting', 'sessions', 2, '(\'session_setting\', \'can_view\')', NULL, 'sessions', 'index,edit', '', 1, '2022-07-23 11:57:16', '2025-07-03 06:17:16'),
(148, 27, 'notification_setting', NULL, 'notification_setting', 'admin/notification/setting', 3, '(\'notification_setting\', \'can_view\')', NULL, 'notification', 'setting', '', 1, '2022-07-08 08:12:28', '2025-07-03 06:17:16'),
(149, 27, 'sms_setting', NULL, 'sms_setting', 'smsconfig', 4, '(\'sms_setting\', \'can_view\')', NULL, 'smsconfig', 'index', '', 1, '2022-07-08 08:12:28', '2025-07-03 06:17:16'),
(150, 27, 'email_setting', NULL, 'email_setting', 'emailconfig', 5, '(\'email_setting\', \'can_view\')', NULL, 'emailconfig', 'index', '', 1, '2022-07-08 08:12:28', '2025-07-03 06:17:16'),
(151, 27, 'payment_methods', NULL, 'payment_methods', 'admin/paymentsettings', 6, '(\'payment_methods\', \'can_view\')', NULL, 'paymentsettings', 'index', '', 1, '2022-07-08 08:12:28', '2025-07-03 06:17:16'),
(152, 27, 'print_headerfooter', NULL, 'print_headerfooter', 'admin/print_headerfooter', 7, '(\'print_header_footer\', \'can_view\')', NULL, 'print_headerfooter', 'index', '', 1, '2022-07-08 08:12:28', '2025-07-03 06:17:16'),
(153, 27, 'front_cms_setting', NULL, 'front_cms_setting', 'admin/frontcms', 8, '(\'front_cms_setting\', \'can_view\')', NULL, 'frontcms', 'index', '', 1, '2022-07-08 08:12:28', '2025-07-03 06:17:16'),
(154, 27, 'roles_permissions', NULL, 'roles_permissions', 'admin/roles', 9, '(\'superadmin\', \'can_view\')', NULL, 'roles', 'index,permission', '', 1, '2022-09-09 11:03:34', '2025-07-03 06:17:16'),
(155, 27, 'backup_restore', NULL, 'backup_restore', 'admin/admin/backup', 10, '(\'backup\', \'can_view\')', NULL, 'admin', 'backup', '', 1, '2022-07-08 08:12:28', '2025-07-03 06:17:16'),
(156, 27, 'users', NULL, 'users', 'admin/users', 13, '(\'user_status\', \'can_view\')', NULL, 'users', 'index', '', 1, '2022-07-20 12:34:09', '2025-07-03 06:17:16'),
(157, 27, 'languages', NULL, 'languages', 'admin/language', 11, '(\'languages\', \'can_view\')', NULL, 'language', 'index,create', '', 1, '2022-09-10 09:14:52', '2025-07-03 06:17:16'),
(158, 27, 'modules', NULL, 'modules', 'admin/module', 14, '(\'superadmin\', \'can_view\')', NULL, 'module', 'index', '', 1, '2022-07-20 12:34:06', '2025-07-03 06:17:16'),
(159, 27, 'custom_fields', NULL, 'custom_fields', 'admin/customfield', 15, '(\'custom_fields\', \'can_view\')', NULL, 'customfield', 'index,edit', '', 1, '2022-07-23 12:02:14', '2025-07-03 06:17:16'),
(160, 27, 'captcha_setting', NULL, 'captcha_setting', 'admin/captcha', 16, '(\'superadmin\', \'can_view\')', NULL, 'captcha', 'index', '', 1, '2022-07-20 12:34:06', '2025-07-03 06:17:16'),
(161, 27, 'system_fields', NULL, 'system_fields', 'admin/systemfield', 17, '(\'system_fields\', \'can_view\')', NULL, 'systemfield', 'index', '', 1, '2022-07-22 06:07:38', '2025-07-03 06:17:16'),
(162, 27, 'student_profile_update', NULL, 'student_profile_update', 'student/profilesetting', 18, '(\'student_profile_update\', \'can_view\')', NULL, 'student', 'profilesetting', '', 1, '2022-07-20 12:34:06', '2025-07-03 06:17:16'),
(163, 27, 'online_admission', NULL, 'online_admission', 'admin/onlineadmission/admissionsetting', 19, '(\'online_admission\', \'can_view\')', NULL, 'onlineadmission', 'admissionsetting', '', 1, '2022-07-20 12:34:06', '2025-07-03 06:17:16'),
(164, 27, 'file_types', NULL, 'file_types', 'admin/admin/filetype', 20, '(\'superadmin\', \'can_view\')', NULL, 'admin', 'filetype', '', 1, '2022-07-20 12:34:30', '2025-07-03 06:17:16'),
(165, 27, 'system_update', NULL, 'system_update', 'admin/updater', 22, '(\'superadmin\', \'can_view\')', NULL, 'updater', 'index', '', 1, '2022-10-13 11:49:51', '2025-07-03 06:17:16'),
(166, 27, 'sidebar_menu', NULL, 'sidebar_menu', 'admin/sidemenu', 21, '(\'sidebar_menu\', \'can_view\')', NULL, 'sidemenu', 'index', '', 1, '2022-10-13 11:49:51', '2025-07-03 06:17:16'),
(181, 3, 'fees_discount', NULL, 'fees_discount', 'admin/feediscount', 8, '(\'fees_discount\', \'can_view\')', NULL, 'feediscount', 'index,edit,assign', '', 1, '2022-08-08 06:03:27', '2025-07-03 06:17:16'),
(182, 3, 'fees_carry_forward', NULL, 'fees_carry_forward', 'admin/feesforward', 9, '(\'fees_carry_forward\', \'can_view\')', NULL, 'feesforward', 'index', '', 1, '2022-08-08 06:03:24', '2025-07-03 06:17:16'),
(183, 3, 'fees_reminder', NULL, 'fees_reminder', 'admin/feereminder/setting', 10, '(\'fees_reminder\', \'can_view\')', NULL, 'feereminder', 'setting', '', 1, '2022-08-08 06:03:21', '2025-07-03 06:17:16'),
(184, 27, 'currency', NULL, 'currency', 'admin/currency', 12, '(\'currency\', \'can_view\')', NULL, 'currency', 'index', '', 1, '2022-07-20 12:34:09', '2025-07-03 06:17:16'),
(190, 3, 'offline_bank_payments', NULL, 'offline_bank_payments', 'admin/offlinepayment', 2, '(\'offline_bank_payments\', \'can_view\')', NULL, 'offlinepayment', 'index', '', 1, '2022-08-08 06:05:29', '2025-07-03 06:17:16'),
(191, 13, 'Copy Old Lessons', NULL, 'copy_old_lesson', 'admin/lessonplan/copylesson', 1, '(\'copy_old_lesson\', \'can_view\')', NULL, 'lessonplan', 'copylesson', NULL, 1, '2022-09-09 10:20:37', '2025-07-03 06:17:16'),
(192, 10, 'Period Attendance', 'period_attendance', 'period_attendance', 'admin/subjectattendence/index', 4, '(\'student_attendance\',\'can_view\')', NULL, 'subjectattendence', 'index', NULL, 0, '2022-10-20 05:50:25', '2025-07-03 06:17:16'),
(193, 10, 'Period Attendance By Date', 'period_attendance_by_date', 'period_attendance_by_date', 'admin/subjectattendence/reportbydate', 5, '(\'attendance_by_date\', \'can_view\')', NULL, 'subjectattendence', 'reportbydate', NULL, 0, '2022-10-20 05:50:25', '2025-07-03 06:17:16'),
(215, 36, 'annual_calendar', NULL, 'annual_calendar', 'admin/holiday/index', 1, '(\'annual_calendar\', \'can_view\')', NULL, 'holiday', 'index', '', 1, '2024-10-14 12:07:58', '2025-07-03 06:17:16'),
(216, 36, 'holiday_type', NULL, 'holiday_type', 'admin/holiday/holidaytype', 1, '(\'holiday_type\', \'can_view\')', NULL, 'holiday', 'holidaytype,editholidaytype', '', 1, '2024-10-14 12:06:02', '2025-07-03 06:17:16'),
(217, 37, 'download_cv', NULL, 'download_cv', 'admin/resume/download', 2, '(\'download_cv\', \'can_view\')', NULL, 'resume', 'download', NULL, 1, '2025-01-09 08:05:11', '2025-07-03 06:17:16'),
(218, 37, 'build_cv', NULL, 'build_cv', 'admin/resume/index', 1, '(\'build_cv\', \'can_view\')', NULL, 'resume', 'index,resume_setting,student_resume_details', NULL, 1, '2024-12-06 11:42:02', '2025-07-03 06:17:16'),
(219, 27, 'addons', NULL, 'addons', 'admin/addons', 13, '(\'superadmin\', \'can_view\')', NULL, 'addons', 'index', '', 1, '2024-12-21 11:43:48', '2025-07-03 06:17:16');

-- --------------------------------------------------------

--
-- Table structure for table `sms_config`
--

CREATE TABLE `sms_config` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `api_id` varchar(100) NOT NULL,
  `authkey` varchar(100) NOT NULL,
  `senderid` varchar(100) NOT NULL,
  `contact` text DEFAULT NULL,
  `username` varchar(150) DEFAULT NULL,
  `url` varchar(150) DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'disabled',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sms_template`
--

CREATE TABLE `sms_template` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `source`
--

CREATE TABLE `source` (
  `id` int(11) NOT NULL,
  `source` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(200) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `currency_id` int(11) DEFAULT 0,
  `department` int(11) DEFAULT NULL,
  `designation` int(11) DEFAULT NULL,
  `qualification` varchar(200) NOT NULL,
  `work_exp` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `surname` varchar(200) NOT NULL,
  `father_name` varchar(200) NOT NULL,
  `mother_name` varchar(200) NOT NULL,
  `contact_no` varchar(200) NOT NULL,
  `emergency_contact_no` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `dob` date NOT NULL,
  `marital_status` varchar(100) NOT NULL,
  `date_of_joining` date DEFAULT NULL,
  `date_of_leaving` date DEFAULT NULL,
  `local_address` varchar(300) NOT NULL,
  `permanent_address` varchar(200) NOT NULL,
  `note` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `password` varchar(250) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `account_title` varchar(200) NOT NULL,
  `bank_account_no` varchar(200) NOT NULL,
  `bank_name` varchar(200) NOT NULL,
  `ifsc_code` varchar(200) NOT NULL,
  `bank_branch` varchar(100) NOT NULL,
  `payscale` varchar(200) NOT NULL,
  `basic_salary` int(11) DEFAULT NULL,
  `epf_no` varchar(200) NOT NULL,
  `contract_type` varchar(100) NOT NULL,
  `shift` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `facebook` varchar(200) NOT NULL,
  `twitter` varchar(200) NOT NULL,
  `linkedin` varchar(200) NOT NULL,
  `instagram` varchar(200) NOT NULL,
  `resume` varchar(200) NOT NULL,
  `joining_letter` varchar(200) NOT NULL,
  `resignation_letter` varchar(200) NOT NULL,
  `other_document_name` varchar(200) NOT NULL,
  `other_document_file` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL,
  `verification_code` varchar(100) NOT NULL,
  `disable_at` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `employee_id`, `lang_id`, `currency_id`, `department`, `designation`, `qualification`, `work_exp`, `name`, `surname`, `father_name`, `mother_name`, `contact_no`, `emergency_contact_no`, `email`, `dob`, `marital_status`, `date_of_joining`, `date_of_leaving`, `local_address`, `permanent_address`, `note`, `image`, `password`, `gender`, `account_title`, `bank_account_no`, `bank_name`, `ifsc_code`, `bank_branch`, `payscale`, `basic_salary`, `epf_no`, `contract_type`, `shift`, `location`, `facebook`, `twitter`, `linkedin`, `instagram`, `resume`, `joining_letter`, `resignation_letter`, `other_document_name`, `other_document_file`, `user_id`, `is_active`, `verification_code`, `disable_at`, `created_at`, `updated_at`) VALUES
(1, '9000', 0, 0, NULL, NULL, '', '', 'Super Admin', '', '', '', '', '', 'hiidealstechnologies@gmail.com', '2020-01-01', '', NULL, NULL, '', '', '', '', '$2y$10$dJc/qPkP1czyvxh49GvJ6eTlnS1E6q9thuRW0rlywO9tAWlqoyj6y', 'Male', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, '', NULL, '2025-07-03 06:17:22', '2025-07-03 06:17:22'),
(2, 'SGIN28311', 0, 0, 2, 2, '', '', 'ALI FAIZAN UR RAHMAN', '', '', '', '', '', 'iamfaizanali032@gmail.com', '1996-08-05', '', NULL, NULL, '', '', '', '', '$2y$10$g19W0SCkgVgBXtrc26JpyeWYeXvjIWUlfGXqVzWdmispXHpUF0MG2', 'Male', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, '', NULL, '2025-07-18 05:47:58', '2025-07-18 05:48:18');

-- --------------------------------------------------------

--
-- Table structure for table `staff_attendance`
--

CREATE TABLE `staff_attendance` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `staff_id` int(11) NOT NULL,
  `staff_attendance_type_id` int(11) NOT NULL,
  `biometric_attendence` int(11) DEFAULT 0,
  `qrcode_attendance` int(11) NOT NULL DEFAULT 0,
  `biometric_device_data` text DEFAULT NULL,
  `user_agent` varchar(250) DEFAULT NULL,
  `remark` varchar(200) NOT NULL,
  `is_active` int(11) NOT NULL,
  `in_time` time DEFAULT NULL,
  `out_time` time DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff_attendance_type`
--

CREATE TABLE `staff_attendance_type` (
  `id` int(11) NOT NULL,
  `type` varchar(200) NOT NULL,
  `key_value` varchar(200) NOT NULL,
  `is_active` varchar(50) NOT NULL,
  `for_qr_attendance` int(11) NOT NULL DEFAULT 1,
  `long_lang_name` varchar(250) DEFAULT NULL,
  `long_name_style` varchar(250) DEFAULT NULL,
  `for_schedule` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `staff_attendance_type`
--

INSERT INTO `staff_attendance_type` (`id`, `type`, `key_value`, `is_active`, `for_qr_attendance`, `long_lang_name`, `long_name_style`, `for_schedule`, `created_at`, `updated_at`) VALUES
(1, 'Present', '<b class=\"text text-success\">P</b>', 'yes', 1, 'present', 'label label-success', 1, '2023-12-13 10:15:57', '2023-11-10 00:00:00'),
(2, 'Late', '<b class=\"text text-warning\">L</b>', 'yes', 1, 'late', 'label label-warning', 1, '2023-12-13 10:16:01', '2023-11-10 00:00:00'),
(3, 'Absent', '<b class=\"text text-danger\">A</b>', 'yes', 0, 'absent', 'label label-danger', 0, '2023-12-13 10:16:06', '2023-11-10 00:00:00'),
(4, 'Half Day', '<b class=\"text text-warning\">F</b>', 'yes', 1, 'half_day', 'label label-info', 1, '2023-12-14 12:57:07', '2023-11-10 00:00:00'),
(5, 'Holiday', 'H', 'yes', 0, 'holiday', 'label label-warning text-dark', 0, '2023-12-13 10:16:17', '2023-11-10 00:00:00'),
(6, 'Half Day Second Shift', '<b class=\"text text-warning\">SH</b>', 'yes', 1, 'half_day_second_shift', 'label label-info', 1, '2024-09-24 12:28:42', '2025-07-03 06:17:16');

-- --------------------------------------------------------

--
-- Table structure for table `staff_attendence_schedules`
--

CREATE TABLE `staff_attendence_schedules` (
  `id` int(11) NOT NULL,
  `staff_attendence_type_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `entry_time_from` time DEFAULT NULL,
  `entry_time_to` time DEFAULT NULL,
  `total_institute_hour` time DEFAULT '00:00:00',
  `is_active` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff_designation`
--

CREATE TABLE `staff_designation` (
  `id` int(11) NOT NULL,
  `designation` varchar(200) NOT NULL,
  `is_active` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `staff_designation`
--

INSERT INTO `staff_designation` (`id`, `designation`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Admin Nursing', 'yes', '2025-07-03 12:36:38', '2025-07-03 12:36:38'),
(2, 'ADMINISTRATION', 'yes', '2025-07-18 05:45:52', '2025-07-18 05:45:52');

-- --------------------------------------------------------

--
-- Table structure for table `staff_id_card`
--

CREATE TABLE `staff_id_card` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `school_name` varchar(255) NOT NULL,
  `school_address` varchar(255) NOT NULL,
  `background` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `sign_image` varchar(100) NOT NULL,
  `header_color` varchar(100) NOT NULL,
  `enable_vertical_card` int(11) NOT NULL DEFAULT 0,
  `enable_staff_role` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_staff_id` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_staff_department` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_designation` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_name` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_fathers_name` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_mothers_name` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_date_of_joining` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_permanent_address` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_staff_dob` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_staff_phone` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_staff_barcode` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `status` tinyint(1) NOT NULL COMMENT '0=disable,1=enable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `staff_id_card`
--

INSERT INTO `staff_id_card` (`id`, `title`, `school_name`, `school_address`, `background`, `logo`, `sign_image`, `header_color`, `enable_vertical_card`, `enable_staff_role`, `enable_staff_id`, `enable_staff_department`, `enable_designation`, `enable_name`, `enable_fathers_name`, `enable_mothers_name`, `enable_date_of_joining`, `enable_permanent_address`, `enable_staff_dob`, `enable_staff_phone`, `enable_staff_barcode`, `status`) VALUES
(1, 'Sample Staff ID Card Horizontal', 'Mount Carmel School', '110 Kings Street, CA', 'background1.png', 'logo1.png', 'sign1.png', '#9b1818', 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1),
(2, 'Sample Staff ID Card Vertical', 'Mount Carmel School', '110 Kings Street, CA', 'background1.png', 'logo1.png', 'sign1.png', '#9b1818', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `staff_leave_details`
--

CREATE TABLE `staff_leave_details` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `leave_type_id` int(11) NOT NULL,
  `alloted_leave` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff_leave_request`
--

CREATE TABLE `staff_leave_request` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `leave_type_id` int(11) NOT NULL,
  `leave_from` date NOT NULL,
  `leave_to` date NOT NULL,
  `leave_days` int(11) NOT NULL,
  `employee_remark` varchar(200) NOT NULL,
  `admin_remark` varchar(200) NOT NULL,
  `approve_date` date DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  `applied_by` int(11) DEFAULT NULL,
  `document_file` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff_payroll`
--

CREATE TABLE `staff_payroll` (
  `id` int(11) NOT NULL,
  `basic_salary` int(11) NOT NULL,
  `pay_scale` varchar(200) NOT NULL,
  `grade` varchar(50) NOT NULL,
  `is_active` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff_payslip`
--

CREATE TABLE `staff_payslip` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `basic` float(10,2) NOT NULL,
  `total_allowance` float(10,2) NOT NULL,
  `total_deduction` float(10,2) NOT NULL,
  `leave_deduction` int(11) NOT NULL,
  `tax` varchar(200) NOT NULL,
  `net_salary` float(10,2) NOT NULL,
  `status` varchar(100) NOT NULL,
  `month` varchar(200) NOT NULL,
  `year` varchar(200) NOT NULL,
  `payment_mode` varchar(200) NOT NULL,
  `payment_date` date NOT NULL,
  `remark` varchar(200) NOT NULL,
  `generated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff_rating`
--

CREATE TABLE `staff_rating` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `rate` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role` varchar(255) NOT NULL,
  `status` int(11) NOT NULL COMMENT '0 decline, 1 Approve',
  `entrydt` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff_roles`
--

CREATE TABLE `staff_roles` (
  `id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `staff_roles`
--

INSERT INTO `staff_roles` (`id`, `role_id`, `staff_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 7, 1, 0, '2025-07-03 06:17:22', '2025-07-03 06:17:22'),
(2, 8, 2, 0, '2025-07-18 05:47:58', '2025-07-18 05:47:58');

-- --------------------------------------------------------

--
-- Table structure for table `staff_timeline`
--

CREATE TABLE `staff_timeline` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `timeline_date` date NOT NULL,
  `description` varchar(300) NOT NULL,
  `document` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `admission_no` varchar(100) DEFAULT NULL,
  `roll_no` varchar(100) DEFAULT NULL,
  `admission_date` date DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `middlename` varchar(255) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `rte` varchar(20) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `mobileno` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `pincode` varchar(100) DEFAULT NULL,
  `religion` varchar(100) DEFAULT NULL,
  `cast` varchar(50) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `current_address` text DEFAULT NULL,
  `permanent_address` text DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  `school_house_id` int(11) DEFAULT NULL,
  `blood_group` varchar(200) NOT NULL,
  `hostel_room_id` int(11) DEFAULT NULL,
  `adhar_no` varchar(100) DEFAULT NULL,
  `samagra_id` varchar(100) DEFAULT NULL,
  `bank_account_no` varchar(100) DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `ifsc_code` varchar(100) DEFAULT NULL,
  `guardian_is` varchar(100) NOT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `father_phone` varchar(100) DEFAULT NULL,
  `father_occupation` varchar(100) DEFAULT NULL,
  `mother_name` varchar(100) DEFAULT NULL,
  `mother_phone` varchar(100) DEFAULT NULL,
  `mother_occupation` varchar(100) DEFAULT NULL,
  `guardian_name` varchar(100) DEFAULT NULL,
  `guardian_relation` varchar(100) DEFAULT NULL,
  `guardian_phone` varchar(100) DEFAULT NULL,
  `guardian_occupation` varchar(150) NOT NULL,
  `guardian_address` text DEFAULT NULL,
  `guardian_email` varchar(100) DEFAULT NULL,
  `father_pic` varchar(200) NOT NULL,
  `mother_pic` varchar(200) NOT NULL,
  `guardian_pic` varchar(200) NOT NULL,
  `is_active` varchar(255) DEFAULT 'yes',
  `previous_school` text DEFAULT NULL,
  `height` varchar(100) NOT NULL,
  `weight` varchar(100) NOT NULL,
  `measurement_date` date DEFAULT NULL,
  `dis_reason` int(11) NOT NULL,
  `note` varchar(200) DEFAULT NULL,
  `dis_note` text NOT NULL,
  `about` text DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `app_key` text DEFAULT NULL,
  `parent_app_key` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `disable_at` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `parent_id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `middlename`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `school_house_id`, `blood_group`, `hostel_room_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `father_pic`, `mother_pic`, `guardian_pic`, `is_active`, `previous_school`, `height`, `weight`, `measurement_date`, `dis_reason`, `note`, `dis_note`, `about`, `designation`, `app_key`, `parent_app_key`, `created_by`, `disable_at`, `created_at`, `updated_at`) VALUES
(1, 2, '188', '', '2025-07-14', 'ANIL GANESH', NULL, '', 'No', 'uploads/student_images/1752655792-428870593687767b037f26!Image (2).jpg', '9008146187', '', NULL, NULL, NULL, '', '', '2004-08-12', 'Male', 'MOTIMOK TANDA VENKATPURA GULBARGA, CHINCHOLI-585305', 'MOTIMOK TANDA VENKATPURA GULBARGA, CHINCHOLI-585305', '', 0, '', 0, '575696862875', '', '', '', '', 'father', 'GANESH', '9535293851', 'AGRICULTURE', 'TARI BAI ', '', 'HOUSE WIFE', 'GANESH', 'Father', '9535293851', 'AGRICULTURE', 'MOTIMOK TANDA VENKATPURA GULBARGA, CHINCHOLI-585305', '', '', '', '', 'yes', 'GOVT BOYS PU COLLEGE ', '', '', '2025-07-16', 0, 'REF: PARVEZ SIR', '', NULL, NULL, NULL, NULL, 1, NULL, '2025-07-16 07:13:20', '2025-07-16 08:49:52'),
(2, 4, '047', '', '2025-07-14', 'PAUDASHETE SHIVRAJ DHANRAJ', NULL, '', 'No', 'uploads/student_images/1752650629-11956447716877538530e24!Image - Copy.jpg', '8669498535', 'shivrajpaudashete240@gmail.com', NULL, NULL, NULL, 'HINDU', '', '2001-06-02', 'Male', 'AT. ADGAON POST-CHATARI TQ: PALAM DIST:PARBHANI , MAHARASHTRA-431536', 'AT. ADGAON POST-CHATARI TQ: PALAM DIST:PARBHANI , MAHARASHTRA-431536', '1', 0, '', 0, '261553180212', '', '', '', '', 'father', 'PAUDASHETE DHANRAJ  SHIVRAJ', '9763879767', 'farmer', 'PAUDASHETE JAYSHRI DHANRAJ', '9011050326', 'HOUSE WIFE', 'PAUDASHETE DHANRAJ  SHIVRAJ', 'Father', '9763879767', 'farmer', 'AT. ADGAON POST-CHATARI TQ: PALAM DIST:PARBHANI , MAHARASHTRA-431536', '', '', '', '', 'yes', 'JIVANSANSKAR VIDYALAYA KAREGAON PARBHANI', '', '', '2025-07-16', 0, 'REF-ROOPESH SIR', '', NULL, NULL, NULL, NULL, 1, NULL, '2025-07-16 07:23:49', '2025-07-16 08:07:25'),
(3, 6, '172', '', '2025-07-16', 'KAPADIA UMERA IBRAHIM', NULL, '', 'No', 'uploads/student_images/1752650981-304351252687754e5ec76b!Image - Copy.jpg', '9664145987', '', NULL, NULL, NULL, 'MUSLIM', '', '2006-02-08', 'Female', 'RAFIK NAGAR C/14/7 AHILYABAI HOLKAR NEAR BISMILLAH MASZID MUMBAI', 'RAFIK NAGAR C/14/7 AHILYABAI HOLKAR NEAR BISMILLAH MASZID MUMBAI', '3', 0, '', 0, '468260433785', '', '', '', '', 'father', 'IBRAHIM ', '9664145987', '', 'SHAMA', '', '', 'IBRAHIM', 'Father', '9664145987', '', 'RAFIK NAGAR C/14/7 AHILYABAI HOLKAR NEAR BISMILLAH MASZID MUMBAI', '', '', '', '', 'yes', 'MAHARASHTRA BOARD', '', '', '2025-07-16', 0, '', '', NULL, NULL, NULL, NULL, 1, NULL, '2025-07-16 07:29:41', '2025-07-16 08:07:03'),
(4, 8, '129', '', '2025-07-08', 'ANNA SOPHIA', NULL, '', 'No', 'uploads/student_images/1752655883-1126701466877680bef278!Image (4).jpg', '8310850913', '', NULL, NULL, NULL, 'CHRISTIAN', '', '2007-10-04', 'Female', 'H.NO. 15-2-122, ZELON COLONY KUMBARWADA ROAD, BIDAR-585403', 'H.NO. 15-2-122, ZELON COLONY KUMBARWADA ROAD, BIDAR-585403', '7', 0, '', 0, '678616531710', '', '', '', '', 'father', 'SUDARSHAN ', '8310850913', 'PRIVATE BANK EMPLOYEE', 'SHALINI', '9880266360', 'GOVT TEACHER', 'SUDARSHAN', 'Father', '8310850913', 'PRIVATE BANK EMPLOYEE', 'H.NO. 15-2-122, ZELON COLONY KUMBARWADA ROAD, BIDAR-585403', '', '', '', '', 'yes', 'GURUNANAK COLLEGE ', '', '', '2025-07-16', 0, 'C/O, PRAKSH SIR BRIMS & OMER SIR', '', NULL, NULL, NULL, NULL, 1, NULL, '2025-07-16 07:34:38', '2025-07-16 08:51:23'),
(5, 10, '051', '', '2025-06-11', 'VAISHNAVI', NULL, '', 'No', 'uploads/student_images/1752655618-191258182668776702a0424!Image (7) - Copy.jpg', '900866898', '', NULL, NULL, NULL, 'HINDU', '', '2005-06-12', 'Female', 'R/O, KISHAN NAYAK TANDA CHIKALI (J) AURAD (B) BIDAR-585421', 'R/O, KISHAN NAYAK TANDA CHIKALI (J) AURAD (B) BIDAR-585421', '6', 0, '', 0, '463442909621', '', '', '', '', 'father', 'JAYRAM', '9008066898', '', 'PUSHPA', '6361311195', 'HOUSEWIFE', 'JAYRAM', 'Father', '9008066898', '', 'R/O, KISHAN NAYAK TANDA CHIKALI (J) AURAD (B) BIDAR-585421', '', '', '', '', 'yes', 'GURUKUL KARDYAL', '', '', '2025-07-16', 0, '', '', NULL, NULL, NULL, NULL, 1, NULL, '2025-07-16 07:43:25', '2025-07-16 08:46:58'),
(6, 12, '109', '', '2025-05-31', 'SANA SULTANA', NULL, '', 'No', 'uploads/student_images/1752655591-1761865437687766e7869c0!Image (5) - Copy.jpg', '9036555330', 'mohammedjunaid6787@gmail.com', NULL, NULL, NULL, 'MUSLIM', '', '2008-04-09', 'Female', 'MIRZAPUR TAZ ASHTOOR ROAD BIDAR-585401', 'MIRZAPUR TAZ ASHTOOR ROAD BIDAR-585401', '3', 0, '', 0, '467374236539', '', '', '', '', 'father', 'MOHAMMED JAVED', '9036555330', 'MECHANIC', 'SHABANA BEGUM', '9448555717', 'HOUSE WIFE', 'MOHAMMED JAVED', 'Father', '9036555330', 'MECHANIC', 'MIRZAPUR TAZ ASHTOOR ROAD BIDAR-585401', '', '', '', '', 'yes', 'DIVINE COLLEGE', '', '', '2025-07-16', 0, 'C/O RUBINA AUNTY (WORKER)', '', NULL, NULL, NULL, NULL, 1, NULL, '2025-07-16 07:48:31', '2025-07-16 08:46:31'),
(7, 14, '167', '', '2025-07-08', 'MAHIYA BADER', NULL, '', 'No', 'uploads/student_images/1752655567-648235705687766cf66a3d!Image (6) - Copy.jpg', '9866942962', '', NULL, NULL, NULL, 'MUSLIM', '', '2007-12-04', 'Female', '2-2/1 KHAJI GULLY MANDAL BICHKUNDA-503306', '2-2/1 KHAJI GULLY MANDAL BICHKUNDA-503306', '5', 0, '', 0, '458844000603', '', '', '', '', 'father', 'M A KALEEM ', '9866942962', 'BUSINESS', 'AMEENA FIRDOUS', '', '', 'M A KALEEM', 'Father', '9866942962', 'BUSINESS', '2-2/1 KHAJI GULLY MANDAL BICHKUNDA-503306', '', '', '', '', 'yes', 'USHODIYA MAHIKA COLLEGE', '', '', '2025-07-16', 0, 'C/O YASIR SIR', '', NULL, NULL, NULL, NULL, 1, NULL, '2025-07-16 07:54:00', '2025-07-16 08:46:07'),
(8, 16, '123', '', '2025-06-19', 'BANDELI MD TAFEELUDDIN ALLAUDDIN', NULL, '', 'No', 'uploads/student_images/1752655540-638533175687766b4dfe4b!Image (4) - Copy.jpg', '8105761800', '', NULL, NULL, NULL, 'MUSLIM', '', '2006-10-11', 'Male', 'H.NO. 5-3-205 DALL MILL NEAR DULHAN DARWAZA OLD CITY BIDAR-585401', 'H.NO. 5-3-205 DALL MILL NEAR DULHAN DARWAZA OLD CITY BIDAR-585401', '4', 0, '', 0, '622847551897', '', '', '', '', 'father', 'MD ALLAUDDIN', '9740423242', '', 'BABY TABASSUM', '', '', 'MD ALLAUDDIN', 'Father', '9740423242', '', 'H.NO. 5-3-205 DALL MILL NEAR DULHAN DARWAZA OLD CITY BIDAR-585401', '', '', '', '', 'yes', 'WISDOM PU COLLEGE BIDAR', '', '', '2025-07-16', 0, '', '', NULL, NULL, NULL, NULL, 1, NULL, '2025-07-16 08:00:26', '2025-07-16 08:45:40'),
(9, 18, '191', '', '2025-07-16', 'AALI AAMER AAHAD', NULL, '', 'No', 'uploads/student_images/1752653644-162456186868775f4ca54e4!Image - Copy.jpg', '', '', NULL, NULL, NULL, '', '', '2002-03-07', 'Male', 'KHAJIPURA RAILWAY STATION ROAD BASMATH NAGAR , HINGOLI-431512', 'KHAJIPURA RAILWAY STATION ROAD BASMATH NAGAR , HINGOLI-431512', '', 0, '', 0, '925078812200', '', '', '', '', 'father', 'AHAD ALI', '7057229064', '', 'NAJERA BEGUM', '7720919905', '', 'AHAD ALI', 'Father', '7057229064', '', 'KHAJIPURA RAILWAY STATION ROAD BASMATH NAGAR , HINGOLI-431512', '', '', '', '', 'yes', 'VISHWABHARTI COLLEGE ', '', '', '2025-07-16', 0, '', '', NULL, NULL, NULL, NULL, 1, NULL, '2025-07-16 08:14:04', '2025-07-16 08:14:04'),
(10, 20, '325', '', '2025-07-16', 'SARA TABASSUM', NULL, '', 'No', 'uploads/student_images/1752655641-200849874968776719015dd!Image (3) - Copy.jpg', '8523873222', '', NULL, NULL, NULL, 'MUSLIM', '', '1996-04-08', 'Female', '1991 GADI KOHIR SANGAREDDY TELANGANA-502210', '1991 GADI KOHIR SANGAREDDY TELANGANA-502210', '3', 0, '', 0, '429373573266', '', '', '', '', 'father', 'MD YOUSUF ALI', '8523873222', 'BUSINESS', 'SHABANA BEGUM', '6309598064', 'HOUSE WIFE', 'MD YOUSUF ALI', 'Father', '8523873222', 'BUSINESS', '1991 GADI KOHIR SANGAREDDY TELANGANA-502210', '', '', '', '', 'yes', 'GOVT. JUNIOR COLLEGE KOHIR', '', '', '2025-07-16', 0, '', '', NULL, NULL, NULL, NULL, 1, NULL, '2025-07-16 08:21:27', '2025-07-16 08:47:21'),
(11, 22, '003', '', '2025-05-13', 'SHAIK ZAID ABID', NULL, '', 'No', 'uploads/student_images/1752655668-2069619021687767343d8ec!Image (3).jpg', '7822970015', '', NULL, NULL, NULL, '', '', '2006-07-03', 'Male', 'B/101, SM TOWER BK VAVTAK CHOWK BEHIND MASOOM APARTMENT PHOOL PADA, VIVAR EAST, VASAI,PALGNAR-401305', 'B/101, SM TOWER BK VAVTAK CHOWK BEHIND MASOOM APARTMENT PHOOL PADA, VIVAR EAST, VASAI,PALGNAR-401305', '2', 0, '', 0, '807578720381', '', '', '', '', 'father', 'ABID HANIF SHAIKH', '9764052367', 'BUSINESS', 'ZEEBA ABID SHAIKH', '8390426300', 'HOUSE WIFE', 'ABID HANIF SHAIKH', 'Father', '9764052367', 'BUSINESS', 'B/101, SM TOWER BK VAVTAK CHOWK BEHIND MASOOM APARTMENT PHOOL PADA, VIVAR EAST, VASAI,PALGNAR-401305', '', '', '', '', 'yes', 'COLLEGE OF ARTS COMMERCE, GND SCIENCE', '', '', '2025-07-16', 0, '', '', NULL, NULL, NULL, NULL, 1, NULL, '2025-07-16 08:30:41', '2025-07-16 08:47:48'),
(12, 24, '165', '', '2025-07-16', 'MOHAMMED IRFAN KHAN', NULL, '', 'No', NULL, '8309363315', '', NULL, NULL, NULL, 'MUSLIM', '', '2004-07-11', 'Male', 'KHAJA ABDUL FAIZ COLONY BIDAR-585402', 'KHAJA ABDUL FAIZ COLONY BIDAR-585402', '3', 0, '', 0, '', '', '', '', '', 'father', 'MOHAMMED ARIF KHAN ', '8179232802', '', 'SHAHEEN BEGUM', '', '', 'MOHAMMED ARIF KHAN', 'Father', '8179232802', '', 'KHAJA ABDUL FAIZ COLONY BIDAR-585402', '', '', '', '', 'yes', 'TELANGANA BOARD HYD', '', '', '2025-07-16', 0, '', '', NULL, NULL, NULL, NULL, 1, NULL, '2025-07-16 08:35:24', '2025-07-16 08:35:24'),
(13, 26, '049', '', '2025-06-18', 'BHALERAO SHIVAM SANTOSH', NULL, '', 'No', 'uploads/student_images/1752659472-6755296466877761036573!Image.jpg', '8261011757', '', NULL, NULL, NULL, 'HINDU', '', '2008-07-03', 'Male', 'KHUJADA PURNA PARBHANI-431511', 'KHUJADA PURNA PARBHANI-431511', '1', 0, '', 0, '728495499518', '', '', '', '', 'father', 'BHALERAO SANTOSH ', '9765128174', 'FARMER', 'BHALERAO MAHADEVI', '9823205792', 'HOUSE WIFE', 'BHALERAO SANTOSH', 'Father', '9765128174', 'FARMER', 'KHUJADA PURNA PARBHANI-431511', '', '', '', '', 'yes', 'RAJMATA JIJAU KANISHTA VIDHYALAYA PARBHANI', '', '', '2025-07-16', 0, '', '', NULL, NULL, NULL, NULL, 1, NULL, '2025-07-16 09:51:12', '2025-07-16 09:51:12'),
(14, 28, '121', '', '2025-07-16', 'RUQAIYA NOOR', NULL, '', 'No', 'uploads/student_images/1752661127-179030854168777c87bcc46!Image - Copy.jpg', '', '', NULL, NULL, NULL, '', '', '1992-09-04', 'Female', '18-10-97 BARKAS CHANDRAYAN GUTTA BANDLAGUDA KESHOGIRI BANDLAGUDA HYDERABAD-500005', '18-10-97 BARKAS CHANDRAYAN GUTTA BANDLAGUDA KESHOGIRI BANDLAGUDA HYDERABAD-500005', '4', 0, '', 0, '890504243779', '', '', '', '', 'father', 'IFTEKHAR AHMED', '9398778704', '', '', '', '', 'IFTEKHAR AHMED', 'Father', '9398778704', '', '18-10-97 BARKAS CHANDRAYAN GUTTA BANDLAGUDA KESHOGIRI BANDLAGUDA HYDERABAD-500005', '', '', '', '', 'yes', '', '', '', '2025-07-16', 0, '', '', NULL, NULL, NULL, NULL, 1, NULL, '2025-07-16 10:18:47', '2025-07-16 10:18:47'),
(15, 30, '070', '', '2025-07-16', 'MD ABDUL UMED RAHMAN', NULL, '', 'No', 'uploads/student_images/1752661668-12606453468777ea42b262!Image.jpg', '997289365', '', NULL, NULL, NULL, 'MUSLIM', '', '2007-02-10', 'Male', '5-3-205 GOLE KHANA NEAR DULHAN DARWAZA BIDAR-585401', '5-3-205 GOLE KHANA NEAR DULHAN DARWAZA BIDAR-585401', '4', 0, '', 0, '915049095276', '', '', '', '', 'father', 'MD RAHEEMUDDIN', '9972893657', 'BUSINESS', 'PARVEEN BEGUM', '9036481231', 'HOUSE WIFE', 'MD RAHEEMUDDIN', 'Father', '9972893657', 'BUSINESS', '5-3-205 GOLE KHANA NEAR DULHAN DARWAZA BIDAR-585401', '', '', '', '', 'yes', 'WISDOM PU COLLEGE', '', '', '2025-07-16', 0, '', '', NULL, NULL, NULL, NULL, 1, NULL, '2025-07-16 10:27:48', '2025-07-16 10:27:48'),
(16, 32, '300', '', '2025-07-05', 'SYED ARSALANUDDIN', NULL, '', 'No', 'uploads/student_images/1752734986-115166585968789d0ad1908!Image - Copy.jpg', '9964881414', '', NULL, NULL, NULL, '', '', '2008-02-01', 'Male', 'TIPU SULTAN CHOWK AMLAPUR BIDAR KARNATAKA-585403', 'TIPU SULTAN CHOWK AMLAPUR BIDAR KARNATAKA-585403', '3', 0, '', 0, '302382162258', '', '', '', '', 'father', 'SYED MOINUDDIN', '9964881414', 'DISTRIBUTOR', 'ANJUM FATIMA', '9964846882', 'HOUSE WIFE', 'SYED MOINUDDIN', 'Father', '9964881414', 'DISTRIBUTOR', 'TIPU SULTAN CHOWK AMLAPUR BIDAR KARNATAKA-585403', '', '', '', '', 'yes', 'SHARANA BASAVESHWARA', '', '', '2025-07-17', 0, '', '', NULL, NULL, NULL, NULL, 1, NULL, '2025-07-17 06:49:46', '2025-07-17 06:49:46'),
(17, 34, '132', '', '2025-06-23', 'ANGEL RANI', NULL, '', 'No', 'uploads/student_images/1752735786-9432237906878a02abd52d!Image - Copy.jpg', '8088693536', 'angelangelrani@gmail.com', NULL, NULL, NULL, '', '', '2005-07-04', 'Female', 'NEAR GUEST HOUSE ROAD BIDAR-585401', 'NEAR GUEST HOUSE ROAD BIDAR-585401', '2', 0, '', 0, '231244081535', '', '', '', '', 'father', 'RAVIKANTH', '9663227488', '', 'ANITA', '9902661038', 'NURSING OFFICER', 'RAVIKANTH', 'Father', '9663227488', '', 'NEAR GUEST HOUSE ROAD BIDAR-585401', '', '', '', '', 'yes', 'MOULANA AZAD PU COLLEGE', '', '', '2025-07-17', 0, '', '', NULL, NULL, NULL, NULL, 1, NULL, '2025-07-17 07:03:06', '2025-07-17 07:03:06'),
(18, 36, '134', '', '2025-06-23', 'NISHA', NULL, '', 'No', NULL, '9663972208', '', NULL, NULL, NULL, '', '', '2006-11-03', 'Female', '7-6-267, JANWADA ROAD NAWADGERI BIDAR-585401', '7-6-267, JANWADA ROAD NAWADGERI BIDAR-585401', '8', 0, '', 0, '400294290854', '', '', '', '', 'father', 'YADAVRAO', '9980210409', 'GOVT SERVENT', 'SANGAMMA', '', 'HOUSE WIFE', 'YADAVRAO', 'Father', '9980210409', 'GOVT SERVENT', '7-6-267, JANWADA ROAD NAWADGERI BIDAR-585401', '', '', '', '', 'yes', 'SHAHEEN PU COLLEGE BIDAR', '', '', '2025-07-17', 0, '', '', NULL, NULL, NULL, NULL, 1, NULL, '2025-07-17 07:09:58', '2025-07-17 07:09:58'),
(19, 38, '149', '', '2025-06-30', 'ANKITA ANIL KUMAR', NULL, '', 'No', NULL, '7208211984', 'ankitajadhav17062@gmail.com', NULL, NULL, NULL, '', '', '2006-05-07', 'Female', 'ROOM NO.3, CHOWL NO.4, KALSHET UPPER VILLAGE THANE(W)-400607', 'ROOM NO.3, CHOWL NO.4, KALSHET UPPER VILLAGE THANE(W)-400607', '2', 0, '', 0, '584756295866', '', '', '', '', 'father', 'anil kumar', '9920769612', '', 'GEETA ', '8452803692', '', 'anil kumar', 'Father', '9920769612', '', 'ROOM NO.3, CHOWL NO.4, KALSHET UPPER VILLAGE THANE(W)-400607', '', '', '', '', 'yes', '', '', '', '2025-07-17', 0, '', '', NULL, NULL, NULL, NULL, 1, NULL, '2025-07-17 07:17:24', '2025-07-17 07:17:24'),
(20, 40, '053', '', '2025-06-16', 'SHAHELA TASNEEM', NULL, '', 'No', NULL, '9343564080', '', NULL, NULL, NULL, '', '', '2007-03-10', 'Female', 'A-8-364 OUTSIDE SHAH GUNJ MULTANI COLONY BIDAR-585401', 'A-8-364 OUTSIDE SHAH GUNJ MULTANI COLONY BIDAR-585401', '11', 0, '', 0, '', '', '', '', '', 'father', 'MD KHADEER ', '9980989283', '', 'BUSHRA FATIMA', '7259434261', '', 'MD KHADEER', 'Father', '9980989283', '', 'A-8-364 OUTSIDE SHAH GUNJ MULTANI COLONY BIDAR-585401', '', '', '', '', 'yes', 'KARNATAKA BOARD', '', '', '2025-07-17', 0, '', '', NULL, NULL, NULL, NULL, 1, NULL, '2025-07-17 07:30:41', '2025-07-17 07:30:41'),
(21, 42, '164', '', '2025-07-17', 'FIRDOUS BEGUM', NULL, '', 'No', 'uploads/student_images/1752741985-7084852526878b861af4f8!Image - Copy.jpg', '8217855391', '', NULL, NULL, NULL, '', '', '2007-11-07', 'Female', '', '', '3', 0, '', 0, '', '', '', '', '', 'father', 'GHOUSE KHAN', '8217855391', '', 'TASLEEM', '', '', 'GHOUSE KHAN', 'Father', '8217855391', '', '', '', '', '', '', 'yes', '', '', '', '2025-07-17', 0, '', '', NULL, NULL, NULL, NULL, 1, NULL, '2025-07-17 07:32:46', '2025-07-17 08:46:25'),
(22, 44, '155', '', '2025-07-17', 'KHAN MATIN AHMAD', NULL, '', 'No', NULL, '9845722850', '', NULL, NULL, NULL, 'MUSLIM', '', '1980-12-02', 'Male', '', '', '3', 0, '', 0, '', '', '', '', '', 'father', 'NAZEER AHMED', '9845722850', '', '', '', '', 'NAZEER AHMED', 'Father', '9845722850', '', 'NEAR AMBEDKAR GARDEN PLOT NO. 47/Q/5 BAIGANWADI SHIVRAJ NAGAR, GOWANDI MUMBAI-400043', '', '', '', '', 'yes', '', '', '', '2025-07-17', 0, '', '', NULL, NULL, NULL, NULL, 1, NULL, '2025-07-17 07:36:51', '2025-07-17 07:36:51'),
(23, 46, '301', '', '2025-07-17', 'ANJUM BEGUM', NULL, '', 'No', 'uploads/student_images/1752743743-16861361256878bf3f19ff2!Image - Copy.jpg', '8217855390', '', NULL, NULL, NULL, '', '', '1999-06-01', 'Female', 'HYDERABAD', 'HYDERABAD', '3', 0, '', 0, '', '', '', '', '', 'father', 'MOHD KHADEER KHAN', '8217855391', 'BUSINESS', 'FAHIMEEDA BEGUM', '', 'HOUSE WIFE', 'MOHD KHADEER KHAN', 'Father', '8217855391', 'BUSINESS', 'HYDERABAD', '', '', '', '', 'yes', '', '', '', '2025-07-17', 0, '', '', NULL, NULL, NULL, NULL, 1, NULL, '2025-07-17 07:39:54', '2025-07-17 09:15:43'),
(24, 48, '127', '', '2025-07-17', 'KHALIK UL HAQ', NULL, '', 'No', 'uploads/student_images/1752743993-11419490706878c039e2b64!Image - Copy.jpg', '7411700428', '', NULL, NULL, NULL, '', '', '2006-01-01', 'Male', '18-4-95/5 AHMEDI MANZIL CHIDRI ROAD NEAR JANTA SCHOOL HAQ COLONY BIDAR CHIDRI VTC', '18-4-95/5 AHMEDI MANZIL CHIDRI ROAD NEAR JANTA SCHOOL HAQ COLONY BIDAR CHIDRI VTC', '3', 0, '', 0, '222723553132', '', '', '', '', 'father', 'LATE MOIN UL HAQ', '6366982928', '', 'MARYAM BEGUM', '', '', 'LATE MOIN UL HAQ', 'Father', '6366982928', '', '18-4-95/5 AHMEDI MANZIL CHIDRI ROAD NEAR JANTA SCHOOL HAQ COLONY BIDAR CHIDRI VTC', '', '', '', '', 'yes', 'MAULANA AZAD PU COLLEGE ', '', '', '2025-07-17', 0, 'C/O OMER SIR', '', NULL, NULL, NULL, NULL, 1, NULL, '2025-07-17 07:49:55', '2025-07-17 09:19:53'),
(25, 50, '116', '', '2025-07-17', 'ANSARI NILOFAR', NULL, '', 'No', 'uploads/student_images/1752744239-3961113186878c12fd2306!Image - Copy.jpg', '70200197582', '', NULL, NULL, NULL, '', '', '2007-11-09', 'Female', 'MUMBAI MAHARASHTRA-585403', 'MUMBAI MAHARASHTRA-585403', '11', 0, '', 0, '432270704062', '', '', '', '', 'father', 'MOHD HUSAIN', '9082261301', '', 'JAHANARA', '', '', 'MOHD HUSAIN', 'Father', '9082261301', '', 'MUMBAI MAHARASHTRA-585403', '', '', '', '', 'yes', '', '', '', '2025-07-17', 0, '', '', NULL, NULL, NULL, NULL, 1, NULL, '2025-07-17 07:59:01', '2025-07-17 09:23:59'),
(26, 52, '555', '', '2025-07-17', 'SUMAIYA SADIYA', NULL, '', 'No', 'uploads/student_images/1752747008-15826797146878cc004e5a6!Image - Copy.jpg', '8096089914', '', NULL, NULL, NULL, 'MUSLIM', '', '2006-07-03', 'Female', 'KISHAN BAGH HYD, TELANGANA', '', '5', 0, '', 0, '830313456767', '', '', '', '', 'father', 'MOHD ABDUL RAHEEM', '9550561778', '', 'FARHANA BEGUM', '', '', 'MOHD ABDUL RAHEEM', 'Father', '9550561778', '', 'KISHAN BAGH HYD, TELANGANA', '', '', '', '', 'yes', '', '', '', '2025-07-17', 0, '', '', NULL, NULL, NULL, NULL, 1, NULL, '2025-07-17 10:10:08', '2025-07-17 10:10:08'),
(27, 54, '310', '', '2025-07-17', 'SHAISTA BEGUM', NULL, '', 'No', 'uploads/student_images/1752747369-16906720756878cd695a692!Image - Copy.jpg', '9019786455', '', NULL, NULL, NULL, 'MUSLIM', '', '2005-01-01', 'Female', 'AMLAPUR DOWN STREET NEAR JAMIA MASJID BIDAR', 'AMLAPUR DOWN STREET NEAR JAMIA MASJID BIDAR', '4', 0, '', 0, '621841790335', '', '', '', '', 'father', 'KAREEM PASHA', '8884303305', 'FARMER', 'HASEENA BEGUM', '9019716228', 'HOUSE WIFE', 'KAREEM PASHA', 'Father', '8884303305', 'FARMER', 'AMLAPUR DOWN STREET NEAR JAMIA MASJID BIDAR', '', '', '', '', 'yes', 'DEVINE PU COLLEGE', '', '', '2025-07-17', 0, 'C/O PATEL SAAB/ALI SIR', '', NULL, NULL, NULL, NULL, 1, NULL, '2025-07-17 10:16:09', '2025-07-17 10:16:09'),
(28, 56, '190', '', '2025-07-17', 'AYAN SHAIKH', NULL, '', 'No', 'uploads/student_images/1752747635-12490535816878ce737d637!Image - Copy.jpg', '9970603620', '', NULL, NULL, NULL, '', '', '2008-08-03', 'Male', 'APEX HOSPITAL CHOWBARA ROAD UDGIR-413517', 'APEX HOSPITAL CHOWBARA ROAD UDGIR-413517', '', 0, '', 0, '532153293854', '', '', '', '', 'father', 'MOBIN SHAIKH', '9970603620', 'LAB TECHNICIAN', 'ASEFA SHAIKH', '8421020607', '', 'MOBIN SHAIKH', 'Father', '9970603620', 'LAB TECHNICIAN', 'APEX HOSPITAL CHOWBARA ROAD UDGIR-413517', '', '', '', '', 'yes', '', '', '', '2025-07-17', 0, '', '', NULL, NULL, NULL, NULL, 1, NULL, '2025-07-17 10:20:35', '2025-07-17 10:20:35'),
(29, 58, '156', '', '2025-07-17', 'SHAIKH AQSA', NULL, '', 'No', NULL, '9955588440', '', NULL, NULL, NULL, '', '', '2002-07-05', 'Female', 'MUMBAI-400043', 'MUMBAI-400043', '3', 0, '', 0, '512821303965', '', '', '', '', 'father', 'NAZRE ALAM', '9955588440', '', 'NUSRAT', '', '', 'NAZRE ALAM', 'Father', '9955588440', '', 'MUMBAI-400043', '', '', '', '', 'yes', '', '', '', '2025-07-17', 0, '', '', NULL, NULL, NULL, NULL, 1, NULL, '2025-07-17 10:24:43', '2025-07-17 10:24:43'),
(30, 60, '154', '', '2025-07-17', 'KHAN SAIMAKHATOON', NULL, '', 'No', NULL, '8850698639', '', NULL, NULL, NULL, '', '', '2005-11-10', 'Female', 'MUMBAI-400043', 'MUMBAI-400043', '3', 0, '', 0, '', '', '', '', '', 'father', 'ZIYAUR REHMAN', '8850698639', '', 'SHAHEEN BANO', '', '', 'ZIYAUR REHMAN', 'Father', '8850698639', '', 'MUMBAI-400043', '', '', '', '', 'yes', '', '', '', '2025-07-17', 0, '', '', NULL, NULL, NULL, NULL, 1, NULL, '2025-07-17 10:28:33', '2025-07-17 10:28:33'),
(31, 62, '100', '', '2025-07-17', 'RADHAKRISHNA', NULL, '', 'No', 'uploads/student_images/1752748315-17717315556878d11bcc5c0!Image - Copy.jpg', '7975025419', '', NULL, NULL, NULL, '', '', '2006-06-11', 'Male', 'CMC COLONY GUMPA BIDAR', 'CMC COLONY GUMPA BIDAR', '9', 0, '', 0, '311867298406', '', '', '', '', 'father', 'MARUTI', '9916038368', '', 'RENUKA', '', '', 'MARUTI', 'Father', '9916038368', '', 'CMC COLONY GUMPA BIDAR', '', '', '', '', 'yes', 'BGL BOARD', '', '', '2025-07-17', 0, 'C/O KIRAN SIR', '', NULL, NULL, NULL, NULL, 1, NULL, '2025-07-17 10:31:55', '2025-07-17 10:31:55');

-- --------------------------------------------------------

--
-- Table structure for table `student_applied_discounts`
--

CREATE TABLE `student_applied_discounts` (
  `id` int(11) NOT NULL,
  `student_fees_deposite_id` int(11) DEFAULT NULL,
  `student_fees_discount_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `sub_invoice_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_applyleave`
--

CREATE TABLE `student_applyleave` (
  `id` int(11) NOT NULL,
  `student_session_id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `apply_date` date NOT NULL,
  `status` int(11) NOT NULL,
  `docs` varchar(200) DEFAULT NULL,
  `reason` text NOT NULL,
  `approve_by` int(11) DEFAULT NULL,
  `approve_date` date DEFAULT NULL,
  `request_type` int(11) NOT NULL COMMENT '0 student,1 staff',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_attendences`
--

CREATE TABLE `student_attendences` (
  `id` int(11) NOT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `biometric_attendence` int(11) NOT NULL DEFAULT 0,
  `qrcode_attendance` int(11) NOT NULL DEFAULT 0,
  `date` date DEFAULT NULL,
  `attendence_type_id` int(11) DEFAULT NULL,
  `remark` varchar(200) NOT NULL,
  `biometric_device_data` text DEFAULT NULL,
  `user_agent` varchar(250) DEFAULT NULL,
  `in_time` time DEFAULT NULL,
  `out_time` time DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_attendence_schedules`
--

CREATE TABLE `student_attendence_schedules` (
  `id` int(11) NOT NULL,
  `attendence_type_id` int(11) DEFAULT NULL,
  `class_section_id` int(11) DEFAULT NULL,
  `entry_time_from` time DEFAULT NULL,
  `entry_time_to` time DEFAULT NULL,
  `total_institute_hour` time DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_dashboard_settings`
--

CREATE TABLE `student_dashboard_settings` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `short_code` varchar(255) NOT NULL,
  `is_student` int(11) DEFAULT NULL,
  `is_parent` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `student_dashboard_settings`
--

INSERT INTO `student_dashboard_settings` (`id`, `name`, `short_code`, `is_student`, `is_parent`, `created_at`, `updated_at`) VALUES
(1, 'welcome_student', '', 1, 1, '2024-10-15 12:14:22', '2025-07-03 06:17:16'),
(2, 'notice_board', 'communicate', 1, 1, '2024-10-15 12:14:25', '2025-07-03 06:17:16'),
(3, 'subject_progress', 'lesson_plan', 1, 1, '2024-10-15 12:14:27', '2025-07-03 06:17:16'),
(4, 'upcomming_class', 'academics', 1, 1, '2024-10-15 12:14:55', '2025-07-03 06:17:16'),
(5, 'homework', 'homework', 1, 1, '2024-10-15 12:14:56', '2025-07-03 06:17:16'),
(6, 'teacher_list', 'human_resource', 1, 1, '2024-10-15 12:14:57', '2025-07-03 06:17:16'),
(7, 'visitor_list', 'front_office', 1, 1, '2024-10-15 12:14:58', '2025-07-03 06:17:16'),
(8, 'library', 'library', 1, 1, '2024-10-15 12:14:59', '2025-07-03 06:17:16');

-- --------------------------------------------------------

--
-- Table structure for table `student_doc`
--

CREATE TABLE `student_doc` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `doc` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `student_doc`
--

INSERT INTO `student_doc` (`id`, `student_id`, `title`, `doc`, `created_at`, `updated_at`) VALUES
(1, 1, 'ADMISSION FORM', '1752650000-36191551768775110b1675!WhatsApp Image 2025-07-16 at 12.00.22 PM.jpeg', '2025-07-16 07:13:20', '2025-07-16 07:13:20'),
(2, 1, 'SSLC', '1752650000-166280804468775110b19bd!WhatsApp Image 2025-07-16 at 12.00.24 PM.jpeg', '2025-07-16 07:13:20', '2025-07-16 07:13:20'),
(3, 1, 'PUC', '1752650000-90261839568775110b1bbe!WhatsApp Image 2025-07-16 at 12.00.22 PM (1).jpeg', '2025-07-16 07:13:20', '2025-07-16 07:13:20'),
(4, 1, 'TC', '1752650000-94091707068775110b1e7a!WhatsApp Image 2025-07-16 at 12.00.23 PM (1).jpeg', '2025-07-16 07:13:20', '2025-07-16 07:13:20'),
(5, 1, 'INCOME/CASTE', '1752650054-1271343389687751466820a!WhatsApp Image 2025-07-16 at 12.00.23 PM (2).jpeg', '2025-07-16 07:14:14', '2025-07-16 07:14:14'),
(6, 2, 'ADMISSION FORM', '1752650629-4343005396877538531b28!Image.jpg', '2025-07-16 07:23:49', '2025-07-16 07:23:49'),
(7, 2, 'SSLC', '1752650629-20639552626877538531fab!Image (3).jpg', '2025-07-16 07:23:49', '2025-07-16 07:23:49'),
(8, 2, 'AADHAR', '1752650629-7037322196877538532361!Image (5).jpg', '2025-07-16 07:23:49', '2025-07-16 07:23:49'),
(9, 2, 'PUC', '1752650629-9259147536877538532601!Image (4).jpg', '2025-07-16 07:23:49', '2025-07-16 07:23:49'),
(10, 2, 'TC', '1752650652-3629947186877539cea18b!Image (2).jpg', '2025-07-16 07:24:12', '2025-07-16 07:24:12'),
(11, 2, 'CASTE', '1752650668-1328835337687753acc4003!Image (6).jpg', '2025-07-16 07:24:28', '2025-07-16 07:24:28'),
(12, 3, 'ADMISSION FORM', '1752650981-1956503673687754e5ed118!Image.jpg', '2025-07-16 07:29:41', '2025-07-16 07:29:41'),
(13, 3, 'SSLC', '1752650981-72973604687754e5ed49f!WhatsApp Image 2025-07-16 at 11.32.49 AM (1).jpeg', '2025-07-16 07:29:41', '2025-07-16 07:29:41'),
(14, 3, 'PUC', '1752650981-844581528687754e5ed6eb!WhatsApp Image 2025-07-16 at 11.32.50 AM.jpeg', '2025-07-16 07:29:41', '2025-07-16 07:29:41'),
(15, 3, 'AADHAR', '1752650981-1418183993687754e5ed900!WhatsApp Image 2025-07-16 at 11.32.51 AM.jpeg', '2025-07-16 07:29:41', '2025-07-16 07:29:41'),
(16, 3, 'TC', '1752651003-540234801687754fb28557!WhatsApp Image 2025-07-16 at 11.32.49 AM.jpeg', '2025-07-16 07:30:03', '2025-07-16 07:30:03'),
(17, 4, 'ADMISSION FORM', '1752651278-19795283686877560e3445f!WhatsApp Image 2025-07-16 at 11.35.54 AM.jpeg', '2025-07-16 07:34:38', '2025-07-16 07:34:38'),
(18, 4, 'AADHAR', '1752651278-16914107896877560e3468b!WhatsApp Image 2025-07-16 at 11.35.55 AM.jpeg', '2025-07-16 07:34:38', '2025-07-16 07:34:38'),
(19, 4, 'SSLC ', '1752651278-1853384456877560e3489c!WhatsApp Image 2025-07-16 at 11.35.55 AM (1).jpeg', '2025-07-16 07:34:38', '2025-07-16 07:34:38'),
(20, 4, 'PUC', '1752651278-3578978356877560e34b0b!WhatsApp Image 2025-07-16 at 11.35.55 AM (2).jpeg', '2025-07-16 07:34:38', '2025-07-16 07:34:38'),
(21, 4, 'INCOME/CASTE', '1752651306-3675542356877562adafcf!WhatsApp Image 2025-07-16 at 11.35.54 AM (1).jpeg', '2025-07-16 07:35:06', '2025-07-16 07:35:06'),
(22, 5, 'ADMISSION FORM', '1752651805-15641412356877581d0464c!WhatsApp Image 2025-07-16 at 11.38.54 AM.jpeg', '2025-07-16 07:43:25', '2025-07-16 07:43:25'),
(23, 5, 'AADHAR', '1752651805-20977099686877581d04948!WhatsApp Image 2025-07-16 at 11.38.54 AM (1).jpeg', '2025-07-16 07:43:25', '2025-07-16 07:43:25'),
(24, 5, 'SSLC', '1752651805-15287978786877581d04bb0!WhatsApp Image 2025-07-16 at 11.38.55 AM (1).jpeg', '2025-07-16 07:43:25', '2025-07-16 07:43:25'),
(25, 5, 'PUC', '1752651805-12498535356877581d04e3a!WhatsApp Image 2025-07-16 at 11.38.55 AM.jpeg', '2025-07-16 07:43:25', '2025-07-16 07:43:25'),
(26, 6, 'ADMISSION FORM', '1752652111-19488339346877594f3287b!WhatsApp Image 2025-07-16 at 11.41.56 AM.jpeg', '2025-07-16 07:48:31', '2025-07-16 07:48:31'),
(27, 6, 'AADHAR', '1752652111-16012419856877594f32b16!WhatsApp Image 2025-07-16 at 11.41.58 AM.jpeg', '2025-07-16 07:48:31', '2025-07-16 07:48:31'),
(28, 6, 'SSLC', '1752652111-3274295156877594f32cbd!WhatsApp Image 2025-07-16 at 11.41.57 AM (1).jpeg', '2025-07-16 07:48:31', '2025-07-16 07:48:31'),
(29, 6, 'PUC', '1752652111-4312431086877594f32e99!WhatsApp Image 2025-07-16 at 11.41.57 AM.jpeg', '2025-07-16 07:48:31', '2025-07-16 07:48:31'),
(30, 6, 'TC', '1752652134-979366417687759667fd7a!WhatsApp Image 2025-07-16 at 11.41.57 AM (2).jpeg', '2025-07-16 07:48:54', '2025-07-16 07:48:54'),
(31, 7, 'ADMISSION FORM', '1752652440-98598578568775a98691fe!WhatsApp Image 2025-07-16 at 11.46.19 AM.jpeg', '2025-07-16 07:54:00', '2025-07-16 07:54:00'),
(32, 7, 'AADHAR', '1752652440-172194950068775a986940b!WhatsApp Image 2025-07-16 at 11.46.18 AM.jpeg', '2025-07-16 07:54:00', '2025-07-16 07:54:00'),
(33, 7, 'SSLC', '1752652440-115029238968775a98695bb!WhatsApp Image 2025-07-16 at 11.46.20 AM.jpeg', '2025-07-16 07:54:00', '2025-07-16 07:54:00'),
(34, 7, 'PUC', '1752652440-1713462268775a986977e!WhatsApp Image 2025-07-16 at 11.46.16 AM.jpeg', '2025-07-16 07:54:00', '2025-07-16 07:54:00'),
(35, 7, 'TC', '1752652458-118467020368775aaa3f5a1!WhatsApp Image 2025-07-16 at 11.46.18 AM (1).jpeg', '2025-07-16 07:54:18', '2025-07-16 07:54:18'),
(36, 8, 'ADMISSION FORM', '1752652826-167564375468775c1a7c868!WhatsApp Image 2025-07-16 at 11.51.15 AM.jpeg', '2025-07-16 08:00:26', '2025-07-16 08:00:26'),
(37, 8, 'AADHAR', '1752652826-79210212568775c1a7cc79!WhatsApp Image 2025-07-16 at 11.51.13 AM.jpeg', '2025-07-16 08:00:26', '2025-07-16 08:00:26'),
(38, 8, 'SSLC', '1752652826-75523195968775c1a7ce0e!WhatsApp Image 2025-07-16 at 11.51.14 AM.jpeg', '2025-07-16 08:00:26', '2025-07-16 08:00:26'),
(39, 8, 'PUC', '1752652826-132215217668775c1a7cffa!WhatsApp Image 2025-07-16 at 11.51.11 AM.jpeg', '2025-07-16 08:00:26', '2025-07-16 08:00:26'),
(40, 8, 'CASTE/INCOME', '1752652864-187789273368775c40bd2c7!WhatsApp Image 2025-07-16 at 11.51.12 AM.jpeg', '2025-07-16 08:01:04', '2025-07-16 08:01:04'),
(41, 9, 'ADMISSION FORM', '1752653644-51029761468775f4ca5fe7!Image.jpg', '2025-07-16 08:14:04', '2025-07-16 08:14:04'),
(42, 9, 'AADHAR', '1752653644-129970130668775f4ca6356!WhatsApp Image 2025-07-16 at 11.26.37 AM (1).jpeg', '2025-07-16 08:14:04', '2025-07-16 08:14:04'),
(43, 9, 'SSLC', '1752653644-72416407668775f4ca64f7!WhatsApp Image 2025-07-16 at 11.26.37 AM.jpeg', '2025-07-16 08:14:04', '2025-07-16 08:14:04'),
(44, 9, 'PUC', '1752653644-118382984968775f4ca66e0!WhatsApp Image 2025-07-16 at 11.26.38 AM.jpeg', '2025-07-16 08:14:04', '2025-07-16 08:14:04'),
(45, 9, 'TC', '1752653718-72166647268775f967ea30!WhatsApp Image 2025-07-16 at 11.26.37 AM (2).jpeg', '2025-07-16 08:15:18', '2025-07-16 08:15:18'),
(46, 10, 'ADMISSION FORM', '1752654087-29364283768776107880bd!WhatsApp Image 2025-07-16 at 11.54.06 AM (2).jpeg', '2025-07-16 08:21:27', '2025-07-16 08:21:27'),
(47, 10, 'AADHAR', '1752654087-8814788776877610788344!WhatsApp Image 2025-07-16 at 11.54.05 AM.jpeg', '2025-07-16 08:21:27', '2025-07-16 08:21:27'),
(48, 10, 'SSLC', '1752654087-1877700739687761078855a!WhatsApp Image 2025-07-16 at 11.54.06 AM (1).jpeg', '2025-07-16 08:21:27', '2025-07-16 08:21:27'),
(49, 10, 'PUC', '1752654087-792514255687761078877d!WhatsApp Image 2025-07-16 at 11.54.06 AM.jpeg', '2025-07-16 08:21:27', '2025-07-16 08:21:27'),
(50, 11, 'ADMISSION FORM', '1752654641-6644020246877633122bf6!WhatsApp Image 2025-07-16 at 11.57.17 AM.jpeg', '2025-07-16 08:30:41', '2025-07-16 08:30:41'),
(51, 11, 'AADHAR', '1752654641-19752905626877633122ea1!WhatsApp Image 2025-07-16 at 11.57.19 AM.jpeg', '2025-07-16 08:30:41', '2025-07-16 08:30:41'),
(52, 11, 'SSLC', '1752654641-191415165268776331230b7!WhatsApp Image 2025-07-16 at 11.57.20 AM.jpeg', '2025-07-16 08:30:41', '2025-07-16 08:30:41'),
(53, 11, 'PUC', '1752654641-4001613966877633123353!WhatsApp Image 2025-07-16 at 11.57.18 AM (1).jpeg', '2025-07-16 08:30:41', '2025-07-16 08:30:41'),
(54, 11, 'TC', '1752654711-68156406687763770eade!WhatsApp Image 2025-07-16 at 11.57.19 AM (1).jpeg', '2025-07-16 08:31:51', '2025-07-16 08:31:51'),
(55, 12, 'ADMISSION FORM', '1752654924-7539986166877644ceecf4!WhatsApp Image 2025-07-16 at 11.48.33 AM.jpeg', '2025-07-16 08:35:24', '2025-07-16 08:35:24'),
(56, 13, 'ADMISSION FORM', '1752659472-21391827186877761036fbb!Image - Copy.jpg', '2025-07-16 09:51:12', '2025-07-16 09:51:12'),
(57, 13, 'AADHAR', '1752659472-11527392416877761037327!Image (5).jpg', '2025-07-16 09:51:12', '2025-07-16 09:51:12'),
(58, 13, 'SSLC', '1752659472-9124134766877761037649!Image (2).jpg', '2025-07-16 09:51:12', '2025-07-16 09:51:12'),
(59, 13, 'PUC', '1752659472-882190754687776103797d!Image (3).jpg', '2025-07-16 09:51:12', '2025-07-16 09:51:12'),
(60, 13, 'TC', '1752660453-2023087802687779e53ff65!Image (4).jpg', '2025-07-16 10:07:33', '2025-07-16 10:07:33'),
(61, 13, 'MIGRATION', '1752660469-804702796687779f57f493!Image (7).jpg', '2025-07-16 10:07:49', '2025-07-16 10:07:49'),
(62, 13, 'CASTE', '1752660485-15747279168777a059aa71!Image (6).jpg', '2025-07-16 10:08:05', '2025-07-16 10:08:05'),
(63, 14, 'ADMISSION FORM', '1752661127-207837688168777c87bd5f9!Image.jpg', '2025-07-16 10:18:47', '2025-07-16 10:18:47'),
(64, 14, 'AADHAR', '1752661127-125844477068777c87bd986!Image (4).jpg', '2025-07-16 10:18:47', '2025-07-16 10:18:47'),
(65, 14, 'SSLC', '1752661127-46574241468777c87bdbda!Image (3).jpg', '2025-07-16 10:18:47', '2025-07-16 10:18:47'),
(66, 14, 'PUC', '1752661127-172145457768777c87be055!Image (2).jpg', '2025-07-16 10:18:47', '2025-07-16 10:18:47'),
(67, 15, 'ADMISSION FORM', '1752661668-113713510468777ea42bd12!Image - Copy.jpg', '2025-07-16 10:27:48', '2025-07-16 10:27:48'),
(68, 15, 'AADHAR', '1752661668-209943469868777ea42c06c!Image (2).jpg', '2025-07-16 10:27:48', '2025-07-16 10:27:48'),
(69, 15, 'SSLC ', '1752661668-20604068168777ea42c374!Image (3).jpg', '2025-07-16 10:27:48', '2025-07-16 10:27:48'),
(70, 15, 'PUC', '1752661668-20178216668777ea42c685!Image (4).jpg', '2025-07-16 10:27:48', '2025-07-16 10:27:48'),
(71, 16, 'ADMISSION FORM', '1752734986-38332493268789d0ad2660!Image.jpg', '2025-07-17 06:49:46', '2025-07-17 06:49:46'),
(72, 16, 'AADHAR', '1752734986-114200138368789d0ad2b9e!Image (3).jpg', '2025-07-17 06:49:46', '2025-07-17 06:49:46'),
(73, 16, 'TC', '1752734986-202837839268789d0ad2ed7!Image (2).jpg', '2025-07-17 06:49:46', '2025-07-17 06:49:46'),
(74, 16, 'INCOME CASTE', '1752734986-115250645068789d0ad31f3!Image (4).jpg', '2025-07-17 06:49:46', '2025-07-17 06:49:46'),
(75, 17, 'ADMISSION FORM', '1752735786-2744808326878a02abe0b7!Image.jpg', '2025-07-17 07:03:06', '2025-07-17 07:03:06'),
(76, 17, 'AADHAR', '1752735786-13632282986878a02abe3e7!Image (5).jpg', '2025-07-17 07:03:06', '2025-07-17 07:03:06'),
(77, 17, 'SSLC', '1752735786-17234820106878a02abe667!Image (4).jpg', '2025-07-17 07:03:06', '2025-07-17 07:03:06'),
(78, 17, 'PUC', '1752735786-7584430966878a02abe9eb!Image (2).jpg', '2025-07-17 07:03:06', '2025-07-17 07:03:06'),
(79, 17, 'TC', '1752735811-2556222156878a043c454f!Image (3).jpg', '2025-07-17 07:03:31', '2025-07-17 07:03:31'),
(80, 18, 'ADMISSION FORM', '1752736198-13728753856878a1c6b66ef!Image.jpg', '2025-07-17 07:09:58', '2025-07-17 07:09:58'),
(81, 18, 'AADHAR', '1752736198-16534467076878a1c6b6a5c!Image (3).jpg', '2025-07-17 07:09:58', '2025-07-17 07:09:58'),
(82, 18, 'SSLC', '1752736198-13879817536878a1c6b6cc7!Image (2).jpg', '2025-07-17 07:09:58', '2025-07-17 07:09:58'),
(83, 18, 'PUC', '1752736198-14927018756878a1c6b711e!Image (4).jpg', '2025-07-17 07:09:58', '2025-07-17 07:09:58'),
(84, 19, 'ADMISSION FORM', '1752736644-15573472356878a384e3623!Image (5).jpg', '2025-07-17 07:17:24', '2025-07-17 07:17:24'),
(85, 19, 'PUC', '1752736644-634244356878a384e399e!Image (7).jpg', '2025-07-17 07:17:24', '2025-07-17 07:17:24'),
(86, 19, 'SSLC', '1752736644-14008634366878a384e3f3a!Image (8).jpg', '2025-07-17 07:17:24', '2025-07-17 07:17:24'),
(87, 19, 'TC', '1752736644-20399706336878a384e44fb!Image (9).jpg', '2025-07-17 07:17:24', '2025-07-17 07:17:24'),
(88, 19, 'AADHAR', '1752736677-18503529226878a3a5f3057!Image (6).jpg', '2025-07-17 07:17:57', '2025-07-17 07:17:57'),
(89, 21, 'ADMISSION FORM', '1752741820-7935291656878b7bce352d!Image.jpg', '2025-07-17 08:43:40', '2025-07-17 08:43:40'),
(90, 21, 'AADHAR', '1752741840-19631178406878b7d04f940!Image (2).jpg', '2025-07-17 08:44:00', '2025-07-17 08:44:00'),
(91, 21, 'TC', '1752741881-10200654236878b7f91e0c0!Image (5).jpg', '2025-07-17 08:44:41', '2025-07-17 08:44:41'),
(92, 21, 'SSLC', '1752741906-20460926416878b8123ff8a!Image (3).jpg', '2025-07-17 08:45:06', '2025-07-17 08:45:06'),
(93, 21, 'PUC', '1752741931-8849933626878b82b2d86a!Image (4).jpg', '2025-07-17 08:45:31', '2025-07-17 08:45:31'),
(94, 20, 'ADMISSION FORM', '1752742107-14430392736878b8db16cc9!Image.jpg', '2025-07-17 08:48:27', '2025-07-17 08:48:27'),
(95, 20, 'AADHAR', '1752742123-19564785756878b8eb96928!Image (2).jpg', '2025-07-17 08:48:43', '2025-07-17 08:48:43'),
(96, 20, 'SSLC', '1752742203-14925691346878b93bc85a1!Image (3).jpg', '2025-07-17 08:50:03', '2025-07-17 08:50:03'),
(97, 20, 'PUC', '1752742235-17405927706878b95b99c35!Image (4).jpg', '2025-07-17 08:50:35', '2025-07-17 08:50:35'),
(98, 20, 'INCOME/CASTE', '1752742259-19412102206878b973a858d!Image (5).jpg', '2025-07-17 08:50:59', '2025-07-17 08:50:59'),
(99, 22, 'ADMISSION FORM', '1752743154-6744677336878bcf22fc27!Image.jpg', '2025-07-17 09:05:54', '2025-07-17 09:05:54'),
(100, 22, 'SSLC', '1752743364-2195361746878bdc493656!Image (3).jpg', '2025-07-17 09:09:24', '2025-07-17 09:09:24'),
(101, 22, 'AADHAR', '1752743379-1537191756878bdd3e5597!Image (2).jpg', '2025-07-17 09:09:39', '2025-07-17 09:09:39'),
(102, 22, 'PUC', '1752743398-21212285086878bde6df8d2!Image (4).jpg', '2025-07-17 09:09:58', '2025-07-17 09:09:58'),
(103, 22, 'TC', '1752743451-15692059166878be1baf34d!Image (5).jpg', '2025-07-17 09:10:51', '2025-07-17 09:10:51'),
(104, 22, 'MIGRATION', '1752743479-10350538656878be3779735!Image (6).jpg', '2025-07-17 09:11:19', '2025-07-17 09:11:19'),
(105, 23, 'ADMISSION FORM', '1752743616-7947430876878bec0638ab!Image.jpg', '2025-07-17 09:13:36', '2025-07-17 09:13:36'),
(106, 23, 'SSLC', '1752743646-1148022606878bede80880!Image (2).jpg', '2025-07-17 09:14:06', '2025-07-17 09:14:06'),
(107, 23, 'PUC', '1752743665-1940693756878bef11346a!Image (3).jpg', '2025-07-17 09:14:25', '2025-07-17 09:14:25'),
(108, 23, 'TC', '1752743687-10898914206878bf075c5bf!Image (4).jpg', '2025-07-17 09:14:47', '2025-07-17 09:14:47'),
(109, 24, 'ADMISSION FORM', '1752743812-2554036916878bf8407c25!Image.jpg', '2025-07-17 09:16:52', '2025-07-17 09:16:52'),
(110, 24, 'AADHAR', '1752743896-2909798446878bfd83691b!Image (2).jpg', '2025-07-17 09:18:16', '2025-07-17 09:18:16'),
(111, 24, 'SSLC', '1752743925-2165555016878bff577014!Image (3).jpg', '2025-07-17 09:18:45', '2025-07-17 09:18:45'),
(112, 24, 'PUC', '1752743954-1403008476878c012896b4!Image (4).jpg', '2025-07-17 09:19:14', '2025-07-17 09:19:14'),
(113, 24, 'TC', '1752743971-7936479916878c0232d3d2!Image (5).jpg', '2025-07-17 09:19:31', '2025-07-17 09:19:31'),
(114, 25, 'ADMISSION FORM', '1752744045-2044229486878c06d00388!Image.jpg', '2025-07-17 09:20:45', '2025-07-17 09:20:45'),
(115, 25, 'AADHAR', '1752744059-10276674516878c07bcb2ca!Image (2).jpg', '2025-07-17 09:20:59', '2025-07-17 09:20:59'),
(116, 25, 'SSLC', '1752744092-3425967436878c09cd46c3!Image (4).jpg', '2025-07-17 09:21:32', '2025-07-17 09:21:32'),
(117, 25, 'PUC', '1752744169-6574037866878c0e9a11a0!Image (5).jpg', '2025-07-17 09:22:49', '2025-07-17 09:22:49'),
(118, 25, 'TC', '1752744197-15757650536878c105c9b56!Image (3).jpg', '2025-07-17 09:23:17', '2025-07-17 09:23:17'),
(119, 26, 'ADMISSION FORM', '1752747008-14042538486878cc004eec8!Image (4).jpg', '2025-07-17 10:10:08', '2025-07-17 10:10:08'),
(120, 26, 'AADHAR', '1752747008-11109440866878cc004f2ec!Image (2).jpg', '2025-07-17 10:10:08', '2025-07-17 10:10:08'),
(121, 26, 'SSLC', '1752747008-3301114606878cc004f571!Image (3).jpg', '2025-07-17 10:10:08', '2025-07-17 10:10:08'),
(122, 26, 'PUC', '1752747008-18312914096878cc004f9a3!Image (4).jpg', '2025-07-17 10:10:08', '2025-07-17 10:10:08'),
(123, 26, 'TC', '1752747039-13426674046878cc1f67fb8!Image (5).jpg', '2025-07-17 10:10:39', '2025-07-17 10:10:39'),
(124, 27, 'ADMISSION FORM', '1752747369-13225884256878cd695afd6!Image.jpg', '2025-07-17 10:16:09', '2025-07-17 10:16:09'),
(125, 27, 'SSLC', '1752747369-1652163446878cd695b345!Image (2).jpg', '2025-07-17 10:16:09', '2025-07-17 10:16:09'),
(126, 27, 'PUC', '1752747369-10287484046878cd695b72a!Image (3).jpg', '2025-07-17 10:16:09', '2025-07-17 10:16:09'),
(127, 28, 'ADMISSION FORM', '1752747635-20871837806878ce737e419!Image.jpg', '2025-07-17 10:20:35', '2025-07-17 10:20:35'),
(128, 28, 'AADHAR', '1752747635-76385056878ce737e754!Image (5).jpg', '2025-07-17 10:20:35', '2025-07-17 10:20:35'),
(129, 28, 'SSLC', '1752747635-16078079256878ce737e92b!Image (2).jpg', '2025-07-17 10:20:35', '2025-07-17 10:20:35'),
(130, 28, 'PUC', '1752747635-12674250256878ce737ec90!Image (3).jpg', '2025-07-17 10:20:35', '2025-07-17 10:20:35'),
(131, 28, 'TC', '1752747654-3091707006878ce8652370!Image (4).jpg', '2025-07-17 10:20:54', '2025-07-17 10:20:54'),
(132, 31, 'ADMISSION FORM', '1752748315-1320713976878d11bccff0!Image.jpg', '2025-07-17 10:31:55', '2025-07-17 10:31:55'),
(133, 31, 'AADHAR', '1752748315-19518863896878d11bcd34d!Image (2).jpg', '2025-07-17 10:31:55', '2025-07-17 10:31:55'),
(134, 31, 'SSLC', '1752748315-19606979416878d11bcd638!Image (3).jpg', '2025-07-17 10:31:55', '2025-07-17 10:31:55');

-- --------------------------------------------------------

--
-- Table structure for table `student_edit_fields`
--

CREATE TABLE `student_edit_fields` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_educational_details`
--

CREATE TABLE `student_educational_details` (
  `id` int(11) NOT NULL,
  `course` varchar(255) NOT NULL,
  `university` varchar(255) NOT NULL,
  `education_year` varchar(255) NOT NULL,
  `education_detail` varchar(255) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_fees`
--

CREATE TABLE `student_fees` (
  `id` int(11) NOT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `feemaster_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `amount_discount` float(10,2) NOT NULL,
  `amount_fine` float(10,2) NOT NULL DEFAULT 0.00,
  `description` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `payment_mode` varchar(50) NOT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_fees_deposite`
--

CREATE TABLE `student_fees_deposite` (
  `id` int(11) NOT NULL,
  `student_fees_master_id` int(11) DEFAULT NULL,
  `fee_groups_feetype_id` int(11) DEFAULT NULL,
  `student_transport_fee_id` int(11) DEFAULT NULL,
  `amount_detail` text DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `student_fees_deposite`
--

INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `student_transport_fee_id`, `amount_detail`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 7, 2, NULL, '{\"1\":{\"amount\":10000,\"amount_discount\":0,\"amount_fine\":0,\"date\":\"2025-07-16\",\"description\":\"\",\"collected_by\":\"Super Admin(9000)\",\"payment_mode\":\"Cash\",\"received_by\":\"1\",\"inv_no\":1}}', 'no', '2025-07-16 08:01:44', '2025-07-16 08:01:44'),
(2, 6, 4, NULL, '{\"1\":{\"amount\":36600,\"amount_discount\":0,\"amount_fine\":0,\"date\":\"2025-07-16\",\"description\":\"\",\"collected_by\":\"Super Admin(9000)\",\"payment_mode\":\"Cash\",\"received_by\":\"1\",\"inv_no\":1}}', 'no', '2025-07-16 08:02:25', '2025-07-16 08:02:25'),
(3, 5, 3, NULL, '{\"1\":{\"amount\":10000,\"amount_discount\":0,\"amount_fine\":0,\"date\":\"2025-05-31\",\"description\":\"\",\"collected_by\":\"Super Admin(9000)\",\"payment_mode\":\"Cash\",\"received_by\":\"1\",\"inv_no\":1}}', 'no', '2025-07-16 08:03:29', '2025-07-16 08:03:29'),
(4, 4, 4, NULL, '{\"1\":{\"amount\":10000,\"amount_discount\":0,\"amount_fine\":0,\"date\":\"2025-06-11\",\"description\":\"\",\"collected_by\":\"Super Admin(9000)\",\"payment_mode\":\"Cash\",\"received_by\":\"1\",\"inv_no\":1}}', 'no', '2025-07-16 08:04:37', '2025-07-16 08:04:37'),
(5, 3, 7, NULL, '{\"1\":{\"amount\":20000,\"amount_discount\":0,\"amount_fine\":0,\"date\":\"2025-06-24\",\"description\":\"\",\"collected_by\":\"Super Admin(9000)\",\"payment_mode\":\"Cash\",\"received_by\":\"1\",\"inv_no\":1}}', 'no', '2025-07-16 08:05:46', '2025-07-16 08:05:46'),
(6, 2, 4, NULL, '{\"1\":{\"amount\":10000,\"amount_discount\":0,\"amount_fine\":0,\"date\":\"2025-06-08\",\"description\":\"\",\"collected_by\":\"Super Admin(9000)\",\"payment_mode\":\"Cash\",\"received_by\":\"1\",\"inv_no\":1}}', 'no', '2025-07-16 08:07:52', '2025-07-16 08:07:52'),
(7, 1, 5, NULL, '{\"1\":{\"amount\":15000,\"amount_discount\":0,\"amount_fine\":0,\"date\":\"2025-07-14\",\"description\":\"\",\"collected_by\":\"Super Admin(9000)\",\"payment_mode\":\"Cash\",\"received_by\":\"1\",\"inv_no\":1}}', 'no', '2025-07-16 08:08:22', '2025-07-16 08:08:22'),
(8, 8, 1, NULL, '{\"1\":{\"amount\":20000,\"amount_discount\":0,\"amount_fine\":0,\"date\":\"2025-07-16\",\"description\":\"\",\"collected_by\":\"Super Admin(9000)\",\"payment_mode\":\"Cash\",\"received_by\":\"1\",\"inv_no\":1}}', 'no', '2025-07-16 08:14:56', '2025-07-16 08:14:56'),
(9, 9, 5, NULL, '{\"1\":{\"amount\":35000,\"amount_discount\":0,\"amount_fine\":0,\"date\":\"2025-07-14\",\"description\":\"\",\"collected_by\":\"Super Admin(9000)\",\"payment_mode\":\"Cash\",\"received_by\":\"1\",\"inv_no\":1}}', 'no', '2025-07-16 08:21:50', '2025-07-16 08:21:50'),
(10, 10, 1, NULL, '{\"1\":{\"amount\":30000,\"amount_discount\":0,\"amount_fine\":0,\"date\":\"2025-05-13\",\"description\":\"\",\"collected_by\":\"Super Admin(9000)\",\"payment_mode\":\"Cash\",\"received_by\":\"1\",\"inv_no\":1}}', 'no', '2025-07-16 08:31:16', '2025-07-16 08:31:16'),
(11, 11, 7, NULL, '{\"1\":{\"amount\":5000,\"amount_discount\":0,\"amount_fine\":0,\"date\":\"2025-07-07\",\"description\":\"\",\"collected_by\":\"Super Admin(9000)\",\"payment_mode\":\"Cash\",\"received_by\":\"1\",\"inv_no\":1}}', 'no', '2025-07-16 08:35:50', '2025-07-16 08:35:50'),
(12, 12, 4, NULL, '{\"1\":{\"amount\":10000,\"amount_discount\":0,\"amount_fine\":0,\"date\":\"2025-06-18\",\"description\":\"\",\"collected_by\":\"Super Admin(9000)\",\"payment_mode\":\"Cash\",\"received_by\":\"1\",\"inv_no\":1}}', 'no', '2025-07-16 09:59:17', '2025-07-16 09:59:17'),
(13, 13, 2, NULL, '{\"1\":{\"amount\":15000,\"amount_discount\":0,\"amount_fine\":0,\"date\":\"2025-06-28\",\"description\":\"\",\"collected_by\":\"Super Admin(9000)\",\"payment_mode\":\"Cash\",\"received_by\":\"1\",\"inv_no\":1}}', 'no', '2025-07-16 10:19:46', '2025-07-16 10:19:46'),
(14, 14, 3, NULL, '{\"1\":{\"amount\":10000,\"amount_discount\":0,\"amount_fine\":0,\"date\":\"2025-06-16\",\"description\":\"\",\"collected_by\":\"Super Admin(9000)\",\"payment_mode\":\"Cash\",\"received_by\":\"1\",\"inv_no\":1}}', 'no', '2025-07-16 10:28:12', '2025-07-16 10:28:12'),
(15, 15, 4, NULL, '{\"1\":{\"amount\":20000,\"amount_discount\":0,\"amount_fine\":0,\"date\":\"2025-07-05\",\"description\":\"\",\"collected_by\":\"Super Admin(9000)\",\"payment_mode\":\"Cash\",\"received_by\":\"1\",\"inv_no\":1}}', 'no', '2025-07-17 06:50:17', '2025-07-17 06:50:17'),
(16, 16, 8, NULL, '{\"1\":{\"amount\":30000,\"amount_discount\":0,\"amount_fine\":0,\"date\":\"2025-06-23\",\"description\":\"\",\"collected_by\":\"Super Admin(9000)\",\"payment_mode\":\"Cash\",\"received_by\":\"1\",\"inv_no\":1}}', 'no', '2025-07-17 07:05:19', '2025-07-17 07:05:19'),
(17, 17, 8, NULL, '{\"1\":{\"amount\":20000,\"amount_discount\":0,\"amount_fine\":0,\"date\":\"2025-06-23\",\"description\":\"\",\"collected_by\":\"Super Admin(9000)\",\"payment_mode\":\"Cash\",\"received_by\":\"1\",\"inv_no\":1}}', 'no', '2025-07-17 07:10:26', '2025-07-17 07:10:26'),
(18, 18, 5, NULL, '{\"1\":{\"amount\":5000,\"amount_discount\":0,\"amount_fine\":0,\"date\":\"2025-06-30\",\"description\":\"\",\"collected_by\":\"Super Admin(9000)\",\"payment_mode\":\"Cash\",\"received_by\":\"1\",\"inv_no\":1}}', 'no', '2025-07-17 07:18:20', '2025-07-17 07:18:20'),
(19, 19, 5, NULL, '{\"1\":{\"amount\":10000,\"amount_discount\":0,\"amount_fine\":0,\"date\":\"2025-07-17\",\"description\":\"\",\"collected_by\":\"Super Admin(9000)\",\"payment_mode\":\"Cash\",\"received_by\":\"1\",\"inv_no\":1}}', 'no', '2025-07-17 10:11:00', '2025-07-17 10:11:00'),
(20, 20, 4, NULL, '{\"1\":{\"amount\":10000,\"amount_discount\":0,\"amount_fine\":0,\"date\":\"2025-07-17\",\"description\":\"\",\"collected_by\":\"Super Admin(9000)\",\"payment_mode\":\"Cash\",\"received_by\":\"1\",\"inv_no\":1}}', 'no', '2025-07-17 10:21:07', '2025-07-17 10:21:07');

-- --------------------------------------------------------

--
-- Table structure for table `student_fees_discounts`
--

CREATE TABLE `student_fees_discounts` (
  `id` int(11) NOT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `fees_discount_id` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'assigned',
  `payment_id` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_fees_master`
--

CREATE TABLE `student_fees_master` (
  `id` int(11) NOT NULL,
  `is_system` int(11) NOT NULL DEFAULT 0,
  `student_session_id` int(11) DEFAULT NULL,
  `fee_session_group_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT 0.00,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `student_fees_master`
--

INSERT INTO `student_fees_master` (`id`, `is_system`, `student_session_id`, `fee_session_group_id`, `amount`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 5, 0.00, 'no', '2025-07-16 07:13:20', '2025-07-16 07:13:20'),
(2, 0, 2, 4, 0.00, 'no', '2025-07-16 07:23:49', '2025-07-16 07:23:49'),
(3, 0, 4, 7, 0.00, 'no', '2025-07-16 07:34:38', '2025-07-16 07:34:38'),
(4, 0, 5, 4, 0.00, 'no', '2025-07-16 07:43:25', '2025-07-16 07:43:25'),
(5, 0, 6, 3, 0.00, 'no', '2025-07-16 07:48:31', '2025-07-16 07:48:31'),
(6, 0, 7, 4, 0.00, 'no', '2025-07-16 07:54:00', '2025-07-16 07:54:00'),
(7, 0, 8, 2, 0.00, 'no', '2025-07-16 08:00:26', '2025-07-16 08:00:26'),
(8, 0, 9, 1, 0.00, 'no', '2025-07-16 08:14:04', '2025-07-16 08:14:04'),
(9, 0, 10, 5, 0.00, 'no', '2025-07-16 08:21:27', '2025-07-16 08:21:27'),
(10, 0, 11, 1, 0.00, 'no', '2025-07-16 08:30:41', '2025-07-16 08:30:41'),
(11, 0, 12, 7, 0.00, 'no', '2025-07-16 08:35:24', '2025-07-16 08:35:24'),
(12, 0, 13, 4, 0.00, 'no', '2025-07-16 09:51:12', '2025-07-16 09:51:12'),
(13, 0, 14, 2, 0.00, 'no', '2025-07-16 10:18:47', '2025-07-16 10:18:47'),
(14, 0, 15, 3, 0.00, 'no', '2025-07-16 10:27:48', '2025-07-16 10:27:48'),
(15, 0, 16, 4, 0.00, 'no', '2025-07-17 06:49:46', '2025-07-17 06:49:46'),
(16, 0, 17, 8, 0.00, 'no', '2025-07-17 07:04:49', '2025-07-17 07:04:49'),
(17, 0, 18, 8, 0.00, 'no', '2025-07-17 07:09:58', '2025-07-17 07:09:58'),
(18, 0, 19, 5, 0.00, 'no', '2025-07-17 07:17:24', '2025-07-17 07:17:24'),
(19, 0, 26, 5, 0.00, 'no', '2025-07-17 10:10:08', '2025-07-17 10:10:08'),
(20, 0, 28, 4, 0.00, 'no', '2025-07-17 10:20:35', '2025-07-17 10:20:35'),
(21, 0, 31, 9, 0.00, 'no', '2025-07-17 10:32:35', '2025-07-17 10:32:35');

-- --------------------------------------------------------

--
-- Table structure for table `student_fees_processing`
--

CREATE TABLE `student_fees_processing` (
  `id` int(11) NOT NULL,
  `gateway_ins_id` int(11) NOT NULL,
  `fee_category` varchar(255) NOT NULL,
  `student_fees_master_id` int(11) DEFAULT NULL,
  `fee_groups_feetype_id` int(11) DEFAULT NULL,
  `student_transport_fee_id` int(11) DEFAULT NULL,
  `amount_detail` text DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_refrence`
--

CREATE TABLE `student_refrence` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `relation` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `profession` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `student_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_session`
--

CREATE TABLE `student_session` (
  `id` int(11) NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `hostel_room_id` int(11) DEFAULT NULL,
  `vehroute_id` int(11) DEFAULT NULL,
  `route_pickup_point_id` int(11) DEFAULT NULL,
  `transport_fees` float(10,2) NOT NULL DEFAULT 0.00,
  `fees_discount` float(10,2) NOT NULL DEFAULT 0.00,
  `is_leave` int(11) NOT NULL DEFAULT 0,
  `is_active` varchar(255) DEFAULT 'no',
  `is_alumni` int(11) NOT NULL,
  `default_login` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `student_session`
--

INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `hostel_room_id`, `vehroute_id`, `route_pickup_point_id`, `transport_fees`, `fees_discount`, `is_leave`, `is_active`, `is_alumni`, `default_login`, `created_at`, `updated_at`) VALUES
(1, 21, 1, 1, 1, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-07-16 07:13:20', '2025-07-16 07:13:20'),
(2, 21, 2, 1, 1, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-07-16 07:23:49', '2025-07-16 07:23:49'),
(3, 21, 3, 1, 1, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-07-16 07:29:41', '2025-07-16 07:29:41'),
(4, 21, 4, 1, 1, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-07-16 07:34:38', '2025-07-16 07:34:38'),
(5, 21, 5, 1, 1, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-07-16 07:43:25', '2025-07-16 07:43:25'),
(6, 21, 6, 1, 1, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-07-16 07:48:31', '2025-07-16 07:48:31'),
(7, 21, 7, 1, 1, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-07-16 07:54:00', '2025-07-16 07:54:00'),
(8, 21, 8, 1, 1, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-07-16 08:00:26', '2025-07-16 08:00:26'),
(9, 21, 9, 1, 1, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-07-16 08:14:04', '2025-07-16 08:14:04'),
(10, 21, 10, 1, 1, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-07-16 08:21:27', '2025-07-16 08:21:27'),
(11, 21, 11, 1, 1, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-07-16 08:30:41', '2025-07-16 08:30:41'),
(12, 21, 12, 1, 1, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-07-16 08:35:24', '2025-07-16 08:35:24'),
(13, 21, 13, 1, 1, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-07-16 09:51:12', '2025-07-16 09:51:12'),
(14, 21, 14, 1, 1, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-07-16 10:18:47', '2025-07-16 10:18:47'),
(15, 21, 15, 1, 1, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-07-16 10:27:48', '2025-07-16 10:27:48'),
(16, 21, 16, 1, 1, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-07-17 06:49:46', '2025-07-17 06:49:46'),
(17, 21, 17, 1, 1, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-07-17 07:03:06', '2025-07-17 07:03:06'),
(18, 21, 18, 1, 1, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-07-17 07:09:58', '2025-07-17 07:09:58'),
(19, 21, 19, 1, 1, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 1, '2025-07-17 07:17:24', '2025-07-17 07:20:43'),
(20, 21, 20, 1, 1, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-07-17 07:30:41', '2025-07-17 07:30:41'),
(21, 21, 21, 1, 1, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-07-17 07:32:46', '2025-07-17 07:32:46'),
(22, 21, 22, 1, 1, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-07-17 07:36:51', '2025-07-17 07:36:51'),
(23, 21, 23, 1, 1, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-07-17 07:39:54', '2025-07-17 07:39:54'),
(24, 21, 24, 1, 1, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-07-17 07:49:55', '2025-07-17 07:49:55'),
(25, 21, 25, 1, 1, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-07-17 07:59:01', '2025-07-17 07:59:01'),
(26, 21, 26, 1, 1, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-07-17 10:10:08', '2025-07-17 10:10:08'),
(27, 21, 27, 1, 1, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-07-17 10:16:09', '2025-07-17 10:16:09'),
(28, 21, 28, 1, 1, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-07-17 10:20:35', '2025-07-17 10:20:35'),
(29, 21, 29, 1, 1, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-07-17 10:24:43', '2025-07-17 10:24:43'),
(30, 21, 30, 1, 1, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-07-17 10:28:33', '2025-07-17 10:28:33'),
(31, 21, 31, 1, 1, NULL, NULL, NULL, 0.00, 0.00, 0, 'no', 0, 0, '2025-07-17 10:31:55', '2025-07-17 10:31:55');

-- --------------------------------------------------------

--
-- Table structure for table `student_skills_detail`
--

CREATE TABLE `student_skills_detail` (
  `id` int(11) NOT NULL,
  `skill_category` varchar(255) NOT NULL,
  `skill_detail` varchar(255) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_subject_attendances`
--

CREATE TABLE `student_subject_attendances` (
  `id` int(11) NOT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `subject_timetable_id` int(11) DEFAULT NULL,
  `attendence_type_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_timeline`
--

CREATE TABLE `student_timeline` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `timeline_date` date NOT NULL,
  `description` text NOT NULL,
  `document` varchar(200) DEFAULT NULL,
  `status` varchar(200) NOT NULL,
  `created_student_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_transport_fees`
--

CREATE TABLE `student_transport_fees` (
  `id` int(11) NOT NULL,
  `transport_feemaster_id` int(11) NOT NULL,
  `student_session_id` int(11) NOT NULL,
  `route_pickup_point_id` int(11) NOT NULL,
  `generated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_work_experience`
--

CREATE TABLE `student_work_experience` (
  `id` int(11) NOT NULL,
  `institute` text NOT NULL,
  `designation` text NOT NULL,
  `year` varchar(255) NOT NULL,
  `location` text NOT NULL,
  `detail` text NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `code` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subject_groups`
--

CREATE TABLE `subject_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subject_group_class_sections`
--

CREATE TABLE `subject_group_class_sections` (
  `id` int(11) NOT NULL,
  `subject_group_id` int(11) DEFAULT NULL,
  `class_section_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subject_group_subjects`
--

CREATE TABLE `subject_group_subjects` (
  `id` int(11) NOT NULL,
  `subject_group_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subject_syllabus`
--

CREATE TABLE `subject_syllabus` (
  `id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_for` int(11) NOT NULL,
  `date` date NOT NULL,
  `time_from` varchar(255) NOT NULL,
  `time_to` varchar(255) NOT NULL,
  `presentation` text NOT NULL,
  `attachment` text NOT NULL,
  `lacture_youtube_url` varchar(255) NOT NULL,
  `lacture_video` varchar(255) NOT NULL,
  `sub_topic` text NOT NULL,
  `teaching_method` text NOT NULL,
  `general_objectives` text NOT NULL,
  `previous_knowledge` text NOT NULL,
  `comprehensive_questions` text NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subject_timetable`
--

CREATE TABLE `subject_timetable` (
  `id` int(11) NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `subject_group_id` int(11) DEFAULT NULL,
  `subject_group_subject_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `day` varchar(20) DEFAULT NULL,
  `time_from` varchar(20) DEFAULT NULL,
  `time_to` varchar(20) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `room_no` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `submit_assignment`
--

CREATE TABLE `submit_assignment` (
  `id` int(11) NOT NULL,
  `homework_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `docs` varchar(225) NOT NULL,
  `file_name` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `template_admitcards`
--

CREATE TABLE `template_admitcards` (
  `id` int(11) NOT NULL,
  `template` varchar(250) DEFAULT NULL,
  `heading` text DEFAULT NULL,
  `title` text DEFAULT NULL,
  `left_logo` varchar(200) DEFAULT NULL,
  `right_logo` varchar(200) DEFAULT NULL,
  `exam_name` varchar(200) DEFAULT NULL,
  `school_name` varchar(200) DEFAULT NULL,
  `exam_center` varchar(200) DEFAULT NULL,
  `sign` varchar(200) DEFAULT NULL,
  `background_img` varchar(200) DEFAULT NULL,
  `is_name` int(11) NOT NULL DEFAULT 1,
  `is_father_name` int(11) NOT NULL DEFAULT 1,
  `is_mother_name` int(11) NOT NULL DEFAULT 1,
  `is_dob` int(11) NOT NULL DEFAULT 1,
  `is_admission_no` int(11) NOT NULL DEFAULT 1,
  `is_roll_no` int(11) NOT NULL DEFAULT 1,
  `is_address` int(11) NOT NULL DEFAULT 1,
  `is_gender` int(11) NOT NULL DEFAULT 1,
  `is_photo` int(11) NOT NULL,
  `is_class` int(11) NOT NULL DEFAULT 0,
  `is_section` int(11) NOT NULL DEFAULT 0,
  `is_active` int(11) DEFAULT 0,
  `content_footer` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `template_admitcards`
--

INSERT INTO `template_admitcards` (`id`, `template`, `heading`, `title`, `left_logo`, `right_logo`, `exam_name`, `school_name`, `exam_center`, `sign`, `background_img`, `is_name`, `is_father_name`, `is_mother_name`, `is_dob`, `is_admission_no`, `is_roll_no`, `is_address`, `is_gender`, `is_photo`, `is_class`, `is_section`, `is_active`, `content_footer`, `created_at`, `updated_at`) VALUES
(1, 'Sample Admit Card', '', '', '', '', 'Test', 'Mount Carmel School', 'test dmit card2', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2020-02-28 14:26:15', '2020-02-28 14:26:15');

-- --------------------------------------------------------

--
-- Table structure for table `template_marksheets`
--

CREATE TABLE `template_marksheets` (
  `id` int(11) NOT NULL,
  `header_image` varchar(200) DEFAULT NULL,
  `template` varchar(200) DEFAULT NULL,
  `heading` text DEFAULT NULL,
  `title` text DEFAULT NULL,
  `left_logo` varchar(200) DEFAULT NULL,
  `right_logo` varchar(200) DEFAULT NULL,
  `exam_name` varchar(200) DEFAULT NULL,
  `school_name` varchar(200) DEFAULT NULL,
  `exam_center` varchar(200) DEFAULT NULL,
  `left_sign` varchar(200) DEFAULT NULL,
  `middle_sign` varchar(200) DEFAULT NULL,
  `right_sign` varchar(200) DEFAULT NULL,
  `exam_session` int(11) DEFAULT 1,
  `is_name` int(11) DEFAULT 1,
  `is_father_name` int(11) DEFAULT 1,
  `is_mother_name` int(11) DEFAULT 1,
  `is_dob` int(11) DEFAULT 1,
  `is_admission_no` int(11) DEFAULT 1,
  `is_roll_no` int(11) DEFAULT 1,
  `is_photo` int(11) DEFAULT 1,
  `is_division` int(11) NOT NULL DEFAULT 1,
  `is_rank` int(11) NOT NULL DEFAULT 0,
  `is_customfield` int(11) NOT NULL,
  `background_img` varchar(200) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `is_class` int(11) NOT NULL DEFAULT 0,
  `is_teacher_remark` int(11) NOT NULL DEFAULT 1,
  `is_section` int(11) NOT NULL DEFAULT 0,
  `content` text DEFAULT NULL,
  `content_footer` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `template_marksheets`
--

INSERT INTO `template_marksheets` (`id`, `header_image`, `template`, `heading`, `title`, `left_logo`, `right_logo`, `exam_name`, `school_name`, `exam_center`, `left_sign`, `middle_sign`, `right_sign`, `exam_session`, `is_name`, `is_father_name`, `is_mother_name`, `is_dob`, `is_admission_no`, `is_roll_no`, `is_photo`, `is_division`, `is_rank`, `is_customfield`, `background_img`, `date`, `is_class`, `is_teacher_remark`, `is_section`, `content`, `content_footer`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Sample Marksheet', 'BOARD OF SECONDARY EDUCATION, MADHYA PRADESH, BHOPAL', 'BOARD OF SECONDARY EDUCATION, MADHYA PRADESH, BHOPAL', '', '', 'HIGHER SECONDARY SCHOOL CERTIFICATE EXAMINATION', 'Mount Carmel School', 'GOVT GIRLS H S SCHOOL', '', '', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, '', NULL, 0, 1, 0, NULL, NULL, '2020-02-28 14:26:06', '2020-02-28 14:26:06');

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

CREATE TABLE `topic` (
  `id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `complete_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transport_feemaster`
--

CREATE TABLE `transport_feemaster` (
  `id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `month` varchar(50) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `fine_amount` float(10,2) DEFAULT 0.00,
  `fine_type` varchar(50) DEFAULT NULL,
  `fine_percentage` float(10,2) DEFAULT 0.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transport_route`
--

CREATE TABLE `transport_route` (
  `id` int(11) NOT NULL,
  `route_title` varchar(100) DEFAULT NULL,
  `no_of_vehicle` int(11) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `upload_contents`
--

CREATE TABLE `upload_contents` (
  `id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `image` varchar(300) DEFAULT NULL,
  `thumb_path` varchar(300) DEFAULT NULL,
  `dir_path` varchar(300) DEFAULT NULL,
  `real_name` text NOT NULL,
  `img_name` varchar(300) DEFAULT NULL,
  `thumb_name` varchar(300) DEFAULT NULL,
  `file_type` varchar(100) NOT NULL,
  `mime_type` text NOT NULL,
  `file_size` varchar(100) NOT NULL,
  `vid_url` text NOT NULL,
  `vid_title` varchar(250) NOT NULL,
  `upload_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `user` varchar(100) DEFAULT NULL,
  `role` varchar(100) DEFAULT NULL,
  `class_section_id` int(11) DEFAULT NULL,
  `ipaddress` varchar(100) DEFAULT NULL,
  `user_agent` varchar(500) DEFAULT NULL,
  `login_datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `user`, `role`, `class_section_id`, `ipaddress`, `user_agent`, `login_datetime`) VALUES
(1, 'hiidealstechnologies@gmail.com', 'Super Admin', NULL, '49.37.161.60', 'Chrome 137.0.0.0, Windows 10', '2025-07-03 06:19:31'),
(2, 'hiidealstechnologies@gmail.com', 'Super Admin', NULL, '49.37.161.60', 'Chrome 137.0.0.0, Windows 10', '2025-07-03 06:30:40'),
(3, 'hiidealstechnologies@gmail.com', 'Super Admin', NULL, '49.37.161.60', 'Chrome 137.0.0.0, Windows 10', '2025-07-03 09:58:20'),
(4, 'hiidealstechnologies@gmail.com', 'Super Admin', NULL, '49.37.161.60', 'Chrome 137.0.0.0, Windows 10', '2025-07-03 10:10:45'),
(5, 'hiidealstechnologies@gmail.com', 'Super Admin', NULL, '49.37.161.60', 'Chrome 137.0.0.0, Windows 10', '2025-07-03 12:05:28'),
(6, 'hiidealstechnologies@gmail.com', 'Super Admin', NULL, '49.37.161.60', 'Chrome 137.0.0.0, Windows 10', '2025-07-04 05:06:07'),
(7, 'hiidealstechnologies@gmail.com', 'Super Admin', NULL, '49.37.161.60', 'Chrome 138.0.0.0, Windows 10', '2025-07-04 05:44:23'),
(8, 'hiidealstechnologies@gmail.com', 'Super Admin', NULL, '49.37.161.60', 'Chrome 137.0.0.0, Windows 10', '2025-07-11 09:58:14'),
(9, 'hiidealstechnologies@gmail.com', 'Super Admin', NULL, '49.37.161.60', 'Chrome 138.0.0.0, Windows 10', '2025-07-16 05:00:58'),
(10, 'hiidealstechnologies@gmail.com', 'Super Admin', NULL, '49.37.161.60', 'Chrome 138.0.0.0, Windows 10', '2025-07-16 05:26:56'),
(11, 'hiidealstechnologies@gmail.com', 'Super Admin', NULL, '157.45.249.5', 'Chrome 138.0.0.0, Windows 10', '2025-07-16 05:30:10'),
(12, 'hiidealstechnologies@gmail.com', 'Super Admin', NULL, '49.37.161.60', 'Chrome 138.0.0.0, Windows 10', '2025-07-16 06:24:50'),
(13, 'hiidealstechnologies@gmail.com', 'Super Admin', NULL, '49.37.161.60', 'Chrome 138.0.0.0, Windows 10', '2025-07-16 12:36:32'),
(14, 'hiidealstechnologies@gmail.com', 'Super Admin', NULL, '157.45.241.87', 'Chrome 138.0.0.0, Windows 10', '2025-07-17 05:30:00'),
(15, 'hiidealstechnologies@gmail.com', 'Super Admin', NULL, '49.37.161.60', 'Chrome 138.0.0.0, Windows 10', '2025-07-17 05:40:36'),
(16, 'std19', 'student', 1, '152.58.44.214', 'Chrome 138.0.0.0, Android', '2025-07-17 07:20:37'),
(17, 'hiidealstechnologies@gmail.com', 'Super Admin', NULL, '157.45.241.87', 'Chrome 138.0.0.0, Windows 10', '2025-07-17 07:24:57'),
(18, 'hiidealstechnologies@gmail.com', 'Super Admin', NULL, '49.37.161.60', 'Chrome 138.0.0.0, Windows 10', '2025-07-17 09:33:21'),
(19, 'hiidealstechnologies@gmail.com', 'Super Admin', NULL, '49.37.161.60', 'Chrome 138.0.0.0, Windows 10', '2025-07-17 11:16:39'),
(20, 'std19', 'student', 1, '152.58.3.176', 'Chrome 138.0.0.0, Android', '2025-07-17 17:16:00'),
(21, 'hiidealstechnologies@gmail.com', 'Super Admin', NULL, '157.45.240.188', 'Chrome 138.0.0.0, Windows 10', '2025-07-18 04:48:51'),
(22, 'hiidealstechnologies@gmail.com', 'Super Admin', NULL, '49.37.161.60', 'Chrome 138.0.0.0, Windows 10', '2025-07-18 04:48:55'),
(23, 'std32', 'student', 1, '157.45.240.188', 'Chrome 138.0.0.0, Android', '2025-07-18 04:55:16'),
(24, 'hiidealstechnologies@gmail.com', 'Super Admin', NULL, '49.37.161.60', 'Chrome 138.0.0.0, Windows 10', '2025-07-18 05:06:46'),
(25, 'iamfaizanali032@gmail.com', 'FEES MANAGEMENT*', NULL, '157.45.240.188', 'Chrome 138.0.0.0, Windows 10', '2025-07-18 05:48:43'),
(26, 'hiidealstechnologies@gmail.com', 'Super Admin', NULL, '157.45.240.188', 'Chrome 138.0.0.0, Windows 10', '2025-07-18 05:52:26'),
(27, 'iamfaizanali032@gmail.com', 'FEES MANAGEMENT*', NULL, '157.45.240.188', 'Chrome 138.0.0.0, Windows 10', '2025-07-18 06:20:45'),
(28, 'iamfaizanali032@gmail.com', 'FEES MANAGEMENT*', NULL, '110.225.57.75', 'Chrome 138.0.0.0, Android', '2025-07-18 06:51:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `childs` text NOT NULL,
  `role` varchar(30) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `currency_id` int(11) DEFAULT 0,
  `verification_code` varchar(200) NOT NULL,
  `is_active` varchar(255) DEFAULT 'yes',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `lang_id`, `currency_id`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 'std1', 'ymgcai', '', 'student', 4, 0, '', 'yes', '2025-07-16 07:13:20', '2025-07-16 07:13:20'),
(2, 0, 'parent1', '3ppj10', '1', 'parent', 0, 0, '', 'yes', '2025-07-16 07:13:20', '2025-07-16 07:13:20'),
(3, 2, 'std2', 'bnob94', '', 'student', 4, 0, '', 'yes', '2025-07-16 07:23:49', '2025-07-16 07:23:49'),
(4, 0, 'parent2', 'ftixv6', '2', 'parent', 0, 0, '', 'yes', '2025-07-16 07:23:49', '2025-07-16 07:23:49'),
(5, 3, 'std3', 'iqm7be', '', 'student', 4, 0, '', 'yes', '2025-07-16 07:29:41', '2025-07-16 07:29:41'),
(6, 0, 'parent3', 'dy7urs', '3', 'parent', 0, 0, '', 'yes', '2025-07-16 07:29:41', '2025-07-16 07:29:41'),
(7, 4, 'std4', 'q4mcl0', '', 'student', 4, 0, '', 'yes', '2025-07-16 07:34:38', '2025-07-16 07:34:38'),
(8, 0, 'parent4', 'es6n1j', '4', 'parent', 0, 0, '', 'yes', '2025-07-16 07:34:38', '2025-07-16 07:34:38'),
(9, 5, 'std5', '2g7lx8', '', 'student', 4, 0, '', 'yes', '2025-07-16 07:43:25', '2025-07-16 07:43:25'),
(10, 0, 'parent5', '425kr2', '5', 'parent', 0, 0, '', 'yes', '2025-07-16 07:43:25', '2025-07-16 07:43:25'),
(11, 6, 'std6', 'wmnr5r', '', 'student', 4, 0, '', 'yes', '2025-07-16 07:48:31', '2025-07-16 07:48:31'),
(12, 0, 'parent6', 'a1laao', '6', 'parent', 0, 0, '', 'yes', '2025-07-16 07:48:31', '2025-07-16 07:48:31'),
(13, 7, 'std7', 'k81i3b', '', 'student', 4, 0, '', 'yes', '2025-07-16 07:54:00', '2025-07-16 07:54:00'),
(14, 0, 'parent7', 'svwhuk', '7', 'parent', 0, 0, '', 'yes', '2025-07-16 07:54:00', '2025-07-16 07:54:00'),
(15, 8, 'std8', '9hcbs7', '', 'student', 4, 0, '', 'yes', '2025-07-16 08:00:26', '2025-07-16 08:00:26'),
(16, 0, 'parent8', '0yxaff', '8', 'parent', 0, 0, '', 'yes', '2025-07-16 08:00:26', '2025-07-16 08:00:26'),
(17, 9, 'std9', 'tjjacn', '', 'student', 4, 0, '', 'yes', '2025-07-16 08:14:04', '2025-07-16 08:14:04'),
(18, 0, 'parent9', '37wfxz', '9', 'parent', 0, 0, '', 'yes', '2025-07-16 08:14:04', '2025-07-16 08:14:04'),
(19, 10, 'std10', 'grx14m', '', 'student', 4, 0, '', 'yes', '2025-07-16 08:21:27', '2025-07-16 08:21:27'),
(20, 0, 'parent10', 'fo69x1', '10', 'parent', 0, 0, '', 'yes', '2025-07-16 08:21:27', '2025-07-16 08:21:27'),
(21, 11, 'std11', '4jh3xl', '', 'student', 4, 0, '', 'yes', '2025-07-16 08:30:41', '2025-07-16 08:30:41'),
(22, 0, 'parent11', '2rxzp3', '11', 'parent', 0, 0, '', 'yes', '2025-07-16 08:30:41', '2025-07-16 08:30:41'),
(23, 12, 'std12', 'ede8t3', '', 'student', 4, 0, '', 'yes', '2025-07-16 08:35:24', '2025-07-16 08:35:24'),
(24, 0, 'parent12', 'pvu0f9', '12', 'parent', 0, 0, '', 'yes', '2025-07-16 08:35:24', '2025-07-16 08:35:24'),
(25, 13, 'std13', '7gn741', '', 'student', 4, 0, '', 'yes', '2025-07-16 09:51:12', '2025-07-16 09:51:12'),
(26, 0, 'parent13', 'o4wrkl', '13', 'parent', 0, 0, '', 'yes', '2025-07-16 09:51:12', '2025-07-16 09:51:12'),
(27, 14, 'std14', 'gxfgco', '', 'student', 4, 0, '', 'yes', '2025-07-16 10:18:47', '2025-07-16 10:18:47'),
(28, 0, 'parent14', 'xk4tjt', '14', 'parent', 0, 0, '', 'yes', '2025-07-16 10:18:47', '2025-07-16 10:18:47'),
(29, 15, 'std15', '10cijw', '', 'student', 4, 0, '', 'yes', '2025-07-16 10:27:48', '2025-07-16 10:27:48'),
(30, 0, 'parent15', 'ilfs5k', '15', 'parent', 0, 0, '', 'yes', '2025-07-16 10:27:48', '2025-07-16 10:27:48'),
(31, 16, 'std16', '6hfb9g', '', 'student', 4, 0, '', 'yes', '2025-07-17 06:49:46', '2025-07-17 06:49:46'),
(32, 0, 'parent16', '32pmut', '16', 'parent', 0, 0, '', 'yes', '2025-07-17 06:49:46', '2025-07-17 06:49:46'),
(33, 17, 'std17', 'wbhotj', '', 'student', 4, 0, '', 'yes', '2025-07-17 07:03:06', '2025-07-17 07:03:06'),
(34, 0, 'parent17', '1vs382', '17', 'parent', 0, 0, '', 'yes', '2025-07-17 07:03:06', '2025-07-17 07:03:06'),
(35, 18, 'std18', 'jf4au3', '', 'student', 4, 0, '', 'yes', '2025-07-17 07:09:58', '2025-07-17 07:09:58'),
(36, 0, 'parent18', 'do19at', '18', 'parent', 0, 0, '', 'yes', '2025-07-17 07:09:58', '2025-07-17 07:09:58'),
(37, 19, 'std19', 'bil0y5', '', 'student', 4, 0, '', 'yes', '2025-07-17 07:17:24', '2025-07-17 07:17:24'),
(38, 0, 'parent19', 'fmlbcz', '19', 'parent', 0, 0, '', 'yes', '2025-07-17 07:17:24', '2025-07-17 07:17:24'),
(39, 20, 'std20', '26y37p', '', 'student', 4, 0, '', 'yes', '2025-07-17 07:30:41', '2025-07-17 07:30:41'),
(40, 0, 'parent20', 'p2epz4', '20', 'parent', 0, 0, '', 'yes', '2025-07-17 07:30:41', '2025-07-17 07:30:41'),
(41, 21, 'std21', '22s0a4', '', 'student', 4, 0, '', 'yes', '2025-07-17 07:32:46', '2025-07-17 07:32:46'),
(42, 0, 'parent21', 'bw1n4e', '21', 'parent', 0, 0, '', 'yes', '2025-07-17 07:32:46', '2025-07-17 07:32:46'),
(43, 22, 'std22', '2vm65r', '', 'student', 4, 0, '', 'yes', '2025-07-17 07:36:51', '2025-07-17 07:36:51'),
(44, 0, 'parent22', '1zt9cq', '22', 'parent', 0, 0, '', 'yes', '2025-07-17 07:36:51', '2025-07-17 07:36:51'),
(45, 23, 'std23', 'jq71l9', '', 'student', 4, 0, '', 'yes', '2025-07-17 07:39:54', '2025-07-17 07:39:54'),
(46, 0, 'parent23', 'xulm2l', '23', 'parent', 0, 0, '', 'yes', '2025-07-17 07:39:54', '2025-07-17 07:39:54'),
(47, 24, 'std24', '4pw69h', '', 'student', 4, 0, '', 'yes', '2025-07-17 07:49:55', '2025-07-17 07:49:55'),
(48, 0, 'parent24', 'ujztni', '24', 'parent', 0, 0, '', 'yes', '2025-07-17 07:49:55', '2025-07-17 07:49:55'),
(49, 25, 'std25', 'n90mz4', '', 'student', 4, 0, '', 'yes', '2025-07-17 07:59:01', '2025-07-17 07:59:01'),
(50, 0, 'parent25', '5z3egi', '25', 'parent', 0, 0, '', 'yes', '2025-07-17 07:59:01', '2025-07-17 07:59:01'),
(51, 26, 'std26', 'q4tcpc', '', 'student', 4, 0, '', 'yes', '2025-07-17 10:10:08', '2025-07-17 10:10:08'),
(52, 0, 'parent26', 'ne3s84', '26', 'parent', 0, 0, '', 'yes', '2025-07-17 10:10:08', '2025-07-17 10:10:08'),
(53, 27, 'std27', 'l3nf80', '', 'student', 4, 0, '', 'yes', '2025-07-17 10:16:09', '2025-07-17 10:16:09'),
(54, 0, 'parent27', 'ukfk7z', '27', 'parent', 0, 0, '', 'yes', '2025-07-17 10:16:09', '2025-07-17 10:16:09'),
(55, 28, 'std28', '8zzw71', '', 'student', 4, 0, '', 'yes', '2025-07-17 10:20:35', '2025-07-17 10:20:35'),
(56, 0, 'parent28', 'lnjorg', '28', 'parent', 0, 0, '', 'yes', '2025-07-17 10:20:35', '2025-07-17 10:20:35'),
(57, 29, 'std29', 'ftnyfh', '', 'student', 4, 0, '', 'yes', '2025-07-17 10:24:43', '2025-07-17 10:24:43'),
(58, 0, 'parent29', 'pcav26', '29', 'parent', 0, 0, '', 'yes', '2025-07-17 10:24:43', '2025-07-17 10:24:43'),
(59, 30, 'std30', '28u3en', '', 'student', 4, 0, '', 'yes', '2025-07-17 10:28:33', '2025-07-17 10:28:33'),
(60, 0, 'parent30', '7o94h4', '30', 'parent', 0, 0, '', 'yes', '2025-07-17 10:28:33', '2025-07-17 10:28:33'),
(61, 31, 'std31', '9xqaiu', '', 'student', 4, 0, '', 'yes', '2025-07-17 10:31:55', '2025-07-17 10:31:55'),
(62, 0, 'parent31', 'm955ko', '31', 'parent', 0, 0, '', 'yes', '2025-07-17 10:31:55', '2025-07-17 10:31:55');

-- --------------------------------------------------------

--
-- Table structure for table `users_authentication`
--

CREATE TABLE `users_authentication` (
  `id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `expired_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL,
  `vehicle_no` varchar(20) DEFAULT NULL,
  `vehicle_model` varchar(100) NOT NULL DEFAULT 'None',
  `vehicle_photo` varchar(255) DEFAULT NULL,
  `manufacture_year` varchar(4) DEFAULT NULL,
  `registration_number` varchar(50) NOT NULL,
  `chasis_number` varchar(100) NOT NULL,
  `max_seating_capacity` varchar(255) NOT NULL,
  `driver_name` varchar(50) DEFAULT NULL,
  `driver_licence` varchar(50) NOT NULL DEFAULT 'None',
  `driver_contact` varchar(20) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_routes`
--

CREATE TABLE `vehicle_routes` (
  `id` int(11) NOT NULL,
  `route_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `video_tutorial`
--

CREATE TABLE `video_tutorial` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `vid_title` text DEFAULT NULL,
  `description` text NOT NULL,
  `thumb_path` varchar(500) DEFAULT NULL,
  `dir_path` varchar(500) DEFAULT NULL,
  `img_name` varchar(300) NOT NULL,
  `thumb_name` varchar(300) NOT NULL,
  `video_link` varchar(100) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `video_tutorial_class_sections`
--

CREATE TABLE `video_tutorial_class_sections` (
  `id` int(11) NOT NULL,
  `video_tutorial_id` int(11) NOT NULL,
  `class_section_id` int(11) NOT NULL,
  `created_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visitors_book`
--

CREATE TABLE `visitors_book` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `purpose` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contact` varchar(12) NOT NULL,
  `id_proof` varchar(50) NOT NULL,
  `no_of_people` int(11) NOT NULL,
  `date` date NOT NULL,
  `in_time` varchar(20) NOT NULL,
  `out_time` varchar(20) NOT NULL,
  `note` text NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `meeting_with` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visitors_purpose`
--

CREATE TABLE `visitors_purpose` (
  `id` int(11) NOT NULL,
  `visitors_purpose` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addon_versions`
--
ALTER TABLE `addon_versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addon_id` (`addon_id`);

--
-- Indexes for table `alumni_events`
--
ALTER TABLE `alumni_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `alumni_students`
--
ALTER TABLE `alumni_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `annual_calendar`
--
ALTER TABLE `annual_calendar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `attendence_type`
--
ALTER TABLE `attendence_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_issues`
--
ALTER TABLE `book_issues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `captcha`
--
ALTER TABLE `captcha`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_connections`
--
ALTER TABLE `chat_connections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_user_one` (`chat_user_one`),
  ADD KEY `chat_user_two` (`chat_user_two`);

--
-- Indexes for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_user_id` (`chat_user_id`),
  ADD KEY `chat_connection_id` (`chat_connection_id`);

--
-- Indexes for table `chat_users`
--
ALTER TABLE `chat_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `create_staff_id` (`create_staff_id`),
  ADD KEY `create_student_id` (`create_student_id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_sections`
--
ALTER TABLE `class_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `section_id` (`section_id`);

--
-- Indexes for table `class_section_times`
--
ALTER TABLE `class_section_times`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_section_id` (`class_section_id`);

--
-- Indexes for table `class_teacher`
--
ALTER TABLE `class_teacher`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaint_type`
--
ALTER TABLE `complaint_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `cls_sec_id` (`cls_sec_id`);

--
-- Indexes for table `content_for`
--
ALTER TABLE `content_for`
  ADD PRIMARY KEY (`id`),
  ADD KEY `content_id` (`content_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `content_types`
--
ALTER TABLE `content_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cumulative_fine`
--
ALTER TABLE `cumulative_fine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_name` (`name`),
  ADD KEY `idx_belong_to` (`belong_to`),
  ADD KEY `idx_type` (`type`),
  ADD KEY `idx_visible_on_table` (`visible_on_table`),
  ADD KEY `idx_weight` (`weight`);
ALTER TABLE `custom_fields` ADD FULLTEXT KEY `idx_field_values` (`field_values`);

--
-- Indexes for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custom_field_id` (`custom_field_id`),
  ADD KEY `idx_belong_table_id` (`belong_table_id`),
  ADD KEY `idx_field_value` (`field_value`);

--
-- Indexes for table `daily_assignment`
--
ALTER TABLE `daily_assignment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_session_id` (`student_session_id`),
  ADD KEY `evaluated_by` (`evaluated_by`),
  ADD KEY `subject_group_subject_id` (`subject_group_subject_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disable_reason`
--
ALTER TABLE `disable_reason`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dispatch_receive`
--
ALTER TABLE `dispatch_receive`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_attachments`
--
ALTER TABLE `email_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `message_id` (`message_id`);

--
-- Indexes for table `email_config`
--
ALTER TABLE `email_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_template`
--
ALTER TABLE `email_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_template_attachment`
--
ALTER TABLE `email_template_attachment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `assigned` (`assigned`),
  ADD KEY `enquiry_ibfk_4` (`class_id`);

--
-- Indexes for table `enquiry_type`
--
ALTER TABLE `enquiry_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sesion_id` (`sesion_id`);

--
-- Indexes for table `exam_groups`
--
ALTER TABLE `exam_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_group_class_batch_exams`
--
ALTER TABLE `exam_group_class_batch_exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_group_id` (`exam_group_id`),
  ADD KEY `exam_group_class_batch_exams_ibfk_2` (`session_id`);

--
-- Indexes for table `exam_group_class_batch_exam_students`
--
ALTER TABLE `exam_group_class_batch_exam_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_group_class_batch_exam_id` (`exam_group_class_batch_exam_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `student_session_id` (`student_session_id`);

--
-- Indexes for table `exam_group_class_batch_exam_subjects`
--
ALTER TABLE `exam_group_class_batch_exam_subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_group_class_batch_exams_id` (`exam_group_class_batch_exams_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `exam_group_exam_connections`
--
ALTER TABLE `exam_group_exam_connections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_group_id` (`exam_group_id`),
  ADD KEY `exam_group_class_batch_exams_id` (`exam_group_class_batch_exams_id`);

--
-- Indexes for table `exam_group_exam_results`
--
ALTER TABLE `exam_group_exam_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_group_class_batch_exam_subject_id` (`exam_group_class_batch_exam_subject_id`),
  ADD KEY `exam_group_student_id` (`exam_group_student_id`),
  ADD KEY `exam_group_class_batch_exam_student_id` (`exam_group_class_batch_exam_student_id`);

--
-- Indexes for table `exam_group_students`
--
ALTER TABLE `exam_group_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_group_id` (`exam_group_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `student_session_id` (`student_session_id`);

--
-- Indexes for table `exam_schedules`
--
ALTER TABLE `exam_schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_subject_id` (`teacher_subject_id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `exam_id` (`exam_id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exp_head_id` (`exp_head_id`);

--
-- Indexes for table `expense_head`
--
ALTER TABLE `expense_head`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feemasters`
--
ALTER TABLE `feemasters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `feetype_id` (`feetype_id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `fees_discounts`
--
ALTER TABLE `fees_discounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `fees_reminder`
--
ALTER TABLE `fees_reminder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feetype`
--
ALTER TABLE `feetype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee_groups`
--
ALTER TABLE `fee_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee_groups_feetype`
--
ALTER TABLE `fee_groups_feetype`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fee_session_group_id` (`fee_session_group_id`),
  ADD KEY `fee_groups_id` (`fee_groups_id`),
  ADD KEY `feetype_id` (`feetype_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `fee_receipt_no`
--
ALTER TABLE `fee_receipt_no`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee_session_groups`
--
ALTER TABLE `fee_session_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fee_groups_id` (`fee_groups_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `filetypes`
--
ALTER TABLE `filetypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `follow_up`
--
ALTER TABLE `follow_up`
  ADD PRIMARY KEY (`id`),
  ADD KEY `enquiry_id` (`enquiry_id`),
  ADD KEY `followup_by` (`followup_by`);

--
-- Indexes for table `front_cms_media_gallery`
--
ALTER TABLE `front_cms_media_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_cms_menus`
--
ALTER TABLE `front_cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_cms_menu_items`
--
ALTER TABLE `front_cms_menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indexes for table `front_cms_pages`
--
ALTER TABLE `front_cms_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_cms_page_contents`
--
ALTER TABLE `front_cms_page_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_id` (`page_id`);

--
-- Indexes for table `front_cms_programs`
--
ALTER TABLE `front_cms_programs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_cms_program_photos`
--
ALTER TABLE `front_cms_program_photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `program_id` (`program_id`);

--
-- Indexes for table `front_cms_settings`
--
ALTER TABLE `front_cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gateway_ins`
--
ALTER TABLE `gateway_ins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `online_admission_id` (`online_admission_id`);

--
-- Indexes for table `gateway_ins_response`
--
ALTER TABLE `gateway_ins_response`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gateway_ins_id` (`gateway_ins_id`);

--
-- Indexes for table `general_calls`
--
ALTER TABLE `general_calls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holiday_type`
--
ALTER TABLE `holiday_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homework`
--
ALTER TABLE `homework`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_group_subject_id` (`subject_group_subject_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `evaluated_by` (`evaluated_by`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `homework_evaluation`
--
ALTER TABLE `homework_evaluation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `homework_id` (`homework_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `student_session_id` (`student_session_id`);

--
-- Indexes for table `hostel`
--
ALTER TABLE `hostel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hostel_rooms`
--
ALTER TABLE `hostel_rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hostel_id` (`hostel_id`),
  ADD KEY `room_type_id` (`room_type_id`);

--
-- Indexes for table `id_card`
--
ALTER TABLE `id_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income`
--
ALTER TABLE `income`
  ADD PRIMARY KEY (`id`),
  ADD KEY `income_head_id` (`income_head_id`);

--
-- Indexes for table `income_head`
--
ALTER TABLE `income_head`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_category_id` (`item_category_id`),
  ADD KEY `item_store_id` (`item_store_id`),
  ADD KEY `item_supplier_id` (`item_supplier_id`);

--
-- Indexes for table `item_category`
--
ALTER TABLE `item_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_issue`
--
ALTER TABLE `item_issue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `item_category_id` (`item_category_id`),
  ADD KEY `issue_to` (`issue_to`),
  ADD KEY `issue_by` (`issue_by`);

--
-- Indexes for table `item_stock`
--
ALTER TABLE `item_stock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `item_store`
--
ALTER TABLE `item_store`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_supplier`
--
ALTER TABLE `item_supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_types`
--
ALTER TABLE `leave_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type` (`type`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `subject_group_subject_id` (`subject_group_subject_id`),
  ADD KEY `subject_group_class_sections_id` (`subject_group_class_sections_id`);

--
-- Indexes for table `lesson_plan_forum`
--
ALTER TABLE `lesson_plan_forum`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_syllabus_id` (`subject_syllabus_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `libarary_members`
--
ALTER TABLE `libarary_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mark_divisions`
--
ALTER TABLE `mark_divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_roles`
--
ALTER TABLE `notification_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `send_notification_id` (`send_notification_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `notification_setting`
--
ALTER TABLE `notification_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offline_fees_payments`
--
ALTER TABLE `offline_fees_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_fees_master_id` (`student_fees_master_id`),
  ADD KEY `fee_groups_feetype_id` (`fee_groups_feetype_id`),
  ADD KEY `student_transport_fee_id` (`student_transport_fee_id`),
  ADD KEY `offline_fees_payments_ibfk_4` (`approved_by`),
  ADD KEY `student_session_id` (`student_session_id`);

--
-- Indexes for table `onlineexam`
--
ALTER TABLE `onlineexam`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `onlineexam_attempts`
--
ALTER TABLE `onlineexam_attempts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `onlineexam_student_id` (`onlineexam_student_id`);

--
-- Indexes for table `onlineexam_questions`
--
ALTER TABLE `onlineexam_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `onlineexam_id` (`onlineexam_id`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `onlineexam_students`
--
ALTER TABLE `onlineexam_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `onlineexam_id` (`onlineexam_id`),
  ADD KEY `student_session_id` (`student_session_id`);

--
-- Indexes for table `onlineexam_student_results`
--
ALTER TABLE `onlineexam_student_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `onlineexam_student_id` (`onlineexam_student_id`),
  ADD KEY `onlineexam_question_id` (`onlineexam_question_id`);

--
-- Indexes for table `online_admissions`
--
ALTER TABLE `online_admissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_section_id` (`class_section_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `hostel_room_id` (`hostel_room_id`),
  ADD KEY `school_house_id` (`school_house_id`),
  ADD KEY `idx_reference_no` (`reference_no`),
  ADD KEY `idx_mobileno` (`mobileno`);

--
-- Indexes for table `online_admission_custom_field_value`
--
ALTER TABLE `online_admission_custom_field_value`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custom_field_id` (`custom_field_id`),
  ADD KEY `idx_belong_table_id` (`belong_table_id`),
  ADD KEY `idx_field_value` (`field_value`(200));

--
-- Indexes for table `online_admission_fields`
--
ALTER TABLE `online_admission_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online_admission_payment`
--
ALTER TABLE `online_admission_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `online_admission_id` (`online_admission_id`);

--
-- Indexes for table `payment_settings`
--
ALTER TABLE `payment_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payslip_allowance`
--
ALTER TABLE `payslip_allowance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `payslip_id` (`payslip_id`);

--
-- Indexes for table `permission_category`
--
ALTER TABLE `permission_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_short_code` (`short_code`),
  ADD KEY `perm_group_id` (`perm_group_id`);

--
-- Indexes for table `permission_group`
--
ALTER TABLE `permission_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_student`
--
ALTER TABLE `permission_student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `pickup_point`
--
ALTER TABLE `pickup_point`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `print_headerfooter`
--
ALTER TABLE `print_headerfooter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `class_section_id` (`class_section_id`);

--
-- Indexes for table `read_notification`
--
ALTER TABLE `read_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notification_id` (`notification_id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `reference`
--
ALTER TABLE `reference`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resume_additional_fields_settings`
--
ALTER TABLE `resume_additional_fields_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resume_settings_fields`
--
ALTER TABLE `resume_settings_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `perm_cat_id` (`perm_cat_id`);

--
-- Indexes for table `room_types`
--
ALTER TABLE `room_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `route_pickup_point`
--
ALTER TABLE `route_pickup_point`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transport_route_id` (`transport_route_id`),
  ADD KEY `pickup_point_id` (`pickup_point_id`);

--
-- Indexes for table `school_houses`
--
ALTER TABLE `school_houses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sch_settings`
--
ALTER TABLE `sch_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lang_id` (`lang_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `send_notification`
--
ALTER TABLE `send_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_id` (`created_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `share_contents`
--
ALTER TABLE `share_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `share_content_for`
--
ALTER TABLE `share_content_for`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upload_content_id` (`share_content_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `class_section_id` (`class_section_id`),
  ADD KEY `user_parent_id` (`user_parent_id`);

--
-- Indexes for table `share_upload_contents`
--
ALTER TABLE `share_upload_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upload_content_id` (`upload_content_id`),
  ADD KEY `share_content_id` (`share_content_id`);

--
-- Indexes for table `sidebar_menus`
--
ALTER TABLE `sidebar_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_group_id` (`permission_group_id`);

--
-- Indexes for table `sidebar_sub_menus`
--
ALTER TABLE `sidebar_sub_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sidebar_menu_id` (`sidebar_menu_id`),
  ADD KEY `permission_group_id` (`permission_group_id`);

--
-- Indexes for table `sms_config`
--
ALTER TABLE `sms_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_template`
--
ALTER TABLE `sms_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `source`
--
ALTER TABLE `source`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee_id` (`employee_id`),
  ADD KEY `designation` (`designation`),
  ADD KEY `department` (`department`);

--
-- Indexes for table `staff_attendance`
--
ALTER TABLE `staff_attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_staff_attendance_staff` (`staff_id`),
  ADD KEY `FK_staff_attendance_staff_attendance_type` (`staff_attendance_type_id`);

--
-- Indexes for table `staff_attendance_type`
--
ALTER TABLE `staff_attendance_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_attendence_schedules`
--
ALTER TABLE `staff_attendence_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_designation`
--
ALTER TABLE `staff_designation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_id_card`
--
ALTER TABLE `staff_id_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_leave_details`
--
ALTER TABLE `staff_leave_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_staff_leave_details_staff` (`staff_id`),
  ADD KEY `FK_staff_leave_details_leave_types` (`leave_type_id`);

--
-- Indexes for table `staff_leave_request`
--
ALTER TABLE `staff_leave_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_staff_leave_request_staff` (`staff_id`),
  ADD KEY `FK_staff_leave_request_leave_types` (`leave_type_id`),
  ADD KEY `applied_by` (`applied_by`);

--
-- Indexes for table `staff_payroll`
--
ALTER TABLE `staff_payroll`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_payslip`
--
ALTER TABLE `staff_payslip`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_staff_payslip_staff` (`staff_id`);

--
-- Indexes for table `staff_rating`
--
ALTER TABLE `staff_rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_staff_rating_staff` (`staff_id`);

--
-- Indexes for table `staff_roles`
--
ALTER TABLE `staff_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `staff_timeline`
--
ALTER TABLE `staff_timeline`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_staff_timeline_staff` (`staff_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_admission_no` (`admission_no`),
  ADD KEY `idx_roll_no` (`roll_no`),
  ADD KEY `idx_mobileno` (`mobileno`),
  ADD KEY `idx_email` (`email`),
  ADD KEY `idx_firstname` (`firstname`);

--
-- Indexes for table `student_applied_discounts`
--
ALTER TABLE `student_applied_discounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_fees_deposite_id` (`student_fees_deposite_id`),
  ADD KEY `student_fees_discount_id` (`student_fees_discount_id`);

--
-- Indexes for table `student_applyleave`
--
ALTER TABLE `student_applyleave`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_session_id` (`student_session_id`),
  ADD KEY `approve_by` (`approve_by`);

--
-- Indexes for table `student_attendences`
--
ALTER TABLE `student_attendences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_session_id` (`student_session_id`),
  ADD KEY `attendence_type_id` (`attendence_type_id`);

--
-- Indexes for table `student_attendence_schedules`
--
ALTER TABLE `student_attendence_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_dashboard_settings`
--
ALTER TABLE `student_dashboard_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_doc`
--
ALTER TABLE `student_doc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_student_id` (`student_id`);

--
-- Indexes for table `student_edit_fields`
--
ALTER TABLE `student_edit_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_educational_details`
--
ALTER TABLE `student_educational_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_fees`
--
ALTER TABLE `student_fees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feemaster_id` (`feemaster_id`),
  ADD KEY `student_session_id` (`student_session_id`);

--
-- Indexes for table `student_fees_deposite`
--
ALTER TABLE `student_fees_deposite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_fees_master_id` (`student_fees_master_id`),
  ADD KEY `fee_groups_feetype_id` (`fee_groups_feetype_id`),
  ADD KEY `student_transport_fee_id` (`student_transport_fee_id`);

--
-- Indexes for table `student_fees_discounts`
--
ALTER TABLE `student_fees_discounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_session_id` (`student_session_id`),
  ADD KEY `fees_discount_id` (`fees_discount_id`);

--
-- Indexes for table `student_fees_master`
--
ALTER TABLE `student_fees_master`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_session_id` (`student_session_id`),
  ADD KEY `fee_session_group_id` (`fee_session_group_id`);

--
-- Indexes for table `student_fees_processing`
--
ALTER TABLE `student_fees_processing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_fees_master_id` (`student_fees_master_id`),
  ADD KEY `fee_groups_feetype_id` (`fee_groups_feetype_id`),
  ADD KEY `student_transport_fee_id` (`student_transport_fee_id`),
  ADD KEY `gateway_ins_id` (`gateway_ins_id`);

--
-- Indexes for table `student_refrence`
--
ALTER TABLE `student_refrence`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_session`
--
ALTER TABLE `student_session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `student_session_ibfk_5` (`vehroute_id`),
  ADD KEY `hostel_room_id` (`hostel_room_id`),
  ADD KEY `student_session_ibfk_6` (`route_pickup_point_id`);

--
-- Indexes for table `student_skills_detail`
--
ALTER TABLE `student_skills_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_subject_attendances`
--
ALTER TABLE `student_subject_attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendence_type_id` (`attendence_type_id`),
  ADD KEY `student_session_id` (`student_session_id`),
  ADD KEY `subject_timetable_id` (`subject_timetable_id`);

--
-- Indexes for table `student_timeline`
--
ALTER TABLE `student_timeline`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `student_transport_fees`
--
ALTER TABLE `student_transport_fees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_session_id` (`student_session_id`),
  ADD KEY `route_pickup_point_id` (`route_pickup_point_id`),
  ADD KEY `transport_feemaster_id` (`transport_feemaster_id`);

--
-- Indexes for table `student_work_experience`
--
ALTER TABLE `student_work_experience`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_name` (`name`),
  ADD KEY `idx_code` (`code`);

--
-- Indexes for table `subject_groups`
--
ALTER TABLE `subject_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `subject_group_class_sections`
--
ALTER TABLE `subject_group_class_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_section_id` (`class_section_id`),
  ADD KEY `subject_group_id` (`subject_group_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `subject_group_subjects`
--
ALTER TABLE `subject_group_subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_group_id` (`subject_group_id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `subject_syllabus`
--
ALTER TABLE `subject_syllabus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `created_for` (`created_for`);

--
-- Indexes for table `subject_timetable`
--
ALTER TABLE `subject_timetable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `subject_group_id` (`subject_group_id`),
  ADD KEY `subject_group_subject_id` (`subject_group_subject_id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `submit_assignment`
--
ALTER TABLE `submit_assignment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `homework_id` (`homework_id`);

--
-- Indexes for table `template_admitcards`
--
ALTER TABLE `template_admitcards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `template_marksheets`
--
ALTER TABLE `template_marksheets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `lesson_id` (`lesson_id`);

--
-- Indexes for table `transport_feemaster`
--
ALTER TABLE `transport_feemaster`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `transport_route`
--
ALTER TABLE `transport_route`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload_contents`
--
ALTER TABLE `upload_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upload_by` (`upload_by`),
  ADD KEY `upload_contents_ibfk_2` (`content_type_id`),
  ADD KEY `idx_file_type` (`file_type`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_section_id` (`class_section_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_authentication`
--
ALTER TABLE `users_authentication`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vehicle_no` (`vehicle_no`);

--
-- Indexes for table `vehicle_routes`
--
ALTER TABLE `vehicle_routes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `route_id` (`route_id`),
  ADD KEY `vehicle_id` (`vehicle_id`);

--
-- Indexes for table `video_tutorial`
--
ALTER TABLE `video_tutorial`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `idx_title` (`title`);

--
-- Indexes for table `video_tutorial_class_sections`
--
ALTER TABLE `video_tutorial_class_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_section_id` (`class_section_id`),
  ADD KEY `video_tutorial_id` (`video_tutorial_id`);

--
-- Indexes for table `visitors_book`
--
ALTER TABLE `visitors_book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `student_session_id` (`student_session_id`);

--
-- Indexes for table `visitors_purpose`
--
ALTER TABLE `visitors_purpose`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `addon_versions`
--
ALTER TABLE `addon_versions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `alumni_events`
--
ALTER TABLE `alumni_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `alumni_students`
--
ALTER TABLE `alumni_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `annual_calendar`
--
ALTER TABLE `annual_calendar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendence_type`
--
ALTER TABLE `attendence_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book_issues`
--
ALTER TABLE `book_issues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `captcha`
--
ALTER TABLE `captcha`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `chat_connections`
--
ALTER TABLE `chat_connections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chat_messages`
--
ALTER TABLE `chat_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chat_users`
--
ALTER TABLE `chat_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `class_sections`
--
ALTER TABLE `class_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `class_section_times`
--
ALTER TABLE `class_section_times`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class_teacher`
--
ALTER TABLE `class_teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complaint_type`
--
ALTER TABLE `complaint_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `content_for`
--
ALTER TABLE `content_for`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `content_types`
--
ALTER TABLE `content_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cumulative_fine`
--
ALTER TABLE `cumulative_fine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `daily_assignment`
--
ALTER TABLE `daily_assignment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `disable_reason`
--
ALTER TABLE `disable_reason`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dispatch_receive`
--
ALTER TABLE `dispatch_receive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_attachments`
--
ALTER TABLE `email_attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_config`
--
ALTER TABLE `email_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `email_template`
--
ALTER TABLE `email_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_template_attachment`
--
ALTER TABLE `email_template_attachment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enquiry_type`
--
ALTER TABLE `enquiry_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_groups`
--
ALTER TABLE `exam_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_group_class_batch_exams`
--
ALTER TABLE `exam_group_class_batch_exams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_group_class_batch_exam_students`
--
ALTER TABLE `exam_group_class_batch_exam_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_group_class_batch_exam_subjects`
--
ALTER TABLE `exam_group_class_batch_exam_subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_group_exam_connections`
--
ALTER TABLE `exam_group_exam_connections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_group_exam_results`
--
ALTER TABLE `exam_group_exam_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_group_students`
--
ALTER TABLE `exam_group_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_schedules`
--
ALTER TABLE `exam_schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_head`
--
ALTER TABLE `expense_head`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feemasters`
--
ALTER TABLE `feemasters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fees_discounts`
--
ALTER TABLE `fees_discounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fees_reminder`
--
ALTER TABLE `fees_reminder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `feetype`
--
ALTER TABLE `feetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fee_groups`
--
ALTER TABLE `fee_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `fee_groups_feetype`
--
ALTER TABLE `fee_groups_feetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `fee_receipt_no`
--
ALTER TABLE `fee_receipt_no`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fee_session_groups`
--
ALTER TABLE `fee_session_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `filetypes`
--
ALTER TABLE `filetypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `follow_up`
--
ALTER TABLE `follow_up`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `front_cms_media_gallery`
--
ALTER TABLE `front_cms_media_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `front_cms_menus`
--
ALTER TABLE `front_cms_menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `front_cms_menu_items`
--
ALTER TABLE `front_cms_menu_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `front_cms_pages`
--
ALTER TABLE `front_cms_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `front_cms_page_contents`
--
ALTER TABLE `front_cms_page_contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `front_cms_programs`
--
ALTER TABLE `front_cms_programs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `front_cms_program_photos`
--
ALTER TABLE `front_cms_program_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `front_cms_settings`
--
ALTER TABLE `front_cms_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gateway_ins`
--
ALTER TABLE `gateway_ins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gateway_ins_response`
--
ALTER TABLE `gateway_ins_response`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_calls`
--
ALTER TABLE `general_calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `holiday_type`
--
ALTER TABLE `holiday_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `homework`
--
ALTER TABLE `homework`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homework_evaluation`
--
ALTER TABLE `homework_evaluation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hostel`
--
ALTER TABLE `hostel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hostel_rooms`
--
ALTER TABLE `hostel_rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `id_card`
--
ALTER TABLE `id_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `income`
--
ALTER TABLE `income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `income_head`
--
ALTER TABLE `income_head`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_category`
--
ALTER TABLE `item_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_issue`
--
ALTER TABLE `item_issue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_stock`
--
ALTER TABLE `item_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_store`
--
ALTER TABLE `item_store`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_supplier`
--
ALTER TABLE `item_supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `leave_types`
--
ALTER TABLE `leave_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lesson_plan_forum`
--
ALTER TABLE `lesson_plan_forum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `libarary_members`
--
ALTER TABLE `libarary_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=314;

--
-- AUTO_INCREMENT for table `mark_divisions`
--
ALTER TABLE `mark_divisions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification_roles`
--
ALTER TABLE `notification_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification_setting`
--
ALTER TABLE `notification_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `offline_fees_payments`
--
ALTER TABLE `offline_fees_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `onlineexam`
--
ALTER TABLE `onlineexam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `onlineexam_attempts`
--
ALTER TABLE `onlineexam_attempts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `onlineexam_questions`
--
ALTER TABLE `onlineexam_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `onlineexam_students`
--
ALTER TABLE `onlineexam_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `onlineexam_student_results`
--
ALTER TABLE `onlineexam_student_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `online_admissions`
--
ALTER TABLE `online_admissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `online_admission_custom_field_value`
--
ALTER TABLE `online_admission_custom_field_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `online_admission_fields`
--
ALTER TABLE `online_admission_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `online_admission_payment`
--
ALTER TABLE `online_admission_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_settings`
--
ALTER TABLE `payment_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payslip_allowance`
--
ALTER TABLE `payslip_allowance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permission_category`
--
ALTER TABLE `permission_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10008;

--
-- AUTO_INCREMENT for table `permission_group`
--
ALTER TABLE `permission_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- AUTO_INCREMENT for table `permission_student`
--
ALTER TABLE `permission_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `pickup_point`
--
ALTER TABLE `pickup_point`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `print_headerfooter`
--
ALTER TABLE `print_headerfooter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `read_notification`
--
ALTER TABLE `read_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reference`
--
ALTER TABLE `reference`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resume_additional_fields_settings`
--
ALTER TABLE `resume_additional_fields_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `resume_settings_fields`
--
ALTER TABLE `resume_settings_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1506;

--
-- AUTO_INCREMENT for table `room_types`
--
ALTER TABLE `room_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `route_pickup_point`
--
ALTER TABLE `route_pickup_point`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `school_houses`
--
ALTER TABLE `school_houses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `send_notification`
--
ALTER TABLE `send_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `share_contents`
--
ALTER TABLE `share_contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `share_content_for`
--
ALTER TABLE `share_content_for`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `share_upload_contents`
--
ALTER TABLE `share_upload_contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sidebar_menus`
--
ALTER TABLE `sidebar_menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `sidebar_sub_menus`
--
ALTER TABLE `sidebar_sub_menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `sms_config`
--
ALTER TABLE `sms_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms_template`
--
ALTER TABLE `sms_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `source`
--
ALTER TABLE `source`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `staff_attendance`
--
ALTER TABLE `staff_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_attendance_type`
--
ALTER TABLE `staff_attendance_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `staff_attendence_schedules`
--
ALTER TABLE `staff_attendence_schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_designation`
--
ALTER TABLE `staff_designation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `staff_id_card`
--
ALTER TABLE `staff_id_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `staff_leave_details`
--
ALTER TABLE `staff_leave_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_leave_request`
--
ALTER TABLE `staff_leave_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_payroll`
--
ALTER TABLE `staff_payroll`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_payslip`
--
ALTER TABLE `staff_payslip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_rating`
--
ALTER TABLE `staff_rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_roles`
--
ALTER TABLE `staff_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `staff_timeline`
--
ALTER TABLE `staff_timeline`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `student_applied_discounts`
--
ALTER TABLE `student_applied_discounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_applyleave`
--
ALTER TABLE `student_applyleave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_attendences`
--
ALTER TABLE `student_attendences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_attendence_schedules`
--
ALTER TABLE `student_attendence_schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_dashboard_settings`
--
ALTER TABLE `student_dashboard_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `student_doc`
--
ALTER TABLE `student_doc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `student_edit_fields`
--
ALTER TABLE `student_edit_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_educational_details`
--
ALTER TABLE `student_educational_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_fees`
--
ALTER TABLE `student_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_fees_deposite`
--
ALTER TABLE `student_fees_deposite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `student_fees_discounts`
--
ALTER TABLE `student_fees_discounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_fees_master`
--
ALTER TABLE `student_fees_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `student_fees_processing`
--
ALTER TABLE `student_fees_processing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_refrence`
--
ALTER TABLE `student_refrence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_session`
--
ALTER TABLE `student_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `student_skills_detail`
--
ALTER TABLE `student_skills_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_subject_attendances`
--
ALTER TABLE `student_subject_attendances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_timeline`
--
ALTER TABLE `student_timeline`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_transport_fees`
--
ALTER TABLE `student_transport_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_work_experience`
--
ALTER TABLE `student_work_experience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subject_groups`
--
ALTER TABLE `subject_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subject_group_class_sections`
--
ALTER TABLE `subject_group_class_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subject_group_subjects`
--
ALTER TABLE `subject_group_subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subject_syllabus`
--
ALTER TABLE `subject_syllabus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subject_timetable`
--
ALTER TABLE `subject_timetable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `submit_assignment`
--
ALTER TABLE `submit_assignment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `template_admitcards`
--
ALTER TABLE `template_admitcards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `template_marksheets`
--
ALTER TABLE `template_marksheets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `topic`
--
ALTER TABLE `topic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transport_feemaster`
--
ALTER TABLE `transport_feemaster`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transport_route`
--
ALTER TABLE `transport_route`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `upload_contents`
--
ALTER TABLE `upload_contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `users_authentication`
--
ALTER TABLE `users_authentication`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicle_routes`
--
ALTER TABLE `vehicle_routes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `video_tutorial`
--
ALTER TABLE `video_tutorial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `video_tutorial_class_sections`
--
ALTER TABLE `video_tutorial_class_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visitors_book`
--
ALTER TABLE `visitors_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visitors_purpose`
--
ALTER TABLE `visitors_purpose`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addon_versions`
--
ALTER TABLE `addon_versions`
  ADD CONSTRAINT `addon_versions_ibfk_1` FOREIGN KEY (`addon_id`) REFERENCES `addons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `alumni_events`
--
ALTER TABLE `alumni_events`
  ADD CONSTRAINT `alumni_events_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `alumni_events_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `alumni_students`
--
ALTER TABLE `alumni_students`
  ADD CONSTRAINT `alumni_students_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `annual_calendar`
--
ALTER TABLE `annual_calendar`
  ADD CONSTRAINT `annual_calendar_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`);

--
-- Constraints for table `book_issues`
--
ALTER TABLE `book_issues`
  ADD CONSTRAINT `book_issues_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `book_issues_ibfk_2` FOREIGN KEY (`member_id`) REFERENCES `libarary_members` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `chat_connections`
--
ALTER TABLE `chat_connections`
  ADD CONSTRAINT `chat_connections_ibfk_1` FOREIGN KEY (`chat_user_one`) REFERENCES `chat_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chat_connections_ibfk_2` FOREIGN KEY (`chat_user_two`) REFERENCES `chat_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD CONSTRAINT `chat_messages_ibfk_1` FOREIGN KEY (`chat_user_id`) REFERENCES `chat_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chat_messages_ibfk_2` FOREIGN KEY (`chat_connection_id`) REFERENCES `chat_connections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `chat_users`
--
ALTER TABLE `chat_users`
  ADD CONSTRAINT `chat_users_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chat_users_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chat_users_ibfk_3` FOREIGN KEY (`create_staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chat_users_ibfk_4` FOREIGN KEY (`create_student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `class_sections`
--
ALTER TABLE `class_sections`
  ADD CONSTRAINT `class_sections_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_sections_ibfk_2` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `class_section_times`
--
ALTER TABLE `class_section_times`
  ADD CONSTRAINT `class_section_times_ibfk_1` FOREIGN KEY (`class_section_id`) REFERENCES `class_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `class_teacher`
--
ALTER TABLE `class_teacher`
  ADD CONSTRAINT `class_teacher_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_teacher_ibfk_2` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_teacher_ibfk_3` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_teacher_ibfk_4` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `contents`
--
ALTER TABLE `contents`
  ADD CONSTRAINT `contents_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `contents_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `contents_ibfk_3` FOREIGN KEY (`cls_sec_id`) REFERENCES `class_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `content_for`
--
ALTER TABLE `content_for`
  ADD CONSTRAINT `content_for_ibfk_1` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `content_for_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD CONSTRAINT `custom_field_values_ibfk_1` FOREIGN KEY (`custom_field_id`) REFERENCES `custom_fields` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `daily_assignment`
--
ALTER TABLE `daily_assignment`
  ADD CONSTRAINT `daily_assignment_ibfk_1` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `daily_assignment_ibfk_2` FOREIGN KEY (`evaluated_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `daily_assignment_ibfk_3` FOREIGN KEY (`subject_group_subject_id`) REFERENCES `subject_group_subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `email_attachments`
--
ALTER TABLE `email_attachments`
  ADD CONSTRAINT `email_attachments_ibfk_1` FOREIGN KEY (`message_id`) REFERENCES `messages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD CONSTRAINT `enquiry_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `enquiry_ibfk_3` FOREIGN KEY (`assigned`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `enquiry_ibfk_4` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exams`
--
ALTER TABLE `exams`
  ADD CONSTRAINT `exams_ibfk_1` FOREIGN KEY (`sesion_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_group_class_batch_exams`
--
ALTER TABLE `exam_group_class_batch_exams`
  ADD CONSTRAINT `exam_group_class_batch_exams_ibfk_1` FOREIGN KEY (`exam_group_id`) REFERENCES `exam_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_group_class_batch_exams_ibfk_2` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_group_class_batch_exam_students`
--
ALTER TABLE `exam_group_class_batch_exam_students`
  ADD CONSTRAINT `exam_group_class_batch_exam_students_ibfk_1` FOREIGN KEY (`exam_group_class_batch_exam_id`) REFERENCES `exam_group_class_batch_exams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_group_class_batch_exam_students_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_group_class_batch_exam_students_ibfk_3` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_group_class_batch_exam_subjects`
--
ALTER TABLE `exam_group_class_batch_exam_subjects`
  ADD CONSTRAINT `exam_group_class_batch_exam_subjects_ibfk_1` FOREIGN KEY (`exam_group_class_batch_exams_id`) REFERENCES `exam_group_class_batch_exams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_group_class_batch_exam_subjects_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_group_exam_connections`
--
ALTER TABLE `exam_group_exam_connections`
  ADD CONSTRAINT `exam_group_exam_connections_ibfk_1` FOREIGN KEY (`exam_group_id`) REFERENCES `exam_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_group_exam_connections_ibfk_2` FOREIGN KEY (`exam_group_class_batch_exams_id`) REFERENCES `exam_group_class_batch_exams` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_group_exam_results`
--
ALTER TABLE `exam_group_exam_results`
  ADD CONSTRAINT `exam_group_exam_results_ibfk_1` FOREIGN KEY (`exam_group_class_batch_exam_subject_id`) REFERENCES `exam_group_class_batch_exam_subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_group_exam_results_ibfk_2` FOREIGN KEY (`exam_group_student_id`) REFERENCES `exam_group_students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_group_exam_results_ibfk_3` FOREIGN KEY (`exam_group_class_batch_exam_student_id`) REFERENCES `exam_group_class_batch_exam_students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_group_students`
--
ALTER TABLE `exam_group_students`
  ADD CONSTRAINT `exam_group_students_ibfk_1` FOREIGN KEY (`exam_group_id`) REFERENCES `exam_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_group_students_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_group_students_ibfk_3` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_schedules`
--
ALTER TABLE `exam_schedules`
  ADD CONSTRAINT `exam_schedules_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_schedules_ibfk_2` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_ibfk_1` FOREIGN KEY (`exp_head_id`) REFERENCES `expense_head` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `feemasters`
--
ALTER TABLE `feemasters`
  ADD CONSTRAINT `feemasters_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `feemasters_ibfk_2` FOREIGN KEY (`feetype_id`) REFERENCES `feetype` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `feemasters_ibfk_3` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fees_discounts`
--
ALTER TABLE `fees_discounts`
  ADD CONSTRAINT `fees_discounts_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fee_groups_feetype`
--
ALTER TABLE `fee_groups_feetype`
  ADD CONSTRAINT `fee_groups_feetype_ibfk_1` FOREIGN KEY (`fee_session_group_id`) REFERENCES `fee_session_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fee_groups_feetype_ibfk_2` FOREIGN KEY (`fee_groups_id`) REFERENCES `fee_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fee_groups_feetype_ibfk_3` FOREIGN KEY (`feetype_id`) REFERENCES `feetype` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fee_groups_feetype_ibfk_4` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fee_session_groups`
--
ALTER TABLE `fee_session_groups`
  ADD CONSTRAINT `fee_session_groups_ibfk_1` FOREIGN KEY (`fee_groups_id`) REFERENCES `fee_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fee_session_groups_ibfk_2` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `follow_up`
--
ALTER TABLE `follow_up`
  ADD CONSTRAINT `follow_up_ibfk_1` FOREIGN KEY (`enquiry_id`) REFERENCES `enquiry` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `follow_up_ibfk_2` FOREIGN KEY (`followup_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `front_cms_menu_items`
--
ALTER TABLE `front_cms_menu_items`
  ADD CONSTRAINT `front_cms_menu_items_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `front_cms_menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `front_cms_page_contents`
--
ALTER TABLE `front_cms_page_contents`
  ADD CONSTRAINT `front_cms_page_contents_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `front_cms_pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `front_cms_program_photos`
--
ALTER TABLE `front_cms_program_photos`
  ADD CONSTRAINT `front_cms_program_photos_ibfk_1` FOREIGN KEY (`program_id`) REFERENCES `front_cms_programs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `gateway_ins`
--
ALTER TABLE `gateway_ins`
  ADD CONSTRAINT `gateway_ins_ibfk_1` FOREIGN KEY (`online_admission_id`) REFERENCES `online_admissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `gateway_ins_response`
--
ALTER TABLE `gateway_ins_response`
  ADD CONSTRAINT `gateway_ins_response_ibfk_1` FOREIGN KEY (`gateway_ins_id`) REFERENCES `gateway_ins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `homework`
--
ALTER TABLE `homework`
  ADD CONSTRAINT `homework_ibfk_1` FOREIGN KEY (`subject_group_subject_id`) REFERENCES `subject_group_subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `homework_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `homework_ibfk_3` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `homework_ibfk_4` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `homework_ibfk_5` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `homework_ibfk_6` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `homework_ibfk_7` FOREIGN KEY (`evaluated_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `homework_ibfk_8` FOREIGN KEY (`created_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `homework_evaluation`
--
ALTER TABLE `homework_evaluation`
  ADD CONSTRAINT `homework_evaluation_ibfk_1` FOREIGN KEY (`homework_id`) REFERENCES `homework` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `homework_evaluation_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `homework_evaluation_ibfk_3` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `hostel_rooms`
--
ALTER TABLE `hostel_rooms`
  ADD CONSTRAINT `hostel_rooms_ibfk_1` FOREIGN KEY (`hostel_id`) REFERENCES `hostel` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `hostel_rooms_ibfk_2` FOREIGN KEY (`room_type_id`) REFERENCES `room_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `income`
--
ALTER TABLE `income`
  ADD CONSTRAINT `income_ibfk_1` FOREIGN KEY (`income_head_id`) REFERENCES `income_head` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_ibfk_1` FOREIGN KEY (`item_category_id`) REFERENCES `item_category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_ibfk_2` FOREIGN KEY (`item_store_id`) REFERENCES `item_store` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_ibfk_3` FOREIGN KEY (`item_supplier_id`) REFERENCES `item_supplier` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `item_issue`
--
ALTER TABLE `item_issue`
  ADD CONSTRAINT `item_issue_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_issue_ibfk_2` FOREIGN KEY (`item_category_id`) REFERENCES `item_category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_issue_ibfk_3` FOREIGN KEY (`issue_to`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_issue_ibfk_4` FOREIGN KEY (`issue_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `item_stock`
--
ALTER TABLE `item_stock`
  ADD CONSTRAINT `item_stock_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_stock_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `item_supplier` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_stock_ibfk_3` FOREIGN KEY (`store_id`) REFERENCES `item_store` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lesson`
--
ALTER TABLE `lesson`
  ADD CONSTRAINT `lesson_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lesson_ibfk_2` FOREIGN KEY (`subject_group_subject_id`) REFERENCES `subject_group_subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lesson_ibfk_3` FOREIGN KEY (`subject_group_class_sections_id`) REFERENCES `subject_group_class_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lesson_plan_forum`
--
ALTER TABLE `lesson_plan_forum`
  ADD CONSTRAINT `lesson_plan_forum_ibfk_1` FOREIGN KEY (`subject_syllabus_id`) REFERENCES `subject_syllabus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lesson_plan_forum_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lesson_plan_forum_ibfk_3` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notification_roles`
--
ALTER TABLE `notification_roles`
  ADD CONSTRAINT `notification_roles_ibfk_1` FOREIGN KEY (`send_notification_id`) REFERENCES `send_notification` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notification_roles_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `offline_fees_payments`
--
ALTER TABLE `offline_fees_payments`
  ADD CONSTRAINT `offline_fees_payments_ibfk_1` FOREIGN KEY (`student_fees_master_id`) REFERENCES `student_fees_master` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `offline_fees_payments_ibfk_2` FOREIGN KEY (`fee_groups_feetype_id`) REFERENCES `fee_groups_feetype` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `offline_fees_payments_ibfk_3` FOREIGN KEY (`student_transport_fee_id`) REFERENCES `student_transport_fees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `offline_fees_payments_ibfk_4` FOREIGN KEY (`approved_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `offline_fees_payments_ibfk_5` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `onlineexam`
--
ALTER TABLE `onlineexam`
  ADD CONSTRAINT `onlineexam_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `onlineexam_attempts`
--
ALTER TABLE `onlineexam_attempts`
  ADD CONSTRAINT `onlineexam_attempts_ibfk_1` FOREIGN KEY (`onlineexam_student_id`) REFERENCES `onlineexam_students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `onlineexam_questions`
--
ALTER TABLE `onlineexam_questions`
  ADD CONSTRAINT `onlineexam_questions_ibfk_1` FOREIGN KEY (`onlineexam_id`) REFERENCES `onlineexam` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `onlineexam_questions_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `onlineexam_questions_ibfk_3` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `onlineexam_students`
--
ALTER TABLE `onlineexam_students`
  ADD CONSTRAINT `onlineexam_students_ibfk_1` FOREIGN KEY (`onlineexam_id`) REFERENCES `onlineexam` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `onlineexam_students_ibfk_2` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `onlineexam_student_results`
--
ALTER TABLE `onlineexam_student_results`
  ADD CONSTRAINT `onlineexam_student_results_ibfk_1` FOREIGN KEY (`onlineexam_student_id`) REFERENCES `onlineexam_students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `onlineexam_student_results_ibfk_2` FOREIGN KEY (`onlineexam_question_id`) REFERENCES `onlineexam_questions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `online_admissions`
--
ALTER TABLE `online_admissions`
  ADD CONSTRAINT `online_admissions_ibfk_1` FOREIGN KEY (`class_section_id`) REFERENCES `class_sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `online_admissions_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `online_admissions_ibfk_3` FOREIGN KEY (`hostel_room_id`) REFERENCES `hostel_rooms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `online_admissions_ibfk_4` FOREIGN KEY (`school_house_id`) REFERENCES `school_houses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `online_admission_custom_field_value`
--
ALTER TABLE `online_admission_custom_field_value`
  ADD CONSTRAINT `online_admission_custom_field_value_ibfk_1` FOREIGN KEY (`custom_field_id`) REFERENCES `custom_fields` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `online_admission_payment`
--
ALTER TABLE `online_admission_payment`
  ADD CONSTRAINT `online_admission_payment_ibfk_1` FOREIGN KEY (`online_admission_id`) REFERENCES `online_admissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payslip_allowance`
--
ALTER TABLE `payslip_allowance`
  ADD CONSTRAINT `payslip_allowance_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payslip_allowance_ibfk_2` FOREIGN KEY (`payslip_id`) REFERENCES `staff_payslip` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_category`
--
ALTER TABLE `permission_category`
  ADD CONSTRAINT `permission_category_ibfk_1` FOREIGN KEY (`perm_group_id`) REFERENCES `permission_group` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_student`
--
ALTER TABLE `permission_student`
  ADD CONSTRAINT `permission_student_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `permission_group` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `questions_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `questions_ibfk_3` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `questions_ibfk_4` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `questions_ibfk_5` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `questions_ibfk_6` FOREIGN KEY (`class_section_id`) REFERENCES `class_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `read_notification`
--
ALTER TABLE `read_notification`
  ADD CONSTRAINT `read_notification_ibfk_1` FOREIGN KEY (`notification_id`) REFERENCES `send_notification` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `read_notification_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `read_notification_ibfk_3` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD CONSTRAINT `roles_permissions_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `roles_permissions_ibfk_2` FOREIGN KEY (`perm_cat_id`) REFERENCES `permission_category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `route_pickup_point`
--
ALTER TABLE `route_pickup_point`
  ADD CONSTRAINT `route_pickup_point_ibfk_1` FOREIGN KEY (`transport_route_id`) REFERENCES `transport_route` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `route_pickup_point_ibfk_2` FOREIGN KEY (`pickup_point_id`) REFERENCES `pickup_point` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `send_notification`
--
ALTER TABLE `send_notification`
  ADD CONSTRAINT `send_notification_ibfk_1` FOREIGN KEY (`created_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `share_contents`
--
ALTER TABLE `share_contents`
  ADD CONSTRAINT `share_contents_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `share_content_for`
--
ALTER TABLE `share_content_for`
  ADD CONSTRAINT `share_content_for_ibfk_1` FOREIGN KEY (`share_content_id`) REFERENCES `share_contents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `share_content_for_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `share_content_for_ibfk_3` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`),
  ADD CONSTRAINT `share_content_for_ibfk_4` FOREIGN KEY (`class_section_id`) REFERENCES `class_sections` (`id`),
  ADD CONSTRAINT `share_content_for_ibfk_5` FOREIGN KEY (`user_parent_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `share_upload_contents`
--
ALTER TABLE `share_upload_contents`
  ADD CONSTRAINT `share_upload_contents_ibfk_1` FOREIGN KEY (`upload_content_id`) REFERENCES `upload_contents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `share_upload_contents_ibfk_2` FOREIGN KEY (`share_content_id`) REFERENCES `share_contents` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sidebar_menus`
--
ALTER TABLE `sidebar_menus`
  ADD CONSTRAINT `sidebar_menus_ibfk_1` FOREIGN KEY (`permission_group_id`) REFERENCES `permission_group` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `sidebar_sub_menus`
--
ALTER TABLE `sidebar_sub_menus`
  ADD CONSTRAINT `sidebar_sub_menus_ibfk_1` FOREIGN KEY (`sidebar_menu_id`) REFERENCES `sidebar_menus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sidebar_sub_menus_ibfk_2` FOREIGN KEY (`permission_group_id`) REFERENCES `permission_group` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`designation`) REFERENCES `staff_designation` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `staff_ibfk_2` FOREIGN KEY (`department`) REFERENCES `department` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `staff_attendance`
--
ALTER TABLE `staff_attendance`
  ADD CONSTRAINT `FK_staff_attendance_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_staff_attendance_staff_attendance_type` FOREIGN KEY (`staff_attendance_type_id`) REFERENCES `staff_attendance_type` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `staff_leave_details`
--
ALTER TABLE `staff_leave_details`
  ADD CONSTRAINT `FK_staff_leave_details_leave_types` FOREIGN KEY (`leave_type_id`) REFERENCES `leave_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_staff_leave_details_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `staff_leave_request`
--
ALTER TABLE `staff_leave_request`
  ADD CONSTRAINT `FK_staff_leave_request_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `staff_leave_request_ibfk_1` FOREIGN KEY (`applied_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `staff_leave_request_ibfk_2` FOREIGN KEY (`leave_type_id`) REFERENCES `leave_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `staff_payslip`
--
ALTER TABLE `staff_payslip`
  ADD CONSTRAINT `FK_staff_payslip_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `staff_rating`
--
ALTER TABLE `staff_rating`
  ADD CONSTRAINT `FK_staff_rating_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `staff_roles`
--
ALTER TABLE `staff_roles`
  ADD CONSTRAINT `FK_staff_roles_roles` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_staff_roles_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `staff_timeline`
--
ALTER TABLE `staff_timeline`
  ADD CONSTRAINT `FK_staff_timeline_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_applied_discounts`
--
ALTER TABLE `student_applied_discounts`
  ADD CONSTRAINT `student_applied_discounts_ibfk_1` FOREIGN KEY (`student_fees_deposite_id`) REFERENCES `student_fees_deposite` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_applied_discounts_ibfk_2` FOREIGN KEY (`student_fees_discount_id`) REFERENCES `student_fees_discounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_applyleave`
--
ALTER TABLE `student_applyleave`
  ADD CONSTRAINT `student_applyleave_ibfk_1` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_applyleave_ibfk_2` FOREIGN KEY (`approve_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_attendences`
--
ALTER TABLE `student_attendences`
  ADD CONSTRAINT `student_attendences_ibfk_1` FOREIGN KEY (`attendence_type_id`) REFERENCES `attendence_type` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_attendences_ibfk_2` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_fees`
--
ALTER TABLE `student_fees`
  ADD CONSTRAINT `student_fees_ibfk_1` FOREIGN KEY (`feemaster_id`) REFERENCES `feemasters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_fees_ibfk_2` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_fees_deposite`
--
ALTER TABLE `student_fees_deposite`
  ADD CONSTRAINT `student_fees_deposite_ibfk_1` FOREIGN KEY (`student_transport_fee_id`) REFERENCES `student_transport_fees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_fees_deposite_ibfk_2` FOREIGN KEY (`student_fees_master_id`) REFERENCES `student_fees_master` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_fees_deposite_ibfk_3` FOREIGN KEY (`fee_groups_feetype_id`) REFERENCES `fee_groups_feetype` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_fees_discounts`
--
ALTER TABLE `student_fees_discounts`
  ADD CONSTRAINT `student_fees_discounts_ibfk_1` FOREIGN KEY (`fees_discount_id`) REFERENCES `fees_discounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_fees_discounts_ibfk_2` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_fees_master`
--
ALTER TABLE `student_fees_master`
  ADD CONSTRAINT `student_fees_master_ibfk_1` FOREIGN KEY (`fee_session_group_id`) REFERENCES `fee_session_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_fees_master_ibfk_2` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_fees_processing`
--
ALTER TABLE `student_fees_processing`
  ADD CONSTRAINT `student_fees_processing_ibfk_1` FOREIGN KEY (`student_fees_master_id`) REFERENCES `student_fees_master` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_fees_processing_ibfk_2` FOREIGN KEY (`student_transport_fee_id`) REFERENCES `student_transport_fees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_fees_processing_ibfk_3` FOREIGN KEY (`fee_groups_feetype_id`) REFERENCES `fee_groups_feetype` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_fees_processing_ibfk_4` FOREIGN KEY (`gateway_ins_id`) REFERENCES `gateway_ins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_session`
--
ALTER TABLE `student_session`
  ADD CONSTRAINT `student_session_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_session_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_session_ibfk_3` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_session_ibfk_4` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_session_ibfk_5` FOREIGN KEY (`vehroute_id`) REFERENCES `vehicle_routes` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `student_session_ibfk_6` FOREIGN KEY (`route_pickup_point_id`) REFERENCES `route_pickup_point` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `student_session_ibfk_7` FOREIGN KEY (`hostel_room_id`) REFERENCES `hostel_rooms` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `student_subject_attendances`
--
ALTER TABLE `student_subject_attendances`
  ADD CONSTRAINT `student_subject_attendances_ibfk_1` FOREIGN KEY (`attendence_type_id`) REFERENCES `attendence_type` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_subject_attendances_ibfk_2` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_subject_attendances_ibfk_3` FOREIGN KEY (`subject_timetable_id`) REFERENCES `subject_timetable` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_timeline`
--
ALTER TABLE `student_timeline`
  ADD CONSTRAINT `student_timeline_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_transport_fees`
--
ALTER TABLE `student_transport_fees`
  ADD CONSTRAINT `student_transport_fees_ibfk_1` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_transport_fees_ibfk_2` FOREIGN KEY (`route_pickup_point_id`) REFERENCES `route_pickup_point` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_transport_fees_ibfk_3` FOREIGN KEY (`transport_feemaster_id`) REFERENCES `transport_feemaster` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subject_groups`
--
ALTER TABLE `subject_groups`
  ADD CONSTRAINT `subject_groups_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subject_group_class_sections`
--
ALTER TABLE `subject_group_class_sections`
  ADD CONSTRAINT `subject_group_class_sections_ibfk_1` FOREIGN KEY (`class_section_id`) REFERENCES `class_sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_group_class_sections_ibfk_2` FOREIGN KEY (`subject_group_id`) REFERENCES `subject_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_group_class_sections_ibfk_3` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subject_group_subjects`
--
ALTER TABLE `subject_group_subjects`
  ADD CONSTRAINT `subject_group_subjects_ibfk_1` FOREIGN KEY (`subject_group_id`) REFERENCES `subject_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_group_subjects_ibfk_2` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_group_subjects_ibfk_3` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subject_syllabus`
--
ALTER TABLE `subject_syllabus`
  ADD CONSTRAINT `subject_syllabus_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `topic` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_syllabus_ibfk_2` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_syllabus_ibfk_3` FOREIGN KEY (`created_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_syllabus_ibfk_4` FOREIGN KEY (`created_for`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subject_timetable`
--
ALTER TABLE `subject_timetable`
  ADD CONSTRAINT `subject_timetable_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_timetable_ibfk_2` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_timetable_ibfk_3` FOREIGN KEY (`subject_group_id`) REFERENCES `subject_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_timetable_ibfk_4` FOREIGN KEY (`subject_group_subject_id`) REFERENCES `subject_group_subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_timetable_ibfk_5` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_timetable_ibfk_6` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `submit_assignment`
--
ALTER TABLE `submit_assignment`
  ADD CONSTRAINT `submit_assignment_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `submit_assignment_ibfk_2` FOREIGN KEY (`homework_id`) REFERENCES `homework` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `topic`
--
ALTER TABLE `topic`
  ADD CONSTRAINT `topic_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `topic_ibfk_2` FOREIGN KEY (`lesson_id`) REFERENCES `lesson` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transport_feemaster`
--
ALTER TABLE `transport_feemaster`
  ADD CONSTRAINT `transport_feemaster_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `upload_contents`
--
ALTER TABLE `upload_contents`
  ADD CONSTRAINT `upload_contents_ibfk_1` FOREIGN KEY (`upload_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `upload_contents_ibfk_2` FOREIGN KEY (`content_type_id`) REFERENCES `content_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `userlog`
--
ALTER TABLE `userlog`
  ADD CONSTRAINT `userlog_ibfk_1` FOREIGN KEY (`class_section_id`) REFERENCES `class_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vehicle_routes`
--
ALTER TABLE `vehicle_routes`
  ADD CONSTRAINT `vehicle_routes_ibfk_1` FOREIGN KEY (`route_id`) REFERENCES `transport_route` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicle_routes_ibfk_2` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `video_tutorial`
--
ALTER TABLE `video_tutorial`
  ADD CONSTRAINT `video_tutorial_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `video_tutorial_class_sections`
--
ALTER TABLE `video_tutorial_class_sections`
  ADD CONSTRAINT `video_tutorial_class_sections_ibfk_1` FOREIGN KEY (`class_section_id`) REFERENCES `class_sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `video_tutorial_class_sections_ibfk_2` FOREIGN KEY (`video_tutorial_id`) REFERENCES `video_tutorial` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `visitors_book`
--
ALTER TABLE `visitors_book`
  ADD CONSTRAINT `visitors_book_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `visitors_book_ibfk_2` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
