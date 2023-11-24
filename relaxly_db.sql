-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2023 at 05:15 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `relaxly_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `is_publish` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`id`, `name`, `is_publish`, `created_at`, `updated_at`) VALUES
(1, 'Wifi', 1, '2022-12-30 08:35:25', '2022-12-30 08:35:25'),
(2, 'AC', 1, '2022-12-30 08:35:38', '2022-12-30 08:35:38'),
(3, 'Gym/Fitness Centre', 1, '2022-12-30 08:35:59', '2022-12-30 08:36:10'),
(4, 'Pool', 1, '2022-12-30 08:36:24', '2022-12-30 08:37:03'),
(5, 'Washing Machine', 1, '2022-12-30 08:36:42', '2022-12-30 08:36:58'),
(6, 'TV', 1, '2022-12-30 08:36:52', '2022-12-30 08:36:52'),
(7, 'Freezer', 1, '2022-12-30 08:37:13', '2022-12-30 08:37:13');

-- --------------------------------------------------------

--
-- Table structure for table `bedtypes`
--

CREATE TABLE `bedtypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `is_publish` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bedtypes`
--

INSERT INTO `bedtypes` (`id`, `name`, `is_publish`, `created_at`, `updated_at`) VALUES
(1, 'Double', 1, '2022-12-30 10:03:51', '2022-12-30 10:04:01'),
(2, 'Single', 1, '2022-12-30 10:04:10', '2022-12-30 10:04:10');


-- --------------------------------------------------------

--
-- Table structure for table `booking_manages`
--

CREATE TABLE `booking_manages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_no` varchar(100) DEFAULT NULL,
  `transaction_no` varchar(100) DEFAULT NULL,
  `roomtype_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `payment_status_id` int(11) DEFAULT NULL,
  `booking_status_id` int(11) DEFAULT NULL,
  `total_room` int(11) DEFAULT NULL,
  `total_price` double(12,3) DEFAULT NULL,
  `discount` double(12,3) DEFAULT NULL,
  `tax` double(12,3) DEFAULT NULL,
  `subtotal` double(12,3) DEFAULT NULL,
  `total_amount` double(12,3) DEFAULT NULL,
  `paid_amount` double(12,3) DEFAULT NULL,
  `due_amount` double(12,3) DEFAULT NULL,
  `in_date` date DEFAULT NULL,
  `out_date` date DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `state` varchar(191) DEFAULT NULL,
  `zip_code` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking_status`
--

CREATE TABLE `booking_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bstatus_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booking_status`
--

INSERT INTO `booking_status` (`id`, `bstatus_name`, `created_at`, `updated_at`) VALUES
(1, 'Pending', '2023-01-27 15:48:22', '2023-01-27 15:48:25'),
(2, 'Approved', '2023-01-27 15:48:34', '2023-01-27 15:48:37'),
(3, 'Checked Out', '2023-01-28 05:11:57', '2023-01-28 05:11:58'),
(4, 'Canceled', '2023-01-28 05:12:16', '2023-01-28 05:12:18');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `slug` varchar(191) NOT NULL,
  `thumbnail` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `lan` varchar(100) DEFAULT NULL,
  `is_publish` int(11) DEFAULT NULL,
  `og_title` text DEFAULT NULL,
  `og_image` text DEFAULT NULL,
  `og_description` text DEFAULT NULL,
  `og_keywords` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `thumbnail`, `description`, `lan`, `is_publish`, `og_title`, `og_image`, `og_description`, `og_keywords`, `created_at`, `updated_at`) VALUES
(1, 'Hotel', 'hotel', '05012023064431-breadcrumb-bg-1.jpg', 'A single room has one single bed for single occupancy. An additional bed (called an extra bed) may be added to this room at a guests request and charged accordingly. The size of the bed is normally 3 feet by 6 feet. However, the concept of single rooms is vanishing nowadays. Mostly, hotels have twin or double rooms, and the charge for a single room is occupied by one person.', 'en', 1, 'Hotel', '05012023064431-400x400-breadcrumb-bg-1.jpg', 'A single room has one single bed for single occupancy. An additional bed (called an extra bed) may be added to this room at a guests request and charged accordingly. The size of the bed is normally 3 feet by 6 feet. However, the concept of single rooms is vanishing nowadays. Mostly, hotels have twin or double rooms, and the charge for a single room is occupied by one person.', 'Booking, Hotel Booking, Rooms, Room Booking, Room Book, Hotel Near By Me, Resurrect, Resort, Single Room', '2023-01-05 01:07:01', '2023-02-27 09:40:21');

-- --------------------------------------------------------

--
-- Table structure for table `complements`
--

CREATE TABLE `complements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `item` varchar(191) DEFAULT NULL,
  `is_publish` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `complements`
--

INSERT INTO `complements` (`id`, `name`, `item`, `is_publish`, `created_at`, `updated_at`) VALUES
(1, 'Breakfast', 'Marmalade, Ham, Egg, Bread, Breakfast burrito, Coffee, Tomato, Milk, Orange juice, Yogurt', 1, '2022-12-30 09:30:44', '2022-12-30 09:30:44'),
(2, 'Lunch', 'Rice, Beef, Mutton, Chicken and Vegetable', 1, '2022-12-30 09:35:43', '2022-12-30 09:35:43'),
(3, 'Tea', 'Tea/Coffee', 1, '2022-12-30 09:35:58', '2022-12-30 09:37:00'),
(4, 'Drinks', 'Drinks', 1, '2022-12-30 09:36:20', '2022-12-30 09:39:20'),
(5, 'Dinner', 'Rice, Beef, Mutton, Chicken, Vegetable', 1, '2022-12-30 09:38:21', '2022-12-30 09:38:21');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `contact_info` longtext DEFAULT NULL,
  `contact_form` longtext DEFAULT NULL,
  `contact_map` longtext DEFAULT NULL,
  `is_recaptcha` int(11) DEFAULT NULL,
  `mail_subject` varchar(100) DEFAULT NULL,
  `is_copy` int(11) DEFAULT NULL,
  `is_publish` int(11) DEFAULT NULL,
  `lan` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `title`, `contact_info`, `contact_form`, `contact_map`, `is_recaptcha`, `mail_subject`, `is_copy`, `is_publish`, `lan`, `created_at`, `updated_at`) VALUES
