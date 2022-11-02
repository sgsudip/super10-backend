-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 28, 2022 at 04:34 PM
-- Server version: 10.5.15-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u866170776_betlab`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `username`, `email_verified_at`, `image`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'admin@site.com', 'admin', NULL, '62a6c5ae3105e1655096750.png', '$2y$10$THJRJn7x/MbYLmjxYYbkpeZW6E4yldzfPFpasyc.X7FBFGrQbWMsS', NULL, '2022-06-13 11:05:50');

-- --------------------------------------------------------

--
-- Table structure for table `admin_notifications`
--

CREATE TABLE `admin_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_status` tinyint(1) NOT NULL DEFAULT 0,
  `click_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_notifications`
--

INSERT INTO `admin_notifications` (`id`, `user_id`, `title`, `read_status`, `click_url`, `created_at`, `updated_at`) VALUES
(1, 1, 'New member registered', 1, '/admin/user/detail/1', '2022-06-12 00:01:00', '2022-06-12 21:36:01'),
(2, 2, 'New member registered', 1, '/admin/user/detail/2', '2022-06-12 18:13:11', '2022-06-12 21:38:47'),
(3, 3, 'New member registered', 0, '/admin/user/detail/3', '2022-06-13 17:30:01', '2022-06-13 17:30:01'),
(4, 4, 'New member registered', 0, '/admin/user/detail/4', '2022-06-23 18:00:27', '2022-06-23 18:00:27'),
(5, 5, 'New member registered', 0, '/admin/user/detail/5', '2022-06-27 11:46:39', '2022-06-27 11:46:39'),
(6, 6, 'New member registered', 0, '/admin/user/detail/6', '2022-06-27 19:13:40', '2022-06-27 19:13:40'),
(7, 7, 'New member registered', 0, '/admin/user/detail/7', '2022-06-27 19:14:18', '2022-06-27 19:14:18'),
(8, 8, 'New member registered', 0, '/admin/user/detail/8', '2022-07-21 22:22:41', '2022-07-21 22:22:41'),
(9, 9, 'New member registered', 0, '/admin/user/detail/9', '2022-07-27 16:24:56', '2022-07-27 16:24:56'),
(10, 10, 'New member registered', 0, '/admin/user/detail/10', '2022-07-27 22:20:52', '2022-07-27 22:20:52'),
(11, 11, 'New member registered', 0, '/admin/user/detail/11', '2022-07-27 23:14:02', '2022-07-27 23:14:02'),
(12, 12, 'New member registered', 0, '/admin/user/detail/12', '2022-07-27 23:22:21', '2022-07-27 23:22:21'),
(13, 13, 'New member registered', 0, '/admin/user/detail/13', '2022-07-27 23:23:31', '2022-07-27 23:23:31'),
(14, 14, 'New member registered', 0, '/admin/user/detail/14', '2022-07-27 23:29:26', '2022-07-27 23:29:26'),
(15, 15, 'New member registered', 0, '/admin/user/detail/15', '2022-07-27 23:30:33', '2022-07-27 23:30:33'),
(16, 16, 'New member registered', 0, '/admin/user/detail/16', '2022-07-27 23:31:48', '2022-07-27 23:31:48'),
(17, 17, 'New member registered', 0, '/admin/user/detail/17', '2022-07-27 23:32:43', '2022-07-27 23:32:43'),
(18, 18, 'New member registered', 0, '/admin/user/detail/18', '2022-07-27 23:36:30', '2022-07-27 23:36:30'),
(19, 19, 'New member registered', 0, '/admin/user/detail/19', '2022-09-29 03:03:22', '2022-09-29 03:03:22'),
(20, 20, 'New member registered', 0, '/admin/user/detail/20', '2022-09-29 03:06:05', '2022-09-29 03:06:05');

-- --------------------------------------------------------

--
-- Table structure for table `admin_password_resets`
--

CREATE TABLE `admin_password_resets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bets`
--

CREATE TABLE `bets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `match_id` int(10) UNSIGNED NOT NULL,
  `question_id` int(10) UNSIGNED NOT NULL,
  `option_id` int(10) UNSIGNED NOT NULL,
  `dividend` int(11) NOT NULL,
  `divisor` int(11) NOT NULL,
  `invest_amount` decimal(12,2) NOT NULL,
  `return_amount` decimal(12,2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Processing:0, Win:1, Loose:2, Refund:3',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `commission_logs`
--

CREATE TABLE `commission_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `to_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `level` int(11) NOT NULL DEFAULT 0,
  `amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `method_code` int(10) UNSIGNED NOT NULL,
  `amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `method_currency` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `charge` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `rate` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `final_amo` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btc_amo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btc_wallet` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `try` int(10) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1=>success, 2=>pending, 3=>cancel',
  `from_api` tinyint(1) NOT NULL DEFAULT 0,
  `admin_feedback` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_logs`
--

CREATE TABLE `email_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `mail_sender` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_logs`
--

INSERT INTO `email_logs` (`id`, `user_id`, `mail_sender`, `email_from`, `email_to`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 1, 'php', 'Super 1 to 10 info@viserlab.com', 'smanjuladeviselvam@gmail.com', 'Please verify your email address', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.imgur.com/Z1qtvtV.png\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello Manju Test (manjula)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><div><br></div><div>Thanks For join with us. <br></div><div>Please use below code to verify your email address.<br></div><div><br></div><div>Your email verification code is:<font size=\"6\"><b> 907921</b></font></div></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2021 <a href=\"#\">Website Name</a> . All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', '2022-06-12 00:01:01', '2022-06-12 00:01:01'),
(2, 2, 'php', 'Super 1 to 10 info@viserlab.com', 'mohammadrayon786@gmail.com', 'Please verify your email address', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.imgur.com/Z1qtvtV.png\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello Mohammad ayon (Rayon786)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><div><br></div><div>Thanks For join with us. <br></div><div>Please use below code to verify your email address.<br></div><div><br></div><div>Your email verification code is:<font size=\"6\"><b> 638812</b></font></div></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2021 <a href=\"#\">Website Name</a> . All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', '2022-06-12 18:13:12', '2022-06-12 18:13:12'),
(3, 2, 'php', 'Super 1 to 10 info@viserlab.com', 'mohammadrayon786@gmail.com', 'Google Two Factor Authentication is now  Enabled for Your Account', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.imgur.com/Z1qtvtV.png\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello Mohammad Rayon (Rayon786)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><div>You just enabled Google Two Factor Authentication for Your Account.</div><div><br></div><div>Enabled at <b>12-06-2022 06:30:27 PM </b>From IP: <b>5.193.123.210</b> using <b>Chrome</b> on <b>Mac OS X </b>.</div></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2021 <a href=\"#\">Website Name</a> . All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', '2022-06-12 18:30:27', '2022-06-12 18:30:27'),
(4, 3, 'php', 'Super 1 to 10 info@viserlab.com', 'tivyaananth94@gmail.com', 'Please verify your email address', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.imgur.com/Z1qtvtV.png\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello Thivyap A (user123)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><div><br></div><div>Thanks For join with us. <br></div><div>Please use below code to verify your email address.<br></div><div><br></div><div>Your email verification code is:<font size=\"6\"><b> 926929</b></font></div></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2021 <a href=\"#\">Website Name</a> . All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', '2022-06-13 17:30:02', '2022-06-13 17:30:02'),
(5, 4, 'php', 'Super10 club info@viserlab.com', 'demo@gmail.com', 'Please verify your email address', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.imgur.com/Z1qtvtV.png\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello   (demo123)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><div><br></div><div>Thanks For join with us. <br></div><div>Please use below code to verify your email address.<br></div><div><br></div><div>Your email verification code is:<font size=\"6\"><b> 792915</b></font></div></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2021 <a href=\"#\">Website Name</a> . All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', '2022-06-24 10:43:05', '2022-06-24 10:43:05'),
(6, 8, 'php', 'Super10 club info@viserlab.com', 'rayonhaque2019@gmail.com', 'Please verify your email address', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.imgur.com/Z1qtvtV.png\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello   (Rayon001)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><div><br></div><div>Thanks For join with us. <br></div><div>Please use below code to verify your email address.<br></div><div><br></div><div>Your email verification code is:<font size=\"6\"><b> 279475</b></font></div></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2021 <a href=\"#\">Website Name</a> . All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', '2022-07-27 15:23:39', '2022-07-27 15:23:39');
INSERT INTO `email_logs` (`id`, `user_id`, `mail_sender`, `email_from`, `email_to`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(7, 9, 'php', 'Super10 club info@viserlab.com', 'test@mail.com', 'Please verify your email address', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.imgur.com/Z1qtvtV.png\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello   (test123)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><div><br></div><div>Thanks For join with us. <br></div><div>Please use below code to verify your email address.<br></div><div><br></div><div>Your email verification code is:<font size=\"6\"><b> 400204</b></font></div></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2021 <a href=\"#\">Website Name</a> . All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', '2022-07-27 16:25:47', '2022-07-27 16:25:47'),
(8, 18, 'php', 'Super10 club info@viserlab.com', 'test567@gmail.com', 'Please verify your email address', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.imgur.com/Z1qtvtV.png\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello   (test567)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><div><br></div><div>Thanks For join with us. <br></div><div>Please use below code to verify your email address.<br></div><div><br></div><div>Your email verification code is:<font size=\"6\"><b> 831423</b></font></div></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2021 <a href=\"#\">Website Name</a> . All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', '2022-08-16 18:43:36', '2022-08-16 18:43:36'),
(9, 19, 'php', 'Super10 club info@viserlab.com', 'admin@clickonsave.com', 'Please verify your email address', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.imgur.com/Z1qtvtV.png\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello admin admin (testadmin)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><div><br></div><div>Thanks For join with us. <br></div><div>Please use below code to verify your email address.<br></div><div><br></div><div>Your email verification code is:<font size=\"6\"><b> 243324</b></font></div></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2021 <a href=\"#\">Website Name</a> . All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', '2022-09-29 03:03:23', '2022-09-29 03:03:23'),
(10, 20, 'php', 'Super10 club info@viserlab.com', 'bisag13889@bongcs.com', 'Please verify your email address', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.imgur.com/Z1qtvtV.png\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello testadmins testadmins (testadmins)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><div><br></div><div>Thanks For join with us. <br></div><div>Please use below code to verify your email address.<br></div><div><br></div><div>Your email verification code is:<font size=\"6\"><b> 955026</b></font></div></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2021 <a href=\"#\">Website Name</a> . All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', '2022-09-29 03:06:06', '2022-09-29 03:06:06');

-- --------------------------------------------------------

--
-- Table structure for table `email_sms_templates`
--

CREATE TABLE `email_sms_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `act` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subj` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shortcodes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_status` tinyint(1) NOT NULL DEFAULT 1,
  `sms_status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_sms_templates`
--

INSERT INTO `email_sms_templates` (`id`, `act`, `name`, `subj`, `email_body`, `sms_body`, `shortcodes`, `email_status`, `sms_status`, `created_at`, `updated_at`) VALUES
(1, 'PASS_RESET_CODE', 'Password Reset', 'Password Reset', '<div>We have received a request to reset the password for your account on <b>{{time}} .<br></b></div><div>Requested From IP: <b>{{ip}}</b> using <b>{{browser}}</b> on <b>{{operating_system}} </b>.</div><div><br></div><br><div><div><div>Your account recovery code is:&nbsp;&nbsp; <font size=\"6\"><b>{{code}}</b></font></div><div><br></div></div></div><div><br></div><div><font size=\"4\" color=\"#CC0000\">If you do not wish to reset your password, please disregard this message.&nbsp;</font><br></div><br>', 'Your account recovery code is: {{code}}', ' {\"code\":\"Password Reset Code\",\"ip\":\"IP of User\",\"browser\":\"Browser of User\",\"operating_system\":\"Operating System of User\",\"time\":\"Request Time\"}', 1, 1, '2019-09-24 23:04:05', '2021-01-06 00:49:06'),
(2, 'PASS_RESET_DONE', 'Password Reset Confirmation', 'You have Reset your password', '<div><p>\r\n    You have successfully reset your password.</p><p>You changed from&nbsp; IP: <b>{{ip}}</b> using <b>{{browser}}</b> on <b>{{operating_system}}&nbsp;</b> on <b>{{time}}</b></p><p><b><br></b></p><p><font color=\"#FF0000\"><b>If you did not changed that, Please contact with us as soon as possible.</b></font><br></p></div>', 'Your password has been changed successfully', '{\"ip\":\"IP of User\",\"browser\":\"Browser of User\",\"operating_system\":\"Operating System of User\",\"time\":\"Request Time\"}', 1, 1, '2019-09-24 23:04:05', '2020-03-07 10:23:47'),
(3, 'EVER_CODE', 'Email Verification', 'Please verify your email address', '<div><br></div><div>Thanks For join with us. <br></div><div>Please use below code to verify your email address.<br></div><div><br></div><div>Your email verification code is:<font size=\"6\"><b> {{code}}</b></font></div>', 'Your email verification code is: {{code}}', '{\"code\":\"Verification code\"}', 1, 1, '2019-09-24 23:04:05', '2021-01-03 23:35:10'),
(4, 'SVER_CODE', 'SMS Verification ', 'Please verify your phone', 'Your phone verification code is: {{code}}', 'Your phone verification code is: {{code}}', '{\"code\":\"Verification code\"}', 0, 1, '2019-09-24 23:04:05', '2020-03-08 01:28:52'),
(5, '2FA_ENABLE', 'Google Two Factor - Enable', 'Google Two Factor Authentication is now  Enabled for Your Account', '<div>You just enabled Google Two Factor Authentication for Your Account.</div><div><br></div><div>Enabled at <b>{{time}} </b>From IP: <b>{{ip}}</b> using <b>{{browser}}</b> on <b>{{operating_system}} </b>.</div>', 'Your verification code is: {{code}}', '{\"ip\":\"IP of User\",\"browser\":\"Browser of User\",\"operating_system\":\"Operating System of User\",\"time\":\"Request Time\"}', 1, 1, '2019-09-24 23:04:05', '2020-03-08 01:42:59'),
(6, '2FA_DISABLE', 'Google Two Factor Disable', 'Google Two Factor Authentication is now  Disabled for Your Account', '<div>You just Disabled Google Two Factor Authentication for Your Account.</div><div><br></div><div>Disabled at <b>{{time}} </b>From IP: <b>{{ip}}</b> using <b>{{browser}}</b> on <b>{{operating_system}} </b>.</div>', 'Google two factor verification is disabled', '{\"ip\":\"IP of User\",\"browser\":\"Browser of User\",\"operating_system\":\"Operating System of User\",\"time\":\"Request Time\"}', 1, 1, '2019-09-24 23:04:05', '2020-03-08 01:43:46'),
(16, 'ADMIN_SUPPORT_REPLY', 'Support Ticket Reply ', 'Reply Support Ticket', '<div><p><span style=\"font-size: 11pt;\" data-mce-style=\"font-size: 11pt;\"><strong>A member from our support team has replied to the following ticket:</strong></span></p><p><b><span style=\"font-size: 11pt;\" data-mce-style=\"font-size: 11pt;\"><strong><br></strong></span></b></p><p><b>[Ticket#{{ticket_id}}] {{ticket_subject}}<br><br>Click here to reply:&nbsp; {{link}}</b></p><p>----------------------------------------------</p><p>Here is the reply : <br></p><p> {{reply}}<br></p></div><div><br></div>', '{{subject}}\r\n\r\n{{reply}}\r\n\r\n\r\nClick here to reply:  {{link}}', '{\"ticket_id\":\"Support Ticket ID\", \"ticket_subject\":\"Subject Of Support Ticket\", \"reply\":\"Reply from Staff/Admin\",\"link\":\"Ticket URL For relpy\"}', 1, 1, '2020-06-08 18:00:00', '2020-05-04 02:24:40'),
(206, 'DEPOSIT_COMPLETE', 'Automated Deposit - Successful', 'Deposit Completed Successfully', '<div>Your deposit of <b>{{amount}} {{currency}}</b> is via&nbsp; <b>{{method_name}} </b>has been completed Successfully.<b><br></b></div><div><b><br></b></div><div><b>Details of your Deposit :<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#000000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>Payable : {{method_amount}} {{method_currency}} <br></div><div>Paid via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><font size=\"5\"><b><br></b></font></div><div><font size=\"5\">Your current Balance is <b>{{post_balance}} {{currency}}</b></font></div><div><br></div><div><br><br><br></div>', '{{amount}} {{currrency}} Deposit successfully by {{gateway_name}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\", \"post_balance\":\"Users Balance After this operation\"}', 1, 1, '2020-06-24 18:00:00', '2020-11-17 03:10:00'),
(207, 'DEPOSIT_REQUEST', 'Manual Deposit - User Requested', 'Deposit Request Submitted Successfully', '<div>Your deposit request of <b>{{amount}} {{currency}}</b> is via&nbsp; <b>{{method_name}} </b>submitted successfully<b> .<br></b></div><div><b><br></b></div><div><b>Details of your Deposit :<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#FF0000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>Payable : {{method_amount}} {{method_currency}} <br></div><div>Pay via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div><div><br></div>', '{{amount}} Deposit requested by {{method}}. Charge: {{charge}} . Trx: {{trx}}\r\n', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\"}', 1, 1, '2020-05-31 18:00:00', '2020-06-01 18:00:00'),
(208, 'DEPOSIT_APPROVE', 'Manual Deposit - Admin Approved', 'Your Deposit is Approved', '<div>Your deposit request of <b>{{amount}} {{currency}}</b> is via&nbsp; <b>{{method_name}} </b>is Approved .<b><br></b></div><div><b><br></b></div><div><b>Details of your Deposit :<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#FF0000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>Payable : {{method_amount}} {{method_currency}} <br></div><div>Paid via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><font size=\"5\"><b><br></b></font></div><div><font size=\"5\">Your current Balance is <b>{{post_balance}} {{currency}}</b></font></div><div><br></div><div><br><br></div>', 'Admin Approve Your {{amount}} {{gateway_currency}} payment request by {{gateway_name}} transaction : {{transaction}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\", \"post_balance\":\"Users Balance After this operation\"}', 1, 1, '2020-06-16 18:00:00', '2020-06-14 18:00:00'),
(209, 'DEPOSIT_REJECT', 'Manual Deposit - Admin Rejected', 'Your Deposit Request is Rejected', '<div>Your deposit request of <b>{{amount}} {{currency}}</b> is via&nbsp; <b>{{method_name}} has been rejected</b>.<b><br></b></div><br><div>Transaction Number was : {{trx}}</div><div><br></div><div>if you have any query, feel free to contact us.<br></div><br><div><br><br></div>\r\n\r\n\r\n\r\n{{rejection_message}}', 'Admin Rejected Your {{amount}} {{gateway_currency}} payment request by {{gateway_name}}\r\n\r\n{{rejection_message}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\",\"rejection_message\":\"Rejection message\"}', 1, 1, '2020-06-09 18:00:00', '2020-06-14 18:00:00'),
(210, 'WITHDRAW_REQUEST', 'Withdraw  - User Requested', 'Withdraw Request Submitted Successfully', '<div>Your withdraw request of <b>{{amount}} {{currency}}</b>&nbsp; via&nbsp; <b>{{method_name}} </b>has been submitted Successfully.<b><br></b></div><div><b><br></b></div><div><b>Details of your withdraw:<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#FF0000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>You will get: {{method_amount}} {{method_currency}} <br></div><div>Via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><font size=\"4\" color=\"#FF0000\"><b><br></b></font></div><div><font size=\"4\" color=\"#FF0000\"><b>This may take {{delay}} to process the payment.</b></font><br></div><div><font size=\"5\"><b><br></b></font></div><div><font size=\"5\"><b><br></b></font></div><div><font size=\"5\">Your current Balance is <b>{{post_balance}} {{currency}}</b></font></div><div><br></div><div><br><br><br><br></div>', '{{amount}} {{currency}} withdraw requested by {{method_name}}. You will get {{method_amount}} {{method_currency}} in {{delay}}. Trx: {{trx}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\", \"post_balance\":\"Users Balance After this operation\", \"delay\":\"Delay time for processing\"}', 1, 1, '2020-06-07 18:00:00', '2021-05-08 06:49:06'),
(211, 'WITHDRAW_REJECT', 'Withdraw - Admin Rejected', 'Withdraw Request has been Rejected and your money is refunded to your account', '<div>Your withdraw request of <b>{{amount}} {{currency}}</b>&nbsp; via&nbsp; <b>{{method_name}} </b>has been Rejected.<b><br></b></div><div><b><br></b></div><div><b>Details of your withdraw:<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#FF0000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>You should get: {{method_amount}} {{method_currency}} <br></div><div>Via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div><div><br></div><div>----</div><div><font size=\"3\"><br></font></div><div><font size=\"3\"> {{amount}} {{currency}} has been <b>refunded </b>to your account and your current Balance is <b>{{post_balance}}</b><b> {{currency}}</b></font></div><div><br></div><div>-----</div><div><br></div><div><font size=\"4\">Details of Rejection :</font></div><div><font size=\"4\"><b>{{admin_details}}</b></font></div><div><br></div><div><br><br><br><br><br><br></div>', 'Admin Rejected Your {{amount}} {{currency}} withdraw request. Your Main Balance {{main_balance}}  {{method}} , Transaction {{transaction}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\", \"post_balance\":\"Users Balance After this operation\", \"admin_details\":\"Details Provided By Admin\"}', 1, 1, '2020-06-09 18:00:00', '2020-06-14 18:00:00'),
(212, 'WITHDRAW_APPROVE', 'Withdraw - Admin  Approved', 'Withdraw Request has been Processed and your money is sent', '<div>Your withdraw request of <b>{{amount}} {{currency}}</b>&nbsp; via&nbsp; <b>{{method_name}} </b>has been Processed Successfully.<b><br></b></div><div><b><br></b></div><div><b>Details of your withdraw:<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#FF0000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>You will get: {{method_amount}} {{method_currency}} <br></div><div>Via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div><div>-----</div><div><br></div><div><font size=\"4\">Details of Processed Payment :</font></div><div><font size=\"4\"><b>{{admin_details}}</b></font></div><div><br></div><div><br><br><br><br><br></div>', 'Admin Approve Your {{amount}} {{currency}} withdraw request by {{method}}. Transaction {{transaction}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\", \"admin_details\":\"Details Provided By Admin\"}', 1, 1, '2020-06-10 18:00:00', '2020-06-06 18:00:00'),
(215, 'BAL_ADD', 'Balance Add by Admin', 'Your Account has been Credited', '<div>{{amount}} {{currency}} has been added to your account .</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div>Your Current Balance is : <font size=\"3\"><b>{{post_balance}}&nbsp; {{currency}}&nbsp;</b></font>', '{{amount}} {{currency}} credited in your account. Your Current Balance {{remaining_balance}} {{currency}} . Transaction: #{{trx}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By Admin\",\"currency\":\"Site Currency\", \"post_balance\":\"Users Balance After this operation\"}', 1, 1, '2019-09-14 19:14:22', '2021-01-06 00:46:18'),
(216, 'BAL_SUB', 'Balance Subtracted by Admin', 'Your Account has been Debited', '<div>{{amount}} {{currency}} has been subtracted from your account .</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div>Your Current Balance is : <font size=\"3\"><b>{{post_balance}}&nbsp; {{currency}}</b></font>', '{{amount}} {{currency}} debited from your account. Your Current Balance {{remaining_balance}} {{currency}} . Transaction: #{{trx}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By Admin\",\"currency\":\"Site Currency\", \"post_balance\":\"Users Balance After this operation\"}', 1, 1, '2019-09-14 19:14:22', '2019-11-10 09:07:12'),
(217, 'BET_PLACED', 'Bet Placed Successfully', 'Your Bet Is Placed Successfully', '<div><span style=\"color: rgb(33, 37, 41); font-size: medium; font-weight: 700;\">{{invest_amount}}</span>&nbsp;{{currency}} has been subtracted from your account&nbsp; for placing bet for&nbsp;<span style=\"color: rgb(33, 37, 41); font-size: medium; font-weight: 700;\">{{option}}</span>.</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div><div><span style=\"font-weight: bolder; color: rgb(33, 37, 41); font-size: medium;\">Betting Details :&nbsp;</span><br></div><div><br></div><div><span style=\"color: rgb(33, 37, 41);\">Match :&nbsp;</span><span style=\"color: rgb(33, 37, 41); font-size: medium; font-weight: 700;\">{{match}}</span><br></div><div><span style=\"color: rgb(33, 37, 41);\">Question :&nbsp;</span><span style=\"color: rgb(33, 37, 41); font-size: medium; font-weight: 700;\">{{question}}</span><span style=\"color: rgb(33, 37, 41); font-size: medium; font-weight: 700;\"><br></span></div><div><span style=\"color: rgb(33, 37, 41);\">Bet For :&nbsp;</span><span style=\"color: rgb(33, 37, 41); font-size: medium; font-weight: 700;\">{{option}}</span><span style=\"color: rgb(33, 37, 41); font-size: medium; font-weight: 700;\"><br></span></div><div><span style=\"color: rgb(33, 37, 41);\">Invest :&nbsp;</span><span style=\"color: rgb(33, 37, 41); font-size: medium; font-weight: 700;\">{{invest_amount}} {{currency}}</span><span style=\"color: rgb(33, 37, 41); font-size: medium; font-weight: 700;\"><br></span></div><div><span style=\"color: rgb(33, 37, 41);\">Return :&nbsp;</span><span style=\"color: rgb(33, 37, 41); font-size: medium; font-weight: 700;\">{{return_amount}} {{currency}}&nbsp;</span><span style=\"color: rgb(33, 37, 41); font-size: 1rem;\">[If you win]</span><span style=\"color: rgb(33, 37, 41); font-size: medium; font-weight: 700;\"><br></span></div><div><span style=\"color: rgb(33, 37, 41); font-size: medium; font-weight: 700;\"><br></span></div>Your Current Balance is : <font size=\"3\"><b>{{post_balance}}&nbsp; {{currency}}</b></font>', '{{invest_amount}} {{currency}} has been subtracted from your account  for placing bet for {{option}}.\r\n\r\nTransaction Number : {{trx}}\r\n\r\nBetting Details : \r\n\r\nMatch : {{match}}\r\nQuestion : {{question}}\r\nBet For : {{option}}\r\nInvest : {{invest_amount}} {{currency}}\r\nReturn : {{return_amount}} {{currency}} [If you win]\r\n\r\nYour Current Balance is : {{post_balance}}  {{currency}}', '{\"trx\":\"Transaction Number\",\"invest_amount\":\"Invested Amount By User For Bet\",\"return_amount\":\"Return Amount For User If Win Bet\",\"currency\":\"Site Currency\", \"post_balance\":\"Users Balance After This Operation\",\"match\":\"Match Name\",\"question\":\"Question\",\"option\":\"Option\"}', 1, 1, '2019-09-14 19:14:22', '2022-01-13 10:02:19'),
(218, 'REFERRAL_COMMISSION', 'Referral Commission', 'You got referral commission', '<div><span style=\"color: rgb(33, 37, 41); font-size: medium; font-weight: 700;\">Congratulations,&nbsp;</span><span style=\"color: rgb(33, 37, 41); font-size: 1rem;\">you got {{amount}} {{currency}} as referral commission</span><span style=\"color: rgb(33, 37, 41); font-size: 1rem;\">.</span></div><div><br></div><div><span style=\"font-weight: bolder; color: rgb(33, 37, 41); font-size: medium;\">Details :&nbsp;</span><br></div><div><br></div><div><span style=\"color: rgb(33, 37, 41);\">Transaction Number :&nbsp;</span><span style=\"color: rgb(33, 37, 41); font-size: medium; font-weight: 700;\">{{trx}}</span><br></div><div><span style=\"color: rgb(33, 37, 41); font-size: medium; font-weight: 700;\">{{level}}</span></div><div><span style=\"color: rgb(33, 37, 41); font-size: medium; font-weight: 700;\"><br></span></div>Your Current Balance is : <font size=\"3\"><b>{{post_balance}}&nbsp; {{currency}}</b></font>', '{{invest_amount}} {{currency}} has been subtracted from your account  for placing bet for {{option}}.\r\n\r\nTransaction Number : {{trx}}\r\n\r\nBetting Details : \r\n\r\nMatch : {{match}}\r\nQuestion : {{question}}\r\nBet For : {{option}}\r\nInvest : {{invest_amount}} {{currency}}\r\nReturn : {{return_amount}} {{currency}} [If you win]\r\n\r\nYour Current Balance is : {{post_balance}}  {{currency}}', '{\"amount\":\"Commission Amount\",\"post_balance\":\"Users Balance After this operation\",\"trx\":\"Transaction Number\",\"level\":\"Level\",\"currency\":\"Site Currency\", \"type\":\"Commission Type\"}', 1, 1, '2019-09-14 19:14:22', '2022-01-13 10:09:15');

-- --------------------------------------------------------

--
-- Table structure for table `extensions`
--

CREATE TABLE `extensions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `act` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `script` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shortcode` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'object',
  `support` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'help section',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=>enable, 2=>disable',
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `extensions`
--

INSERT INTO `extensions` (`id`, `act`, `name`, `description`, `image`, `script`, `shortcode`, `support`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'tawk-chat', 'Tawk.to', 'Key location is shown bellow', 'tawky_big.png', '<script>\r\n                        var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n                        (function(){\r\n                        var s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\n                        s1.async=true;\r\n                        s1.src=\"https://embed.tawk.to/{{app_key}}\";\r\n                        s1.charset=\"UTF-8\";\r\n                        s1.setAttribute(\"crossorigin\",\"*\");\r\n                        s0.parentNode.insertBefore(s1,s0);\r\n                        })();\r\n                    </script>', '{\"app_key\":{\"title\":\"App Key\",\"value\":\"------\"}}', 'twak.png', 0, NULL, '2019-10-18 23:16:05', '2021-05-18 05:37:12'),
(2, 'google-recaptcha2', 'Google Recaptcha 2', 'Key location is shown bellow', 'recaptcha3.png', '\r\n<script src=\"https://www.google.com/recaptcha/api.js\"></script>\r\n<div class=\"g-recaptcha\" data-sitekey=\"{{sitekey}}\" data-callback=\"verifyCaptcha\"></div>\r\n<div id=\"g-recaptcha-error\"></div>', '{\"sitekey\":{\"title\":\"Site Key\",\"value\":\"6LeVZp0gAAAAAKcRnus0tzW44SitKp9GarSDb96k\"}}', 'recaptcha.png', 1, NULL, '2019-10-18 23:16:05', '2022-06-25 21:36:42'),
(3, 'custom-captcha', 'Custom Captcha', 'Just Put Any Random String', 'customcaptcha.png', NULL, '{\"random_key\":{\"title\":\"Random String\",\"value\":\"SecureString\"}}', 'na', 1, NULL, '2019-10-18 23:16:05', '2022-06-23 13:56:26'),
(4, 'google-analytics', 'Google Analytics', 'Key location is shown bellow', 'google_analytics.png', '<script async src=\"https://www.googletagmanager.com/gtag/js?id={{app_key}}\"></script>\r\n                <script>\r\n                  window.dataLayer = window.dataLayer || [];\r\n                  function gtag(){dataLayer.push(arguments);}\r\n                  gtag(\"js\", new Date());\r\n                \r\n                  gtag(\"config\", \"{{app_key}}\");\r\n                </script>', '{\"app_key\":{\"title\":\"App Key\",\"value\":\"------\"}}', 'ganalytics.png', 0, NULL, NULL, '2021-05-04 10:19:12');

-- --------------------------------------------------------

--
-- Table structure for table `frontends`
--

CREATE TABLE `frontends` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data_keys` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_values` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `frontends`
--

INSERT INTO `frontends` (`id`, `data_keys`, `data_values`, `created_at`, `updated_at`) VALUES
(1, 'seo.data', '{\"seo_image\":\"1\",\"keywords\":[\"sports\",\"bet\",\"sportsbet\",\"spobet\",\"betting\"],\"description\":\"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit\",\"social_title\":\"BetLab - Sports Betting Platform\",\"social_description\":\"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit ff\",\"image\":\"620ceff2678ef1645015026.png\"}', '2020-07-04 17:42:52', '2022-02-16 12:37:06'),
(31, 'social_icon.element', '{\"title\":\"Facebook\",\"social_icon\":\"<i class=\\\"lab la-facebook-f\\\"><\\/i>\",\"url\":\"https:\\/\\/www.facebook.com\\/\"}', '2020-11-11 22:07:30', '2021-11-13 06:04:58'),
(35, 'service.element', '{\"trx_type\":\"withdraw\",\"service_icon\":\"<i class=\\\"las la-highlighter\\\"><\\/i>\",\"title\":\"asdfasdf\",\"description\":\"asdfasdfasdfasdf\"}', '2021-03-05 19:12:10', '2021-03-05 19:12:10'),
(36, 'service.content', '{\"trx_type\":\"withdraw\",\"heading\":\"asdf fffff\",\"sub_heading\":\"asdf asdfasdf\"}', '2021-03-05 19:27:34', '2021-03-05 20:19:39'),
(41, 'cookie.data', '{\"link\":\"\\/betlab\\/policy\\/privacy-policy\\/42\",\"description\":\"<font face=\\\"Exo, sans-serif\\\" color=\\\"#ffffff\\\"><span style=\\\"font-size: 18px;\\\">We may use cookies or any other tracking technologies when you visit our website, including any other media form, mobile website, or mobile application related or connected to help customize the Site and improve your experience.<\\/span><\\/font><br>\",\"status\":1}', '2020-07-04 17:42:52', '2021-11-03 06:47:04'),
(42, 'policy_pages.element', '{\"title\":\"Privacy Policy\",\"details\":\"<div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">What information do we collect?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We gather data from you when you register on our site, submit a request, buy any services, react to an overview, or round out a structure. At the point when requesting any assistance or enrolling on our site, as suitable, you might be approached to enter your: name, email address, or telephone number. You may, nonetheless, visit our site anonymously.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">How do we protect your information?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">All provided delicate\\/credit data is sent through Stripe.<br \\/>After an exchange, your private data (credit cards, social security numbers, financials, and so on) won\'t be put away on our workers.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Do we disclose any information to outside parties?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We don\'t sell, exchange, or in any case move to outside gatherings by and by recognizable data. This does exclude confided in outsiders who help us in working our site, leading our business, or adjusting you, since those gatherings consent to keep this data private. We may likewise deliver your data when we accept discharge is suitable to follow the law, implement our site strategies, or ensure our own or others\' rights, property, or wellbeing.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Children\'s Online Privacy Protection Act Compliance<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We are consistent with the prerequisites of COPPA (Children\'s Online Privacy Protection Act), we don\'t gather any data from anybody under 13 years old. Our site, items, and administrations are completely coordinated to individuals who are in any event 13 years of age or more established.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Changes to our Privacy Policy<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">If we decide to change our privacy policy, we will post those changes on this page.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">How long we retain your information?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">At the point when you register for our site, we cycle and keep your information we have about you however long you don\'t erase the record or withdraw yourself (subject to laws and guidelines).<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">What we don\\u2019t do with your data<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We don\'t and will never share, unveil, sell, or in any case give your information to different organizations for the promoting of their items or administrations.<\\/p><\\/div>\"}', '2021-06-09 02:50:42', '2021-06-09 02:50:42'),
(43, 'policy_pages.element', '{\"title\":\"Terms of Service\",\"details\":\"<div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We claim all authority to dismiss, end, or handicap any help with or without cause per administrator discretion. This is a Complete independent facilitating, on the off chance that you misuse our ticket or Livechat or emotionally supportive network by submitting solicitations or protests we will impair your record. The solitary time you should reach us about the seaward facilitating is if there is an issue with the worker. We have not many substance limitations and everything is as per laws and guidelines. Try not to join on the off chance that you intend to do anything contrary to the guidelines, we do check these things and we will know, don\'t burn through our own and your time by joining on the off chance that you figure you will have the option to sneak by us and break the terms.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><ul class=\\\"font-18\\\" style=\\\"padding-left:15px;list-style-type:disc;font-size:18px;\\\"><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Configuration requests - If you have a fully managed dedicated server with us then we offer custom PHP\\/MySQL configurations, firewalls for dedicated IPs, DNS, and httpd configurations.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Software requests - Cpanel Extension Installation will be granted as long as it does not interfere with the security, stability, and performance of other users on the server.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Emergency Support - We do not provide emergency support \\/ Phone Support \\/ LiveChat Support. Support may take some hours sometimes.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Webmaster help - We do not offer any support for webmaster related issues and difficulty including coding, &amp; installs, Error solving. if there is an issue where a library or configuration of the server then we can help you if it\'s possible from our end.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Backups - We keep backups but we are not responsible for data loss, you are fully responsible for all backups.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">We Don\'t support any child porn or such material.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">No spam-related sites or material, such as email lists, mass mail programs, and scripts, etc.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">No harassing material that may cause people to retaliate against you.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">No phishing pages.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">You may not run any exploitation script from the server. reason can be terminated immediately.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">If Anyone attempting to hack or exploit the server by using your script or hosting, we will terminate your account to keep safe other users.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Malicious Botnets are strictly forbidden.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Spam, mass mailing, or email marketing in any way are strictly forbidden here.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Malicious hacking materials, trojans, viruses, &amp; malicious bots running or for download are forbidden.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Resource and cronjob abuse is forbidden and will result in suspension or termination.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Php\\/CGI proxies are strictly forbidden.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">CGI-IRC is strictly forbidden.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">No fake or disposal mailers, mass mailing, mail bombers, SMS bombers, etc.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">NO CREDIT OR REFUND will be granted for interruptions of service, due to User Agreement violations.<\\/li><\\/ul><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Terms &amp; Questions for Users<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">Before getting to this site, you are consenting to be limited by these site Terms and Questions of Use, every single appropriate law, and guidelines, and concur that you are answerable for consistency with any material neighborhood laws. If you disagree with any of these terms, you are restricted from utilizing or getting to this site.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Support<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">Whenever you have downloaded our item, you may get in touch with us for help through email and we will give a valiant effort to determine your issue. We will attempt to answer using the Email for more modest bug fixes, after which we will refresh the center bundle. Content help is offered to confirmed clients by Tickets as it were. Backing demands made by email and Livechat.<\\/p><p class=\\\"my-3 font-18 font-weight-bold\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">On the off chance that your help requires extra adjustment of the System, at that point, you have two alternatives:<\\/p><ul class=\\\"font-18\\\" style=\\\"padding-left:15px;list-style-type:disc;font-size:18px;\\\"><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Hang tight for additional update discharge.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Or on the other hand, enlist a specialist (We offer customization for extra charges).<\\/li><\\/ul><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Ownership<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">You may not guarantee scholarly or selective possession of any of our items, altered or unmodified. All items are property, we created them. Our items are given \\\"with no guarantees\\\" without guarantee of any sort, either communicated or suggested. On no occasion will our juridical individual be subject to any harms including, however not restricted to, immediate, roundabout, extraordinary, accidental, or significant harms or different misfortunes emerging out of the utilization of or powerlessness to utilize our items.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Warranty<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We don\'t offer any guarantee or assurance of these Services in any way. When our Services have been modified we can\'t ensure they will work with all outsider plugins, modules, or internet browsers. Program similarity ought to be tried against the show formats on the demo worker. If you don\'t mind guarantee that the programs you use will work with the component, as we can not ensure that our systems will work with all program mixes.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Unauthorized\\/Illegal Usage<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">You may not utilize our things for any illicit or unapproved reason or may you, in the utilization of the stage, disregard any laws in your locale (counting yet not restricted to copyright laws) just as the laws of your nation and International law. Specifically, it is disallowed to utilize the things on our foundation for pages that advance: brutality, illegal intimidation, hard sexual entertainment, bigotry, obscenity content or warez programming joins.<br \\/><br \\/>You can\'t imitate, copy, duplicate, sell, exchange or adventure any of our segment, utilization of the offered on our things, or admittance to the administration without the express composed consent by us or item proprietor.<br \\/><br \\/>Our Members are liable for all substance posted on the discussion and demo and movement that happens under your record.<br \\/><br \\/>We hold the chance of hindering your participation account quickly if we will think about a particularly not allowed conduct.<br \\/><br \\/>If you make a record on our site, you are liable for keeping up the security of your record, and you are completely answerable for all exercises that happen under the record and some other activities taken regarding the record. You should quickly inform us, of any unapproved employments of your record or some other penetrates of security.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Fiverr, Seoclerks Sellers Or Affiliates<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We do NOT ensure full SEO campaign conveyance within 24 hours. We make no assurance for conveyance time by any means. We give our best assessment to orders during the putting in of requests, anyway, these are gauges. We won\'t be considered liable for loss of assets, negative surveys or you being prohibited for late conveyance. If you are selling on a site that requires time touchy outcomes, utilize Our SEO Services at your own risk.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Payment\\/Refund Policy<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">No refund or cash back will be made. After a deposit has been finished, it is extremely unlikely to invert it. You should utilize your equilibrium on requests our administrations, Hosting, SEO campaign. You concur that once you complete a deposit, you won\'t document a debate or a chargeback against us in any way, shape, or form.<br \\/><br \\/>If you document a debate or chargeback against us after a deposit, we claim all authority to end every single future request, prohibit you from our site. False action, for example, utilizing unapproved or taken charge cards will prompt the end of your record. There are no special cases.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Free Balance \\/ Coupon Policy<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We offer numerous approaches to get FREE Balance, Coupons and Deposit offers yet we generally reserve the privilege to audit it and deduct it from your record offset with any explanation we may it is a sort of misuse. If we choose to deduct a few or all of free Balance from your record balance, and your record balance becomes negative, at that point the record will naturally be suspended. If your record is suspended because of a negative Balance you can request to make a custom payment to settle your equilibrium to actuate your record.<\\/p><\\/div>\"}', '2021-06-09 02:51:18', '2021-06-09 02:51:18'),
(46, 'banner.element', '{\"url\":\"leagues\\/bangladesh-premier-league\\/16\",\"has_image\":\"1\",\"image\":\"618fa8ce986c21636804814.jpg\"}', '2021-10-24 00:28:31', '2022-02-16 12:38:05'),
(47, 'banner.element', '{\"url\":\"leagues\\/fifa-world-cup\\/15\",\"has_image\":\"1\",\"image\":\"618fa8d9afa5a1636804825.jpg\"}', '2021-10-24 00:28:40', '2022-02-16 12:38:21'),
(48, 'header_footer.content', '{\"email\":\"sports@bet.com\",\"contact_no\":\"+12312313213\",\"footer_text\":\"Consectetur adipisicing elit. Adipisci sint temporibus quasi libero facere ratione, animi recusandae accusamus inventore enim.\",\"subscribe_heading\":\"Subscribe Our Newsletter\",\"subscribe_details\":\"Placeat ipsum debitis explicabo pariatur dolor molestias praesentium\",\"copyright\":\"All Rights Reserved By\"}', '2021-10-24 00:51:22', '2021-10-31 04:51:35'),
(49, 'contact_us.content', '{\"has_image\":\"1\",\"heading\":\"Get In Touch With US\",\"details\":\"Amet accusantium sunt, aut totam reiciendis, earum deleniti minus reprehenderit ad aperiam possimus cum. earum deleniti minus reprehenderit.\",\"image\":\"61752d0d20d871635069197.png\"}', '2021-10-24 03:13:04', '2021-10-24 03:23:17'),
(50, 'contact_us.element', '{\"icon\":\"<i class=\\\"las la-phone-volume\\\"><\\/i>\",\"heading\":\"Phone Number\",\"details\":\"+834 3838 838 8383\"}', '2021-10-24 03:14:13', '2021-10-24 03:14:13'),
(51, 'contact_us.element', '{\"icon\":\"<i class=\\\"las la-building\\\"><\\/i>\",\"heading\":\"Office Address\",\"details\":\"518 Elephent Road Dhaka 1205\"}', '2021-10-24 03:14:42', '2021-10-24 03:14:42'),
(52, 'contact_us.element', '{\"icon\":\"<i class=\\\"las la-envelope-open-text\\\"><\\/i>\",\"heading\":\"Email Address\",\"details\":\"sports@bet.com\"}', '2021-10-24 03:15:26', '2021-10-24 03:15:26'),
(53, 'about.content', '{\"has_image\":\"1\",\"heading\":\"Know About Us\",\"details\":\"Amet accusantium sunt, aut totam reiciendis, earum deleniti minus reprehenderit ad aperiam possimus cum.\\r\\n\\r\\nNon tenetur dolorem molestiae voluptate sit, modi qui, beatae libero excepturi a odio corporis soluta minima. Laudantium impedit ab ut id nisi. Non tenetur dolorem molestiae voluptate sit, modi qui, beatae libero excepturi a odio corporis soluta minima. Laudantium impedit ab ut id nisi.\\r\\n\\r\\n Non tenetur dolorem molestiae voluptate\\r\\n modi qui, beatae libero excepturi a odio\\r\\n Laudantium impedit ab ut id nisi.\",\"image\":\"61754520503c81635075360.png\"}', '2021-10-24 05:06:00', '2021-10-24 05:06:00'),
(54, 'feature.content', '{\"heading\":\"Our Special Feature\",\"details\":\"Amet accusantium sunt, aut totam reiciendis, earum deleniti minus reprehenderit ad aperiam possimus cum. earum deleniti minus reprehenderit.\"}', '2021-10-24 05:09:05', '2021-10-24 05:09:05'),
(55, 'feature.element', '{\"icon\":\"<i class=\\\"las la-medal\\\"><\\/i>\",\"heading\":\"Reward Granted\",\"details\":\"Veniam accusantium molestiae velit laboriosam recusandae sequi voluptatibus pariatur\"}', '2021-10-24 05:10:04', '2021-10-24 05:10:04'),
(56, 'feature.element', '{\"icon\":\"<i class=\\\"lar la-thumbs-up\\\"><\\/i>\",\"heading\":\"We Are Best\",\"details\":\"Veniam accusantium molestiae velit laboriosam recusandae sequi voluptatibus pariatur\"}', '2021-10-24 05:10:50', '2021-10-24 05:10:50'),
(57, 'feature.element', '{\"icon\":\"<i class=\\\"las la-shield-alt\\\"><\\/i>\",\"heading\":\"We Are Trusted\",\"details\":\"Veniam accusantium molestiae velit laboriosam recusandae sequi voluptatibus pariatur\"}', '2021-10-24 05:11:37', '2021-10-24 05:11:37'),
(58, 'strategy.content', '{\"heading\":\"How To Start\",\"details\":\"Amet accusantium sunt, aut totam reiciendis, earum deleniti minus reprehenderit ad aperiam possimus cum. earum deleniti minus reprehenderit.\"}', '2021-10-24 05:13:22', '2021-10-24 05:13:22'),
(59, 'strategy.element', '{\"icon\":\"<i class=\\\"las la-trophy\\\"><\\/i>\",\"heading\":\"Win And Enjoy\",\"details\":\"Distinctio minus consectetur repellat quod minima ad earum rem autem.\"}', '2021-10-24 05:14:13', '2021-10-24 05:14:13'),
(60, 'strategy.element', '{\"icon\":\"<i class=\\\"las la-dice-five\\\"><\\/i>\",\"heading\":\"Predict Result\",\"details\":\"Distinctio minus consectetur repellat quod minima ad earum rem autem.\"}', '2021-10-24 05:15:34', '2021-10-24 05:15:34'),
(61, 'strategy.element', '{\"icon\":\"<i class=\\\"las la-user-plus\\\"><\\/i>\",\"heading\":\"Create An Account\",\"details\":\"Distinctio minus consectetur repellat quod minima ad earum rem autem.\"}', '2021-10-24 05:16:15', '2021-10-24 05:16:15'),
(62, 'counter.element', '{\"counter_icon\":\"<i class=\\\"las la-trophy\\\"><\\/i>\",\"sub_title\":\"Total Win\",\"counter_digit\":\"1020\"}', '2021-10-24 05:21:45', '2021-10-24 05:21:45'),
(63, 'counter.element', '{\"counter_icon\":\"<i class=\\\"las la-money-check\\\"><\\/i>\",\"sub_title\":\"Total Transaction\",\"counter_digit\":\"2050\"}', '2021-10-24 05:22:09', '2021-10-24 05:22:09'),
(64, 'counter.element', '{\"counter_icon\":\"<i class=\\\"las la-bowling-ball\\\"><\\/i>\",\"sub_title\":\"Total Match\",\"counter_digit\":\"150\"}', '2021-10-24 05:23:21', '2021-10-24 05:23:21'),
(65, 'counter.element', '{\"counter_icon\":\"<i class=\\\"las la-user\\\"><\\/i>\",\"sub_title\":\"Total User\",\"counter_digit\":\"2000\"}', '2021-10-24 05:23:53', '2021-10-24 05:23:53'),
(66, 'faq.content', '{\"has_image\":\"1\",\"heading\":\"Frequently Asked Questions\",\"details\":\"Amet accusantium sunt, aut totam reiciendis, earum deleniti minus reprehenderit ad aperiam possimus cum. earum deleniti minus reprehenderit.\",\"image\":\"61754adcbb4b11635076828.png\"}', '2021-10-24 05:25:18', '2021-10-24 05:30:28'),
(67, 'faq.element', '{\"question\":\"Incidunt, quo expedita cupiditate dolores at sint tenetur nihil?\",\"answer\":\"Libero ipsam recusandae omnis laudantium cum ratione, voluptates, numquam illum iusto, at repellendus? Quas minima earum, cumque reiciendis magnam ad nisi corporis.\"}', '2021-10-24 05:26:38', '2021-10-24 05:26:38'),
(68, 'faq.element', '{\"question\":\"Incidunt, quo expedita cupiditate dolores at sint tenetur nihil?\",\"answer\":\"Libero ipsam recusandae omnis laudantium cum ratione, voluptates, numquam illum iusto, at repellendus? Quas minima earum, cumque reiciendis magnam ad nisi corporis.\"}', '2021-10-24 05:26:56', '2021-10-24 05:26:56'),
(69, 'faq.element', '{\"question\":\"Incidunt, quo expedita cupiditate dolores at sint tenetur nihil?\",\"answer\":\"Libero ipsam recusandae omnis laudantium cum ratione, voluptates, numquam illum iusto, at repellendus? Quas minima earum, cumque reiciendis magnam ad nisi corporis\"}', '2021-10-24 05:27:11', '2021-10-24 05:27:11'),
(70, 'faq.element', '{\"question\":\"Incidunt, quo expedita cupiditate dolores at sint tenetur nihil?\",\"answer\":\"Libero ipsam recusandae omnis laudantium cum ratione, voluptates, numquam illum iusto, at repellendus? Quas minima earum, cumque reiciendis magnam ad nisi corporis.\"}', '2021-10-24 05:27:51', '2021-10-24 05:27:51'),
(71, 'partner.element', '{\"has_image\":\"1\",\"name\":\"Vorbes\",\"image\":\"61754bf91cf651635077113.png\"}', '2021-10-24 05:35:13', '2022-01-06 00:03:04'),
(72, 'partner.element', '{\"has_image\":\"1\",\"name\":\"Rontech\",\"image\":\"61754c0f30b6f1635077135.png\"}', '2021-10-24 05:35:35', '2022-01-06 00:03:07'),
(73, 'partner.element', '{\"has_image\":\"1\",\"name\":\"Fortecal\",\"image\":\"61754c3988d071635077177.png\"}', '2021-10-24 05:36:17', '2022-01-06 00:03:11'),
(74, 'partner.element', '{\"has_image\":\"1\",\"name\":\"Neon\",\"image\":\"61754c4a4bbe71635077194.png\"}', '2021-10-24 05:36:34', '2022-01-06 00:03:15'),
(75, 'partner.element', '{\"has_image\":\"1\",\"name\":\"Xcloud\",\"image\":\"61754c5a4a8ea1635077210.png\"}', '2021-10-24 05:36:50', '2022-01-06 00:03:18'),
(76, 'partner.element', '{\"has_image\":\"1\",\"name\":\"Scops\",\"image\":\"61754c68ed6751635077224.png\"}', '2021-10-24 05:37:04', '2022-01-06 00:03:21'),
(77, 'refer.content', '{\"has_image\":\"1\",\"heading\":\"Refer And Earn\",\"details\":\"Amet accusantium sunt, aut totam reiciendis, earum deleniti minus reprehenderit ad aperiam possimus cum. earum deleniti minus reprehenderit.\",\"image\":\"617553fc0a4811635079164.png\"}', '2021-10-24 06:09:24', '2021-10-24 06:09:24'),
(78, 'policy_pages.element', '{\"title\":\"Rules Fot Bet\",\"details\":\"<div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">What information do we collect?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We gather data from you when you register on our site, submit a request, buy any services, react to an overview, or round out a structure. At the point when requesting any assistance or enrolling on our site, as suitable, you might be approached to enter your: name, email address, or telephone number. You may, nonetheless, visit our site anonymously.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">How do we protect your information?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">All provided delicate\\/credit data is sent through Stripe.<br \\/>After an exchange, your private data (credit cards, social security numbers, financials, and so on) won\'t be put away on our workers.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">Do we disclose any information to outside parties?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We don\'t sell, exchange, or in any case move to outside gatherings by and by recognizable data. This does exclude confided in outsiders who help us in working our site, leading our business, or adjusting you, since those gatherings consent to keep this data private. We may likewise deliver your data when we accept discharge is suitable to follow the law, implement our site strategies, or ensure our own or others\' rights, property, or wellbeing.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">Children\'s Online Privacy Protection Act Compliance<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We are consistent with the prerequisites of COPPA (Children\'s Online Privacy Protection Act), we don\'t gather any data from anybody under 13 years old. Our site, items, and administrations are completely coordinated to individuals who are in any event 13 years of age or more established.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">Changes to our Privacy Policy<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">If we decide to change our privacy policy, we will post those changes on this page.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">How long we retain your information?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">At the point when you register for our site, we cycle and keep your information we have about you however long you don\'t erase the record or withdraw yourself (subject to laws and guidelines).<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">What we don\\u2019t do with your data<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We don\'t and will never share, unveil, sell, or in any case give your information to different organizations for the promoting of their items or administrations.<\\/p><\\/div>\"}', '2021-10-31 02:18:36', '2021-10-31 02:18:36'),
(79, 'policy_pages.element', '{\"title\":\"Licences Info\",\"details\":\"<div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We claim all authority to dismiss, end, or handicap any help with or without cause per administrator discretion. This is a Complete independent facilitating, on the off chance that you misuse our ticket or Livechat or emotionally supportive network by submitting solicitations or protests we will impair your record. The solitary time you should reach us about the seaward facilitating is if there is an issue with the worker. We have not many substance limitations and everything is as per laws and guidelines. Try not to join on the off chance that you intend to do anything contrary to the guidelines, we do check these things and we will know, don\'t burn through our own and your time by joining on the off chance that you figure you will have the option to sneak by us and break the terms.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><ul class=\\\"font-18\\\" style=\\\"padding-left:15px;list-style-type:disc;font-size:18px;\\\"><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Configuration requests - If you have a fully managed dedicated server with us then we offer custom PHP\\/MySQL configurations, firewalls for dedicated IPs, DNS, and httpd configurations.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Software requests - Cpanel Extension Installation will be granted as long as it does not interfere with the security, stability, and performance of other users on the server.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Emergency Support - We do not provide emergency support \\/ Phone Support \\/ LiveChat Support. Support may take some hours sometimes.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Webmaster help - We do not offer any support for webmaster related issues and difficulty including coding, &amp; installs, Error solving. if there is an issue where a library or configuration of the server then we can help you if it\'s possible from our end.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Backups - We keep backups but we are not responsible for data loss, you are fully responsible for all backups.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">We Don\'t support any child porn or such material.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">No spam-related sites or material, such as email lists, mass mail programs, and scripts, etc.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">No harassing material that may cause people to retaliate against you.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">No phishing pages.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">You may not run any exploitation script from the server. reason can be terminated immediately.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">If Anyone attempting to hack or exploit the server by using your script or hosting, we will terminate your account to keep safe other users.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Malicious Botnets are strictly forbidden.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Spam, mass mailing, or email marketing in any way are strictly forbidden here.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Malicious hacking materials, trojans, viruses, &amp; malicious bots running or for download are forbidden.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Resource and cronjob abuse is forbidden and will result in suspension or termination.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Php\\/CGI proxies are strictly forbidden.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">CGI-IRC is strictly forbidden.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">No fake or disposal mailers, mass mailing, mail bombers, SMS bombers, etc.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">NO CREDIT OR REFUND will be granted for interruptions of service, due to User Agreement violations.<\\/li><\\/ul><\\/div><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">Terms &amp; Questions for Users<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">Before getting to this site, you are consenting to be limited by these site Terms and Questions of Use, every single appropriate law, and guidelines, and concur that you are answerable for consistency with any material neighborhood laws. If you disagree with any of these terms, you are restricted from utilizing or getting to this site.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">Support<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">Whenever you have downloaded our item, you may get in touch with us for help through email and we will give a valiant effort to determine your issue. We will attempt to answer using the Email for more modest bug fixes, after which we will refresh the center bundle. Content help is offered to confirmed clients by Tickets as it were. Backing demands made by email and Livechat.<\\/p><p class=\\\"my-3 font-18 font-weight-bold\\\" style=\\\"font-size:18px;margin-right:0px;margin-left:0px;\\\">On the off chance that your help requires extra adjustment of the System, at that point, you have two alternatives:<\\/p><ul class=\\\"font-18\\\" style=\\\"padding-left:15px;list-style-type:disc;font-size:18px;\\\"><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Hang tight for additional update discharge.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Or on the other hand, enlist a specialist (We offer customization for extra charges).<\\/li><\\/ul><\\/div><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">Ownership<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">You may not guarantee scholarly or selective possession of any of our items, altered or unmodified. All items are property, we created them. Our items are given \\\"with no guarantees\\\" without guarantee of any sort, either communicated or suggested. On no occasion will our juridical individual be subject to any harms including, however not restricted to, immediate, roundabout, extraordinary, accidental, or significant harms or different misfortunes emerging out of the utilization of or powerlessness to utilize our items.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">Warranty<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We don\'t offer any guarantee or assurance of these Services in any way. When our Services have been modified we can\'t ensure they will work with all outsider plugins, modules, or internet browsers. Program similarity ought to be tried against the show formats on the demo worker. If you don\'t mind guarantee that the programs you use will work with the component, as we can not ensure that our systems will work with all program mixes.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">Unauthorized\\/Illegal Usage<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">You may not utilize our things for any illicit or unapproved reason or may you, in the utilization of the stage, disregard any laws in your locale (counting yet not restricted to copyright laws) just as the laws of your nation and International law. Specifically, it is disallowed to utilize the things on our foundation for pages that advance: brutality, illegal intimidation, hard sexual entertainment, bigotry, obscenity content or warez programming joins.<br \\/><br \\/>You can\'t imitate, copy, duplicate, sell, exchange or adventure any of our segment, utilization of the offered on our things, or admittance to the administration without the express composed consent by us or item proprietor.<br \\/><br \\/>Our Members are liable for all substance posted on the discussion and demo and movement that happens under your record.<br \\/><br \\/>We hold the chance of hindering your participation account quickly if we will think about a particularly not allowed conduct.<br \\/><br \\/>If you make a record on our site, you are liable for keeping up the security of your record, and you are completely answerable for all exercises that happen under the record and some other activities taken regarding the record. You should quickly inform us, of any unapproved employments of your record or some other penetrates of security.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">Fiverr, Seoclerks Sellers Or Affiliates<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We do NOT ensure full SEO campaign conveyance within 24 hours. We make no assurance for conveyance time by any means. We give our best assessment to orders during the putting in of requests, anyway, these are gauges. We won\'t be considered liable for loss of assets, negative surveys or you being prohibited for late conveyance. If you are selling on a site that requires time touchy outcomes, utilize Our SEO Services at your own risk.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">Payment\\/Refund Policy<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">No refund or cash back will be made. After a deposit has been finished, it is extremely unlikely to invert it. You should utilize your equilibrium on requests our administrations, Hosting, SEO campaign. You concur that once you complete a deposit, you won\'t document a debate or a chargeback against us in any way, shape, or form.<br \\/><br \\/>If you document a debate or chargeback against us after a deposit, we claim all authority to end every single future request, prohibit you from our site. False action, for example, utilizing unapproved or taken charge cards will prompt the end of your record. There are no special cases.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">Free Balance \\/ Coupon Policy<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We offer numerous approaches to get FREE Balance, Coupons and Deposit offers yet we generally reserve the privilege to audit it and deduct it from your record offset with any explanation we may it is a sort of misuse. If we choose to deduct a few or all of free Balance from your record balance, and your record balance becomes negative, at that point the record will naturally be suspended. If your record is suspended because of a negative Balance you can request to make a custom payment to settle your equilibrium to actuate your record.<\\/p><\\/div>\"}', '2021-10-31 02:21:44', '2021-10-31 02:21:44'),
(80, 'refer.element', '{\"level_no\":\"Level 01\",\"percentage\":\"10\",\"details\":\"Nisi vero, tempore placeat at a ducimus animi. Reiciendis asperiores molestiae quod nesciunt sequi\"}', '2021-11-03 00:13:33', '2021-11-03 00:13:33'),
(81, 'refer.element', '{\"level_no\":\"Level 02\",\"percentage\":\"7\",\"details\":\"Nisi vero, tempore placeat at a ducimus animi. Reiciendis asperiores molestiae quod nesciunt sequi\"}', '2021-11-03 00:13:48', '2021-11-03 00:13:48'),
(82, 'refer.element', '{\"level_no\":\"Level 03\",\"percentage\":\"5\",\"details\":\"Nisi vero, tempore placeat at a ducimus animi. Reiciendis asperiores molestiae quod nesciunt sequi\"}', '2021-11-03 00:14:09', '2021-11-03 00:14:09'),
(83, 'blog.element', '{\"has_image\":[\"1\"],\"tag\":\"Refund\",\"title\":\"Refund In Betting\",\"description_nic\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia fuga debitis ut deserunt dolores, tempore nobis obcaecati, dolorem eaque tenetur maiores sapiente natus illo labore itaque, voluptatem ducimus quasi tempora totam blanditiis odit enim sint! Pariatur laboriosam unde veniam quaerat quod in provident odit eos, maxime, cupiditate adipisci deleniti, labore accusantium aliquid quibusdam? Porro laborum ipsum voluptatem?<div><br \\/><\\/div><div>Ducimus, quam molestiae? Ipsa, asperiores numquam amet sit error excepturi commodi eos ratione nihil qui ut tempore repellendus provident, itaque nisi id voluptatibus enim similique atque modi ipsum sint iste quam? Iusto, aperiam! Recusandae ipsum aut esse deserunt. Dolorem exercitationem, recusandae ut aliquam ad minus odio ipsum cumque odit tempore error hic perspiciatis sed eaque, nam nihil quibusdam. Quibusdam reprehenderit odit omnis.<\\/div><div><br \\/><\\/div><div>Beatae tenetur suscipit nihil distinctio minima necessitatibus corrupti repellat vero consequuntur quo sed expedita laudantium excepturi eum, assumenda saepe dicta qui veniam laborum quod! Fuga dolore ipsa, odio dolores accusantium sed consequuntur similique quasi ducimus magnam est tenetur illo eaque eveniet blanditiis ipsam sequi pariatur. Blanditiis aliquam corporis esse reiciendis veritatis, sit repellat cumque. Possimus consequuntur, doloremque perspiciatis, officiis mollitia sequi nemo vero ad quae, sint porro suscipit est eligendi excepturi quod totam!<\\/div><div><br \\/><\\/div><div>Cum facilis neque omnis perferendis incidunt debitis quasi iste nihil, repellendus velit dolorem veritatis atque itaque sed dolore! Quis consequuntur similique id ab distinctio veritatis itaque sed obcaecati. Explicabo quis dolores quisquam fugiat illum, corrupti neque similique nihil corporis, sapiente quidem reiciendis dicta est aut labore pariatur, facilis iste provident voluptate quibusdam ullam autem. Atque quos et ad!<\\/div>\",\"image\":\"618271a80803e1635938728.jpg\"}', '2021-11-03 04:55:27', '2021-11-03 06:03:01'),
(84, 'blog.element', '{\"has_image\":[\"1\"],\"tag\":\"Research\",\"title\":\"Match Research\",\"description_nic\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia fuga debitis ut deserunt dolores, tempore nobis obcaecati, dolorem eaque tenetur maiores sapiente natus illo labore itaque, voluptatem ducimus quasi tempora totam blanditiis odit enim sint! Pariatur laboriosam unde veniam quaerat quod in provident odit eos, maxime, cupiditate adipisci deleniti, labore accusantium aliquid quibusdam?<div><br \\/><\\/div><div>Porro laborum ipsum voluptatem? Ducimus, quam molestiae? Ipsa, asperiores numquam amet sit error excepturi commodi eos ratione nihil qui ut tempore repellendus provident, itaque nisi id voluptatibus enim similique atque modi ipsum sint iste quam? Iusto, aperiam! Recusandae ipsum aut esse deserunt. Dolorem exercitationem, recusandae ut aliquam ad minus odio ipsum cumque odit tempore error hic perspiciatis sed eaque, nam nihil quibusdam.<\\/div><div><br \\/><\\/div><div>Quibusdam reprehenderit odit omnis. Beatae tenetur suscipit nihil distinctio minima necessitatibus corrupti repellat vero consequuntur quo sed expedita laudantium excepturi eum, assumenda saepe dicta qui veniam laborum quod! Fuga dolore ipsa, odio dolores accusantium sed consequuntur similique quasi ducimus magnam est tenetur illo eaque eveniet blanditiis ipsam sequi pariatur. Blanditiis aliquam corporis esse reiciendis veritatis, sit repellat cumque.<\\/div><div><br \\/><\\/div><div>Possimus consequuntur, doloremque perspiciatis, officiis mollitia sequi nemo vero ad quae, sint porro suscipit est eligendi excepturi quod totam! Cum facilis neque omnis perferendis incidunt debitis quasi iste nihil, repellendus velit dolorem veritatis atque itaque sed dolore! Quis consequuntur similique id ab distinctio veritatis itaque sed obcaecati. Explicabo quis dolores quisquam fugiat illum, corrupti neque similique nihil corporis, sapiente quidem reiciendis dicta est aut labore pariatur, facilis iste provident voluptate quibusdam ullam autem. Atque quos et ad!<\\/div>\",\"image\":\"618271b1080321635938737.jpg\"}', '2021-11-03 04:55:37', '2021-11-03 06:01:29');
INSERT INTO `frontends` (`id`, `data_keys`, `data_values`, `created_at`, `updated_at`) VALUES
(85, 'blog.element', '{\"has_image\":[\"1\"],\"tag\":\"Statistics.\",\"title\":\"Betting Statistics.\",\"description_nic\":\"<font color=\\\"#000033\\\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia fuga debitis ut deserunt dolores, tempore nobis obcaecati, dolorem eaque tenetur maiores sapiente natus illo labore itaque, voluptatem ducimus quasi tempora totam blanditiis odit enim sint! Pariatur laboriosam unde veniam quaerat quod in provident odit eos, maxime, cupiditate adipisci deleniti, labore accusantium aliquid quibusdam? Porro laborum ipsum voluptatem?<\\/font><div><font color=\\\"#000033\\\"><br \\/><\\/font><\\/div><div><font color=\\\"#000033\\\">Ducimus, quam molestiae? Ipsa, asperiores numquam amet sit error excepturi commodi eos ratione nihil qui ut tempore repellendus provident, itaque nisi id voluptatibus enim similique atque modi ipsum sint iste quam? Iusto, aperiam! Recusandae ipsum aut esse deserunt. Dolorem exercitationem, recusandae ut aliquam ad minus odio ipsum cumque odit tempore error hic perspiciatis sed eaque, nam nihil quibusdam. Quibusdam reprehenderit odit omnis. Beatae tenetur suscipit nihil distinctio minima necessitatibus corrupti repellat vero consequuntur quo sed expedita laudantium excepturi eum, assumenda saepe dicta qui veniam laborum quod! Fuga dolore ipsa, odio dolores accusantium sed consequuntur similique quasi ducimus magnam est tenetur illo eaque eveniet blanditiis ipsam sequi pariatur.<\\/font><\\/div><div><font color=\\\"#000033\\\"><br \\/><\\/font><\\/div><div><font color=\\\"#000033\\\">Blanditiis aliquam corporis esse reiciendis veritatis, sit repellat cumque. Possimus consequuntur, doloremque perspiciatis, officiis mollitia sequi nemo vero ad quae, sint porro suscipit est eligendi excepturi quod totam! Cum facilis neque omnis perferendis incidunt debitis quasi iste nihil, repellendus velit dolorem veritatis atque itaque sed dolore! Quis consequuntur similique id ab distinctio veritatis itaque sed obcaecati. Explicabo quis dolores quisquam fugiat illum, corrupti neque similique nihil corporis, sapiente quidem reiciendis dicta est aut labore pariatur, facilis iste provident voluptate quibusdam ullam autem. Atque quos et ad!<\\/font><br \\/><\\/div>\",\"image\":\"618271bcbd21e1635938748.jpg\"}', '2021-11-03 04:55:48', '2021-11-03 05:59:47'),
(86, 'blog.content', '{\"heading\":\"Recently Posted\",\"details\":\"Amet accusantium sunt, aut totam reiciendis, earum deleniti minus reprehenderit ad aperiam possimus cum. Non tenetur dolorem molestiae voluptate sit, modi qui, beatae\"}', '2021-11-03 06:28:06', '2021-11-03 06:28:28'),
(87, 'auth_page.content', '{\"has_image\":\"1\",\"background_image\":\"620ca6566c6d31644996182.jpg\"}', '2021-11-13 05:51:46', '2022-02-16 01:23:02'),
(88, 'social_icon.element', '{\"title\":\"Twitter\",\"social_icon\":\"<i class=\\\"fab fa-twitter\\\"><\\/i>\",\"url\":\"https:\\/\\/www.twitter.com\"}', '2021-11-13 06:05:20', '2021-11-13 06:18:35'),
(89, 'social_icon.element', '{\"title\":\"Instagram\",\"social_icon\":\"<i class=\\\"lab la-instagram\\\"><\\/i>\",\"url\":\"https:\\/\\/www.instagram.com\"}', '2021-11-13 06:05:47', '2021-11-13 06:18:40'),
(90, 'social_icon.element', '{\"title\":\"Linkedin\",\"social_icon\":\"<i class=\\\"lab la-linkedin-in\\\"><\\/i>\",\"url\":\"https:\\/\\/www.linkedin.com\"}', '2021-11-13 06:06:30', '2021-11-13 06:18:45'),
(91, 'social_icon.element', '{\"title\":\"Pinterest\",\"social_icon\":\"<i class=\\\"lab la-pinterest-p\\\"><\\/i>\",\"url\":\"https:\\/\\/www.pinterest.com\"}', '2021-11-13 06:06:54', '2021-11-13 06:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `gateways`
--

CREATE TABLE `gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` int(10) DEFAULT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NULL',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=>enable, 2=>disable',
  `gateway_parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supported_currencies` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `crypto` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: fiat currency, 1: crypto currency',
  `extra` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `input_form` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gateways`
--

INSERT INTO `gateways` (`id`, `code`, `name`, `alias`, `image`, `status`, `gateway_parameters`, `supported_currencies`, `crypto`, `extra`, `description`, `input_form`, `created_at`, `updated_at`) VALUES
(1, 101, 'Paypal', 'Paypal', '5f6f1bd8678601601117144.jpg', 1, '{\"paypal_email\":{\"title\":\"PayPal Email\",\"global\":true,\"value\":\"sb-owud61543012@business.example.com\"}}', '{\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"TWD\":\"TWD\",\"NZD\":\"NZD\",\"NOK\":\"NOK\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"GBP\":\"GBP\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"USD\":\"$\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 00:04:38'),
(2, 102, 'Perfect Money', 'PerfectMoney', '5f6f1d2a742211601117482.jpg', 1, '{\"passphrase\":{\"title\":\"ALTERNATE PASSPHRASE\",\"global\":true,\"value\":\"hR26aw02Q1eEeUPSIfuwNypXX\"},\"wallet_id\":{\"title\":\"PM Wallet\",\"global\":false,\"value\":\"\"}}', '{\"USD\":\"$\",\"EUR\":\"\\u20ac\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 01:35:33'),
(3, 103, 'Stripe Hosted', 'Stripe', '5f6f1d4bc69e71601117515.jpg', 1, '{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"sk_test_51I6GGiCGv1sRiQlEi5v1or9eR0HVbuzdMd2rW4n3DxC8UKfz66R4X6n4yYkzvI2LeAIuRU9H99ZpY7XCNFC9xMs500vBjZGkKG\"},\"publishable_key\":{\"title\":\"PUBLISHABLE KEY\",\"global\":true,\"value\":\"pk_test_51I6GGiCGv1sRiQlEOisPKrjBqQqqcFsw8mXNaZ2H2baN6R01NulFS7dKFji1NRRxuchoUTEDdB7ujKcyKYSVc0z500eth7otOM\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"SGD\":\"SGD\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 00:48:36'),
(4, 104, 'Skrill', 'Skrill', '5f6f1d41257181601117505.jpg', 1, '{\"pay_to_email\":{\"title\":\"Skrill Email\",\"global\":true,\"value\":\"merchant@skrill.com\"},\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"---\"}}', '{\"AED\":\"AED\",\"AUD\":\"AUD\",\"BGN\":\"BGN\",\"BHD\":\"BHD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"HRK\":\"HRK\",\"HUF\":\"HUF\",\"ILS\":\"ILS\",\"INR\":\"INR\",\"ISK\":\"ISK\",\"JOD\":\"JOD\",\"JPY\":\"JPY\",\"KRW\":\"KRW\",\"KWD\":\"KWD\",\"MAD\":\"MAD\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"OMR\":\"OMR\",\"PLN\":\"PLN\",\"QAR\":\"QAR\",\"RON\":\"RON\",\"RSD\":\"RSD\",\"SAR\":\"SAR\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TND\":\"TND\",\"TRY\":\"TRY\",\"TWD\":\"TWD\",\"USD\":\"USD\",\"ZAR\":\"ZAR\",\"COP\":\"COP\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 01:30:16'),
(5, 105, 'PayTM', 'Paytm', '5f6f1d1d3ec731601117469.jpg', 1, '{\"MID\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"DIY12386817555501617\"},\"merchant_key\":{\"title\":\"Merchant Key\",\"global\":true,\"value\":\"bKMfNxPPf_QdZppa\"},\"WEBSITE\":{\"title\":\"Paytm Website\",\"global\":true,\"value\":\"DIYtestingweb\"},\"INDUSTRY_TYPE_ID\":{\"title\":\"Industry Type\",\"global\":true,\"value\":\"Retail\"},\"CHANNEL_ID\":{\"title\":\"CHANNEL ID\",\"global\":true,\"value\":\"WEB\"},\"transaction_url\":{\"title\":\"Transaction URL\",\"global\":true,\"value\":\"https:\\/\\/pguat.paytm.com\\/oltp-web\\/processTransaction\"},\"transaction_status_url\":{\"title\":\"Transaction STATUS URL\",\"global\":true,\"value\":\"https:\\/\\/pguat.paytm.com\\/paytmchecksum\\/paytmCallback.jsp\"}}', '{\"AUD\":\"AUD\",\"ARS\":\"ARS\",\"BDT\":\"BDT\",\"BRL\":\"BRL\",\"BGN\":\"BGN\",\"CAD\":\"CAD\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"COP\":\"COP\",\"HRK\":\"HRK\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EGP\":\"EGP\",\"EUR\":\"EUR\",\"GEL\":\"GEL\",\"GHS\":\"GHS\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"KES\":\"KES\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"MAD\":\"MAD\",\"NPR\":\"NPR\",\"NZD\":\"NZD\",\"NGN\":\"NGN\",\"NOK\":\"NOK\",\"PKR\":\"PKR\",\"PEN\":\"PEN\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"RON\":\"RON\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"ZAR\":\"ZAR\",\"KRW\":\"KRW\",\"LKR\":\"LKR\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"TRY\":\"TRY\",\"UGX\":\"UGX\",\"UAH\":\"UAH\",\"AED\":\"AED\",\"GBP\":\"GBP\",\"USD\":\"USD\",\"VND\":\"VND\",\"XOF\":\"XOF\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 03:00:44'),
(6, 106, 'Payeer', 'Payeer', '5f6f1bc61518b1601117126.jpg', 0, '{\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"866989763\"},\"secret_key\":{\"title\":\"Secret key\",\"global\":true,\"value\":\"7575\"}}', '{\"USD\":\"USD\",\"EUR\":\"EUR\",\"RUB\":\"RUB\"}', 0, '{\"status\":{\"title\": \"Status URL\",\"value\":\"ipn.Payeer\"}}', NULL, NULL, '2019-09-14 13:14:22', '2020-12-28 01:26:58'),
(7, 107, 'PayStack', 'Paystack', '5f7096563dfb71601214038.jpg', 1, '{\"public_key\":{\"title\":\"Public key\",\"global\":true,\"value\":\"pk_test_cd330608eb47970889bca397ced55c1dd5ad3783\"},\"secret_key\":{\"title\":\"Secret key\",\"global\":true,\"value\":\"sk_test_8a0b1f199362d7acc9c390bff72c4e81f74e2ac3\"}}', '{\"USD\":\"USD\",\"NGN\":\"NGN\"}', 0, '{\"callback\":{\"title\": \"Callback URL\",\"value\":\"ipn.Paystack\"},\"webhook\":{\"title\": \"Webhook URL\",\"value\":\"ipn.Paystack\"}}\r\n', NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 01:49:51'),
(8, 108, 'VoguePay', 'Voguepay', '5f6f1d5951a111601117529.jpg', 1, '{\"merchant_id\":{\"title\":\"MERCHANT ID\",\"global\":true,\"value\":\"demo\"}}', '{\"USD\":\"USD\",\"GBP\":\"GBP\",\"EUR\":\"EUR\",\"GHS\":\"GHS\",\"NGN\":\"NGN\",\"ZAR\":\"ZAR\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 01:22:38'),
(9, 109, 'Flutterwave', 'Flutterwave', '5f6f1b9e4bb961601117086.jpg', 1, '{\"public_key\":{\"title\":\"Public Key\",\"global\":true,\"value\":\"----------------\"},\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"-----------------------\"},\"encryption_key\":{\"title\":\"Encryption Key\",\"global\":true,\"value\":\"------------------\"}}', '{\"BIF\":\"BIF\",\"CAD\":\"CAD\",\"CDF\":\"CDF\",\"CVE\":\"CVE\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"GHS\":\"GHS\",\"GMD\":\"GMD\",\"GNF\":\"GNF\",\"KES\":\"KES\",\"LRD\":\"LRD\",\"MWK\":\"MWK\",\"MZN\":\"MZN\",\"NGN\":\"NGN\",\"RWF\":\"RWF\",\"SLL\":\"SLL\",\"STD\":\"STD\",\"TZS\":\"TZS\",\"UGX\":\"UGX\",\"USD\":\"USD\",\"XAF\":\"XAF\",\"XOF\":\"XOF\",\"ZMK\":\"ZMK\",\"ZMW\":\"ZMW\",\"ZWD\":\"ZWD\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-06-05 11:37:45'),
(10, 110, 'RazorPay', 'Razorpay', '5f6f1d3672dd61601117494.jpg', 1, '{\"key_id\":{\"title\":\"Key Id\",\"global\":true,\"value\":\"rzp_test_kiOtejPbRZU90E\"},\"key_secret\":{\"title\":\"Key Secret \",\"global\":true,\"value\":\"osRDebzEqbsE1kbyQJ4y0re7\"}}', '{\"INR\":\"INR\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 02:51:32'),
(11, 111, 'Stripe Storefront', 'StripeJs', '5f7096a31ed9a1601214115.jpg', 1, '{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"sk_test_51I6GGiCGv1sRiQlEi5v1or9eR0HVbuzdMd2rW4n3DxC8UKfz66R4X6n4yYkzvI2LeAIuRU9H99ZpY7XCNFC9xMs500vBjZGkKG\"},\"publishable_key\":{\"title\":\"PUBLISHABLE KEY\",\"global\":true,\"value\":\"pk_test_51I6GGiCGv1sRiQlEOisPKrjBqQqqcFsw8mXNaZ2H2baN6R01NulFS7dKFji1NRRxuchoUTEDdB7ujKcyKYSVc0z500eth7otOM\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"SGD\":\"SGD\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 00:53:10'),
(12, 112, 'Instamojo', 'Instamojo', '5f6f1babbdbb31601117099.jpg', 1, '{\"api_key\":{\"title\":\"API KEY\",\"global\":true,\"value\":\"test_2241633c3bc44a3de84a3b33969\"},\"auth_token\":{\"title\":\"Auth Token\",\"global\":true,\"value\":\"test_279f083f7bebefd35217feef22d\"},\"salt\":{\"title\":\"Salt\",\"global\":true,\"value\":\"19d38908eeff4f58b2ddda2c6d86ca25\"}}', '{\"INR\":\"INR\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 02:56:20'),
(13, 501, 'Blockchain', 'Blockchain', '5f6f1b2b20c6f1601116971.jpg', 1, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"55529946-05ca-48ff-8710-f279d86b1cc5\"},\"xpub_code\":{\"title\":\"XPUB CODE\",\"global\":true,\"value\":\"xpub6CKQ3xxWyBoFAF83izZCSFUorptEU9AF8TezhtWeMU5oefjX3sFSBw62Lr9iHXPkXmDQJJiHZeTRtD9Vzt8grAYRhvbz4nEvBu3QKELVzFK\"}}', '{\"BTC\":\"BTC\"}', 1, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 02:25:00'),
(14, 502, 'Block.io', 'Blockio', '5f6f19432bedf1601116483.jpg', 1, '{\"api_key\":{\"title\":\"API Key\",\"global\":false,\"value\":\"1658-8015-2e5e-9afb\"},\"api_pin\":{\"title\":\"API PIN\",\"global\":true,\"value\":\"75757575\"}}', '{\"BTC\":\"BTC\",\"LTC\":\"LTC\"}', 1, '{\"cron\":{\"title\": \"Cron URL\",\"value\":\"ipn.Blockio\"}}', NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 02:31:09'),
(15, 503, 'CoinPayments', 'Coinpayments', '5f6f1b6c02ecd1601117036.jpg', 1, '{\"public_key\":{\"title\":\"Public Key\",\"global\":true,\"value\":\"---------------\"},\"private_key\":{\"title\":\"Private Key\",\"global\":true,\"value\":\"------------\"},\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"93a1e014c4ad60a7980b4a7239673cb4\"}}', '{\"BTC\":\"Bitcoin\",\"BTC.LN\":\"Bitcoin (Lightning Network)\",\"LTC\":\"Litecoin\",\"CPS\":\"CPS Coin\",\"VLX\":\"Velas\",\"APL\":\"Apollo\",\"AYA\":\"Aryacoin\",\"BAD\":\"Badcoin\",\"BCD\":\"Bitcoin Diamond\",\"BCH\":\"Bitcoin Cash\",\"BCN\":\"Bytecoin\",\"BEAM\":\"BEAM\",\"BITB\":\"Bean Cash\",\"BLK\":\"BlackCoin\",\"BSV\":\"Bitcoin SV\",\"BTAD\":\"Bitcoin Adult\",\"BTG\":\"Bitcoin Gold\",\"BTT\":\"BitTorrent\",\"CLOAK\":\"CloakCoin\",\"CLUB\":\"ClubCoin\",\"CRW\":\"Crown\",\"CRYP\":\"CrypticCoin\",\"CRYT\":\"CryTrExCoin\",\"CURE\":\"CureCoin\",\"DASH\":\"DASH\",\"DCR\":\"Decred\",\"DEV\":\"DeviantCoin\",\"DGB\":\"DigiByte\",\"DOGE\":\"Dogecoin\",\"EBST\":\"eBoost\",\"EOS\":\"EOS\",\"ETC\":\"Ether Classic\",\"ETH\":\"Ethereum\",\"ETN\":\"Electroneum\",\"EUNO\":\"EUNO\",\"EXP\":\"EXP\",\"Expanse\":\"Expanse\",\"FLASH\":\"FLASH\",\"GAME\":\"GameCredits\",\"GLC\":\"Goldcoin\",\"GRS\":\"Groestlcoin\",\"KMD\":\"Komodo\",\"LOKI\":\"LOKI\",\"LSK\":\"LSK\",\"MAID\":\"MaidSafeCoin\",\"MUE\":\"MonetaryUnit\",\"NAV\":\"NAV Coin\",\"NEO\":\"NEO\",\"NMC\":\"Namecoin\",\"NVST\":\"NVO Token\",\"NXT\":\"NXT\",\"OMNI\":\"OMNI\",\"PINK\":\"PinkCoin\",\"PIVX\":\"PIVX\",\"POT\":\"PotCoin\",\"PPC\":\"Peercoin\",\"PROC\":\"ProCurrency\",\"PURA\":\"PURA\",\"QTUM\":\"QTUM\",\"RES\":\"Resistance\",\"RVN\":\"Ravencoin\",\"RVR\":\"RevolutionVR\",\"SBD\":\"Steem Dollars\",\"SMART\":\"SmartCash\",\"SOXAX\":\"SOXAX\",\"STEEM\":\"STEEM\",\"STRAT\":\"STRAT\",\"SYS\":\"Syscoin\",\"TPAY\":\"TokenPay\",\"TRIGGERS\":\"Triggers\",\"TRX\":\" TRON\",\"UBQ\":\"Ubiq\",\"UNIT\":\"UniversalCurrency\",\"USDT\":\"Tether USD (Omni Layer)\",\"VTC\":\"Vertcoin\",\"WAVES\":\"Waves\",\"XCP\":\"Counterparty\",\"XEM\":\"NEM\",\"XMR\":\"Monero\",\"XSN\":\"Stakenet\",\"XSR\":\"SucreCoin\",\"XVG\":\"VERGE\",\"XZC\":\"ZCoin\",\"ZEC\":\"ZCash\",\"ZEN\":\"Horizen\"}', 1, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 02:07:14'),
(16, 504, 'CoinPayments Fiat', 'CoinpaymentsFiat', '5f6f1b94e9b2b1601117076.jpg', 1, '{\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"6515561\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"ISK\":\"ISK\",\"JPY\":\"JPY\",\"KRW\":\"KRW\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"RUB\":\"RUB\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TWD\":\"TWD\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 02:07:44'),
(17, 505, 'Coingate', 'Coingate', '5f6f1b5fe18ee1601117023.jpg', 1, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"6354mwVCEw5kHzRJ6thbGo-N\"}}', '{\"USD\":\"USD\",\"EUR\":\"EUR\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 02:49:30'),
(18, 506, 'Coinbase Commerce', 'CoinbaseCommerce', '5f6f1b4c774af1601117004.jpg', 1, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"c47cd7df-d8e8-424b-a20a\"},\"secret\":{\"title\":\"Webhook Shared Secret\",\"global\":true,\"value\":\"55871878-2c32-4f64-ab66\"}}', '{\"USD\":\"USD\",\"EUR\":\"EUR\",\"JPY\":\"JPY\",\"GBP\":\"GBP\",\"AUD\":\"AUD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CNY\":\"CNY\",\"SEK\":\"SEK\",\"NZD\":\"NZD\",\"MXN\":\"MXN\",\"SGD\":\"SGD\",\"HKD\":\"HKD\",\"NOK\":\"NOK\",\"KRW\":\"KRW\",\"TRY\":\"TRY\",\"RUB\":\"RUB\",\"INR\":\"INR\",\"BRL\":\"BRL\",\"ZAR\":\"ZAR\",\"AED\":\"AED\",\"AFN\":\"AFN\",\"ALL\":\"ALL\",\"AMD\":\"AMD\",\"ANG\":\"ANG\",\"AOA\":\"AOA\",\"ARS\":\"ARS\",\"AWG\":\"AWG\",\"AZN\":\"AZN\",\"BAM\":\"BAM\",\"BBD\":\"BBD\",\"BDT\":\"BDT\",\"BGN\":\"BGN\",\"BHD\":\"BHD\",\"BIF\":\"BIF\",\"BMD\":\"BMD\",\"BND\":\"BND\",\"BOB\":\"BOB\",\"BSD\":\"BSD\",\"BTN\":\"BTN\",\"BWP\":\"BWP\",\"BYN\":\"BYN\",\"BZD\":\"BZD\",\"CDF\":\"CDF\",\"CLF\":\"CLF\",\"CLP\":\"CLP\",\"COP\":\"COP\",\"CRC\":\"CRC\",\"CUC\":\"CUC\",\"CUP\":\"CUP\",\"CVE\":\"CVE\",\"CZK\":\"CZK\",\"DJF\":\"DJF\",\"DKK\":\"DKK\",\"DOP\":\"DOP\",\"DZD\":\"DZD\",\"EGP\":\"EGP\",\"ERN\":\"ERN\",\"ETB\":\"ETB\",\"FJD\":\"FJD\",\"FKP\":\"FKP\",\"GEL\":\"GEL\",\"GGP\":\"GGP\",\"GHS\":\"GHS\",\"GIP\":\"GIP\",\"GMD\":\"GMD\",\"GNF\":\"GNF\",\"GTQ\":\"GTQ\",\"GYD\":\"GYD\",\"HNL\":\"HNL\",\"HRK\":\"HRK\",\"HTG\":\"HTG\",\"HUF\":\"HUF\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"IMP\":\"IMP\",\"IQD\":\"IQD\",\"IRR\":\"IRR\",\"ISK\":\"ISK\",\"JEP\":\"JEP\",\"JMD\":\"JMD\",\"JOD\":\"JOD\",\"KES\":\"KES\",\"KGS\":\"KGS\",\"KHR\":\"KHR\",\"KMF\":\"KMF\",\"KPW\":\"KPW\",\"KWD\":\"KWD\",\"KYD\":\"KYD\",\"KZT\":\"KZT\",\"LAK\":\"LAK\",\"LBP\":\"LBP\",\"LKR\":\"LKR\",\"LRD\":\"LRD\",\"LSL\":\"LSL\",\"LYD\":\"LYD\",\"MAD\":\"MAD\",\"MDL\":\"MDL\",\"MGA\":\"MGA\",\"MKD\":\"MKD\",\"MMK\":\"MMK\",\"MNT\":\"MNT\",\"MOP\":\"MOP\",\"MRO\":\"MRO\",\"MUR\":\"MUR\",\"MVR\":\"MVR\",\"MWK\":\"MWK\",\"MYR\":\"MYR\",\"MZN\":\"MZN\",\"NAD\":\"NAD\",\"NGN\":\"NGN\",\"NIO\":\"NIO\",\"NPR\":\"NPR\",\"OMR\":\"OMR\",\"PAB\":\"PAB\",\"PEN\":\"PEN\",\"PGK\":\"PGK\",\"PHP\":\"PHP\",\"PKR\":\"PKR\",\"PLN\":\"PLN\",\"PYG\":\"PYG\",\"QAR\":\"QAR\",\"RON\":\"RON\",\"RSD\":\"RSD\",\"RWF\":\"RWF\",\"SAR\":\"SAR\",\"SBD\":\"SBD\",\"SCR\":\"SCR\",\"SDG\":\"SDG\",\"SHP\":\"SHP\",\"SLL\":\"SLL\",\"SOS\":\"SOS\",\"SRD\":\"SRD\",\"SSP\":\"SSP\",\"STD\":\"STD\",\"SVC\":\"SVC\",\"SYP\":\"SYP\",\"SZL\":\"SZL\",\"THB\":\"THB\",\"TJS\":\"TJS\",\"TMT\":\"TMT\",\"TND\":\"TND\",\"TOP\":\"TOP\",\"TTD\":\"TTD\",\"TWD\":\"TWD\",\"TZS\":\"TZS\",\"UAH\":\"UAH\",\"UGX\":\"UGX\",\"UYU\":\"UYU\",\"UZS\":\"UZS\",\"VEF\":\"VEF\",\"VND\":\"VND\",\"VUV\":\"VUV\",\"WST\":\"WST\",\"XAF\":\"XAF\",\"XAG\":\"XAG\",\"XAU\":\"XAU\",\"XCD\":\"XCD\",\"XDR\":\"XDR\",\"XOF\":\"XOF\",\"XPD\":\"XPD\",\"XPF\":\"XPF\",\"XPT\":\"XPT\",\"YER\":\"YER\",\"ZMW\":\"ZMW\",\"ZWL\":\"ZWL\"}\r\n\r\n', 0, '{\"endpoint\":{\"title\": \"Webhook Endpoint\",\"value\":\"ipn.CoinbaseCommerce\"}}', NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 02:02:47'),
(24, 113, 'Paypal Express', 'PaypalSdk', '5f6f1bec255c61601117164.jpg', 1, '{\"clientId\":{\"title\":\"Paypal Client ID\",\"global\":true,\"value\":\"Ae0-tixtSV7DvLwIh3Bmu7JvHrjh5EfGdXr_cEklKAVjjezRZ747BxKILiBdzlKKyp-W8W_T7CKH1Ken\"},\"clientSecret\":{\"title\":\"Client Secret\",\"global\":true,\"value\":\"EOhbvHZgFNO21soQJT1L9Q00M3rK6PIEsdiTgXRBt2gtGtxwRer5JvKnVUGNU5oE63fFnjnYY7hq3HBA\"}}', '{\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"TWD\":\"TWD\",\"NZD\":\"NZD\",\"NOK\":\"NOK\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"GBP\":\"GBP\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"USD\":\"$\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-05-20 23:01:08'),
(25, 114, 'Stripe Checkout', 'StripeV3', '5f709684736321601214084.jpg', 1, '{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"sk_test_51I6GGiCGv1sRiQlEi5v1or9eR0HVbuzdMd2rW4n3DxC8UKfz66R4X6n4yYkzvI2LeAIuRU9H99ZpY7XCNFC9xMs500vBjZGkKG\"},\"publishable_key\":{\"title\":\"PUBLISHABLE KEY\",\"global\":true,\"value\":\"pk_test_51I6GGiCGv1sRiQlEOisPKrjBqQqqcFsw8mXNaZ2H2baN6R01NulFS7dKFji1NRRxuchoUTEDdB7ujKcyKYSVc0z500eth7otOM\"},\"end_point\":{\"title\":\"End Point Secret\",\"global\":true,\"value\":\"whsec_lUmit1gtxwKTveLnSe88xCSDdnPOt8g5\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"SGD\":\"SGD\"}', 0, '{\"webhook\":{\"title\": \"Webhook Endpoint\",\"value\":\"ipn.StripeV3\"}}', NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 00:58:38'),
(27, 115, 'Mollie', 'Mollie', '5f6f1bb765ab11601117111.jpg', 1, '{\"mollie_email\":{\"title\":\"Mollie Email \",\"global\":true,\"value\":\"vi@gmail.com\"},\"api_key\":{\"title\":\"API KEY\",\"global\":true,\"value\":\"test_cucfwKTWfft9s337qsVfn5CC4vNkrn\"}}', '{\"AED\":\"AED\",\"AUD\":\"AUD\",\"BGN\":\"BGN\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"HRK\":\"HRK\",\"HUF\":\"HUF\",\"ILS\":\"ILS\",\"ISK\":\"ISK\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"RON\":\"RON\",\"RUB\":\"RUB\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TWD\":\"TWD\",\"USD\":\"USD\",\"ZAR\":\"ZAR\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 02:44:45'),
(30, 116, 'Cashmaal', 'Cashmaal', '60d1a0b7c98311624350903.png', 1, '{\"web_id\":{\"title\":\"Web Id\",\"global\":true,\"value\":\"3748\"},\"ipn_key\":{\"title\":\"IPN Key\",\"global\":true,\"value\":\"546254628759524554647987\"}}', '{\"PKR\":\"PKR\",\"USD\":\"USD\"}', 0, '{\"webhook\":{\"title\": \"IPN URL\",\"value\":\"ipn.Cashmaal\"}}', NULL, NULL, NULL, '2021-06-22 08:05:04'),
(36, 119, 'Mercado Pago', 'MercadoPago', '60f2ad85a82951626516869.png', 1, '{\"access_token\":{\"title\":\"Access Token\",\"global\":true,\"value\":\"3Vee5S2F\"}}', '{\"USD\":\"USD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"NOK\":\"NOK\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"AUD\":\"AUD\",\"NZD\":\"NZD\"}', 0, NULL, NULL, NULL, NULL, '2021-07-17 09:44:29');

-- --------------------------------------------------------

--
-- Table structure for table `gateway_currencies`
--

CREATE TABLE `gateway_currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method_code` int(10) DEFAULT NULL,
  `gateway_alias` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `max_amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `percent_charge` decimal(5,2) NOT NULL DEFAULT 0.00,
  `fixed_charge` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `rate` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_parameter` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sitename` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cur_text` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'currency text',
  `cur_sym` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'currency symbol',
  `email_from` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_template` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_api` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_color` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_limit` decimal(12,2) NOT NULL,
  `max_limit` decimal(12,2) NOT NULL,
  `mail_config` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'email configuration',
  `sms_config` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ev` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'email verification, 0 - dont check, 1 - check',
  `en` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'email notification, 0 - dont send, 1 - send',
  `sv` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'sms verication, 0 - dont check, 1 - check',
  `sn` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'sms notification, 0 - dont send, 1 - send',
  `force_ssl` tinyint(1) NOT NULL DEFAULT 0,
  `secure_password` tinyint(1) NOT NULL DEFAULT 0,
  `agree` tinyint(1) NOT NULL DEFAULT 0,
  `registration` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: Off	, 1: On',
  `active_template` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sys_version` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit_commission` tinyint(1) NOT NULL DEFAULT 1,
  `bet_commission` tinyint(1) NOT NULL DEFAULT 1,
  `win_commission` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `sitename`, `cur_text`, `cur_sym`, `email_from`, `email_template`, `sms_api`, `base_color`, `min_limit`, `max_limit`, `mail_config`, `sms_config`, `ev`, `en`, `sv`, `sn`, `force_ssl`, `secure_password`, `agree`, `registration`, `active_template`, `sys_version`, `deposit_commission`, `bet_commission`, `win_commission`, `created_at`, `updated_at`) VALUES
(1, 'Super10 club', 'EUR', '€', 'info@viserlab.com', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.imgur.com/Z1qtvtV.png\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello {{fullname}} ({{username}})</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\">{{message}}</td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2021 <a href=\"#\">Website Name</a> . All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', 'hi {{name}}, {{message}}', '2ecc71', '1.00', '1000.00', '{\"name\":\"php\"}', '{\"clickatell_api_key\":\"----------------------------\",\"infobip_username\":\"--------------\",\"infobip_password\":\"----------------------\",\"message_bird_api_key\":\"-------------------\",\"account_sid\":\"AC67afdacf2dacff5f163134883db92c24\",\"auth_token\":\"77726b242830fb28f52fb08c648dd7a6\",\"from\":\"+17739011523\",\"apiv2_key\":\"dfsfgdfgh\",\"name\":\"clickatell\"}', 1, 1, 0, 0, 0, 0, 1, 1, 'basic', NULL, 1, 0, 0, NULL, '2022-06-27 20:10:00');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_align` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: left to right text align, 1: right to left text align',
  `is_default` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: not default language, 1: default language',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leagues`
--

CREATE TABLE `leagues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `matches`
--

CREATE TABLE `matches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `league_id` int(10) UNSIGNED NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dividend` int(11) NOT NULL COMMENT 'first value of ratio',
  `divisor` int(11) NOT NULL COMMENT 'second value of ratio',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `winner` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempname` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'template name',
  `secs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `slug`, `tempname`, `secs`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'HOME', 'home', 'templates.basic.', '[\"partner\"]', 1, '2020-07-11 06:23:58', '2021-11-03 12:21:45'),
(2, 'About', 'about-us', 'templates.basic.', '[\"about\",\"feature\",\"strategy\",\"counter\",\"faq\"]', 0, '2020-07-11 06:35:35', '2021-11-03 12:22:58'),
(4, 'Blog', 'blog', 'templates.basic.', NULL, 1, '2020-10-22 01:14:43', '2022-01-15 09:34:25'),
(5, 'Contact', 'contact', 'templates.basic.', NULL, 1, '2020-10-22 01:14:53', '2022-01-15 09:32:41'),
(12, 'Affiliate', 'affiliate', 'templates.basic.', '[\"refer\",\"blog\",\"strategy\"]', 0, '2021-10-25 05:43:53', '2021-11-03 12:24:33');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abilities` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tokenable_id` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tokenable_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `last_used_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `name`, `token`, `abilities`, `tokenable_id`, `tokenable_type`, `created_at`, `updated_at`, `last_used_at`) VALUES
(1, 'auth_token', '7537c4c831942e3b94a27d4bc707d1ff25f053d9ac741040188e929b72c56346', '[\"*\"]', '3', 'App\\Models\\User', '2022-06-22 00:00:05', '2022-06-22 00:00:05', NULL),
(2, 'auth_token', 'a037aee887e0f3db01899a6d3944386599561b57de0a6304b82197055e6977f7', '[\"*\"]', '3', 'App\\Models\\User', '2022-06-22 00:04:03', '2022-06-22 00:04:03', NULL),
(3, 'auth_token', '1b2f80aee55d17dbe7c5aef67a7d689cf991a3735e32a2daa8e376af833af445', '[\"*\"]', '3', 'App\\Models\\User', '2022-06-22 00:04:26', '2022-06-22 00:04:26', NULL),
(4, 'auth_token', '9a68c715e06442fbf1a4fb6e3a2947447837d174c2edb339d522b6eb8312b07e', '[\"*\"]', '3', 'App\\Models\\User', '2022-06-22 00:05:21', '2022-06-22 00:05:21', NULL),
(5, 'auth_token', '7dc057498ce462298218d770faef8ee82e51c77177901bc9cc3a9468247374a9', '[\"*\"]', '3', 'App\\Models\\User', '2022-06-22 00:06:30', '2022-06-22 00:06:30', NULL),
(6, 'auth_token', '7002e9e07ca00a9c8ad2a8669ecbf133fb5e84ace7e9c5c9cff4e834687071dd', '[\"*\"]', '3', 'App\\Models\\User', '2022-06-22 19:55:06', '2022-06-22 19:55:06', NULL),
(7, 'auth_token', '71fede9b42c8c739e1b477bc65293143c2c9082c34193ed100a3d25f9afbe1bc', '[\"*\"]', '3', 'App\\Models\\User', '2022-06-23 00:28:56', '2022-06-23 00:28:56', NULL),
(8, 'auth_token', '51ee1deea4f1387c6abece766955bdd944528d1515a472c6607a099c38d1b360', '[\"*\"]', '3', 'App\\Models\\User', '2022-06-23 01:01:51', '2022-06-23 01:01:51', NULL),
(9, 'auth_token', '157e98b33de3fc75dacb40a4d5cc1db25c46e44f05ec6c05eee2aef87ceaa7e8', '[\"*\"]', '3', 'App\\Models\\User', '2022-06-23 10:54:45', '2022-06-23 10:54:45', NULL),
(10, 'auth_token', '168f121cf4f3d197ba0882a73582dd2875350d33087c2f97b91ec0fe782f75f6', '[\"*\"]', '2', 'App\\Models\\User', '2022-06-23 12:31:06', '2022-06-23 12:31:06', NULL),
(11, 'auth_token', 'ebb371690d249759bb534bf67fa0c0a892919c0616251a214eb0786f2eb40f31', '[\"*\"]', '2', 'App\\Models\\User', '2022-06-23 12:31:06', '2022-06-23 12:31:06', NULL),
(12, 'auth_token', '7f3a4fbc959064bfc2a41bb59d850cbe3158860fdaeccce7159a1d47e13632ab', '[\"*\"]', '2', 'App\\Models\\User', '2022-06-23 12:31:11', '2022-06-23 12:31:11', NULL),
(13, 'auth_token', '8ea3dd4eebb4d019ba0d5a603e593ba16a7f50761b57f7a04263e943e236aa14', '[\"*\"]', '2', 'App\\Models\\User', '2022-06-23 12:36:26', '2022-06-23 12:36:26', NULL),
(14, 'auth_token', '5366f0ba42e004ef60823abccf3300459a64152b146f9f6fec67a96d252cdffc', '[\"*\"]', '2', 'App\\Models\\User', '2022-06-23 12:37:59', '2022-06-23 12:37:59', NULL),
(15, 'auth_token', '8cf0c0b11005d24fabd69ec0d9683a1b018097d2524c756a834d0b6676b60ca1', '[\"*\"]', '4', 'App\\Models\\User', '2022-06-23 18:00:28', '2022-06-23 18:00:28', NULL),
(16, 'auth_token', 'bece6cd356e8f1a74f8de42208a0ce3657d54a404064b1f35412120c64f086b8', '[\"*\"]', '3', 'App\\Models\\User', '2022-06-23 21:32:13', '2022-06-23 21:32:13', NULL),
(17, 'auth_token', 'b5524206c7ecbeb10157ed93621c5a21c7e4cf603fff6e412850bb661bc44f82', '[\"*\"]', '3', 'App\\Models\\User', '2022-06-24 10:24:47', '2022-06-24 10:24:47', NULL),
(18, 'auth_token', '8305e4fd404b1713b607e6923ae8c3097e0fc87a62872c8f9144ca9d8762b130', '[\"*\"]', '3', 'App\\Models\\User', '2022-06-24 10:27:24', '2022-06-24 10:37:28', '2022-06-24 10:37:28'),
(19, 'auth_token', '04d9b0ccd4fbb5530c85d1f8ec75ce1b64bb83fa59cb0985beeca84da82f0b1b', '[\"*\"]', '4', 'App\\Models\\User', '2022-06-24 10:39:33', '2022-06-24 10:45:43', '2022-06-24 10:45:43'),
(20, 'auth_token', 'd4c3ec82d5e83936d08a2ceca827251d435f1df10751dd489d4ca4f646d6d650', '[\"*\"]', '3', 'App\\Models\\User', '2022-06-25 18:40:14', '2022-06-25 18:40:14', NULL),
(21, 'auth_token', 'ee843ed8bc987a9ef0cd228822dff995572b6aabbd829bf7ae3048d724411e24', '[\"*\"]', '4', 'App\\Models\\User', '2022-06-25 22:04:04', '2022-06-25 22:04:04', NULL),
(22, 'auth_token', '8aeba4e34ab5a09319852b5a16abbd7156aa0c85c84b34a85d7dc60e16829ecc', '[\"*\"]', '4', 'App\\Models\\User', '2022-06-26 19:32:58', '2022-06-26 19:32:58', NULL),
(23, 'auth_token', 'be8f656d1167518807299dfa8c2d415139dc21a7120d8fd60282c502e2510c0d', '[\"*\"]', '4', 'App\\Models\\User', '2022-06-26 23:02:50', '2022-06-26 23:02:50', NULL),
(24, 'auth_token', 'dc54b5ae8a1547566c2060037b8f46df1a0e1a0ecbd6cc57d36c766c56d8519b', '[\"*\"]', '4', 'App\\Models\\User', '2022-06-26 23:12:53', '2022-06-26 23:12:53', NULL),
(25, 'auth_token', '83c82d6edd39a8abc7b3fc358cd4a940daa7a47f0dfbf6201090dc77aef6e0dd', '[\"*\"]', '4', 'App\\Models\\User', '2022-06-27 08:38:36', '2022-06-27 08:38:36', NULL),
(26, 'auth_token', '71a71a49da1ff251b1ef3cd4c8c73d10682dcdeb41f755f4d63a135a99459db7', '[\"*\"]', '4', 'App\\Models\\User', '2022-06-27 08:41:08', '2022-06-27 08:41:08', NULL),
(27, 'auth_token', '7ff14eb8d60c0aedabc31801c0b89ae61f3b94e03ff7ab283fe806571a9433c7', '[\"*\"]', '4', 'App\\Models\\User', '2022-06-27 08:42:12', '2022-06-27 08:42:12', NULL),
(28, 'auth_token', 'a2b55d759f87d427641d1e8bc5e79b0c6d9a2ca6ab6cee0696c8ee251c093336', '[\"*\"]', '5', 'App\\Models\\User', '2022-06-27 11:46:39', '2022-06-27 11:46:39', NULL),
(29, 'auth_token', 'b63dcb98053f2e31fdcea05157bf3994ae3ff23dc1690273d4af84cd3ed940cf', '[\"*\"]', '4', 'App\\Models\\User', '2022-06-27 11:48:51', '2022-06-27 11:48:51', NULL),
(30, 'auth_token', 'cec17c29c6a006727f16fd74d255c048f78cd34a7f16dff9bf88a2a781a12d34', '[\"*\"]', '4', 'App\\Models\\User', '2022-06-27 12:08:40', '2022-06-27 12:08:40', NULL),
(31, 'auth_token', '017341b9741d11f9803a917af8105b8976870ee1e272f94f2bc7c8840d64e25e', '[\"*\"]', '4', 'App\\Models\\User', '2022-06-27 12:48:46', '2022-06-27 12:48:46', NULL),
(32, 'auth_token', 'a2b4da6e91d2d90ead9ec6832e801cfe35acd5d543775a518b8a528b186a5a7c', '[\"*\"]', '4', 'App\\Models\\User', '2022-06-27 12:57:39', '2022-06-27 13:39:24', '2022-06-27 13:39:24'),
(33, 'auth_token', 'cbb8f0b5702306ca2f0874a46e2e8282ec36afcf961b23cd01516fad8a78ab47', '[\"*\"]', '4', 'App\\Models\\User', '2022-06-27 13:58:34', '2022-06-27 14:34:28', '2022-06-27 14:34:28'),
(34, 'auth_token', '92193c4a0842c098252d5038470051b6c2ea8ca98399fb85ce2f3cbe9b03731f', '[\"*\"]', '4', 'App\\Models\\User', '2022-06-27 14:43:29', '2022-06-27 14:58:58', '2022-06-27 14:58:58'),
(35, 'auth_token', 'd8a314d700261f30b1239c82eeb5243ffbee806ea68a011e39a12a14ff62ec6c', '[\"*\"]', '4', 'App\\Models\\User', '2022-06-27 15:00:02', '2022-06-27 15:00:02', NULL),
(36, 'auth_token', 'c244ec0a8a85003cea4e76d2fdb951a202813f7d7c4d8c57e7b9eee14835f342', '[\"*\"]', '4', 'App\\Models\\User', '2022-06-27 15:00:35', '2022-06-27 15:00:35', NULL),
(37, 'auth_token', '569a6caec37fc5b5a373fa558002eaedfa9f59243579059e7e1e152cb1fa739a', '[\"*\"]', '4', 'App\\Models\\User', '2022-06-27 15:01:03', '2022-06-27 15:02:25', '2022-06-27 15:02:25'),
(38, 'auth_token', '29f43e2b6e2c94a33586125b616e7685346754bbb9fbdb94d15cc2ef8787d34c', '[\"*\"]', '4', 'App\\Models\\User', '2022-06-27 15:01:42', '2022-06-27 15:01:42', NULL),
(39, 'auth_token', '3d20e21d9bce483a78f77d733e880973b2ac8957a664cfd6eeddb013eca88fcb', '[\"*\"]', '4', 'App\\Models\\User', '2022-06-27 15:02:25', '2022-06-27 15:02:25', NULL),
(40, 'auth_token', '7fbb355583979759b72799cb3667d707ff55a00cd642a378877e8e106a7c2f35', '[\"*\"]', '4', 'App\\Models\\User', '2022-06-27 15:02:57', '2022-06-27 15:02:57', '2022-06-27 15:02:57'),
(41, 'auth_token', 'ae704500cfb060f678dfb93aa898e16403d4db9cc3c62474340dad6582ce9836', '[\"*\"]', '3', 'App\\Models\\User', '2022-06-27 15:16:07', '2022-06-27 15:16:13', '2022-06-27 15:16:13'),
(42, 'auth_token', '000b77bc9c23a02053d21046d29f8bc808a5208c7cfc1c8ff811b765318eb23e', '[\"*\"]', '6', 'App\\Models\\User', '2022-06-27 19:13:40', '2022-06-27 19:13:40', NULL),
(43, 'auth_token', 'e12d38ab3e66bc87cf7c526d5ff1717fc1b884516231cd9f228a05b317612db8', '[\"*\"]', '7', 'App\\Models\\User', '2022-06-27 19:14:18', '2022-06-27 19:14:18', NULL),
(44, 'auth_token', '831e6ba0b6d186a061f87d0d399a4a19401cfbd9f4e7b2576782d7c5dffd122d', '[\"*\"]', '3', 'App\\Models\\User', '2022-06-27 19:16:05', '2022-06-27 19:16:13', '2022-06-27 19:16:13'),
(45, 'auth_token', '331e0837587b3257cf1377f4a885a7c660bc585271e1f514ae8c38ed273c721e', '[\"*\"]', '4', 'App\\Models\\User', '2022-06-27 19:16:37', '2022-06-27 19:31:14', '2022-06-27 19:31:14'),
(46, 'auth_token', 'f76f99f9dbba3d2d0a3e43394a2de45e1c30a0e1ceb4ad1a27a990404d12485e', '[\"*\"]', '4', 'App\\Models\\User', '2022-07-08 20:14:59', '2022-07-08 20:15:00', '2022-07-08 20:15:00'),
(47, 'auth_token', 'c7085e4f2ee51ae103ffa027e0b0b9a2c073ac0760b1ca116c916c35940d7d8f', '[\"*\"]', '4', 'App\\Models\\User', '2022-07-08 20:20:39', '2022-07-08 20:20:39', '2022-07-08 20:20:39'),
(48, 'auth_token', '4d95d3a494b8771801eb8bf5627012e186da21c0b74774eeacec2c118aec0704', '[\"*\"]', '2', 'App\\Models\\User', '2022-07-20 11:53:58', '2022-07-20 11:54:00', '2022-07-20 11:54:00'),
(49, 'auth_token', '9ad0eb2ef5606b8511ab0c94484985475bbf876be9c26a004cf111b48cdfb6cb', '[\"*\"]', '3', 'App\\Models\\User', '2022-07-21 13:45:11', '2022-07-21 13:45:24', '2022-07-21 13:45:24'),
(50, 'auth_token', '644589a277261335037622100aa39e7d67b9e82cf92047851e35bbf078ac7cb8', '[\"*\"]', '8', 'App\\Models\\User', '2022-07-21 22:22:41', '2022-07-21 22:22:41', NULL),
(51, 'auth_token', '0757cf97e51deab57688f3b50bb81e5b1fe0bb1e9641571f735b724778efb221', '[\"*\"]', '2', 'App\\Models\\User', '2022-07-21 22:48:32', '2022-07-21 22:48:33', '2022-07-21 22:48:33'),
(52, 'auth_token', 'cf619e8722f9ebb825ec0786bfc9a90a3e4437411bfc933eab30cc9dc3f16b38', '[\"*\"]', '1', 'App\\Models\\User', '2022-07-27 16:00:57', '2022-07-27 16:00:57', '2022-07-27 16:00:57'),
(53, 'auth_token', 'bc6de33a7c3b197d40bb9160dabdf793fba391ee77a2cccbe4f495984816c795', '[\"*\"]', '1', 'App\\Models\\User', '2022-07-27 16:05:36', '2022-07-27 16:05:36', '2022-07-27 16:05:36'),
(54, 'auth_token', '2a8f9a885e3c82bcfbce726790b35732f8cee76accff97feb25e9540e791f342', '[\"*\"]', '9', 'App\\Models\\User', '2022-07-27 16:24:56', '2022-07-27 16:24:56', NULL),
(55, 'auth_token', '4c7aa7ca5ac8c5246cce54cddcc21d928161760dae91e3481d02e847396cdf75', '[\"*\"]', '9', 'App\\Models\\User', '2022-07-27 16:25:46', '2022-07-27 16:25:47', '2022-07-27 16:25:47'),
(56, 'auth_token', '6f9c85dfe547bfa814c0d2b87154cf736c523121917b6bbca436405ca9c04903', '[\"*\"]', '9', 'App\\Models\\User', '2022-07-27 16:28:51', '2022-07-27 16:28:53', '2022-07-27 16:28:53'),
(57, 'auth_token', '18c011ae38f1707faef9cede180c5939495b49a739a01b8a6b0e995a53d2ae9e', '[\"*\"]', '9', 'App\\Models\\User', '2022-07-27 16:28:52', '2022-07-27 17:35:03', '2022-07-27 17:35:03'),
(58, 'auth_token', '7e544c9f851bf4fabb2d4c9d3d2458a1d364cc1407e3e219389982dd463682d6', '[\"*\"]', '3', 'App\\Models\\User', '2022-07-27 22:19:42', '2022-07-27 22:19:43', '2022-07-27 22:19:43'),
(59, 'auth_token', '7daf37e23cb21d11cf6a3db6255171c33b1e96acf105de1d633e640d88a8c909', '[\"*\"]', '10', 'App\\Models\\User', '2022-07-27 22:20:52', '2022-07-27 22:20:52', NULL),
(60, 'auth_token', '08fdc66cb349109851bf1ef31d83096c77317edde37788290f19f5d0197cb79e', '[\"*\"]', '4', 'App\\Models\\User', '2022-07-27 22:52:54', '2022-07-27 22:52:55', '2022-07-27 22:52:55'),
(61, 'auth_token', '0b04ca8a620a52f3f474cfc06c39203e63424d59c3a0197c9162b836e15e48c4', '[\"*\"]', '11', 'App\\Models\\User', '2022-07-27 23:14:02', '2022-07-27 23:14:02', NULL),
(62, 'auth_token', '0d4795f48e4ec6d093316097e9803bc3bbf6d2f7741cf5b81645ef1ccc45e89f', '[\"*\"]', '12', 'App\\Models\\User', '2022-07-27 23:22:21', '2022-07-27 23:22:21', NULL),
(63, 'auth_token', '2b69649601ae3fe44780c14810b0219f3c251d9f90210416e20e454b91edbdd9', '[\"*\"]', '13', 'App\\Models\\User', '2022-07-27 23:23:31', '2022-07-27 23:23:31', NULL),
(64, 'auth_token', 'f8225b54ee6211269b75dffce3f2a961b73cc6135db6344b784485bd9e0734e1', '[\"*\"]', '14', 'App\\Models\\User', '2022-07-27 23:29:26', '2022-07-27 23:29:26', NULL),
(65, 'auth_token', 'beb04bb587b6e1c6ba00866272ea51555be9a42328e7606a1f7161bff8870f2f', '[\"*\"]', '15', 'App\\Models\\User', '2022-07-27 23:30:33', '2022-07-27 23:30:33', NULL),
(66, 'auth_token', 'b64cdd4a299eea4fa87c17ebb4f57a7d04985984fe289b69ae121fe846b3fed3', '[\"*\"]', '16', 'App\\Models\\User', '2022-07-27 23:31:48', '2022-07-27 23:31:48', NULL),
(67, 'auth_token', '7072a596cabd0135eb86f602a0a4080c58ff1bfe1e69433883f0144d0d539770', '[\"*\"]', '17', 'App\\Models\\User', '2022-07-27 23:32:43', '2022-07-27 23:32:43', NULL),
(68, 'auth_token', '0a4b00aa2e957ed2644d32243927d4871b769744ca5e7cf5270932bd9b3a4d06', '[\"*\"]', '18', 'App\\Models\\User', '2022-07-27 23:36:30', '2022-07-27 23:36:30', NULL),
(69, 'auth_token', 'efd7e76c5675da6e16f936aab7089232ce284ee32a4a7c04a644d909542799e8', '[\"*\"]', '3', 'App\\Models\\User', '2022-07-27 23:55:39', '2022-07-27 23:55:39', '2022-07-27 23:55:39'),
(70, 'auth_token', 'd50f1e345d2f8f3350938a7b13e548af34d5e282fcf05f709613deca58388f0c', '[\"*\"]', '4', 'App\\Models\\User', '2022-07-27 23:56:49', '2022-07-28 00:02:19', '2022-07-28 00:02:19'),
(71, 'auth_token', '83c3cf4b22db0b434b4a9096785ad452803436341c1e960c70c0baf35cfd92de', '[\"*\"]', '3', 'App\\Models\\User', '2022-07-28 00:13:03', '2022-07-28 00:13:03', '2022-07-28 00:13:03');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `match_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `result` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `referrals`
--

CREATE TABLE `referrals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `commission_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` int(10) UNSIGNED NOT NULL,
  `percent` decimal(12,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_attachments`
--

CREATE TABLE `support_attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `support_message_id` int(10) UNSIGNED NOT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_messages`
--

CREATE TABLE `support_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supportticket_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_tickets`
--

CREATE TABLE `support_tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) DEFAULT 0,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticket` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0: Open, 1: Answered, 2: Replied, 3: Closed',
  `priority` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 = Low, 2 = medium, 3 = heigh',
  `last_reply` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `charge` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `post_balance` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `trx_type` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `balance` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'contains full address',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0: banned, 1: active',
  `ev` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: email unverified, 1: email verified',
  `sv` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: sms unverified, 1: sms verified',
  `ver_code` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'stores verification code',
  `ver_code_send_at` datetime DEFAULT NULL COMMENT 'verification send time',
  `ts` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: 2fa off, 1: 2fa on',
  `tv` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0: 2fa unverified, 1: 2fa verified',
  `tsc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `email`, `country_code`, `mobile`, `ref_by`, `balance`, `password`, `image`, `address`, `status`, `ev`, `sv`, `ver_code`, `ver_code_send_at`, `ts`, `tv`, `tsc`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Manju', 'Test', 'manjula', 'smanjuladeviselvam@gmail.com', 'IN', '+919911991999', 0, '0.00000000', '$2y$10$eIOepT5BIfKKqbFR5PRfkuqWRaheZaunV/O2eVe3FUzW9RddCMCgu', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"India\",\"city\":\"\"}', 1, 1, 1, NULL, NULL, 0, 1, NULL, 'gTD1TfajR4bsVHCmvYUnERZxoel2GD1j59RuPsSt9tECpdao2LgUiuubJJSk', '2022-06-12 00:01:00', '2022-06-12 00:01:58'),
(2, 'Mohammad', 'Rayon', 'Rayon786', 'mohammadrayon786@gmail.com', 'IN', '+919911991191', 0, '0.00000000', '$2y$10$wVDs4G6p17y3UiCb8tv.Z.AL3LJedOsi5D8IPENqIw9uCvgkU8xWW', '62a5ef1b423761655041819.jpeg', '{\"address\":\"99, Emirates Markert\",\"state\":\"dubai\",\"zip\":\"00000\",\"country\":\"United Arab Emirates\",\"city\":\"dubai\"}', 1, 1, 1, NULL, NULL, 1, 0, 'I6NFOJTCJ6ITILSI', NULL, '2022-06-12 18:13:11', '2022-06-23 12:31:06'),
(3, 'Thivyap', 'A', 'user123', 'tivyaananth94@gmail.com', 'IN', '+919911991111', 0, '0.00000000', '$2a$10$Jf5X88yLOG8j6Upq05BH/.rRcw/cwlJI3S41q1vH6FyZEZazo/9v.', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"Afghanistan\",\"city\":\"\"}', 1, 1, 1, NULL, NULL, 0, 1, NULL, 'WI3MpYPjwGH0gshKznJi0sGlLjLDCMhbWHBa4JM1yg97Y36T99l48Z1QIhFM', '2022-06-13 17:30:01', '2022-06-13 17:31:14'),
(4, 'Demo', 'D', 'demo123', 'demo@gmail.com', 'IN', '+919911991199', 0, '0.00000000', '$2y$10$rNRo3yWUtMJ3deqcG8Y0t.RVw/W/xc262OpRWewc67eDnUttA2EqK', NULL, '{\"address\":\"No 10, Kamarajar Nagar\",\"state\":\"Tamilnadu\",\"zip\":\"625002\",\"country\":\"India\",\"city\":\"Madurai\"}', 1, 1, 1, '792915', '2022-06-24 10:43:05', 0, 1, NULL, '1dWQ4OzTFJKznjgPju2i7GggPnVpMrQQcx7YBgu4zaIR2R0jlVQNG5cB1Q0O', '2022-06-23 18:00:27', '2022-06-24 10:44:45'),
(5, NULL, NULL, 'ashy99', 'ashywin99@gmail.com', 'IN', '+917010622530', 0, '0.00000000', '$2y$10$.TFdPV.QIXvUp80WeHzWweu9OJT0edJn.0qjyjXUsoEPAEdVRiAPO', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"India\",\"city\":\"\"}', 1, 0, 1, NULL, NULL, 0, 1, NULL, NULL, '2022-06-27 11:46:39', '2022-06-27 11:46:39'),
(6, NULL, NULL, 'Kanaka', 'muthukanakachithra@gmail.com', 'IN', '+918768976543', 0, '0.00000000', '$2y$10$7Url/C/CnozwbkylbTwgHuCbAzFifnF7Qm8bEpdjH1k3pjCkXYBqC', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"India\",\"city\":\"\"}', 1, 0, 1, NULL, NULL, 0, 1, NULL, NULL, '2022-06-27 19:13:40', '2022-06-27 19:13:40'),
(7, NULL, NULL, 'Kanaka1', 'muthukanakachithra123@gmail.com', 'IN', '+918768976546', 0, '0.00000000', '$2y$10$socMZJMvsnDhaDFzoC9qi.OnnMrXQBBPDycD6kAw0B.RKvXl0WTMq', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"India\",\"city\":\"\"}', 1, 0, 1, NULL, NULL, 0, 1, NULL, NULL, '2022-06-27 19:14:18', '2022-06-27 19:14:18'),
(8, NULL, NULL, 'Rayon001', 'rayonhaque2019@gmail.com', 'IN', '+91+971565421243', 0, '0.00000000', '$2y$10$lDckM3nHATgqh5NOdyO/nO6yQyooU80fthHClvogWQ3HTcX1UeURa', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"India\",\"city\":\"\"}', 1, 0, 1, '279475', '2022-07-27 15:23:39', 0, 1, NULL, NULL, '2022-07-21 22:22:41', '2022-07-27 15:23:39'),
(9, NULL, NULL, 'test123', 'test@mail.com', 'IN', '+919911991198', 0, '0.00000000', '$2y$10$NxVRO0j3ZJ3lAy05rZjs7OREgKTPozHVRZCaP0dCqU7H6Aa0Ysz1e', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"India\",\"city\":\"\"}', 1, 0, 1, '400204', '2022-07-27 16:25:47', 0, 1, NULL, NULL, '2022-07-27 16:24:56', '2022-07-27 16:25:47'),
(10, NULL, NULL, 'kanaka123', 'kanak123@gmail.com', 'IN', '+917010622533', 0, '0.00000000', '$2y$10$/QtU6qQU3h0svElhi0vixeBKDngHg2XzBEAJknwvXJTyjncodv48e', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"India\",\"city\":\"\"}', 1, 0, 1, NULL, NULL, 0, 1, NULL, NULL, '2022-07-27 22:20:52', '2022-07-27 22:20:52'),
(11, NULL, NULL, 'kiruba139', 'kiruba139@gmail.com', 'IN', '+918122147954', 0, '0.00000000', '$2y$10$vCEDHr.8fOhHIxxMJh3sTeaIOubdSzlK0OkuRi.RqiqaQgUktHlIK', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"India\",\"city\":\"\"}', 1, 0, 1, NULL, NULL, 0, 1, NULL, NULL, '2022-07-27 23:14:02', '2022-07-27 23:14:02'),
(12, NULL, NULL, 'santhosh', 'santy@gmail.com', 'IN', '+917878787878', 0, '0.00000000', '$2y$10$df5U4ZfeqQO7s7BKrFJ/o.gF59bnAMpy7fn.nRLtzP/vn3JqJHJrG', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"India\",\"city\":\"\"}', 1, 0, 1, NULL, NULL, 0, 1, NULL, NULL, '2022-07-27 23:22:21', '2022-07-27 23:22:21'),
(13, NULL, NULL, 'sathosh123', 'sathosh@gmail.com', 'IN', '+91677676767', 0, '0.00000000', '$2y$10$kTjSICVVlBCAl5KNI7MqB.RPrw4ALJw1VucqXac.nT3SeYLD2xe3a', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"India\",\"city\":\"\"}', 1, 0, 1, NULL, NULL, 0, 1, NULL, NULL, '2022-07-27 23:23:31', '2022-07-27 23:23:31'),
(14, NULL, NULL, 'ramesh123', 'ramesh123@gmail.com', 'IN', '+916712121221', 0, '0.00000000', '$2y$10$2f.Bf/K6Y68Ht.sSZlwkluLXSV.DyAmx.ps6fVem73gvUnCgSVNtG', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"India\",\"city\":\"\"}', 1, 0, 1, NULL, NULL, 0, 1, NULL, NULL, '2022-07-27 23:29:26', '2022-07-27 23:29:26'),
(15, NULL, NULL, 'test1234', 'test@gmail.com', 'IN', '+911234567890', 0, '0.00000000', '$2y$10$uER21iQJOpuze9v23CFMbOXFnoDrUwZwM5U8HlX98NcdL30x5B3iy', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"India\",\"city\":\"\"}', 1, 0, 1, NULL, NULL, 0, 1, NULL, NULL, '2022-07-27 23:30:33', '2022-07-27 23:30:33'),
(16, NULL, NULL, 'test12', 'test12@gmail.copm', 'IN', '+915656565656', 0, '0.00000000', '$2y$10$T6A8/oy4TUOUlSEig0YheOFC0x44jYnmJ9P/XusAILbIxh7ZIP5KC', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"India\",\"city\":\"\"}', 1, 0, 1, NULL, NULL, 0, 1, NULL, NULL, '2022-07-27 23:31:48', '2022-07-27 23:31:48'),
(17, NULL, NULL, 'test56', 'test56@gmail.com', 'IN', '+91676712121213', 0, '0.00000000', '$2y$10$Bo/mLlBjbGR7ECQGX1j2LOP/03p7zZE8e0xRkhfMd2XU81cggtpIS', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"India\",\"city\":\"\"}', 1, 0, 1, NULL, NULL, 0, 1, NULL, NULL, '2022-07-27 23:32:43', '2022-07-27 23:32:43'),
(18, NULL, NULL, 'test567', 'test567@gmail.com', 'IN', '+91672121212121', 0, '0.00000000', '$2y$10$2H5iLjHkI0FLbimvyP2yw.5h4/V.zWfz2a8dZyH/qQ1/xyv1t7Lha', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"India\",\"city\":\"\"}', 1, 0, 1, '831423', '2022-08-16 18:43:36', 0, 1, NULL, NULL, '2022-07-27 23:36:30', '2022-08-16 18:43:36'),
(19, 'admin', 'admin', 'testadmin', 'admin@clickonsave.com', 'MP', '16704567898', 0, '0.00000000', '$2y$10$dzIR5k78CcE7HwLM5yZUPO5douDEbSMfv/2iOtpYyp8/DH1qTmvFe', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"Northern Mariana Islands\",\"city\":\"\"}', 1, 0, 1, '243324', '2022-09-29 03:03:23', 0, 1, NULL, NULL, '2022-09-29 03:03:22', '2022-09-29 03:03:23'),
(20, 'testadmins', 'testadmins', 'testadmins', 'bisag13889@bongcs.com', 'NO', '47123456789', 0, '0.00000000', '$2y$10$A0J9pY281XJqczmT29GFX.VI2vEkxOTdr8aZoqjwUap21l/XnAmAW', '6334beb901dc91664401081.jpg', '{\"address\":\"mingo\",\"state\":\"mingo\",\"zip\":\"mingo\",\"country\":\"Norway\",\"city\":\"mingo\"}', 1, 1, 1, NULL, NULL, 0, 1, NULL, NULL, '2022-09-29 03:06:05', '2022-09-29 03:08:01');

-- --------------------------------------------------------

--
-- Table structure for table `user_logins`
--

CREATE TABLE `user_logins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_ip` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `os` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_logins`
--

INSERT INTO `user_logins` (`id`, `user_id`, `user_ip`, `city`, `country`, `country_code`, `longitude`, `latitude`, `browser`, `os`, `created_at`, `updated_at`) VALUES
(1, 1, '157.49.247.106', 'Chennai', 'India', 'IN', '80.2785', '13.0878', 'Chrome', 'Windows 10', '2022-06-12 00:01:00', '2022-06-12 00:01:00'),
(2, 2, '5.193.123.210', 'Ajman', 'United Arab Emirates', 'AE', '55.4788', '25.4018', 'Chrome', 'Mac OS X', '2022-06-12 18:13:12', '2022-06-12 18:13:12'),
(3, 2, '5.193.123.210', 'Ajman', 'United Arab Emirates', 'AE', '55.4788', '25.4018', 'Chrome', 'Mac OS X', '2022-06-12 19:49:06', '2022-06-12 19:49:06'),
(4, 2, '5.193.123.210', 'Ajman', 'United Arab Emirates', 'AE', '55.4788', '25.4018', 'Chrome', 'Mac OS X', '2022-06-12 23:17:52', '2022-06-12 23:17:52'),
(5, 1, '202.179.69.95', 'Pune', 'India', 'IN', '73.8554', '18.5196', 'Chrome', 'Windows 10', '2022-06-13 11:22:55', '2022-06-13 11:22:55'),
(6, 1, '202.179.69.95', 'Pune', 'India', 'IN', '73.8554', '18.5196', 'Chrome', 'Windows 10', '2022-06-13 11:52:54', '2022-06-13 11:52:54'),
(7, 1, '5.193.123.210', 'Ajman', 'United Arab Emirates', 'AE', '55.4788', '25.4018', 'Chrome', 'Mac OS X', '2022-06-13 13:27:12', '2022-06-13 13:27:12'),
(8, 3, '157.49.90.113', NULL, NULL, NULL, NULL, NULL, 'Handheld Browser', 'Android', '2022-06-13 17:30:02', '2022-06-13 17:30:02'),
(9, 3, '49.204.113.172', NULL, NULL, NULL, NULL, NULL, 'Chrome', 'Windows 10', '2022-06-21 23:14:16', '2022-06-21 23:14:16'),
(10, 3, '49.204.113.172', NULL, NULL, NULL, NULL, NULL, 'Unknown Browser', 'Unknown OS Platform', '2022-06-22 00:00:05', '2022-06-22 00:00:05'),
(11, 3, '171.60.217.114', NULL, NULL, NULL, NULL, NULL, 'Chrome', 'Windows 10', '2022-06-22 00:06:21', '2022-06-22 00:06:21'),
(12, 3, '171.60.217.114', NULL, NULL, NULL, NULL, NULL, 'Chrome', 'Windows 10', '2022-06-22 00:06:30', '2022-06-22 00:06:30'),
(13, 3, '171.60.217.114', NULL, NULL, NULL, NULL, NULL, 'Chrome', 'Windows 10', '2022-06-22 00:08:42', '2022-06-22 00:08:42'),
(14, 3, '117.200.153.50', NULL, NULL, NULL, NULL, NULL, 'Chrome', 'Windows 10', '2022-06-22 19:56:07', '2022-06-22 19:56:07'),
(15, 3, '117.200.153.50', NULL, NULL, NULL, NULL, NULL, 'Chrome', 'Windows 10', '2022-06-22 23:21:10', '2022-06-22 23:21:10'),
(16, 3, '117.200.153.50', NULL, NULL, NULL, NULL, NULL, 'Chrome', 'Windows 10', '2022-06-23 00:28:56', '2022-06-23 00:28:56'),
(17, 3, '171.60.217.114', NULL, NULL, NULL, NULL, NULL, 'Chrome', 'Windows 10', '2022-06-23 01:01:51', '2022-06-23 01:01:51'),
(18, 3, '117.200.153.50', NULL, NULL, NULL, NULL, NULL, 'Chrome', 'Windows 10', '2022-06-23 10:54:45', '2022-06-23 10:54:45'),
(19, 2, '109.177.20.196', NULL, NULL, NULL, NULL, NULL, 'Chrome', 'Mac OS X', '2022-06-23 12:32:06', '2022-06-23 12:32:06'),
(20, 2, '109.177.20.196', NULL, NULL, NULL, NULL, NULL, 'Chrome', 'Mac OS X', '2022-06-23 12:32:06', '2022-06-23 12:32:06'),
(21, 2, '109.177.20.196', NULL, NULL, NULL, NULL, NULL, 'Chrome', 'Mac OS X', '2022-06-23 12:32:11', '2022-06-23 12:32:11'),
(22, 2, '109.177.20.196', NULL, NULL, NULL, NULL, NULL, 'Chrome', 'Mac OS X', '2022-06-23 12:36:26', '2022-06-23 12:36:26'),
(23, 2, '109.177.20.196', NULL, NULL, NULL, NULL, NULL, 'Chrome', 'Mac OS X', '2022-06-23 12:37:59', '2022-06-23 12:37:59'),
(24, 4, '49.204.112.161', 'Coimbatore', 'India', 'IN', '76.9661', '11.0055', 'Unknown Browser', 'Unknown OS Platform', '2022-06-23 18:00:28', '2022-06-23 18:00:28'),
(25, 3, '117.201.31.33', 'Ernakulam', 'India', 'IN', '76.2904', '9.9671', 'Chrome', 'Windows 10', '2022-06-23 21:32:13', '2022-06-23 21:32:13'),
(26, 3, '49.204.134.59', 'Coimbatore', 'India', 'IN', '76.9661', '11.0055', 'Unknown Browser', 'Unknown OS Platform', '2022-06-24 10:24:48', '2022-06-24 10:24:48'),
(27, 3, '49.204.134.59', 'Coimbatore', 'India', 'IN', '76.9661', '11.0055', 'Unknown Browser', 'Unknown OS Platform', '2022-06-24 10:27:24', '2022-06-24 10:27:24'),
(28, 4, '49.204.134.59', 'Coimbatore', 'India', 'IN', '76.9661', '11.0055', 'Unknown Browser', 'Unknown OS Platform', '2022-06-24 10:39:33', '2022-06-24 10:39:33'),
(29, 3, '2401:4900:1cd1:5d03:1ce1:c4c2:bc47:1277', '', 'India', 'IN', '77', '20', 'Chrome', 'Windows 10', '2022-06-25 18:40:14', '2022-06-25 18:40:14'),
(30, 4, '49.204.116.39', 'Coimbatore', 'India', 'IN', '76.9661', '11.0055', 'Chrome', 'Windows 10', '2022-06-25 21:37:32', '2022-06-25 21:37:32'),
(31, 4, '49.204.116.39', 'Coimbatore', 'India', 'IN', '76.9661', '11.0055', 'Chrome', 'Windows 10', '2022-06-25 21:41:05', '2022-06-25 21:41:05'),
(32, 3, '2401:4900:1cd1:5d03:749b:ecac:c288:2e68', '', 'India', 'IN', '77', '20', 'Handheld Browser', 'Android', '2022-06-25 21:49:11', '2022-06-25 21:49:11'),
(33, 4, '2401:4900:1cd1:5d03:749b:ecac:c288:2e68', '', 'India', 'IN', '77', '20', 'Handheld Browser', 'Android', '2022-06-25 22:04:04', '2022-06-25 22:04:04'),
(34, 3, '2401:4900:1f2a:6551:492c:9153:d7c4:385', '', 'India', 'IN', '77', '20', 'Chrome', 'Windows 10', '2022-06-26 19:32:39', '2022-06-26 19:32:39'),
(35, 4, '2401:4900:1f2a:6551:492c:9153:d7c4:385', '', 'India', 'IN', '77', '20', 'Chrome', 'Windows 10', '2022-06-26 19:32:58', '2022-06-26 19:32:58'),
(36, 3, '2401:4900:1f2a:6551:7c9e:faf9:e8f3:4cb9', '', 'India', 'IN', '77', '20', 'Chrome', 'Windows 10', '2022-06-26 22:15:06', '2022-06-26 22:15:06'),
(37, 4, '2401:4900:1f2a:6551:749b:ecac:c288:2e68', '', 'India', 'IN', '77', '20', 'Handheld Browser', 'Android', '2022-06-26 23:02:50', '2022-06-26 23:02:50'),
(38, 4, '2401:4900:1f2a:6551:7c9e:faf9:e8f3:4cb9', '', 'India', 'IN', '77', '20', 'Handheld Browser', 'Android', '2022-06-26 23:12:53', '2022-06-26 23:12:53'),
(39, 4, '2401:4900:1f2a:6551:7c9e:faf9:e8f3:4cb9', '', 'India', 'IN', '77', '20', 'Handheld Browser', 'Android', '2022-06-27 08:38:36', '2022-06-27 08:38:36'),
(40, 4, '2401:4900:1f2a:6551:7c9e:faf9:e8f3:4cb9', '', 'India', 'IN', '77', '20', 'Handheld Browser', 'Android', '2022-06-27 08:41:08', '2022-06-27 08:41:08'),
(41, 4, '2401:4900:1f2a:6551:7c9e:faf9:e8f3:4cb9', '', 'India', 'IN', '77', '20', 'Handheld Browser', 'Android', '2022-06-27 08:42:12', '2022-06-27 08:42:12'),
(42, 3, '2401:4900:1f2a:6551:7c9e:faf9:e8f3:4cb9', '', 'India', 'IN', '77', '20', 'Chrome', 'Windows 10', '2022-06-27 08:45:40', '2022-06-27 08:45:40'),
(43, 5, '2401:4900:1f2a:6551:7c9e:faf9:e8f3:4cb9', '', 'India', 'IN', '77', '20', 'Chrome', 'Windows 10', '2022-06-27 11:46:39', '2022-06-27 11:46:39'),
(44, 4, '2401:4900:1f2a:6551:7c9e:faf9:e8f3:4cb9', '', 'India', 'IN', '77', '20', 'Chrome', 'Windows 10', '2022-06-27 11:48:51', '2022-06-27 11:48:51'),
(45, 4, '2401:4900:1f2a:6551:7c9e:faf9:e8f3:4cb9', '', 'India', 'IN', '77', '20', 'Chrome', 'Windows 10', '2022-06-27 12:08:40', '2022-06-27 12:08:40'),
(46, 4, '2401:4900:1f2a:6551:7c9e:faf9:e8f3:4cb9', '', 'India', 'IN', '77', '20', 'Chrome', 'Windows 10', '2022-06-27 12:48:46', '2022-06-27 12:48:46'),
(47, 4, '2401:4900:1f2a:6551:7c9e:faf9:e8f3:4cb9', '', 'India', 'IN', '77', '20', 'Chrome', 'Windows 10', '2022-06-27 12:57:39', '2022-06-27 12:57:39'),
(48, 4, '2401:4900:1f2a:6551:7c9e:faf9:e8f3:4cb9', '', 'India', 'IN', '77', '20', 'Chrome', 'Windows 10', '2022-06-27 13:58:34', '2022-06-27 13:58:34'),
(49, 4, '2401:4900:1f2a:6551:7c9e:faf9:e8f3:4cb9', '', 'India', 'IN', '77', '20', 'Chrome', 'Windows 10', '2022-06-27 14:43:29', '2022-06-27 14:43:29'),
(50, 4, '2401:4900:1f2a:6551:749b:ecac:c288:2e68', '', 'India', 'IN', '77', '20', 'Handheld Browser', 'Android', '2022-06-27 15:00:02', '2022-06-27 15:00:02'),
(51, 4, '2401:4900:1f2a:6551:749b:ecac:c288:2e68', '', 'India', 'IN', '77', '20', 'Handheld Browser', 'Android', '2022-06-27 15:00:35', '2022-06-27 15:00:35'),
(52, 4, '2401:4900:1f2a:6551:7c9e:faf9:e8f3:4cb9', '', 'India', 'IN', '77', '20', 'Chrome', 'Windows 10', '2022-06-27 15:01:03', '2022-06-27 15:01:03'),
(53, 4, '2401:4900:1f2a:6551:749b:ecac:c288:2e68', '', 'India', 'IN', '77', '20', 'Handheld Browser', 'Android', '2022-06-27 15:01:42', '2022-06-27 15:01:42'),
(54, 4, '2401:4900:1f2a:6551:7c9e:faf9:e8f3:4cb9', '', 'India', 'IN', '77', '20', 'Chrome', 'Windows 10', '2022-06-27 15:02:25', '2022-06-27 15:02:25'),
(55, 4, '2401:4900:1f2a:6551:749b:ecac:c288:2e68', '', 'India', 'IN', '77', '20', 'Handheld Browser', 'Android', '2022-06-27 15:02:57', '2022-06-27 15:02:57'),
(56, 3, '2401:4900:1f2a:6551:7c9e:faf9:e8f3:4cb9', '', 'India', 'IN', '77', '20', 'Chrome', 'Windows 10', '2022-06-27 15:16:07', '2022-06-27 15:16:07'),
(57, 6, '59.92.91.214', 'Tiruchi', 'India', 'IN', '78.6988', '10.8029', 'Chrome', 'Windows 10', '2022-06-27 19:13:40', '2022-06-27 19:13:40'),
(58, 7, '59.92.91.214', 'Tiruchi', 'India', 'IN', '78.6988', '10.8029', 'Handheld Browser', 'Android', '2022-06-27 19:14:18', '2022-06-27 19:14:18'),
(59, 3, '2401:4900:1f2a:6551:7c9e:faf9:e8f3:4cb9', '', 'India', 'IN', '77', '20', 'Chrome', 'Windows 10', '2022-06-27 19:16:05', '2022-06-27 19:16:05'),
(60, 4, '59.92.91.214', 'Tiruchi', 'India', 'IN', '78.6988', '10.8029', 'Handheld Browser', 'Android', '2022-06-27 19:16:37', '2022-06-27 19:16:37'),
(61, 4, '2401:4900:1f2a:6551:749b:ecac:c288:2e68', '', 'India', 'IN', '77', '20', 'Handheld Browser', 'Android', '2022-06-28 00:02:03', '2022-06-28 00:02:03'),
(62, 4, '2401:4900:1cd1:f49b:f553:b352:1ad:8dd', '', 'India', 'IN', '77', '20', 'Chrome', 'Windows 10', '2022-07-08 20:15:00', '2022-07-08 20:15:00'),
(63, 4, '2401:4900:1cd1:f49b:f553:b352:1ad:8dd', '', 'India', 'IN', '77', '20', 'Chrome', 'Windows 10', '2022-07-08 20:20:39', '2022-07-08 20:20:39'),
(64, 2, '2001:8f8:1e3d:ac73:4582:5f8f:815c:4ca1', '', 'United Arab Emirates', 'AE', '54', '24', 'Chrome', 'Mac OS X', '2022-07-20 11:53:59', '2022-07-20 11:53:59'),
(65, 3, '2401:4900:1cd0:5b6:cca4:26fc:3367:f3f0', '', 'India', 'IN', '77', '20', 'Chrome', 'Windows 10', '2022-07-21 13:45:12', '2022-07-21 13:45:12'),
(66, 8, '149.34.244.153', '', 'United States', 'US', '-97.822', '37.751', 'Handheld Browser', 'iPhone', '2022-07-21 22:22:41', '2022-07-21 22:22:41'),
(67, 2, '2001:8f8:1e3d:ac73:c8f8:a3bf:c4f1:621f', '', 'United Arab Emirates', 'AE', '54', '24', 'Chrome', 'Mac OS X', '2022-07-21 22:48:32', '2022-07-21 22:48:32'),
(68, 1, '202.179.69.93', 'Pune', 'India', 'IN', '73.8554', '18.5196', 'Chrome', 'Windows 10', '2022-07-27 16:00:57', '2022-07-27 16:00:57'),
(69, 1, '202.179.69.93', 'Pune', 'India', 'IN', '73.8554', '18.5196', 'Chrome', 'Windows 10', '2022-07-27 16:05:36', '2022-07-27 16:05:36'),
(70, 9, '49.204.133.16', 'Coimbatore', 'India', 'IN', '76.9661', '11.0055', 'Chrome', 'Windows 10', '2022-07-27 16:24:56', '2022-07-27 16:24:56'),
(71, 9, '49.204.133.16', 'Coimbatore', 'India', 'IN', '76.9661', '11.0055', 'Chrome', 'Windows 10', '2022-07-27 16:25:46', '2022-07-27 16:25:46'),
(72, 9, '2409:4072:6c86:7684::b2cb:6f05', 'Chennai', 'India', 'IN', '80.2785', '13.0878', 'Handheld Browser', 'Android', '2022-07-27 16:28:52', '2022-07-27 16:28:52'),
(73, 9, '2409:4072:6c86:7684::b2cb:6f05', 'Chennai', 'India', 'IN', '80.2785', '13.0878', 'Handheld Browser', 'Android', '2022-07-27 16:28:52', '2022-07-27 16:28:52'),
(74, 3, '2401:4900:1f2a:33c9:d836:eba6:4912:c432', '', 'India', 'IN', '77', '20', 'Chrome', 'Windows 10', '2022-07-27 22:19:42', '2022-07-27 22:19:42'),
(75, 10, '2401:4900:1f2a:33c9:d836:eba6:4912:c432', '', 'India', 'IN', '77', '20', 'Chrome', 'Windows 10', '2022-07-27 22:20:52', '2022-07-27 22:20:52'),
(76, 4, '2401:4900:1f2a:33c9:d836:eba6:4912:c432', '', 'India', 'IN', '77', '20', 'Chrome', 'Windows 10', '2022-07-27 22:52:54', '2022-07-27 22:52:54'),
(77, 11, '2401:4900:1f2a:33c9:d836:eba6:4912:c432', '', 'India', 'IN', '77', '20', 'Chrome', 'Windows 10', '2022-07-27 23:14:02', '2022-07-27 23:14:02'),
(78, 12, '2401:4900:1f2a:33c9:d836:eba6:4912:c432', '', 'India', 'IN', '77', '20', 'Chrome', 'Windows 10', '2022-07-27 23:22:21', '2022-07-27 23:22:21'),
(79, 13, '2401:4900:1f2a:33c9:d836:eba6:4912:c432', '', 'India', 'IN', '77', '20', 'Chrome', 'Windows 10', '2022-07-27 23:23:31', '2022-07-27 23:23:31'),
(80, 14, '2401:4900:1f2a:33c9:d836:eba6:4912:c432', '', 'India', 'IN', '77', '20', 'Chrome', 'Windows 10', '2022-07-27 23:29:26', '2022-07-27 23:29:26'),
(81, 15, '2401:4900:1f2a:33c9:d836:eba6:4912:c432', '', 'India', 'IN', '77', '20', 'Chrome', 'Windows 10', '2022-07-27 23:30:33', '2022-07-27 23:30:33'),
(82, 16, '2401:4900:1f2a:33c9:d836:eba6:4912:c432', '', 'India', 'IN', '77', '20', 'Chrome', 'Windows 10', '2022-07-27 23:31:48', '2022-07-27 23:31:48'),
(83, 17, '2401:4900:1f2a:33c9:d836:eba6:4912:c432', '', 'India', 'IN', '77', '20', 'Chrome', 'Windows 10', '2022-07-27 23:32:43', '2022-07-27 23:32:43'),
(84, 18, '2401:4900:1f2a:33c9:d836:eba6:4912:c432', '', 'India', 'IN', '77', '20', 'Chrome', 'Windows 10', '2022-07-27 23:36:30', '2022-07-27 23:36:30'),
(85, 3, '2401:4900:1f2a:33c9:d836:eba6:4912:c432', '', 'India', 'IN', '77', '20', 'Chrome', 'Windows 10', '2022-07-27 23:55:39', '2022-07-27 23:55:39'),
(86, 4, '2401:4900:1f2a:33c9:d836:eba6:4912:c432', '', 'India', 'IN', '77', '20', 'Chrome', 'Windows 10', '2022-07-27 23:56:49', '2022-07-27 23:56:49'),
(87, 3, '2401:4900:1f2a:33c9:d836:eba6:4912:c432', '', 'India', 'IN', '77', '20', 'Chrome', 'Windows 10', '2022-07-28 00:13:03', '2022-07-28 00:13:03'),
(88, 19, '83.139.147.239', 'Voronezh', 'Russia', 'RU', '39.17', '51.6664', 'Handheld Browser', 'Android', '2022-09-29 03:03:23', '2022-09-29 03:03:23'),
(89, 20, '83.139.147.239', 'Voronezh', 'Russia', 'RU', '39.17', '51.6664', 'Handheld Browser', 'Android', '2022-09-29 03:06:05', '2022-09-29 03:06:05');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `method_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `currency` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `charge` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `trx` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `final_amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `after_charge` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `withdraw_information` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1=>success, 2=>pending, 3=>cancel,  ',
  `admin_feedback` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_methods`
--

CREATE TABLE `withdraw_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_limit` decimal(28,8) DEFAULT 0.00000000,
  `max_limit` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `delay` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fixed_charge` decimal(28,8) DEFAULT 0.00000000,
  `rate` decimal(28,8) DEFAULT 0.00000000,
  `percent_charge` decimal(5,2) DEFAULT NULL,
  `currency` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`,`username`);

--
-- Indexes for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bets`
--
ALTER TABLE `bets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commission_logs`
--
ALTER TABLE `commission_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_logs`
--
ALTER TABLE `email_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_sms_templates`
--
ALTER TABLE `email_sms_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `extensions`
--
ALTER TABLE `extensions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frontends`
--
ALTER TABLE `frontends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gateways`
--
ALTER TABLE `gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gateway_currencies`
--
ALTER TABLE `gateway_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leagues`
--
ALTER TABLE `leagues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referrals`
--
ALTER TABLE `referrals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_attachments`
--
ALTER TABLE `support_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_messages`
--
ALTER TABLE `support_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`,`email`);

--
-- Indexes for table `user_logins`
--
ALTER TABLE `user_logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bets`
--
ALTER TABLE `bets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `commission_logs`
--
ALTER TABLE `commission_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_logs`
--
ALTER TABLE `email_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `email_sms_templates`
--
ALTER TABLE `email_sms_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;

--
-- AUTO_INCREMENT for table `extensions`
--
ALTER TABLE `extensions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `frontends`
--
ALTER TABLE `frontends`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `gateways`
--
ALTER TABLE `gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `gateway_currencies`
--
ALTER TABLE `gateway_currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leagues`
--
ALTER TABLE `leagues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `matches`
--
ALTER TABLE `matches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `referrals`
--
ALTER TABLE `referrals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_attachments`
--
ALTER TABLE `support_attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_messages`
--
ALTER TABLE `support_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_tickets`
--
ALTER TABLE `support_tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user_logins`
--
ALTER TABLE `user_logins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;