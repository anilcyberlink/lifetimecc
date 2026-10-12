-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 12, 2026 at 06:40 AM
-- Server version: 8.0.46
-- PHP Version: 8.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lifetimecommunit_life`
--

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_adminmenu_user`
--

CREATE TABLE `cl_adminmenu_user` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `adminmenu_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cl_adminmenu_user`
--

INSERT INTO `cl_adminmenu_user` (`id`, `user_id`, `adminmenu_id`) VALUES
(1, 3, 1),
(11, 3, 2),
(14, 3, 12),
(15, 4, 1),
(16, 4, 2),
(19, 3, 3),
(29, 4, 12);

-- --------------------------------------------------------

--
-- Table structure for table `cl_admin_menu`
--

CREATE TABLE `cl_admin_menu` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cl_admin_menu`
--

INSERT INTO `cl_admin_menu` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Manage Banners', '2020-08-16 08:51:13', '2020-08-16 08:51:13'),
(2, 'Manage Posts', '2020-08-16 08:52:23', '2020-08-16 08:52:23'),
(3, 'Manage Portfolio', '2020-08-16 08:52:31', '2020-08-16 08:52:31'),
(9, 'Manage Users', '2020-08-16 08:53:49', '2020-08-16 08:53:49'),
(12, 'Settings', '2020-08-16 08:54:22', '2020-08-16 08:54:22'),
(13, 'Photo Gallery', '2022-05-22 11:45:30', '2022-05-22 11:45:30'),
(14, 'Video Gallery', '2022-05-22 11:45:37', '2022-05-22 11:45:37');

-- --------------------------------------------------------

--
-- Table structure for table `cl_associated_portfolios`
--

CREATE TABLE `cl_associated_portfolios` (
  `id` int UNSIGNED NOT NULL,
  `portfolio_id` int UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brief` longtext COLLATE utf8mb4_unicode_ci,
  `thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `uri` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_associated_posts`
--