(6, 'Contact Us', '{\"email\":\"support@organis.com\",\"phone\":\"+1 964 565 87652\",\"address\":\"12 Poor Street, New York.\",\"short_desc\":\"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.\"}', '[{\"label\":\"Name\",\"is_label\":\"no\",\"type\":\"text\",\"name\":\"Name\",\"placeholder\":\"Name\",\"mandatory\":\"yes\",\"dropdown_values\":\"\"},{\"label\":\"Email\",\"is_label\":\"no\",\"type\":\"email\",\"name\":\"Email\",\"placeholder\":\"Email Address\",\"mandatory\":\"yes\",\"dropdown_values\":\"\"},{\"label\":\"Subject\",\"is_label\":\"no\",\"type\":\"text\",\"name\":\"Subject\",\"placeholder\":\"Subject\",\"mandatory\":\"yes\",\"dropdown_values\":\"\"},{\"label\":\"Message\",\"is_label\":\"no\",\"type\":\"textarea\",\"name\":\"Message\",\"placeholder\":\"Message\",\"mandatory\":\"yes\",\"dropdown_values\":\"\"}]', '{\"latitude\":\"23.824442\",\"longitude\":\"90.2125329\",\"zoom\":\"10\",\"is_google_map\":0}', 0, 'subject', NULL, 1, 'en', '2022-08-26 09:37:03', '2023-02-18 08:24:02');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_name` varchar(191) DEFAULT NULL,
  `is_publish` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_name`, `is_publish`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(2, 'Aland Islands', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(3, 'Albania', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(4, 'Algeria', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(5, 'American Samoa', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(6, 'Andorra', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(7, 'Angola', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(8, 'Anguilla', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(9, 'Antarctica', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(10, 'Antigua and Barbuda', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(11, 'Argentina', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(12, 'Armenia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(13, 'Aruba', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(14, 'Asia / Pacific Region', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(15, 'Australia', 1, '2020-09-18 06:00:00', '2022-08-24 10:55:21'),
(16, 'Austria', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(17, 'Azerbaijan', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(18, 'Bahamas', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(19, 'Bahrain', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(20, 'Bangladesh', 1, '2020-09-18 06:00:00', '2022-08-24 10:52:40'),
(21, 'Barbados', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(22, 'Belarus', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(23, 'Belgium', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(24, 'Belize', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(25, 'Benin', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(26, 'Bermuda', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(27, 'Bhutan', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(28, 'Bolivia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(29, 'Bonaire, Sint Eustatius and Saba', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(30, 'Bosnia and Herzegovina', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(31, 'Botswana', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(32, 'Bouvet Island', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(33, 'Brazil', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(34, 'British Indian Ocean Territory', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(35, 'Brunei Darussalam', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(36, 'Bulgaria', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(37, 'Burkina Faso', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(38, 'Burundi', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(39, 'Cambodia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(40, 'Cameroon', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(41, 'Canada', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(42, 'Cape Verde', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(43, 'Cayman Islands', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(44, 'Central African Republic', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(45, 'Chad', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(46, 'Chile', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(47, 'China', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(48, 'Christmas Island', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(49, 'Cocos (Keeling) Islands', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(50, 'Colombia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(51, 'Comoros', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(52, 'Congo', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(53, 'Congo, the Democratic Republic of the', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(54, 'Cook Islands', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(55, 'Costa Rica', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(56, 'Cote D\'Ivoire', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(57, 'Croatia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(58, 'Cuba', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(59, 'Curacao', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(60, 'Cyprus', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(61, 'Czech Republic', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(62, 'Denmark', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(63, 'Djibouti', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(64, 'Dominica', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(65, 'Dominican Republic', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(66, 'Ecuador', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(67, 'Egypt', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(68, 'El Salvador', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(69, 'Equatorial Guinea', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(70, 'Eritrea', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(71, 'Estonia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(72, 'Ethiopia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(73, 'Falkland Islands (Malvinas)', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(74, 'Faroe Islands', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(75, 'Fiji', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(76, 'Finland', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(77, 'France', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(78, 'French Guiana', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(79, 'French Polynesia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(80, 'French Southern Territories', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(81, 'Gabon', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(82, 'Gambia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(83, 'Georgia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(84, 'Germany', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(85, 'Ghana', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(86, 'Gibraltar', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(87, 'Greece', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(88, 'Greenland', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(89, 'Grenada', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(90, 'Guadeloupe', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(91, 'Guam', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(92, 'Guatemala', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(93, 'Guernsey', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(94, 'Guinea', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(95, 'Guinea-Bissau', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(96, 'Guyana', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(97, 'Haiti', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(98, 'Heard Island and Mcdonald Islands', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(99, 'Holy See (Vatican City State)', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(100, 'Honduras', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(101, 'Hong Kong', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(102, 'Hungary', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(103, 'Iceland', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(104, 'India', 1, '2020-09-18 06:00:00', '2022-08-24 10:55:40'),
(105, 'Indonesia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(106, 'Iran, Islamic Republic of', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(107, 'Iraq', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(108, 'Ireland', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(109, 'Isle of Man', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(110, 'Israel', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(111, 'Italy', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(112, 'Jamaica', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(113, 'Japan', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(114, 'Jersey', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(115, 'Jordan', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(116, 'Kazakhstan', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(117, 'Kenya', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(118, 'Kiribati', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(119, 'Korea, Democratic People\'s Republic of', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(120, 'Korea, Republic of', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(121, 'Kosovo', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(122, 'Kuwait', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(123, 'Kyrgyzstan', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(124, 'Lao People\'s Democratic Republic', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(125, 'Latvia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(126, 'Lebanon', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(127, 'Lesotho', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(128, 'Liberia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(129, 'Libyan Arab Jamahiriya', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(130, 'Liechtenstein', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(131, 'Lithuania', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(132, 'Luxembourg', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(133, 'Macao', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(134, 'Macedonia, the Former Yugoslav Republic of', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(135, 'Madagascar', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(136, 'Malawi', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(137, 'Malaysia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(138, 'Maldives', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(139, 'Mali', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(140, 'Malta', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(141, 'Marshall Islands', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(142, 'Martinique', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(143, 'Mauritania', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(144, 'Mauritius', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(145, 'Mayotte', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(146, 'Mexico', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(147, 'Micronesia, Federated States of', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(148, 'Moldova, Republic of', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(149, 'Monaco', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(150, 'Mongolia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(151, 'Montenegro', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(152, 'Montserrat', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(153, 'Morocco', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(154, 'Mozambique', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(155, 'Myanmar', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(156, 'Namibia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(157, 'Nauru', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(158, 'Nepal', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(159, 'Netherlands', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(160, 'Netherlands Antilles', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(161, 'New Caledonia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(162, 'New Zealand', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(163, 'Nicaragua', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(164, 'Niger', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(165, 'Nigeria', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(166, 'Niue', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(167, 'Norfolk Island', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(168, 'Northern Mariana Islands', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(169, 'Norway', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(170, 'Oman', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(171, 'Pakistan', 1, '2020-09-18 06:00:00', '2022-08-24 10:52:58'),
(172, 'Palau', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(173, 'Palestinian Territory, Occupied', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(174, 'Panama', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(175, 'Papua New Guinea', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(176, 'Paraguay', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(177, 'Peru', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(178, 'Philippines', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(179, 'Pitcairn', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(180, 'Poland', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(181, 'Portugal', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(182, 'Puerto Rico', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(183, 'Qatar', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(184, 'Reunion', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(185, 'Romania', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(186, 'Russian Federation', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(187, 'Rwanda', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(188, 'Saint Barthelemy', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(189, 'Saint Helena', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(190, 'Saint Kitts and Nevis', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(191, 'Saint Lucia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(192, 'Saint Martin', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(193, 'Saint Pierre and Miquelon', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(194, 'Saint Vincent and the Grenadines', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(195, 'Samoa', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(196, 'San Marino', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(197, 'Sao Tome and Principe', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(198, 'Saudi Arabia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(199, 'Senegal', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(200, 'Serbia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(201, 'Serbia and Montenegro', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(202, 'Seychelles', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(203, 'Sierra Leone', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(204, 'Singapore', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(205, 'Sint Maarten', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(206, 'Slovakia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(207, 'Slovenia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(208, 'Solomon Islands', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(209, 'Somalia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(210, 'South Africa', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(211, 'South Georgia and the South Sandwich Islands', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(212, 'South Sudan', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(213, 'Spain', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(214, 'Sri Lanka', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(215, 'Sudan', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(216, 'Suriname', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(217, 'Svalbard and Jan Mayen', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(218, 'Swaziland', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(219, 'Sweden', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(220, 'Switzerland', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(221, 'Syrian Arab Republic', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(222, 'Taiwan, Province of China', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(223, 'Tajikistan', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(224, 'Tanzania, United Republic of', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(225, 'Thailand', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(226, 'Timor-Leste', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(227, 'Togo', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(228, 'Tokelau', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(229, 'Tonga', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(230, 'Trinidad and Tobago', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(231, 'Tunisia', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(232, 'Turkey', 1, '2020-09-18 06:00:00', '2022-08-24 10:55:59'),
(233, 'Turkmenistan', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(234, 'Turks and Caicos Islands', 2, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(235, 'Tuvalu', 2, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(236, 'Uganda', 2, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(237, 'Ukraine', 2, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(238, 'United Arab Emirates', 2, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(239, 'United Kingdom', 1, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(240, 'United States', 1, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(241, 'United States Minor Outlying Islands', 2, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(242, 'Uruguay', 2, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(243, 'Uzbekistan', 2, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(244, 'Vanuatu', 2, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(245, 'Venezuela', 2, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(246, 'Viet Nam', 2, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(247, 'Virgin Islands, British', 2, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(248, 'Virgin Islands, U.s.', 2, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(249, 'Wallis and Futuna', 2, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(250, 'Western Sahara', 2, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(251, 'Yemen', 2, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(252, 'Zambia', 2, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(253, 'Zimbabwe', 2, '2020-09-18 06:00:00', '2022-08-24 10:51:58');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `payment_method` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `method_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`id`, `method_name`, `created_at`, `updated_at`) VALUES
(1, 'Cash On', '2021-10-03 17:07:16', '2021-10-03 17:07:18'),
(2, 'Bank Transfer', '2021-10-03 17:09:11', '2021-10-03 17:09:13'),
(3, 'Stripe', '2021-10-03 17:09:54', '2021-10-03 17:09:56'),
(4, 'Paypal', '2022-05-20 09:33:54', '2022-05-20 09:33:54'),
(5, 'Razorpay', '2022-05-20 09:33:54', '2022-05-20 09:33:54'),
(6, 'Mollie', '2022-05-20 09:33:54', '2022-05-20 09:33:54');


--
-- Table structure for table `payment_status`
--

CREATE TABLE `payment_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pstatus_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_status`
--

INSERT INTO `payment_status` (`id`, `pstatus_name`, `created_at`, `updated_at`) VALUES
(1, 'Completed', '2021-10-03 16:52:47', '2021-10-03 16:52:50'),
(2, 'Pending', '2021-10-03 16:53:12', '2021-10-03 16:53:14'),
(3, 'Canceled', '2021-10-03 16:53:33', '2021-10-03 16:53:34'),
(4, 'Incompleted', '2021-10-03 16:53:57', '2021-10-03 16:54:00');


CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `slug` varchar(191) NOT NULL,
  `thumbnail` text DEFAULT NULL,
  `cover_img` text DEFAULT NULL,
  `short_desc` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `total_adult` int(11) DEFAULT NULL,
  `total_child` int(11) DEFAULT NULL,
  `price` double(12,3) DEFAULT NULL,
  `old_price` double(12,3) DEFAULT NULL,
  `amenities` varchar(150) DEFAULT NULL,
  `complements` varchar(150) DEFAULT NULL,
  `beds` varchar(100) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `tax_id` int(11) DEFAULT NULL,
  `is_discount` int(11) DEFAULT NULL,
  `is_featured` int(11) DEFAULT NULL,
  `is_publish` int(11) DEFAULT NULL,
  `lan` varchar(100) DEFAULT NULL,
  `og_title` text DEFAULT NULL,
  `og_image` text DEFAULT NULL,
  `og_description` text DEFAULT NULL,
  `og_keywords` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `title`, `slug`, `thumbnail`, `cover_img`, `short_desc`, `description`, `total_adult`, `total_child`, `price`, `old_price`, `amenities`, `complements`, `beds`, `cat_id`, `tax_id`, `is_discount`, `is_featured`, `is_publish`, `lan`, `og_title`, `og_image`, `og_description`, `og_keywords`, `created_at`, `updated_at`) VALUES
(1, 'Executive Suite', 'executive-suite', '06012023120550-900x700-1-room.jpg', '05012023064431-breadcrumb-bg-1.jpg', NULL, '<p>A single room has one single bed for single occupancy. An additional bed (called an extra bed) may be added to this room at a guests request and charged accordingly.<br><br>The size of the bed is normally 3 feet by 6 feet. However, the concept of single rooms is vanishing nowadays. Mostly, hotels have twin or double rooms, and the charge for a single room is occupied by one person.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit suscipit laborum eligendi eaque! Porro in deleniti ad sed corporis consequuntur quos, numquam totam alias vero neque eum aliquam reprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio veniam architecto, repellendus exercitationem commodi? Optio, iste tempora amet excepturi laborum ipsam perspiciatis asperiores nihil voluptates quidem id doloremque libero. Temporibus incidunt omnis ipsum labore debitis animi quod eum, earum officiis ipsa molestiae quasi, est veniam quam ducimus. Repudiandae est facilis veritatis praesentium magnam error nihil, modi accusantium sequi, illo porro.<br></p>', 2, 1, 100.000, NULL, '2|7|3|6|5|1', '5|2|3', '1|2', 1, 38, NULL, 0, 1, 'en', 'Executive Suite', '06012023120550-900x700-1-room.jpg', 'A single room has one single bed for single occupancy. An additional bed (called an extra bed) may be added to this room at a guests request and charged accordingly.', 'Single Room, Booking, Hotel Booking, Rooms, Room Booking, Room Book, Hotel Near By Me, Resurrect, Resort', '2023-01-05 04:15:56', '2023-01-21 09:43:27'),
(10, 'Royal Club Suite', 'royal-club-suite', '06012023120553-900x700-2-room.jpg', '05012023064453-breadcrumb-bg-2.jpg', NULL, '<p>A twin room has two single beds for double occupancy. An extra bed may be added to this room at a guests request and charged accordingly. Here the bed size is normally 3 feet by 6 feet. These rooms are suitable for sharing accommodation among a group of delegates meeting.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit suscipit laborum eligendi eaque! Porro in deleniti ad sed corporis consequuntur quos, numquam totam alias vero neque eum aliquam reprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio veniam architecto, repellendus exercitationem commodi? Optio, iste tempora amet excepturi laborum ipsam perspiciatis asperiores nihil voluptates quidem id doloremque libero. Temporibus incidunt omnis ipsum labore debitis animi quod eum, earum officiis ipsa molestiae quasi, est veniam quam ducimus. Repudiandae est facilis veritatis praesentium magnam error nihil, modi accusantium sequi, illo porro.<br></p><p><br></p>', 2, 1, 400.000, NULL, '2|7|3|4|6|5|1', '1|5|4|2|3', '1|2', 1, 38, NULL, 1, 1, 'en', 'Royal Club Suite', '06012023120553-900x700-2-room.jpg', 'A twin room has two single beds for double occupancy. An extra bed may be added to this room at a guests request and charged accordingly. Here the bed size is normally 3 feet by 6 feet. These rooms are suitable for sharing accommodation among a group of delegates meeting.', 'Twin Room, Booking, Hotel Booking, Rooms, Room Booking, Room Book, Hotel Near By Me, Resurrect, Resort', '2023-01-06 06:38:55', '2023-01-21 09:43:11'),
(11, 'Honeymoon Suite', 'honeymoon-suite', '06012023120557-900x700-3-room.jpg', '05012023064459-breadcrumb-bg-3.jpg', NULL, '<p>A double room has one double bed for double occupancy. An extra bed may be added to this room at a guest\'s request and charged accordingly. The size of the double bed is generally 4.5 feet by 6 feet.<br></p>', 2, 1, 1000.000, 1200.000, '2|7|3|4|6|5|1', '1|5|4|2|3', '1|2', 1, 38, 1, 1, 1, 'en', 'Honeymoon Suite', '06012023120557-900x700-3-room.jpg', 'A double room has one double bed for double occupancy. An extra bed may be added to this room at a guest\'s request and charged accordingly. The size of the double bed is generally 4.5 feet by 6 feet.', 'Double Room, Booking, Hotel Booking, Rooms, Room Booking, Room Book, Hotel Near By Me, Resurrect, Resort', '2023-01-06 07:03:44', '2023-01-21 09:42:50'),
(12, 'Deluxe Family Suite', 'deluxe-family-suite', '09012023045931-900x700-17-room.jpg', '05012023064503-breadcrumb-bg-4.jpg', NULL, '<p>A triple room has three separate single beds and can be occupied by three guests. This type of room is suitable for groups and delegates of meetings and conferences.<br>Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit suscipit laborum eligendi eaque! Porro in deleniti ad sed corporis consequuntur quos, numquam totam alias vero neque eum aliquam reprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio veniam architecto, repellendus exercitationem commodi? Optio, iste tempora amet excepturi laborum ipsam perspiciatis asperiores nihil voluptates quidem id doloremque libero. Temporibus incidunt omnis ipsum labore debitis animi quod eum, earum officiis ipsa molestiae quasi, est veniam quam ducimus. Repudiandae est facilis veritatis praesentium magnam error nihil, modi accusantium sequi, illo porro.<br></p>', 2, 1, 1150.000, 1500.000, '2|7|3|4|6|5|1', '1|5|4|2|3', '1', 1, 38, 1, 1, 1, 'en', 'Deluxe Family Suite', '06012023120600-900x700-4-room.jpg', 'A triple room has three separate single beds and can be occupied by three guests. This type of room is suitable for groups and delegates of meetings and conferences.', 'Triple Room, Booking, Hotel Booking, Rooms, Room Booking, Room Book, Hotel Near By Me, Resurrect, Resort', '2023-01-06 07:11:16', '2023-01-21 09:42:24'),
(13, 'Deluxe Couple Suite', 'deluxe-couple-suite', '06012023120603-900x700-5-room.jpg', '05012023064507-breadcrumb-bg-5.jpg', NULL, '<p>A quad room has four separate single beds and can accommodate four persons together in the same room.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit suscipit laborum eligendi eaque! Porro in deleniti ad sed corporis consequuntur quos, numquam totam alias vero neque eum aliquam reprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio veniam architecto, repellendus exercitationem commodi? Optio, iste tempora amet excepturi laborum ipsam perspiciatis asperiores nihil voluptates quidem id doloremque libero. Temporibus incidunt omnis ipsum labore debitis animi quod eum, earum officiis ipsa molestiae quasi, est veniam quam ducimus. Repudiandae est facilis veritatis praesentium magnam error nihil, modi accusantium sequi, illo porro.<br></p>', 2, 2, 1100.000, 1200.000, '2|7|3|4|6|5|1', '1|5|4|2|3', '1|2', 1, 38, 1, 0, 1, 'en', 'Deluxe Couple Suite', '06012023120603-900x700-5-room.jpg', 'A quad room has four separate single beds and can accommodate four persons together in the same room.', 'Quad Room, Booking, Hotel Booking, Rooms, Room Booking, Room Book, Hotel Near By Me, Resurrect, Resort', '2023-01-06 07:15:40', '2023-01-21 09:45:56'),
(14, 'Super Deluxe Twin', 'super-deluxe-twin', '06012023120606-900x700-6-room.jpg', '05012023064453-breadcrumb-bg-2.jpg', NULL, '<p>A Hollywood twin room has two single beds with a common headboard. This hotel room type is generally occupied by two guests.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit suscipit laborum eligendi eaque! Porro in deleniti ad sed corporis consequuntur quos, numquam totam alias vero neque eum aliquam reprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio veniam architecto, repellendus exercitationem commodi? Optio, iste tempora amet excepturi laborum ipsam perspiciatis asperiores nihil voluptates quidem id doloremque libero. Temporibus incidunt omnis ipsum labore debitis animi quod eum, earum officiis ipsa molestiae quasi, est veniam quam ducimus. Repudiandae est facilis veritatis praesentium magnam error nihil, modi accusantium sequi, illo porro.<br></p>', 2, 1, 600.000, NULL, '2|7|4|6|5|1', '5|4|2|3', '1', 1, 38, NULL, 0, 1, 'en', 'Super Deluxe Twin', '06012023120606-900x700-6-room.jpg', 'A Hollywood twin room has two single beds with a common headboard. This hotel room type is generally occupied by two guests.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit suscipit laborum eligendi eaque! Porro in deleniti ad sed corporis consequuntur quos, numquam totam alias vero neque eum aliquam reprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio veniam architecto, repellendus exercitationem commodi? Optio, iste tempora amet excepturi laborum ipsam perspiciatis asperiores nihil voluptates quidem id doloremque libero. Temporibus incidunt omnis ipsum labore debitis animi quod eum, earum officiis ipsa molestiae quasi, est veniam quam ducimus. Repudiandae est facilis veritatis praesentium magnam error nihil, modi accusantium sequi, illo porro.', 'Hollywood Twin Room, Booking, Hotel Booking, Rooms, Room Booking, Room Book, Hotel Near By Me, Resurrect, Resort', '2023-01-06 07:23:57', '2023-01-21 09:41:45'),
(15, 'Deluxe Room', 'deluxe-room', '09012023045855-900x700-8-room.jpg', '05012023064431-breadcrumb-bg-1.jpg', NULL, '<p>A king room has a king-size bed. The size of the bed is 6 feet by 6 feet. An extra bed may be added to this room at a guest\'s request and charged accordingly.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit suscipit laborum eligendi eaque! Porro in deleniti ad sed corporis consequuntur quos, numquam totam alias vero neque eum aliquam reprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio veniam architecto, repellendus exercitationem commodi? Optio, iste tempora amet excepturi laborum ipsam perspiciatis asperiores nihil voluptates quidem id doloremque libero. Temporibus incidunt omnis ipsum labore debitis animi quod eum, earum officiis ipsa molestiae quasi, est veniam quam ducimus. Repudiandae est facilis veritatis praesentium magnam error nihil, modi accusantium sequi, illo porro.<br></p>', 2, 1, 700.000, NULL, '2|7|6|5|1', '1|5|4|2', '1|2', 1, 38, NULL, 0, 1, 'en', 'Deluxe Room', '09012023045855-900x700-8-room.jpg', 'A king room has a king-size bed. The size of the bed is 6 feet by 6 feet. An extra bed may be added to this room at a guest\'s request and charged accordingly.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit suscipit laborum eligendi eaque! Porro in deleniti ad sed corporis consequuntur quos, numquam totam alias vero neque eum aliquam reprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio veniam architecto, repellendus exercitationem commodi? Optio, iste tempora amet excepturi laborum ipsam perspiciatis asperiores nihil voluptates quidem id doloremque libero. Temporibus incidunt omnis ipsum labore debitis animi quod eum, earum officiis ipsa molestiae quasi, est veniam quam ducimus. Repudiandae est facilis veritatis praesentium magnam error nihil, modi accusantium sequi, illo porro.', 'King Room, Booking, Hotel Booking, Rooms, Room Booking, Room Book, Hotel Near By Me, Resurrect, Resort', '2023-01-08 22:36:16', '2023-01-21 09:41:31'),
(16, 'Deluxe Twin Room', 'deluxe-twin-room', '09012023045904-900x700-10-room.jpg', '05012023064507-breadcrumb-bg-5.jpg', NULL, '<p>A queen room has a queen-size bed. The size of the bed is 5 feet by 6 feet. An extra bed may be added to this room at a guest\'s request and charged accordingly.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit suscipit laborum eligendi eaque! Porro in deleniti ad sed corporis consequuntur quos, numquam totam alias vero neque eum aliquam reprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio veniam architecto, repellendus exercitationem commodi? Optio, iste tempora amet excepturi laborum ipsam perspiciatis asperiores nihil voluptates quidem id doloremque libero. Temporibus incidunt omnis ipsum labore debitis animi quod eum, earum officiis ipsa molestiae quasi, est veniam quam ducimus. Repudiandae est facilis veritatis praesentium magnam error nihil, modi accusantium sequi, illo porro.<br></p>', 2, 0, 500.000, NULL, '2|7|3|4|6|1', '5|4|2', '1', 1, 38, NULL, 0, 1, 'en', 'Deluxe Twin Room', '09012023045904-900x700-10-room.jpg', 'A queen room has a queen-size bed. The size of the bed is 5 feet by 6 feet. An extra bed may be added to this room at a guest\'s request and charged accordingly.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit suscipit laborum eligendi eaque! Porro in deleniti ad sed corporis consequuntur quos, numquam totam alias vero neque eum aliquam reprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio veniam architecto, repellendus exercitationem commodi? Optio, iste tempora amet excepturi laborum ipsam perspiciatis asperiores nihil voluptates quidem id doloremque libero. Temporibus incidunt omnis ipsum labore debitis animi quod eum, earum officiis ipsa molestiae quasi, est veniam quam ducimus. Repudiandae est facilis veritatis praesentium magnam error nihil, modi accusantium sequi, illo porro.', 'Queen Room Booking, Hotel Booking, Rooms, Room Booking, Room Book, Hotel Near By Me, Resurrect, Resort', '2023-01-08 23:12:01', '2023-01-21 09:41:10'),
(17, 'Economy Room', 'economy-room', '09012023045908-900x700-11-room.jpg', '05012023064531-breadcrumb-bg-11.jpg', NULL, '<p>Interconnecting rooms have a common wall and a door that connects the two rooms. This allows guests to access any of the two rooms without passing through a public area. This type of hotel room is ideal for families and crew members in a 5-star hotel.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit suscipit laborum eligendi eaque! Porro in deleniti ad sed corporis consequuntur quos, numquam totam alias vero neque eum aliquam reprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio veniam architecto, repellendus exercitationem commodi? Optio, iste tempora amet excepturi laborum ipsam perspiciatis asperiores nihil voluptates quidem id doloremque libero. Temporibus incidunt omnis ipsum labore debitis animi quod eum, earum officiis ipsa molestiae quasi, est veniam quam ducimus. Repudiandae est facilis veritatis praesentium magnam error nihil, modi accusantium sequi, illo porro.<br></p>', 3, 2, 1000.000, 1400.000, '2|3|4|6|5|1', '5|4|2|3', '1|2', 1, 38, 1, 0, 1, 'en', 'Economy Room', '09012023045908-900x700-11-room.jpg', 'Interconnecting rooms have a common wall and a door that connects the two rooms. This allows guests to access any of the two rooms without passing through a public area. This type of hotel room is ideal for families and crew members in a 5-star hotel.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit suscipit laborum eligendi eaque! Porro in deleniti ad sed corporis consequuntur quos, numquam totam alias vero neque eum aliquam reprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio veniam architecto, repellendus exercitationem commodi? Optio, iste tempora amet excepturi laborum ipsam perspiciatis asperiores nihil voluptates quidem id doloremque libero. Temporibus incidunt omnis ipsum labore debitis animi quod eum, earum officiis ipsa molestiae quasi, est veniam quam ducimus. Repudiandae est facilis veritatis praesentium magnam error nihil, modi accusantium sequi, illo porro.', 'Booking, Hotel Booking, Rooms, Room Booking, Room Book, Hotel Near By Me, Resurrect, Resort', '2023-01-08 23:35:06', '2023-01-21 09:40:40'),
(18, 'Superior Room', 'superior-room', '09012023045912-900x700-12-room.jpg', '05012023064527-breadcrumb-bg-10.jpg', NULL, '<p>A Cabana is situated away from the main hotel building, in the \r\nvicinity of a swimming pool or sea beach. It may or may not have beds \r\nand is generally used as a changing room, not a bedroom.</p><p>Lorem \r\nipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem\r\n dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit \r\nsuscipit laborum eligendi eaque! Porro in deleniti ad sed corporis \r\nconsequuntur quos, numquam totam alias vero neque eum aliquam \r\nreprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio \r\nveniam architecto, repellendus exercitationem commodi? Optio, iste \r\ntempora amet excepturi laborum ipsam perspiciatis asperiores nihil \r\nvoluptates quidem id doloremque libero. Temporibus incidunt omnis ipsum \r\nlabore debitis animi quod eum, earum officiis ipsa molestiae quasi, est \r\nveniam quam ducimus. Repudiandae est facilis veritatis praesentium \r\nmagnam error nihil, modi accusantium sequi, illo porro.</p><p></p>', 2, 0, 300.000, 400.000, '2|7|3|4|6|5|1', '1|5|4|2', '1', 1, 38, 1, 0, 1, 'en', 'Superior Room', '09012023045912-900x700-12-room.jpg', 'A Cabana is situated away from the main hotel building, in the vicinity of a swimming pool or sea beach. It may or may not have beds and is generally used as a changing room, not a bedroom.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit suscipit laborum eligendi eaque! Porro in deleniti ad sed corporis consequuntur quos, numquam totam alias vero neque eum aliquam reprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio veniam architecto, repellendus exercitationem commodi? Optio, iste tempora amet excepturi laborum ipsam perspiciatis asperiores nihil voluptates quidem id doloremque libero. Temporibus incidunt omnis ipsum labore debitis animi quod eum, earum officiis ipsa molestiae quasi, est veniam quam ducimus. Repudiandae est facilis veritatis praesentium magnam error nihil, modi accusantium sequi, illo porro.', 'Booking, Hotel Booking, Rooms, Room Booking, Room Book, Hotel Near By Me, Resurrect, Resort', '2023-01-08 23:44:50', '2023-01-21 09:45:12'),
(19, 'Balcony Executive Room', 'balcony-executive-room', '09012023045935-900x700-18-room.jpg', '05012023064453-breadcrumb-bg-2.jpg', NULL, '<p>A Lanai has a veranda or roofed patio and is often furnished and used as a living room. It generally has a view of a garden or sea beach.</p><p>Lorem \r\nipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem\r\n dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit \r\nsuscipit laborum eligendi eaque! Porro in deleniti ad sed corporis \r\nconsequuntur quos, numquam totam alias vero neque eum aliquam \r\nreprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio \r\nveniam architecto, repellendus exercitationem commodi? Optio, iste \r\ntempora amet excepturi laborum ipsam perspiciatis asperiores nihil \r\nvoluptates quidem id doloremque libero. Temporibus incidunt omnis ipsum \r\nlabore debitis animi quod eum, earum officiis ipsa molestiae quasi, est \r\nveniam quam ducimus. Repudiandae est facilis veritatis praesentium \r\nmagnam error nihil, modi accusantium sequi, illo porro.</p><p></p>', 1, 0, 200.000, NULL, '2|7|3|4|6|5|1', '1|5|4|2|3', '2', 1, 38, NULL, 1, 1, 'en', 'Balcony Executive Room', '09012023045935-900x700-18-room.jpg', 'A Lanai has a veranda or roofed patio and is often furnished and used as a living room. It generally has a view of a garden or sea beach.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit suscipit laborum eligendi eaque! Porro in deleniti ad sed corporis consequuntur quos, numquam totam alias vero neque eum aliquam reprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio veniam architecto, repellendus exercitationem commodi? Optio, iste tempora amet excepturi laborum ipsam perspiciatis asperiores nihil voluptates quidem id doloremque libero. Temporibus incidunt omnis ipsum labore debitis animi quod eum, earum officiis ipsa molestiae quasi, est veniam quam ducimus. Repudiandae est facilis veritatis praesentium magnam error nihil, modi accusantium sequi, illo porro.', 'Booking, Hotel Booking, Rooms, Room Booking, Room Book, Hotel Near By Me, Resurrect, Resort', '2023-01-09 00:04:37', '2023-01-21 09:32:49'),
(20, 'Executive Premium Suite', 'executive-premium-suite', '09012023045859-900x700-9-room.jpg', '05012023064453-breadcrumb-bg-2.jpg', NULL, '<p>A penthouse room is generally located on the topmost floor of hotels and has an attached open terrace or open sky space. It has very opulent decor and furnishings and is among the costliest rooms in the hotels, preferred by celebrities and major political personalities.<br></p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit suscipit laborum eligendi eaque! Porro in deleniti ad sed corporis consequuntur quos, numquam totam alias vero neque eum aliquam reprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio veniam architecto, repellendus exercitationem commodi? Optio, iste tempora amet excepturi laborum ipsam perspiciatis asperiores nihil voluptates quidem id doloremque libero. Temporibus incidunt omnis ipsum labore debitis animi quod eum, earum officiis ipsa molestiae quasi, est veniam quam ducimus. Repudiandae est facilis veritatis praesentium magnam error nihil, modi accusantium sequi, illo porro.<br></p>', 2, 1, 2000.000, 3000.000, '2|7|3|4|6|5|1', '1|5|4|2|3', '1', 1, 38, 1, 0, 1, 'en', 'Executive Premium Suite', '09012023045859-900x700-9-room.jpg', 'A penthouse room is generally located on the topmost floor of hotels and has an attached open terrace or open sky space. It has very opulent decor and furnishings and is among the costliest rooms in the hotels, preferred by celebrities and major political personalities.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit suscipit laborum eligendi eaque! Porro in deleniti ad sed corporis consequuntur quos, numquam totam alias vero neque eum aliquam reprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio veniam architecto, repellendus exercitationem commodi? Optio, iste tempora amet excepturi laborum ipsam perspiciatis asperiores nihil voluptates quidem id doloremque libero. Temporibus incidunt omnis ipsum labore debitis animi quod eum, earum officiis ipsa molestiae quasi, est veniam quam ducimus. Repudiandae est facilis veritatis praesentium magnam error nihil, modi accusantium sequi, illo porro.', 'Booking, Hotel Booking, Rooms, Room Booking, Room Book, Hotel Near By Me, Resurrect, Resort', '2023-01-09 00:16:56', '2023-01-21 09:23:29'),
(21, 'Couple Premium Room', 'couple-premium-room', '09012023045912-900x700-12-room.jpg', '05012023064453-breadcrumb-bg-2.jpg', NULL, '<p>A hospitality room is designed for hotel guests who would want to entertain their own guests outside their allotted rooms. Such rooms are generally charged on an hourly basis.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit suscipit laborum eligendi eaque! Porro in deleniti ad sed corporis consequuntur quos, numquam totam alias vero neque eum aliquam reprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio veniam architecto, repellendus exercitationem commodi? Optio, iste tempora amet excepturi laborum ipsam perspiciatis asperiores nihil voluptates quidem id doloremque libero. Temporibus incidunt omnis ipsum labore debitis animi quod eum, earum officiis ipsa molestiae quasi, est veniam quam ducimus. Repudiandae est facilis veritatis praesentium magnam error nihil, modi accusantium sequi, illo porro.<br></p>', 2, 1, 720.000, NULL, '2|7|3|4|6|5|1', '5|4|2|3', '1', 1, 38, NULL, 0, 1, 'en', 'Couple Premium Room', '09012023045912-900x700-12-room.jpg', 'A hospitality room is designed for hotel guests who would want to entertain their own guests outside their allotted rooms. Such rooms are generally charged on an hourly basis.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit suscipit laborum eligendi eaque! Porro in deleniti ad sed corporis consequuntur quos, numquam totam alias vero neque eum aliquam reprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio veniam architecto, repellendus exercitationem commodi? Optio, iste tempora amet excepturi laborum ipsam perspiciatis asperiores nihil voluptates quidem id doloremque libero. Temporibus incidunt omnis ipsum labore debitis animi quod eum, earum officiis ipsa molestiae quasi, est veniam quam ducimus. Repudiandae est facilis veritatis praesentium magnam error nihil, modi accusantium sequi, illo porro.', 'Booking, Hotel Booking, Rooms, Room Booking, Room Book, Hotel Near By Me, Resurrect, Resort', '2023-01-09 00:27:29', '2023-01-21 09:39:10'),
(22, 'Superior Premium Room', 'superior-premium-room', '06012023120553-900x700-2-room.jpg', '05012023064453-breadcrumb-bg-2.jpg', NULL, '<p>An efficiency room has an attached kitchenette for guests preferring a longer duration of stay. Generally, this type of hotel room is found in holiday and health resorts where guests stay for a longer period of time.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit suscipit laborum eligendi eaque! Porro in deleniti ad sed corporis consequuntur quos, numquam totam alias vero neque eum aliquam reprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio veniam architecto, repellendus exercitationem commodi? Optio, iste tempora amet excepturi laborum ipsam perspiciatis asperiores nihil voluptates quidem id doloremque libero. Temporibus incidunt omnis ipsum labore debitis animi quod eum, earum officiis ipsa molestiae quasi, est veniam quam ducimus. Repudiandae est facilis veritatis praesentium magnam error nihil, modi accusantium sequi, illo porro.<br></p>', 2, 2, 1400.000, 1500.000, '2|7|3|4|6|5|1', '1|5|4|2|3', '1|2', 1, 38, 1, 1, 1, 'en', 'Superior Premium Room', '06012023120553-900x700-2-room.jpg', 'An efficiency room has an attached kitchenette for guests preferring a longer duration of stay. Generally, this type of hotel room is found in holiday and health resorts where guests stay for a longer period of time.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit suscipit laborum eligendi eaque! Porro in deleniti ad sed corporis consequuntur quos, numquam totam alias vero neque eum aliquam reprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio veniam architecto, repellendus exercitationem commodi? Optio, iste tempora amet excepturi laborum ipsam perspiciatis asperiores nihil voluptates quidem id doloremque libero. Temporibus incidunt omnis ipsum labore debitis animi quod eum, earum officiis ipsa molestiae quasi, est veniam quam ducimus. Repudiandae est facilis veritatis praesentium magnam error nihil, modi accusantium sequi, illo porro.', 'Booking, Hotel Booking, Rooms, Room Booking, Room Book, Hotel Near By Me, Resurrect, Resort', '2023-01-09 00:42:50', '2023-01-21 09:31:34'),
(23, 'Twin Premium Room', 'twin-premium-room', '06012023135205-900x700-about-4.jpg', '05012023064453-breadcrumb-bg-2.jpg', NULL, '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit suscipit laborum eligendi eaque! Porro in deleniti ad sed corporis consequuntur quos, numquam totam alias vero neque eum aliquam reprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio veniam architecto, repellendus exercitationem commodi? <br></p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit suscipit laborum eligendi eaque! Porro in deleniti ad sed corporis consequuntur quos, numquam totam alias vero neque eum aliquam reprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio veniam architecto, repellendus exercitationem commodi? Optio, iste tempora amet excepturi laborum ipsam perspiciatis asperiores nihil voluptates quidem id doloremque libero. Temporibus incidunt omnis ipsum labore debitis animi quod eum, earum officiis ipsa molestiae quasi, est veniam quam ducimus. Repudiandae est facilis veritatis praesentium magnam error nihil, modi accusantium sequi, illo porro.<br></p>', 2, 0, 400.000, NULL, '2|7|3|4|6|5|1', '1|5|4|2', '1', 1, 38, NULL, 1, 1, 'en', 'Twin Premium Room', '06012023135205-900x700-about-4.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit suscipit laborum eligendi eaque! Porro in deleniti ad sed corporis consequuntur quos, numquam totam alias vero neque eum aliquam reprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio veniam architecto, repellendus exercitationem commodi? Optio, iste tempora amet excepturi laborum ipsam perspiciatis asperiores nihil voluptates quidem id doloremque libero. Temporibus incidunt omnis ipsum labore debitis animi quod eum, earum officiis ipsa molestiae quasi, est veniam quam ducimus. Repudiandae est facilis veritatis praesentium magnam error nihil, modi accusantium sequi, illo porro.', 'Booking, Hotel Booking, Rooms, Room Booking, Room Book, Hotel Near By Me, Resurrect, Resort', '2023-01-09 00:54:54', '2023-01-21 09:27:19'),
(24, 'Deluxe Double Room', 'deluxe-double-room', '09012023045943-900x700-20-room.jpg', '05012023064527-breadcrumb-bg-10.jpg', NULL, '<p>A Suite room is comprised of more than one room. Occasionally, it can also be a single large room with clearly defined sleeping and sitting areas. The decor of such units is of very high standards, aimed to please the affluent guest who can afford the high tariffs of the room category.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit suscipit laborum eligendi eaque! Porro in deleniti ad sed corporis consequuntur quos, numquam totam alias vero neque eum aliquam reprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio veniam architecto, repellendus exercitationem commodi? Optio, iste tempora amet excepturi laborum ipsam perspiciatis asperiores nihil voluptates quidem id doloremque libero. Temporibus incidunt omnis ipsum labore debitis animi quod eum, earum officiis ipsa molestiae quasi, est veniam quam ducimus. Repudiandae est facilis veritatis praesentium magnam error nihil, modi accusantium sequi, illo porro.<br></p>', 2, 1, 800.000, 1000.000, '2|7|3|4|6|5|1', '1|5|4|2|3', '1', 1, 38, 1, 0, 1, 'en', 'Deluxe Double Room', '09012023045943-900x700-20-room.jpg', 'A Suite room is comprised of more than one room. Occasionally, it can also be a single large room with clearly defined sleeping and sitting areas. The decor of such units is of very high standards, aimed to please the affluent guest who can afford the high tariffs of the room category.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit suscipit laborum eligendi eaque! Porro in deleniti ad sed corporis consequuntur quos, numquam totam alias vero neque eum aliquam reprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio veniam architecto, repellendus exercitationem commodi? Optio, iste tempora amet excepturi laborum ipsam perspiciatis asperiores nihil voluptates quidem id doloremque libero. Temporibus incidunt omnis ipsum labore debitis animi quod eum, earum officiis ipsa molestiae quasi, est veniam quam ducimus. Repudiandae est facilis veritatis praesentium magnam error nihil, modi accusantium sequi, illo porro.', 'Booking, Hotel Booking, Rooms, Room Booking, Room Book, Hotel Near By Me, Resurrect, Resort', '2023-01-09 01:57:27', '2023-01-30 10:25:35'),
(25, 'Deluxe Single Room', 'deluxe-single-room', '06012023120606-900x700-6-room.jpg', '05012023064527-breadcrumb-bg-10.jpg', NULL, '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit suscipit laborum eligendi eaque! Porro in deleniti ad sed corporis consequuntur quos, numquam totam alias vero neque eum aliquam reprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio veniam architecto, repellendus exercitationem commodi? Optio, iste tempora amet excepturi laborum ipsam perspiciatis asperiores nihil voluptates quidem id doloremque libero. Temporibus incidunt omnis ipsum labore debitis animi quod eum, earum officiis ipsa molestiae quasi, est veniam quam ducimus. Repudiandae est facilis veritatis praesentium magnam error nihil, modi accusantium sequi, illo porro.<br></p>', 2, 0, 200.000, NULL, '2|7|3|4|6|5|1', '1|5|4|2', '1', 1, 38, NULL, 1, 1, 'en', 'Deluxe Single Room', '06012023120606-900x700-6-room.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit suscipit laborum eligendi eaque! Porro in deleniti ad sed corporis consequuntur quos, numquam totam alias vero neque eum aliquam reprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio veniam architecto, repellendus exercitationem commodi? Optio, iste tempora amet excepturi laborum ipsam perspiciatis asperiores nihil voluptates quidem id doloremque libero. Temporibus incidunt omnis ipsum labore debitis animi quod eum, earum officiis ipsa molestiae quasi, est veniam quam ducimus. Repudiandae est facilis veritatis praesentium magnam error nihil, modi accusantium sequi, illo porro.', 'Booking, Hotel Booking, Rooms, Room Booking, Room Book, Hotel Near By Me, Resurrect, Resort', '2023-01-09 02:08:39', '2023-01-21 09:38:38'),
(43, 'Luxury Suite', 'luxury-suite', '10012023084507-900x700-Rectangle 5.jpg', '05012023064516-breadcrumb-bg-7.jpg', NULL, '<p>A Hollywood twin room has two single beds with a common headboard. This hotel room type is generally occupied by two guests.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit suscipit laborum eligendi eaque! Porro in deleniti ad sed corporis consequuntur quos, numquam totam alias vero neque eum aliquam reprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio veniam architecto, repellendus exercitationem commodi? Optio, iste tempora amet excepturi laborum ipsam perspiciatis asperiores nihil voluptates quidem id doloremque libero. Temporibus incidunt omnis ipsum labore debitis animi quod eum, earum officiis ipsa molestiae quasi, est veniam quam ducimus. Repudiandae est facilis veritatis praesentium magnam error nihil, modi accusantium sequi, illo porro.<br></p>', 2, 1, 456.000, NULL, '2|7|3|4|6|5|1', '1|5|4|2|3', '1|2', 1, 38, 0, 0, 1, 'en', 'Luxury Suite', '10012023084507-900x700-Rectangle 5.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit suscipit laborum eligendi eaque! Porro in deleniti ad sed corporis consequuntur quos, numquam totam alias vero neque eum aliquam reprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio veniam architecto, repellendus exercitationem commodi? Optio, iste tempora amet excepturi laborum ipsam perspiciatis asperiores nihil voluptates quidem id doloremque libero. Temporibus incidunt omnis ipsum labore debitis animi quod eum, earum officiis ipsa molestiae quasi, est veniam quam ducimus. Repudiandae est facilis veritatis praesentium magnam error nihil, modi accusantium sequi, illo porro.', 'Booking, Hotel Booking, Rooms, Room Booking, Room Book, Hotel Near By Me, Resurrect, Resort', '2023-01-10 03:39:32', '2023-02-27 09:40:10');

-- --------------------------------------------------------

--
-- Table structure for table `room_assigns`
--

CREATE TABLE `room_assigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `roomtype_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `room_images`
--

CREATE TABLE `room_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room_id` int(11) DEFAULT NULL,
  `thumbnail` text DEFAULT NULL,
  `large_image` text DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_images`
--

INSERT INTO `room_images` (`id`, `room_id`, `thumbnail`, `large_image`, `desc`, `created_at`, `updated_at`) VALUES
(13, 1, '06012023120553-900x700-2-room.jpg', '06012023120553-2-room.jpg', NULL, '2023-01-06 06:34:23', '2023-01-06 06:34:23'),
(14, 1, '06012023120557-900x700-3-room.jpg', '06012023120557-3-room.jpg', NULL, '2023-01-06 06:34:31', '2023-01-06 06:34:31'),
(16, 1, '06012023120600-900x700-4-room.jpg', '06012023120600-4-room.jpg', NULL, '2023-01-06 06:34:50', '2023-01-06 06:34:50'),
(17, 1, '06012023120603-900x700-5-room.jpg', '06012023120603-5-room.jpg', NULL, '2023-01-06 06:34:56', '2023-01-06 06:34:56'),
(18, 1, '06012023120606-900x700-6-room.jpg', '06012023120606-6-room.jpg', NULL, '2023-01-06 06:35:04', '2023-01-06 06:35:04'),
(19, 10, '06012023120550-900x700-1-room.jpg', '06012023120550-1-room.jpg', NULL, '2023-01-06 06:55:36', '2023-01-06 06:55:36'),
(20, 10, '06012023120557-900x700-3-room.jpg', '06012023120557-3-room.jpg', NULL, '2023-01-06 06:55:50', '2023-01-06 06:55:50'),
(21, 10, '06012023120600-900x700-4-room.jpg', '06012023120600-4-room.jpg', NULL, '2023-01-06 06:55:56', '2023-01-06 06:55:56'),
(22, 10, '06012023120603-900x700-5-room.jpg', '06012023120603-5-room.jpg', NULL, '2023-01-06 06:56:01', '2023-01-06 06:56:01'),
(23, 10, '06012023120606-900x700-6-room.jpg', '06012023120606-6-room.jpg', NULL, '2023-01-06 06:56:10', '2023-01-06 06:56:10'),
(25, 10, '06012023113208-900x700-about-2.jpg', '06012023113208-about-2.jpg', NULL, '2023-01-06 06:57:03', '2023-01-06 06:57:03'),
(26, 11, '06012023120550-900x700-1-room.jpg', '06012023120550-1-room.jpg', NULL, '2023-01-06 07:07:08', '2023-01-06 07:07:08'),
(27, 11, '06012023120553-900x700-2-room.jpg', '06012023120553-2-room.jpg', NULL, '2023-01-06 07:07:13', '2023-01-06 07:07:13'),
(28, 11, '06012023120557-900x700-3-room.jpg', '06012023120557-3-room.jpg', NULL, '2023-01-06 07:07:26', '2023-01-06 07:07:26'),
(29, 11, '06012023120600-900x700-4-room.jpg', '06012023120600-4-room.jpg', NULL, '2023-01-06 07:07:31', '2023-01-06 07:07:31'),
(30, 11, '06012023120603-900x700-5-room.jpg', '06012023120603-5-room.jpg', NULL, '2023-01-06 07:07:38', '2023-01-06 07:07:38'),
(31, 11, '06012023120606-900x700-6-room.jpg', '06012023120606-6-room.jpg', NULL, '2023-01-06 07:07:44', '2023-01-06 07:07:44'),
(32, 12, '06012023120550-900x700-1-room.jpg', '06012023120550-1-room.jpg', NULL, '2023-01-06 07:13:31', '2023-01-06 07:13:31'),
(33, 12, '06012023120553-900x700-2-room.jpg', '06012023120553-2-room.jpg', NULL, '2023-01-06 07:13:35', '2023-01-06 07:13:35'),
(34, 12, '06012023120557-900x700-3-room.jpg', '06012023120557-3-room.jpg', NULL, '2023-01-06 07:13:44', '2023-01-06 07:13:44'),
(35, 12, '06012023120600-900x700-4-room.jpg', '06012023120600-4-room.jpg', NULL, '2023-01-06 07:13:50', '2023-01-06 07:13:50'),
(36, 12, '06012023120603-900x700-5-room.jpg', '06012023120603-5-room.jpg', NULL, '2023-01-06 07:13:55', '2023-01-06 07:13:55'),
(37, 12, '06012023120606-900x700-6-room.jpg', '06012023120606-6-room.jpg', NULL, '2023-01-06 07:14:00', '2023-01-06 07:14:00'),
(38, 13, '06012023120550-900x700-1-room.jpg', '06012023120550-1-room.jpg', NULL, '2023-01-06 07:18:40', '2023-01-06 07:18:40'),
(39, 13, '06012023120553-900x700-2-room.jpg', '06012023120553-2-room.jpg', NULL, '2023-01-06 07:18:52', '2023-01-06 07:18:52'),
(40, 13, '06012023120557-900x700-3-room.jpg', '06012023120557-3-room.jpg', NULL, '2023-01-06 07:18:57', '2023-01-06 07:18:57'),
(41, 13, '06012023120600-900x700-4-room.jpg', '06012023120600-4-room.jpg', NULL, '2023-01-06 07:19:01', '2023-01-06 07:19:01'),
(42, 13, '06012023120603-900x700-5-room.jpg', '06012023120603-5-room.jpg', NULL, '2023-01-06 07:19:06', '2023-01-06 07:19:06'),
(43, 13, '06012023120606-900x700-6-room.jpg', '06012023120606-6-room.jpg', NULL, '2023-01-06 07:19:11', '2023-01-06 07:19:11'),
(44, 14, '06012023120550-900x700-1-room.jpg', '06012023120550-1-room.jpg', NULL, '2023-01-06 07:25:47', '2023-01-06 07:25:47'),
(45, 14, '06012023120553-900x700-2-room.jpg', '06012023120553-2-room.jpg', NULL, '2023-01-06 07:25:52', '2023-01-06 07:25:52'),
(46, 14, '06012023120557-900x700-3-room.jpg', '06012023120557-3-room.jpg', NULL, '2023-01-06 07:25:56', '2023-01-06 07:25:56'),
(47, 14, '06012023120600-900x700-4-room.jpg', '06012023120600-4-room.jpg', NULL, '2023-01-06 07:26:14', '2023-01-06 07:26:14'),
(48, 14, '06012023120603-900x700-5-room.jpg', '06012023120603-5-room.jpg', NULL, '2023-01-06 07:26:18', '2023-01-06 07:26:18'),
(50, 14, '06012023120550-900x700-1-room.jpg', '06012023120550-1-room.jpg', NULL, '2023-01-06 08:21:21', '2023-01-06 08:21:21'),
(51, 15, '09012023045851-900x700-7-room.jpg', '09012023045851-7-room.jpg', NULL, '2023-01-08 23:03:54', '2023-01-08 23:03:54'),
(52, 15, '09012023045855-900x700-8-room.jpg', '09012023045855-8-room.jpg', NULL, '2023-01-08 23:04:02', '2023-01-08 23:04:02'),
(53, 15, '09012023045859-900x700-9-room.jpg', '09012023045859-9-room.jpg', NULL, '2023-01-08 23:04:08', '2023-01-08 23:04:08'),
(54, 15, '09012023045904-900x700-10-room.jpg', '09012023045904-10-room.jpg', NULL, '2023-01-08 23:04:14', '2023-01-08 23:04:14'),
(55, 15, '09012023045908-900x700-11-room.jpg', '09012023045908-11-room.jpg', NULL, '2023-01-08 23:04:19', '2023-01-08 23:04:19'),
(56, 15, '09012023045912-900x700-12-room.jpg', '09012023045912-12-room.jpg', NULL, '2023-01-08 23:04:28', '2023-01-08 23:04:28'),
(57, 15, '09012023045916-900x700-13-room.jpg', '09012023045916-13-room.jpg', NULL, '2023-01-08 23:04:34', '2023-01-08 23:04:34'),
(58, 17, '09012023045851-900x700-7-room.jpg', '09012023045851-7-room.jpg', NULL, '2023-01-08 23:39:29', '2023-01-08 23:39:29'),
(59, 17, '09012023045855-900x700-8-room.jpg', '09012023045855-8-room.jpg', NULL, '2023-01-08 23:39:34', '2023-01-08 23:39:34'),
(60, 17, '09012023045859-900x700-9-room.jpg', '09012023045859-9-room.jpg', NULL, '2023-01-08 23:39:39', '2023-01-08 23:39:39'),
(61, 17, '09012023045943-900x700-20-room.jpg', '09012023045943-20-room.jpg', NULL, '2023-01-08 23:39:46', '2023-01-08 23:39:46'),
(62, 17, '09012023045939-900x700-19-room.jpg', '09012023045939-19-room.jpg', NULL, '2023-01-08 23:39:51', '2023-01-08 23:39:51'),
(63, 17, '09012023045931-900x700-17-room.jpg', '09012023045931-17-room.jpg', NULL, '2023-01-08 23:40:00', '2023-01-08 23:40:00'),
(64, 17, '09012023045928-900x700-16-room.jpg', '09012023045928-16-room.jpg', NULL, '2023-01-08 23:40:08', '2023-01-08 23:40:08'),
(65, 17, '09012023045935-900x700-18-room.jpg', '09012023045935-18-room.jpg', NULL, '2023-01-08 23:40:15', '2023-01-08 23:40:15'),
(66, 18, '09012023045916-900x700-13-room.jpg', '09012023045916-13-room.jpg', NULL, '2023-01-08 23:46:47', '2023-01-08 23:46:47'),
(67, 18, '09012023045919-900x700-14-room.jpg', '09012023045919-14-room.jpg', NULL, '2023-01-08 23:46:52', '2023-01-08 23:46:52'),
(68, 18, '09012023045924-900x700-15-room.jpg', '09012023045924-15-room.jpg', NULL, '2023-01-08 23:46:58', '2023-01-08 23:46:58'),
(70, 18, '09012023045928-900x700-16-room.jpg', '09012023045928-16-room.jpg', NULL, '2023-01-08 23:47:07', '2023-01-08 23:47:07'),
(72, 18, '09012023045931-900x700-17-room.jpg', '09012023045931-17-room.jpg', NULL, '2023-01-08 23:47:26', '2023-01-08 23:47:26'),
(73, 18, '09012023045935-900x700-18-room.jpg', '09012023045935-18-room.jpg', NULL, '2023-01-08 23:47:34', '2023-01-08 23:47:34'),
(74, 18, '09012023045943-900x700-20-room.jpg', '09012023045943-20-room.jpg', NULL, '2023-01-08 23:47:40', '2023-01-08 23:47:40'),
(76, 19, '09012023045939-900x700-19-room.jpg', '09012023045939-19-room.jpg', NULL, '2023-01-09 00:06:50', '2023-01-09 00:06:50'),
(77, 19, '09012023045935-900x700-18-room.jpg', '09012023045935-18-room.jpg', NULL, '2023-01-09 00:06:56', '2023-01-09 00:06:56'),
(78, 19, '09012023045931-900x700-17-room.jpg', '09012023045931-17-room.jpg', NULL, '2023-01-09 00:07:02', '2023-01-09 00:07:02'),
(79, 19, '09012023045859-900x700-9-room.jpg', '09012023045859-9-room.jpg', NULL, '2023-01-09 00:07:51', '2023-01-09 00:07:51'),
(80, 19, '09012023045904-900x700-10-room.jpg', '09012023045904-10-room.jpg', NULL, '2023-01-09 00:08:01', '2023-01-09 00:08:01'),
(82, 20, '09012023045855-900x700-8-room.jpg', '09012023045855-8-room.jpg', NULL, '2023-01-09 00:21:02', '2023-01-09 00:21:02'),
(83, 20, '09012023045904-900x700-10-room.jpg', '09012023045904-10-room.jpg', NULL, '2023-01-09 00:21:07', '2023-01-09 00:21:07'),
(84, 20, '09012023045912-900x700-12-room.jpg', '09012023045912-12-room.jpg', NULL, '2023-01-09 00:21:12', '2023-01-09 00:21:12'),
(85, 20, '09012023045916-900x700-13-room.jpg', '09012023045916-13-room.jpg', NULL, '2023-01-09 00:21:17', '2023-01-09 00:21:17'),
(86, 20, '09012023045919-900x700-14-room.jpg', '09012023045919-14-room.jpg', NULL, '2023-01-09 00:21:23', '2023-01-09 00:21:23'),
(87, 21, '09012023045851-900x700-7-room.jpg', '09012023045851-7-room.jpg', NULL, '2023-01-09 00:29:30', '2023-01-09 00:29:30'),
(88, 21, '06012023135205-900x700-about-4.jpg', '06012023135205-about-4.jpg', NULL, '2023-01-09 00:29:45', '2023-01-09 00:29:45'),
(89, 21, '06012023120606-900x700-6-room.jpg', '06012023120606-6-room.jpg', NULL, '2023-01-09 00:29:51', '2023-01-09 00:29:51'),
(90, 21, '06012023120603-900x700-5-room.jpg', '06012023120603-5-room.jpg', NULL, '2023-01-09 00:29:56', '2023-01-09 00:29:56'),
(91, 21, '06012023120557-900x700-3-room.jpg', '06012023120557-3-room.jpg', NULL, '2023-01-09 00:30:02', '2023-01-09 00:30:02'),
(92, 21, '06012023120553-900x700-2-room.jpg', '06012023120553-2-room.jpg', NULL, '2023-01-09 00:30:07', '2023-01-09 00:30:07'),
(93, 21, '09012023045912-900x700-12-room.jpg', '09012023045912-12-room.jpg', NULL, '2023-01-09 00:32:16', '2023-01-09 00:32:16'),
(94, 21, '09012023045855-900x700-8-room.jpg', '09012023045855-8-room.jpg', NULL, '2023-01-09 00:32:23', '2023-01-09 00:32:23'),
(95, 20, '09012023045859-900x700-9-room.jpg', '09012023045859-9-room.jpg', NULL, '2023-01-09 00:34:17', '2023-01-09 00:34:17'),
(96, 19, '09012023045935-900x700-18-room.jpg', '09012023045935-18-room.jpg', NULL, '2023-01-09 00:34:59', '2023-01-09 00:34:59'),
(97, 22, '06012023120553-900x700-2-room.jpg', '06012023120553-2-room.jpg', NULL, '2023-01-09 00:44:56', '2023-01-09 00:44:56'),
(98, 22, '06012023120550-900x700-1-room.jpg', '06012023120550-1-room.jpg', NULL, '2023-01-09 00:45:01', '2023-01-09 00:45:01'),
(99, 22, '06012023120557-900x700-3-room.jpg', '06012023120557-3-room.jpg', NULL, '2023-01-09 00:45:06', '2023-01-09 00:45:06'),
(100, 22, '06012023120600-900x700-4-room.jpg', '06012023120600-4-room.jpg', NULL, '2023-01-09 00:45:10', '2023-01-09 00:45:10'),
(101, 22, '06012023120603-900x700-5-room.jpg', '06012023120603-5-room.jpg', NULL, '2023-01-09 00:45:17', '2023-01-09 00:45:17'),
(102, 22, '06012023120606-900x700-6-room.jpg', '06012023120606-6-room.jpg', NULL, '2023-01-09 00:45:24', '2023-01-09 00:45:24'),
(103, 22, '06012023135205-900x700-about-4.jpg', '06012023135205-about-4.jpg', NULL, '2023-01-09 00:45:33', '2023-01-09 00:45:33'),
(104, 22, '09012023045939-900x700-19-room.jpg', '09012023045939-19-room.jpg', NULL, '2023-01-09 00:45:50', '2023-01-09 00:45:50'),
(106, 23, '06012023135205-900x700-about-4.jpg', '06012023135205-about-4.jpg', NULL, '2023-01-09 00:57:59', '2023-01-09 00:57:59'),
(107, 23, '06012023120606-900x700-6-room.jpg', '06012023120606-6-room.jpg', NULL, '2023-01-09 00:58:06', '2023-01-09 00:58:06'),
(108, 23, '06012023120603-900x700-5-room.jpg', '06012023120603-5-room.jpg', NULL, '2023-01-09 00:58:11', '2023-01-09 00:58:11'),
(109, 23, '06012023120600-900x700-4-room.jpg', '06012023120600-4-room.jpg', NULL, '2023-01-09 00:58:16', '2023-01-09 00:58:16'),
(110, 23, '06012023120557-900x700-3-room.jpg', '06012023120557-3-room.jpg', NULL, '2023-01-09 00:58:23', '2023-01-09 00:58:23'),
(111, 23, '06012023120553-900x700-2-room.jpg', '06012023120553-2-room.jpg', NULL, '2023-01-09 00:58:28', '2023-01-09 00:58:28'),
(112, 23, '06012023120550-900x700-1-room.jpg', '06012023120550-1-room.jpg', NULL, '2023-01-09 00:58:33', '2023-01-09 00:58:33'),
(113, 23, '09012023045855-900x700-8-room.jpg', '09012023045855-8-room.jpg', NULL, '2023-01-09 00:58:45', '2023-01-09 00:58:45'),
(114, 24, '09012023045943-900x700-20-room.jpg', '09012023045943-20-room.jpg', NULL, '2023-01-09 02:01:21', '2023-01-09 02:01:21'),
(115, 24, '09012023045939-900x700-19-room.jpg', '09012023045939-19-room.jpg', NULL, '2023-01-09 02:01:26', '2023-01-09 02:01:26'),
(116, 24, '09012023045935-900x700-18-room.jpg', '09012023045935-18-room.jpg', NULL, '2023-01-09 02:01:31', '2023-01-09 02:01:31'),
(117, 24, '09012023045931-900x700-17-room.jpg', '09012023045931-17-room.jpg', NULL, '2023-01-09 02:01:44', '2023-01-09 02:01:44'),
(119, 24, '09012023045855-900x700-8-room.jpg', '09012023045855-8-room.jpg', NULL, '2023-01-09 02:02:10', '2023-01-09 02:02:10'),
(120, 24, '09012023045916-900x700-13-room.jpg', '09012023045916-13-room.jpg', NULL, '2023-01-09 02:02:26', '2023-01-09 02:02:26'),
(121, 25, '06012023120606-900x700-6-room.jpg', '06012023120606-6-room.jpg', NULL, '2023-01-09 02:24:54', '2023-01-09 02:24:54'),
(122, 25, '06012023135205-900x700-about-4.jpg', '06012023135205-about-4.jpg', NULL, '2023-01-09 02:25:01', '2023-01-09 02:25:01'),
(123, 25, '06012023120603-900x700-5-room.jpg', '06012023120603-5-room.jpg', NULL, '2023-01-09 02:25:07', '2023-01-09 02:25:07'),
(124, 25, '06012023120550-900x700-1-room.jpg', '06012023120550-1-room.jpg', NULL, '2023-01-09 02:25:12', '2023-01-09 02:25:12'),
(125, 25, '06012023120557-900x700-3-room.jpg', '06012023120557-3-room.jpg', NULL, '2023-01-09 02:25:18', '2023-01-09 02:25:18'),
(126, 25, '09012023045928-900x700-16-room.jpg', '09012023045928-16-room.jpg', NULL, '2023-01-09 02:25:28', '2023-01-09 02:25:28'),
(234, 43, '10012023084507-900x700-Rectangle 5.jpg', '10012023084507-Rectangle 5.jpg', NULL, '2023-01-10 03:41:44', '2023-01-10 03:41:44'),
(235, 43, '10012023084422-900x700-Rectangle 3-5.jpg', '10012023084422-Rectangle 3-5.jpg', NULL, '2023-01-10 03:41:49', '2023-01-10 03:41:49'),
(236, 43, '10012023044320-900x700-Rectangle 2-5.jpg', '10012023044320-Rectangle 2-5.jpg', NULL, '2023-01-10 03:41:54', '2023-01-10 03:41:54'),
(237, 43, '10012023084447-900x700-Rectangle 4-2.jpg', '10012023084447-Rectangle 4-2.jpg', NULL, '2023-01-10 03:42:00', '2023-01-10 03:42:00'),
(238, 43, '10012023044330-900x700-Rectangle 3-1.jpg', '10012023044330-Rectangle 3-1.jpg', NULL, '2023-01-10 03:42:05', '2023-01-10 03:42:05'),
(239, 43, '10012023044246-900x700-Rectangle 1-5.jpg', '10012023044246-Rectangle 1-5.jpg', NULL, '2023-01-10 03:42:11', '2023-01-10 03:42:11'),
(240, 43, '10012023084409-900x700-Rectangle 3-2.jpg', '10012023084409-Rectangle 3-2.jpg', NULL, '2023-01-10 03:42:16', '2023-01-10 03:42:16'),
(241, 43, '10012023044300-900x700-Rectangle 2-1.jpg', '10012023044300-Rectangle 2-1.jpg', NULL, '2023-01-10 03:42:23', '2023-01-10 03:42:23'),
(256, 1, '09012023045851-900x700-7-room.jpg', '09012023045851-7-room.jpg', NULL, '2023-01-21 09:10:22', '2023-01-21 09:10:22'),
(257, 16, '10012023084440-900x700-Rectangle 4.jpg', '10012023084440-Rectangle 4.jpg', NULL, '2023-01-21 09:18:23', '2023-01-21 09:18:23'),
(258, 16, '10012023084413-900x700-Rectangle 3-3.jpg', '10012023084413-Rectangle 3-3.jpg', NULL, '2023-01-21 09:18:28', '2023-01-21 09:18:28'),
(259, 16, '10012023044320-900x700-Rectangle 2-5.jpg', '10012023044320-Rectangle 2-5.jpg', NULL, '2023-01-21 09:18:32', '2023-01-21 09:18:32'),
(260, 16, '10012023044315-900x700-Rectangle 2-4.jpg', '10012023044315-Rectangle 2-4.jpg', NULL, '2023-01-21 09:18:36', '2023-01-21 09:18:36'),
(261, 16, '10012023044256-900x700-Rectangle 2.jpg', '10012023044256-Rectangle 2.jpg', NULL, '2023-01-21 09:18:41', '2023-01-21 09:18:41'),
(262, 16, '10012023044241-900x700-Rectangle 1-4.jpg', '10012023044241-Rectangle 1-4.jpg', NULL, '2023-01-21 09:18:45', '2023-01-21 09:18:45'),
(263, 16, '09012023045851-900x700-7-room.jpg', '09012023045851-7-room.jpg', NULL, '2023-01-21 09:18:53', '2023-01-21 09:18:53'),
(264, 16, '09012023045928-900x700-16-room.jpg', '09012023045928-16-room.jpg', NULL, '2023-01-21 09:18:59', '2023-01-21 09:18:59'),
(265, 16, '06012023120553-900x700-2-room.jpg', '06012023120553-2-room.jpg', NULL, '2023-01-21 09:19:18', '2023-01-21 09:19:18');

-- --------------------------------------------------------

--
-- Table structure for table `room_manages`
--

CREATE TABLE `room_manages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `roomtype_id` int(11) DEFAULT NULL,
  `room_no` varchar(191) DEFAULT NULL,
  `in_date` date DEFAULT NULL,
  `out_date` date DEFAULT NULL,
  `book_status` int(11) DEFAULT NULL,
  `is_publish` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_manages`
--

INSERT INTO `room_manages` (`id`, `roomtype_id`, `room_no`, `in_date`, `out_date`, `book_status`, `is_publish`, `created_at`, `updated_at`) VALUES
(21, 43, '101', NULL, NULL, 2, 1, '2023-01-21 07:14:07', '2023-02-27 07:37:27'),
(22, 43, '102', NULL, NULL, 2, 1, '2023-01-21 07:14:11', '2023-02-27 07:37:27'),
(23, 43, '103', NULL, NULL, 2, 1, '2023-01-21 07:14:21', '2023-02-27 07:37:27'),
(24, 43, '104', NULL, NULL, 2, 1, '2023-01-21 07:14:24', '2023-02-17 10:01:58'),
(25, 43, '105', NULL, NULL, 2, 1, '2023-01-21 07:14:31', '2023-02-17 10:01:58'),
(26, 43, '106', NULL, NULL, 2, 1, '2023-01-21 07:14:36', '2023-02-17 10:01:58'),
(27, 43, '107', NULL, NULL, 2, 1, '2023-01-21 07:14:42', '2023-02-17 10:01:58'),
(28, 43, '108', NULL, NULL, 2, 1, '2023-01-21 07:14:46', '2023-01-21 07:14:46'),
(29, 43, '109', NULL, NULL, 2, 1, '2023-01-21 07:14:50', '2023-01-21 07:14:50'),
(30, 43, '110', NULL, NULL, 2, 1, '2023-01-21 07:14:54', '2023-01-21 07:14:54'),
(35, 1, '100', NULL, NULL, 2, 1, '2023-01-21 09:09:06', '2023-02-27 09:39:11'),
(36, 1, '101', NULL, NULL, 2, 1, '2023-01-21 09:09:12', '2023-02-27 09:39:09'),
(37, 1, '102', NULL, NULL, 2, 1, '2023-01-21 09:09:17', '2023-02-17 10:01:54'),
(38, 1, '103', NULL, NULL, 2, 1, '2023-01-21 09:09:21', '2023-02-16 08:45:20'),
(39, 1, '104', NULL, NULL, 2, 1, '2023-01-21 09:09:25', '2023-02-16 08:45:20'),
(40, 1, '105', NULL, NULL, 2, 1, '2023-01-21 09:09:40', '2023-02-16 08:45:20'),
(41, 1, '106', NULL, NULL, 2, 1, '2023-01-21 09:09:48', '2023-02-13 06:51:01'),
(42, 1, '107', NULL, NULL, 2, 1, '2023-01-21 09:09:56', '2023-01-21 09:09:56'),
(43, 1, '108', NULL, NULL, 2, 1, '2023-01-21 09:10:10', '2023-02-13 06:51:01'),
(44, 10, '100', NULL, NULL, 2, 1, '2023-01-21 09:11:12', '2023-02-11 04:21:46'),
(45, 10, '101', NULL, NULL, 2, 1, '2023-01-21 09:11:16', '2023-02-27 07:37:32'),
(46, 10, '102', NULL, NULL, 2, 1, '2023-01-21 09:11:20', '2023-02-11 04:21:46'),
(47, 10, '103', NULL, NULL, 2, 1, '2023-01-21 09:11:25', '2023-02-27 07:37:27'),
(48, 10, '104', NULL, NULL, 2, 1, '2023-01-21 09:11:28', '2023-01-21 09:11:28'),
(49, 10, '105', NULL, NULL, 2, 1, '2023-01-21 09:11:33', '2023-01-21 09:11:33'),
(50, 11, '100', NULL, NULL, 2, 1, '2023-01-21 09:12:32', '2023-02-27 07:37:32'),
(51, 11, '101', NULL, NULL, 2, 1, '2023-01-21 09:12:36', '2023-02-27 07:37:32'),
(52, 11, '102', NULL, NULL, 2, 1, '2023-01-21 09:12:39', '2023-02-17 11:17:19'),
(53, 11, '103', NULL, NULL, 2, 1, '2023-01-21 09:12:42', '2023-02-17 11:17:18'),
(54, 11, '104', NULL, NULL, 2, 1, '2023-01-21 09:12:47', '2023-02-27 07:37:27'),
(55, 11, '105', NULL, NULL, 2, 1, '2023-01-21 09:12:51', '2023-02-27 07:37:27'),
(56, 11, '106', NULL, NULL, 2, 1, '2023-01-21 09:12:56', '2023-01-21 09:12:56'),
(57, 12, '100', NULL, NULL, 2, 1, '2023-01-21 09:13:34', '2023-02-27 07:37:32'),
(58, 12, '101', NULL, NULL, 2, 1, '2023-01-21 09:13:37', '2023-02-27 07:37:32'),
(59, 12, '102', NULL, NULL, 2, 1, '2023-01-21 09:13:40', '2023-02-27 07:37:27'),
(60, 12, '103', NULL, NULL, 2, 1, '2023-01-21 09:13:43', '2023-02-27 07:37:27'),
(61, 12, '104', NULL, NULL, 2, 1, '2023-01-21 09:13:46', '2023-02-27 07:37:27'),
(62, 12, '105', NULL, NULL, 2, 1, '2023-01-21 09:13:49', '2023-02-27 07:37:27'),
(63, 12, '106', NULL, NULL, 2, 1, '2023-01-21 09:13:53', '2023-02-27 07:37:27'),
(64, 12, '107', NULL, NULL, 2, 1, '2023-01-21 09:13:58', '2023-02-27 07:37:27'),
(65, 13, '100', NULL, NULL, 2, 1, '2023-01-21 09:14:37', '2023-02-27 07:37:32'),
(66, 13, '101', NULL, NULL, 2, 1, '2023-01-21 09:14:41', '2023-02-27 07:37:32'),
(67, 13, '102', NULL, NULL, 2, 1, '2023-01-21 09:14:46', '2023-02-17 11:25:04'),
(68, 13, '103', NULL, NULL, 2, 1, '2023-01-21 09:14:50', '2023-01-21 09:14:50'),
(69, 13, '104', NULL, NULL, 2, 1, '2023-01-21 09:14:53', '2023-01-21 09:14:53'),
(70, 13, '105', NULL, NULL, 2, 1, '2023-01-21 09:14:57', '2023-01-21 09:14:57'),
(71, 13, '106', NULL, NULL, 2, 1, '2023-01-21 09:15:01', '2023-01-21 09:15:01'),
(72, 14, '100', NULL, NULL, 2, 1, '2023-01-21 09:15:38', '2023-01-21 09:15:38'),
(73, 14, '101', NULL, NULL, 2, 1, '2023-01-21 09:15:41', '2023-01-21 09:15:41'),
(74, 14, '102', NULL, NULL, 2, 1, '2023-01-21 09:15:44', '2023-01-21 09:15:44'),
(75, 14, '103', NULL, NULL, 2, 1, '2023-01-21 09:15:47', '2023-01-21 09:15:47'),
(76, 14, '104', NULL, NULL, 2, 1, '2023-01-21 09:15:50', '2023-01-21 09:15:50'),
(77, 14, '105', NULL, NULL, 2, 1, '2023-01-21 09:15:54', '2023-01-21 09:15:54'),
(78, 14, '106', NULL, NULL, 2, 1, '2023-01-21 09:15:58', '2023-01-21 09:15:58'),
(79, 14, '107', NULL, NULL, 2, 1, '2023-01-21 09:16:04', '2023-01-21 09:16:04'),
(80, 15, '100', NULL, NULL, 2, 1, '2023-01-21 09:16:47', '2023-02-27 07:37:32'),
(81, 15, '101', NULL, NULL, 2, 1, '2023-01-21 09:16:50', '2023-02-27 07:37:32'),
(82, 15, '102', NULL, NULL, 2, 1, '2023-01-21 09:16:53', '2023-02-27 07:37:27'),
(83, 15, '103', NULL, NULL, 2, 1, '2023-01-21 09:16:57', '2023-02-27 07:37:27'),
(84, 15, '104', NULL, NULL, 2, 1, '2023-01-21 09:17:00', '2023-02-27 07:37:27'),
(85, 15, '105', NULL, NULL, 2, 1, '2023-01-21 09:17:04', '2023-01-21 09:17:04'),
(86, 15, '106', NULL, NULL, 2, 1, '2023-01-21 09:17:08', '2023-02-11 01:17:05'),
(87, 16, '100', NULL, NULL, 2, 1, '2023-01-21 09:17:43', '2023-02-27 07:37:32'),
(88, 16, '101', NULL, NULL, 2, 1, '2023-01-21 09:17:45', '2023-02-27 07:37:32'),
(89, 16, '102', NULL, NULL, 2, 1, '2023-01-21 09:17:48', '2023-02-27 07:37:32'),
(90, 16, '103', NULL, NULL, 2, 1, '2023-01-21 09:17:52', '2023-02-27 07:37:32'),
(91, 16, '104', NULL, NULL, 2, 1, '2023-01-21 09:17:56', '2023-02-27 07:37:32'),
(92, 16, '105', NULL, NULL, 2, 1, '2023-01-21 09:18:00', '2023-01-21 09:18:00'),
(93, 16, '106', NULL, NULL, 2, 1, '2023-01-21 09:18:03', '2023-01-21 09:18:03'),
(94, 16, '107', NULL, NULL, 2, 1, '2023-01-21 09:18:06', '2023-01-21 09:18:06'),
(95, 17, '100', NULL, NULL, 2, 1, '2023-01-21 09:19:54', '2023-02-27 07:37:32'),
(96, 17, '101', NULL, NULL, 2, 1, '2023-01-21 09:19:57', '2023-02-27 07:37:32'),
(97, 17, '102', NULL, NULL, 2, 1, '2023-01-21 09:20:00', '2023-02-27 07:37:27'),
(98, 17, '103', NULL, NULL, 2, 1, '2023-01-21 09:20:03', '2023-02-27 07:37:27'),
(99, 17, '104', NULL, NULL, 2, 1, '2023-01-21 09:20:06', '2023-02-27 07:37:27'),
(100, 17, '105', NULL, NULL, 2, 1, '2023-01-21 09:20:09', '2023-02-27 07:37:27'),
(101, 17, '106', NULL, NULL, 2, 1, '2023-01-21 09:20:13', '2023-01-21 09:20:13'),
(102, 17, '107', NULL, NULL, 2, 1, '2023-01-21 09:20:18', '2023-01-21 09:20:18'),
(103, 17, '108', NULL, NULL, 2, 1, '2023-01-21 09:20:23', '2023-01-21 09:20:23'),
(104, 18, '100', NULL, NULL, 2, 1, '2023-01-21 09:21:02', '2023-02-27 07:37:32'),
(105, 18, '101', NULL, NULL, 2, 1, '2023-01-21 09:21:06', '2023-02-27 07:37:32'),
(106, 18, '102', NULL, NULL, 2, 1, '2023-01-21 09:21:09', '2023-01-21 09:21:09'),
(107, 18, '103', NULL, NULL, 2, 1, '2023-01-21 09:21:12', '2023-01-21 09:21:12'),
(108, 18, '104', NULL, NULL, 2, 1, '2023-01-21 09:21:15', '2023-01-21 09:21:15'),
(109, 18, '105', NULL, NULL, 2, 1, '2023-01-21 09:21:19', '2023-01-21 09:21:19'),
(110, 18, '106', NULL, NULL, 2, 1, '2023-01-21 09:21:24', '2023-01-21 09:21:24'),
(111, 19, '100', NULL, NULL, 2, 1, '2023-01-21 09:22:07', '2023-02-27 07:37:32'),
(112, 19, '101', NULL, NULL, 2, 1, '2023-01-21 09:22:09', '2023-02-27 07:37:27'),
(113, 19, '102', NULL, NULL, 2, 1, '2023-01-21 09:22:13', '2023-02-27 07:37:32'),
(114, 19, '103', NULL, NULL, 2, 1, '2023-01-21 09:22:16', '2023-02-16 08:06:55'),
(115, 19, '104', NULL, NULL, 2, 1, '2023-01-21 09:22:20', '2023-02-16 08:06:55'),
(116, 19, '105', NULL, NULL, 2, 1, '2023-01-21 09:22:24', '2023-01-21 09:22:24'),
(117, 20, '100', NULL, NULL, 2, 1, '2023-01-21 09:23:04', '2023-02-06 08:47:14'),
(118, 20, '101', NULL, NULL, 2, 1, '2023-01-21 09:23:07', '2023-02-06 08:47:14'),
(119, 20, '102', NULL, NULL, 2, 1, '2023-01-21 09:23:10', '2023-02-06 08:47:14'),
(120, 20, '103', NULL, NULL, 2, 1, '2023-01-21 09:23:13', '2023-02-06 08:44:44'),
(121, 20, '104', NULL, NULL, 2, 1, '2023-01-21 09:23:17', '2023-02-06 08:47:14'),
(122, 20, '105', NULL, NULL, 2, 1, '2023-01-21 09:23:21', '2023-02-06 08:46:01'),
(123, 21, '100', NULL, NULL, 2, 1, '2023-01-21 09:23:59', '2023-02-27 07:37:27'),
(124, 21, '101', NULL, NULL, 2, 1, '2023-01-21 09:24:02', '2023-02-27 07:37:27'),
(125, 21, '102', NULL, NULL, 2, 1, '2023-01-21 09:24:05', '2023-02-27 07:37:27'),
(126, 21, '103', NULL, NULL, 2, 1, '2023-01-21 09:24:09', '2023-02-27 07:37:27'),
(127, 21, '104', NULL, NULL, 2, 1, '2023-01-21 09:24:22', '2023-02-27 07:37:27'),
(128, 21, '105', NULL, NULL, 2, 1, '2023-01-21 09:24:26', '2023-02-27 07:37:27'),
(129, 22, '100', NULL, NULL, 2, 1, '2023-01-21 09:25:19', '2023-02-15 10:22:01'),
(130, 22, '101', NULL, NULL, 2, 1, '2023-01-21 09:25:21', '2023-02-09 11:01:51'),
(131, 22, '102', NULL, NULL, 2, 1, '2023-01-21 09:25:28', '2023-02-15 10:22:01'),
(132, 22, '103', NULL, NULL, 2, 1, '2023-01-21 09:25:34', '2023-02-09 11:01:51'),
(133, 22, '104', NULL, NULL, 2, 1, '2023-01-21 09:25:41', '2023-02-06 11:23:45'),
(134, 22, '105', NULL, NULL, 2, 1, '2023-01-21 09:25:46', '2023-02-06 11:23:45'),
(135, 23, '100', NULL, NULL, 2, 1, '2023-01-21 09:26:49', '2023-02-27 07:37:27'),
(136, 23, '101', NULL, NULL, 2, 1, '2023-01-21 09:26:52', '2023-02-27 07:37:27'),
(137, 23, '102', NULL, NULL, 2, 1, '2023-01-21 09:26:56', '2023-01-21 09:26:56'),
(138, 23, '103', NULL, NULL, 2, 1, '2023-01-21 09:26:59', '2023-01-21 09:26:59'),
(139, 23, '104', NULL, NULL, 2, 1, '2023-01-21 09:27:03', '2023-01-21 09:27:03'),
(140, 23, '105', NULL, NULL, 2, 1, '2023-01-21 09:27:06', '2023-01-21 09:27:06'),
(141, 23, '106', NULL, NULL, 2, 1, '2023-01-21 09:27:10', '2023-01-21 09:27:10'),
(142, 24, '100', NULL, NULL, 2, 1, '2023-01-21 09:27:53', '2023-02-27 07:37:27'),
(143, 24, '101', NULL, NULL, 2, 1, '2023-01-21 09:27:56', '2023-02-27 07:37:27'),
(144, 24, '102', NULL, NULL, 2, 1, '2023-01-21 09:28:00', '2023-02-27 07:37:27'),
(145, 24, '103', NULL, NULL, 2, 1, '2023-01-21 09:28:03', '2023-02-08 09:45:51'),
(146, 24, '104', NULL, NULL, 2, 1, '2023-01-21 09:28:08', '2023-02-08 09:45:51'),
(147, 24, '105', NULL, NULL, 2, 1, '2023-01-21 09:28:11', '2023-02-08 09:45:51'),
(148, 25, '100', NULL, NULL, 2, 1, '2023-01-21 09:28:57', '2023-02-27 07:37:27'),
(149, 25, '101', NULL, NULL, 2, 1, '2023-01-21 09:29:00', '2023-02-27 07:37:27'),
(150, 25, '102', NULL, NULL, 2, 1, '2023-01-21 09:29:02', '2023-01-21 09:29:02'),
(151, 25, '103', NULL, NULL, 2, 1, '2023-01-21 09:29:06', '2023-01-21 09:29:06'),
(152, 25, '104', NULL, NULL, 2, 1, '2023-01-21 09:29:09', '2023-01-21 09:29:09'),
(153, 25, '105', NULL, NULL, 2, 1, '2023-01-21 09:29:13', '2023-01-21 09:29:13'),
(154, 43, '111', NULL, NULL, 2, 1, '2023-01-27 08:27:48', '2023-01-27 08:27:48'),
(161, 21, '106', NULL, NULL, 2, 1, '2023-02-16 09:07:50', '2023-02-16 09:07:50'),
(162, 21, '107', NULL, NULL, 2, 1, '2023-02-16 09:07:58', '2023-02-16 09:07:58'),
(163, 21, '108', NULL, NULL, 2, 1, '2023-02-16 09:08:03', '2023-02-16 09:08:03'),
(164, 12, '108', NULL, NULL, 2, 1, '2023-02-16 09:08:44', '2023-02-16 09:08:44'),
(165, 12, '109', NULL, NULL, 2, 1, '2023-02-16 09:08:48', '2023-02-16 09:08:48'),
(166, 12, '110', NULL, NULL, 2, 1, '2023-02-16 09:08:52', '2023-02-16 09:08:52'),
(167, 12, '111', NULL, NULL, 2, 1, '2023-02-16 09:08:58', '2023-02-16 09:08:58'),
(168, 12, '112', NULL, NULL, 2, 1, '2023-02-16 09:09:04', '2023-02-16 09:09:04'),
(169, 15, '107', NULL, NULL, 2, 1, '2023-02-16 09:09:31', '2023-02-16 09:09:31'),
(170, 15, '108', NULL, NULL, 2, 1, '2023-02-16 09:09:35', '2023-02-16 09:09:35'),
(171, 16, '108', NULL, NULL, 2, 1, '2023-02-16 09:09:58', '2023-02-16 09:09:58'),
(172, 16, '109', NULL, NULL, 2, 1, '2023-02-16 09:10:01', '2023-02-16 09:10:01'),
(173, 16, '110', NULL, NULL, 2, 1, '2023-02-16 09:10:05', '2023-02-16 09:10:05'),
(174, 17, '109', NULL, NULL, 2, 1, '2023-02-16 09:10:26', '2023-02-16 09:10:26'),
(175, 17, '110', NULL, NULL, 2, 1, '2023-02-16 09:10:30', '2023-02-16 09:10:30'),
(176, 17, '111', NULL, NULL, 2, 1, '2023-02-16 09:10:33', '2023-02-16 09:10:33'),
(177, 11, '107', NULL, NULL, 2, 1, '2023-02-16 09:11:13', '2023-02-16 09:11:13'),
(178, 11, '108', NULL, NULL, 2, 1, '2023-02-16 09:11:17', '2023-02-16 09:11:17'),
(179, 11, '109', NULL, NULL, 2, 1, '2023-02-16 09:11:22', '2023-02-16 09:11:22'),
(180, 11, '110', NULL, NULL, 2, 1, '2023-02-16 09:11:26', '2023-02-16 09:11:26');

-- --------------------------------------------------------

--
-- Table structure for table `section_contents`
--

CREATE TABLE `section_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `section_type` varchar(191) DEFAULT NULL,
  `page_type` varchar(191) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `is_publish` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `section_contents`
--

INSERT INTO `section_contents` (`id`, `section_type`, `page_type`, `url`, `image`, `title`, `desc`, `is_publish`, `created_at`, `updated_at`) VALUES
(4, 'about_us', 'home_1', '#', '10012023044246-Rectangle 1-5.jpg', 'Welcome to Relaxly Modern Hotel Rooms and Services', '{\"description\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\",\"total_rooms\":\"500\",\"total_customers\":\"1200\",\"total_amenities\":\"120\",\"total_packages\":\"320\",\"button_text\":\"More About Us\",\"target\":\"_self\",\"image2\":\"10012023044326-Rectangle 3.jpg\",\"image3\":\"10012023044300-Rectangle 2-1.jpg\",\"year\":null,\"tp_name\":null,\"position\":null}', 1, '2023-01-05 12:20:12', '2023-02-27 09:41:12'),
(17, 'our_services', NULL, NULL, '06012023175149-service_6.png', 'Gym', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, '2023-01-06 11:51:57', '2023-01-06 12:07:14'),
(18, 'our_services', NULL, NULL, '06012023175228-service_5.png', 'Breakfast', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, '2023-01-06 11:52:34', '2023-01-06 12:07:14'),
(19, 'our_services', NULL, NULL, '06012023175255-service_4.png', 'Swimming Pool', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, '2023-01-06 11:52:58', '2023-01-06 12:07:14'),
(20, 'our_services', NULL, NULL, '06012023175320-service_3.png', 'Quality Rooms', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, '2023-01-06 11:53:24', '2023-01-06 12:07:14'),
(21, 'our_services', NULL, NULL, '06012023175344-service_2.png', 'Parking Space', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, '2023-01-06 11:53:48', '2023-01-06 12:07:14'),
(22, 'our_services', NULL, NULL, '06012023175409-service_1.png', 'Pick Up & Drop', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, '2023-01-06 11:54:13', '2023-01-06 12:07:14'),
(26, 'testimonial', NULL, NULL, '07012023065428-100x100-1-client.jpg', 'Michael', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 1, '2023-01-07 00:57:01', '2023-01-07 01:16:20'),
(27, 'testimonial', NULL, NULL, '07012023065729-100x100-3-client.jpg', 'James', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 1, '2023-01-07 00:57:33', '2023-01-07 01:16:20'),
(28, 'testimonial', NULL, NULL, '07012023065821-100x100-4-client.jpg', 'Robert', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 1, '2023-01-07 00:58:24', '2023-01-07 01:16:20'),
(29, 'testimonial', NULL, NULL, '07012023065955-100x100-2-client.jpg', 'Nancy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 1, '2023-01-07 00:59:59', '2023-01-07 01:16:20'),
(30, 'testimonial', NULL, NULL, '07012023070147-100x100-5-client.jpg', 'John', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 1, '2023-01-07 01:01:51', '2023-01-07 01:16:20'),
(31, 'testimonial', NULL, NULL, '07012023070816-100x100-6-client.jpg', 'Sarah', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 1, '2023-01-07 01:08:22', '2023-02-27 09:41:28');

-- --------------------------------------------------------

--
-- Table structure for table `section_manages`
--

CREATE TABLE `section_manages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `manage_type` varchar(191) DEFAULT NULL,
  `section` varchar(191) DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `is_publish` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `section_manages`
--

INSERT INTO `section_manages` (`id`, `manage_type`, `section`, `title`, `url`, `image`, `desc`, `is_publish`, `created_at`, `updated_at`) VALUES
(374, 'home_1', 'slider_hero', 'Hero Section', NULL, NULL, NULL, 1, '2023-01-13 06:44:13', '2023-01-13 07:16:43'),
(376, 'home_1', 'about_us', 'About Us', NULL, NULL, NULL, 1, '2023-01-13 06:52:00', '2023-01-13 07:16:43'),
(377, 'home_1', 'offer_ads', 'Choose your offer', NULL, NULL, 'One More Offer For You!', 1, '2023-01-13 06:54:13', '2023-01-13 07:16:43'),
(378, 'home_1', 'featured_rooms', 'Featured Rooms', NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 1, '2023-01-13 06:58:30', '2023-01-13 07:16:43'),
(379, 'home_1', 'our_services', 'Our Hotel Services', NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 1, '2023-01-13 07:04:30', '2023-01-13 07:16:43'),
(380, 'home_1', 'testimonial', 'What Our Clients Says', NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 1, '2023-01-13 07:10:15', '2023-01-13 07:16:43'),
(381, 'home_1', 'our_blogs', 'Latest Blog & News', NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 1, '2023-01-13 07:13:30', '2023-01-13 07:16:43');

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `identifier` varchar(191) NOT NULL,
  `instance` varchar(191) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slider_type` varchar(191) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `is_publish` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `slider_type`, `url`, `image`, `title`, `desc`, `is_publish`, `created_at`, `updated_at`) VALUES
(29, 'home_1', '#', '04012023155330-home1_bg.jpg', 'Enjoy Your Beautiful Moment', '{\"sub_title\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\",\"button_text\":\"Booking Now\",\"target\":null}', 1, '2023-01-04 09:54:14', '2023-02-27 09:41:04');

-- --------------------------------------------------------

--
-- Table structure for table `social_medias`
--

CREATE TABLE `social_medias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `social_icon` varchar(120) DEFAULT NULL,
  `target` varchar(100) DEFAULT NULL,
  `is_publish` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_medias`
--

INSERT INTO `social_medias` (`id`, `title`, `url`, `social_icon`, `target`, `is_publish`, `created_at`, `updated_at`) VALUES
(2, 'Facebook', 'https://www.facebook.com/', 'bi bi-facebook', '_blank', 1, '2021-07-12 09:24:54', '2021-07-12 09:49:25'),
(3, 'Twitter', 'https://twitter.com/', 'bi bi-twitter', '_blank', 1, '2021-07-12 09:37:32', '2021-07-12 09:49:25'),
(4, 'Instagram', 'https://www.instagram.com/', 'bi bi-instagram', '_blank', 1, '2021-09-07 10:40:20', '2022-07-22 06:44:00'),
(5, 'Youtube', 'https://www.youtube.com/', 'bi bi-youtube', '_blank', 1, '2021-11-06 10:54:01', '2022-07-22 06:43:53');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email_address` varchar(191) DEFAULT NULL,
  `first_name` varchar(191) DEFAULT NULL,
  `last_name` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `phone_number` varchar(191) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email_address`, `first_name`, `last_name`, `address`, `phone_number`, `status`, `created_at`, `updated_at`) VALUES
(2, 'selimrana@gmail.com', 'Selim Rana', 'Selim Rana', NULL, NULL, 'subscribed', '2021-12-09 12:09:30', '2021-12-09 12:09:30'),
(3, 'aieub_ali@gmail.com', 'AIEUB ALI', 'AIEUB ALI', NULL, NULL, 'subscribed', '2022-01-18 07:51:47', '2022-01-18 07:51:47'),
(4, 'salmaakter@gmail.com', 'SALMA AKTER', 'SALMA AKTER', NULL, NULL, 'subscribed', '2022-01-18 07:56:58', '2022-01-18 07:56:58'),
(5, 'fuadhasan@email.com', 'Fuad Hasan', 'Fuad Hasan', NULL, NULL, 'subscribed', '2022-01-20 09:09:41', '2022-01-20 09:09:41');

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `percentage` double(12,3) NOT NULL,
  `is_publish` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `title`, `percentage`, `is_publish`, `created_at`, `updated_at`) VALUES
(38, 'VAT', 5.000, 1, '2021-09-14 11:19:52', '2023-02-27 09:40:35');

-- --------------------------------------------------------

--
-- Table structure for table `timezones`
--

CREATE TABLE `timezones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `timezone` varchar(100) DEFAULT NULL,
  `timezone_name` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `timezones`
--

INSERT INTO `timezones` (`id`, `timezone`, `timezone_name`, `created_at`, `updated_at`) VALUES
(1, 'Pacific/Midway', 'Midway Island, Samoa', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(2, 'Pacific/Pago_Pago', 'Pago Pago', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(3, 'Pacific/Honolulu', 'Hawaii', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(4, 'America/Anchorage', 'Alaska', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(5, 'America/Vancouver', 'Vancouver', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(6, 'America/Los_Angeles', 'Pacific Time (US and Canada)', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(7, 'America/Tijuana', 'Tijuana', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(8, 'America/Edmonton', 'Edmonton', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(9, 'America/Denver', 'Mountain Time (US and Canada)', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(10, 'America/Phoenix', 'Arizona', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(11, 'America/Mazatlan', 'Mazatlan', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(12, 'America/Winnipeg', 'Winnipeg', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(13, 'America/Regina', 'Saskatchewan', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(14, 'America/Chicago', 'Central Time (US and Canada)', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(15, 'America/Mexico_City', 'Mexico City', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(16, 'America/Guatemala', 'Guatemala', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(17, 'America/El_Salvador', 'El Salvador', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(18, 'America/Managua', 'Managua', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(19, 'America/Costa_Rica', 'Costa Rica', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(20, 'America/Montreal', 'Montreal', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(21, 'America/New_York', 'Eastern Time (US and Canada)', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(22, 'America/Indianapolis', 'Indiana (East)', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(23, 'America/Panama', 'Panama', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(24, 'America/Bogota', 'Bogota', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(25, 'America/Lima', 'Lima', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(26, 'America/Halifax', 'Halifax', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(27, 'America/Puerto_Rico', 'Puerto Rico', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(28, 'America/Caracas', 'Caracas', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(29, 'America/Santiago', 'Santiago', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(30, 'America/St_Johns', 'Newfoundland and Labrador', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(31, 'America/Montevideo', 'Montevideo', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(32, 'America/Araguaina', 'Brasilia', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(33, 'America/Argentina/Buenos_Aires', 'Buenos Aires, Georgetown', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(34, 'America/Godthab', 'Greenland', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(35, 'America/Sao_Paulo', 'Sao Paulo', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(36, 'Atlantic/Azores', 'Azores', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(37, 'Canada/Atlantic', 'Atlantic Time (Canada)', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(38, 'Atlantic/Cape_Verde', 'Cape Verde Islands', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(39, 'UTC', 'Universal Time UTC', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(40, 'Etc/Greenwich', 'Greenwich Mean Time', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(41, 'Europe/Belgrade', 'Belgrade, Bratislava, Ljubljana', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(42, 'CET', 'Sarajevo, Skopje, Zagreb', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(43, 'Atlantic/Reykjavik', 'Reykjavik', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(44, 'Europe/Dublin', 'Dublin', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(45, 'Europe/London', 'London', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(46, 'Europe/Lisbon', 'Lisbon', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(47, 'Africa/Casablanca', 'Casablanca', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(48, 'Africa/Nouakchott', 'Nouakchott', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(49, 'Europe/Oslo', 'Oslo', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(50, 'Europe/Copenhagen', 'Copenhagen', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(51, 'Europe/Brussels', 'Brussels', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(52, 'Europe/Berlin', 'Amsterdam, Berlin, Rome, Stockholm, Vienna', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(53, 'Europe/Helsinki', 'Helsinki', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(54, 'Europe/Amsterdam', 'Amsterdam', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(55, 'Europe/Rome', 'Rome', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(56, 'Europe/Stockholm', 'Stockholm', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(57, 'Europe/Vienna', 'Vienna', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(58, 'Europe/Luxembourg', 'Luxembourg', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(59, 'Europe/Paris', 'Paris', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(60, 'Europe/Zurich', 'Zurich', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(61, 'Europe/Madrid', 'Madrid', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(62, 'Africa/Bangui', 'West Central Africa', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(63, 'Africa/Algiers', 'Algiers', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(64, 'Africa/Tunis', 'Tunis', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(65, 'Africa/Harare', 'Harare, Pretoria', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(66, 'Africa/Nairobi', 'Nairobi', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(67, 'Europe/Warsaw', 'Warsaw', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(68, 'Europe/Prague', 'Prague Bratislava', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(69, 'Europe/Budapest', 'Budapest', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(70, 'Europe/Sofia', 'Sofia', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(71, 'Europe/Istanbul', 'Istanbul', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(72, 'Europe/Athens', 'Athens', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(73, 'Europe/Bucharest', 'Bucharest', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(74, 'Asia/Nicosia', 'Nicosia', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(75, 'Asia/Beirut', 'Beirut', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(76, 'Asia/Damascus', 'Damascus', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(77, 'Asia/Jerusalem', 'Jerusalem', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(78, 'Asia/Amman', 'Amman', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(79, 'Africa/Tripoli', 'Tripoli', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(80, 'Africa/Cairo', 'Cairo', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(81, 'Africa/Johannesburg', 'Johannesburg', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(82, 'Europe/Moscow', 'Moscow', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(83, 'Asia/Baghdad', 'Baghdad', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(84, 'Asia/Kuwait', 'Kuwait', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(85, 'Asia/Riyadh', 'Riyadh', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(86, 'Asia/Bahrain', 'Bahrain', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(87, 'Asia/Qatar', 'Qatar', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(88, 'Asia/Aden', 'Aden', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(89, 'Asia/Tehran', 'Tehran', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(90, 'Africa/Khartoum', 'Khartoum', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(91, 'Africa/Djibouti', 'Djibouti', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(92, 'Africa/Mogadishu', 'Mogadishu', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(93, 'Asia/Dubai', 'Dubai', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(94, 'Asia/Muscat', 'Muscat', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(95, 'Asia/Baku', 'Baku, Tbilisi, Yerevan', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(96, 'Asia/Kabul', 'Kabul', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(97, 'Asia/Yekaterinburg', 'Yekaterinburg', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(98, 'Asia/Tashkent', 'Islamabad, Karachi, Tashkent', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(99, 'Asia/Calcutta', 'India', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(100, 'Asia/Kathmandu', 'Kathmandu', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(101, 'Asia/Novosibirsk', 'Novosibirsk', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(102, 'Asia/Almaty', 'Almaty', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(103, 'Asia/Dacca', 'Dacca', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(104, 'Asia/Krasnoyarsk', 'Krasnoyarsk', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(105, 'Asia/Dhaka', 'Astana, Dhaka', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(106, 'Asia/Bangkok', 'Bangkok', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(107, 'Asia/Saigon', 'Vietnam', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(108, 'Asia/Jakarta', 'Jakarta', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(109, 'Asia/Irkutsk', 'Irkutsk, Ulaanbaatar', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(110, 'Asia/Shanghai', 'Beijing, Shanghai', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(111, 'Asia/Hong_Kong', 'Hong Kong', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(112, 'Asia/Taipei', 'Taipei', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(113, 'Asia/Kuala_Lumpur', 'Kuala Lumpur', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(114, 'Asia/Singapore', 'Singapore', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(115, 'Australia/Perth', 'Perth', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(116, 'Asia/Yakutsk', 'Yakutsk', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(117, 'Asia/Seoul', 'Seoul', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(118, 'Asia/Tokyo', 'Osaka, Sapporo, Tokyo', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(119, 'Australia/Darwin', 'Darwin', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(120, 'Australia/Adelaide', 'Adelaide', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(121, 'Asia/Vladivostok', 'Vladivostok', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(122, 'Pacific/Port_Moresby', 'Guam, Port Moresby', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(123, 'Australia/Brisbane', 'Brisbane', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(124, 'Australia/Sydney', 'Canberra, Melbourne, Sydney', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(125, 'Australia/Hobart', 'Hobart', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(126, 'Asia/Magadan', 'Magadan', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(127, 'SST', 'Solomon Islands', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(128, 'Pacific/Noumea', 'New Caledonia', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(129, 'Asia/Kamchatka', 'Kamchatka', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(130, 'Pacific/Fiji', 'Fiji Islands, Marshall Islands', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(131, 'Pacific/Auckland', 'Auckland, Wellington', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(132, 'Asia/Kolkata', 'Mumbai, Kolkata, New Delhi', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(133, 'Europe/Kiev', 'Kiev', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(134, 'America/Tegucigalpa', 'Tegucigalpa', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(135, 'Pacific/Apia', 'Independent State of Samoa', '2021-03-31 00:00:00', '2021-03-31 01:02:14');

-- --------------------------------------------------------

--
-- Table structure for table `tp_options`
--

CREATE TABLE `tp_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL,
  `option_value` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tp_options`
--

INSERT INTO `tp_options` (`id`, `option_name`, `option_value`, `created_at`, `updated_at`) VALUES
(3, 'general_settings', '{\"company\":\"Relaxly\",\"email\":\"relaxly@gmail.com\",\"phone\":\"01215123456789\",\"site_name\":\"Relaxly\",\"site_title\":\"Unlimited Hotel Booking Platform\",\"address\":\"House # 2\\/C\\/3\\/A, Road # 1, Shyamoli, Dhaka, Bangladesh\",\"timezone\":\"Asia\\/Dhaka\"}', '2021-03-31 15:59:45', '2023-02-27 09:44:09'),
(5, 'google_recaptcha', '{\"sitekey\":\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\",\"secretkey\":\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\",\"is_recaptcha\":0}', '2021-03-31 17:56:01', '2023-02-18 01:48:34'),
(35, 'mail_settings', '{\"ismail\":0,\"from_name\":\"Relaxly\",\"from_mail\":\"admin@companyname.com\",\"to_name\":\"Theme Posh\",\"to_mail\":\"admin@gmail.com\",\"mailer\":\"smtp\",\"smtp_host\":\"mail.companyname.com\",\"smtp_port\":\"465\",\"smtp_security\":\"ssl\",\"smtp_username\":\"admin@companyname.com\",\"smtp_password\":\"xxxxxxxxxxxxxxxx\"}', '2021-06-03 19:33:17', '2023-02-27 09:44:17'),
(69, 'custom_css', NULL, '2021-06-06 23:18:38', '2021-11-26 04:38:46'),
(70, 'custom_js', NULL, '2021-06-06 23:46:24', '2021-11-26 04:37:19'),
(74, 'theme_option_seo', '{\"og_title\":\"Lorem Ipsum un testo segnaposto utilizzato nel settore della tipografia e della stampa.\",\"og_image\":\"16022023173552-600x315-home-1.jpg\",\"og_description\":\"Lorem Ipsum un testo segnaposto utilizzato nel settore della tipografia e della stampa.\",\"og_keywords\":\"Lorem Ipsum un testo segnaposto utilizzato nel settore della tipografia e della stampa.\",\"is_publish\":\"1\"}', '2021-07-11 10:38:12', '2023-02-16 11:35:57'),
(77, 'theme_logo', '{\"favicon\":\"27122022155818-favicon.ico\",\"front_logo\":\"27122022160114-400x400-logo.png\",\"back_logo\":\"27122022160114-400x400-logo.png\"}', '2021-07-12 11:15:36', '2023-02-27 09:42:10'),
(78, 'facebook', '{\"fb_app_id\":null,\"is_publish\":\"2\"}', '2021-08-05 11:00:35', '2021-11-26 03:59:37'),
(79, 'twitter', '{\"twitter_id\":null,\"is_publish\":\"2\"}', '2021-08-05 11:10:01', '2021-11-26 03:57:18'),
(80, 'whatsapp', '{\"whatsapp_id\":\"0123456789\",\"whatsapp_text\":null,\"position\":\"left\",\"is_publish\":\"1\"}', '2021-08-05 11:25:20', '2023-02-27 09:42:53'),
(87, 'theme_option_header', '{\"address\":\"12 Poor Street, New York.\",\"phone\":\"+1 964 565 87652\",\"is_publish\":\"1\"}', '2021-08-29 08:45:26', '2022-06-24 00:38:20'),
(91, 'theme_option_footer', '{\"about_logo\":\"27122022160114-logo.png\",\"about_desc\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"is_publish_about\":\"1\",\"address\":\"56 King Street, New York\",\"phone\":\"+1 964 123 456789\",\"email\":\"support@organis.com\",\"is_publish_contact\":\"1\",\"copyright\":\"Copyright &copy; 2023. All rights reserved by <a href=\\\"#\\\">Relaxly<\\/a>\",\"is_publish_copyright\":\"1\",\"payment_gateway_icon\":\"27122022160256-payment.png\",\"is_publish_payment\":\"1\"}', '2021-08-29 11:15:13', '2023-02-27 07:40:03'),
(93, 'home-video', '{\"title\":\"Our Hotel Preview Video\",\"short_desc\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\",\"url\":\"#\",\"video_url\":\"https:\\/\\/www.youtube.com\\/watch?v=AlfXYaiAv68\",\"button_text\":\"Book Now\",\"target\":null,\"image\":\"07012023043902-preview.jpg\",\"is_publish\":\"1\"}', '2021-09-01 11:39:35', '2023-02-27 09:41:18'),
(94, 'facebook-pixel', '{\"fb_pixel_id\":null,\"is_publish\":\"2\"}', '2021-09-17 11:52:01', '2021-11-26 03:59:21'),
(95, 'google_analytics', '{\"tracking_id\":null,\"is_publish\":\"2\"}', '2021-09-18 08:11:08', '2023-02-27 09:42:47'),
(96, 'google_tag_manager', '{\"google_tag_manager_id\":null,\"is_publish\":\"2\"}', '2021-09-18 08:30:10', '2021-11-26 04:35:16'),
(98, 'cash_on_delivery', '{\"description\":\"Pay via cash on\",\"isenable\":1}', '2021-10-07 10:42:26', '2023-01-29 09:18:05'),
(99, 'bank_transfer', '{\"description\":\"Please send money to our bank account: A\\/C- 12365402547895487454.\",\"isenable\":1}', '2021-10-07 10:53:34', '2022-05-20 12:05:08'),
(100, 'stripe', '{\"stripe_key\":\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\",\"stripe_secret\":\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\",\"currency\":\"usd\",\"isenable\":0}', '2021-10-07 12:14:49', '2023-02-18 07:53:06'),
(101, 'mailchimp', '{\"mailchimp_api_key\":\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\",\"audience_id\":\"0123645455455\",\"is_mailchimp\":0}', '2021-11-01 09:27:17', '2023-02-18 01:51:48'),
(102, 'subscribe_popup', '{\"subscribe_title\":\"Subscribe our newsletter\",\"subscribe_popup_desc\":\"Subscribe to the mailing list to receive updates on special offers, new arrivals and our promotions.\",\"bg_image_popup\":\"04012023155330-home1_bg.jpg\",\"background_image\":\"27122022160439-footer-top.jpg\",\"is_subscribe_popup\":1,\"is_subscribe_footer\":1}', '2021-11-01 10:00:58', '2023-02-18 06:05:23'),
(111, 'seller_settings', '{\"fee_withdrawal\":\"5\",\"product_auto_publish\":1,\"seller_auto_active\":1}', '2022-01-07 10:45:07', '2022-12-09 07:42:52'),
(112, 'language_switcher', '{\"is_language_switcher\":\"1\"}', '2022-01-22 10:22:15', '2023-02-18 05:59:42'),
(114, 'paypal', '{\"paypal_client_id\":\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\",\"paypal_secret\":\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\",\"paypal_currency\":\"USD\",\"ismode_paypal\":1,\"isenable_paypal\":0}', '2022-05-19 23:25:59', '2023-02-18 07:53:17'),
(116, 'razorpay', '{\"razorpay_key_id\":\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\",\"razorpay_key_secret\":\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\",\"razorpay_currency\":\"USD\",\"ismode_razorpay\":1,\"isenable_razorpay\":0}', '2022-05-20 00:28:45', '2023-02-18 07:53:32'),
(117, 'mollie', '{\"mollie_api_key\":\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\",\"mollie_currency\":\"USD\",\"ismode_mollie\":1,\"isenable_mollie\":0}', '2022-05-20 07:50:45', '2023-02-18 07:53:43'),
(131, 'page_variation', '{\"home_variation\":\"home_1\"}', '2022-08-11 23:58:42', '2023-02-18 05:59:12'),
(133, 'google_map', '{\"googlemap_apikey\":\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\",\"is_googlemap\":0}', '2022-08-27 10:17:37', '2023-02-18 02:05:28'),
(147, 'theme_color', '{\"theme_color\":\"#fd5056\",\"light_color\":\"#f9353d\",\"blue_color\":\"#2d1268\",\"gray_color\":\"#8d949d\",\"dark_gray_color\":\"#595959\",\"gray400_color\":\"#e7e7e7\",\"gray500_color\":\"#fbfbfb\",\"black_color\":\"#1f3347\",\"white_color\":\"#ffffff\",\"backend_theme_color\":\"#2d1268\"}', '2022-09-01 23:55:08', '2023-02-18 05:59:50'),
(160, 'cookie_consent', '{\"title\":\"Cookie Consent\",\"message\":\"This website uses cookies or similar technologies, to enhance your browsing experience and provide personalized recommendations. By continuing to use our website, you agree to our\",\"button_text\":\"Accept\",\"learn_more_url\":\"https:\\/\\/relaxly.themeposh.net\\/page\\/47\\/cookie-policy\",\"learn_more_text\":\"Privacy Policy\",\"style\":\"minimal\",\"position\":\"left\",\"is_publish\":\"1\"}', '2022-10-15 09:49:20', '2023-02-27 09:43:01'),
(169, 'currency', '{\"currency_name\":\"USD\",\"currency_icon\":\"$\",\"currency_position\":\"left\",\"thousands_separator\":\"comma\",\"decimal_separator\":\"point\",\"decimal_digit\":\"2\"}', '2021-08-21 04:22:13', '2023-02-27 09:40:43'),
(173, 'subheader_bg_images', '{\"blog_bg\":\"05012023064531-breadcrumb-bg-11.jpg\",\"contact_bg\":\"05012023064527-breadcrumb-bg-10.jpg\",\"register_bg\":\"05012023064524-breadcrumb-bg-9.jpg\",\"login_bg\":\"05012023064520-breadcrumb-bg-8.jpg\",\"reset_password_bg\":\"05012023064516-breadcrumb-bg-7.jpg\",\"dashboard_bg\":\"05012023064507-breadcrumb-bg-5.jpg\",\"profile_bg\":\"05012023064503-breadcrumb-bg-4.jpg\",\"change_password_bg\":\"05012023064459-breadcrumb-bg-3.jpg\",\"booking_bg\":\"05012023064453-breadcrumb-bg-2.jpg\"}', '2023-01-14 09:43:04', '2023-02-18 05:59:25'),
(190, 'vipc', '{\"bactive\":0,\"resetkey\":0}', '2023-03-05 10:14:50', '2023-03-05 10:14:50');

-- --------------------------------------------------------

--
-- Table structure for table `tp_status`
--

CREATE TABLE `tp_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tp_status`
--

INSERT INTO `tp_status` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Publish', '2021-05-01 04:46:48', '2021-05-01 04:46:50'),
(2, 'Draft', '2021-05-01 04:47:05', '2021-05-01 04:47:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `shop_name` varchar(200) DEFAULT NULL,
  `shop_url` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `state` varchar(200) DEFAULT NULL,
  `zip_code` varchar(200) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `bactive` varchar(200) DEFAULT NULL,
  `bkey` varchar(200) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `shop_name`, `shop_url`, `phone`, `address`, `city`, `state`, `zip_code`, `country_id`, `photo`, `bactive`, `bkey`, `status_id`, `role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@themeposh.xyz', NULL, '$2y$10$ZYRpWfsE3YxDhgszerpr3.GGJXtOzn73ezzGL//K/xnktkCT06MNa', NULL, NULL, '0123456789', '56 King Street, New York', NULL, NULL, NULL, NULL, '27122022160205-400x400-photo.png', 'YWRtaW4xMjM0NTY=', NULL, 1, 1, 'cIUAkfFScFkDvjlThuQuE9EGZA89bZfber4wYUGJZzWPDGiCJ1kxL3Wq8vA0', '2021-03-26 13:22:14', '2023-01-14 06:10:04'),
(75, 'Receptionist', 'receptionist@themeposh.xyz', NULL, '$2y$10$7GhUTGybj33dRyCeTflxLOozs0.3QqRS718KIoFcQ77cjSdpYRmEO', NULL, NULL, '0123456789', '58 King Street, New York', NULL, NULL, NULL, NULL, '10012023044315-900x700-Rectangle 2-4.jpg', 'cmVjZXB0aW9uaXN0MTIzNDU2', NULL, 1, 3, NULL, '2023-02-09 21:41:55', '2023-02-27 09:44:30');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(150) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2021-04-01 21:57:16', '2021-04-01 21:57:19'),
(2, 'Customer', '2021-04-01 21:57:29', '2021-04-01 21:57:31'),
(3, 'Receptionist', '2021-12-07 16:36:42', '2021-12-07 16:36:42');

-- --------------------------------------------------------

--
-- Table structure for table `user_status`
--

CREATE TABLE `user_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(150) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_status`
--

INSERT INTO `user_status` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Active', '2021-04-01 21:57:57', '2021-04-01 21:57:59'),
(2, 'Inactive', '2021-04-01 21:58:10', '2021-04-01 21:58:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bedtypes`
--
ALTER TABLE `bedtypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blogs_slug_unique` (`slug`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_categories_slug_unique` (`slug`);

--
-- Indexes for table `booking_manages`
--
ALTER TABLE `booking_manages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_status`
--
ALTER TABLE `booking_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `complements`
--
ALTER TABLE `complements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
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
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languages_language_code_unique` (`language_code`);

--
-- Indexes for table `lankeyvalues`
--
ALTER TABLE `lankeyvalues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_options`
--
ALTER TABLE `media_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_settings`
--
ALTER TABLE `media_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_settings_media_type_unique` (`media_type`);

--
-- Indexes for table `mega_menus`
--
ALTER TABLE `mega_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_menu_name_unique` (`menu_name`);

--
-- Indexes for table `menu_childs`
--
ALTER TABLE `menu_childs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_parents`
--
ALTER TABLE `menu_parents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offer_ads`
--
ALTER TABLE `offer_ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_status`
--
ALTER TABLE `payment_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rooms_slug_unique` (`slug`);

--
-- Indexes for table `room_assigns`
--
ALTER TABLE `room_assigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_images`
--
ALTER TABLE `room_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_manages`
--
ALTER TABLE `room_manages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section_contents`
--
ALTER TABLE `section_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section_manages`
--
ALTER TABLE `section_manages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_medias`
--
ALTER TABLE `social_medias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscribers_email_address_unique` (`email_address`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timezones`
--
ALTER TABLE `timezones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_options`
--
ALTER TABLE `tp_options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tp_options_option_name_unique` (`option_name`);

--
-- Indexes for table `tp_status`
--
ALTER TABLE `tp_status`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tp_status_status_unique` (`status`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_status`
--
ALTER TABLE `user_status`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `bedtypes`
--
ALTER TABLE `bedtypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `booking_manages`
--
ALTER TABLE `booking_manages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `booking_status`
--
ALTER TABLE `booking_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `complements`
--
ALTER TABLE `complements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lankeyvalues`
--
ALTER TABLE `lankeyvalues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9979;

--
-- AUTO_INCREMENT for table `media_options`
--
ALTER TABLE `media_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=895;

--
-- AUTO_INCREMENT for table `media_settings`
--
ALTER TABLE `media_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mega_menus`
--
ALTER TABLE `mega_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1306;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `menu_childs`
--
ALTER TABLE `menu_childs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=566;

--
-- AUTO_INCREMENT for table `menu_parents`
--
ALTER TABLE `menu_parents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1044;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `offer_ads`
--
ALTER TABLE `offer_ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payment_status`
--
ALTER TABLE `payment_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `room_assigns`
--
ALTER TABLE `room_assigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=270;

--
-- AUTO_INCREMENT for table `room_images`
--
ALTER TABLE `room_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=277;

--
-- AUTO_INCREMENT for table `room_manages`
--
ALTER TABLE `room_manages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `section_contents`
--
ALTER TABLE `section_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `section_manages`
--
ALTER TABLE `section_manages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=382;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `social_medias`
--
ALTER TABLE `social_medias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `timezones`
--
ALTER TABLE `timezones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `tp_options`
--
ALTER TABLE `tp_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT for table `tp_status`
--
ALTER TABLE `tp_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_status`
--
ALTER TABLE `user_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