CREATE TABLE `cl_associated_posts` (
  `id` int UNSIGNED NOT NULL,
  `post_id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brief` text COLLATE utf8mb4_unicode_ci,
  `content` varchar(1091) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordering` int DEFAULT NULL,
  `uri` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linked_in_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cl_associated_posts`
--

INSERT INTO `cl_associated_posts` (`id`, `post_id`, `title`, `category`, `sub_title`, `phone`, `email`, `brief`, `content`, `thumbnail`, `ordering`, `uri`, `facebook_link`, `twitter_link`, `linked_in_link`, `page_key`, `created_at`, `updated_at`) VALUES
(117, 210, 'मणी प्रसाद भुर्तेल', NULL, 'महासचिव', NULL, NULL, NULL, NULL, 'b89e49a4-d067-4ec2-b300-7e3be6b46f9a-43GrK8LFK4wEprcBjsZ7J6wIYT6keRdcJpfipISv.jpg', 7, NULL, NULL, NULL, NULL, '1653827945779403330', '2022-05-29 16:39:05', '2022-06-09 16:26:49'),
(118, 223, 'खडक बहादुर के सी', NULL, 'सल्लाहकार', NULL, NULL, NULL, NULL, 'whatsapp-image-2022-05-25-at-2-g3h5QDE2xxYRavBMPJTkDrkfuP29vPCC7SqX3pUi.jpeg', 8, '-', NULL, NULL, NULL, '1653828095603885227', '2022-05-29 16:41:35', '2022-06-09 14:37:39'),
(119, 223, 'शेष राज रेग्मी', NULL, 'आर्थिक सल्लाहकार', NULL, NULL, NULL, NULL, 'whatsapp-image-2022-05-25-at-6-IEc6egos2f5QtLs0Tv3MnlhILK5V4Ir08C6wOHDd.jpeg', 23, '-', NULL, NULL, NULL, '1653828149643494857', '2022-05-29 16:42:29', '2022-06-09 14:38:35'),
(120, 223, 'वालेन्द्र गुरुङ्ग', NULL, 'सल्लाहकार', NULL, NULL, NULL, NULL, 'whatsapp-image-2022-06-05-at-4-5pTqwodL9bejcK6UqFTnzBLwJWceKAWZsP5WdgN2.jpeg', 5, '-', NULL, NULL, NULL, '165382817878982215', '2022-05-29 16:42:58', '2022-06-09 16:44:21'),
(121, 224, 'पुरन गिरी', NULL, 'प्रमुख संरक्षक', NULL, NULL, NULL, NULL, 'whatsapp-image-2022-05-27-at-2-k6BuOyg7W7rjCgBATs9mbKi1r9OnOG8XuZ4Xbmxh.jpeg', 1, '-', NULL, NULL, NULL, '16538282183953391', '2022-05-29 16:43:38', '2022-06-09 14:24:04'),
(122, 224, 'कुल आचार्य', NULL, 'संरक्षक', NULL, NULL, NULL, NULL, 'whatsapp-image-2022-05-27-at-2-Fpo3Y7mhDrZeWY8e7gUkl9mCuqpJKXoUsbGdzFgw.jpeg', 2, '-', NULL, NULL, NULL, '1653828275138348795', '2022-05-29 16:44:35', '2022-06-09 14:24:07'),
(123, 224, 'अर्जुन कुमार श्रेष्ठ', NULL, 'संरक्षक', NULL, NULL, NULL, NULL, 'whatsapp-image-2022-05-27-at-2-NHkRANYwB23SBEZwdhjU8lKWxLzbc45KWPhPwVt7.jpeg', 3, '-', NULL, NULL, NULL, '165382829216855506', '2022-05-29 16:44:52', '2022-06-09 14:24:11'),
(124, 224, 'सुरेन्द्र भुसाल', NULL, 'संरक्षक', NULL, NULL, NULL, NULL, 'whatsapp-image-2022-05-27-at-2-rmnZISDRehyz9LftS0oRO8ZiJb39b4my9cidtcFy.jpeg', 5, '-', NULL, NULL, NULL, '16538283153020002', '2022-05-29 16:45:15', '2022-06-09 14:24:18'),
(125, 224, 'सन्तोष ( शुभास ) जोशी', NULL, 'संरक्षक / दीर्घकालीन योजनाविद प्रमुख', NULL, NULL, NULL, NULL, 'whatsapp-image-2022-05-27-at-2-izD2yMHiK7tWWYsA4s4JT9KL3TXKlVKbZ4PW2PpW.jpeg', 8, '-', NULL, NULL, NULL, '1653828340878828704', '2022-05-29 16:45:40', '2022-06-09 14:24:29'),
(126, 210, 'प्रकाश पौडेल', NULL, 'सचिव', NULL, NULL, NULL, NULL, 'whatsapp-image-2022-05-27-at-2-5Hof3yka7BQhT3xfyTfyCQIpMOTfIHdBKvnn59eI.jpeg', 8, '-', NULL, NULL, NULL, '1653828367965067214', '2022-05-29 16:46:07', '2022-06-09 16:27:06'),
(127, 210, 'रुद्र मणि लम्साल', NULL, 'सह कोषाध्यक्ष', NULL, NULL, NULL, NULL, 'rudra-lamsal-foto-FMxvc6rM3utdixvkJlsjpmiOPCjorkSIzueamtV9.jpg', 13, '-', NULL, NULL, NULL, '1653828409579181092', '2022-05-29 16:46:49', '2022-07-14 18:58:55'),
(128, 210, 'गंगा शर्मा गौडेल', NULL, 'सदस्य', NULL, NULL, NULL, NULL, 'whatsapp-image-2022-05-27-at-6-T4LVivONexXOMp3vLCj0oC09MS9nNANx3VngO8YN.jpeg', 32, '-', NULL, NULL, NULL, '1653828439645028731', '2022-05-29 16:47:19', '2022-06-10 16:16:39'),
(129, 223, 'कृष्ण घतान सुनार', NULL, 'सल्लाहकार', NULL, NULL, NULL, NULL, 'whatsapp-image-2022-05-27-at-6-8AwJ7vcuMRWfNHzgnSbQEuHSfuFJ9QOeDPvm4aoC.jpeg', 12, '-', NULL, NULL, NULL, '1653828469117775104', '2022-05-29 16:47:49', '2022-06-09 14:37:54'),
(130, 224, 'महेश श्रेष्ठ ( जापान )', NULL, 'संरक्षक', NULL, NULL, NULL, NULL, 'whatsapp-image-2022-05-27-at-7-xKqLTnlHCtC7CybBkHdZWJ5PzxtCrRkfKFaC4CKP.jpeg', 4, '-', NULL, NULL, NULL, '1653828501975623584', '2022-05-29 16:48:21', '2022-06-09 14:24:15'),
(131, 224, 'गोविन्द सुवेदी ( बेल्जियम)', NULL, 'संरक्षक', NULL, NULL, NULL, NULL, 'whatsapp-image-2022-05-27-at-7-BlmmlDubXdYrXW0ulOZIXE6cqScx8tVO5Zmb24wJ.jpeg', 7, '-', NULL, NULL, NULL, '165382854167268644', '2022-05-29 16:49:01', '2022-06-09 14:24:26'),
(132, 224, 'मोहन शर्मा ( युएई)', NULL, 'संरक्षक', NULL, NULL, NULL, NULL, 'whatsapp-image-2022-05-27-at-7-EvpVySwNdCtZ0rakkmfVzp5Q856CYOzVlSOSvd6v.jpeg', 6, '-', NULL, NULL, NULL, '1653828565583399090', '2022-05-29 16:49:25', '2022-06-09 14:24:22'),
(133, 224, 'रवि जङ्ग लामिछाने ( यु के )', NULL, 'संरक्षक', NULL, NULL, NULL, NULL, 'whatsapp-image-2022-05-27-at-7-4c7QVqkzsj49iqSg78COOaSOQKfvpeYrWh09cKm2.jpeg', 9, '-', NULL, NULL, NULL, '1653828582221287624', '2022-05-29 16:49:42', '2022-06-09 14:24:33'),
(134, 223, 'डा. जगन्नाथ शर्मा पौडेल ( युके)', NULL, 'प्रमुख सल्लाहकार', NULL, NULL, NULL, NULL, 'whatsapp-image-2022-05-27-at-8-0lUKd8U6DNfj1ZaXIIBRaXMyX9eyspsmLAbp1ldw.jpeg', 1, '-', NULL, NULL, NULL, '1653828724268296721', '2022-05-29 16:52:04', '2022-06-09 14:36:41'),
(136, 223, 'उदय राज गौतम  (डेनमार्क )', NULL, 'सल्लाहकार', NULL, NULL, NULL, NULL, 'whatsapp-image-2022-05-27-at-9-eBjitkhYY3C97Rp0sAMYjxWqj1i42kqbISpT3KZ9.jpeg', 4, '-', NULL, NULL, NULL, '1653828776996839516', '2022-05-29 16:52:56', '2022-06-09 14:36:51'),
(137, 223, 'गोपी चन्द्र भुसाल  ( यूयेई)', NULL, 'सल्लाहकार', NULL, NULL, NULL, NULL, 'whatsapp-image-2022-05-27-at-9-HA9tjxEAts3vtKbeJacuu4QULQPYdOpkQxLJkPXA.jpeg', 2, '-', NULL, NULL, NULL, '1653828800864254418', '2022-05-29 16:53:20', '2022-06-09 14:36:44'),
(138, 210, 'पर्शुराम पौडेल  ( यूएइ)', NULL, 'प्र. उपाध्यक्ष', NULL, NULL, NULL, NULL, 'whatsapp-image-2022-05-27-at-9-PWPB9LWeG8pXtFbayLUDkEKXnlPxMMEVIO6I0I44.jpeg', 2, '-', NULL, NULL, NULL, '1653828824253023701', '2022-05-29 16:53:44', '2022-06-15 15:33:02'),
(139, 210, 'दधी आचार्य  ( यु के )', NULL, 'उपाध्यक्ष', NULL, NULL, NULL, NULL, 'dadhi-foto-DBzPzyOkPnMoP4TKsdWliBFJMdR5Hy5QYcTSY6sU.jpg', 4, '-', NULL, NULL, NULL, '1653828851875864628', '2022-05-29 16:54:11', '2022-07-13 20:36:07'),
(140, 210, 'ढाका कुमारी भट्टराई  ( यु के )', NULL, 'सचिव', NULL, NULL, NULL, NULL, 'whatsapp-image-2022-05-27-at-9-OjyTrI68q3CWGeol6WxlnccV2psR5CeuArynPtdl.jpeg', 11, '-', NULL, NULL, NULL, '1653828876474666640', '2022-05-29 16:54:36', '2022-06-09 16:27:17'),
(141, 210, 'सविन्द्र श्रेष्ठ  ( कतार )', NULL, 'मध्यपूर्व संयोजक', NULL, NULL, NULL, NULL, 'whatsapp-image-2022-05-27-at-9-MVZuKm93F5qX8TvgIdMXdpat0UkVoDpC6OvO1uJY.jpeg', 14, '-', NULL, NULL, NULL, '1653828903925640009', '2022-05-29 16:55:03', '2022-06-09 16:27:26'),
(142, 210, 'सन्तोष पौडेल', NULL, 'संयोजक  युरोप', NULL, NULL, NULL, NULL, 'santos-pic-new-JUKGzxKb2DJb3OlfXpzQTEBNkOSXpuBJ9S8BzhQy.jpg', 15, '-', NULL, NULL, NULL, '1653828950881016397', '2022-05-29 16:55:50', '2022-06-20 17:27:22'),
(143, 210, 'मुना भुसाल', NULL, 'नेपाल प्रतिनिधि संयोजक', NULL, NULL, NULL, NULL, 'whatsapp-image-2022-05-27-at-9-xn9ygKf2MHJAhkoSdOTZUxiJZ2P8cQ8LwQZe98Qt.jpeg', 16, '-', NULL, NULL, NULL, '1653828981472410947', '2022-05-29 16:56:21', '2022-06-09 16:27:34'),
(145, 223, 'दीपिका भुसाल  ( इजरायल )', NULL, 'सल्लाहकार', NULL, NULL, NULL, NULL, 'whatsapp-image-2022-05-27-at-10-Onapsb3PZFPLfUImIDBBNsAPdLLdRlDoX1ky6YaT.jpeg', 21, '-', NULL, NULL, NULL, '1653829051931863816', '2022-05-29 16:57:31', '2022-06-09 14:38:27'),
(146, 223, 'सागर सुवेदी  ( अस्ट्रिया )', NULL, 'सल्लाहकार', NULL, NULL, NULL, NULL, 'whatsapp-image-2022-05-27-at-10-HGqbnLwiSsJjj0S0efwIWQizLwb5dEg4p8v2k71K.jpeg', 20, '-', NULL, NULL, NULL, '1653829073854817398', '2022-05-29 16:57:53', '2022-06-09 14:38:23'),
(147, 223, 'नर बहादुर रोका  ( नेदरल्यान्ड', NULL, 'सल्लाहकार', NULL, NULL, NULL, NULL, 'whatsapp-image-2022-05-27-at-10-MTF7sudHUEBCMKNgqJDOrwh8xXgCX6DFX0WqEpC2.jpeg', 11, '-', NULL, NULL, NULL, '1653829102527552203', '2022-05-29 16:58:22', '2022-06-09 14:37:51'),
(148, 223, 'अर्जुन श्रेष्ठ ( स्वीडेन )', NULL, 'सल्लाहकार', NULL, NULL, NULL, NULL, 'whatsapp-image-2022-05-27-at-10-KCL1weueQKESV1L0GnzDq7uD6HWDTVFsffxbm7g5.jpeg', 3, '-', NULL, NULL, NULL, '1653829128472778387', '2022-05-29 16:58:48', '2022-06-09 14:36:48'),
(149, 223, 'नारायण गुरुङ्ग  ( लकजमवर्ग  )', NULL, 'सल्लाहकार', NULL, NULL, NULL, NULL, 'whatsapp-image-2022-05-27-at-10-nw1sHmCGJVl0AR6tSdK7ce2SH974lq9qIPVuc7dE.jpeg', 7, '-', NULL, NULL, NULL, '1653829171406190173', '2022-05-29 16:59:31', '2022-06-09 14:37:26'),
(150, 223, 'मनहरी शर्मा ( पौडेल )', NULL, 'सल्लाहकार', NULL, NULL, NULL, NULL, 'whatsapp-image-2022-05-27-at-11-27wWh4siZhdfeDMo98Q2vPIUM76mhXCMQKe1KUO4.jpeg', 6, NULL, NULL, NULL, NULL, '1653829204800131558', '2022-05-29 17:00:04', '2022-06-10 16:20:58'),
(151, 223, 'ओम गुरुङ', NULL, 'सल्लाहकार ( जापान )', NULL, NULL, NULL, NULL, 'whatsapp-image-2022-05-27-at-11-qCxfTfkLvCF3gfJ5k3CZ8bDB687recwFCz1xCdaf.jpeg', 9, '-', NULL, NULL, NULL, '1653829229356479537', '2022-05-29 17:00:29', '2022-06-09 14:37:43'),
(152, 223, 'देव गुरुङ्ग ( अस्ट्रेलिया )', NULL, 'सल्लाहकार', NULL, NULL, NULL, NULL, 'whatsapp-image-2022-05-28-at-1-d1MUrTvNje8Y9NgWPKgnOw27l97xoIqGC39VbSVN.jpeg', 18, '-', NULL, NULL, NULL, '1653829256160348387', '2022-05-29 17:00:56', '2022-06-09 14:38:16'),
(153, 210, 'दीपक न्यौपाने  ( बेल्जियम )', NULL, 'सदस्य', NULL, NULL, NULL, NULL, 'whatsapp-image-2022-05-28-at-1-2H0fSe8HVgN59fiwe1zBQHQOzyETWeuS39cPtkR8.jpeg', 23, '-', NULL, NULL, NULL, '1653829293335517902', '2022-05-29 17:01:33', '2022-06-10 16:14:02'),
(154, 210, 'चन्द्र तिवारी ( अस्ट्रेलिया )', NULL, 'सदस्य', NULL, NULL, NULL, NULL, 'whatsapp-image-2022-05-28-at-1-lH3NrnhHrlVno3BT8szL8EHdGRgQ0Kx5cslhzlZP.jpeg', 25, '-', NULL, NULL, NULL, '1653829323805876790', '2022-05-29 17:02:03', '2022-06-10 16:15:15'),
(155, 210, 'नेत्र आले ( यु के )', NULL, 'पदेन् सदस्य', NULL, NULL, NULL, NULL, 'whatsapp-image-2022-05-28-at-1-oaELsXPSfrGYn2rJ4re5AGl9eK5cP4pWphHsAhed.jpeg', 36, '-', NULL, NULL, NULL, '1653829358265590500', '2022-05-29 17:02:38', '2022-06-10 16:16:58'),
(156, 210, 'नन्द गुरुङ्ग  ( दुर्गा ) ( बेल्जियम )', NULL, 'पदेन  सदस्य', NULL, NULL, NULL, NULL, 'durga-gurung-ngAqTcWcllQeIU0j7tZAvzGGetiyLgW2AD7cF4RK.jpg', 41, '-', NULL, NULL, NULL, '1653829382557862506', '2022-05-29 17:03:02', '2022-07-05 16:10:12'),
(157, 210, 'अनन्त लामिछाने ( स्पेन )', NULL, 'पदेन सदस्य', NULL, NULL, NULL, NULL, 'whatsapp-image-2022-05-28-at-2-EWRQPpCRL1wFrE781gHrAhQnwy8nL4StckpckQKc.jpeg', 38, '-', NULL, NULL, NULL, '1653829406391568229', '2022-05-29 17:03:26', '2022-06-10 16:17:40'),
(158, 210, 'कमल लामिछाने ( युएइ)', NULL, 'पदेन सदस्य', NULL, NULL, NULL, NULL, 'whatsapp-image-2022-05-28-at-2-BBHWjOvBZQHypBX6YrrGpm4bPzrVFmYc6nMEHFmE.jpeg', 37, '-', NULL, NULL, NULL, '1653829433510727236', '2022-05-29 17:03:53', '2022-06-10 16:17:35'),
(159, 210, 'झलक विक्रम जी . सी . ( नेदरल्यान्ड )', NULL, 'पदेन सदस्य', NULL, NULL, NULL, NULL, 'whatsapp-image-2022-05-28-at-2-R4RUT9J4g4HjSLOmqiGDIQWGkVQj6zGxNZXFq0xQ.jpeg', 40, '-', NULL, NULL, NULL, '1653829464523587312', '2022-05-29 17:04:24', '2022-06-10 16:17:44'),
(160, 223, 'ओमर गुरुङ्ग ( स्पेन )', NULL, 'सल्लाहकार', NULL, NULL, NULL, NULL, 'omer-gurung-2yyNmKoWnbgHsp07ko08HBGyAX8JfxsbgEEur2K2.jpg', 13, '-', NULL, NULL, NULL, '1653829496656825258', '2022-05-29 17:04:56', '2022-06-10 19:19:55'),
(161, 223, 'दिल कुमार श्रेष्ठ ( कतार )', NULL, 'सल्लाहकार', NULL, NULL, NULL, NULL, 'whatsapp-image-2022-05-28-at-4-SzlhmM66SyfLsovAIDtXajIpiZ3oGNzVWO03K9jy.jpeg', 15, '-', NULL, NULL, NULL, '165382951810128239', '2022-05-29 17:05:18', '2022-06-09 14:38:05'),
(162, 210, 'मुक्ति श्रेष्ठ ( डेनमार्क )', NULL, 'सदस्य', NULL, NULL, NULL, NULL, 'whatsapp-image-2022-05-29-at-5-c7ciPxl326aM2O1IhmDX1KOR13SBKY7GxPhiHnC7.jpeg', 26, '-', NULL, NULL, NULL, '1653829615830990098', '2022-05-29 17:06:55', '2022-06-10 16:15:19'),
(163, 210, 'रामकृष्ण रेग्मी ( क्यानडा )', NULL, 'सदस्य', NULL, NULL, NULL, NULL, 'whatsapp-image-2022-05-29-at-5-fD4O1rEyLd3qc4nIOkA2QCEBG87gpsEmxFUXXfAU.jpeg', 19, '-', NULL, NULL, NULL, '1653829667543275145', '2022-05-29 17:07:47', '2022-06-10 16:19:16'),
(164, 210, 'श्याम न्यौपाने ( कतार )', NULL, 'पदेन सदस्य', NULL, NULL, NULL, NULL, 'whatsapp-image-2022-05-29-at-5-WZ5to2EjxGsoIxGZTVJZKAg5LxeztrC1iUxTEHPw.jpeg', 42, '-', NULL, NULL, NULL, '1653829694600655951', '2022-05-29 17:08:14', '2022-06-10 16:17:52'),
(165, 223, 'सन्तोष थापा ( नेपाल )', NULL, 'प्रेस सल्लाहकार', NULL, NULL, NULL, NULL, 'whatsapp-image-2022-05-29-at-4-ZvAPC1e1u9eMgJUqC2ek8ImZLXWm6c8JhYtVVfco.jpeg', 24, NULL, NULL, NULL, NULL, '1653829778158162155', '2022-05-29 17:09:38', '2022-06-09 14:38:38'),
(166, 210, 'शेष राज तिमिल्सिना', NULL, 'उपाध्यक्ष', NULL, NULL, NULL, NULL, 'whatsapp-image-2022-05-29-at-5-dSDc9VCFAFKPtf2MrkIfaLtkkwIkTgJVD9ygyKGO.jpeg', 6, '-', NULL, NULL, NULL, '1653829814439972903', '2022-05-29 17:10:14', '2022-06-09 16:26:44'),
(167, 224, 'हित काजी गुरुङ  ( यु के )', NULL, 'काउन्सिल परिषद प्रमुख', NULL, NULL, NULL, NULL, 'whatsapp-image-2022-05-27-at-8-tFjR3tvMQSsjFmjdsFafKF4E4HvU46qafnTZIFkH.jpeg', 124, '-', NULL, NULL, NULL, '1654257240811915948', '2022-06-03 15:54:00', '2022-06-03 15:56:14'),
(168, 224, 'गोविन्द गौतम', NULL, 'दीर्घकालीन योजनाविद सदस्य', NULL, NULL, NULL, NULL, 'whatsapp-image-2022-05-29-at-8-K3yL6FZ3D4zeTEV9ddcachxGA8OXDPHJlZMOixPg.jpeg', 125, '-', NULL, NULL, NULL, '1654257594364364206', '2022-06-03 15:59:54', '2022-06-03 15:59:54'),
(169, 224, 'गंगा भुसाल', NULL, 'दीर्घकालीन योजनाविद सदस्य', NULL, NULL, NULL, NULL, 'whatsapp-image-2022-05-29-at-8-1i6ZRb0eouzJzVp9XRBxox6SVf3giSyCVOr3cL1q.jpeg', 126, '-', NULL, NULL, NULL, '1654257628199037032', '2022-06-03 16:00:28', '2022-06-03 16:00:28'),
(170, 223, 'नारायण सुवेदी', NULL, 'सल्लाहकार', NULL, NULL, NULL, NULL, '', 10, '-', NULL, NULL, NULL, '1654258016192060560', '2022-06-03 16:06:56', '2022-06-09 14:37:46'),
(171, 223, 'मीन बहादुर गुरुङ्ग', NULL, 'सल्लाहकार', NULL, NULL, NULL, NULL, '', 14, '-', NULL, NULL, NULL, '1654258093815676506', '2022-06-03 16:08:13', '2022-06-09 14:38:02'),
(172, 223, 'कृष्ण गुरुङ्ग', NULL, 'सल्लाहकार', NULL, NULL, NULL, NULL, '', 16, '-', NULL, NULL, NULL, '1654258136705944273', '2022-06-03 16:08:56', '2022-06-09 14:38:08'),
(173, 223, 'रुद्र गुरुङ्ग', NULL, 'सल्लाहकार', NULL, NULL, NULL, NULL, '', 17, '-', NULL, NULL, NULL, '1654258155984629646', '2022-06-03 16:09:15', '2022-06-09 14:38:12'),
(174, 223, 'हेम राज सापकोटा', NULL, 'सल्लाहकार', NULL, NULL, NULL, NULL, '', 19, '-', NULL, NULL, NULL, '1654258183480674765', '2022-06-03 16:09:43', '2022-06-09 14:38:19'),
(175, 223, 'केशव राज पूरी', NULL, 'कानूनी सल्लाहकार', NULL, NULL, NULL, NULL, '', 22, '-', NULL, NULL, NULL, '1654258262219847618', '2022-06-03 16:11:02', '2022-06-09 14:38:29'),
(176, 223, 'साजन परियार', NULL, 'प्रेस सल्लाहकार सदस्य', NULL, NULL, NULL, NULL, 'whatsapp-image-2022-06-09-at-11-4XvY5Cp1q9k3x48d9I0lO6pxVAL7sl8Kx35zqain.jpeg', 25, '-', NULL, NULL, NULL, '1654258390270493515', '2022-06-03 16:13:10', '2022-06-10 16:23:57'),
(177, 210, 'श्री झलक केसी	बेल्जियम', NULL, 'अध्यक्ष', NULL, NULL, NULL, NULL, 'whatsapp-image-2022-05-24-at-3-MErbOzEjDfaqFZuGm6jneoYHt9yjHOichZEBs3sT.jpeg', 1, '-', NULL, NULL, NULL, '1654258630463714438', '2022-06-03 16:17:10', '2022-06-17 14:28:22'),
(178, 210, 'गुण राज शर्मा', NULL, 'उपाध्यक्ष', NULL, NULL, NULL, NULL, 'gunraj-foto-D02Mj3tG6pzoiuAPebK7AYiUSFyWJmoRSHAI9hgC.jpg', 3, '-', NULL, NULL, NULL, '1654258788255828074', '2022-06-03 16:19:48', '2022-07-13 20:35:26'),
(179, 210, 'संगिता कार्की', NULL, 'उपाध्यक्ष', NULL, NULL, NULL, NULL, 'whatsapp-image-2022-05-29-at-9-p4dBPQFZEmPZUE76Ik3FF1YDyDYPsliumJPX3nSq.jpeg', 5, '-', NULL, NULL, NULL, '1654258847670872057', '2022-06-03 16:20:47', '2022-06-09 16:26:36'),
(180, 210, 'बाबु राम शर्मा', NULL, 'सचिव', NULL, NULL, NULL, NULL, 'whatsapp-image-2022-05-24-at-6-Ko8pAPhSfA1CL9oibbfJDohpzpD1wccF27YqiB13.jpeg', 9, '-', NULL, NULL, NULL, '1654259351159975777', '2022-06-03 16:29:11', '2022-06-09 16:27:10'),
(181, 210, 'दीपक कंडेल', NULL, 'सचिव', NULL, NULL, NULL, NULL, 'deepak-kandel-ZTtAoNFPX6h0YmGPdcUdGiV4VI04cVTmrnUUCi37.jpg', 10, '-', NULL, NULL, NULL, '1654259437608217006', '2022-06-03 16:30:37', '2022-07-13 20:45:39'),
(182, 210, 'किरण पुन', NULL, 'कोषाध्यक्ष', NULL, NULL, NULL, NULL, '', 12, '-', NULL, NULL, NULL, '1654259665323980400', '2022-06-03 16:34:25', '2022-06-09 16:27:20'),
(183, 210, 'कृष्ण तिवारी', NULL, 'अनुशासन समिति संयोजक तथा केन्द्रीय समिति सदस्य', NULL, NULL, NULL, NULL, 'whatsapp-image-2022-05-24-at-3-0UTq9u8pECi1jm19UUCH1UsfjhCYi1gu2yol7Imm.jpeg', 17, '-', NULL, NULL, NULL, '1654259818481767379', '2022-06-03 16:36:58', '2022-06-09 16:27:39'),
(184, 210, 'कुलराज गुरुङ्ग', NULL, 'सदस्य', NULL, NULL, NULL, NULL, '', 18, '-', NULL, NULL, NULL, '1654259891429777688', '2022-06-03 16:38:11', '2022-06-09 16:27:43'),
(185, 210, 'हेमन्त मल्ल', NULL, 'सदस्य', NULL, NULL, NULL, NULL, '', 20, '-', NULL, NULL, NULL, '1654259900691499617', '2022-06-03 16:38:20', '2022-06-09 16:27:52'),
(186, 210, 'रमेश शर्मा', NULL, 'सदस्य', NULL, NULL, NULL, NULL, '', 21, '-', NULL, NULL, NULL, '1654259908997350491', '2022-06-03 16:38:28', '2022-06-09 16:32:00'),
(187, 210, 'टीका राम भुसाल', NULL, 'सदस्य', NULL, NULL, NULL, NULL, 'whatsapp-image-2022-05-30-at-6-ITLwcHJKbG2SoGGq5zEdvWp9xTogVPnU0ZryHT4m.jpeg', 22, '-', NULL, NULL, NULL, '165425999928399560', '2022-06-03 16:39:59', '2022-06-09 16:32:05'),
(188, 210, 'विजय काफ्ले', NULL, 'सदस्य', NULL, NULL, NULL, NULL, 'bijay-kafle-foto-qIYrwD5Th6i2Tk2bXcTelRd0WlEek4KcbnLENz3z.jpg', 24, '-', NULL, NULL, NULL, '165426019584125639', '2022-06-03 16:43:15', '2022-07-14 19:24:23'),
(189, 210, 'नारायण  शर्मा', NULL, 'सदस्य', NULL, NULL, NULL, NULL, 'narayan-sharma-kXDjfHFgGAQc1zuP3cA5ME82nsCPsOi8spqJQho0.jpg', 27, '-', NULL, NULL, NULL, '1654260209376747708', '2022-06-03 16:43:29', '2022-06-17 20:49:59'),
(190, 210, 'हेम राज सुवेदी', NULL, 'सदस्य', NULL, NULL, NULL, NULL, 'hem-raj-subedi-foto-QUYbYfDMKQn3fN8I62M8TtOq5C5ZmiGxcGy9OGO9.jpg', 28, '-', NULL, NULL, NULL, '165426022057302433', '2022-06-03 16:43:40', '2022-06-10 20:23:22'),
(191, 210, 'शक्ति क्षेत्री', NULL, 'सदस्य', NULL, NULL, NULL, NULL, 'shakti-chhetri-foto-od6DClMJOm5eLGXtSQtPpdFzLu6hdQlKrvcABgDe.jpg', 29, '-', NULL, NULL, NULL, '1654260272768042518', '2022-06-03 16:44:32', '2022-07-14 18:52:05'),
(192, 210, 'हेम बहादुर गुरुङ्ग', NULL, 'सदस्य', NULL, NULL, NULL, NULL, '', 30, '-', NULL, NULL, NULL, '1654260284235966796', '2022-06-03 16:44:44', '2022-06-09 16:32:46'),
(193, 210, 'कमल विक्रम के सी', NULL, 'सदस्य', NULL, NULL, NULL, NULL, 'kamal-bikram-k-c-sJsXiJWpmgw1hcdvSSlnJBwyNMLjMr0SXAAOwcuK.jpg', 31, '-', NULL, NULL, NULL, '1654260296371762833', '2022-06-03 16:44:56', '2022-07-15 04:18:25'),
(194, 210, 'दिनेश राज रेग्मी', NULL, 'सदस्य', NULL, NULL, NULL, NULL, 'whatsapp-image-2022-05-29-at-10-iY6bgt1l78aCnNOxYNEpqVpN5LUdu99O5ayBG1l4.jpeg', 33, '-', NULL, NULL, NULL, '1654260433837766887', '2022-06-03 16:47:13', '2022-06-10 16:15:24'),
(195, 210, 'दुर्गा मिलन गुरुङ्ग', NULL, 'पदेन सदस्य', NULL, NULL, NULL, NULL, '', 34, '-', NULL, NULL, NULL, '1654260459954477077', '2022-06-03 16:47:39', '2022-06-10 16:20:01'),
(196, 210, 'धन प्रसाद गुरुङ्ग', NULL, 'पदेन सदस्य', NULL, NULL, NULL, NULL, '', 35, '-', NULL, NULL, NULL, '1654260470734402075', '2022-06-03 16:47:50', '2022-06-10 16:20:05'),
(197, 210, 'राम हरी शर्मा', NULL, 'पदेन सदस्य', NULL, NULL, NULL, NULL, '', 39, '-', NULL, NULL, NULL, '1654260479514967938', '2022-06-03 16:47:59', '2022-06-10 16:18:14'),
(198, 210, 'जनक सुवेदी', NULL, 'पदेन सदस्य', NULL, NULL, NULL, NULL, '', 43, '-', NULL, NULL, NULL, '165426049478636820', '2022-06-03 16:48:14', '2022-06-10 16:17:55'),
(203, 268, 'समृद्ध पर्वत निर्माण मा हाम्रो अभियान \"', NULL, NULL, NULL, NULL, NULL, NULL, '', 127, '-', NULL, NULL, NULL, '1657811638595464316', '2022-07-14 19:13:58', '2022-07-14 19:13:58');

-- --------------------------------------------------------

--
-- Table structure for table `cl_banner`
--

CREATE TABLE `cl_banner` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption` longtext COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `picture` text COLLATE utf8mb4_unicode_ci,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'Learn More',
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cl_banner`
--

INSERT INTO `cl_banner` (`id`, `title`, `caption`, `content`, `picture`, `video`, `link_title`, `link`, `status`, `created_at`, `updated_at`) VALUES
(20, 'WE SUPPORT', 'IN EVERY ASPECT FOR BETTER LIVING', NULL, 'r-GJUB9R3BfKnXvN8aGOaoXnm2NshhetJYojA3DtAT.jpg', NULL, NULL, NULL, '1', '2023-11-22 16:57:31', '2023-12-29 09:35:58'),
(21, 'More Then Care', 'Giving service at South West Sydney and Surrounding Areas?', NULL, 'designer-xQkfGIE46YSLnlwr81SlTz8AtqmoeoG4F3pXO6ab.png', NULL, NULL, NULL, '1', '2026-09-30 06:11:37', '2026-09-30 06:25:30');

-- --------------------------------------------------------

--
-- Table structure for table `cl_country`
--

CREATE TABLE `cl_country` (
  `id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_gallery_images`
--

CREATE TABLE `cl_gallery_images` (
  `id` int UNSIGNED NOT NULL,
  `category_id` int NOT NULL,
  `picture` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_gallery_image_categories`
--

CREATE TABLE `cl_gallery_image_categories` (
  `id` int UNSIGNED NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_gallery_videos`
--

CREATE TABLE `cl_gallery_videos` (
  `id` int UNSIGNED NOT NULL,
  `category_id` int NOT NULL,
  `video` text COLLATE utf8mb4_unicode_ci,
  `caption` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_gallery_video_categories`
--

CREATE TABLE `cl_gallery_video_categories` (
  `id` int UNSIGNED NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cl_gallery_video_categories`
--

INSERT INTO `cl_gallery_video_categories` (`id`, `category`, `video`, `caption`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Video Category1', 'Video Category1', 'Video Category1', '1', '2018-10-09 00:17:42', '2018-10-09 00:17:42');

-- --------------------------------------------------------

--
-- Table structure for table `cl_images`
--

CREATE TABLE `cl_images` (
  `id` int NOT NULL,
  `post_id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ordering` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cl_images`
--

INSERT INTO `cl_images` (`id`, `post_id`, `title`, `image`, `ordering`, `created_at`, `updated_at`) VALUES
(6, 369, NULL, '169158305931.jpg', NULL, '2023-08-09 06:25:59', '2023-08-09 06:25:59'),
(7, 369, NULL, '16915830665.jpg', NULL, '2023-08-09 06:26:06', '2023-08-09 06:26:06'),
(8, 369, NULL, '169158307239.jpg', NULL, '2023-08-09 06:26:12', '2023-08-09 06:26:12'),
(9, 369, NULL, '169158307937.jpg', NULL, '2023-08-09 06:26:19', '2023-08-09 06:26:19'),
(10, 362, NULL, '170047671621.jpg', NULL, '2023-11-20 04:53:36', '2023-11-20 04:53:36'),
(11, 362, NULL, '170047672843.jpg', NULL, '2023-11-20 04:53:48', '2023-11-20 04:53:48'),
(14, 362, NULL, '170303489247.jpg', NULL, '2023-12-20 06:14:52', '2023-12-20 06:14:52'),
(15, 362, NULL, '170303494521.jpg', NULL, '2023-12-20 06:15:45', '2023-12-20 06:15:45'),
(16, 362, NULL, '170303498939.jpg', NULL, '2023-12-20 06:16:29', '2023-12-20 06:16:29'),
(17, 362, NULL, '170303501921.jpg', NULL, '2023-12-20 06:16:59', '2023-12-20 06:16:59'),
(18, 362, NULL, '170303503211.jpg', NULL, '2023-12-20 06:17:12', '2023-12-20 06:17:12'),
(19, 362, NULL, '170303504819.jpg', NULL, '2023-12-20 06:17:28', '2023-12-20 06:17:28'),
(20, 362, NULL, '170303506737.jpg', NULL, '2023-12-20 06:17:47', '2023-12-20 06:17:47'),
(22, 362, NULL, '170303514622.jpg', NULL, '2023-12-20 06:19:06', '2023-12-20 06:19:06');

-- --------------------------------------------------------

--
-- Table structure for table `cl_log`
--

CREATE TABLE `cl_log` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int DEFAULT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_date` datetime DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_members`
--

CREATE TABLE `cl_members` (
  `id` int UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` int DEFAULT NULL,
  `role_id` int DEFAULT '2',
  `activation_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cl_members`
--

INSERT INTO `cl_members` (`id`, `first_name`, `last_name`, `email`, `password`, `phone`, `designation`, `department`, `role_id`, `activation_code`, `status`, `created_at`, `updated_at`) VALUES
(23, 'niraj', 'subedi', 'niraj.subedi7@gmail.com', '4f43e5973075cf2a4e485a7c3444396292295347', '9860801044', 'technical', 4, 2, NULL, '1', '2019-02-21 17:18:13', '2019-02-21 17:18:13');

-- --------------------------------------------------------

--
-- Table structure for table `cl_multiple_banner`
--

CREATE TABLE `cl_multiple_banner` (
  `id` int UNSIGNED NOT NULL,
  `banner_id` int DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` text COLLATE utf8mb4_unicode_ci,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_multiple_document`
--

CREATE TABLE `cl_multiple_document` (
  `id` int UNSIGNED NOT NULL,
  `post_id` int NOT NULL DEFAULT '0',
  `key_string` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cl_multiple_document`
--

INSERT INTO `cl_multiple_document` (`id`, `post_id`, `key_string`, `title`, `document`, `ordering`, `created_at`, `updated_at`) VALUES
(1, 215, '2tsCJTXClcU8vmysG2QxGWqKufR01xG3ax8STebL', 'संरकछन् र सल्लाहकार समिति नामावली (२०२१ - २०२३ )', 'll-l-62a1ecf83f131.pdf', 1, '2022-05-08 00:46:47', '2022-06-09 16:52:08'),
(2, 215, 'hly9y2d2w7nIT5FWL5HZze5462DgaH0pyfdHSdIM', 'अन्तरराष्ट्रिय पर्वत समाज ष्ट्र्धान २०७६', 'ips-bidhan-1-62a1ec36e2a66.pdf', 2, '2022-05-08 00:47:32', '2022-06-09 16:48:54'),
(4, 215, 'eLaCPbIrO9080QJ6Ybr38cexEZ7IJTVlBEiktOLx', 'IPS constitution 2017', 'international-parbat-samaj-bidhan-2-62a1ec910d76d.pdf', 3, '2022-05-23 15:36:36', '2022-06-09 16:50:25'),
(5, 215, 'n8QP2OSmPdWh6PacpitfpVBfXoIcCvMpRK9KWTtl', 'अन्तर्राष्ट्रिय पर्वत समाज - कार्य समितिको नामावली (२०१७ - २०१९)', 'whatsapp-image-2022-06-03-at-7-629a0b8b389ef.jpeg', 4, '2022-05-23 15:36:47', '2022-06-03 17:24:27'),
(6, 215, 'Z5htrCljtlSdpB7eC7kTUhHlJdHnSfs8gewcukpb', 'कार्य पर्तिबेदन', 'b-629a0a9314a2b.pdf', 5, '2022-06-03 17:20:19', '2022-06-03 17:20:19'),
(7, 215, 'Tj8bWJlyDWG7id7C1Wwx95YOm8uZx0Pv0UqMaLZR', 'घोषणा  पत्र', '-629a0aa38d19d.pdf', 6, '2022-06-03 17:20:35', '2022-06-03 17:20:35'),
(8, 215, 'ZoHYQUNuxYlrLk4Lcdc1oDUIatIFxNcUanOA1Mh7', 'IPS Health Camp', 'ips-health-camp-629a0b5e4f2b8.pdf', 7, '2022-06-03 17:23:42', '2022-06-03 17:23:42'),
(9, 215, 'Z5iiw0UgCIgJPoBFZwKwF3BOJVAJdbgIShLDJtGB', 'अन्तराष्ट्रिय पर्वत समाज केन्द्रिय कार्यसमिति को नामावली', 'a-l-62a1eb92b29e7.pdf', 8, '2022-06-09 16:46:10', '2022-06-09 16:46:10'),
(13, 215, 'UQwCiqYqlldeMomoFb9sBL6DjsW6iT9IKtaFksrv', 'new notice', 'international-parbat-samaj-bidhan-2017-62a9b42788e40.pdf', 12, '2022-06-15 14:27:51', '2022-06-15 14:27:51'),
(14, 215, 'OsD9bKcBQrgGTwVV0TSKiXQBmKsvkKIqktamNvZM', 'जानकारी', '276151199-1204655390339005-1108288668489920558-n-62a9bfb35d20f.png', 13, '2022-06-15 15:17:07', '2022-06-15 15:17:07'),
(15, 215, 'h8GMoM15pT3CCqu6j1YSd1GczGW8SlJXveNLf6xD', 'spain programme 17 April 2022', 'spain-bhela-report-62aa5523a2501.pdf', 14, '2022-06-16 01:54:43', '2022-06-16 01:54:43'),
(20, 215, 'rBoj07ihTF0aSchMYUCMxwwzJsqBhNnl4XwYJ6iE', 'IPS Spain', 'a-l-62aa5ea36b84b.pdf', 19, '2022-06-16 02:35:15', '2022-06-16 02:35:15'),
(21, 215, 'PBSDm6xjZT3aowQlQ4QPKmn1M0BU1fzqYjOW7dKX', 'IPS REPORT', 'copy-of-ips-finacial-report-2019-new-62aa60757861c.xlsx', 20, '2022-06-16 02:43:01', '2022-06-20 18:02:39'),
(28, 215, 'uFFw1e9oEC1C6BiLglxYc3udWarUP73xsPCV8hXA', 'IPS Programme of Paiyu Dalit basti', 'dalit-help-pratibedan-3-62af325def756.rtf', 27, '2022-06-19 18:27:41', '2022-06-19 18:27:41'),
(33, 215, 'AvyKCA58FA67aZVzk3xpjFX9nvJm1wYnffLLPdrX', 'Dalit Basti Nirman sampanna', 'dalit-basti-paiyu-62d1809b3d548.rtf', 30, '2022-07-15 18:58:35', '2022-07-15 18:58:35'),
(34, 287, 'qeirREvrqJJrSVjt320ZTKvSNQXrkGZW8yVbO4tB', 'IPS 2017- 2019', 'ips-2017-2019-financial-report-62d7f793a754a.pdf', 31, '2022-07-20 16:39:47', '2022-07-20 16:39:47'),
(35, 287, '11utArgqpC9GWE0I9IQGqKKc3Tfy4BI4ZzAqlhVE', 'IPS account report', 'ips-account-annual-2019-2021-62d7f7d7ac6b7.pdf', 32, '2022-07-20 16:40:55', '2022-07-20 16:40:55'),
(36, 287, 'obzGVCYNeraRQufEl8iq3Xa73atj1lbBDahJEKjB', 'IPS COVID help', 'ips-covid-help-62d7f8204194c.pdf', 33, '2022-07-20 16:42:08', '2022-07-20 16:42:08'),
(37, 287, 'X1dwYytzp6OxKnXBbj6cW4tG0eIoPs5KGbQqnUQn', 'IPS COVID -2', 'ips-covied-2-62d7ff8d9e246.pdf', 34, '2022-07-20 17:13:49', '2022-07-20 17:13:49'),
(38, 287, 'h2QPxyCkb5CG66iab472I6RWpxIHYDFRMy538Sev', 'IPS ambulance', 'ips-ambulance-62d7ffc906c74.pdf', 35, '2022-07-20 17:14:49', '2022-07-20 17:14:49');

-- --------------------------------------------------------

--
-- Table structure for table `cl_multiple_image`
--

CREATE TABLE `cl_multiple_image` (
  `id` int UNSIGNED NOT NULL,
  `post_id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_multiple_video`
--

CREATE TABLE `cl_multiple_video` (
  `id` int UNSIGNED NOT NULL,
  `post_id` int DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_portfolio`
--

CREATE TABLE `cl_portfolio` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `brief` longtext COLLATE utf8mb4_unicode_ci,
  `uri` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int DEFAULT '0',
  `ordering` int DEFAULT '0',
  `thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `external_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_portfolio_categories`
--

CREATE TABLE `cl_portfolio_categories` (
  `id` int NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `category_caption` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `category_content` text COLLATE utf8mb4_general_ci,
  `uri` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `thumbnail` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` enum('1','0') COLLATE utf8mb4_general_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_posts`
--

CREATE TABLE `cl_posts` (
  `id` int UNSIGNED NOT NULL,
  `uid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `visiter` int DEFAULT '0',
  `post_date` datetime DEFAULT NULL,
  `post_author` int NOT NULL DEFAULT '1',
  `template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template_child` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci,
  `sub_title` text COLLATE utf8mb4_unicode_ci,
  `post_content` longtext COLLATE utf8mb4_unicode_ci,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci,
  `uri` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `post_type` int DEFAULT '0',
  `post_category` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `category` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_parent` int DEFAULT '0',
  `post_order` int DEFAULT '0',
  `home_order` int DEFAULT '0',
  `banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `audio` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `page_video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `associated_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `external_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_tags` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_status` tinyint(1) DEFAULT '0',
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `global_post` tinyint DEFAULT '0',
  `published` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `is_active` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `is_draft` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `is_trashed` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `show_in_home` enum('0','1') COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `is_password_protected` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `comment` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `lang` enum('en','np') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cl_posts`
--

INSERT INTO `cl_posts` (`id`, `uid`, `visiter`, `post_date`, `post_author`, `template`, `template_child`, `post_title`, `sub_title`, `post_content`, `post_excerpt`, `uri`, `page_key`, `post_type`, `post_category`, `category`, `post_parent`, `post_order`, `home_order`, `banner`, `audio`, `page_thumbnail`, `thumbnail`, `icon`, `page_video`, `meta_keyword`, `meta_description`, `associated_title`, `external_link`, `price`, `post_tags`, `project_status`, `status`, `global_post`, `published`, `is_active`, `is_draft`, `is_trashed`, `show_in_home`, `is_password_protected`, `comment`, `lang`, `created_at`, `updated_at`) VALUES
(362, NULL, 1504, '2026-08-19 02:08:54', 1, 'template-service-detail', NULL, '0108 | Assist-Travel/Transport', 'Safe & Reliable Transport Solutions', '<h3> </h3>\r\n<h3><strong>Supporting safe, reliable and accessible travel for NDIS participants</strong></h3>\r\n<p>Our Assist‑Travel/Transport service helps participants travel safely and confidently to the places that matter most. We support people who cannot use public transport independently due to disability, ensuring every journey is comfortable, respectful, and aligned with their NDIS goals.</p>\r\n<p>We provide transport for daily activities, medical appointments, therapy sessions, education, employment, social outings, and community participation. Our team is trained, screened, and committed to delivering high‑quality support that upholds participant rights, choice, and control.</p>\r\n<p> </p>\r\n<h2>🌟 What Makes Our Transport Service Different</h2>\r\n<ul role=\"list\">\r\n<li>\r\n<p><strong><span tabindex=\"0\" role=\"button\" data-url=\"ca://s?q=Tell_me_more_about_safe_transport_support\">Safe and reliable travel</span></strong> — door‑to‑door support with trained workers</p>\r\n</li>\r\n<li>\r\n<p><strong><span tabindex=\"0\" role=\"button\" data-url=\"ca://s?q=Explain_mobility_support_during_transport\">Help with mobility</span></strong> — assistance entering/exiting vehicles and managing mobility aids</p>\r\n</li>\r\n<li>\r\n<p><strong><span tabindex=\"0\" role=\"button\" data-url=\"ca://s?q=Explain_flexible_transport_scheduling\">Flexible scheduling</span></strong> — transport arranged around your routines, appointments, and goals</p>\r\n</li>\r\n<li>\r\n<p><strong><span tabindex=\"0\" role=\"button\" data-url=\"ca://s?q=What_is_NDIS_worker_screening\">Fully screened staff</span></strong> — NDIS Worker Screening Check, WWCC, valid licences</p>\r\n</li>\r\n<li>\r\n<p><strong><span tabindex=\"0\" role=\"button\" data-url=\"ca://s?q=Vehicle_safety_requirements_for_NDIS_transport\">Clean, insured, well‑maintained vehicles</span></strong></p>\r\n</li>\r\n<li>\r\n<p><strong><span tabindex=\"0\" role=\"button\" data-url=\"ca://s?q=Explain_provider_communication_expectations\">Clear communication</span></strong> — updates before and after trips when needed</p>\r\n</li>\r\n<li>\r\n<p><strong><span tabindex=\"0\" role=\"button\" data-url=\"ca://s?q=Explain_NDIS_transport_pricing_rules\">NDIS‑aligned pricing</span></strong> — transparent and consistent with NDIS Pricing Arrangements</p>\r\n</li>\r\n</ul>', '<p>Staying connected to your community is vital. We offer safe transport arrangements to ensure you reach medical appointments, work, place of study, or social events on time. Whether building your skills to use public transport independently or providing direct transport support, we’ve got you covered.</p>', '0108-assisttraveltransport', '1700461011350203711', 38, NULL, NULL, 0, 142, NULL, '2-iWMMUdCMuyEBP7KMaLEcVjmN90c0daWnpnFpqly5.jpg', NULL, '170303489247-C72rWfzI2n56aUcMtoyvzC9dArd2ojgjzzAT7tCI.jpg', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2023-11-20 00:31:51', '2026-10-12 07:01:30'),
(363, NULL, 1206, '2026-08-19 02:31:02', 1, 'template-service-detail', NULL, '0114 | Community Nursing Care', 'Clinical Health Support at Home', '<p>At <strong>Lifetime Community Care</strong>, our nursing team provides warm, professional and person‑centred healthcare in the comfort of your home. We support you with medication management, wound care, continence support, PEG feeding, diabetes monitoring, and other essential nursing interventions — all delivered by qualified Registered Nurses.</p>\r\n<p>Our nurses focus on your <strong>safety</strong>, <strong>dignity</strong>, and <strong>wellbeing</strong>, helping you stay healthy, confident, and connected in your community.</p>\r\n<div id=\"1cogRhPWv7WCQUbhdfroo-content-2\">\r\n<h1>🟦 <strong>What Is Community Nursing Care?</strong></h1>\r\n<p>Community Nursing Care refers to medical and nursing support provided to individuals with disabilities in their own homes or community settings. This includes essential clinical tasks such as:</p>\r\n<ul role=\"list\">\r\n<li>\r\n<p>Medication management</p>\r\n</li>\r\n<li>\r\n<p>Wound care</p>\r\n</li>\r\n<li>\r\n<p>Continence management</p>\r\n</li>\r\n<li>\r\n<p>Health assessments</p>\r\n</li>\r\n<li>\r\n<p>Chronic condition monitoring</p>\r\n</li>\r\n<li>\r\n<p>Disability‑related nursing interventions</p>\r\n</li>\r\n</ul>\r\n<p>These supports help maintain your health, independence, and quality of life.</p>\r\n<div> </div>\r\n<h1>🟩 <strong>Our Nursing Services (Delivered by Qualified Nurses)</strong></h1>\r\n<p>Our Registered Nurses provide specialised healthcare support directly in your home, including:</p>\r\n<ul role=\"list\">\r\n<li>\r\n<p><strong><span tabindex=\"0\" role=\"button\" data-url=\"ca://s?q=Explain_wound_care_under_NDIS\">Wound management</span></strong></p>\r\n</li>\r\n<li>\r\n<p><strong><span tabindex=\"0\" role=\"button\" data-url=\"ca://s?q=Explain_clinical_assessments_under_NDIS\">Clinical health assessments</span></strong></p>\r\n</li>\r\n<li>\r\n<p><strong>Complex bowel care</strong></p>\r\n</li>\r\n<li>\r\n<p><strong>PEG feeding &amp; enteral nutrition</strong></p>\r\n</li>\r\n<li>\r\n<p><strong>Catheter care</strong></p>\r\n</li>\r\n<li>\r\n<p><strong>Diabetes monitoring &amp; blood glucose checks</strong></p>\r\n</li>\r\n<li>\r\n<p><strong>Medication administration &amp; supervision</strong></p>\r\n</li>\r\n<li>\r\n<p><strong>Monitoring of chronic conditions</strong></p>\r\n</li>\r\n<li>\r\n<p><strong>Health education for participants &amp; carers</strong></p>\r\n</li>\r\n</ul>\r\n</div>\r\n<div id=\"1cogRhPWv7WCQUbhdfroo-content-3\">\r\n<div>\r\n<ul role=\"list\">\r\n<li>\r\n<div tabindex=\"0\" title=\"Wound Care Houston | Expert In-Home Healing\" role=\"button\" aria-label=\"Item 1 of 4 Wound Care Houston | Expert In-Home Healing\"><img src=\"https://ts1.mm.bing.net/th?id=OIP.wjiuAHWGro62IlJR4kPmygHaHa&amp;pid=15.1&amp;o=7&amp;rm=3\" alt=\"Wound Care Houston | Expert In-Home Healing\">\r\n<div> </div>\r\n</div>\r\n</li>\r\n<li>\r\n<div tabindex=\"0\" title=\"Wound Care Nurse Wound Care Nurse Svg Cut File Png Dxf RN LPN Nurse\" role=\"button\" aria-label=\"Item 2 of 4 Wound Care Nurse Wound Care Nurse Svg Cut File Png Dxf RN LPN Nurse\"><img src=\"https://ts1.mm.bing.net/th?id=OIP.3i39A6N56BYo64G8rpGcngHaE8&amp;pid=15.1&amp;o=7&amp;rm=3\" alt=\"Wound Care Nurse Wound Care Nurse Svg Cut File Png Dxf RN LPN Nurse\">\r\n<div> </div>\r\n</div>\r\n</li>\r\n<li>\r\n<div tabindex=\"0\" title=\"Nursing guidelines : Gastrostomy\" role=\"button\" aria-label=\"Item 3 of 4 Nursing guidelines : Gastrostomy\"><img src=\"https://ts2.mm.bing.net/th?id=OIP.yLuHtgpXfVkq2f-d9GZXKgHaGQ&amp;pid=15.1&amp;o=7&amp;rm=3\" alt=\"Nursing guidelines : Gastrostomy\">\r\n<div> </div>\r\n</div>\r\n</li>\r\n<li>\r\n<div tabindex=\"0\" title=\"Enteral Feeding Tube Parts at Maddison Loch blog\" role=\"button\" aria-label=\"Item 4 of 4 Enteral Feeding Tube Parts at Maddison Loch blog\"><img src=\"https://ts2.mm.bing.net/th?id=OIP.d5F-cI0Fk7Vu9eSWhS3UVAHaGK&amp;pid=15.1&amp;o=7&amp;rm=3\" alt=\"Enteral Feeding Tube Parts at Maddison Loch blog\">\r\n<div> </div>\r\n</div>\r\n</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div id=\"1cogRhPWv7WCQUbhdfroo-content-4\">\r\n<div> </div>\r\n<h1>🟧 <span style=\"font-size: 18pt;\"><strong>Who Delivers These Supports?</strong></span></h1>\r\n<h3>💙 <strong>Registered Nurses (RNs)</strong></h3>\r\n<p>RNs deliver <strong>all clinical nursing tasks</strong>, including complex care such as PEG feeding, catheter care, wound management, and clinical assessments.</p>\r\n<h3>💚 <strong>Enrolled Nurses (ENs)</strong></h3>\r\n<p>ENs can provide some nursing tasks <strong>under RN supervision</strong>, depending on training and delegation.</p>\r\n<h3>💛 <strong>Support Workers</strong></h3>\r\n<p>Support workers <strong>cannot</strong> perform clinical nursing tasks. They may assist with <strong>non‑clinical daily living tasks</strong> as directed by the nursing team.</p>\r\n<div> </div>\r\n</div>', '<p>Community nursing care refers to medical and nursing support provided to individuals with disabilities in their own homes or community settings. This service can include medication management, wound care, continence management, health assessments, and other nursing interventions.</p>', '0125-participate-community-social-community-inclusion', '1700461294840462763', 38, NULL, NULL, 0, 143, NULL, '2-QQOBGjix8rPY0HzUinsXsIdcJhrnMXpZMOR5rvUk.jpg', NULL, 'pediatric-nurse-3OHMit5ZFR9YKG8IGHfBcCwkNZTnixQHKyEOtjmD.jpg', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2023-11-20 00:36:34', '2026-10-12 14:36:22'),
(366, NULL, 1752, '2024-03-29 11:12:32', 1, 'single', NULL, 'Mental Health Support Worker', 'Mental Health Support Worker', '<p>A mental health support worker is&nbsp;to provide emotional support to clients who are struggling with mental health issues.&nbsp;Tasks can involve listening to their concerns and providing an empathetic ear, as well as offering practical advice and guidance.&nbsp;</p>', '<p>A mental health support worker is&nbsp;to provide emotional support to clients who are struggling with mental health issues.&nbsp;Tasks can involve listening to their concerns and providing an empathetic ear, as well as offering practical advice and guidance.&nbsp;</p>', 'mental-health-support-worker', '1700544458941005270', 39, NULL, NULL, 0, 146, NULL, 'blue-modern-just-listed-real-estate-linkedin-article-cover-image-1-Zc2sDeBSvWzJZJ43lN0p7d3UjFq6K2ZVT11z4tUz.png', NULL, 'key-responsibilities-of-a-mental-health-support-worker-1024x683-7hVHZXCvTTwcLWjdx91t8Oh2vbiKYvxytZhVNmhB.jpg', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2023-11-20 23:42:38', '2026-10-12 06:27:12'),
(367, NULL, 1605, '2024-03-29 11:12:01', 1, 'single', NULL, 'Assist-Travel/Transport', NULL, '<p>We will assist<strong>&nbsp;</strong>with modified vehicles that are convenient for people with disability, elderly and the participants for their community participation transportation.</p>\r\n<p>We provide transport to attend your medical appointments whether it is to a medical centre, hospital or to see a specialist, doctor appointment, hospitals, cemeteries or to visit loved ones in a particular destination.</p>', '<p>We will assist<strong>&nbsp;</strong>with modified vehicles that are convenient for people with disability, elderly and the participants for their community participation transportation.</p>', 'assisttraveltransport', '1700544486374648930', 39, NULL, NULL, 0, 147, NULL, 'blue-modern-just-listed-real-estate-linkedin-article-cover-image-1-0TyCz9Vn2PsQGujgn3uyPCaOdiqiOyKk7rg7NDOB.png', NULL, 'assistance-with-travel-and-transport-arrangements-2rRxbVdA9EBWNaBPGkjwZdw9T6I0XJZyru9exIPk.jpeg', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2023-11-20 23:43:06', '2026-10-12 06:43:17'),
(368, NULL, 1686, '2024-03-29 11:11:56', 1, 'single', NULL, 'Community Nursing Care', NULL, '<p>Community nurses work closely with GPs, social services, hospitals and other healthcare staff to provide a service tailored to meet individual needs. The service helps patients cope with ill health and disability, thus allowing them to have the best possible quality of life, while maintaining dignity and respect.</p>', '<p>Community nurses work closely with GPs, social services, hospitals and other healthcare staff to provide a service tailored to meet individual needs. The service helps patients cope with ill health and disability, thus allowing them to have the best possible quality of life, while maintaining dignity and respect.</p>', 'community-nursing-care', '1700544547958097997', 39, NULL, NULL, 0, 148, NULL, 'blue-modern-just-listed-real-estate-linkedin-article-cover-image-1-FS277qbU1bQAwRw0KT1ceE6ysvi20ScIjyNL4f40.png', NULL, '21-BrOnUBvePnmSM8fGPsrEMK9OKNxfZWxzpx7nCiZM.jpg', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2023-11-20 23:44:07', '2026-10-12 12:32:07'),
(369, NULL, 0, '2026-08-19 04:49:34', 1, 'single', NULL, 'Maria ,', 'Your compassion extended to me as well, giving me peace of mind for a few hours daily knowing that he was receiving excellent care.', NULL, NULL, 'maria', '1700634075101351178', 43, NULL, NULL, 0, 149, NULL, '', NULL, 'portrait-beautiful-young-woman-standing-grey-wall-f3kk69bv5uOEVdBpkoHSULdMYyDCKDV4CuxmH5Me.jpg', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2023-11-22 00:36:15', '2026-08-19 09:01:54'),
(370, NULL, 0, '2024-03-29 11:22:58', 1, 'single', NULL, 'Bob, Enterpreneur', 'My family and I cannot thank you enough for the time, patience and understanding you’ve shown to our family and our mother.', NULL, NULL, 'bob-enterpreneur', '1700634722361780569', 43, NULL, NULL, 0, 150, NULL, '', NULL, 'portrait-young-redhead-bearded-male-nlPmzwnZYjTretWIXKh5GlbrDHMD4c0AvoJ1Nlcx.jpg', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2023-11-22 00:47:02', '2024-03-29 15:23:54'),
(371, NULL, 0, '2024-03-29 11:20:38', 1, 'single', NULL, 'Jane , Advisor', 'The center was nothing less than extraordinary. You are all thoughtful, compassionate people.', NULL, NULL, 'jane-advisor', '1700635194141532857', 43, NULL, NULL, 0, 151, NULL, '', NULL, 'pretty-blonde-woman-wearing-white-t-shirt-llHqsyzqdaGhhYY9qMa95nCzb1GOhQLunIZ8wJ8l.jpg', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2023-11-22 00:54:54', '2024-03-29 15:24:14'),
(372, '0', 0, '2023-11-22 10:43:05', 1, 'single', NULL, 'Local & Trusted Provider', NULL, NULL, NULL, 'local-trusted-provider', '1700649817240561645', 44, '0', NULL, 0, 152, 0, '', NULL, 'hands-XpIU7sxTJNDFXHAVrHp6fwHJFw0FzgLn9DMuMWwe.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2023-11-22 04:58:37', '2023-11-22 04:58:37'),
(373, '0', 0, '2023-11-22 10:43:43', 1, 'single', NULL, 'Expert Advice', NULL, NULL, NULL, 'expert-advice', '1700649871205300360', 44, '0', NULL, 0, 153, 0, '', NULL, 'heart-KMARL8jB5XwxBhTNXqk8XArAldGQabLr3B6B2qpM.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2023-11-22 04:59:31', '2023-11-22 04:59:31'),
(374, '0', 0, '2023-11-22 11:16:23', 1, 'single', NULL, 'Quality Care', NULL, NULL, NULL, 'quality-care', '1700651838330749617', 44, '0', NULL, 0, 154, 0, '', NULL, 'receive-a5PhifaRWKnK5xP2TXrqACz9wj832khUdTHd6cfx.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2023-11-22 05:32:18', '2023-11-22 05:32:18'),
(375, NULL, 0, '2026-08-18 10:10:24', 1, 'single', NULL, 'Compatible Caregivers', NULL, NULL, NULL, 'compatible-caregivers', '1700651863790726164', 44, NULL, NULL, 0, 155, NULL, '', NULL, 'scholarship-HUdUKJNElqtkyxkzpGI3ApY0OsuRoHy474X4Ibi9.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2023-11-22 05:32:43', '2026-08-18 14:10:33'),
(377, NULL, 1291, '2026-08-19 02:48:39', 1, 'template-service-detail', NULL, '0116 | Innovative Community Participation', 'Tailored Skill Development & Mentoring', '<h2>🌟 <span style=\"font-size: 14pt;\">Creative, Skill‑Building Activities That Help You Grow, Connect &amp; Thrive</span></h2>\r\n<p>Innovative Community Participation is a <strong>Capacity Building NDIS support</strong> designed to help people with disability build confidence, independence, and meaningful community connections through <strong>creative, non‑traditional, and skill‑focused activities</strong>. It goes beyond standard social participation — offering <strong>new, innovative, and personalised experiences</strong> that support your goals and help you become an active, valued member of your community.</p>\r\n<div class=\"relative pb-6 w-full after:border-b after:border-stroke-300 after:w-full after:absolute after:mt-3\"> </div>\r\n<h1><span style=\"font-size: 14pt;\">🟦 <strong>What Is Innovative Community Participation?</strong></span></h1>\r\n<p>Innovative Community Participation (Support Item <strong>09_008_0116_6_3</strong>) sits under the NDIS category <strong>Increased Social and Community Participation</strong>. It focuses on <strong>skill development</strong>, <strong>confidence building</strong>, <strong>creative exploration</strong>, and <strong>community inclusion</strong>.</p>\r\n<p>This support is ideal for participants who want to:</p>\r\n<ul role=\"list\">\r\n<li>\r\n<p>Build independence</p>\r\n</li>\r\n<li>\r\n<p>Learn new skills</p>\r\n</li>\r\n<li>\r\n<p>Explore creative or social activities</p>\r\n</li>\r\n<li>\r\n<p>Increase confidence and emotional awareness</p>\r\n</li>\r\n<li>\r\n<p>Connect with their community</p>\r\n</li>\r\n<li>\r\n<p>Work towards employment or volunteering pathways</p>\r\n</li>\r\n</ul>\r\n<div> </div>\r\n<h1><span style=\"font-size: 14pt;\">🌈 <strong>What Makes This Support “Innovative”?</strong></span></h1>\r\n<p>Unlike standard social participation, Innovative Community Participation is:</p>\r\n<ul role=\"list\">\r\n<li>\r\n<p><strong>Goal‑directed</strong></p>\r\n</li>\r\n<li>\r\n<p><strong>Skill‑building</strong></p>\r\n</li>\r\n<li>\r\n<p><strong>Creative and non‑traditional</strong></p>\r\n</li>\r\n<li>\r\n<p><strong>Designed to expand opportunities</strong></p>\r\n</li>\r\n<li>\r\n<p><strong>Focused on long‑term independence</strong></p>\r\n</li>\r\n</ul>\r\n<p>It helps participants <strong>grow</strong>, not just attend activities.</p>\r\n<div class=\"relative pb-6 w-full after:border-b after:border-stroke-300 after:w-full after:absolute after:mt-3\"> </div>\r\n<h1><span style=\"font-size: 14pt;\">🟩 <strong>Activities We Offer</strong></span></h1>\r\n<p>Our programs are designed to be <strong>fun, meaningful, and personalised</strong>. Examples include:</p>\r\n<ul role=\"list\">\r\n<li>\r\n<p>🎨 <strong>Creative workshops</strong> — art, music, craft, photography</p>\r\n</li>\r\n<li>\r\n<p>🍳 <strong>Skill‑building classes</strong> — cooking, budgeting, daily living skills</p>\r\n</li>\r\n<li>\r\n<p>🧠 <strong>Confidence &amp; resilience programs</strong></p>\r\n</li>\r\n<li>\r\n<p>🏃 <strong>Adaptive sports &amp; recreational activities</strong></p>\r\n</li>\r\n<li>\r\n<p>💬 <strong>Social communication &amp; emotional awareness sessions</strong></p>\r\n</li>\r\n<li>\r\n<p>💼 <strong>Employment pathway activities</strong> — volunteering, job readiness, micro‑business ideas</p>\r\n</li>\r\n<li>\r\n<p>🎭 <strong>Community events, clubs &amp; group programs</strong></p>\r\n</li>\r\n<li>\r\n<p>🚗 <strong>Supported community outings</strong> (transport included when part of the activity)</p>\r\n</li>\r\n</ul>\r\n<div class=\"relative pb-6 w-full after:border-b after:border-stroke-300 after:w-full after:absolute after:mt-3\"> </div>\r\n<h1><span style=\"font-size: 14pt;\">🟧 <strong>Expected Outcomes for Participants</strong></span></h1>\r\n<p>Innovative Community Participation helps you achieve:</p>\r\n<ul role=\"list\">\r\n<li>\r\n<p>Increased <strong>confidence &amp; self‑worth</strong></p>\r\n</li>\r\n<li>\r\n<p>Stronger <strong>social skills &amp; communication</strong></p>\r\n</li>\r\n<li>\r\n<p>Broader <strong>community connections</strong></p>\r\n</li>\r\n<li>\r\n<p>Reduced <strong>social isolation</strong></p>\r\n</li>\r\n<li>\r\n<p>Improved <strong>emotional wellbeing</strong></p>\r\n</li>\r\n<li>\r\n<p>Greater <strong>independence</strong></p>\r\n</li>\r\n<li>\r\n<p>Pathways to <strong>employment, volunteering, or education</strong></p>\r\n</li>\r\n</ul>\r\n<div class=\"relative pb-6 w-full after:border-b after:border-stroke-300 after:w-full after:absolute after:mt-3\"> </div>\r\n<h1><span style=\"font-size: 14pt;\">💛 <strong>Who Can Access This Support?</strong></span></h1>\r\n<p>You may be eligible if you:</p>\r\n<ul role=\"list\">\r\n<li>\r\n<p>Are an NDIS participant</p>\r\n</li>\r\n<li>\r\n<p>Have a disability that impacts your ability to engage in community life</p>\r\n</li>\r\n<li>\r\n<p>Want to build skills, confidence, or independence</p>\r\n</li>\r\n<li>\r\n<p>Have goals related to social participation, creativity, learning, or employment</p>\r\n</li>\r\n<li>\r\n<p>Are self‑managed, plan‑managed, or NDIA‑managed (all are eligible)</p>\r\n</li>\r\n</ul>\r\n<div class=\"relative pb-6 w-full after:border-b after:border-stroke-300 after:w-full after:absolute after:mt-3\"> </div>\r\n<h1><span style=\"font-size: 14pt;\">🟥 <strong>Why Choose Lifetime Community Care?</strong></span></h1>\r\n<ul role=\"list\">\r\n<li>\r\n<p>🌟 Creative, personalised programs</p>\r\n</li>\r\n<li>\r\n<p>💙 Support workers who encourage independence</p>\r\n</li>\r\n<li>\r\n<p>🧡 High‑contrast, accessible communication</p>\r\n</li>\r\n<li>\r\n<p>🧩 Activities tailored to your NDIS goals</p>\r\n</li>\r\n<li>\r\n<p>🤝 Strong community partnerships</p>\r\n</li>\r\n<li>\r\n<p>📈 Focus on long‑term skill development</p>\r\n</li>\r\n<li>\r\n<p>😊 Friendly, inclusive, culturally safe environment</p>\r\n</li>\r\n</ul>\r\n<p> </p>', '<p>This program focuses on breaking down social barriers through custom community programs. Through side-by-side mentoring and community engagement, we help participants explore new hobbies, build networks, and access mainstream community initiatives.</p>\r\n<p> </p>', '0116-innovative-community-participation-tailored-skill-development-mentoring', '1703038529633513381', 38, NULL, NULL, 0, 157, NULL, '', NULL, 'gettogather-ejum0CLetPavj3vPPfTlHsO6j30VDmKjAIRqJHaj.jpg', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2023-12-20 07:15:29', '2026-10-12 07:06:42'),
(378, NULL, 1189, '2026-08-19 02:53:55', 1, 'template-service-detail', NULL, '0120 | Household Tasks', 'Domestic Assistance for a Comfortable Home', '<h2><span style=\"font-size: 18pt;\">🌟 Helping You Maintain a Clean, Safe &amp; Comfortable Home</span></h2>\r\n<p>Household Tasks (0120) is an NDIS support designed to help you manage everyday chores that may be difficult due to your disability. Our friendly team provides <strong>safe, respectful and reliable assistance</strong> to keep your home clean, organised and comfortable — so you can focus on living your best life.</p>\r\n<p>We work with you to understand your needs, routines and preferences, ensuring support is delivered in a way that feels <strong>empowering, dignified and personalised</strong>.</p>\r\n<div> </div>\r\n<h1><span style=\"font-size: 18pt;\">🟦 <strong>What We Can Help You With</strong></span></h1>\r\n<p>Our support workers assist with a wide range of household tasks, including:</p>\r\n<ul role=\"list\">\r\n<li>\r\n<p>🧹 <strong>General cleaning</strong> — floors, surfaces, dusting</p>\r\n</li>\r\n<li>\r\n<p>🧺 <strong>Laundry</strong> — washing, drying, folding, ironing</p>\r\n</li>\r\n<li>\r\n<p>🍽️ <strong>Dishwashing &amp; kitchen cleaning</strong></p>\r\n</li>\r\n<li>\r\n<p>🛏️ <strong>Bed making &amp; linen changes</strong></p>\r\n</li>\r\n<li>\r\n<p>🗑️ <strong>Rubbish removal</strong></p>\r\n</li>\r\n<li>\r\n<p>🧼 <strong>Bathroom &amp; toilet cleaning</strong></p>\r\n</li>\r\n<li>\r\n<p>🛒 <strong>Assistance with grocery shopping</strong></p>\r\n</li>\r\n<li>\r\n<p>🧽 <strong>Tidying &amp; organising your home</strong></p>\r\n</li>\r\n<li>\r\n<p>🥗 <strong>Meal preparation support</strong> (basic, non‑complex)</p>\r\n</li>\r\n</ul>\r\n<p>All tasks are delivered safely, respectfully and in line with your NDIS goals.</p>\r\n<div> </div>\r\n<h1><span style=\"font-size: 18pt;\">🌈 <strong>Who This Support Is For</strong></span></h1>\r\n<p>You may be eligible for Household Tasks if you:</p>\r\n<ul role=\"list\">\r\n<li>\r\n<p>Have difficulty completing daily chores due to your disability</p>\r\n</li>\r\n<li>\r\n<p>Need help maintaining a safe and hygienic home</p>\r\n</li>\r\n<li>\r\n<p>Require support to build independence in daily living</p>\r\n</li>\r\n<li>\r\n<p>Are self‑managed, plan‑managed or NDIA‑managed</p>\r\n</li>\r\n</ul>\r\n<p>This support is designed to help you live comfortably and confidently in your own home.</p>\r\n<div> </div>\r\n<h1><span style=\"font-size: 18pt;\">🟩 <strong>What You Can Achieve</strong></span></h1>\r\n<p>With our help, you can enjoy:</p>\r\n<ul role=\"list\">\r\n<li>\r\n<p>A clean, safe and organised home</p>\r\n</li>\r\n<li>\r\n<p>Reduced stress and physical strain</p>\r\n</li>\r\n<li>\r\n<p>More time and energy for things you enjoy</p>\r\n</li>\r\n<li>\r\n<p>Improved independence and daily living skills</p>\r\n</li>\r\n<li>\r\n<p>Greater confidence in managing your environment</p>\r\n</li>\r\n</ul>\r\n<div> </div>\r\n<h1><span style=\"font-size: 18pt;\">🟥 <strong>Why Choose Lifetime Community Care?</strong></span></h1>\r\n<ul role=\"list\">\r\n<li>\r\n<p>💙 Friendly, respectful and reliable staff</p>\r\n</li>\r\n<li>\r\n<p>🌟 High‑contrast, easy‑to‑read communication</p>\r\n</li>\r\n<li>\r\n<p>🧡 Supports tailored to your routines and preferences</p>\r\n</li>\r\n<li>\r\n<p>🤝 Strong NDIS compliance and quality standards</p>\r\n</li>\r\n<li>\r\n<p>😊 Safe, inclusive and culturally respectful service</p>\r\n</li>\r\n<li>\r\n<p>📅 Flexible scheduling to suit your lifestyle</p>\r\n</li>\r\n</ul>\r\n<div> </div>', '<p>A clean and well-maintained home promotes health and peace of mind. Our team helps with domestic household chores that may be difficult to complete independently, including house cleaning, vacuuming, laundry, ironing, dishwashing, and grocery shopping.</p>', 'household-tasks', '1703038710361863818', 38, NULL, NULL, 0, 158, NULL, '', NULL, 'household-tasks-dsMsVDpeFihkUJLElXy0KStmXe9as1IDGPx4ZBkr.jpg', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2023-12-20 07:18:30', '2026-10-12 07:03:43'),
(379, NULL, 1775, '2026-08-19 03:13:02', 1, 'template-service-detail', NULL, '0106 | Assist-Life Stage, Transition', 'Life Transition Planning & Mentoring', '<h2>🌟 Support to Help You Move Forward With Confidence</h2>\r\n<p>Assist‑Life Stage, Transition helps you <strong>navigate important changes in your life</strong> — whether you’re starting something new, facing a challenge, or building the skills you need for the future. Our team provides <strong>gentle, personalised and goal‑focused support</strong> to help you feel confident, organised and ready for your next step.</p>\r\n<p>We work closely with <strong>participants, OTs, behaviour support practitioners, support coordinators and families</strong> to make every transition <strong>smooth, safe and empowering</strong>.</p>\r\n<h1><span style=\"font-size: 18pt;\">🟦 <strong>What This Support Helps With</strong></span></h1>\r\n<p>Our transition support is colourful, practical and tailored to your goals:</p>\r\n<ul role=\"list\">\r\n<li>\r\n<p>🏡 <strong>Moving to new accommodation</strong></p>\r\n</li>\r\n<li>\r\n<p>👥 <strong>Starting or changing support services</strong></p>\r\n</li>\r\n<li>\r\n<p>💼 <strong>Preparing for work, volunteering or study</strong></p>\r\n</li>\r\n<li>\r\n<p>📅 <strong>Building routines, planning and daily structure</strong></p>\r\n</li>\r\n<li>\r\n<p>💬 <strong>Improving communication and social skills</strong></p>\r\n</li>\r\n<li>\r\n<p>🧠 <strong>Emotional regulation &amp; confidence building</strong></p>\r\n</li>\r\n<li>\r\n<p>🧾 <strong>Understanding NDIS plans &amp; making informed choices</strong></p>\r\n</li>\r\n<li>\r\n<p>🤝 <strong>Connecting with community, therapists &amp; providers</strong></p>\r\n</li>\r\n</ul>\r\n<p>We help you build the skills you need to <strong>live more independently and confidently</strong>.</p>\r\n<h1><span style=\"font-size: 18pt;\">🟩 <strong>What You Can Achieve</strong></span></h1>\r\n<p>With our help, you can build:</p>\r\n<ul role=\"list\">\r\n<li>\r\n<p>Confidence in new environments</p>\r\n</li>\r\n<li>\r\n<p>Stronger daily living skills</p>\r\n</li>\r\n<li>\r\n<p>Better emotional regulation</p>\r\n</li>\r\n<li>\r\n<p>Clear routines and structure</p>\r\n</li>\r\n<li>\r\n<p>Community connections</p>\r\n</li>\r\n<li>\r\n<p>Independence in decision‑making</p>\r\n</li>\r\n<li>\r\n<p>Readiness for work, study or new supports</p>\r\n</li>\r\n</ul>\r\n<p>We support you to <strong>grow, adapt and thrive</strong> at every stage of life.</p>', '<p>This service involves coordinating and managing support services for individuals with disabilities. Support coordinators assist in identifying needs, developing support plans, connecting with service providers, and ensuring the effective delivery of supports.</p>', 'assistance-in-coordinating-or-managing-life-stages', '1703038940116927320', 38, NULL, NULL, 0, 159, NULL, '', NULL, 'daily-activities-E5WrY6mVtx4sOa1QY4K1JVbuy5JhTqNajJx0fLKG.jpg', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2023-12-20 07:22:20', '2026-10-12 06:48:54'),
(380, NULL, 1677, '2026-08-19 03:18:02', 1, 'template-service-detail', NULL, '0136 | Group & Centre-Based Activities', 'Interactive Group Programs & Skill Building', '<h2>🌟 <span style=\"font-size: 14pt;\">Fun, Social &amp; Skill‑Building Activities in a Safe, Supportive Space</span></h2>\r\n<p>Group &amp; Centre‑Based Activities help you <strong>connect with others, learn new skills, build confidence, and enjoy meaningful activities</strong> in a friendly, inclusive environment. Our programs are designed to support your <strong>social, emotional, and daily living skills</strong>, while making sure you feel safe, respected, and welcomed.</p>\r\n<p>Whether you enjoy creative activities, social groups, learning new skills, or simply spending time with others — we’re here to help you <strong>thrive and feel part of your community</strong>.</p>\r\n<p>.</p>', '<p>Our group activities provide structured, inclusive settings where participants can connect, make new friends, and build skills. Programs include creative workshops, arts and crafts, life-skills sessions, and wellness activities designed to foster social connection.</p>', '0136-group-centrebased-activities-interactive-group-programs-skill-building', '1703561221349563111', 38, NULL, NULL, 0, 160, NULL, '', NULL, 'ping-pong-playing-table-cH4HTWvG315BNYglWGBGkzjy01HjUAH9KEFnlrHg.jpg', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2023-12-26 08:27:01', '2026-10-12 06:50:34'),
(381, NULL, 1636, '2026-08-19 03:29:43', 1, 'template-service-detail', NULL, '0115 | Daily Tasks / Shared Living', 'Supported Living in Shared Environments', '<h2><span style=\"font-size: 14pt;\">🌟 Support to Help You Live Comfortably, Confidently &amp; Independently</span></h2>\r\n<p>Daily Tasks / Shared Living provides <strong>hands‑on assistance and skill‑building support</strong> for people living in shared homes, group settings, or their own home. Our team helps you develop the daily living skills you need to live more independently, feel confident, and enjoy a safe, comfortable home environment.</p>\r\n<p><strong>This service is delivered in line with the updated NDIS Support Catalogue (effective 1 July 2026), focusing on skill development, independence and safe daily living.</strong></p>\r\n<p>We are committed to working closely with participants, families, OTs, BSPs and support coordinators to deliver personalised, respectful supports that align with NDIS goals.</p>\r\n<h1><span style=\"font-size: 14pt;\">🟦 <strong>What This Support Includes</strong></span></h1>\r\n<ul role=\"list\">\r\n<li>\r\n<p><strong><span tabindex=\"0\" role=\"button\" data-url=\"ca://s?q=Explain_household_chore_support\">Household chores</span></strong> — cleaning, tidying, organising</p>\r\n</li>\r\n<li>\r\n<p><strong><span tabindex=\"0\" role=\"button\" data-url=\"ca://s?q=Explain_meal_preparation_support\">Meal preparation &amp; cooking skills</span></strong></p>\r\n</li>\r\n<li>\r\n<p>Laundry support — washing, drying, folding</p>\r\n</li>\r\n<li>\r\n<p>Bed making &amp; room organisation</p>\r\n</li>\r\n<li>\r\n<p>Shopping assistance &amp; budgeting skills</p>\r\n</li>\r\n<li>\r\n<p>Personal care prompts (non‑complex)</p>\r\n</li>\r\n<li>\r\n<p>Daily routines &amp; planning</p>\r\n</li>\r\n<li>\r\n<p>Social and communication skill‑building</p>\r\n</li>\r\n<li>\r\n<p>Support to participate in shared household responsibilities</p>\r\n</li>\r\n</ul>\r\n<p>All supports are <strong>goal‑focused</strong>, <strong>skill‑building</strong>, and aligned with the 2026 NDIS independence outcomes.</p>\r\n<h1><span style=\"font-size: 14pt;\">🌈 <strong>Who This Support Is For</strong></span></h1>\r\n<p>You may be eligible for Daily Tasks / Shared Living if you:</p>\r\n<ul role=\"list\">\r\n<li>\r\n<p>Live in shared accommodation or want to build skills for independent living</p>\r\n</li>\r\n<li>\r\n<p>Need help with daily routines and household tasks</p>\r\n</li>\r\n<li>\r\n<p>Want to learn new skills to increase independence</p>\r\n</li>\r\n<li>\r\n<p>Benefit from structured support and gentle guidance</p>\r\n</li>\r\n<li>\r\n<p>Are self‑managed, plan‑managed or NDIA‑managed</p>\r\n</li>\r\n</ul>\r\n<p>This support helps you <strong>live safely, comfortably and confidently</strong>.</p>\r\n<p><span style=\"font-size: 14pt;\">🟩 <strong>What You Can Achieve</strong></span></p>\r\n<ul role=\"list\">\r\n<li>\r\n<p>Stronger daily living skills</p>\r\n</li>\r\n<li>\r\n<p>Confidence in managing your home</p>\r\n</li>\r\n<li>\r\n<p>Better routines and organisation</p>\r\n</li>\r\n<li>\r\n<p>Improved communication and social skills</p>\r\n</li>\r\n<li>\r\n<p>Independence in shared living environments</p>\r\n</li>\r\n<li>\r\n<p>A sense of responsibility and pride in your space</p>\r\n</li>\r\n</ul>\r\n<p>These outcomes match the <strong>new NDIS focus on functional improvement and independence</strong>.</p>\r\n<h1><span style=\"font-size: 14pt;\">🟥 <strong>Why Choose Lifetime Community Care?</strong></span></h1>\r\n<ul role=\"list\">\r\n<li>\r\n<p>Friendly, respectful and reliable staff</p>\r\n</li>\r\n<li>\r\n<p>High‑contrast, easy‑to‑read communication</p>\r\n</li>\r\n<li>\r\n<p>Supports tailored to your routines and preferences</p>\r\n</li>\r\n<li>\r\n<p>Strong collaboration with OTs, BSPs &amp; allied health</p>\r\n</li>\r\n<li>\r\n<p>Safe, inclusive and culturally respectful service</p>\r\n</li>\r\n<li>\r\n<p>Flexible scheduling to suit your lifestyle</p>\r\n</li>\r\n</ul>', '<p>For participants residing in shared accommodation or group home settings, we offer flexible routine support. We assist with household chores, communal cooking, personal management, and social living skills to maintain a positive, safe, and harmonious home environment.</p>', 'assistance-with-daily-personal-activities', '1703561926207194240', 38, NULL, NULL, 0, 161, NULL, '', NULL, 'cooking-help-eZzi6u66XnHjiD7lSs2c2VovJbOnUHqH8Z5nneIp.jpg', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2023-12-26 08:38:46', '2026-10-12 06:37:36'),
(382, NULL, 1764, '2026-08-19 03:31:04', 1, 'template-service-detail', NULL, '0117 | Development-Life Skills', 'Independent Living Skill Training', '<h2><span style=\"font-size: 14pt;\">🌟 Build Confidence, Independence &amp; Everyday Skills</span></h2>\r\n<p>Development‑Life Skills (0117) helps you learn practical skills for everyday life — from cooking and cleaning to communication, problem‑solving and personal organisation. Our friendly team supports you to grow your independence, build confidence and feel more capable in your daily routines.</p>\r\n<p>We are committed to working closely with participants, families, OTs, BSPs and support coordinators to deliver personalised, respectful supports that align with NDIS goals.</p>\r\n<p><span style=\"font-size: 14pt;\">🟦 <strong>What This Support Includes</strong></span></p>\r\n<ul role=\"list\">\r\n<li>\r\n<p><strong><span tabindex=\"0\" role=\"button\" data-url=\"ca://s?q=Explain_daily_living_skill_training\">Daily living skills training</span></strong> — cooking, cleaning, home organisation</p>\r\n</li>\r\n<li>\r\n<p><strong><span tabindex=\"0\" role=\"button\" data-url=\"ca://s?q=Explain_personal_development_support\">Personal development</span></strong> — confidence, motivation, emotional awareness</p>\r\n</li>\r\n<li>\r\n<p><strong><span tabindex=\"0\" role=\"button\" data-url=\"ca://s?q=Explain_communication_skill_support\">Communication skills</span></strong> — social interaction, conversation practice</p>\r\n</li>\r\n<li>\r\n<p><strong><span tabindex=\"0\" role=\"button\" data-url=\"ca://s?q=Explain_budgeting_support\">Budgeting &amp; money management</span></strong></p>\r\n</li>\r\n<li>\r\n<p><strong><span tabindex=\"0\" role=\"button\" data-url=\"ca://s?q=Explain_time_management_support\">Time management &amp; routines</span></strong></p>\r\n</li>\r\n<li>\r\n<p><strong><span tabindex=\"0\" role=\"button\" data-url=\"ca://s?q=Explain_problem_solving_support\">Problem‑solving &amp; decision‑making</span></strong></p>\r\n</li>\r\n<li>\r\n<p><strong><span tabindex=\"0\" role=\"button\" data-url=\"ca://s?q=Explain_travel_training_support\">Travel training</span></strong> — public transport, community navigation</p>\r\n</li>\r\n<li>\r\n<p><strong><span tabindex=\"0\" role=\"button\" data-url=\"ca://s?q=Explain_healthy_lifestyle_support\">Healthy lifestyle skills</span></strong> — meal planning, wellbeing habits</p>\r\n</li>\r\n</ul>\r\n<p>All supports are <strong>goal‑focused</strong>, <strong>skill‑building</strong>, and aligned with the 2026 NDIS independence outcomes.</p>\r\n<p><span style=\"font-size: 14pt;\">🌈 <strong>Who This Support Is For</strong></span></p>\r\n<p>You may be eligible for Development‑Life Skills if you:</p>\r\n<ul role=\"list\">\r\n<li>\r\n<p>Want to build independence in daily living</p>\r\n</li>\r\n<li>\r\n<p>Need support learning practical skills</p>\r\n</li>\r\n<li>\r\n<p>Want to improve communication or social confidence</p>\r\n</li>\r\n<li>\r\n<p>Benefit from structured, gentle guidance</p>\r\n</li>\r\n<li>\r\n<p>Are self‑managed, plan‑managed or NDIA‑managed</p>\r\n</li>\r\n</ul>\r\n<p>This support helps you <strong>grow, learn and thrive</strong> in everyday life.</p>\r\n<p><span style=\"font-size: 14pt;\">🟩 <strong>What You Can Achieve</strong></span></p>\r\n<ul role=\"list\">\r\n<li>\r\n<p>Stronger daily living skills</p>\r\n</li>\r\n<li>\r\n<p>Better communication and social confidence</p>\r\n</li>\r\n<li>\r\n<p>Improved emotional awareness</p>\r\n</li>\r\n<li>\r\n<p>Clearer routines and organisation</p>\r\n</li>\r\n<li>\r\n<p>Increased independence at home and in the community</p>\r\n</li>\r\n<li>\r\n<p>Greater confidence making decisions</p>\r\n</li>\r\n<li>\r\n<p>A sense of pride in your abilities</p>\r\n</li>\r\n</ul>\r\n<p>These outcomes match the <strong>new NDIS focus on functional improvement and independence</strong>.</p>\r\n<h1><span style=\"font-size: 14pt;\">🟥 <strong>Why Choose Lifetime Community Care?</strong></span></h1>\r\n<ul role=\"list\">\r\n<li>\r\n<p>Friendly, supportive and respectful staff</p>\r\n</li>\r\n<li>\r\n<p>High‑contrast, easy‑to‑read communication</p>\r\n</li>\r\n<li>\r\n<p>Supports tailored to your goals and abilities</p>\r\n</li>\r\n<li>\r\n<p>Strong collaboration with OTs, BSPs &amp; allied health</p>\r\n</li>\r\n<li>\r\n<p>Safe, inclusive and culturally respectful environment</p>\r\n</li>\r\n<li>\r\n<p>Flexible scheduling to suit your lifestyle</p>\r\n</li>\r\n</ul>', '<p>Empowerment comes through practical skill development. We work directly with participants to build essential life skills, such as personal budgeting, meal planning, public transport travel training, household organization, and effective communication.</p>', '0117-developmentlife-skills-independent-living-skill-training', '1703562212350996118', 38, NULL, NULL, 0, 162, NULL, '', NULL, 'life-skills-01-gKjUlGwRfaSCy3MR7PQSWCBMaleqDpekJlAWmBT5.jpg', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2023-12-26 08:43:32', '2026-10-12 06:36:11'),
(383, NULL, 1964, '2026-08-19 03:37:07', 1, 'template-service-detail', NULL, '0136 | Group & Centre-Based Activities', 'Interactive Group Programs & Skill Building', '<h2><span style=\"font-size: 14pt;\">🌟 Fun, Social &amp; Skill‑Building Activities in a Safe, Supportive Space</span></h2>\r\n<p>Group &amp; Centre‑Based Activities help you <strong>connect with others, learn new skills, build confidence, and enjoy meaningful activities</strong> in a friendly, inclusive environment. Our programs support your <strong>social, emotional and daily living skills</strong>, while making sure you feel safe, respected and welcomed.</p>\r\n<p>We are committed to working closely with participants, families, OTs, BSPs and support coordinators to deliver personalised, respectful supports that align with NDIS goals.</p>\r\n<h1><span style=\"font-size: 14pt;\">🟦 <strong>What This Support Includes</strong></span></h1>\r\n<ul role=\"list\">\r\n<li>\r\n<p><strong><span tabindex=\"0\" role=\"button\" data-url=\"ca://s?q=Tell_me_more_about_creative_workshops\">Creative workshops</span></strong> — art, craft, music, photography</p>\r\n</li>\r\n<li>\r\n<p><strong><span tabindex=\"0\" role=\"button\" data-url=\"ca://s?q=Explain_social_groups_under_NDIS\">Social groups</span></strong> — games, conversations, peer connection</p>\r\n</li>\r\n<li>\r\n<p><strong><span tabindex=\"0\" role=\"button\" data-url=\"ca://s?q=Explain_daily_living_skill_training\">Daily living skill sessions</span></strong> — cooking, budgeting, routines</p>\r\n</li>\r\n<li>\r\n<p><strong><span tabindex=\"0\" role=\"button\" data-url=\"ca://s?q=Explain_confidence_building_activities\">Confidence‑building activities</span></strong></p>\r\n</li>\r\n<li>\r\n<p><strong><span tabindex=\"0\" role=\"button\" data-url=\"ca://s?q=Explain_music_and_movement_groups\">Music &amp; movement groups</span></strong></p>\r\n</li>\r\n<li>\r\n<p><strong><span tabindex=\"0\" role=\"button\" data-url=\"ca://s?q=Explain_wellbeing_programs\">Light exercise &amp; wellbeing programs</span></strong></p>\r\n</li>\r\n<li>\r\n<p><strong><span tabindex=\"0\" role=\"button\" data-url=\"ca://s?q=Explain_expressive_activities\">Drama &amp; expressive activities</span></strong></p>\r\n</li>\r\n<li>\r\n<p><strong><span tabindex=\"0\" role=\"button\" data-url=\"ca://s?q=Explain_supported_community_outings\">Supported community outings</span></strong></p>\r\n</li>\r\n</ul>\r\n<p>All activities are delivered in a <strong>safe, structured and supportive environment</strong>.</p>\r\n<h1><span style=\"font-size: 14pt;\">🌈 <strong>Who This Support Is For</strong></span></h1>\r\n<p>You may be eligible for Group &amp; Centre‑Based Activities if you want to:</p>\r\n<ul role=\"list\">\r\n<li>\r\n<p>Build social skills and confidence</p>\r\n</li>\r\n<li>\r\n<p>Enjoy group activities or creative programs</p>\r\n</li>\r\n<li>\r\n<p>Reduce isolation and connect with others</p>\r\n</li>\r\n<li>\r\n<p>Improve emotional wellbeing</p>\r\n</li>\r\n<li>\r\n<p>Learn new daily living skills</p>\r\n</li>\r\n<li>\r\n<p>Participate safely in community or centre‑based settings</p>\r\n</li>\r\n</ul>\r\n<p>This support helps you <strong>learn, connect and enjoy life</strong> in a way that suits your abilities and goals.</p>\r\n<h1><span style=\"font-size: 14pt;\">🟩 <strong>What You Can Achieve</strong></span></h1>\r\n<ul role=\"list\">\r\n<li>\r\n<p>Stronger social and communication skills</p>\r\n</li>\r\n<li>\r\n<p>Increased confidence and independence</p>\r\n</li>\r\n<li>\r\n<p>Better emotional wellbeing</p>\r\n</li>\r\n<li>\r\n<p>New friendships and community connections</p>\r\n</li>\r\n<li>\r\n<p>Improved daily living skills</p>\r\n</li>\r\n<li>\r\n<p>A sense of belonging and inclusion</p>\r\n</li>\r\n</ul>\r\n<p>These outcomes align with the <strong>2026 NDIS focus on independence and functional improvement</strong>.</p>\r\n<h1><span style=\"font-size: 14pt;\">🟥 <strong>Why Choose Lifetime Community Care?</strong></span></h1>\r\n<ul role=\"list\">\r\n<li>\r\n<p>Friendly, supportive staff</p>\r\n</li>\r\n<li>\r\n<p>High‑contrast, easy‑to‑read communication</p>\r\n</li>\r\n<li>\r\n<p>Fun, meaningful and personalised activities</p>\r\n</li>\r\n<li>\r\n<p>Inclusive, culturally safe environment</p>\r\n</li>\r\n<li>\r\n<p>Programs designed around your NDIS goals</p>\r\n</li>\r\n<li>\r\n<p>Flexible scheduling and group options</p>\r\n</li>\r\n</ul>', '<p>Our group activities provide structured, inclusive settings where participants can connect, make new friends, and build skills. Programs include creative workshops, arts and crafts, life-skills sessions, and wellness activities designed to foster social connection.</p>', 'participation-in-community-social-and-civic-activities', '1703562641907720056', 38, NULL, NULL, 0, 163, NULL, '', NULL, 'untitled-design-24-lh0r595FEd3VTME17hsh9VFj5xOjUCZE57TzQg4i.jpg', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2023-12-26 08:50:41', '2026-10-12 12:19:55');
INSERT INTO `cl_posts` (`id`, `uid`, `visiter`, `post_date`, `post_author`, `template`, `template_child`, `post_title`, `sub_title`, `post_content`, `post_excerpt`, `uri`, `page_key`, `post_type`, `post_category`, `category`, `post_parent`, `post_order`, `home_order`, `banner`, `audio`, `page_thumbnail`, `thumbnail`, `icon`, `page_video`, `meta_keyword`, `meta_description`, `associated_title`, `external_link`, `price`, `post_tags`, `project_status`, `status`, `global_post`, `published`, `is_active`, `is_draft`, `is_trashed`, `show_in_home`, `is_password_protected`, `comment`, `lang`, `created_at`, `updated_at`) VALUES
(384, NULL, 1653, '2026-08-19 03:40:09', 1, 'template-service-detail', NULL, '0138 | Assistance with Supported Independent Living (SIL)', '24/7 Independent Living Support', '<h4 data-path-to-node=\"6\"><em data-path-to-node=\"6\" data-index-in-node=\"0\">Empowering You to Live Independently — In Your Own Home or Ours</em></h4>\r\n<p data-path-to-node=\"7\">At <strong data-path-to-node=\"7\" data-index-in-node=\"3\">Lifetime Community Care</strong>, we believe everyone deserves to feel safe, comfortable, and empowered in their living environment. Our <strong data-path-to-node=\"7\" data-index-in-node=\"131\">Supported Independent Living (SIL)</strong> services provide tailored, 24/7 personal support designed for NDIS participants with higher support needs.</p>\r\n<p data-path-to-node=\"8\">Whether you want support in your current home or are looking to move into a quality shared house, our compassionate team is here to support your goals every step of the way.</p>\r\n<h3 data-path-to-node=\"10\"><strong data-path-to-node=\"10\" data-index-in-node=\"0\">Flexible Support Options to Fit Your Life</strong></h3>\r\n<h4 data-path-to-node=\"11\">🏠 <strong data-path-to-node=\"11\" data-index-in-node=\"3\">SIL in Your Own Home</strong></h4>\r\n<p data-path-to-node=\"12\">Prefer to stay where you are? We bring our high-quality support directly to you.</p>\r\n<ul data-path-to-node=\"13\">\r\n<li>\r\n<p data-path-to-node=\"13,0,0\">Tailored care packages designed around your existing living situation.</p>\r\n</li>\r\n<li>\r\n<p data-path-to-node=\"13,1,0\">Overnight support (active overnight or sleepover options).</p>\r\n</li>\r\n<li>\r\n<p data-path-to-node=\"13,2,0\">Complete support with daily routines while keeping your familiar surroundings.</p>\r\n</li>\r\n</ul>\r\n<h4 data-path-to-node=\"14\">🏡 <strong data-path-to-node=\"14\" data-index-in-node=\"3\">SIL in a Shared Community House</strong></h4>\r\n<p data-path-to-node=\"15\">Looking for a new place to live with like-minded housemates?</p>\r\n<ul data-path-to-node=\"16\">\r\n<li>\r\n<p data-path-to-node=\"16,0,0\">Modern, accessible homes tailored for high support needs.</p>\r\n</li>\r\n<li>\r\n<p data-path-to-node=\"16,1,0\">Matched housemates based on shared interests, routines, and personalities.</p>\r\n</li>\r\n<li>\r\n<p data-path-to-node=\"16,2,0\">24/7 on-site support staff to foster a fun, safe, and collaborative home environment.</p>\r\n</li>\r\n</ul>\r\n<h3 data-path-to-node=\"18\"><strong data-path-to-node=\"18\" data-index-in-node=\"0\">What We Help With</strong></h3>\r\n<p data-path-to-node=\"19\">No matter where you live, our experienced team supports you with everyday tasks:</p>\r\n<ul data-path-to-node=\"20\">\r\n<li>\r\n<p data-path-to-node=\"20,0,0\">🚿 <strong data-path-to-node=\"20,0,0\" data-index-in-node=\"3\">Personal Care:</strong> Respectful, dignified assistance with showering, dressing, grooming, and hygiene.</p>\r\n</li>\r\n<li>\r\n<p data-path-to-node=\"20,1,0\">🍳 <strong data-path-to-node=\"20,1,0\" data-index-in-node=\"3\">Daily Living &amp; Meals:</strong> Support with meal planning, grocery shopping, cooking, and household chores.</p>\r\n</li>\r\n<li>\r\n<p data-path-to-node=\"20,2,0\">💊 <strong data-path-to-node=\"20,2,0\" data-index-in-node=\"3\">Health &amp; Medication:</strong> Medication administration, health supervision, and routine appointments.</p>\r\n</li>\r\n<li>\r\n<p data-path-to-node=\"20,3,0\">🧠 <strong data-path-to-node=\"20,3,0\" data-index-in-node=\"3\">Skill Building:</strong> Hands-on support to build daily independence, decision-making, and self-confidence.</p>\r\n</li>\r\n<li>\r\n<p data-path-to-node=\"20,4,0\">🤝 <strong data-path-to-node=\"20,4,0\" data-index-in-node=\"3\">Community Connection:</strong> Assistance with getting out into the community, social activities, and hobbies.</p>\r\n</li>\r\n</ul>\r\n<h3 data-path-to-node=\"22\"><strong data-path-to-node=\"22\" data-index-in-node=\"0\">Why Choose Lifetime Community Care?</strong></h3>\r\n<ul>\r\n<li>\r\n<p data-path-to-node=\"23,0,0\"><strong data-path-to-node=\"23,0,0\" data-index-in-node=\"0\">Person-Centered Care:</strong> Your routines, lifestyle, and choices always drive our care.</p>\r\n</li>\r\n<li>\r\n<p data-path-to-node=\"23,1,0\"><strong data-path-to-node=\"23,1,0\" data-index-in-node=\"0\">Compatibility First:</strong> For shared homes, we take time to ensure housemate compatibility so you feel truly at home.</p>\r\n</li>\r\n<li>\r\n<p data-path-to-node=\"23,2,0\"><strong data-path-to-node=\"23,2,0\" data-index-in-node=\"0\">Experienced Staff:</strong> Qualified carers trained to handle complex health and high-intensity support needs.</p>\r\n</li>\r\n</ul>', '<p>Supported Independent Living (SIL) gives participants the freedom of living independently with round-the-clock peace of mind. We provide 24/7 assistance with personal care, daily household management, skill-building, and overnight care tailored to your individual support needs.</p>', 'assistance-with-daily-personal-activitie', '1704154150863685550', 38, NULL, NULL, 0, 164, NULL, '', NULL, 'grooming-NQBrXdKnU0mpZVA2TMFJwug281qVeuyHaQvtPTvB.jpg', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2024-01-02 05:09:10', '2026-10-12 11:39:16');

-- --------------------------------------------------------

--
-- Table structure for table `cl_post_categories`
--

CREATE TABLE `cl_post_categories` (
  `id` int UNSIGNED NOT NULL,
  `post_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_caption` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_content` text COLLATE utf8mb4_unicode_ci,
  `uri` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int DEFAULT '0',
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_post_featured_images`
--

CREATE TABLE `cl_post_featured_images` (
  `id` int UNSIGNED NOT NULL,
  `post_id` int NOT NULL,
  `featured_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_image_caption` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_image_status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_post_portfolio`
--

CREATE TABLE `cl_post_portfolio` (
  `id` int UNSIGNED NOT NULL,
  `post_id` int UNSIGNED NOT NULL,
  `portfolio_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cl_post_portfolio`
--

INSERT INTO `cl_post_portfolio` (`id`, `post_id`, `portfolio_id`, `created_at`, `updated_at`) VALUES
(260, 151, 8, NULL, NULL),
(261, 151, 9, NULL, NULL),
(262, 151, 17, NULL, NULL),
(263, 151, 19, NULL, NULL),
(264, 151, 21, NULL, NULL),
(270, 152, 8, NULL, NULL),
(271, 152, 9, NULL, NULL),
(272, 152, 17, NULL, NULL),
(273, 152, 19, NULL, NULL),
(274, 152, 21, NULL, NULL),
(280, 154, 8, NULL, NULL),
(281, 154, 9, NULL, NULL),
(282, 154, 17, NULL, NULL),
(283, 154, 19, NULL, NULL),
(284, 154, 21, NULL, NULL),
(285, 217, 19, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cl_post_type`
--

CREATE TABLE `cl_post_type` (
  `id` int UNSIGNED NOT NULL,
  `uid` varchar(49) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `post_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordering` int DEFAULT '0',
  `is_menu` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `is_footer_menu` tinyint(1) DEFAULT '0',
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cl_post_type`
--

INSERT INTO `cl_post_type` (`id`, `uid`, `post_type`, `uri`, `caption`, `content`, `meta_keyword`, `meta_description`, `template`, `banner`, `featured`, `ordering`, `is_menu`, `is_footer_menu`, `status`, `created_at`, `updated_at`) VALUES
(37, 'Lifetime Community Care', 'About', 'about', '<p>We are here to provide you with accommodation and housing, community connection, disability support and employment services so that you can live the life you choose and feel connected in your community.</p>', '<p><strong>At Lifetime Community Care, our culture and values are central to how we deliver support. We believe every person deserves fairness, hope, courage and perseverance—and these values guide the way we work with participants, families, carers and each other.</strong></p>\r\n<p><strong>Our team is committed to creating a safe, positive and inclusive environment where staff are empowered, engaged and dedicated to providing high‑quality services. These values help every team member contribute meaningfully to our mission and strategic goals.</strong></p>\r\n<p><strong>To ensure clarity, professionalism and accountability, our Code of Conduct outlines the standards of behaviour expected from all staff. It provides a shared understanding of how we treat participants, families, partners and colleagues—with respect, dignity and ethical practice. Building on our values, it supports us to deliver safe, person‑centred and high‑quality services every day.</strong></p>\r\n<p> </p>\r\n<h1><strong>Our Culture &amp; Values</strong></h1>\r\n<p>At <strong>Lifetime Community Care</strong>, our culture and values guide everything we do. We believe every person deserves <strong>fairness</strong>, <strong>hope</strong>, <strong>courage</strong>, and <strong>perseverance</strong> — and these values shape how we support participants, families, carers, and each other.</p>\r\n<div> </div>\r\n<h2>🟦 <strong>Fairness</strong></h2>\r\n<p>We treat every participant with respect, dignity, and equality. Our decisions and actions are guided by what is right, transparent, and ethical.</p>\r\n<h2>🟩 <strong>Hope</strong></h2>\r\n<p>We believe in every person’s potential. We support participants to build confidence, independence, and a positive future.</p>\r\n<h2>🟧 <strong>Courage</strong></h2>\r\n<p>We stand up for participant rights and deliver support with strength, honesty, and integrity — even when challenges arise.</p>\r\n<h2>🟥 <strong>Perseverance</strong></h2>\r\n<p>We stay committed, consistent, and reliable. We work with participants to overcome barriers and achieve meaningful goals.</p>\r\n<div> </div>\r\n<h1>💙 <strong>Our Code of Conduct</strong></h1>\r\n<p>Our <strong>Lifetime Community Care Code of Conduct</strong> sets clear expectations for how we behave at work — towards participants, families, carers, partners, and each other.</p>', NULL, NULL, 'page', 'blue-modern-just-listed-real-estate-linkedin-article-cover-image-ztIRgi5PUqxjuAv1nPV5btI6pplwJMOUJhgrpkn0.png', 'about-1-hrgBIh3AfPfj4pNXsm8SpM8ZKJB5uDNqfpa3J2Je.jpg', 1, '1', 0, '1', '2023-11-19 03:16:22', '2026-08-19 06:29:56'),
(38, NULL, 'Services', 'services', '<p class=\"text-center mb-0\">Lifetime community care who provide a variety of services in New South Wales for now.</p>\r\n<p>We offer the following services.</p>', NULL, NULL, NULL, 'posttypeTemplate-service', 'assistance-in-coordinating-rX3YWDlXTVoGfDMHDPksaPPlO9uRrLkeNdUxxgTb.jpg', NULL, 2, '1', 0, '1', '2023-11-19 03:22:15', '2023-12-27 06:04:40'),
(39, NULL, 'Blog', 'blog', NULL, NULL, NULL, NULL, 'posttypeTemplate-blog-news', 'whatsapp-image-2024-01-09-at-08-Bib80PbYVkyNfIu5SOeddUQzolce6VWA6dQPRrnn.jpg', NULL, 4, '1', 0, '1', '2023-11-19 03:22:30', '2024-01-09 09:15:02'),
(40, NULL, 'Contact Us', 'contact', NULL, NULL, NULL, NULL, 'posttypeTemplate-contact-us', 'volunteer-selecting-organizing-clothes-donations-charity-7qoTQiZa3lZo8RWvKPAHnyUrGfgnNNjlg6T6HX5m.jpg', NULL, 7, '1', 0, '1', '2023-11-19 03:22:46', '2026-09-30 06:44:09'),
(41, 'Make an impact. Save lives.', 'Career', 'career', NULL, NULL, NULL, NULL, 'posttypeTemplate-career', '20231227-130213-0000-tFhSyiX29Zp4XQCjWazDaZ286nbkb9ouAWTefAlw.png', '20231227-130213-0000-cS2XK3f7is43tWHMRf8sDAr2CIiSJ7l8mqk1CnUv.png', 6, '1', 0, '1', '2023-11-19 03:39:19', '2024-01-05 10:31:39'),
(43, NULL, 'Review', 'review', NULL, NULL, NULL, NULL, 'page', '', '', 8, '0', 0, '1', '2023-11-22 00:34:45', '2023-12-26 09:38:00'),
(44, 'Welcome to Lifetime Community Care', 'Why with us', 'why-with-us', NULL, '<p>Lifetime Community Care is a <strong>registered NDIS provider</strong> dedicated to delivering safe, high‑quality and person‑centred support. We provide <strong>round‑the‑clock assistance — 24 hours a day, 7 days a week —</strong> to ensure participants always have access to reliable, compassionate care, including after‑hours support when it’s needed most.</p>\r\n<p>Our services are available to individuals aged <strong>7 to 65</strong>, and we proudly support people of <strong>all backgrounds, cultures, genders and sexualities</strong>. Every participant is treated with <strong>respect, dignity and choice</strong>, in line with the <strong>NDIS Code of Conduct</strong> and <strong>NDIS Practice Standards</strong>.</p>\r\n<p>We work closely with <strong>participants, families, OTs, BSPs, plan managers and support coordinators</strong> to deliver personalised supports that promote independence, wellbeing and meaningful outcomes.</p>', NULL, NULL, 'page', '', '', 7, '0', 0, '1', '2023-11-22 04:57:46', '2026-08-19 08:37:56'),
(45, 'Looking for a accommodation...', 'Accommodation', 'accommodation', NULL, '<p><strong>Lifetime Community Care with highly Knowledgeable team will accommodate with:</strong></p>\r\n<ol>\r\n<li>Support Independent living&nbsp;</li>\r\n<li>Short Term Accommodation (STA)</li>\r\n<li>Specialist Disability Accommodation (SDA)</li>\r\n<li>Medium Term Accommodation (MTA)</li>\r\n</ol>\r\n<p>&nbsp;</p>', NULL, NULL, 'posttypeTemplate-service', 'disabilty-house-2-kglmkex4bpf9qq6edzs55j0gy8mvssnt8mo19xq0-CjSLA6f9QBjJZL2PVhilsOheLffNdcCOjREXkSFq.jpg', 'disabilty-house-2-kGLMKeX4BPF9Qq6EdzS55j0gy8mvSsnt8mO19Xq0.jpg', 3, '1', 0, '1', '2023-12-22 05:56:45', '2024-01-09 04:11:37'),
(47, NULL, 'Privacy Policy', 'privacy-policy', NULL, '<p style=\"text-align: justify;\"><span style=\"color: #000000;\">This Privacy Policy outlines how <strong>Lifetime Community Care</strong> collects, uses, handles, stores, and discloses personal and sensitive information in accordance with the Privacy Act 1988 (Cth), the Australian Privacy Principles (APPs), and the NDIS Quality and Safeguards Commission guidelines.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"color: #000000;\"><strong>1. Personal &amp; Sensitive Information We Collect</strong></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"color: #000000;\">To deliver safe, high-quality, and tailored NDIS supports, Lifetime Community Care may collect:</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"color: #000000;\"><strong>Personal Details</strong>: Full name, date of birth, home address, email address, phone number, emergency contacts, and legal representatives/advocates.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"color: #000000;\"><strong>NDIS Details:</strong> NDIS participant reference number, plan details, goals, and funding management type (Self-Managed, Plan-Managed, or NDIA-Managed).</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"color: #000000;\"><strong>Health &amp; Support Needs</strong>: Diagnosis, medical reports, support requirements, health practitioner contacts, and risk assessment notes.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"color: #000000;\"><strong>Financial &amp; Payment Data</strong>: Bank account or billing details required for plan managers or NDIA claim processing.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"color: #000000;\"><strong>2. How We Collect Information</strong></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"color: #000000;\">We collect information directly from you (the participant) or your authorized representative during the intake process, support planning, service delivery, or through our website forms. With your informed consent, we may also collect information from third parties, such as external health professionals, Support Coordinators, or the NDIA.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"color: #000000;\"><strong>3. Use and Disclosure of Information</strong></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"color: #000000;\">Lifetime Community Care uses and shares your information strictly for:</span></p>\r\n<ul style=\"text-align: justify;\">\r\n<li style=\"color: #000000;\"><span style=\"color: #000000;\">Planning, delivering, and managing your NDIS supports.</span></li>\r\n<li style=\"color: #000000;\"><span style=\"color: #000000;\">Processing invoices and claiming funds via the NDIS portal or Plan Managers.</span></li>\r\n<li style=\"color: #000000;\"><span style=\"color: #000000;\">Complying with statutory reporting requirements under the NDIS Act 2013 and NDIS Quality and Safeguards Commission rules.</span></li>\r\n<li style=\"color: #000000;\"><span style=\"color: #000000;\">Preventing or mitigating a serious and imminent threat to an individual\'s life, health, safety, or public safety.</span></li>\r\n</ul>\r\n<p style=\"text-align: justify;\"><span style=\"color: #000000;\">We <strong>do not</strong> sell, trade, or share your personal information with third parties for marketing purposes.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"color: #000000;\"><strong>4. Data Security &amp; Storage</strong></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"color: #000000;\">Lifetime Community Care takes reasonable technical and organizational steps to protect your personal information against loss, misuse, unauthorized access, or disclosure. Digital files are stored on secure, encrypted servers, and physical files are maintained in locked storage facilities restricted to authorized personnel.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"color: #000000;\"><strong>5. Access, Correction, and Privacy Complaints</strong></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"color: #000000;\"><strong>Accessing &amp; Correcting Data</strong>: You have the right to request access to the personal information we hold about you or request corrections if it is inaccurate or out of date.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"color: #000000;\"><strong>Feedback &amp; Complaints</strong>: If you have concerns about how your personal information has been handled, please contact us directly:</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"color: #000000;\"><strong>Email</strong>:</span> <span style=\"color: #236fa1;\"><strong><a style=\"color: #236fa1;\" href=\"mailto:info@lifetimecommunitycare.com.au\">info@lifetimecommunitycare.com.au</a></strong></span><br><span style=\"color: #000000;\"><strong>Phone</strong>:</span> <strong><a class=\"site-footer-link\" href=\"tel: 0433 750 278\"><span style=\"color: #236fa1;\">0433 750 278</span></a></strong><br><span style=\"color: #000000;\"><strong>Address</strong>: 95 Banfield Drive, ORAN PARK NSW 2570</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"color: #000000;\">If you are unsatisfied with our response, you may escalate your complaint to the <strong>Office of the Australian Information Commissioner (OAIC)</strong> at</span> <span style=\"color: #236fa1;\"><strong><a style=\"color: #236fa1;\" href=\"https://www.oaic.gov.au\">www.oaic.gov.au</a></strong></span> <span style=\"color: #000000;\">or the <strong>NDIS Quality and Safeguards Commission</strong> at</span> <a href=\"https://www.ndiscommission.gov.au\"><strong><span style=\"color: #236fa1;\">www.ndiscommission.gov.au</span></strong></a>.</p>', NULL, NULL, 'posttypeTemplate-service', '', '', 9, '0', 0, '1', '2026-08-20 14:08:21', '2026-09-23 11:44:01'),
(48, NULL, 'Terms & Conditions', 'terms-conditions', NULL, '<div class=\"v1elementToProof\" style=\"text-align: justify;\"><span style=\"font-size: 18pt; color: #000000;\"><strong>Terms &amp; Conditions</strong></span></div>\r\n<div class=\"v1elementToProof\" style=\"text-align: justify;\"><br><span style=\"color: #000000;\"><strong>Effective Date</strong>: 23 September 2026</span><br><span style=\"color: #000000;\"><strong>Document Version</strong>: 2026.1</span></div>\r\n<div class=\"v1elementToProof\" style=\"text-align: justify;\"><br><span style=\"color: #000000;\">Welcome to <strong>Lifetime Community Care</strong> (ABN: 32 878 004 993). By accessing our website (<a style=\"color: #000000;\" href=\"https://www.lifetimecommunitycare.com.au\"><strong><span style=\"color: #236fa1;\">www.lifetimecommunitycare.com.au</span></strong></a>), submitting inquiries, or initiating a participant intake or referral process, you agree to comply with and be bound by the following Terms and Conditions.</span><br><br></div>\r\n<div class=\"v1elementToProof\" style=\"text-align: justify;\"><span style=\"color: #000000;\">If you do not agree with any part of these terms, you must immediately cease using this website and our digital channels.</span><br><br></div>\r\n<div class=\"v1elementToProof\" style=\"text-align: justify;\"><span style=\"color: #000000;\"><strong>1. NDIS Support Framework &amp; Service Initiation<br><br></strong></span></div>\r\n<ul style=\"text-align: justify;\">\r\n<li style=\"color: #000000;\"><span style=\"color: #000000;\"><strong>Regulatory Compliance</strong>: All disability supports and care services coordinated or discussed via this Site comply strictly with the <em>National Disability Insurance Scheme Act 2013 (Cth)</em>, the <em>National Disability Insurance Scheme Amendment (Securing the NDIS for Future Generations) Act 2026</em>, and the quality expectations of the NDIS Quality and Safeguards Commission.</span><br><br></li>\r\n<li style=\"color: #000000;\"><span style=\"color: #000000;\"><strong>No Automatic Service Binding</strong>: Submitting a referral form, email inquiry, or online intake request through this Site does not constitute an automatic agreement to deliver services. Service delivery is strictly dependent on capacity, risk screening, and the formal execution of a separate, written <strong>NDIS Service Agreement</strong>.</span><br><br></li>\r\n<li style=\"color: #000000;\">\r\n<div><span style=\"color: #000000;\"><strong>Pricing Framework</strong>: All services invoiced by Lifetime Community Care adhere to the rates, rules, and conditions outlined in the current <strong>NDIS Pricing Schedule</strong> (replacing the previous PAPL guidelines). Short-notice cancellations will be applied strictly within the limits dictated by the NDIA. </span></div>\r\n</li>\r\n</ul>\r\n<div class=\"v1elementToProof\" style=\"text-align: justify;\"><span style=\"color: #000000;\"><strong>2. User Accounts, Digital Security &amp; Portal Usage<br><br></strong></span></div>\r\n<ul style=\"text-align: justify;\">\r\n<li style=\"color: #000000;\"><span style=\"color: #000000;\"><strong>Data Integrity &amp; Referrals</strong>: When submitting details via our Online NDIS Referral Portal, you warrant that all information provided is accurate, current, and true. If you are a third-party referrer (e.g., Support Coordinator, Local Area Coordinator, or family member), you warrant that you have obtained <strong>express, documented consent</strong> from the NDIS participant or their legal guardian before transmitting their information.</span><br><br></li>\r\n<li style=\"color: #000000;\"><span style=\"color: #000000;\"><strong>Prohibited Activities</strong>: You agree not to use the Site to transmit malicious code, attempt unauthorized access to corporate accounts, or scrape care data or digital assets.</span></li>\r\n</ul>\r\n<div class=\"v1elementToProof\" style=\"text-align: justify;\"><span style=\"color: #000000;\"><strong>3. Safety, Risks &amp; The NDIS Code of Conduct<br><br></strong></span></div>\r\n<ul style=\"text-align: justify;\">\r\n<li style=\"color: #000000;\"><span style=\"color: #000000;\"><strong>Zero Tolerance</strong>: Lifetime Community Care operates a zero-tolerance policy regarding harassment, discrimination, or abusive communication directed at our staff, whether through digital forms, email, or telephone channels.</span><br><br></li>\r\n<li style=\"color: #000000;\">\r\n<div><span style=\"color: #000000;\"><strong>Disclosure of Safety Concerns</strong>: For safety and risk management, participants or their representatives are required during the intake phase to disclose any known behavioral triggers, authorized restrictive practices, or high-risk medical alerts so that safe care planning can be established.</span></div>\r\n</li>\r\n</ul>\r\n<div class=\"v1elementToProof\" style=\"text-align: justify;\"><span style=\"color: #000000;\"><strong>4. Privacy and Sensitive Health Data<br><br></strong></span></div>\r\n<ul style=\"text-align: justify;\">\r\n<li style=\"color: #000000;\"><span style=\"color: #000000;\"><strong>Information Governance</strong>: Lifetime Community Care securely collects, handles, and stores personal and highly sensitive health data in compliance with the <em>Privacy Act 1988 (Cth)</em>, the Australian Privacy Principles (APPs), and NDIS privacy requirements.</span><br><br></li>\r\n<li style=\"color: #000000;\"><span style=\"color: #000000;\"><strong>Data Restrictions</strong>: We do not trade, sell, or leverage participant details or coordinator email rosters for independent commercial marketing purposes.</span></li>\r\n</ul>\r\n<div class=\"v1elementToProof\" style=\"text-align: justify;\"><span style=\"color: #000000;\"><strong>5. Intellectual Property &amp; Brand Protection<br><br></strong></span></div>\r\n<ul style=\"text-align: justify;\">\r\n<li style=\"color: #000000;\"><span style=\"color: #000000;\"><strong>Proprietary Material</strong>: All content housed on this website—including text layout, specialized referral structures, intake forms, graphics, logos, and digital imagery—is the intellectual property of <strong>Lifetime Community Care</strong> and is legally protected under Australian copyright laws.</span><br><br></li>\r\n<li style=\"color: #000000;\">\r\n<div><span style=\"color: #000000;\"><strong>NDIS Trademark Disclaimer</strong>: \"NDIS\" and the accompanying visual branding elements are registered trademarks belonging to the National Disability Insurance Agency (NDIA). Lifetime Community Care references these trademarks and uses authorized taglines purely to declare its professional capability as an independent disability service provider and holds no direct operational affiliation with or ownership by the NDIA. </span></div>\r\n</li>\r\n</ul>\r\n<div class=\"v1elementToProof\" style=\"text-align: justify;\"><span style=\"color: #000000;\"><strong>6. Liability, Indemnity &amp; External Links<br><br></strong></span></div>\r\n<ul style=\"text-align: justify;\">\r\n<li style=\"color: #000000;\">\r\n<div><span style=\"color: #000000;\"><strong>Limitation of Website Liability</strong>: To the maximum extent allowable under <em>Australian Consumer Law</em>, Lifetime Community Care makes no guarantees that this website will operate uninterrupted or entirely error-free. We accept no liability for third-party digital failures or information inaccuracies found on linked portals (such as external links leading to the NDIS Commission portal or government resource pages). </span></div>\r\n</li>\r\n</ul>\r\n<div class=\"v1elementToProof\" style=\"text-align: justify;\"><span style=\"color: #000000;\"><strong>7. Mechanism for Amending Terms<br><br></strong></span></div>\r\n<ul style=\"text-align: justify;\">\r\n<li style=\"color: #000000;\"><span style=\"color: #000000;\"><strong>Right of Modification</strong>: Lifetime Community Care reserves the right to modify or replace these website Terms &amp; Conditions at any point without prior individual notice.</span><br><br></li>\r\n<li style=\"color: #000000;\">\r\n<div><span style=\"color: #000000;\"><strong>Review Obligation</strong>: The version marker at the head of this page highlights the most recent publication date. Continued interaction with the Site following updates constitutes binding acceptance of the revised Terms and Conditions. </span></div>\r\n</li>\r\n</ul>\r\n<div class=\"v1elementToProof\" style=\"text-align: justify;\"><span style=\"color: #000000;\"><strong>8. Feedback, Appeals, &amp; Corporate Contacts<br></strong></span></div>\r\n<div class=\"v1elementToProof\" style=\"text-align: justify;\"><br><span style=\"color: #000000;\">For questions surrounding these digital Terms and Conditions, or to flag a standard compliance issue, please reach out to our management team directly:</span></div>\r\n<ul style=\"text-align: justify;\">\r\n<li style=\"color: #000000;\">\r\n<div><span style=\"color: #000000;\"><strong>Email</strong>: <span style=\"color: #236fa1;\"><strong><a style=\"color: #236fa1;\" href=\"mailto:info@lifetimecommunitycare.com.au\">info@lifetimecommunitycare.com.au</a></strong></span></span></div>\r\n</li>\r\n<li style=\"color: #000000;\"><span style=\"color: #000000;\"><strong>Headquarters Address</strong>: 95 Banfield Drive, Oran Park NSW 2570</span></li>\r\n</ul>\r\n<div class=\"v1elementToProof\" style=\"text-align: justify;\"><span style=\"color: #000000;\">If you are unsatisfied with how a service matter is handled, you maintain the legal right to escalate concerns directly to the <strong>NDIS Quality and Safeguards Commission</strong> by calling <span style=\"color: #236fa1;\"><a style=\"color: #236fa1;\" href=\"/type/posttype/48/1800%20035%20544\"><strong>1800 035 544</strong></a></span>.</span></div>', NULL, NULL, 'posttypeTemplate-service', 'image-14-MyyTygWjteVhn10g4JUL6oZoGNFRLAh5OQWvQUQ5.png', 'image-14-Mk7eU2WkD5u3ZfZcYT5G2qBBB90WASkzVgCczoXa.png', 10, '0', 0, '1', '2026-08-20 14:13:33', '2026-09-23 12:55:36');

-- --------------------------------------------------------

--
-- Table structure for table `cl_post_videos`
--

CREATE TABLE `cl_post_videos` (
  `id` int UNSIGNED NOT NULL,
  `post_id` int NOT NULL,
  `featured_video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_video_caption` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_video_status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_roles`
--

CREATE TABLE `cl_roles` (
  `id` bigint UNSIGNED NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cl_roles`
--

INSERT INTO `cl_roles` (`id`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Superadmin', '2018-07-01 09:56:16', '2020-08-16 14:47:31'),
(2, 'Admin', '2018-07-01 09:56:34', '2020-08-16 14:47:43'),
(3, 'General', '2020-08-16 14:47:05', '2020-08-16 14:47:05');

-- --------------------------------------------------------

--
-- Table structure for table `cl_settings`
--

CREATE TABLE `cl_settings` (
  `id` int UNSIGNED NOT NULL,
  `num_of_inquiries` int DEFAULT '0',
  `site_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone2` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_primary` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_secondary` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci,
  `facebook_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_plus` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_link` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signin_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signup_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_key` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `google_map` text COLLATE utf8mb4_unicode_ci,
  `google_map2` text COLLATE utf8mb4_unicode_ci,
  `welcome_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `welcome_text` text COLLATE utf8mb4_unicode_ci,
  `copyright_text` text COLLATE utf8mb4_unicode_ci,
  `field1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cl_settings`
--

INSERT INTO `cl_settings` (`id`, `num_of_inquiries`, `site_name`, `location1`, `location2`, `address2`, `website2`, `phone`, `phone2`, `email_primary`, `email_secondary`, `website`, `address`, `facebook_link`, `linkedin_link`, `youtube_link`, `twitter_link`, `google_plus`, `instagram_link`, `location_link`, `signin_url`, `signup_url`, `experience`, `meta_key`, `meta_description`, `google_map`, `google_map2`, `welcome_title`, `welcome_text`, `copyright_text`, `field1`, `field2`, `field3`, `field4`, `created_at`, `updated_at`) VALUES
(1, 46, 'Lifetime Community Care', '95 Banfield Drive, ORAN PARK NSW 2570', NULL, NULL, NULL, '0433 750 278', 'ABN: 32878004993', 'info@lifetimecommunitycare.com.au', 'info@lifetimecommunitycare.com.au', NULL, NULL, 'https://www.facebook.com', 'https://facebook.com/', 'https://youtube.com/', 'https://facebook.com', '+61433750278', 'https://www.instagram.com/lifetimecommunitycare/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.google.com/maps/place/95+Banfield+Dr,+Oran+Park+NSW+2570,+Australia/@-34.0127598,150.7466518,17z/data=!3m1!4b1!4m6!3m5!1s0x6b12f21f09d74247:0xc3bf484c06b37551!8m2!3d-34.0127598!4d150.7466518!16s%2Fg%2F11tcvh2qfk?entry=ttu', NULL, NULL, 'Copyright © 2026 Lifetime Community Care Designed by Cyberlink Pvt. Ltd.', NULL, NULL, NULL, NULL, NULL, '2026-08-20 14:19:12');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contact` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_general_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `first_name`, `last_name`, `contact`, `address`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Anish', 'Shrestha', NULL, NULL, 'ab143shrestha@gmail.com', NULL, '2025-03-30 17:45:30', '2025-03-30 17:45:30'),
(2, 'demibrooks.dev@gmail.com', 'Brooks', NULL, NULL, 'demibrooks.dev@gmail.com', 'Hello lifetimecommunitycare.com.au,\r\n\r\nBring in 10 to 20 organic clients who value your services using white-hat SEO techniques.\r\n\r\nLet me know if you\'d like more information about our offerings and solutions.\r\n\r\nWell wishes,\r\nDemi Brooks | Digital Marketing Manager\r\n\r\n\r\nNote: - If you’re not Interested in our Services, send us  \"opt-out\"', '2025-04-18 08:56:00', '2025-04-18 08:56:00'),
(3, 'demibrooks.dev@gmail.com', 'Brooks', NULL, NULL, 'demibrooks.dev@gmail.com', 'Hello lifetimecommunitycare.com.au,\r\n\r\nLet me start with a question: do you have trouble generating leads and less website traffic?\r\n\r\nAre you interested in hearing more details?\r\n\r\nWell wishes,\r\nDemi Brooks | Digital Marketing Manager\r\n\r\n\r\nNote: - If you’re not Interested in our Services, send us  \"opt-out\"', '2025-04-22 20:18:15', '2025-04-22 20:18:15'),
(4, 'Sofia', 'Rossi', NULL, NULL, 'sofiarossigod@gmail.com', 'Hi,\r\n\r\nI hope this email finds you well.\r\n\r\nI am reaching out to offer professional services in website design, web development, and software development. To help you evaluate the quality of my work with complete confidence, I would be happy to provide a free website design mockup (PSD) based on your requirements.\r\n\r\nYou can review the design mockup at no cost. If you find the design suitable and aligned with your expectations, we can then proceed with the next steps of development.\r\n\r\nServices offered include:\r\n• Website Design (UI/UX, responsive layouts)\r\n• Web Development\r\n• Custom Software Development\r\n\r\nThis approach allows you to assess design quality before making any commitment.\r\n\r\nI would be glad to discuss your ideas and prepare a mockup tailored to your needs.\r\n\r\nKind regards,\r\nSofia Rossi', '2026-02-02 09:23:14', '2026-02-02 09:23:14'),
(5, 'Albin', 'Shrestha', NULL, NULL, 'albindaguy.cool@gmail.com', 'Hi babs', '2026-02-08 11:00:01', '2026-02-08 11:00:01'),
(6, 'test', 'cyberlink', NULL, NULL, 'developer.cyberlink@gmail.com', 'test', '2026-03-16 10:10:13', '2026-03-16 10:10:13'),
(7, 'Lyle', 'Stokes', NULL, NULL, 'qocodaguho@mailinator.com', 'In doloribus quidem', '2026-03-16 10:12:03', '2026-03-16 10:12:03'),
(8, 'test', 'test', NULL, NULL, 'anil@gmail.com', 'test', '2026-03-16 11:04:55', '2026-03-16 11:04:55'),
(9, 'test', 'test', NULL, NULL, 'anil@gmail.com', 'test', '2026-03-16 11:07:18', '2026-03-16 11:07:18'),
(10, 'bemibrooks.dev@gmail.com', 'Brooks', NULL, NULL, 'bemibrooks.dev@gmail.com', 'Hello lifetimecommunitycare.com.au,\r\n\r\nWould you like to generate more leads, increase organic traffic, and improve your visibility on Google and AI platforms with SEO, AEO, and GEO?\r\n\r\nIf you\'re interested, I\'d be happy to share a customized strategy for your website.\r\n\r\nWell wishes,\r\nBemi Brooks| Digital Marketing Manager\r\n\r\n\r\nNote: - If you’re not Interested in our Services, send us  \"No\"', '2026-08-14 09:17:13', '2026-08-14 09:17:13');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us_services_rel`
--

CREATE TABLE `contact_us_services_rel` (
  `id` bigint UNSIGNED NOT NULL,
  `contact_us_id` int DEFAULT NULL,
  `service_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us_services_rel`
--

INSERT INTO `contact_us_services_rel` (`id`, `contact_us_id`, `service_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Household Tasks', '2025-03-30 17:45:30', '2025-03-30 17:45:30'),
(2, 2, 'Assistance with Daily Personal Activitie', '2025-04-18 08:56:01', '2025-04-18 08:56:01'),
(3, 2, 'Participation in Community, Social and Civic Activities', '2025-04-18 08:56:01', '2025-04-18 08:56:01'),
(4, 2, 'Development of Daily Living and Life Skills', '2025-04-18 08:56:01', '2025-04-18 08:56:01'),
(5, 2, 'Assistance with Daily Personal Activities', '2025-04-18 08:56:01', '2025-04-18 08:56:01'),
(6, 2, 'Group/Centre Activities', '2025-04-18 08:56:01', '2025-04-18 08:56:01'),
(7, 2, 'Assistance in Coordinating or Managing Life Stages', '2025-04-18 08:56:01', '2025-04-18 08:56:01'),
(8, 2, 'Household Tasks', '2025-04-18 08:56:01', '2025-04-18 08:56:01'),
(9, 2, 'Innovative Community Participation', '2025-04-18 08:56:01', '2025-04-18 08:56:01'),
(10, 2, 'Community Nursing Care', '2025-04-18 08:56:01', '2025-04-18 08:56:01'),
(11, 2, 'Assistance with Travel and Transport Arrangements', '2025-04-18 08:56:01', '2025-04-18 08:56:01'),
(12, 3, 'Assistance with Daily Personal Activitie', '2025-04-22 20:18:15', '2025-04-22 20:18:15'),
(13, 3, 'Participation in Community, Social and Civic Activities', '2025-04-22 20:18:15', '2025-04-22 20:18:15'),
(14, 3, 'Development of Daily Living and Life Skills', '2025-04-22 20:18:15', '2025-04-22 20:18:15'),
(15, 3, 'Assistance with Daily Personal Activities', '2025-04-22 20:18:15', '2025-04-22 20:18:15'),
(16, 3, 'Group/Centre Activities', '2025-04-22 20:18:15', '2025-04-22 20:18:15'),
(17, 3, 'Assistance in Coordinating or Managing Life Stages', '2025-04-22 20:18:15', '2025-04-22 20:18:15'),
(18, 3, 'Household Tasks', '2025-04-22 20:18:16', '2025-04-22 20:18:16'),
(19, 3, 'Innovative Community Participation', '2025-04-22 20:18:16', '2025-04-22 20:18:16'),
(20, 3, 'Community Nursing Care', '2025-04-22 20:18:16', '2025-04-22 20:18:16'),
(21, 3, 'Assistance with Travel and Transport Arrangements', '2025-04-22 20:18:16', '2025-04-22 20:18:16'),
(22, 4, 'Community Nursing Care', '2026-02-02 09:23:14', '2026-02-02 09:23:14'),
(23, 6, 'Assistance with Travel and Transport Arrangements', '2026-03-16 10:10:13', '2026-03-16 10:10:13'),
(24, 6, 'Community Nursing Care', '2026-03-16 10:10:13', '2026-03-16 10:10:13'),
(25, 7, 'Assistance with Travel and Transport Arrangements', '2026-03-16 10:12:03', '2026-03-16 10:12:03'),
(26, 7, 'Community Nursing Care', '2026-03-16 10:12:03', '2026-03-16 10:12:03'),
(27, 7, 'Innovative Community Participation', '2026-03-16 10:12:03', '2026-03-16 10:12:03'),
(28, 7, 'Development of Daily Living and Life Skills', '2026-03-16 10:12:03', '2026-03-16 10:12:03'),
(29, 7, 'Participation in Community, Social and Civic Activities', '2026-03-16 10:12:03', '2026-03-16 10:12:03'),
(30, 8, 'Assistance in Coordinating or Managing Life Stages', '2026-03-16 11:04:55', '2026-03-16 11:04:55'),
(31, 8, 'Group/Centre Activities', '2026-03-16 11:04:56', '2026-03-16 11:04:56'),
(32, 9, 'Assistance in Coordinating or Managing Life Stages', '2026-03-16 11:07:18', '2026-03-16 11:07:18'),
(33, 9, 'Group/Centre Activities', '2026-03-16 11:07:18', '2026-03-16 11:07:18'),
(34, 10, 'Assistance with Travel and Transport Arrangements', '2026-08-14 09:17:13', '2026-08-14 09:17:13'),
(35, 10, 'Community Nursing Care', '2026-08-14 09:17:13', '2026-08-14 09:17:13'),
(36, 10, 'Innovative Community Participation', '2026-08-14 09:17:13', '2026-08-14 09:17:13'),
(37, 10, 'Household Tasks', '2026-08-14 09:17:13', '2026-08-14 09:17:13'),
(38, 10, 'Assistance in Coordinating or Managing Life Stages', '2026-08-14 09:17:13', '2026-08-14 09:17:13'),
(39, 10, 'Group/Centre Activities', '2026-08-14 09:17:13', '2026-08-14 09:17:13'),
(40, 10, 'Assistance with Daily Personal Activities', '2026-08-14 09:17:13', '2026-08-14 09:17:13'),
(41, 10, 'Development of Daily Living and Life Skills', '2026-08-14 09:17:13', '2026-08-14 09:17:13'),
(42, 10, 'Participation in Community, Social and Civic Activities', '2026-08-14 09:17:13', '2026-08-14 09:17:13'),
(43, 10, 'Assistance with Daily Personal Activitie', '2026-08-14 09:17:13', '2026-08-14 09:17:13');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `countrycode` char(3) NOT NULL,
  `countryname` varchar(200) NOT NULL,
  `code` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`countrycode`, `countryname`, `code`) VALUES
('ABW', 'Aruba', 'AW'),
('AFG', 'Afghanistan', 'AF'),
('AGO', 'Angola', 'AO'),
('AIA', 'Anguilla', 'AI'),
('ALA', 'Åland', 'AX'),
('ALB', 'Albania', 'AL'),
('AND', 'Andorra', 'AD'),
('ARE', 'United Arab Emirates', 'AE'),
('ARG', 'Argentina', 'AR'),
('ARM', 'Armenia', 'AM'),
('ASM', 'American Samoa', 'AS'),
('ATA', 'Antarctica', 'AQ'),
('ATF', 'French Southern Territories', 'TF'),
('ATG', 'Antigua and Barbuda', 'AG'),
('AUS', 'Australia', 'AU'),
('AUT', 'Austria', 'AT'),
('AZE', 'Azerbaijan', 'AZ'),
('BDI', 'Burundi', 'BI'),
('BEL', 'Belgium', 'BE'),
('BEN', 'Benin', 'BJ'),
('BES', 'Bonaire', 'BQ'),
('BFA', 'Burkina Faso', 'BF'),
('BGD', 'Bangladesh', 'BD'),
('BGR', 'Bulgaria', 'BG'),
('BHR', 'Bahrain', 'BH'),
('BHS', 'Bahamas', 'BS'),
('BIH', 'Bosnia and Herzegovina', 'BA'),
('BLM', 'Saint Barthélemy', 'BL'),
('BLR', 'Belarus', 'BY'),
('BLZ', 'Belize', 'BZ'),
('BMU', 'Bermuda', 'BM'),
('BOL', 'Bolivia', 'BO'),
('BRA', 'Brazil', 'BR'),
('BRB', 'Barbados', 'BB'),
('BRN', 'Brunei', 'BN'),
('BTN', 'Bhutan', 'BT'),
('BVT', 'Bouvet Island', 'BV'),
('BWA', 'Botswana', 'BW'),
('CAF', 'Central African Republic', 'CF'),
('CAN', 'Canada', 'CA'),
('CCK', 'Cocos [Keeling] Islands', 'CC'),
('CHE', 'Switzerland', 'CH'),
('CHL', 'Chile', 'CL'),
('CHN', 'China', 'CN'),
('CIV', 'Ivory Coast', 'CI'),
('CMR', 'Cameroon', 'CM'),
('COD', 'Democratic Republic of the Congo', 'CD'),
('COG', 'Republic of the Congo', 'CG'),
('COK', 'Cook Islands', 'CK'),
('COL', 'Colombia', 'CO'),
('COM', 'Comoros', 'KM'),
('CPV', 'Cape Verde', 'CV'),
('CRI', 'Costa Rica', 'CR'),
('CUB', 'Cuba', 'CU'),
('CUW', 'Curacao', 'CW'),
('CXR', 'Christmas Island', 'CX'),
('CYM', 'Cayman Islands', 'KY'),
('CYP', 'Cyprus', 'CY'),
('CZE', 'Czech Republic', 'CZ'),
('DEU', 'Germany', 'DE'),
('DJI', 'Djibouti', 'DJ'),
('DMA', 'Dominica', 'DM'),
('DNK', 'Denmark', 'DK'),
('DOM', 'Dominican Republic', 'DO'),
('DZA', 'Algeria', 'DZ'),
('ECU', 'Ecuador', 'EC'),
('EGY', 'Egypt', 'EG'),
('ERI', 'Eritrea', 'ER'),
('ESH', 'Western Sahara', 'EH'),
('ESP', 'Spain', 'ES'),
('EST', 'Estonia', 'EE'),
('ETH', 'Ethiopia', 'ET'),
('FIN', 'Finland', 'FI'),
('FJI', 'Fiji', 'FJ'),
('FLK', 'Falkland Islands', 'FK'),
('FRA', 'France', 'FR'),
('FRO', 'Faroe Islands', 'FO'),
('FSM', 'Micronesia', 'FM'),
('GAB', 'Gabon', 'GA'),
('GBR', 'United Kingdom', 'GB'),
('GEO', 'Georgia', 'GE'),
('GGY', 'Guernsey', 'GG'),
('GHA', 'Ghana', 'GH'),
('GIB', 'Gibraltar', 'GI'),
('GIN', 'Guinea', 'GN'),
('GLP', 'Guadeloupe', 'GP'),
('GMB', 'Gambia', 'GM'),
('GNB', 'Guinea-Bissau', 'GW'),
('GNQ', 'Equatorial Guinea', 'GQ'),
('GRC', 'Greece', 'GR'),
('GRD', 'Grenada', 'GD'),
('GRL', 'Greenland', 'GL'),
('GTM', 'Guatemala', 'GT'),
('GUF', 'French Guiana', 'GF'),
('GUM', 'Guam', 'GU'),
('GUY', 'Guyana', 'GY'),
('HKG', 'Hong Kong', 'HK'),
('HMD', 'Heard Island and McDonald Islands', 'HM'),
('HND', 'Honduras', 'HN'),
('HRV', 'Croatia', 'HR'),
('HTI', 'Haiti', 'HT'),
('HUN', 'Hungary', 'HU'),
('IDN', 'Indonesia', 'ID'),
('IMN', 'Isle of Man', 'IM'),
('IND', 'India', 'IN'),
('IOT', 'British Indian Ocean Territory', 'IO'),
('IRL', 'Ireland', 'IE'),
('IRN', 'Iran', 'IR'),
('IRQ', 'Iraq', 'IQ'),
('ISL', 'Iceland', 'IS'),
('ISR', 'Israel', 'IL'),
('ITA', 'Italy', 'IT'),
('JAM', 'Jamaica', 'JM'),
('JEY', 'Jersey', 'JE'),
('JOR', 'Jordan', 'JO'),
('JPN', 'Japan', 'JP'),
('KAZ', 'Kazakhstan', 'KZ'),
('KEN', 'Kenya', 'KE'),
('KGZ', 'Kyrgyzstan', 'KG'),
('KHM', 'Cambodia', 'KH'),
('KIR', 'Kiribati', 'KI'),
('KNA', 'Saint Kitts and Nevis', 'KN'),
('KOR', 'South Korea', 'KR'),
('KWT', 'Kuwait', 'KW'),
('LAO', 'Laos', 'LA'),
('LBN', 'Lebanon', 'LB'),
('LBR', 'Liberia', 'LR'),
('LBY', 'Libya', 'LY'),
('LCA', 'Saint Lucia', 'LC'),
('LIE', 'Liechtenstein', 'LI'),
('LKA', 'Sri Lanka', 'LK'),
('LSO', 'Lesotho', 'LS'),
('LTU', 'Lithuania', 'LT'),
('LUX', 'Luxembourg', 'LU'),
('LVA', 'Latvia', 'LV'),
('MAC', 'Macao', 'MO'),
('MAF', 'Saint Martin', 'MF'),
('MAR', 'Morocco', 'MA'),
('MCO', 'Monaco', 'MC'),
('MDA', 'Moldova', 'MD'),
('MDG', 'Madagascar', 'MG'),
('MDV', 'Maldives', 'MV'),
('MEX', 'Mexico', 'MX'),
('MHL', 'Marshall Islands', 'MH'),
('MKD', 'Macedonia', 'MK'),
('MLI', 'Mali', 'ML'),
('MLT', 'Malta', 'MT'),
('MMR', 'Myanmar [Burma]', 'MM'),
('MNE', 'Montenegro', 'ME'),
('MNG', 'Mongolia', 'MN'),
('MNP', 'Northern Mariana Islands', 'MP'),
('MOZ', 'Mozambique', 'MZ'),
('MRT', 'Mauritania', 'MR'),
('MSR', 'Montserrat', 'MS'),
('MTQ', 'Martinique', 'MQ'),
('MUS', 'Mauritius', 'MU'),
('MWI', 'Malawi', 'MW'),
('MYS', 'Malaysia', 'MY'),
('MYT', 'Mayotte', 'YT'),
('NAM', 'Namibia', 'NA'),
('NCL', 'New Caledonia', 'NC'),
('NER', 'Niger', 'NE'),
('NFK', 'Norfolk Island', 'NF'),
('NGA', 'Nigeria', 'NG'),
('NIC', 'Nicaragua', 'NI'),
('NIU', 'Niue', 'NU'),
('NLD', 'Netherlands', 'NL'),
('NOR', 'Norway', 'NO'),
('NPL', 'Nepal', 'NP'),
('NRU', 'Nauru', 'NR'),
('NZL', 'New Zealand', 'NZ'),
('OMN', 'Oman', 'OM'),
('PAK', 'Pakistan', 'PK'),
('PAN', 'Panama', 'PA'),
('PCN', 'Pitcairn Islands', 'PN'),
('PER', 'Peru', 'PE'),
('PHL', 'Philippines', 'PH'),
('PLW', 'Palau', 'PW'),
('PNG', 'Papua New Guinea', 'PG'),
('POL', 'Poland', 'PL'),
('PRI', 'Puerto Rico', 'PR'),
('PRK', 'North Korea', 'KP'),
('PRT', 'Portugal', 'PT'),
('PRY', 'Paraguay', 'PY'),
('PSE', 'Palestine', 'PS'),
('PYF', 'French Polynesia', 'PF'),
('QAT', 'Qatar', 'QA'),
('REU', 'Réunion', 'RE'),
('ROU', 'Romania', 'RO'),
('RUS', 'Russia', 'RU'),
('RWA', 'Rwanda', 'RW'),
('SAU', 'Saudi Arabia', 'SA'),
('SDN', 'Sudan', 'SD'),
('SEN', 'Senegal', 'SN'),
('SGP', 'Singapore', 'SG'),
('SGS', 'South Georgia and the South Sandwich Islands', 'GS'),
('SHN', 'Saint Helena', 'SH'),
('SJM', 'Svalbard and Jan Mayen', 'SJ'),
('SLB', 'Solomon Islands', 'SB'),
('SLE', 'Sierra Leone', 'SL'),
('SLV', 'El Salvador', 'SV'),
('SMR', 'San Marino', 'SM'),
('SOM', 'Somalia', 'SO'),
('SPM', 'Saint Pierre and Miquelon', 'PM'),
('SRB', 'Serbia', 'RS'),
('SSD', 'South Sudan', 'SS'),
('STP', 'São Tomé and Príncipe', 'ST'),
('SUR', 'Suriname', 'SR'),
('SVK', 'Slovakia', 'SK'),
('SVN', 'Slovenia', 'SI'),
('SWE', 'Sweden', 'SE'),
('SWZ', 'Swaziland', 'SZ'),
('SXM', 'Sint Maarten', 'SX'),
('SYC', 'Seychelles', 'SC'),
('SYR', 'Syria', 'SY'),
('TCA', 'Turks and Caicos Islands', 'TC'),
('TCD', 'Chad', 'TD'),
('TGO', 'Togo', 'TG'),
('THA', 'Thailand', 'TH'),
('TJK', 'Tajikistan', 'TJ'),
('TKL', 'Tokelau', 'TK'),
('TKM', 'Turkmenistan', 'TM'),
('TLS', 'East Timor', 'TL'),
('TON', 'Tonga', 'TO'),
('TTO', 'Trinidad and Tobago', 'TT'),
('TUN', 'Tunisia', 'TN'),
('TUR', 'Turkey', 'TR'),
('TUV', 'Tuvalu', 'TV'),
('TWN', 'Taiwan', 'TW'),
('TZA', 'Tanzania', 'TZ'),
('UGA', 'Uganda', 'UG'),
('UKR', 'Ukraine', 'UA'),
('UMI', 'U.S. Minor Outlying Islands', 'UM'),
('URY', 'Uruguay', 'UY'),
('USA', 'United States', 'US'),
('UZB', 'Uzbekistan', 'UZ'),
('VAT', 'Vatican City', 'VA'),
('VCT', 'Saint Vincent and the Grenadines', 'VC'),
('VEN', 'Venezuela', 'VE'),
('VGB', 'British Virgin Islands', 'VG'),
('VIR', 'U.S. Virgin Islands', 'VI'),
('VNM', 'Vietnam', 'VN'),
('VUT', 'Vanuatu', 'VU'),
('WLF', 'Wallis and Futuna', 'WF'),
('WSM', 'Samoa', 'WS'),
('XKX', 'Kosovo', 'XK'),
('YEM', 'Yemen', 'YE'),
('ZAF', 'South Africa', 'ZA'),
('ZMB', 'Zambia', 'ZM'),
('ZWE', 'Zimbabwe', 'ZW');

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `id` bigint UNSIGNED NOT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `verified` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inquiries`
--

CREATE TABLE `inquiries` (
  `id` bigint UNSIGNED NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `memberships`
--

CREATE TABLE `memberships` (
  `id` bigint UNSIGNED NOT NULL,
  `verified` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `passport_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `municipal_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ward_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `village` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `relation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `current_country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_box_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entrance_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2018_03_28_114354_create_cl_post_metas_table', 1),
(5, '2018_03_28_114442_create_cl_post_featured_images_table', 1),
(6, '2018_03_28_114755_create_cl_post_attachments_table', 1),
(7, '2018_03_28_114834_create_cl_post_videos_table', 1),
(9, '2018_03_28_115212_create_cl_post_comments_table', 1),
(10, '2018_03_28_115358_create_cl_categories_table', 1),
(11, '2018_03_28_115432_create_cl_category_metas_table', 1),
(12, '2018_03_29_064328_create_cl_log_table', 1),
(13, '2018_05_08_114118_create_cl_userroles_table', 1),
(14, '2018_05_20_062425_create_cl_members_table', 1),
(15, '2018_06_04_092530_create_cl_roles_table', 1),
(16, '2018_06_06_123826_create_product_category_table', 1),
(17, '2018_06_07_093316_create_post_type_table', 1),
(18, '2018_06_13_071711_create_cl_post_category_table', 1),
(19, '2018_06_21_080700_create_cl_banner_table', 1),
(20, '2018_06_27_053620_create_cl_product_type_table', 2),
(21, '2018_06_28_061103_create_cl_product_brand_table', 3),
(22, '2018_06_28_061256_create_cl_currency_table', 3),
(23, '2018_06_28_061707_create_cl_product_unit_table', 3),
(26, '2018_06_29_051629_create_cl_products_table', 1),
(31, '2018_07_03_014755_create_cl_gallery_image_categories_table', 4),
(32, '2018_07_03_014814_create_cl_gallery_images_table', 4),
(35, '2018_07_03_104330_create_cl_gallery_videos_table', 6),
(37, '2018_07_03_103721_create_cl_gallery_video_categories_table', 7),
(38, '2018_07_04_061117_create_cl_post_type_table', 7),
(39, '2018_03_28_113701_create_cl_posts_table', 8),
(41, '2018_08_06_085514_create_cl_product_tag_table', 9),
(42, '2018_09_20_120321_create_cl_customer_billing_address_table', 10),
(43, '2018_09_20_120340_create_cl_customer_shipping_address_table', 10),
(44, '2018_09_24_094921_create_cl_orders_table', 11),
(45, '2018_09_25_061818_create_cl_country_table', 12),
(46, '2018_09_25_092853_create_order_product_table', 13),
(47, '2018_09_25_100703_create_cl_order_product_table', 14),
(48, '2018_10_02_031657_create_cl_settings_table', 15),
(49, '2018_11_14_092229_create_cl_tender_table', 16),
(51, '2018_11_19_042417_create_cl_tender_category', 18),
(52, '2018_11_19_075448_create_cl_tender_document_table', 19),
(53, '2018_11_16_111624_create_cl_venderdetail_table', 20),
(54, '2018_11_25_060813_create_cl_multiple_video_table', 21),
(55, '2018_11_29_065424_create_cl_multiple_document_table', 22),
(56, '2019_03_13_082841_create_newsletter_signup_table', 23),
(59, '2019_03_14_052123_create_cl_associated_posts_table', 24),
(61, '2019_03_15_090749_create_cl_dwninfo_table', 25),
(62, '2020_08_06_095339_create_cl_multiple_banner_table', 26),
(63, '2020_08_06_120936_add_banner_id_column_at_cl_multiple_banner_table', 26),
(64, '2020_08_07_084648_add_visitor_column_at_posts_table', 26),
(66, '2020_08_11_180220_create_role_user_table', 27),
(67, '2020_08_12_061740_create_foreign_keys_for_role_user_table', 27),
(68, '2020_08_16_130049_crate_admin_menu_table', 28),
(74, '2020_08_16_162623_create_adminmenu_user_table', 29),
(75, '2020_08_16_205219_crate_foreign_keys_for_adminmenu_user_table', 29),
(79, '2020_08_17_062614_add_global_post_cl_posts_table', 30),
(80, '2020_12_10_131852_create_cl_portfolio_table', 31),
(81, '2020_12_10_132930_create_cl_associated_portfolios_table', 31),
(82, '2019_08_19_000000_create_failed_jobs_table', 32),
(83, '2021_03_29_110453_create_inquiries_table', 32),
(86, '2021_03_29_111050_create_bookings_table', 33),
(87, '2021_03_29_122554_create_trip_bookings_table', 34),
(88, '2021_03_30_070214_create_contacts_table', 35),
(89, '2021_04_19_105315_create_proposals_table', 36),
(90, '2021_04_19_122930_create_contacts_table', 37),
(91, '2020_10_20_094703_cl_post_portfolio', 38),
(96, '2022_05_08_092040_create_memberships_table', 39),
(98, '2022_05_09_105000_create_donations_table', 40),
(99, '2019_12_14_000001_create_personal_access_tokens_table', 41),
(100, '2023_11_21_074755_create_careers_table', 41),
(101, '2023_12_20_101126_create_contact_us_services_rel_table', 42);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `email`, `token`, `created_at`) VALUES
(3, 'suveer.joc@gmail.com', 'uxyFmAof8UhhFLne1Zw38sCcbzu8WRMLo7HwCT7EBnC7Mr3n7WkJMwyJ3XRCcuZ3', '2022-06-15 12:19:28');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `referrals`
--

CREATE TABLE `referrals` (
  `id` int UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` date NOT NULL,
  `ndis_number` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pronouns` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `residential_address` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `indigenous_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preferred_language` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interpreter_required` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_management` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_manager` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `requested_services` json NOT NULL,
  `primary_diagnosis` text COLLATE utf8mb4_unicode_ci,
  `secondary_conditions` text COLLATE utf8mb4_unicode_ci,
  `gp_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gp_phone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `restrictive_practices` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `behaviour_support_plan` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_safety_risks` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `safety_details` text COLLATE utf8mb4_unicode_ci,
  `referrer_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_relationship` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_phone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `consent` tinyint(1) NOT NULL DEFAULT '0',
  `signature_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `signature_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(12, 3, 4, NULL, NULL),
(16, 2, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_districts`
--

CREATE TABLE `tbl_districts` (
  `id` int NOT NULL,
  `districtname` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provincecode` int NOT NULL,
  `districtcode` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_districts`
--

INSERT INTO `tbl_districts` (`id`, `districtname`, `provincecode`, `districtcode`) VALUES
(1, 'ताप्लेजुङ', 1, 1),
(2, 'पाँचथर', 1, 2),
(3, 'ईलाम', 1, 3),
(4, 'झापा', 1, 4),
(5, 'मोरंग', 1, 5),
(6, 'सुनसरी', 1, 6),
(7, 'धनकुटा', 1, 7),
(8, 'तेहथुम', 1, 8),
(9, 'संखुवासभा', 1, 9),
(10, 'भोजपुर', 1, 10),
(11, 'सोलुखुम्बु', 1, 11),
(12, 'ओखलढुंगा', 1, 12),
(13, 'खोटाङ', 1, 13),
(14, 'उदयपुर', 1, 14),
(15, 'सप्तरी', 2, 15),
(16, 'सिराहा', 2, 16),
(17, 'धनुषा', 2, 17),
(18, 'महोत्तरी', 2, 18),
(19, 'सर्लाही', 2, 19),
(20, 'रौतहट', 2, 20),
(21, 'वारा', 2, 21),
(22, 'पर्सा', 2, 22),
(23, 'सिन्धुली', 3, 23),
(24, 'रामेछाप', 3, 24),
(25, 'दोलखा', 3, 25),
(26, 'सिन्धुपाल्चोक', 3, 26),
(27, 'काभ्रेपलान्चोक', 3, 27),
(28, 'ललितपुर', 3, 28),
(29, 'भक्तपुर', 3, 29),
(30, 'काठमाण्डौ', 3, 30),
(31, 'नुवाकोट', 3, 31),
(32, 'रसुवा', 3, 32),
(33, 'धादिङ', 3, 33),
(34, 'मकवानपुर', 3, 34),
(35, 'चितवन', 3, 35),
(36, 'गोरखा', 4, 36),
(37, 'लमजुङ', 4, 37),
(38, 'तनहुँ', 4, 38),
(39, 'स्याङजा', 4, 39),
(40, 'कास्की', 4, 40),
(41, 'मनाङ', 4, 41),
(42, 'मुस्ताङ', 4, 42),
(43, 'म्याग्दी', 4, 43),
(44, 'पर्वत', 4, 44),
(45, 'वाग्लुङ', 4, 45),
(46, 'नवलपरासी (बर्दघाट सुस्ता पूर्व)', 4, 46),
(47, 'गुल्मी', 5, 47),
(48, 'पाल्पा', 5, 48),
(49, 'रुपन्देही', 5, 49),
(50, 'कपिलबस्तु', 5, 50),
(51, 'अर्घाखाँची', 5, 51),
(52, 'प्यूठान', 5, 52),
(53, 'रोल्पा', 5, 53),
(54, 'रुकुम (पूर्वी भाग)', 5, 54),
(55, 'दाङ', 5, 55),
(56, 'बाँके', 5, 56),
(57, 'बर्दिया', 5, 57),
(58, 'नवलपरासी (बर्दघाट सुस्ता पश्चिम)', 5, 58),
(59, 'रुकुम (पश्चिम भाग)', 6, 59),
(60, 'सल्यान', 6, 60),
(61, 'सुर्खेत', 6, 61),
(62, 'दैलेख', 6, 62),
(63, 'जाजरकोट', 6, 63),
(64, 'डोल्पा', 6, 64),
(65, 'जुम्ला', 6, 65),
(66, 'कालिकोट', 6, 66),
(67, 'मुगु', 6, 67),
(68, 'हुम्ला', 6, 68),
(69, 'बाजुरा', 7, 69),
(70, 'बझाङ', 7, 70),
(71, 'अछाम', 7, 71),
(72, 'डोटी', 7, 72),
(73, 'कैलाली', 7, 73),
(74, 'कञ्चनपुर', 7, 74),
(75, 'डडेलधुरा', 7, 75),
(76, 'बैतडी', 7, 76),
(77, 'दार्चुला', 7, 77);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_municipal`
--

CREATE TABLE `tbl_municipal` (
  `id` int NOT NULL,
  `municipalname` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `districtcode` int NOT NULL,
  `municipalcode` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_municipal`
--

INSERT INTO `tbl_municipal` (`id`, `municipalname`, `districtcode`, `municipalcode`) VALUES
(1, 'फुङलिङ नगरपालिका', 1, 1),
(2, 'आठराई त्रिवेणी गाउँपालिका', 1, 2),
(3, 'सिदिङ्वा गाउँपालिका', 1, 3),
(4, 'फक्ताङलुङ गाउँपालिका', 1, 4),
(5, 'मिक्वाखोला गाउँपालिका', 1, 5),
(6, 'मेरिङदेन गाउँपालिका', 1, 6),
(7, 'मैवाखोला गाउँपालिका', 1, 7),
(8, 'पाथीभरा याङवरक गाउँपालिका', 1, 8),
(9, 'सिरीजङ्घा गाउँपालिका', 1, 9),
(10, 'फिदिम नगरपालिका', 2, 10),
(11, 'फालेलुङ गाउँपालिका', 2, 11),
(12, 'फाल्गुनन्द गाउँपालिका', 2, 12),
(13, 'हिलिहाङ गाउँपालिका', 2, 13),
(14, 'कुम्मायक गाउँपालिका', 2, 14),
(15, 'मिक्लाजुङ गाउँपालिका', 2, 15),
(16, 'तुम्बेवा गाउँपालिका', 2, 16),
(17, 'याङवरक गाउँपालिका', 2, 17),
(18, 'ईलाम नगरपालिका', 3, 18),
(19, 'देउमाई नगरपालिका', 3, 19),
(20, 'माई नगरपालिका', 3, 20),
(21, 'सूर्योदय नगरपालिका', 3, 21),
(22, 'फाकफोकथुम गाउँपालिका', 3, 22),
(23, 'चुलाचुली गाउँपालिका', 3, 23),
(24, 'माईजोगमाई गाउँपालिका', 3, 24),
(25, 'माङसेबुङ गाउँपालिका', 3, 25),
(26, 'रोङ गाउँपालिका', 3, 26),
(27, 'सन्दकपुर गाउँपालिका', 3, 27),
(28, 'मेचीनगर नगरपालिका', 4, 28),
(29, 'दमक नगरपालिका', 4, 29),
(30, 'कन्काई नगरपालिका', 4, 30),
(31, 'भद्रपुर नगरपालिका', 4, 31),
(32, 'अर्जुनधारा नगरपालिका', 4, 32),
(33, 'शिवशताक्षी नगरपालिका', 4, 33),
(34, 'गौरादह नगरपालिका', 4, 34),
(35, 'विर्तामोड नगरपालिका', 4, 35),
(36, 'कमल गाउँपालिका', 4, 36),
(37, 'गौरीगंज गाउँपालिका', 4, 37),
(38, 'बाह्रदशी गाउँपालिका', 4, 38),
(39, 'झापा गाउँपालिका', 4, 39),
(40, 'बुद्धशान्ति गाउँपालिका', 4, 40),
(41, 'हल्दिवारी गाउँपालिका', 4, 41),
(42, 'कचनकवल गाउँपालिका', 4, 42),
(43, 'विराटनगर महानगरपालिका', 5, 43),
(44, 'बेलवारी नगरपालिका', 5, 44),
(45, 'लेटाङ नगरपालिका', 5, 45),
(46, 'पथरी शनिश्चरे नगरपालिका', 5, 46),
(47, 'रंगेली नगरपालिका', 5, 47),
(48, 'रतुवामाई नगरपालिका', 5, 48),
(49, 'सुनवर्षि नगरपालिका', 5, 49),
(50, 'उर्लावारी नगरपालिका', 5, 50),
(51, 'सुन्दरहरैचा नगरपालिका', 5, 51),
(52, 'बुढीगंगा गाउँपालिका', 5, 52),
(53, 'धनपालथान गाउँपालिका', 5, 53),
(54, 'ग्रामथान गाउँपालिका', 5, 54),
(55, 'जहदा गाउँपालिका', 5, 55),
(56, 'कानेपोखरी गाउँपालिका', 5, 56),
(57, 'कटहरी गाउँपालिका', 5, 57),
(58, 'केरावारी गाउँपालिका', 5, 58),
(59, 'मिक्लाजुङ गाउँपालिका', 5, 59),
(60, 'ईटहरी उपमहानगरपालिका', 6, 60),
(61, 'धरान उपमहानगरपालिका', 6, 61),
(62, 'ईनरुवा नगरपालिका', 6, 62),
(63, 'दुहवी नगरपालिका', 6, 63),
(64, 'रामधुनी नगरपालिका', 6, 64),
(65, 'बराहक्षेत्र नगरपालिका', 6, 65),
(66, 'देवानगञ्ज गाउँपालिका', 6, 66),
(67, 'कोशी गाउँपालिका', 6, 67),
(68, 'गढी गाउँपालिका', 6, 68),
(69, 'बर्जु गाउँपालिका', 6, 69),
(70, 'भोक्राहा नरसिंह गाउँपालिका', 6, 70),
(71, 'हरिनगर गाउँपालिका', 6, 71),
(72, 'पाख्रिबास नगरपालिका', 7, 72),
(73, 'धनकुटा नगरपालिका', 7, 73),
(74, 'महालक्ष्मी नगरपालिका', 7, 74),
(75, 'साँगुरीगढी गाउँपालिका', 7, 75),
(76, 'सहिदभूमि गाउँपालिका', 7, 76),
(77, 'छथर जोरपाटी गाउँपालिका', 7, 77),
(78, 'चौविसे गाउँपालिका', 7, 78),
(79, 'म्याङलुङ नगरपालिका', 8, 79),
(80, 'लालीगुराँस नगरपालिका', 8, 80),
(81, 'आठराई गाउँपालिका', 8, 81),
(82, 'छथर गाउँपालिका', 8, 82),
(83, 'फेदाप गाउँपालिका', 8, 83),
(84, 'मेन्छयायेम गाउँपालिका', 8, 84),
(85, 'चैनपुर नगरपालिका', 9, 85),
(86, 'धर्मदेवी नगरपालिका', 9, 86),
(87, 'खाँदवारी नगरपालिका', 9, 87),
(88, 'मादी नगरपालिका', 9, 88),
(89, 'पाँचखपन नगरपालिका', 9, 89),
(90, 'भोटखोला गाउँपालिका', 9, 90),
(91, 'चिचिला गाउँपालिका', 9, 91),
(92, 'मकालु गाउँपालिका', 9, 92),
(93, 'सभापोखरी गाउँपालिका', 9, 93),
(94, 'सिलीचोङ गाउँपालिका', 9, 94),
(95, 'भोजपुर नगरपालिका', 10, 95),
(96, 'षडानन्द नगरपालिका', 10, 96),
(97, 'टेम्केमैयुङ गाउँपालिका', 10, 97),
(98, 'रामप्रसाद राई गाउँपालिका', 10, 98),
(99, 'अरुण गाउँपालिका', 10, 99),
(100, 'पौवादुङमा गाउँपालिका', 10, 100),
(101, 'साल्पासिलिछो गाउँपालिका', 10, 101),
(102, 'आमचोक गाउँपालिका', 10, 102),
(103, 'हतुवागढी गाउँपालिका', 10, 103),
(104, 'सोलुदुधकुण्ड नगरपालिका', 11, 104),
(105, 'माप्य दुधकोशी गाउँपालिका', 11, 105),
(106, 'खुम्वु पासाङल्हमु गाउँपालिका', 11, 106),
(107, 'थुलुङ दुधकोशी गाउँपालिका', 11, 107),
(108, 'नेचासल्यान गाउँपालिका', 11, 108),
(109, 'माहाकुलुङ गाउँपालिका', 11, 109),
(110, 'लिखु पिके गाउँपालिका', 11, 110),
(111, 'सोताङ गाउँपालिका', 11, 111),
(112, 'सिद्दिचरण नगरपालिका', 12, 112),
(113, 'खिजिदेम्बा गाउँपालिका', 12, 113),
(114, 'चम्पादेवी गाउँपालिका', 12, 114),
(115, 'चिशंखुगढी गाउँपालिका', 12, 115),
(116, 'मानेभञ्याङ गाउँपालिका', 12, 116),
(117, 'मोलुङ गाउँपालिका', 12, 117),
(118, 'लिखु गाउँपालिका', 12, 118),
(119, 'सुनकोशी गाउँपालिका', 12, 119),
(120, 'हलेसी तुवाचुङ नगरपालिका', 13, 120),
(121, 'दिक्तेल रुपाकोट मझुवागढी नगरपालिका', 13, 121),
(122, 'ऐसेलुखर्क गाउँपालिका', 13, 122),
(123, 'रावा बेसी गाउँपालिका', 13, 123),
(124, 'जन्तेढुंगा गाउँपालिका', 13, 124),
(125, 'खोटेहाङ गाउँपालिका', 13, 125),
(126, 'केपिलासगढी गाउँपालिका', 13, 126),
(127, 'दिप्रुङ चुइचुम्मा गाउँपालिका', 13, 127),
(128, 'साकेला गाउँपालिका', 13, 128),
(129, 'वराहपोखरी गाउँपालिका', 13, 129),
(130, 'कटारी नगरपालिका', 14, 130),
(131, 'चौदण्डीगढी नगरपालिका', 14, 131),
(132, 'त्रियुगा नगरपालिका', 14, 132),
(133, 'वेलका नगरपालिका', 14, 133),
(134, 'उदयपुरगढी गाउँपालिका', 14, 134),
(135, 'ताप्ली गाउँपालिका', 14, 135),
(136, 'रौतामाई गाउँपालिका', 14, 136),
(137, 'लिम्चुङ्बुङ गाउँपालिका', 14, 137),
(138, 'राजविराज नगरपालिका', 15, 138),
(139, 'कञ्चनरुप नगरपालिका', 15, 139),
(140, 'डाक्नेश्वरी नगरपालिका', 15, 140),
(141, 'बोदेबरसाईन नगरपालिका', 15, 141),
(142, 'खडक नगरपालिका', 15, 142),
(143, 'शम्भुनाथ नगरपालिका', 15, 143),
(144, 'सुरुङ्‍गा नगरपालिका', 15, 144),
(145, 'हनुमाननगर कङ्‌कालिनी नगरपालिका', 15, 145),
(146, 'सप्तकोशी नगरपालिका', 15, 146),
(147, 'अग्निसाइर कृष्णासरवन गाउँपालिका', 15, 147),
(148, 'छिन्नमस्ता गाउँपालिका', 15, 148),
(149, 'महादेवा गाउँपालिका', 15, 149),
(150, 'तिरहुत गाउँपालिका', 15, 150),
(151, 'तिलाठी कोईलाडी गाउँपालिका', 15, 151),
(152, 'रुपनी गाउँपालिका', 15, 152),
(153, 'राजगढ गाउँपालिका', 15, 153),
(154, 'बिष्णुपुर गाउँपालिका', 15, 154),
(155, 'बलान-बिहुल गाउँपालिका', 15, 155),
(156, 'लहान नगरपालिका', 16, 156),
(157, 'धनगढीमाई नगरपालिका', 16, 157),
(158, 'सिरहा नगरपालिका', 16, 158),
(159, 'गोलबजार नगरपालिका', 16, 159),
(160, 'मिर्चैयाँ नगरपालिका', 16, 160),
(161, 'कल्याणपुर नगरपालिका', 16, 161),
(162, 'कर्जन्हा नगरपालिका', 16, 162),
(163, 'सुखीपुर नगरपालिका', 16, 163),
(164, 'भगवानपुर गाउँपालिका', 16, 164),
(165, 'औरही गाउँपालिका', 16, 165),
(166, 'विष्णुपुर गाउँपालिका', 16, 166),
(167, 'बरियारपट्टी गाउँपालिका', 16, 167),
(168, 'लक्ष्मीपुर पतारी गाउँपालिका', 16, 168),
(169, 'नरहा गाउँपालिका', 16, 169),
(170, 'सखुवानान्कारकट्टी गाउँपालिका', 16, 170),
(171, 'अर्नमा गाउँपालिका', 16, 171),
(172, 'नवराजपुर गाउँपालिका', 16, 172),
(173, 'जनकपुरधाम उपमहानगरपालिका', 17, 173),
(174, 'क्षिरेश्वरनाथ नगरपालिका', 17, 174),
(175, 'गणेशमान चारनाथ नगरपालिका', 17, 175),
(176, 'धनुषाधाम नगरपालिका', 17, 176),
(177, 'नगराइन नगरपालिका', 17, 177),
(178, 'विदेह नगरपालिका', 17, 178),
(179, 'मिथिला नगरपालिका', 17, 179),
(180, 'शहीदनगर नगरपालिका', 17, 180),
(181, 'सबैला नगरपालिका', 17, 181),
(182, 'कमला नगरपालिका', 17, 182),
(183, 'मिथिला बिहारी नगरपालिका', 17, 183),
(184, 'हंसपुर नगरपालिका', 17, 184),
(185, 'जनकनन्दिनी गाउँपालिका', 17, 185),
(186, 'बटेश्वर गाउँपालिका', 17, 186),
(187, 'मुखियापट्टी मुसहरमिया गाउँपालिका', 17, 187),
(188, 'लक्ष्मीनिया गाउँपालिका', 17, 188),
(189, 'औरही गाउँपालिका', 17, 189),
(190, 'धनौजी गाउँपालिका', 17, 190),
(191, 'जलेश्वर नगरपालिका', 18, 191),
(192, 'बर्दिबास नगरपालिका', 18, 192),
(193, 'गौशाला नगरपालिका', 18, 193),
(194, 'लोहरपट्टी नगरपालिका', 18, 194),
(195, 'रामगोपालपुर नगरपालिका', 18, 195),
(196, 'मनरा शिसवा नगरपालिका', 18, 196),
(197, 'मटिहानी नगरपालिका', 18, 197),
(198, 'भँगाहा नगरपालिका', 18, 198),
(199, 'बलवा नगरपालिका', 18, 199),
(200, 'औरही नगरपालिका', 18, 200),
(201, 'एकडारा गाउँपालिका', 18, 201),
(202, 'सोनमा गाउँपालिका', 18, 202),
(203, 'साम्सी गाउँपालिका', 18, 203),
(204, 'महोत्तरी गाउँपालिका', 18, 204),
(205, 'पिपरा गाउँपालिका', 18, 205),
(206, 'ईश्वरपुर नगरपालिका', 19, 206),
(207, 'मलंगवा नगरपालिका', 19, 207),
(208, 'लालबन्दी नगरपालिका', 19, 208),
(209, 'हरिपुर नगरपालिका', 19, 209),
(210, 'हरिपुर्वा नगरपालिका', 19, 210),
(211, 'हरिवन नगरपालिका', 19, 211),
(212, 'बरहथवा नगरपालिका', 19, 212),
(213, 'बलरा नगरपालिका', 19, 213),
(214, 'गोडैटा नगरपालिका', 19, 214),
(215, 'बागमती नगरपालिका', 19, 215),
(216, 'कविलासी नगरपालिका', 19, 216),
(217, 'चक्रघट्टा गाउँपालिका', 19, 217),
(218, 'चन्द्रनगर गाउँपालिका', 19, 218),
(219, 'धनकौल गाउँपालिका', 19, 219),
(220, 'ब्रह्मपुरी गाउँपालिका', 19, 220),
(221, 'रामनगर गाउँपालिका', 19, 221),
(222, 'विष्णु गाउँपालिका', 19, 222),
(223, 'कौडेना गाउँपालिका', 19, 223),
(224, 'पर्सा गाउँपालिका', 19, 224),
(225, 'बसबरीया गाउँपालिका', 19, 225),
(226, 'चन्द्रपुर नगरपालिका', 20, 226),
(227, 'गरुडा नगरपालिका', 20, 227),
(228, 'गौर नगरपालिका', 20, 228),
(229, 'बौधीमाई नगरपालिका', 20, 229),
(230, 'बृन्दावन नगरपालिका', 20, 230),
(231, 'देवाही गोनाही नगरपालिका', 20, 231),
(232, 'गढीमाई नगरपालिका', 20, 232),
(233, 'गुजरा नगरपालिका', 20, 233),
(234, 'कटहरिया नगरपालिका', 20, 234),
(235, 'माधव नारायण नगरपालिका', 20, 235),
(236, 'मौलापुर नगरपालिका', 20, 236),
(237, 'फतुवाबिजयपुर नगरपालिका', 20, 237),
(238, 'ईशनाथ नगरपालिका', 20, 238),
(239, 'परोहा नगरपालिका', 20, 239),
(240, 'राजपुर नगरपालिका', 20, 240),
(241, 'राजदेवी नगरपालिका', 20, 241),
(242, 'दुर्गा भगवती गाउँपालिका', 20, 242),
(243, 'यमुनामाई गाउँपालिका', 20, 243),
(244, 'कलैया उपमहानगरपालिका', 21, 244),
(245, 'जीतपुर सिमरा उपमहानगरपालिका', 21, 245),
(246, 'कोल्हवी नगरपालिका', 21, 246),
(247, 'निजगढ नगरपालिका', 21, 247),
(248, 'महागढीमाई नगरपालिका', 21, 248),
(249, 'सिम्रौनगढ नगरपालिका', 21, 249),
(250, 'पचरौता नगरपालिका', 21, 250),
(251, 'फुङलिङ नगरपालिका', 1, 1),
(252, 'आठराई त्रिवेणी गाउँपालिका', 1, 2),
(253, 'सिदिङ्वा गाउँपालिका', 1, 3),
(254, 'फक्ताङलुङ गाउँपालिका', 1, 4),
(255, 'मिक्वाखोला गाउँपालिका', 1, 5),
(256, 'मेरिङदेन गाउँपालिका', 1, 6),
(257, 'मैवाखोला गाउँपालिका', 1, 7),
(258, 'पाथीभरा याङवरक गाउँपालिका', 1, 8),
(259, 'सिरीजङ्घा गाउँपालिका', 1, 9),
(260, 'फिदिम नगरपालिका', 2, 10),
(261, 'फालेलुङ गाउँपालिका', 2, 11),
(262, 'फाल्गुनन्द गाउँपालिका', 2, 12),
(263, 'हिलिहाङ गाउँपालिका', 2, 13),
(264, 'कुम्मायक गाउँपालिका', 2, 14),
(265, 'मिक्लाजुङ गाउँपालिका', 2, 15),
(266, 'तुम्बेवा गाउँपालिका', 2, 16),
(267, 'याङवरक गाउँपालिका', 2, 17),
(268, 'ईलाम नगरपालिका', 3, 18),
(269, 'देउमाई नगरपालिका', 3, 19),
(270, 'माई नगरपालिका', 3, 20),
(271, 'सूर्योदय नगरपालिका', 3, 21),
(272, 'फाकफोकथुम गाउँपालिका', 3, 22),
(273, 'चुलाचुली गाउँपालिका', 3, 23),
(274, 'माईजोगमाई गाउँपालिका', 3, 24),
(275, 'माङसेबुङ गाउँपालिका', 3, 25),
(276, 'रोङ गाउँपालिका', 3, 26),
(277, 'सन्दकपुर गाउँपालिका', 3, 27),
(278, 'मेचीनगर नगरपालिका', 4, 28),
(279, 'दमक नगरपालिका', 4, 29),
(280, 'कन्काई नगरपालिका', 4, 30),
(281, 'भद्रपुर नगरपालिका', 4, 31),
(282, 'अर्जुनधारा नगरपालिका', 4, 32),
(283, 'शिवशताक्षी नगरपालिका', 4, 33),
(284, 'गौरादह नगरपालिका', 4, 34),
(285, 'विर्तामोड नगरपालिका', 4, 35),
(286, 'कमल गाउँपालिका', 4, 36),
(287, 'गौरीगंज गाउँपालिका', 4, 37),
(288, 'बाह्रदशी गाउँपालिका', 4, 38),
(289, 'झापा गाउँपालिका', 4, 39),
(290, 'बुद्धशान्ति गाउँपालिका', 4, 40),
(291, 'हल्दिवारी गाउँपालिका', 4, 41),
(292, 'कचनकवल गाउँपालिका', 4, 42),
(293, 'विराटनगर महानगरपालिका', 5, 43),
(294, 'बेलवारी नगरपालिका', 5, 44),
(295, 'लेटाङ नगरपालिका', 5, 45),
(296, 'पथरी शनिश्चरे नगरपालिका', 5, 46),
(297, 'रंगेली नगरपालिका', 5, 47),
(298, 'रतुवामाई नगरपालिका', 5, 48),
(299, 'सुनवर्षि नगरपालिका', 5, 49),
(300, 'उर्लावारी नगरपालिका', 5, 50),
(301, 'सुन्दरहरैचा नगरपालिका', 5, 51),
(302, 'बुढीगंगा गाउँपालिका', 5, 52),
(303, 'धनपालथान गाउँपालिका', 5, 53),
(304, 'ग्रामथान गाउँपालिका', 5, 54),
(305, 'जहदा गाउँपालिका', 5, 55),
(306, 'कानेपोखरी गाउँपालिका', 5, 56),
(307, 'कटहरी गाउँपालिका', 5, 57),
(308, 'केरावारी गाउँपालिका', 5, 58),
(309, 'मिक्लाजुङ गाउँपालिका', 5, 59),
(310, 'ईटहरी उपमहानगरपालिका', 6, 60),
(311, 'धरान उपमहानगरपालिका', 6, 61),
(312, 'ईनरुवा नगरपालिका', 6, 62),
(313, 'दुहवी नगरपालिका', 6, 63),
(314, 'रामधुनी नगरपालिका', 6, 64),
(315, 'बराहक्षेत्र नगरपालिका', 6, 65),
(316, 'देवानगञ्ज गाउँपालिका', 6, 66),
(317, 'कोशी गाउँपालिका', 6, 67),
(318, 'गढी गाउँपालिका', 6, 68),
(319, 'बर्जु गाउँपालिका', 6, 69),
(320, 'भोक्राहा नरसिंह गाउँपालिका', 6, 70),
(321, 'हरिनगर गाउँपालिका', 6, 71),
(322, 'पाख्रिबास नगरपालिका', 7, 72),
(323, 'धनकुटा नगरपालिका', 7, 73),
(324, 'महालक्ष्मी नगरपालिका', 7, 74),
(325, 'साँगुरीगढी गाउँपालिका', 7, 75),
(326, 'सहिदभूमि गाउँपालिका', 7, 76),
(327, 'छथर जोरपाटी गाउँपालिका', 7, 77),
(328, 'चौविसे गाउँपालिका', 7, 78),
(329, 'म्याङलुङ नगरपालिका', 8, 79),
(330, 'लालीगुराँस नगरपालिका', 8, 80),
(331, 'आठराई गाउँपालिका', 8, 81),
(332, 'छथर गाउँपालिका', 8, 82),
(333, 'फेदाप गाउँपालिका', 8, 83),
(334, 'मेन्छयायेम गाउँपालिका', 8, 84),
(335, 'चैनपुर नगरपालिका', 9, 85),
(336, 'धर्मदेवी नगरपालिका', 9, 86),
(337, 'खाँदवारी नगरपालिका', 9, 87),
(338, 'मादी नगरपालिका', 9, 88),
(339, 'पाँचखपन नगरपालिका', 9, 89),
(340, 'भोटखोला गाउँपालिका', 9, 90),
(341, 'चिचिला गाउँपालिका', 9, 91),
(342, 'मकालु गाउँपालिका', 9, 92),
(343, 'सभापोखरी गाउँपालिका', 9, 93),
(344, 'सिलीचोङ गाउँपालिका', 9, 94),
(345, 'भोजपुर नगरपालिका', 10, 95),
(346, 'षडानन्द नगरपालिका', 10, 96),
(347, 'टेम्केमैयुङ गाउँपालिका', 10, 97),
(348, 'रामप्रसाद राई गाउँपालिका', 10, 98),
(349, 'अरुण गाउँपालिका', 10, 99),
(350, 'पौवादुङमा गाउँपालिका', 10, 100),
(351, 'साल्पासिलिछो गाउँपालिका', 10, 101),
(352, 'आमचोक गाउँपालिका', 10, 102),
(353, 'हतुवागढी गाउँपालिका', 10, 103),
(354, 'सोलुदुधकुण्ड नगरपालिका', 11, 104),
(355, 'माप्य दुधकोशी गाउँपालिका', 11, 105),
(356, 'खुम्वु पासाङल्हमु गाउँपालिका', 11, 106),
(357, 'थुलुङ दुधकोशी गाउँपालिका', 11, 107),
(358, 'नेचासल्यान गाउँपालिका', 11, 108),
(359, 'माहाकुलुङ गाउँपालिका', 11, 109),
(360, 'लिखु पिके गाउँपालिका', 11, 110),
(361, 'सोताङ गाउँपालिका', 11, 111),
(362, 'सिद्दिचरण नगरपालिका', 12, 112),
(363, 'खिजिदेम्बा गाउँपालिका', 12, 113),
(364, 'चम्पादेवी गाउँपालिका', 12, 114),
(365, 'चिशंखुगढी गाउँपालिका', 12, 115),
(366, 'मानेभञ्याङ गाउँपालिका', 12, 116),
(367, 'मोलुङ गाउँपालिका', 12, 117),
(368, 'लिखु गाउँपालिका', 12, 118),
(369, 'सुनकोशी गाउँपालिका', 12, 119),
(370, 'हलेसी तुवाचुङ नगरपालिका', 13, 120),
(371, 'दिक्तेल रुपाकोट मझुवागढी नगरपालिका', 13, 121),
(372, 'ऐसेलुखर्क गाउँपालिका', 13, 122),
(373, 'रावा बेसी गाउँपालिका', 13, 123),
(374, 'जन्तेढुंगा गाउँपालिका', 13, 124),
(375, 'खोटेहाङ गाउँपालिका', 13, 125),
(376, 'केपिलासगढी गाउँपालिका', 13, 126),
(377, 'दिप्रुङ चुइचुम्मा गाउँपालिका', 13, 127),
(378, 'साकेला गाउँपालिका', 13, 128),
(379, 'वराहपोखरी गाउँपालिका', 13, 129),
(380, 'कटारी नगरपालिका', 14, 130),
(381, 'चौदण्डीगढी नगरपालिका', 14, 131),
(382, 'त्रियुगा नगरपालिका', 14, 132),
(383, 'वेलका नगरपालिका', 14, 133),
(384, 'उदयपुरगढी गाउँपालिका', 14, 134),
(385, 'ताप्ली गाउँपालिका', 14, 135),
(386, 'रौतामाई गाउँपालिका', 14, 136),
(387, 'लिम्चुङ्बुङ गाउँपालिका', 14, 137),
(388, 'राजविराज नगरपालिका', 15, 138),
(389, 'कञ्चनरुप नगरपालिका', 15, 139),
(390, 'डाक्नेश्वरी नगरपालिका', 15, 140),
(391, 'बोदेबरसाईन नगरपालिका', 15, 141),
(392, 'खडक नगरपालिका', 15, 142),
(393, 'शम्भुनाथ नगरपालिका', 15, 143),
(394, 'सुरुङ्‍गा नगरपालिका', 15, 144),
(395, 'हनुमाननगर कङ्‌कालिनी नगरपालिका', 15, 145),
(396, 'सप्तकोशी नगरपालिका', 15, 146),
(397, 'अग्निसाइर कृष्णासरवन गाउँपालिका', 15, 147),
(398, 'छिन्नमस्ता गाउँपालिका', 15, 148),
(399, 'महादेवा गाउँपालिका', 15, 149),
(400, 'तिरहुत गाउँपालिका', 15, 150),
(401, 'तिलाठी कोईलाडी गाउँपालिका', 15, 151),
(402, 'रुपनी गाउँपालिका', 15, 152),
(403, 'राजगढ गाउँपालिका', 15, 153),
(404, 'बिष्णुपुर गाउँपालिका', 15, 154),
(405, 'बलान-बिहुल गाउँपालिका', 15, 155),
(406, 'लहान नगरपालिका', 16, 156),
(407, 'धनगढीमाई नगरपालिका', 16, 157),
(408, 'सिरहा नगरपालिका', 16, 158),
(409, 'गोलबजार नगरपालिका', 16, 159),
(410, 'मिर्चैयाँ नगरपालिका', 16, 160),
(411, 'कल्याणपुर नगरपालिका', 16, 161),
(412, 'कर्जन्हा नगरपालिका', 16, 162),
(413, 'सुखीपुर नगरपालिका', 16, 163),
(414, 'भगवानपुर गाउँपालिका', 16, 164),
(415, 'औरही गाउँपालिका', 16, 165),
(416, 'विष्णुपुर गाउँपालिका', 16, 166),
(417, 'बरियारपट्टी गाउँपालिका', 16, 167),
(418, 'लक्ष्मीपुर पतारी गाउँपालिका', 16, 168),
(419, 'नरहा गाउँपालिका', 16, 169),
(420, 'सखुवानान्कारकट्टी गाउँपालिका', 16, 170),
(421, 'अर्नमा गाउँपालिका', 16, 171),
(422, 'नवराजपुर गाउँपालिका', 16, 172),
(423, 'जनकपुरधाम उपमहानगरपालिका', 17, 173),
(424, 'क्षिरेश्वरनाथ नगरपालिका', 17, 174),
(425, 'गणेशमान चारनाथ नगरपालिका', 17, 175),
(426, 'धनुषाधाम नगरपालिका', 17, 176),
(427, 'नगराइन नगरपालिका', 17, 177),
(428, 'विदेह नगरपालिका', 17, 178),
(429, 'मिथिला नगरपालिका', 17, 179),
(430, 'शहीदनगर नगरपालिका', 17, 180),
(431, 'सबैला नगरपालिका', 17, 181),
(432, 'कमला नगरपालिका', 17, 182),
(433, 'मिथिला बिहारी नगरपालिका', 17, 183),
(434, 'हंसपुर नगरपालिका', 17, 184),
(435, 'जनकनन्दिनी गाउँपालिका', 17, 185),
(436, 'बटेश्वर गाउँपालिका', 17, 186),
(437, 'मुखियापट्टी मुसहरमिया गाउँपालिका', 17, 187),
(438, 'लक्ष्मीनिया गाउँपालिका', 17, 188),
(439, 'औरही गाउँपालिका', 17, 189),
(440, 'धनौजी गाउँपालिका', 17, 190),
(441, 'जलेश्वर नगरपालिका', 18, 191),
(442, 'बर्दिबास नगरपालिका', 18, 192),
(443, 'गौशाला नगरपालिका', 18, 193),
(444, 'लोहरपट्टी नगरपालिका', 18, 194),
(445, 'रामगोपालपुर नगरपालिका', 18, 195),
(446, 'मनरा शिसवा नगरपालिका', 18, 196),
(447, 'मटिहानी नगरपालिका', 18, 197),
(448, 'भँगाहा नगरपालिका', 18, 198),
(449, 'बलवा नगरपालिका', 18, 199),
(450, 'औरही नगरपालिका', 18, 200),
(451, 'एकडारा गाउँपालिका', 18, 201),
(452, 'सोनमा गाउँपालिका', 18, 202),
(453, 'साम्सी गाउँपालिका', 18, 203),
(454, 'महोत्तरी गाउँपालिका', 18, 204),
(455, 'पिपरा गाउँपालिका', 18, 205),
(456, 'ईश्वरपुर नगरपालिका', 19, 206),
(457, 'मलंगवा नगरपालिका', 19, 207),
(458, 'लालबन्दी नगरपालिका', 19, 208),
(459, 'हरिपुर नगरपालिका', 19, 209),
(460, 'हरिपुर्वा नगरपालिका', 19, 210),
(461, 'हरिवन नगरपालिका', 19, 211),
(462, 'बरहथवा नगरपालिका', 19, 212),
(463, 'बलरा नगरपालिका', 19, 213),
(464, 'गोडैटा नगरपालिका', 19, 214),
(465, 'बागमती नगरपालिका', 19, 215),
(466, 'कविलासी नगरपालिका', 19, 216),
(467, 'चक्रघट्टा गाउँपालिका', 19, 217),
(468, 'चन्द्रनगर गाउँपालिका', 19, 218),
(469, 'धनकौल गाउँपालिका', 19, 219),
(470, 'ब्रह्मपुरी गाउँपालिका', 19, 220),
(471, 'रामनगर गाउँपालिका', 19, 221),
(472, 'विष्णु गाउँपालिका', 19, 222),
(473, 'कौडेना गाउँपालिका', 19, 223),
(474, 'पर्सा गाउँपालिका', 19, 224),
(475, 'बसबरीया गाउँपालिका', 19, 225),
(476, 'चन्द्रपुर नगरपालिका', 20, 226),
(477, 'गरुडा नगरपालिका', 20, 227),
(478, 'गौर नगरपालिका', 20, 228),
(479, 'बौधीमाई नगरपालिका', 20, 229),
(480, 'बृन्दावन नगरपालिका', 20, 230),
(481, 'देवाही गोनाही नगरपालिका', 20, 231),
(482, 'गढीमाई नगरपालिका', 20, 232),
(483, 'गुजरा नगरपालिका', 20, 233),
(484, 'कटहरिया नगरपालिका', 20, 234),
(485, 'माधव नारायण नगरपालिका', 20, 235),
(486, 'मौलापुर नगरपालिका', 20, 236),
(487, 'फतुवाबिजयपुर नगरपालिका', 20, 237),
(488, 'ईशनाथ नगरपालिका', 20, 238),
(489, 'परोहा नगरपालिका', 20, 239),
(490, 'राजपुर नगरपालिका', 20, 240),
(491, 'राजदेवी नगरपालिका', 20, 241),
(492, 'दुर्गा भगवती गाउँपालिका', 20, 242),
(493, 'यमुनामाई गाउँपालिका', 20, 243),
(494, 'कलैया उपमहानगरपालिका', 21, 244),
(495, 'जीतपुर सिमरा उपमहानगरपालिका', 21, 245),
(496, 'कोल्हवी नगरपालिका', 21, 246),
(497, 'निजगढ नगरपालिका', 21, 247),
(498, 'महागढीमाई नगरपालिका', 21, 248),
(499, 'सिम्रौनगढ नगरपालिका', 21, 249),
(500, 'पचरौता नगरपालिका', 21, 250),
(501, 'फुङलिङ नगरपालिका', 1, 1),
(502, 'आठराई त्रिवेणी गाउँपालिका', 1, 2),
(503, 'सिदिङ्वा गाउँपालिका', 1, 3),
(504, 'फक्ताङलुङ गाउँपालिका', 1, 4),
(505, 'मिक्वाखोला गाउँपालिका', 1, 5),
(506, 'मेरिङदेन गाउँपालिका', 1, 6),
(507, 'मैवाखोला गाउँपालिका', 1, 7),
(508, 'पाथीभरा याङवरक गाउँपालिका', 1, 8),
(509, 'सिरीजङ्घा गाउँपालिका', 1, 9),
(510, 'फिदिम नगरपालिका', 2, 10),
(511, 'फालेलुङ गाउँपालिका', 2, 11),
(512, 'फाल्गुनन्द गाउँपालिका', 2, 12),
(513, 'हिलिहाङ गाउँपालिका', 2, 13),
(514, 'कुम्मायक गाउँपालिका', 2, 14),
(515, 'मिक्लाजुङ गाउँपालिका', 2, 15),
(516, 'तुम्बेवा गाउँपालिका', 2, 16),
(517, 'याङवरक गाउँपालिका', 2, 17),
(518, 'ईलाम नगरपालिका', 3, 18),
(519, 'देउमाई नगरपालिका', 3, 19),
(520, 'माई नगरपालिका', 3, 20),
(521, 'सूर्योदय नगरपालिका', 3, 21),
(522, 'फाकफोकथुम गाउँपालिका', 3, 22),
(523, 'चुलाचुली गाउँपालिका', 3, 23),
(524, 'माईजोगमाई गाउँपालिका', 3, 24),
(525, 'माङसेबुङ गाउँपालिका', 3, 25),
(526, 'रोङ गाउँपालिका', 3, 26),
(527, 'सन्दकपुर गाउँपालिका', 3, 27),
(528, 'मेचीनगर नगरपालिका', 4, 28),
(529, 'दमक नगरपालिका', 4, 29),
(530, 'कन्काई नगरपालिका', 4, 30),
(531, 'भद्रपुर नगरपालिका', 4, 31),
(532, 'अर्जुनधारा नगरपालिका', 4, 32),
(533, 'शिवशताक्षी नगरपालिका', 4, 33),
(534, 'गौरादह नगरपालिका', 4, 34),
(535, 'विर्तामोड नगरपालिका', 4, 35),
(536, 'कमल गाउँपालिका', 4, 36),
(537, 'गौरीगंज गाउँपालिका', 4, 37),
(538, 'बाह्रदशी गाउँपालिका', 4, 38),
(539, 'झापा गाउँपालिका', 4, 39),
(540, 'बुद्धशान्ति गाउँपालिका', 4, 40),
(541, 'हल्दिवारी गाउँपालिका', 4, 41),
(542, 'कचनकवल गाउँपालिका', 4, 42),
(543, 'विराटनगर महानगरपालिका', 5, 43),
(544, 'बेलवारी नगरपालिका', 5, 44),
(545, 'लेटाङ नगरपालिका', 5, 45),
(546, 'पथरी शनिश्चरे नगरपालिका', 5, 46),
(547, 'रंगेली नगरपालिका', 5, 47),
(548, 'रतुवामाई नगरपालिका', 5, 48),
(549, 'सुनवर्षि नगरपालिका', 5, 49),
(550, 'उर्लावारी नगरपालिका', 5, 50),
(551, 'सुन्दरहरैचा नगरपालिका', 5, 51),
(552, 'बुढीगंगा गाउँपालिका', 5, 52),
(553, 'धनपालथान गाउँपालिका', 5, 53),
(554, 'ग्रामथान गाउँपालिका', 5, 54),
(555, 'जहदा गाउँपालिका', 5, 55),
(556, 'कानेपोखरी गाउँपालिका', 5, 56),
(557, 'कटहरी गाउँपालिका', 5, 57),
(558, 'केरावारी गाउँपालिका', 5, 58),
(559, 'मिक्लाजुङ गाउँपालिका', 5, 59),
(560, 'ईटहरी उपमहानगरपालिका', 6, 60),
(561, 'धरान उपमहानगरपालिका', 6, 61),
(562, 'ईनरुवा नगरपालिका', 6, 62),
(563, 'दुहवी नगरपालिका', 6, 63),
(564, 'रामधुनी नगरपालिका', 6, 64),
(565, 'बराहक्षेत्र नगरपालिका', 6, 65),
(566, 'देवानगञ्ज गाउँपालिका', 6, 66),
(567, 'कोशी गाउँपालिका', 6, 67),
(568, 'गढी गाउँपालिका', 6, 68),
(569, 'बर्जु गाउँपालिका', 6, 69),
(570, 'भोक्राहा नरसिंह गाउँपालिका', 6, 70),
(571, 'हरिनगर गाउँपालिका', 6, 71),
(572, 'पाख्रिबास नगरपालिका', 7, 72),
(573, 'धनकुटा नगरपालिका', 7, 73),
(574, 'महालक्ष्मी नगरपालिका', 7, 74),
(575, 'साँगुरीगढी गाउँपालिका', 7, 75),
(576, 'सहिदभूमि गाउँपालिका', 7, 76),
(577, 'छथर जोरपाटी गाउँपालिका', 7, 77),
(578, 'चौविसे गाउँपालिका', 7, 78),
(579, 'म्याङलुङ नगरपालिका', 8, 79),
(580, 'लालीगुराँस नगरपालिका', 8, 80),
(581, 'आठराई गाउँपालिका', 8, 81),
(582, 'छथर गाउँपालिका', 8, 82),
(583, 'फेदाप गाउँपालिका', 8, 83),
(584, 'मेन्छयायेम गाउँपालिका', 8, 84),
(585, 'चैनपुर नगरपालिका', 9, 85),
(586, 'धर्मदेवी नगरपालिका', 9, 86),
(587, 'खाँदवारी नगरपालिका', 9, 87),
(588, 'मादी नगरपालिका', 9, 88),
(589, 'पाँचखपन नगरपालिका', 9, 89),
(590, 'भोटखोला गाउँपालिका', 9, 90),
(591, 'चिचिला गाउँपालिका', 9, 91),
(592, 'मकालु गाउँपालिका', 9, 92),
(593, 'सभापोखरी गाउँपालिका', 9, 93),
(594, 'सिलीचोङ गाउँपालिका', 9, 94),
(595, 'भोजपुर नगरपालिका', 10, 95),
(596, 'षडानन्द नगरपालिका', 10, 96),
(597, 'टेम्केमैयुङ गाउँपालिका', 10, 97),
(598, 'रामप्रसाद राई गाउँपालिका', 10, 98),
(599, 'अरुण गाउँपालिका', 10, 99),
(600, 'पौवादुङमा गाउँपालिका', 10, 100),
(601, 'साल्पासिलिछो गाउँपालिका', 10, 101),
(602, 'आमचोक गाउँपालिका', 10, 102),
(603, 'हतुवागढी गाउँपालिका', 10, 103),
(604, 'सोलुदुधकुण्ड नगरपालिका', 11, 104),
(605, 'माप्य दुधकोशी गाउँपालिका', 11, 105),
(606, 'खुम्वु पासाङल्हमु गाउँपालिका', 11, 106),
(607, 'थुलुङ दुधकोशी गाउँपालिका', 11, 107),
(608, 'नेचासल्यान गाउँपालिका', 11, 108),
(609, 'माहाकुलुङ गाउँपालिका', 11, 109),
(610, 'लिखु पिके गाउँपालिका', 11, 110),
(611, 'सोताङ गाउँपालिका', 11, 111),
(612, 'सिद्दिचरण नगरपालिका', 12, 112),
(613, 'खिजिदेम्बा गाउँपालिका', 12, 113),
(614, 'चम्पादेवी गाउँपालिका', 12, 114),
(615, 'चिशंखुगढी गाउँपालिका', 12, 115),
(616, 'मानेभञ्याङ गाउँपालिका', 12, 116),
(617, 'मोलुङ गाउँपालिका', 12, 117),
(618, 'लिखु गाउँपालिका', 12, 118),
(619, 'सुनकोशी गाउँपालिका', 12, 119),
(620, 'हलेसी तुवाचुङ नगरपालिका', 13, 120),
(621, 'दिक्तेल रुपाकोट मझुवागढी नगरपालिका', 13, 121),
(622, 'ऐसेलुखर्क गाउँपालिका', 13, 122),
(623, 'रावा बेसी गाउँपालिका', 13, 123),
(624, 'जन्तेढुंगा गाउँपालिका', 13, 124),
(625, 'खोटेहाङ गाउँपालिका', 13, 125),
(626, 'केपिलासगढी गाउँपालिका', 13, 126),
(627, 'दिप्रुङ चुइचुम्मा गाउँपालिका', 13, 127),
(628, 'साकेला गाउँपालिका', 13, 128),
(629, 'वराहपोखरी गाउँपालिका', 13, 129),
(630, 'कटारी नगरपालिका', 14, 130),
(631, 'चौदण्डीगढी नगरपालिका', 14, 131),
(632, 'त्रियुगा नगरपालिका', 14, 132),
(633, 'वेलका नगरपालिका', 14, 133),
(634, 'उदयपुरगढी गाउँपालिका', 14, 134),
(635, 'ताप्ली गाउँपालिका', 14, 135),
(636, 'रौतामाई गाउँपालिका', 14, 136),
(637, 'लिम्चुङ्बुङ गाउँपालिका', 14, 137),
(638, 'राजविराज नगरपालिका', 15, 138),
(639, 'कञ्चनरुप नगरपालिका', 15, 139),
(640, 'डाक्नेश्वरी नगरपालिका', 15, 140),
(641, 'बोदेबरसाईन नगरपालिका', 15, 141),
(642, 'खडक नगरपालिका', 15, 142),
(643, 'शम्भुनाथ नगरपालिका', 15, 143),
(644, 'सुरुङ्‍गा नगरपालिका', 15, 144),
(645, 'हनुमाननगर कङ्‌कालिनी नगरपालिका', 15, 145),
(646, 'सप्तकोशी नगरपालिका', 15, 146),
(647, 'अग्निसाइर कृष्णासरवन गाउँपालिका', 15, 147),
(648, 'छिन्नमस्ता गाउँपालिका', 15, 148),
(649, 'महादेवा गाउँपालिका', 15, 149),
(650, 'तिरहुत गाउँपालिका', 15, 150),
(651, 'तिलाठी कोईलाडी गाउँपालिका', 15, 151),
(652, 'रुपनी गाउँपालिका', 15, 152),
(653, 'राजगढ गाउँपालिका', 15, 153),
(654, 'बिष्णुपुर गाउँपालिका', 15, 154),
(655, 'बलान-बिहुल गाउँपालिका', 15, 155),
(656, 'लहान नगरपालिका', 16, 156),
(657, 'धनगढीमाई नगरपालिका', 16, 157),
(658, 'सिरहा नगरपालिका', 16, 158),
(659, 'गोलबजार नगरपालिका', 16, 159),
(660, 'मिर्चैयाँ नगरपालिका', 16, 160),
(661, 'कल्याणपुर नगरपालिका', 16, 161),
(662, 'कर्जन्हा नगरपालिका', 16, 162),
(663, 'सुखीपुर नगरपालिका', 16, 163),
(664, 'भगवानपुर गाउँपालिका', 16, 164),
(665, 'औरही गाउँपालिका', 16, 165),
(666, 'विष्णुपुर गाउँपालिका', 16, 166),
(667, 'बरियारपट्टी गाउँपालिका', 16, 167),
(668, 'लक्ष्मीपुर पतारी गाउँपालिका', 16, 168),
(669, 'नरहा गाउँपालिका', 16, 169),
(670, 'सखुवानान्कारकट्टी गाउँपालिका', 16, 170),
(671, 'अर्नमा गाउँपालिका', 16, 171),
(672, 'नवराजपुर गाउँपालिका', 16, 172),
(673, 'जनकपुरधाम उपमहानगरपालिका', 17, 173),
(674, 'क्षिरेश्वरनाथ नगरपालिका', 17, 174),
(675, 'गणेशमान चारनाथ नगरपालिका', 17, 175),
(676, 'धनुषाधाम नगरपालिका', 17, 176),
(677, 'नगराइन नगरपालिका', 17, 177),
(678, 'विदेह नगरपालिका', 17, 178),
(679, 'मिथिला नगरपालिका', 17, 179),
(680, 'शहीदनगर नगरपालिका', 17, 180),
(681, 'सबैला नगरपालिका', 17, 181),
(682, 'कमला नगरपालिका', 17, 182),
(683, 'मिथिला बिहारी नगरपालिका', 17, 183),
(684, 'हंसपुर नगरपालिका', 17, 184),
(685, 'जनकनन्दिनी गाउँपालिका', 17, 185),
(686, 'बटेश्वर गाउँपालिका', 17, 186),
(687, 'मुखियापट्टी मुसहरमिया गाउँपालिका', 17, 187),
(688, 'लक्ष्मीनिया गाउँपालिका', 17, 188),
(689, 'औरही गाउँपालिका', 17, 189),
(690, 'धनौजी गाउँपालिका', 17, 190),
(691, 'जलेश्वर नगरपालिका', 18, 191),
(692, 'बर्दिबास नगरपालिका', 18, 192),
(693, 'गौशाला नगरपालिका', 18, 193),
(694, 'लोहरपट्टी नगरपालिका', 18, 194),
(695, 'रामगोपालपुर नगरपालिका', 18, 195),
(696, 'मनरा शिसवा नगरपालिका', 18, 196),
(697, 'मटिहानी नगरपालिका', 18, 197),
(698, 'भँगाहा नगरपालिका', 18, 198),
(699, 'बलवा नगरपालिका', 18, 199),
(700, 'औरही नगरपालिका', 18, 200),
(701, 'एकडारा गाउँपालिका', 18, 201),
(702, 'सोनमा गाउँपालिका', 18, 202),
(703, 'साम्सी गाउँपालिका', 18, 203),
(704, 'महोत्तरी गाउँपालिका', 18, 204),
(705, 'पिपरा गाउँपालिका', 18, 205),
(706, 'ईश्वरपुर नगरपालिका', 19, 206),
(707, 'मलंगवा नगरपालिका', 19, 207),
(708, 'लालबन्दी नगरपालिका', 19, 208),
(709, 'हरिपुर नगरपालिका', 19, 209),
(710, 'हरिपुर्वा नगरपालिका', 19, 210),
(711, 'हरिवन नगरपालिका', 19, 211),
(712, 'बरहथवा नगरपालिका', 19, 212),
(713, 'बलरा नगरपालिका', 19, 213),
(714, 'गोडैटा नगरपालिका', 19, 214),
(715, 'बागमती नगरपालिका', 19, 215),
(716, 'कविलासी नगरपालिका', 19, 216),
(717, 'चक्रघट्टा गाउँपालिका', 19, 217),
(718, 'चन्द्रनगर गाउँपालिका', 19, 218),
(719, 'धनकौल गाउँपालिका', 19, 219),
(720, 'ब्रह्मपुरी गाउँपालिका', 19, 220),
(721, 'रामनगर गाउँपालिका', 19, 221),
(722, 'विष्णु गाउँपालिका', 19, 222),
(723, 'कौडेना गाउँपालिका', 19, 223),
(724, 'पर्सा गाउँपालिका', 19, 224),
(725, 'बसबरीया गाउँपालिका', 19, 225),
(726, 'चन्द्रपुर नगरपालिका', 20, 226),
(727, 'गरुडा नगरपालिका', 20, 227),
(728, 'गौर नगरपालिका', 20, 228),
(729, 'बौधीमाई नगरपालिका', 20, 229),
(730, 'बृन्दावन नगरपालिका', 20, 230),
(731, 'देवाही गोनाही नगरपालिका', 20, 231),
(732, 'गढीमाई नगरपालिका', 20, 232),
(733, 'गुजरा नगरपालिका', 20, 233),
(734, 'कटहरिया नगरपालिका', 20, 234),
(735, 'माधव नारायण नगरपालिका', 20, 235),
(736, 'मौलापुर नगरपालिका', 20, 236),
(737, 'फतुवाबिजयपुर नगरपालिका', 20, 237),
(738, 'ईशनाथ नगरपालिका', 20, 238),
(739, 'परोहा नगरपालिका', 20, 239),
(740, 'राजपुर नगरपालिका', 20, 240),
(741, 'राजदेवी नगरपालिका', 20, 241),
(742, 'दुर्गा भगवती गाउँपालिका', 20, 242),
(743, 'यमुनामाई गाउँपालिका', 20, 243),
(744, 'कलैया उपमहानगरपालिका', 21, 244),
(745, 'जीतपुर सिमरा उपमहानगरपालिका', 21, 245),
(746, 'कोल्हवी नगरपालिका', 21, 246),
(747, 'निजगढ नगरपालिका', 21, 247),
(748, 'महागढीमाई नगरपालिका', 21, 248),
(749, 'सिम्रौनगढ नगरपालिका', 21, 249),
(750, 'पचरौता नगरपालिका', 21, 250),
(751, 'आदर्श कोटवाल गाउँपालिका', 21, 251),
(752, 'करैयामाई गाउँपालिका', 21, 252),
(753, 'देवताल गाउँपालिका', 21, 253),
(754, 'परवानीपुर गाउँपालिका', 21, 254),
(755, 'प्रसौनी गाउँपालिका', 21, 255),
(756, 'फेटा गाउँपालिका', 21, 256),
(757, 'बारागढीगाउँपालिका', 21, 257),
(758, 'सुवर्ण गाउँपालिका', 21, 258),
(759, 'विश्रामपुर गाउँपालिका', 21, 259),
(760, 'बिरगंज महानगरपालिका', 22, 260),
(761, 'पोखरिया नगरपालिका', 22, 261),
(762, 'बहुदरमाई नगरपालिका', 22, 262),
(763, 'पर्सागढी नगरपालिका', 22, 263),
(764, 'ठोरी गाउँपालिका', 22, 264),
(765, 'जगरनाथपुर गाउँपालिका', 22, 265),
(766, 'धोबीनी गाउँपालिका', 22, 266),
(767, 'छिपहरमाई गाउँपालिका', 22, 267),
(768, 'पकाहा मैनपुर गाउँपालिका', 22, 268),
(769, 'बिन्दबासिनी गाउँपालिका', 22, 269),
(770, 'सखुवा प्रसौनी गाउँपालिका', 22, 270),
(771, 'पटेर्वा सुगौली गाउँपालिका', 22, 271),
(772, 'कालिकामाई गाउँपालिका', 22, 272),
(773, 'जिरा भवानी गाउँपालिका', 22, 273),
(774, 'कमलामाई नगरपालिका', 23, 274),
(775, 'दुधौली नगरपालिका', 23, 275),
(776, 'गोलन्जर गाउँपालिका', 23, 276),
(777, 'घ्याङलेख गाउँपालिका', 23, 277),
(778, 'तीनपाटन गाउँपालिका', 23, 278),
(779, 'फिक्कल गाउँपालिका', 23, 279),
(780, 'मरिण गाउँपालिका', 23, 280),
(781, 'सुनकोशी गाउँपालिका', 23, 281),
(782, 'हरिहरपुरगढी गाउँपालिका', 23, 282),
(783, 'मन्थली नगरपालिका', 24, 283),
(784, 'रामेछाप नगरपालिका', 24, 284),
(785, 'उमाकुण्ड गाउँपालिका', 24, 285),
(786, 'खाँडादेवी गाउँपालिका', 24, 286),
(787, 'गोकुलगङ्गा गाउँपालिका', 24, 287),
(788, 'दोरम्बा गाउँपालिका', 24, 288),
(789, 'लिखु तामाकोशी गाउँपालिका', 24, 289),
(790, 'सुनापती गाउँपालिका', 24, 290),
(791, 'जिरी नगरपालिका', 25, 291),
(792, 'भिमेश्वर नगरपालिका', 25, 292),
(793, 'कालिन्चोक गाउँपालिका', 25, 293),
(794, 'गौरीशङ्कर गाउँपालिका', 25, 294),
(795, 'तामाकोशी गाउँपालिका', 25, 295),
(796, 'मेलुङ्ग गाउँपालिका', 25, 296),
(797, 'विगु गाउँपालिका', 25, 297),
(798, 'वैतेश्वर गाउँपालिका', 25, 298),
(799, 'शैलुङ्ग गाउँपालिका', 25, 299),
(800, 'चौतारा साँगाचोकगढी नगरपालिका', 26, 300),
(801, 'बाह्रविसे नगरपालिका', 26, 301),
(802, 'मेलम्ची नगरपालिका', 26, 302),
(803, 'ईन्द्रावती गाउँपालिका', 26, 303),
(804, 'जुगल गाउँपालिका', 26, 304),
(805, 'पाँचपोखरी थाङपाल गाउँपालिका', 26, 305),
(806, 'बलेफी गाउँपालिका', 26, 306),
(807, 'भोटेकोशी गाउँपालिका', 26, 307),
(808, 'लिसङ्खु पाखर गाउँपालिका', 26, 308),
(809, 'सुनकोशी गाउँपालिका', 26, 309),
(810, 'हेलम्बु गाउँपालिका', 26, 310),
(811, 'त्रिपुरासुन्दरी गाउँपालिका', 26, 311),
(812, 'धुलिखेल नगरपालिका', 27, 312),
(813, 'बनेपा नगरपालिका', 27, 313),
(814, 'पनौती नगरपालिका', 27, 314),
(815, 'पाँचखाल नगरपालिका', 27, 315),
(816, 'नमोबुद्ध नगरपालिका', 27, 316),
(817, 'मण्डनदेउपुर नगरपालिका', 27, 317),
(818, 'खानीखोला गाउँपालिका', 27, 318),
(819, 'चौंरीदेउराली गाउँपालिका', 27, 319),
(820, 'तेमाल गाउँपालिका', 27, 320),
(821, 'बेथानचोक गाउँपालिका', 27, 321),
(822, 'भुम्लु गाउँपालिका', 27, 322),
(823, 'महाभारत गाँउपालिका', 27, 323),
(824, 'रोशी गाउँपालिका', 27, 324),
(825, 'ललितपुर महानगरपालिका', 28, 325),
(826, 'गोदावरी नगरपालिका', 28, 326),
(827, 'महालक्ष्मी नगरपालिका', 28, 327),
(828, 'कोन्ज्योसोम गाउँपालिका', 28, 328),
(829, 'बागमती गाउँपालिका', 28, 329),
(830, 'महाङ्काल गाउँपालिका', 28, 330),
(831, 'चाँगुनारायण नगरपालिका', 29, 331),
(832, 'भक्तपुर नगरपालिका', 29, 332),
(833, 'मध्यपुर थिमी नगरपालिका', 29, 333),
(834, 'सूर्यविनायक नगरपालिका', 29, 334),
(835, 'काठमाण्डौं महानगरपालिका', 30, 335),
(836, 'कागेश्वरी मनोहरा नगरपालिका', 30, 336),
(837, 'कीर्तिपुर नगरपालिका', 30, 337),
(838, 'गोकर्णेश्वर नगरपालिका', 30, 338),
(839, 'चन्द्रागिरी नगरपालिका', 30, 339),
(840, 'टोखा नगरपालिका', 30, 340),
(841, 'तारकेश्वर नगरपालिका', 30, 341),
(842, 'दक्षिणकाली नगरपालिका', 30, 342),
(843, 'नागार्जुन नगरपालिका', 30, 343),
(844, 'बुढानिलकण्ठ नगरपालिका', 30, 344),
(845, 'शङ्खरापुर नगरपालिका', 30, 345),
(846, 'विदुर नगरपालिका', 31, 346),
(847, 'बेलकोटगढी नगरपालिका', 31, 347),
(848, 'ककनी गाउँपालिका', 31, 348),
(849, 'किस्पाङ गाउँपालिका', 31, 349),
(850, 'तादी गाउँपालिका', 31, 350),
(851, 'तारकेश्वर गाउँपालिका', 31, 351),
(852, 'दुप्चेश्वर गाउँपालिका', 31, 352),
(853, 'पञ्चकन्या गाउँपालिका', 31, 353),
(854, 'लिखु गाउँपालिका', 31, 354),
(855, 'म्यगङ गाउँपालिका', 31, 355),
(856, 'शिवपुरी गाउँपालिका', 31, 356),
(857, 'सुर्यगढी गाउँपालिका', 31, 357),
(858, 'उत्तरगया गाउँपालिका', 32, 358),
(859, 'कालिका गाउँपालिका', 32, 359),
(860, 'गोसाईकुण्ड गाउँपालिका', 32, 360),
(861, 'नौकुण्ड गाउँपालिका', 32, 361),
(862, 'आमाछोदिङमो गाउँपालिका', 32, 362),
(863, 'धुनीबेंशी नगरपालिका', 33, 363),
(864, 'निलकण्ठ नगरपालिका', 33, 364),
(865, 'खनियाबास गाउँपालिका', 33, 365),
(866, 'गजुरी गाउँपालिका', 33, 366),
(867, 'गल्छी गाउँपालिका', 33, 367),
(868, 'गङ्गाजमुना गाउँपालिका', 33, 368),
(869, 'ज्वालामूखी गाउँपालिका', 33, 369),
(870, 'थाक्रे गाउँपालिका', 33, 370),
(871, 'नेत्रावती डबजोङ गाउँपालिका', 33, 371),
(872, 'बेनीघाट रोराङ्ग गाउँपालिका', 33, 372),
(873, 'रुवी भ्याली गाउँपालिका', 33, 373),
(874, 'सिद्धलेक गाउँपालिका', 33, 374),
(875, 'त्रिपुरासुन्दरी गाउँपालिका', 33, 375),
(876, 'हेटौडा उपमहानगरपालिका', 34, 376),
(877, 'थाहा नगरपालिका', 34, 377),
(878, 'इन्द्रसरोबर गाउँपालिका', 34, 378),
(879, 'कैलाश गाउँपालिका', 34, 379),
(880, 'बकैया गाउँपालिका', 34, 380),
(881, 'बाग्मति गाउँपालिका', 34, 381),
(882, 'भिमफेदी गाउँपालिका', 34, 382),
(883, 'मकवानपुरगढी गाउँपालिका', 34, 383),
(884, 'मनहरी गाउँपालिका', 34, 384),
(885, 'राक्सिराङ्ग गाउँपालिका', 34, 385),
(886, 'भरतपुर महानगरपालिका', 35, 386),
(887, 'कालिका नगरपालिका', 35, 387),
(888, 'खैरहनी नगरपालिका', 35, 388),
(889, 'माडी नगरपालिका', 35, 389),
(890, 'रत्ननगर नगरपालिका', 35, 390),
(891, 'राप्ती नगरपालिका', 35, 391),
(892, 'इच्छाकामना गाउँपालिका', 35, 392),
(893, 'गोरखा नगरपालिका', 36, 393),
(894, 'पालुङटार नगरपालिका', 36, 394),
(895, 'बारपाक सुलिकोट गाउँपालिका', 36, 395),
(896, 'सिरानचोक गाउँपालिका', 36, 396),
(897, 'अजिरकोट गाउँपालिका', 36, 397),
(898, 'आरूघाट गाउँपालिका', 36, 398),
(899, 'गण्डकी गाउँपालिका', 36, 399),
(900, 'चुमनुव्री गाउँपालिका', 36, 400),
(901, 'धार्चे गाउँपालिका', 36, 401),
(902, 'भिमसेनथापा गाउँपालिका', 36, 402),
(903, 'शहिद लखन गाउँपालिका', 36, 403),
(904, 'बेसीशहर नगरपालिका', 37, 404),
(905, 'मध्यनेपाल नगरपालिका', 37, 405),
(906, 'रार्इनास नगरपालिका', 37, 406),
(907, 'सुन्दरबजार नगरपालिका', 37, 407),
(908, 'क्व्होलासोथार गाउँपालिका', 37, 408),
(909, 'दूधपोखरी गाउँपालिका', 37, 409),
(910, 'दोर्दी गाउँपालिका', 37, 410),
(911, 'मर्स्याङदी गाउँपालिका', 37, 411),
(912, 'भानु नगरपालिका', 38, 412),
(913, 'भिमाद नगरपालिका', 38, 413),
(914, 'व्यास नगरपालिका', 38, 414),
(915, 'शुक्लागण्डकी नगरपालिका', 38, 415),
(916, 'आँबुखैरेनी गाउँपालिका', 38, 416),
(917, 'ऋषिङ्ग गाउँपालिका', 38, 417),
(918, 'घिरिङ गाउँपालिका', 38, 418),
(919, 'देवघाट गाउँपालिका', 38, 419),
(920, 'म्याग्दे गाउँपालिका', 38, 420),
(921, 'वन्दिपुर गाउँपालिका', 38, 421),
(922, 'गल्याङ नगरपालिका', 39, 422),
(923, 'चापाकोट नगरपालिका', 39, 423),
(924, 'पुतलीबजार नगरपालिका', 39, 424),
(925, 'भीरकोट नगरपालिका', 39, 425),
(926, 'वालिङ नगरपालिका', 39, 426),
(927, 'अर्जुनचौपारी गाउँपालिका', 39, 427),
(928, 'आँधिखोला गाउँपालिका', 39, 428),
(929, 'कालीगण्डकी गाउँपालिका', 39, 429),
(930, 'फेदीखोला गाउँपालिका', 39, 430),
(931, 'बिरुवा गाउँपालिका', 39, 431),
(932, 'हरिनास गाउँपालिका', 39, 432),
(933, 'पोखरा महानगरपालिका', 40, 433),
(934, 'अन्नपूर्ण गाउँपालिका', 40, 434),
(935, 'माछापुच्छ्रे गाउँपालिका', 40, 435),
(936, 'मादी गाउँपालिका', 40, 436),
(937, 'रूपा गाउँपालिका', 40, 437),
(938, 'चामे गाउँपालिका', 41, 438),
(939, 'नार्पा भूमि गाउँपालिका', 41, 439),
(940, 'नासोँ गाउँपालिका', 41, 440),
(941, 'मनाङ ङिस्याङ गाउँपालिका', 41, 441),
(942, 'घरपझोङ गाउँपालिका', 42, 442),
(943, 'थासाङ गाउँपालिका', 42, 443),
(944, 'लो-घेकर दामोदरकुण्ड गाउँपालिका', 42, 444),
(945, 'लोमन्थाङ गाउँपालिका', 42, 445),
(946, 'वारागुङ मुक्तिक्षेत्र गाउँपालिका', 42, 446),
(947, 'बेनी नगरपालिका', 43, 447),
(948, 'अन्नपुर्ण गाउँपालिका', 43, 448),
(949, 'धवलागिरी गाउँपालिका', 43, 449),
(950, 'मंगला गाउँपालिका', 43, 450),
(951, 'मालिका गाउँपालिका', 43, 451),
(952, 'रघुगंगा गाउँपालिका', 43, 452),
(953, 'कुश्मा नगरपालिका', 44, 453),
(954, 'फलेवास नगरपालिका', 44, 454),
(955, 'जलजला गाउँपालिका', 44, 455),
(956, 'पैयूं गाउँपालिका', 44, 456),
(957, 'महाशिला गाउँपालिका', 44, 457),
(958, 'मोदी गाउँपालिका', 44, 458),
(959, 'विहादी गाउँपालिका', 44, 459),
(960, 'बागलुङ नगरपालिका', 45, 460),
(961, 'गल्कोट नगरपालिका', 45, 461),
(962, 'जैमूनी नगरपालिका', 45, 462),
(963, 'ढोरपाटन नगरपालिका', 45, 463),
(964, 'वरेङ गाउँपालिका', 45, 464),
(965, 'काठेखोला गाउँपालिका', 45, 465),
(966, 'तमानखोला गाउँपालिका', 45, 466),
(967, 'ताराखोला गाउँपालिका', 45, 467),
(968, 'निसीखोला गाउँपालिका', 45, 468),
(969, 'वडिगाड गाउँपालिका', 45, 469),
(970, 'कावासोती नगरपालिका', 46, 470),
(971, 'गैडाकोट नगरपालिका', 46, 471),
(972, 'देवचुली नगरपालिका', 46, 472),
(973, 'मध्यविन्दु नगरपालिका', 46, 473),
(974, 'बौदीकाली गाउँपालिका', 46, 474),
(975, 'बुलिङटार गाउँपालिका', 46, 475),
(976, 'विनयी त्रिवेणी गाउँपालिका', 46, 476),
(977, 'हुप्सेकोट गाउँपालिका', 46, 477),
(978, 'मुसिकोट नगरपालिका', 47, 478),
(979, 'रेसुङ्गा नगरपालिका', 47, 479),
(980, 'ईस्मा गाउँपालिका', 47, 480),
(981, 'कालीगण्डकी गाउँपालिका', 47, 481),
(982, 'गुल्मी दरबार गाउँपालिका', 47, 482),
(983, 'सत्यवती गाउँपालिका', 47, 483),
(984, 'चन्द्रकोट गाउँपालिका', 47, 484),
(985, 'रुरुक्षेत्र गाउँपालिका', 47, 485),
(986, 'छत्रकोट गाउँपालिका', 47, 486),
(987, 'धुर्कोट गाउँपालिका', 47, 487),
(988, 'मदाने गाउँपालिका', 47, 488),
(989, 'मालिका गाउँपालिका', 47, 489),
(990, 'रामपुर नगरपालिका', 48, 490),
(991, 'तानसेन नगरपालिका', 48, 491),
(992, 'निस्दी गाउँपालिका', 48, 492),
(993, 'पूर्वखोला गाउँपालिका', 48, 493),
(994, 'रम्भा गाउँपालिका', 48, 494),
(995, 'माथागढी गाउँपालिका', 48, 495),
(996, 'तिनाउ गाउँपालिका', 48, 496),
(997, 'बगनासकाली गाउँपालिका', 48, 497),
(998, 'रिब्दिकोट गाउँपालिका', 48, 498),
(999, 'रैनादेवी छहरा गाउँपालिका', 48, 499),
(1000, 'बुटवल उपमहानगरपालिका', 49, 500),
(1001, 'देवदह नगरपालिका', 49, 501),
(1002, 'लुम्बिनी सांस्कृतिक नगरपालिका', 49, 502),
(1003, 'सैनामैना नगरपालिका', 49, 503),
(1004, 'सिद्धार्थनगर नगरपालिका', 49, 504),
(1005, 'तिलोत्तमा नगरपालिका', 49, 505),
(1006, 'गैडहवा गाउँपालिका', 49, 506),
(1007, 'कन्चन गाउँपालिका', 49, 507),
(1008, 'कोटहीमाई गाउँपालिका', 49, 508),
(1009, 'मर्चवारी गाउँपालिका', 49, 509),
(1010, 'मायादेवी गाउँपालिका', 49, 510),
(1011, 'ओमसतिया गाउँपालिका', 49, 511),
(1012, 'रोहिणी गाउँपालिका', 49, 512),
(1013, 'सम्मरीमाई गाउँपालिका', 49, 513),
(1014, 'सियारी गाउँपालिका', 49, 514),
(1015, 'शुद्धोधन गाउँपालिका', 49, 515),
(1016, 'कपिलवस्तु नगरपालिका', 50, 516),
(1017, 'बुद्धभुमी नगरपालिका', 50, 517),
(1018, 'शिवराज नगरपालिका', 50, 518),
(1019, 'महाराजगंज नगरपालिका', 50, 519),
(1020, 'कृष्णनगर नगरपालिका', 50, 520),
(1021, 'बाणगंगा नगरपालिका', 50, 521),
(1022, 'मायादेवी गाउँपालिका', 50, 522),
(1023, 'यसोधरा गाउँपालिका', 50, 523),
(1024, 'सुद्धोधन गाउँपालिका', 50, 524),
(1025, 'विजयनगर गाउँपालिका', 50, 525),
(1026, 'सन्धिखर्क नगरपालिका', 51, 526),
(1027, 'शितगंगा नगरपालिका', 51, 527),
(1028, 'भूमिकास्थान नगरपालिका', 51, 528),
(1029, 'छत्रदेव गाउँपालिका', 51, 529),
(1030, 'पाणिनी गाउँपालिका', 51, 530),
(1031, 'मालारानी गाउँपालिका', 51, 531),
(1032, 'प्यूठान नगरपालिका', 52, 532),
(1033, 'स्वर्गद्वारी नगरपालिका', 52, 533),
(1034, 'गौमुखी गाउँपालिका', 52, 534),
(1035, 'माण्डवी गाउँपालिका', 52, 535),
(1036, 'सरुमारानी गाउँपालिका', 52, 536),
(1037, 'मल्लरानी गाउँपालिका', 52, 537),
(1038, 'नौवहिनी गाउँपालिका', 52, 538),
(1039, 'झिमरुक गाउँपालिका', 52, 539),
(1040, 'ऐरावती गाउँपालिका', 52, 540),
(1041, 'रोल्पा नगरपालिका', 53, 541),
(1042, 'त्रिवेणी गाउँपालिका', 53, 542),
(1043, 'परिवर्तन गाउँपालिका', 53, 543),
(1044, 'माडी गाउँपालिका', 53, 544),
(1045, 'रुन्टीगढी गाउँपालिका', 53, 545),
(1046, 'लुङग्री गाउँपालिका', 53, 546),
(1047, 'गंगादेव गाउँपालिका', 53, 547),
(1048, 'सुनछहरी गाउँपालिका', 53, 548),
(1049, 'सुनिल स्मृति गाउँपालिका', 53, 549),
(1050, 'थवाङ गाउँपालिका', 53, 550),
(1051, 'पुथा उत्तरगंगा गाउँपालिका', 54, 551),
(1052, 'भूमे गाउँपालिका', 54, 552),
(1053, 'सिस्ने गाउँपालिका', 54, 553),
(1054, 'तुल्सीपुर उपमहानगरपालिका', 55, 554),
(1055, 'घोराही उपमहानगरपालिका', 55, 555),
(1056, 'लमही नगरपालिका', 55, 556),
(1057, 'बंगलाचुली गाउँपालिका', 55, 557),
(1058, 'दंगीशरण गाउँपालिका', 55, 558),
(1059, 'गढवा गाउँपालिका', 55, 559),
(1060, 'राजपुर गाउँपालिका', 55, 560),
(1061, 'राप्ती गाउँपालिका', 55, 561),
(1062, 'शान्तिनगर गाउँपालिका', 55, 562),
(1063, 'बबई गाउँपालिका', 55, 563),
(1064, 'नेपालगंज उपमहानगरपालिका', 56, 564),
(1065, 'कोहलपुर नगरपालिका', 56, 565),
(1066, 'नरैनापुर गाउँपालिका', 56, 566),
(1067, 'राप्ती सोनारी गाउँपालिका', 56, 567),
(1068, 'बैजनाथ गाउँपालिका', 56, 568),
(1069, 'खजुरा गाउँपालिका', 56, 569),
(1070, 'डुडुवा गाउँपालिका', 56, 570),
(1071, 'जानकी गाउँपालिका', 56, 571),
(1072, 'गुलरिया नगरपालिका', 57, 572),
(1073, 'मधुवन नगरपालिका', 57, 573),
(1074, 'राजापुर नगरपालिका', 57, 574),
(1075, 'ठाकुरबाबा नगरपालिका', 57, 575),
(1076, 'बाँसगढी नगरपालिका', 57, 576),
(1077, 'बारबर्दिया नगरपालिका', 57, 577),
(1078, 'बढैयाताल गाउँपालिका', 57, 578),
(1079, 'गेरुवा गाउँपालिका', 57, 579),
(1080, 'बर्दघाट नगरपालिका', 58, 580),
(1081, 'रामग्राम नगरपालिका', 58, 581),
(1082, 'सुनवल नगरपालिका', 58, 582),
(1083, 'सुस्ता गाउँपालिका', 58, 583),
(1084, 'पाल्हीनन्दन गाउँपालिका', 58, 584),
(1085, 'प्रतापपुर गाउँपालिका', 58, 585),
(1086, 'सरावल गाउँपालिका', 58, 586),
(1087, 'मुसिकोट नगरपालिका', 59, 587),
(1088, 'चौरजहारी नगरपालिका', 59, 588),
(1089, 'आठबिसकोट नगरपालिका', 59, 589),
(1090, 'बाँफिकोट गाउँपालिका', 59, 590),
(1091, 'त्रिवेणी गाउँपालिका', 59, 591),
(1092, 'सानी भेरी गाउँपालिका', 59, 592),
(1093, 'शारदा नगरपालिका', 60, 593),
(1094, 'बागचौर नगरपालिका', 60, 594),
(1095, 'बनगाड कुपिण्डे नगरपालिका', 60, 595),
(1096, 'कालिमाटी गाउँपालिका', 60, 596),
(1097, 'त्रिवेणी गाउँपालिका', 60, 597),
(1098, 'कपुरकोट गाउँपालिका', 60, 598),
(1099, 'छत्रेश्वरी गाउँपालिका', 60, 599),
(1100, 'सिद्ध कुमाख गाउँपालिका', 60, 600),
(1101, 'कुमाख गाउँपालिका', 60, 601),
(1102, 'दार्मा गाउँपालिका', 60, 602),
(1103, 'बीरेन्द्रनगर नगरपालिका', 61, 603),
(1104, 'भेरीगंगा नगरपालिका', 61, 604),
(1105, 'गुर्भाकोट नगरपालिका', 61, 605),
(1106, 'पञ्चपुरी नगरपालिका', 61, 606),
(1107, 'लेकवेशी नगरपालिका', 61, 607),
(1108, 'चौकुने गाउँपालिका', 61, 608),
(1109, 'बराहताल गाउँपालिका', 61, 609),
(1110, 'चिङ्गाड गाउँपालिका', 61, 610),
(1111, 'सिम्ता गाउँपालिका', 61, 611),
(1112, 'नारायण नगरपालिका', 62, 612),
(1113, 'दुल्लु नगरपालिका', 62, 613),
(1114, 'चामुण्डा विन्द्रासैनी नगरपालिका', 62, 614),
(1115, 'आठबीस नगरपालिका', 62, 615),
(1116, 'भगवतीमाई गाउँपालिका', 62, 616),
(1117, 'गुराँस गाउँपालिका', 62, 617),
(1118, 'डुंगेश्वर गाउँपालिका', 62, 618),
(1119, 'नौमुले गाउँपालिका', 62, 619),
(1120, 'महावु गाउँपालिका', 62, 620),
(1121, 'भैरवी गाउँपालिका', 62, 621),
(1122, 'ठाँटीकाँध गाउँपालिका', 62, 622),
(1123, 'भेरी नगरपालिका', 63, 623),
(1124, 'छेडागाड नगरपालिका', 63, 624),
(1125, 'नलगाड नगरपालिका', 63, 625),
(1126, 'बारेकोट गाउँपालिका', 63, 626),
(1127, 'कुसे गाउँपालिका', 63, 627),
(1128, 'जुनीचाँदे गाउँपालिका', 63, 628),
(1129, 'शिवालय गाउँपालिका', 63, 629),
(1130, 'ठूली भेरी नगरपालिका', 64, 630),
(1131, 'त्रिपुरासुन्दरी नगरपालिका', 64, 631),
(1132, 'डोल्पो बुद्ध गाउँपालिका', 64, 632),
(1133, 'शे फोक्सुन्डो गाउँपालिका', 64, 633),
(1134, 'जगदुल्ला गाउँपालिका', 64, 634),
(1135, 'मुड्केचुला गाउँपालिका', 64, 635),
(1136, 'काईके गाउँपालिका', 64, 636),
(1137, 'छार्का ताङसोङ गाउँपालिका', 64, 637),
(1138, 'चन्दननाथ नगरपालिका', 65, 638),
(1139, 'कनकासुन्दरी गाउँपालिका', 65, 639),
(1140, 'सिंजा गाउँपालिका', 65, 640),
(1141, 'हिमा गाउँपालिका', 65, 641),
(1142, 'तिला गाउँपालिका', 65, 642),
(1143, 'गुठिचौर गाउँपालिका', 65, 643),
(1144, 'तातोपानी गाउँपालिका', 65, 644),
(1145, 'पातारासी गाउँपालिका', 65, 645),
(1146, 'खाँडाचक्र नगरपालिका', 66, 646),
(1147, 'रास्कोट नगरपालिका', 66, 647),
(1148, 'तिलागुफा नगरपालिका', 66, 648),
(1149, 'पचालझरना गाउँपालिका', 66, 649),
(1150, 'सान्नी त्रिवेणी गाउँपालिका', 66, 650),
(1151, 'नरहरिनाथ गाउँपालिका', 66, 651),
(1152, 'शुभ कालीका गाउँपालिका', 66, 652),
(1153, 'महावै गाउँपालिका', 66, 653),
(1154, 'पलाता गाउँपालिका', 66, 654),
(1155, 'छायाँनाथ रारा नगरपालिका', 67, 655),
(1156, 'मुगुम कार्मारोंग गाउँपालिका', 67, 656),
(1157, 'सोरु गाउँपालिका', 67, 657),
(1158, 'खत्याड गाउँपालिका', 67, 658),
(1159, 'सिमकोट गाउँपालिका', 68, 659),
(1160, 'नाम्खा गाउँपालिका', 68, 660),
(1161, 'खार्पुनाथ गाउँपालिका', 68, 661),
(1162, 'सर्केगाड गाउँपालिका', 68, 662),
(1163, 'चंखेली गाउँपालिका', 68, 663),
(1164, 'अदानचुली गाउँपालिका', 68, 664),
(1165, 'ताँजाकोट गाउँपालिका', 68, 665),
(1166, 'बडीमालिका नगरपालिका', 69, 666),
(1167, 'त्रिवेणी नगरपालिका', 69, 667),
(1168, 'बुढीगंगा नगरपालिका', 69, 668),
(1169, 'बुढीनन्दा नगरपालिका', 69, 669),
(1170, 'गौमुल गाउँपालिका', 69, 670),
(1171, 'जगन्‍नाथ गाउँपालिका', 69, 671),
(1172, 'स्वामीकार्तिक खापर गाउँपालिका', 69, 672),
(1173, 'खप्तड छेडेदह गाउँपालिका', 69, 673),
(1174, 'हिमाली गाउँपालिका', 69, 674),
(1175, 'जयपृथ्वी नगरपालिका', 70, 675),
(1176, 'बुंगल नगरपालिका', 70, 676),
(1177, 'तलकोट गाउँपालिका', 70, 677),
(1178, 'मष्टा गाउँपालिका', 70, 678),
(1179, 'खप्तडछान्ना गाउँपालिका', 70, 679),
(1180, 'थलारा गाउँपालिका', 70, 680),
(1181, 'वित्थडचिर गाउँपालिका', 70, 681),
(1182, 'सूर्मा गाउँपालिका', 70, 682),
(1183, 'छबिसपाथिभेरा गाउँपालिका', 70, 683),
(1184, 'दुर्गाथली गाउँपालिका', 70, 684),
(1185, 'केदारस्युँ गाउँपालिका', 70, 685),
(1186, 'साइपाल गाउँपालिका', 70, 686),
(1187, 'मंगलसेन नगरपालिका', 71, 687),
(1188, 'कमलबजार नगरपालिका', 71, 688),
(1189, 'साँफेबगर नगरपालिका', 71, 689),
(1190, 'पन्चदेवल विनायक नगरपालिका', 71, 690),
(1191, 'चौरपाटी गाउँपालिका', 71, 691),
(1192, 'मेल्लेख गाउँपालिका', 71, 692),
(1193, 'बान्निगढी जयगढ गाउँपालिका', 71, 693),
(1194, 'रामारोशन गाउँपालिका', 71, 694),
(1195, 'ढकारी गाउँपालिका', 71, 695),
(1196, 'तुर्माखाँद गाउँपालिका', 71, 696),
(1197, 'दिपायल सिलगढी नगरपालिका', 72, 697),
(1198, 'शिखर नगरपालिका', 72, 698),
(1199, 'पूर्वीचौकी गाउँपालिका', 72, 699),
(1200, 'बडीकेदार गाउँपालिका', 72, 700),
(1201, 'जोरायल गाउँपालिका', 72, 701),
(1202, 'सायल गाउँपालिका', 72, 702),
(1203, 'आदर्श गाउँपालिका', 72, 703),
(1204, 'के.आई.सिं. गाउँपालिका', 72, 704),
(1205, 'बोगटान फुड्सिल गाउँपालिका', 72, 705),
(1206, 'धनगढी उपमहानगरपालिका', 73, 706),
(1207, 'टिकापुर नगरपालिका', 73, 707),
(1208, 'घोडाघोडी नगरपालिका', 73, 708),
(1209, 'लम्कीचुहा नगरपालिका', 73, 709),
(1210, 'भजनी नगरपालिका', 73, 710),
(1211, 'गोदावरी नगरपालिका', 73, 711),
(1212, 'गौरीगंगा नगरपालिका', 73, 712),
(1213, 'जानकी गाउँपालिका', 73, 713),
(1214, 'बर्दगोरिया गाउँपालिका', 73, 714),
(1215, 'मोहन्याल गाउँपालिका', 73, 715),
(1216, 'कैलारी गाउँपालिका', 73, 716),
(1217, 'जोशीपुर गाउँपालिका', 73, 717),
(1218, 'चुरे गाउँपालिका', 73, 718),
(1219, 'भीमदत्त नगरपालिका', 74, 719),
(1220, 'पुर्नवास नगरपालिका', 74, 720),
(1221, 'वेदकोट नगरपालिका', 74, 721),
(1222, 'महाकाली नगरपालिका', 74, 722),
(1223, 'शुक्लाफाँटा नगरपालिका', 74, 723),
(1224, 'बेलौरी नगरपालिका', 74, 724),
(1225, 'कृष्णपुर नगरपालिका', 74, 725),
(1226, 'बेलडाडी गाउँपालिका', 74, 726),
(1227, 'लालझाडी गाउँपालिका', 74, 727),
(1228, 'अमरगढी नगरपालिका', 75, 728),
(1229, 'परशुराम नगरपालिका', 75, 729),
(1230, 'आलिताल गाउँपालिका', 75, 730),
(1231, 'भागेश्वर गाउँपालिका', 75, 731),
(1232, 'नवदुर्गा गाउँपालिका', 75, 732),
(1233, 'अजयमेरु गाउँपालिका', 75, 733),
(1234, 'गन्यापधुरा गाउँपालिका', 75, 734),
(1235, 'दशरथचन्द नगरपालिका', 76, 735),
(1236, 'पाटन नगरपालिका', 76, 736),
(1237, 'मेलौली नगरपालिका', 76, 737),
(1238, 'पुर्चौडी नगरपालिका', 76, 738),
(1239, 'सुर्नया गाउँपालिका', 76, 739),
(1240, 'सिगास गाउँपालिका', 76, 740),
(1241, 'शिवनाथ गाउँपालिका', 76, 741),
(1242, 'पञ्चेश्वर गाउँपालिका', 76, 742),
(1243, 'दोगडाकेदार गाउँपालिका', 76, 743),
(1244, 'डीलासैनी गाउँपालिका', 76, 744),
(1245, 'महाकाली नगरपालिका', 77, 745),
(1246, 'शैल्यशिखर नगरपालिका', 77, 746),
(1247, 'मालिकार्जुन गाउँपालिका', 77, 747),
(1248, 'अपिहिमाल गाउँपालिका', 77, 748),
(1249, 'दुहुँ गाउँपालिका', 77, 749),
(1250, 'नौगाड गाउँपालिका', 77, 750),
(1251, 'मार्मा गाउँपालिका', 77, 751),
(1252, 'लेकम गाउँपालिका', 77, 752),
(1253, 'ब्याँस गाउँपालिका', 77, 753);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_provinces`
--

CREATE TABLE `tbl_provinces` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `provincecode` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_provinces`
--

INSERT INTO `tbl_provinces` (`id`, `name`, `provincecode`) VALUES
(1, 'प्रदेश नं. १', 1),
(2, 'प्रदेश नं. २', 2),
(3, 'बागमती प्रदेश', 3),
(4, 'गण्डकी प्रदेश', 4),
(5, 'लुम्बिन प्रदेश', 5),
(6, 'कर्णाली प्रदेश', 6),
(7, 'सुदुरपस्चिम प्रदेश', 7);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pin` int NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `pin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'root@admin.com', '$2y$10$bkfjB.2syJg78umiyDc4ruvL1eZQpAlWni1Tml8AdeGmK33xwPdoa', 8910, 'Nc2IYk9TtmsxjLAaGkvHFwYsieWGGfNzMNHjhGow4W5p35tLqa9wTwBQnO8E', '2018-06-24 04:33:34', '2018-06-24 04:33:34'),
(3, 'Cyberlink', 'cyberlink@admin.com', '$2y$10$bkfjB.2syJg78umiyDc4ruvL1eZQpAlWni1Tml8AdeGmK33xwPdoa', 8910, 'saQ1Qaprh9XCH2KceYQhsauZkjslWmu8j8f1z3scBZ7Sd5gywujTCkRSs1ns', '2020-08-16 10:32:43', '2020-08-16 11:21:35'),
(4, 'User', 'user@lifetimecommunitycare.com.au', '$2y$10$bkfjB.2syJg78umiyDc4ruvL1eZQpAlWni1Tml8AdeGmK33xwPdoa', 8910, 'tWdK5J0xWNd7ODURy02x0IFRXXpRuSHSwLKOk1y512dicP2akoNgpligJ4hz', '2020-08-16 11:22:14', '2024-03-29 15:29:26');

-- --------------------------------------------------------

--
-- Table structure for table `verify_users`
--

CREATE TABLE `verify_users` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `verify_users`
--

INSERT INTO `verify_users` (`id`, `user_id`, `token`, `created_at`, `updated_at`) VALUES
(1, 1, 'ksfraHmni6Kso9qjP4NN', '2022-06-15 16:02:19', '2022-06-15 16:02:19'),
(2, 2, '14db9RfeHyVNo45KHMO3', '2022-06-16 16:23:38', '2022-06-16 16:23:38'),
(3, 3, '4mi0Gm9maTakSmlpSLsU', '2022-07-04 14:18:32', '2022-07-04 14:18:32'),
(4, 4, 'jVRSDD9RE3AIBNuLw7gZ', '2022-07-04 14:20:30', '2022-07-04 14:20:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_adminmenu_user`
--
ALTER TABLE `cl_adminmenu_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cl_adminmenu_user_user_id_foreign` (`user_id`),
  ADD KEY `cl_adminmenu_user_adminmenu_id_foreign` (`adminmenu_id`);

--
-- Indexes for table `cl_admin_menu`
--
ALTER TABLE `cl_admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_associated_portfolios`
--
ALTER TABLE `cl_associated_portfolios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cl_associated_portfolios_portfolio_id_foreign` (`portfolio_id`);

--
-- Indexes for table `cl_associated_posts`
--
ALTER TABLE `cl_associated_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_banner`
--
ALTER TABLE `cl_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_country`
--
ALTER TABLE `cl_country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_gallery_images`
--
ALTER TABLE `cl_gallery_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_gallery_image_categories`
--
ALTER TABLE `cl_gallery_image_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_gallery_videos`
--
ALTER TABLE `cl_gallery_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_gallery_video_categories`
--
ALTER TABLE `cl_gallery_video_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_images`
--
ALTER TABLE `cl_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_log`
--
ALTER TABLE `cl_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_members`
--
ALTER TABLE `cl_members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cl_members_email_unique` (`email`);

--
-- Indexes for table `cl_multiple_banner`
--
ALTER TABLE `cl_multiple_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_multiple_document`
--
ALTER TABLE `cl_multiple_document`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_multiple_image`
--
ALTER TABLE `cl_multiple_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_multiple_video`
--
ALTER TABLE `cl_multiple_video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_portfolio`
--
ALTER TABLE `cl_portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_portfolio_categories`
--
ALTER TABLE `cl_portfolio_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_posts`
--
ALTER TABLE `cl_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_post_categories`
--
ALTER TABLE `cl_post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_post_featured_images`
--
ALTER TABLE `cl_post_featured_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_post_portfolio`
--
ALTER TABLE `cl_post_portfolio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cl_post_portfolio_post_id_foreign` (`post_id`);

--
-- Indexes for table `cl_post_type`
--
ALTER TABLE `cl_post_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_post_videos`
--
ALTER TABLE `cl_post_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_roles`
--
ALTER TABLE `cl_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_settings`
--
ALTER TABLE `cl_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us_services_rel`
--
ALTER TABLE `contact_us_services_rel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`countrycode`);

--
-- Indexes for table `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inquiries`
--
ALTER TABLE `inquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `memberships`
--
ALTER TABLE `memberships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `referrals`
--
ALTER TABLE `referrals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `tbl_districts`
--
ALTER TABLE `tbl_districts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tbl_provinces`
--
ALTER TABLE `tbl_provinces`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `verify_users`
--
ALTER TABLE `verify_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `verify_users_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cl_adminmenu_user`
--
ALTER TABLE `cl_adminmenu_user`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `cl_admin_menu`
--
ALTER TABLE `cl_admin_menu`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `cl_associated_portfolios`
--
ALTER TABLE `cl_associated_portfolios`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cl_associated_posts`
--
ALTER TABLE `cl_associated_posts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT for table `cl_banner`
--
ALTER TABLE `cl_banner`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `cl_gallery_images`
--
ALTER TABLE `cl_gallery_images`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cl_gallery_image_categories`
--
ALTER TABLE `cl_gallery_image_categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cl_gallery_videos`
--
ALTER TABLE `cl_gallery_videos`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cl_gallery_video_categories`
--
ALTER TABLE `cl_gallery_video_categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cl_images`
--
ALTER TABLE `cl_images`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `cl_log`
--
ALTER TABLE `cl_log`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cl_members`
--
ALTER TABLE `cl_members`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `cl_multiple_banner`
--
ALTER TABLE `cl_multiple_banner`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cl_multiple_document`
--
ALTER TABLE `cl_multiple_document`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `cl_multiple_image`
--
ALTER TABLE `cl_multiple_image`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cl_multiple_video`
--
ALTER TABLE `cl_multiple_video`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cl_portfolio`
--
ALTER TABLE `cl_portfolio`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cl_portfolio_categories`
--
ALTER TABLE `cl_portfolio_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cl_posts`
--
ALTER TABLE `cl_posts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=385;

--
-- AUTO_INCREMENT for table `cl_post_categories`
--
ALTER TABLE `cl_post_categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cl_post_featured_images`
--
ALTER TABLE `cl_post_featured_images`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cl_post_portfolio`
--
ALTER TABLE `cl_post_portfolio`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=286;

--
-- AUTO_INCREMENT for table `cl_post_type`
--
ALTER TABLE `cl_post_type`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `cl_post_videos`
--
ALTER TABLE `cl_post_videos`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cl_roles`
--
ALTER TABLE `cl_roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cl_settings`
--
ALTER TABLE `cl_settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contact_us_services_rel`
--
ALTER TABLE `contact_us_services_rel`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inquiries`
--
ALTER TABLE `inquiries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `memberships`
--
ALTER TABLE `memberships`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `referrals`
--
ALTER TABLE `referrals`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `verify_users`
--
ALTER TABLE `verify_users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cl_adminmenu_user`
--
ALTER TABLE `cl_adminmenu_user`
  ADD CONSTRAINT `cl_adminmenu_user_adminmenu_id_foreign` FOREIGN KEY (`adminmenu_id`) REFERENCES `cl_admin_menu` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  ADD CONSTRAINT `cl_adminmenu_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Constraints for table `cl_associated_portfolios`
--
ALTER TABLE `cl_associated_portfolios`
  ADD CONSTRAINT `cl_associated_portfolios_portfolio_id_foreign` FOREIGN KEY (`portfolio_id`) REFERENCES `cl_portfolio` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `cl_roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
