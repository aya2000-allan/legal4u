-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2021 at 10:52 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `babric_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1=unread 2=read',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `name`, `email`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Julfikar', 'julfikar@gmail.com', 'I want to appointment to a attorney', 2, '2021-08-26 02:43:44', '2021-09-08 03:47:30'),
(2, 'zakir Hossain', 'zakir7dipu@gmail.com', 'this is a test appointment', 1, '2021-10-06 01:49:36', '2021-10-06 01:49:36'),
(3, 'zakir Hossain', 'zakir7dipu@gmail.com', 'T', 1, '2021-10-06 01:53:28', '2021-10-06 01:53:28');

-- --------------------------------------------------------

--
-- Table structure for table `attorneys`
--

CREATE TABLE `attorneys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `designation_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `education` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `professional_exp` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `legal_exp` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 for Off, 1 for On',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attorneys`
--

INSERT INTO `attorneys` (`id`, `user_id`, `designation_id`, `name`, `phone`, `email`, `fax`, `image`, `address`, `description`, `education`, `professional_exp`, `legal_exp`, `status`, `created_at`, `updated_at`) VALUES
(1, 6, '1', 'John Doa', '(222) 333-4444', 'john@demo.com', '(000) 000-0000', '1629980594rheux1DAC.jpg', '135/F, South Kamlapur, Motijheel, United State', '<p>Real Estate Law is a diverse subject that derives its breadth from the need to design and manufacture everything from small individual parts and devices to large systems The role of a mechanical engineer is to take a product from an idea to the marketplace. In order to accomplish this, a broad range of skills</p>', '<strong>J.D. – Syracuse University College of Law</strong>\r\n<p>Honors: Adelphia Law Journal, Moot Court Board & Dean’s List Student</p>\r\n<strong>A.B. – Bowdoin College, Brunswick, Maine Magna Cum Laude (Major: Government and Legal Studies)</strong>\r\n<p>Honors: Dean’s List Student</p>', '<p>Managing Member – Bibric law firm concentrating on the representation of creditors and businesses in Chapters 7, 11, and 13 proceedings, out-of-court workouts, business reorganizations, and state and federal court insolvency, liquidation, cases, and related business litigation and account receivable.</p>\r\n<p>Shareholder, Bibric law firm with offices in North Andover, Massachusetts and Lake Success, New York. The firm concentrates its practices in business and trial matters with departments concentrating in insolvency and bankruptcy law, business reorganization, creditors’ rights, collection, and commercial law, banking and finance, and related civil litigation in the state and federal courts throughout New England, New York, and the Midwest.</p>\r\n<p>Associate, Burns & Levinson, Boston, Massachusetts. Member of firm’s business trial department concentrating in bankruptcy, federal and state court litigation.</p>\r\n<p>Associate, Parker, Coulter, Daley & White, Boston, Massachusetts. Member of firm’s business trial department.</p>\r\n<p>Law Clerk, Jone Doa (deceased), Chief Judge, United States Bankruptcy Court for the Northern District of New York.</p>', '<strong>Practice Areas</strong>\r\n<p>Prior to this, Heather practiced law for twelve (12) years as a defense insurance litigator with a boutique firm out of White Plains, NY. Her experience includes handling trials, motion practice, settlement negotiations, arbitration and mediation.</p>\r\n<strong>Professional Memberships</strong>\r\n<p>Associate in general practice firm specializing in civil litigation. Responsibilities included litigation in state court and bankruptcy court including appeals, trials, motion practice, discovery, and settlement negotiations. Practice areas include real estate law, foreclosures, bankruptcy law, secured lending, personal injury, and commercial litigation.</p>\r\n<strong>Cullity kelley and McDowell</strong>\r\n<p>Associate in bibric practice firm. Areas of practice included products liability, workers compensation, personal injury, real estate, and commercial litigation.</p>', 1, '2021-08-26 06:23:14', '2021-10-24 04:54:24'),
(2, 7, '2', 'Smeeth', '(000) 000-0000', 'smeeth@demo.com', '(222) 333-4444', '1631531616f21bkaDAC.jpg', '135/F, South Kamlapur, Motijheel, United State', '<p>Real Estate Law is a diverse subject that derives its breadth from the need to design and manufacture everything from small individual parts and devices to large systems The role of a mechanical engineer is to take a product from an idea to the marketplace. In order to accomplish this, a broad range of skills</p>', '<strong>J.D. – Syracuse University College of Law</strong>\r\n<p>Honors: Adelphia Law Journal, Moot Court Board & Dean’s List Student</p>\r\n<strong>A.B. – Bowdoin College, Brunswick, Maine Magna Cum Laude (Major: Government and Legal Studies)</strong>\r\n<p>Honors: Dean’s List Student</p>', '<p>Managing Member – Bibric law firm concentrating on the representation of creditors and businesses in Chapters 7, 11, and 13 proceedings, out-of-court workouts, business reorganizations, and state and federal court insolvency, liquidation, cases, and related business litigation and account receivable.</p>\r\n<p>Shareholder, Bibric law firm with offices in North Andover, Massachusetts and Lake Success, New York. The firm concentrates its practices in business and trial matters with departments concentrating in insolvency and bankruptcy law, business reorganization, creditors’ rights, collection, and commercial law, banking and finance, and related civil litigation in the state and federal courts throughout New England, New York, and the Midwest.</p>\r\n<p>Associate, Burns & Levinson, Boston, Massachusetts. Member of firm’s business trial department concentrating in bankruptcy, federal and state court litigation.</p>\r\n<p>Associate, Parker, Coulter, Daley & White, Boston, Massachusetts. Member of firm’s business trial department.</p>\r\n<p>Law Clerk, Jone Doa (deceased), Chief Judge, United States Bankruptcy Court for the Northern District of New York.</p>', '<strong>Practice Areas</strong>\r\n<p>Prior to this, Heather practiced law for twelve (12) years as a defense insurance litigator with a boutique firm out of White Plains, NY. Her experience includes handling trials, motion practice, settlement negotiations, arbitration and mediation.</p>\r\n<strong>Professional Memberships</strong>\r\n<p>Associate in general practice firm specializing in civil litigation. Responsibilities included litigation in state court and bankruptcy court including appeals, trials, motion practice, discovery, and settlement negotiations. Practice areas include real estate law, foreclosures, bankruptcy law, secured lending, personal injury, and commercial litigation.</p>\r\n<strong>Cullity kelley and McDowell</strong>\r\n<p>Associate in bibric practice firm. Areas of practice included products liability, workers compensation, personal injury, real estate, and commercial litigation.</p>', 1, '2021-09-13 05:13:36', '2021-10-24 04:54:41'),
(3, 8, '3', 'Orvia Eduiwn', '(222) 333-4444', 'orvia@demo.com', '(000) 000-0000', '1631531652b03rp7DAC.jpg', '135/F, South Kamlapur, Motijheel, United State', '<p>Real Estate Law is a diverse subject that derives its breadth from the need to design and manufacture everything from small individual parts and devices to large systems The role of a mechanical engineer is to take a product from an idea to the marketplace. In order to accomplish this, a broad range of skills</p>', '<strong>J.D. – Syracuse University College of Law</strong>\r\n<p>Honors: Adelphia Law Journal, Moot Court Board & Dean’s List Student</p>\r\n<strong>A.B. – Bowdoin College, Brunswick, Maine Magna Cum Laude (Major: Government and Legal Studies)</strong>\r\n<p>Honors: Dean’s List Student</p>', '<p>Managing Member – Bibric law firm concentrating on the representation of creditors and businesses in Chapters 7, 11, and 13 proceedings, out-of-court workouts, business reorganizations, and state and federal court insolvency, liquidation, cases, and related business litigation and account receivable.</p>\r\n<p>Shareholder, Bibric law firm with offices in North Andover, Massachusetts and Lake Success, New York. The firm concentrates its practices in business and trial matters with departments concentrating in insolvency and bankruptcy law, business reorganization, creditors’ rights, collection, and commercial law, banking and finance, and related civil litigation in the state and federal courts throughout New England, New York, and the Midwest.</p>\r\n<p>Associate, Burns & Levinson, Boston, Massachusetts. Member of firm’s business trial department concentrating in bankruptcy, federal and state court litigation.</p>\r\n<p>Associate, Parker, Coulter, Daley & White, Boston, Massachusetts. Member of firm’s business trial department.</p>\r\n<p>Law Clerk, Jone Doa (deceased), Chief Judge, United States Bankruptcy Court for the Northern District of New York.</p>', '<strong>Practice Areas</strong>\r\n<p>Prior to this, Heather practiced law for twelve (12) years as a defense insurance litigator with a boutique firm out of White Plains, NY. Her experience includes handling trials, motion practice, settlement negotiations, arbitration and mediation.</p>\r\n<strong>Professional Memberships</strong>\r\n<p>Associate in general practice firm specializing in civil litigation. Responsibilities included litigation in state court and bankruptcy court including appeals, trials, motion practice, discovery, and settlement negotiations. Practice areas include real estate law, foreclosures, bankruptcy law, secured lending, personal injury, and commercial litigation.</p>\r\n<strong>Cullity kelley and McDowell</strong>\r\n<p>Associate in bibric practice firm. Areas of practice included products liability, workers compensation, personal injury, real estate, and commercial litigation.</p>', 1, '2021-09-13 05:14:12', '2021-10-24 04:54:59'),
(4, 9, '4', 'Edwin RW', '(000) 000-0000', 'edwin@demo.com', '(222) 333-4444', '1631685369cnqpf5DAC.jpg', '135/F, South Kamlapur, Motijheel, United State', '<p>Real Estate Law is a diverse subject that derives its breadth from the need to design and manufacture everything from small individual parts and devices to large systems The role of a mechanical engineer is to take a product from an idea to the marketplace. In order to accomplish this, a broad range of skills</p>', '<strong>J.D. – Syracuse University College of Law</strong>\r\n<p>Honors: Adelphia Law Journal, Moot Court Board & Dean’s List Student</p>\r\n<strong>A.B. – Bowdoin College, Brunswick, Maine Magna Cum Laude (Major: Government and Legal Studies)</strong>\r\n<p>Honors: Dean’s List Student</p>', '<p>Managing Member – Bibric law firm concentrating on the representation of creditors and businesses in Chapters 7, 11, and 13 proceedings, out-of-court workouts, business reorganizations, and state and federal court insolvency, liquidation, cases, and related business litigation and account receivable.</p>\r\n<p>Shareholder, Bibric law firm with offices in North Andover, Massachusetts and Lake Success, New York. The firm concentrates its practices in business and trial matters with departments concentrating in insolvency and bankruptcy law, business reorganization, creditors’ rights, collection, and commercial law, banking and finance, and related civil litigation in the state and federal courts throughout New England, New York, and the Midwest.</p>\r\n<p>Associate, Burns & Levinson, Boston, Massachusetts. Member of firm’s business trial department concentrating in bankruptcy, federal and state court litigation.</p>\r\n<p>Associate, Parker, Coulter, Daley & White, Boston, Massachusetts. Member of firm’s business trial department.</p>\r\n<p>Law Clerk, Jone Doa (deceased), Chief Judge, United States Bankruptcy Court for the Northern District of New York.</p>', '<strong>Practice Areas</strong>\r\n<p>Prior to this, Heather practiced law for twelve (12) years as a defense insurance litigator with a boutique firm out of White Plains, NY. Her experience includes handling trials, motion practice, settlement negotiations, arbitration and mediation.</p>\r\n<strong>Professional Memberships</strong>\r\n<p>Associate in general practice firm specializing in civil litigation. Responsibilities included litigation in state court and bankruptcy court including appeals, trials, motion practice, discovery, and settlement negotiations. Practice areas include real estate law, foreclosures, bankruptcy law, secured lending, personal injury, and commercial litigation.</p>\r\n<strong>Cullity kelley and McDowell</strong>\r\n<p>Associate in bibric practice firm. Areas of practice included products liability, workers compensation, personal injury, real estate, and commercial litigation.</p>', 1, '2021-09-14 23:56:09', '2021-10-24 04:55:43');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(255) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `bg_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_popular` tinyint(1) NOT NULL DEFAULT 0,
  `is_featured` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `user_id`, `title`, `description`, `bg_image`, `feature_img`, `category_id`, `created_at`, `updated_at`, `is_popular`, `is_featured`) VALUES
(10, 1, 'Remembering The Dark History', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose.</p>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum.</p>\r\n<blockquote> It showed a lady fitted out with a fur hat and fur boa who sat upright, raising a heavy fur muff that covered the whole of her lower.  </blockquote>\r\n<h4>Why You Need the Top Lawyers in O’Connor</h4>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages.</p>', '16330770992.jpg', '16330770991.jpg', 3, '2021-09-15 05:01:39', '2021-10-01 08:31:39', 1, 1),
(11, 1, 'Scotus Lets Transgender Bathroom', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose.</p>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum.</p>\r\n<blockquote> It showed a lady fitted out with a fur hat and fur boa who sat upright, raising a heavy fur muff that covered the whole of her lower.  </blockquote>\r\n<h4>Why You Need the Top Lawyers in O’Connor</h4>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages.</p>', '16330771462.jpg', '16330771462.jpg', 3, '2021-09-15 05:02:55', '2021-10-01 08:32:26', 1, 1),
(12, 1, 'Best Education Law And Training', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose.</p>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum.</p>\r\n<blockquote> It showed a lady fitted out with a fur hat and fur boa who sat upright, raising a heavy fur muff that covered the whole of her lower.  </blockquote>\r\n<h4>Why You Need the Top Lawyers in O’Connor</h4>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages.</p>', '16330771942.jpg', '16330771943.jpg', 3, '2021-09-15 05:15:22', '2021-10-01 08:33:14', 1, 1),
(13, 1, 'Best Education Law And Training', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose.</p>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum.</p>\r\n<blockquote> It showed a lady fitted out with a fur hat and fur boa who sat upright, raising a heavy fur muff that covered the whole of her lower.  </blockquote>\r\n<h4>Why You Need the Top Lawyers in O’Connor</h4>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages.</p>', '16330772352.jpg', '16330772353.jpg', 3, '2021-09-30 21:04:34', '2021-10-01 08:33:55', 1, 1),
(14, 1, 'Remembering The Dark History', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose.</p>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum.</p>\r\n<blockquote> It showed a lady fitted out with a fur hat and fur boa who sat upright, raising a heavy fur muff that covered the whole of her lower.  </blockquote>\r\n<h4>Why You Need the Top Lawyers in O’Connor</h4>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages.</p>', '16330773192.jpg', '16330773191.jpg', 4, '2021-10-01 08:35:19', '2021-10-01 08:35:19', 0, 0),
(15, 1, 'Scotus Lets Transgender Bathroom', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose.</p>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum.</p>\r\n<blockquote> It showed a lady fitted out with a fur hat and fur boa who sat upright, raising a heavy fur muff that covered the whole of her lower.  </blockquote>\r\n<h4>Why You Need the Top Lawyers in O’Connor</h4>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages.</p>', '16330774122.jpg', '16330774122.jpg', 4, '2021-10-01 08:36:52', '2021-10-01 08:36:52', 0, 0),
(16, 1, 'Best Education Law And Training', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose.</p>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum.</p>\r\n<blockquote> It showed a lady fitted out with a fur hat and fur boa who sat upright, raising a heavy fur muff that covered the whole of her lower.  </blockquote>\r\n<h4>Why You Need the Top Lawyers in O’Connor</h4>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages.</p>', '16330774712.jpg', '16330774711.jpg', 4, '2021-10-01 08:37:51', '2021-10-01 08:37:51', 0, 0),
(17, 1, 'Remembering The Dark History', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose.</p>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum.</p>\r\n<blockquote> It showed a lady fitted out with a fur hat and fur boa who sat upright, raising a heavy fur muff that covered the whole of her lower.  </blockquote>\r\n<h4>Why You Need the Top Lawyers in O’Connor</h4>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages.</p>', '16330775232.jpg', '16330775232.jpg', 4, '2021-10-01 08:38:43', '2021-10-01 08:38:43', 0, 0),
(18, 1, 'Scotus Lets Transgender Bathroom', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose.</p>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum.</p>\r\n<blockquote> It showed a lady fitted out with a fur hat and fur boa who sat upright, raising a heavy fur muff that covered the whole of her lower.  </blockquote>\r\n<h4>Why You Need the Top Lawyers in O’Connor</h4>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages.</p>', '16330775772.jpg', '16330775773.jpg', 8, '2021-10-01 08:39:37', '2021-10-01 08:39:37', 0, 0),
(19, 1, 'Best Education Law And Training', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose.</p>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum.</p>\r\n<blockquote> It showed a lady fitted out with a fur hat and fur boa who sat upright, raising a heavy fur muff that covered the whole of her lower.  </blockquote>\r\n<h4>Why You Need the Top Lawyers in O’Connor</h4>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages.</p>', '16330776182.jpg', '16330776181.jpg', 8, '2021-10-01 08:40:18', '2021-10-01 08:40:18', 0, 0),
(20, 1, 'Remembering The Dark History', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose.</p>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum.</p>\r\n<blockquote> It showed a lady fitted out with a fur hat and fur boa who sat upright, raising a heavy fur muff that covered the whole of her lower.  </blockquote>\r\n<h4>Why You Need the Top Lawyers in O’Connor</h4>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages.</p>', '16330776652.jpg', '16330776653.jpg', 8, '2021-10-01 08:41:05', '2021-10-01 08:41:05', 0, 0),
(21, 1, 'Scotus Lets Transgender Bathroom', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose.</p>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum.</p>\r\n<blockquote> It showed a lady fitted out with a fur hat and fur boa who sat upright, raising a heavy fur muff that covered the whole of her lower.  </blockquote>\r\n<h4>Why You Need the Top Lawyers in O’Connor</h4>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages.</p>', '16330777102.jpg', '16330777102.jpg', 8, '2021-10-01 08:41:50', '2021-10-01 08:41:50', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(3, 'Bankruptcy Law', '2021-09-15 05:06:15', '2021-09-15 05:06:15'),
(4, 'Personal Injury', '2021-09-15 05:06:42', '2021-09-15 05:06:42'),
(8, 'Family', '2021-09-26 03:20:32', '2021-09-30 20:47:23');

-- --------------------------------------------------------

--
-- Table structure for table `blog_tags`
--

CREATE TABLE `blog_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_tags`
--

INSERT INTO `blog_tags` (`id`, `blog_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(4, 9, 1, '2021-09-15 00:24:37', '2021-09-15 00:24:37'),
(5, 8, 1, '2021-09-15 04:54:23', '2021-09-15 04:54:23'),
(8, 6, 1, '2021-09-15 05:09:41', '2021-09-15 05:09:41'),
(11, 14, 1, '2021-09-26 02:34:28', '2021-09-26 02:34:28'),
(12, 15, 1, '2021-09-26 02:43:24', '2021-09-26 02:43:24'),
(13, 16, 1, '2021-09-26 03:03:15', '2021-09-26 03:03:15'),
(14, 17, 1, '2021-09-26 03:09:32', '2021-09-26 03:09:32'),
(15, 18, 1, '2021-09-26 03:19:05', '2021-09-26 03:19:05'),
(16, 19, 1, '2021-09-26 03:20:54', '2021-09-26 03:20:54'),
(67, 10, 1, '2021-10-01 08:31:39', '2021-10-01 08:31:39'),
(68, 10, 2, '2021-10-01 08:31:39', '2021-10-01 08:31:39'),
(69, 10, 3, '2021-10-01 08:31:39', '2021-10-01 08:31:39'),
(70, 10, 4, '2021-10-01 08:31:39', '2021-10-01 08:31:39'),
(71, 10, 5, '2021-10-01 08:31:39', '2021-10-01 08:31:39'),
(72, 10, 6, '2021-10-01 08:31:39', '2021-10-01 08:31:39'),
(73, 10, 7, '2021-10-01 08:31:39', '2021-10-01 08:31:39'),
(74, 10, 8, '2021-10-01 08:31:39', '2021-10-01 08:31:39'),
(75, 11, 1, '2021-10-01 08:32:26', '2021-10-01 08:32:26'),
(76, 11, 2, '2021-10-01 08:32:26', '2021-10-01 08:32:26'),
(77, 11, 3, '2021-10-01 08:32:26', '2021-10-01 08:32:26'),
(78, 11, 4, '2021-10-01 08:32:26', '2021-10-01 08:32:26'),
(79, 11, 5, '2021-10-01 08:32:26', '2021-10-01 08:32:26'),
(80, 11, 6, '2021-10-01 08:32:26', '2021-10-01 08:32:26'),
(81, 11, 7, '2021-10-01 08:32:26', '2021-10-01 08:32:26'),
(82, 11, 8, '2021-10-01 08:32:26', '2021-10-01 08:32:26'),
(83, 12, 1, '2021-10-01 08:33:14', '2021-10-01 08:33:14'),
(84, 12, 2, '2021-10-01 08:33:14', '2021-10-01 08:33:14'),
(85, 12, 3, '2021-10-01 08:33:14', '2021-10-01 08:33:14'),
(86, 12, 4, '2021-10-01 08:33:14', '2021-10-01 08:33:14'),
(87, 12, 5, '2021-10-01 08:33:14', '2021-10-01 08:33:14'),
(88, 12, 6, '2021-10-01 08:33:14', '2021-10-01 08:33:14'),
(89, 12, 7, '2021-10-01 08:33:14', '2021-10-01 08:33:14'),
(90, 12, 8, '2021-10-01 08:33:14', '2021-10-01 08:33:14'),
(91, 13, 1, '2021-10-01 08:33:55', '2021-10-01 08:33:55'),
(92, 13, 2, '2021-10-01 08:33:55', '2021-10-01 08:33:55'),
(93, 13, 3, '2021-10-01 08:33:55', '2021-10-01 08:33:55'),
(94, 13, 4, '2021-10-01 08:33:55', '2021-10-01 08:33:55'),
(95, 13, 5, '2021-10-01 08:33:55', '2021-10-01 08:33:55'),
(96, 13, 6, '2021-10-01 08:33:55', '2021-10-01 08:33:55'),
(97, 13, 7, '2021-10-01 08:33:55', '2021-10-01 08:33:55'),
(98, 13, 8, '2021-10-01 08:33:55', '2021-10-01 08:33:55'),
(99, 14, 1, '2021-10-01 08:35:19', '2021-10-01 08:35:19'),
(100, 14, 2, '2021-10-01 08:35:19', '2021-10-01 08:35:19'),
(101, 14, 3, '2021-10-01 08:35:19', '2021-10-01 08:35:19'),
(102, 14, 4, '2021-10-01 08:35:19', '2021-10-01 08:35:19'),
(103, 14, 5, '2021-10-01 08:35:19', '2021-10-01 08:35:19'),
(104, 14, 6, '2021-10-01 08:35:19', '2021-10-01 08:35:19'),
(105, 14, 7, '2021-10-01 08:35:19', '2021-10-01 08:35:19'),
(106, 14, 8, '2021-10-01 08:35:19', '2021-10-01 08:35:19'),
(107, 15, 1, '2021-10-01 08:36:52', '2021-10-01 08:36:52'),
(108, 15, 2, '2021-10-01 08:36:52', '2021-10-01 08:36:52'),
(109, 15, 3, '2021-10-01 08:36:52', '2021-10-01 08:36:52'),
(110, 15, 4, '2021-10-01 08:36:52', '2021-10-01 08:36:52'),
(111, 15, 5, '2021-10-01 08:36:52', '2021-10-01 08:36:52'),
(112, 15, 6, '2021-10-01 08:36:52', '2021-10-01 08:36:52'),
(113, 15, 7, '2021-10-01 08:36:52', '2021-10-01 08:36:52'),
(114, 15, 8, '2021-10-01 08:36:52', '2021-10-01 08:36:52'),
(115, 16, 1, '2021-10-01 08:37:51', '2021-10-01 08:37:51'),
(116, 16, 2, '2021-10-01 08:37:51', '2021-10-01 08:37:51'),
(117, 16, 3, '2021-10-01 08:37:51', '2021-10-01 08:37:51'),
(118, 16, 4, '2021-10-01 08:37:51', '2021-10-01 08:37:51'),
(119, 16, 5, '2021-10-01 08:37:51', '2021-10-01 08:37:51'),
(120, 16, 6, '2021-10-01 08:37:51', '2021-10-01 08:37:51'),
(121, 16, 7, '2021-10-01 08:37:51', '2021-10-01 08:37:51'),
(122, 16, 8, '2021-10-01 08:37:51', '2021-10-01 08:37:51'),
(123, 17, 1, '2021-10-01 08:38:43', '2021-10-01 08:38:43'),
(124, 17, 2, '2021-10-01 08:38:43', '2021-10-01 08:38:43'),
(125, 17, 3, '2021-10-01 08:38:43', '2021-10-01 08:38:43'),
(126, 17, 4, '2021-10-01 08:38:43', '2021-10-01 08:38:43'),
(127, 17, 5, '2021-10-01 08:38:43', '2021-10-01 08:38:43'),
(128, 17, 6, '2021-10-01 08:38:43', '2021-10-01 08:38:43'),
(129, 17, 7, '2021-10-01 08:38:43', '2021-10-01 08:38:43'),
(130, 17, 8, '2021-10-01 08:38:43', '2021-10-01 08:38:43'),
(131, 18, 1, '2021-10-01 08:39:37', '2021-10-01 08:39:37'),
(132, 18, 2, '2021-10-01 08:39:37', '2021-10-01 08:39:37'),
(133, 18, 3, '2021-10-01 08:39:37', '2021-10-01 08:39:37'),
(134, 18, 4, '2021-10-01 08:39:37', '2021-10-01 08:39:37'),
(135, 18, 5, '2021-10-01 08:39:37', '2021-10-01 08:39:37'),
(136, 18, 6, '2021-10-01 08:39:37', '2021-10-01 08:39:37'),
(137, 18, 7, '2021-10-01 08:39:37', '2021-10-01 08:39:37'),
(138, 18, 8, '2021-10-01 08:39:37', '2021-10-01 08:39:37'),
(139, 19, 1, '2021-10-01 08:40:18', '2021-10-01 08:40:18'),
(140, 19, 2, '2021-10-01 08:40:18', '2021-10-01 08:40:18'),
(141, 19, 3, '2021-10-01 08:40:18', '2021-10-01 08:40:18'),
(142, 19, 4, '2021-10-01 08:40:18', '2021-10-01 08:40:18'),
(143, 19, 5, '2021-10-01 08:40:18', '2021-10-01 08:40:18'),
(144, 19, 6, '2021-10-01 08:40:18', '2021-10-01 08:40:18'),
(145, 19, 7, '2021-10-01 08:40:18', '2021-10-01 08:40:18'),
(146, 19, 8, '2021-10-01 08:40:18', '2021-10-01 08:40:18'),
(147, 20, 1, '2021-10-01 08:41:05', '2021-10-01 08:41:05'),
(148, 20, 2, '2021-10-01 08:41:05', '2021-10-01 08:41:05'),
(149, 20, 3, '2021-10-01 08:41:05', '2021-10-01 08:41:05'),
(150, 20, 4, '2021-10-01 08:41:05', '2021-10-01 08:41:05'),
(151, 20, 5, '2021-10-01 08:41:05', '2021-10-01 08:41:05'),
(152, 20, 6, '2021-10-01 08:41:05', '2021-10-01 08:41:05'),
(153, 20, 7, '2021-10-01 08:41:05', '2021-10-01 08:41:05'),
(154, 20, 8, '2021-10-01 08:41:05', '2021-10-01 08:41:05'),
(155, 21, 1, '2021-10-01 08:41:50', '2021-10-01 08:41:50'),
(156, 21, 2, '2021-10-01 08:41:50', '2021-10-01 08:41:50'),
(157, 21, 3, '2021-10-01 08:41:50', '2021-10-01 08:41:50'),
(158, 21, 4, '2021-10-01 08:41:50', '2021-10-01 08:41:50'),
(159, 21, 5, '2021-10-01 08:41:50', '2021-10-01 08:41:50'),
(160, 21, 6, '2021-10-01 08:41:50', '2021-10-01 08:41:50'),
(161, 21, 7, '2021-10-01 08:41:50', '2021-10-01 08:41:50'),
(162, 21, 8, '2021-10-01 08:41:50', '2021-10-01 08:41:50');

-- --------------------------------------------------------

--
-- Table structure for table `case_studies`
--

CREATE TABLE `case_studies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_id` int(11) DEFAULT NULL,
  `service_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `problem_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `problem_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `solution_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `solution_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `result_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `result_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `case_studies`
--

INSERT INTO `case_studies` (`id`, `service_id`, `service_title`, `title`, `description`, `problem_title`, `problem_description`, `solution_title`, `solution_description`, `result_title`, `result_description`, `featured_image`, `created_at`, `updated_at`) VALUES
(1, 1, 'Identity Theft', 'Real Estate Law', 'Real Estate Law is a diverse subject that derives its breadth from the need to design and manufacture everything from small individual parts and devices to large systems The role of a mechanical engineer is to take a product from an idea to the marketplace. In order to accomplish this, a broad range of skills are needed. the mechanical engineer needs to acquire particular skills and knowledge. He/she needs to understand the forces and the thermal environment that a product, its parts, or its subsystems will encounter; to design them for functionality, aesthetics, and the ability to withstand the forces and the thermal environment they will be subjected to; and to determine the best way to manufacture them and ensure they will operate without failure. Perhaps the one skill that is the mechanical engineer’s exclusive domain is the ability to analyze and design objects and systems with motion.', 'Problem', 'eal Estate Law is a diverse subject that derives its breadth from the need to design and manufacture everything from small individual parts and devices to large systems The role of a mechanical engineer is to take a product from an idea to the marketplace.', 'Solved', 'eal Estate Law is a diverse subject that derives its breadth from the need to design and manufacture everything from small individual parts and devices to large systems The role of a mechanical engineer is to take a product from an idea to the marketplace.', 'Solve result', 'eal Estate Law is a diverse subject that derives its breadth from the need to design and manufacture everything from small individual parts and devices to large systems The role of a mechanical engineer is to take a product from an idea to the marketplace.', '1631514330ecztqkDAC.jpg', '2021-09-13 00:25:31', '2021-10-24 00:28:19'),
(2, 2, 'Bankruptcy Law', 'Personal Injuri', 'Real Estate Law is a diverse subject that derives its breadth from the need to design and manufacture everything from small individual parts and devices to large systems The role of a mechanical engineer is to take a product from an idea to the marketplace. In order to accomplish this, a broad range of skills are needed. the mechanical engineer needs to acquire particular skills and knowledge. He/she needs to understand the forces and the thermal', 'Problem', 'Real Estate Law is a diverse subject that derives its breadth from the need to design and manufacture everything from small individual parts and devices to large systems The role of a mechanical engineer is to take a product from an idea to the marketplace. In order to accomplish this, a broad range of skills are needed. the mechanical engineer needs to acquire particular skills and knowledge. He/she needs to understand the forces and the thermal', 'Solved', 'Real Estate Law is a diverse subject that derives its breadth from the need to design and manufacture everything from small individual parts and devices to large systems The role of a mechanical engineer is to take a product from an idea to the marketplace. In order to accomplish this, a broad range of skills are needed. the mechanical engineer needs to acquire particular skills and knowledge. He/she needs to understand the forces and the thermal', 'Solve result', 'Real Estate Law is a diverse subject that derives its breadth from the need to design and manufacture everything from small individual parts and devices to large systems The role of a mechanical engineer is to take a product from an idea to the marketplace. In order to accomplish this, a broad range of skills are needed. the mechanical engineer needs to acquire particular skills and knowledge. He/she needs to understand the forces and the thermal', '1631531496kaibt9DAC.jpg', '2021-09-13 05:11:18', '2021-10-24 00:28:33'),
(3, 3, 'Family Law', 'Corporate Sequrity', 'Real Estate Law is a diverse subject that derives its breadth from the need to design and manufacture everything from small individual parts and devices to large systems The role of a mechanical engineer is to take a product from an idea to the marketplace. In order to accomplish this, a broad range of skills are needed. the mechanical engineer needs to acquire particular skills and knowledge. He/she needs to understand the forces and the thermal hermal', 'Problem', 'Real Estate Law is a diverse subject that derives its breadth from the need to design and manufacture everything from small individual parts and devices to large systems The role of a mechanical engineer is to take a product from an idea to the marketplace.', 'Solved', 'Real Estate Law is a diverse subject that derives its breadth from the need to design and manufacture everything from small individual parts and devices to large systems The role of a mechanical engineer is to take a product from an idea to the marketplace.', 'Solve result', 'Real Estate Law is a diverse subject that derives its breadth from the need to design and manufacture everything from small individual parts and devices to large systems The role of a mechanical engineer is to take a product from an idea to the marketplace.', '1631531540yt7eh8DAC.jpg', '2021-09-13 05:12:20', '2021-10-24 00:28:44'),
(4, 6, 'Corporate Security', 'Civil Litigation', 'Real Estate Law is a diverse subject that derives its breadth from the need to design and manufacture everything from small individual parts and devices to large systems The role of a mechanical engineer is to take a product from an idea to the marketplace. In order to accomplish this, a broad range of skills are needed. the mechanical engineer needs to acquire particular skills and knowledge. He/she needs to understand the forces and the thermal environment that a product, its parts, or its subsystems will encounter; to design them for functionality, aesthetics, and the ability to withstand the forces and the thermal environment they will be subjected to; and to determine the best way to manufacture them and ensure they will operate without failure. Perhaps the one skill that is the mechanical engineer’s exclusive domain is the ability to analyze and design objects and systems with motion.', 'Problem', 'Real Estate Law is a diverse subject that derives its breadth from the need to design and manufacture everything from small individual parts and devices to large systems The role of a mechanical engineer is to take a product from an idea to the marketplace. In order to accomplish this, a broad range of skills are needed. the mechanical engineer needs to acquire particular skills and knowledge.', 'Solved', 'Real Estate Law is a diverse subject that derives its breadth from the need to design and manufacture everything from small individual parts and devices to large systems The role of a mechanical engineer is to take a product from an idea to the marketplace. In order to accomplish this, a broad range of skills are needed. the mechanical engineer needs to acquire particular skills and knowledge.', 'Solve result', 'Real Estate Law is a diverse subject that derives its breadth from the need to design and manufacture everything from small individual parts and devices to large systems The role of a mechanical engineer is to take a product from an idea to the marketplace. In order to accomplish this, a broad range of skills are needed. the mechanical engineer needs to acquire particular skills and knowledge.', '1632745004871rsdDAC.jpg', '2021-09-27 12:16:44', '2021-10-24 00:28:54'),
(5, 5, 'Real Estate Law', 'Real Estate Law', 'Real Estate Law is a diverse subject that derives its breadth from the need to design and manufacture everything from small individual parts and devices to large systems The role of a mechanical engineer is to take a product from an idea to the marketplace. In order to accomplish this, a broad range of skills are needed. the mechanical engineer needs to acquire particular skills and knowledge. He/she needs to understand the forces and the therma', 'Problem', 'Real Estate Law is a diverse subject that derives its breadth from the need to design and manufacture everything from small individual parts and devices to large systems The role of a mechanical engineer is to take a product from an idea to the marketplace.', 'Solved', 'Real Estate Law is a diverse subject that derives its breadth from the need to design and manufacture everything from small individual parts and devices to large systems The role of a mechanical engineer is to take a product from an idea to the marketplace.', 'Solve result', 'Real Estate Law is a diverse subject that derives its breadth from the need to design and manufacture everything from small individual parts and devices to large systems The role of a mechanical engineer is to take a product from an idea to the marketplace. In order to accomplish this,', '1632745099zdlp5fDAC.jpg', '2021-09-27 12:17:42', '2021-10-24 00:29:04'),
(6, 4, 'Personal Injury', 'Corporate Sequrity', 'Real Estate Law is a diverse subject that derives its breadth from the need to design and manufacture everything from small individual parts and devices to large systems The role of a mechanical engineer is to take a product from an idea to the marketplace. In order to accomplish this, a broad range of skills are needed. the mechanical engineer needs to acquire particular skills and knowledge', 'Problem', 'Real Estate Law is a diverse subject that derives its breadth from the need to design and manufacture everything from small individual parts and devices to large systems The role of a mechanical engineer is to take a product from an idea to the marketplace. In order to accomplish this, a broad range of skills are needed. the mechanical engineer needs to acquire particular skills and knowledge', 'Solved', 'Real Estate Law is a diverse subject that derives its breadth from the need to design and manufacture everything from small individual parts and devices to large systems The role of a mechanical engineer is to take a product from an idea to the marketplace. In order to accomplish this, a broad range of skills are needed. the mechanical engineer needs to acquire particular skills and knowledge', 'Solve result', 'Real Estate Law is a diverse subject that derives its breadth from the need to design and manufacture everything from small individual parts and devices to large systems The role of a mechanical engineer is to take a product from an idea to the marketplace. In order to accomplish this, a broad range of skills are needed. the mechanical engineer needs to acquire particular skills and knowledge', '16327451811ecg08DAC.jpg', '2021-09-27 12:19:42', '2021-10-24 00:29:23');

-- --------------------------------------------------------

--
-- Table structure for table `comment_settings`
--

CREATE TABLE `comment_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `show` tinyint(1) NOT NULL DEFAULT 1,
  `code` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comment_settings`
--

INSERT INTO `comment_settings` (`id`, `show`, `code`, `url`, `created_at`, `updated_at`) VALUES
(1, 1, '<div id=\"fb-root\"></div>\r\n<script async defer crossorigin=\"anonymous\" src=\"https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v12.0&appId=2097414370290215&autoLogAppEvents=1\" nonce=\"RV8U7nH9\"></script>', 'https://b.jadurhari.com/', '2021-09-27 01:21:48', '2021-09-27 01:24:23');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `f_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `l_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1=unread 2=read',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `f_name`, `l_name`, `email`, `website`, `message`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Julfikar', 'Ali', 'julfikar@gmail.com', '', 'Here is the message that you seen.', 2, '2021-08-26 00:37:50', '2021-09-08 03:01:03'),
(5, 'Saikat', 'Majumder', 'saikat.mder@gmail.com', 'adca', 'SD', 2, '2021-09-08 03:02:29', '2021-09-08 03:48:29'),
(7, 'sgshgh', 'shshsh', 'admin@bdcoder.com', 'ddghsdh', 'hgfhgfh', 2, '2021-09-18 05:39:39', '2021-09-29 20:26:16');

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Example Name vs John Doa', '1635074503Example_NamevsJohn_Doa', '2021-10-24 05:21:43', '2021-10-24 05:21:43'),
(2, 'Example Name vs Smeeth', '1635237204Example_NamevsSmeeth', '2021-10-26 02:33:24', '2021-10-26 02:33:24');

-- --------------------------------------------------------

--
-- Table structure for table `conversations_user`
--

CREATE TABLE `conversations_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `conversation_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `conversations_user`
--

INSERT INTO `conversations_user` (`id`, `conversation_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 5, NULL, NULL),
(2, 1, 6, NULL, NULL),
(3, 2, 5, NULL, NULL),
(4, 2, 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'CEO', '2021-09-04 07:19:08', '2021-09-27 12:11:59'),
(2, 'ASSOCIATE', '2021-10-01 09:23:23', '2021-10-01 09:23:23'),
(3, 'COMPLIANCE OFFICER', '2021-10-01 09:23:51', '2021-10-01 09:23:51'),
(4, 'FOUNDING ATTORNEY', '2021-10-01 09:24:15', '2021-10-01 09:24:15');

-- --------------------------------------------------------

--
-- Table structure for table `dynamic_pages`
--

CREATE TABLE `dynamic_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=true 0=false',
  `key_words` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_able` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=true 0=false',
  `on_page_menu` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=true 0=false',
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breadcrumb_bg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dynamic_pages`
--

INSERT INTO `dynamic_pages` (`id`, `name`, `title`, `sub_title`, `page_content`, `slug`, `status`, `key_words`, `delete_able`, `on_page_menu`, `meta_keyword`, `meta_description`, `breadcrumb_bg`, `created_at`, `updated_at`) VALUES
(1, 'terms-of-use', 'TERMS OF USE', NULL, '<p>We are committed to protecting your personal information and your right to privacy. If you have any\r\n        questions or concerns about our policy, or our practices with regards to your personal information, please\r\n        contact us.</p>\r\n    <p>This Privacy Policy governs the privacy policies and practices of our Website, located at PrivacyPolicies.com.\r\n        Please read our Privacy Policy carefully as it will help you make informed decisions about sharing your personal\r\n        information with us.</p>\r\n\r\n<p>\r\n    Information We Collect\r\n    </p>\r\n\r\n<p>As a Visitor, you can browse our Website to find out more about our Website. You are not required to provide us\r\n        with any personal information as a Visitor.</p>\r\n\r\n<p>\r\n    Information You Provide to Us\r\n    </p>\r\n\r\n<p>We collect your personal information when you register with us (\"User\"), when you express an interest in\r\n        obtaining information about us or our products and services, when you participate in activities on our Website\r\n        Site (such as using our builder) or otherwise contacting us.</p>\r\n    <p>Generally, you control the amount and type of information you provide to us when using our Website. The personal\r\n        information that we collect depends on the context of your interaction with us and the Website, the choices you\r\n        make and the products and features you use. The personal information we collect can include the following:</p>\r\n    <ul>\r\n        <li>Name, Email Address and Contact Data</li>\r\n        <li>Payment Information. If you choose to buy one of our Policy, we collect payment information through our\r\n            payment processor. All payment information is securely stored by our payment processor and we do not have\r\n            access to your sensitive information, such as credit card number or security code.\r\n        </li>\r\n        <li>Business Information. If you choose to create a Policy on our Website, we may ask specific information\r\n            related to your business in order to create the Policy.\r\n        </li>\r\n    </ul>\r\n\r\n<p>\r\n    Automatically Collected Information\r\n    </p>\r\n\r\n<p>When you use our Website, we automatically collect certain computer information by the interaction of your mobile\r\n        phone or web browser with our Website. Such information is typically considered non-personal information. We\r\n        also collect the following:</p>\r\n\r\n<p>\r\n    Cookies\r\n    </p>\r\n\r\n<p>Our Website uses \"Cookies\" to identify the areas of our Website that you have visited. A Cookie is a small piece\r\n        of data stored on your computer or mobile device by your web browser. We use Cookies to personalize the Content\r\n        that you see on our Website. Most web browsers can be set to disable the use of Cookies. However, if you disable\r\n        Cookies, you may not be able to access functionality on our Website correctly or at all. We never place\r\n        Personally Identifiable Information in Cookies.</p>\r\n\r\n<p>\r\n    Log Information\r\n    </p>\r\n\r\n<p>We automatically receive information from your web browser or mobile device. This information includes the name\r\n        of the website from which you entered our Website, if any, as well as the name of the website to which you\'re\r\n        headed when you leave our website. This information also includes the IP address of your computer/proxy server\r\n        that you use to access the Internet, your Internet Website provider name, web browser type, type of mobile\r\n        device, and computer operating system. We use all of this information to analyze trends among our Users to help\r\n        improve our Website.</p>\r\n\r\n<p>\r\n    Information Regarding Your Data Protection Rights Under General Data Protection Regulation\r\n        (GDPR)\r\n    </p>\r\n\r\n<p>For the purpose of this Privacy Policy, we are a Data Controller of your personal information.</p>\r\n    <p>If you are from the European Economic Area (EEA), our legal basis for collecting and using your personal\r\n        information, as described in this Privacy Policy, depends on the information we collect and the specific context\r\n        in which we collect it. We may process your personal information because:</p>\r\n    <ul>\r\n        <li>We need to perform a contract with you, such as when you use our services</li>\r\n        <li>You have given us permission to do so</li>\r\n        <li>The processing is in our legitimate interests and it\'s not overridden by your rights</li>\r\n        <li>For payment processing purposes</li>\r\n        <li>To comply with the law</li>\r\n    </ul>\r\n    <p>If you are a resident of the European Economic Area (EEA), you have certain data protection rights. In certain\r\n        circumstances, you have the following data protection rights:</p>\r\n    <ul>\r\n        <li>The right to access, update or to delete the personal information we have on you</li>\r\n        <li>The right of rectification</li>\r\n        <li>The right to object</li>\r\n        <li>The right of restriction</li>\r\n        <li>The right to data portability</li>\r\n        <li>The right to withdraw consent</li>\r\n    </ul>\r\n    <p>Please note that we may ask you to verify your identity before responding to such requests.</p>\r\n    <p>You have the right to complain to a Data Protection Authority about our collection and use of your personal\r\n        information. For more information, please contact your local data protection authority in the European Economic\r\n        Area (EEA).</p>\r\n\r\n<p>\r\n    \"Do Not Sell My Personal Information\" Notice for California consumers under California Consumer\r\n        Privacy Act (CCPA)\r\n    </p>\r\n\r\n<p>Under the CCPA, California consumers have the right to:</p>\r\n    <ul>\r\n        <li>Request that a business that collects a consumer\'s personal data disclose the categories and specific pieces\r\n            of personal data that a business has collected about consumers.\r\n        </li>\r\n        <li>Request that a business delete any personal data about the consumer that a business has collected.</li>\r\n        <li>Request that a business that sells a consumer\'s personal data, not sell the consumer\'s personal data.</li>\r\n    </ul>\r\n    <p>If you make a request, we have one month to respond to you. If you would like to exercise any of these rights,\r\n        please contact us.</p>\r\n\r\n<p>\r\n    Service Providers\r\n    </p>\r\n\r\n<p>We employ third party companies and individuals to facilitate our Website (\"Service Providers\"), to provide our\r\n        Website on our behalf, to perform Website-related services or to assist us in analyzing how our Website is used.\r\n        These third-parties have access to your personal information only to perform these tasks on our behalf and are\r\n        obligated not to disclose or use it for any other purpose.</p>\r\n\r\n<p>\r\n    Analytics\r\n    </p>\r\n\r\n<p>Google Analytics is a web analytics service offered by Google that tracks and reports website traffic. Google\r\n        uses the data collected to track and monitor the use of our Service. This data is shared with other Google\r\n        services. Google may use the collected data to contextualize and personalize the ads of its own advertising\r\n        network.</p>\r\n    <p>You can opt-out of having made your activity on the Service available to Google Analytics by installing the\r\n        Google Analytics opt-out browser add-on. The add-on prevents the Google Analytics JavaScript (ga.js,\r\n        analytics.js, and dc.js) from sharing information with Google Analytics about visits activity.</p>\r\n    <p>For more information on the privacy practices of Google, please visit the Google Privacy & Terms web page: <a href=\"http://www.google.com/intl/en/policies/privacy/\">http://www.google.com/intl/en/policies/privacy/</a>\r\n    </p>\r\n\r\n<p>\r\n    Payments processors\r\n    </p>\r\n\r\n<p>We provide paid products and/or services on our Website. In that case, we use third-party services for payment\r\n        processing (e.g. payment processors).</p>\r\n    <p>We will not store or collect your payment card details. That information is provided directly to our third-party\r\n        payment processors whose use of your personal information is governed by their Privacy Policy. These payment\r\n        processors adhere to the standards set by PCI-DSS as managed by the PCI Security Standards Council.</p>\r\n\r\n<p>\r\n    Contacting Us\r\n    </p>\r\n\r\n<p>If there are any questions regarding this privacy policy you may contact us.</p>', 'terms-of-use', 1, NULL, 1, 1, 'appointment booking, appointment booking website laravel, appointment website, attorney and lawyer appointment booking website, attorney appointment, booking website, law firm, lawyer appointment booking website, lawyer server website, multipurpose servic', 'Bibric is a lawyer and attorney website CMS with Appointment PHP Scripts. Babric is a better way to present your attorney service business. It is a complete solution for a law firm or justice website.', '/upload/bg-image-dynamic-page/16328556802.jpg', '2021-09-28 19:01:20', '2021-10-01 16:48:45'),
(2, 'privacy-policies', 'PRIVACY POLICIES', NULL, '<p>We are committed to protecting your personal information and your right to privacy. If you have any\r\n        questions or concerns about our policy, or our practices with regards to your personal information, please\r\n        contact us.</p>\r\n    <p>This Privacy Policy governs the privacy policies and practices of our Website, located at PrivacyPolicies.com.\r\n        Please read our Privacy Policy carefully as it will help you make informed decisions about sharing your personal\r\n        information with us.</p>\r\n\r\n<p>\r\n    Information We Collect\r\n    </p>\r\n\r\n<p>As a Visitor, you can browse our Website to find out more about our Website. You are not required to provide us\r\n        with any personal information as a Visitor.</p>\r\n\r\n<p>\r\n    Information You Provide to Us\r\n    </p>\r\n\r\n<p>We collect your personal information when you register with us (\"User\"), when you express an interest in\r\n        obtaining information about us or our products and services, when you participate in activities on our Website\r\n        Site (such as using our builder) or otherwise contacting us.</p>\r\n    <p>Generally, you control the amount and type of information you provide to us when using our Website. The personal\r\n        information that we collect depends on the context of your interaction with us and the Website, the choices you\r\n        make and the products and features you use. The personal information we collect can include the following:</p>\r\n    <ul>\r\n        <li>Name, Email Address and Contact Data</li>\r\n        <li>Payment Information. If you choose to buy one of our Policy, we collect payment information through our\r\n            payment processor. All payment information is securely stored by our payment processor and we do not have\r\n            access to your sensitive information, such as credit card number or security code.\r\n        </li>\r\n        <li>Business Information. If you choose to create a Policy on our Website, we may ask specific information\r\n            related to your business in order to create the Policy.\r\n        </li>\r\n    </ul>\r\n\r\n<p>\r\n    Automatically Collected Information\r\n    </p>\r\n\r\n<p>When you use our Website, we automatically collect certain computer information by the interaction of your mobile\r\n        phone or web browser with our Website. Such information is typically considered non-personal information. We\r\n        also collect the following:</p>\r\n\r\n<p>\r\n    Cookies\r\n    </p>\r\n\r\n<p>Our Website uses \"Cookies\" to identify the areas of our Website that you have visited. A Cookie is a small piece\r\n        of data stored on your computer or mobile device by your web browser. We use Cookies to personalize the Content\r\n        that you see on our Website. Most web browsers can be set to disable the use of Cookies. However, if you disable\r\n        Cookies, you may not be able to access functionality on our Website correctly or at all. We never place\r\n        Personally Identifiable Information in Cookies.</p>\r\n\r\n<p>\r\n    Log Information\r\n    </p>\r\n\r\n<p>We automatically receive information from your web browser or mobile device. This information includes the name\r\n        of the website from which you entered our Website, if any, as well as the name of the website to which you\'re\r\n        headed when you leave our website. This information also includes the IP address of your computer/proxy server\r\n        that you use to access the Internet, your Internet Website provider name, web browser type, type of mobile\r\n        device, and computer operating system. We use all of this information to analyze trends among our Users to help\r\n        improve our Website.</p>\r\n\r\n<p>\r\n    Information Regarding Your Data Protection Rights Under General Data Protection Regulation\r\n        (GDPR)\r\n    </p>\r\n\r\n<p>For the purpose of this Privacy Policy, we are a Data Controller of your personal information.</p>\r\n    <p>If you are from the European Economic Area (EEA), our legal basis for collecting and using your personal\r\n        information, as described in this Privacy Policy, depends on the information we collect and the specific context\r\n        in which we collect it. We may process your personal information because:</p>\r\n    <ul>\r\n        <li>We need to perform a contract with you, such as when you use our services</li>\r\n        <li>You have given us permission to do so</li>\r\n        <li>The processing is in our legitimate interests and it\'s not overridden by your rights</li>\r\n        <li>For payment processing purposes</li>\r\n        <li>To comply with the law</li>\r\n    </ul>\r\n    <p>If you are a resident of the European Economic Area (EEA), you have certain data protection rights. In certain\r\n        circumstances, you have the following data protection rights:</p>\r\n    <ul>\r\n        <li>The right to access, update or to delete the personal information we have on you</li>\r\n        <li>The right of rectification</li>\r\n        <li>The right to object</li>\r\n        <li>The right of restriction</li>\r\n        <li>The right to data portability</li>\r\n        <li>The right to withdraw consent</li>\r\n    </ul>\r\n    <p>Please note that we may ask you to verify your identity before responding to such requests.</p>\r\n    <p>You have the right to complain to a Data Protection Authority about our collection and use of your personal\r\n        information. For more information, please contact your local data protection authority in the European Economic\r\n        Area (EEA).</p>\r\n\r\n<p>\r\n    \"Do Not Sell My Personal Information\" Notice for California consumers under California Consumer\r\n        Privacy Act (CCPA)\r\n    </p>\r\n\r\n<p>Under the CCPA, California consumers have the right to:</p>\r\n    <ul>\r\n        <li>Request that a business that collects a consumer\'s personal data disclose the categories and specific pieces\r\n            of personal data that a business has collected about consumers.\r\n        </li>\r\n        <li>Request that a business delete any personal data about the consumer that a business has collected.</li>\r\n        <li>Request that a business that sells a consumer\'s personal data, not sell the consumer\'s personal data.</li>\r\n    </ul>\r\n    <p>If you make a request, we have one month to respond to you. If you would like to exercise any of these rights,\r\n        please contact us.</p>\r\n\r\n<p>\r\n    Service Providers\r\n    </p>\r\n\r\n<p>We employ third party companies and individuals to facilitate our Website (\"Service Providers\"), to provide our\r\n        Website on our behalf, to perform Website-related services or to assist us in analyzing how our Website is used.\r\n        These third-parties have access to your personal information only to perform these tasks on our behalf and are\r\n        obligated not to disclose or use it for any other purpose.</p>\r\n\r\n<p>\r\n    Analytics\r\n    </p>\r\n\r\n<p>Google Analytics is a web analytics service offered by Google that tracks and reports website traffic. Google\r\n        uses the data collected to track and monitor the use of our Service. This data is shared with other Google\r\n        services. Google may use the collected data to contextualize and personalize the ads of its own advertising\r\n        network.</p>\r\n    <p>You can opt-out of having made your activity on the Service available to Google Analytics by installing the\r\n        Google Analytics opt-out browser add-on. The add-on prevents the Google Analytics JavaScript (ga.js,\r\n        analytics.js, and dc.js) from sharing information with Google Analytics about visits activity.</p>\r\n    <p>For more information on the privacy practices of Google, please visit the Google Privacy & Terms web page: <a href=\"http://www.google.com/intl/en/policies/privacy/\">http://www.google.com/intl/en/policies/privacy/</a>\r\n    </p>\r\n\r\n<p>\r\n    Payments processors\r\n    </p>\r\n\r\n<p>We provide paid products and/or services on our Website. In that case, we use third-party services for payment\r\n        processing (e.g. payment processors).</p>\r\n    <p>We will not store or collect your payment card details. That information is provided directly to our third-party\r\n        payment processors whose use of your personal information is governed by their Privacy Policy. These payment\r\n        processors adhere to the standards set by PCI-DSS as managed by the PCI Security Standards Council.</p>\r\n\r\n<p>\r\n    Contacting Us\r\n    </p>\r\n\r\n<p>If there are any questions regarding this privacy policy you may contact us.</p>', 'privacy-policies', 1, NULL, 1, 1, 'appointment booking, appointment booking website laravel, appointment website, attorney and lawyer appointment booking website, attorney appointment, booking website, law firm, lawyer appointment booking website, lawyer server website, multipurpose servic', 'Bibric is a lawyer and attorney website CMS with Appointment PHP Scripts. Babric is a better way to present your attorney service business. It is a complete solution for a law firm or justice website.', '/upload/bg-image-dynamic-page/16328558852.jpg', '2021-09-28 19:04:23', '2021-10-01 16:45:48');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

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
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(4, 'Collapsible Group Item', 'Anim Pariatur Cliche Reprehenderit, Enim Eiusmod High Life Accusamus Terry Richardson Ad Squid. 3 Wolf Moon Officia Aute, Non Cupidatat Skateboard Dolor Brunch. Food Truck Quinoa Nesciunt Laborum Eiusmod. Brunch 3 Wolf Moon Tempor, Sunt Aliqua Put A Bird On It Squid Single-Origin Coffee Nulla Assumenda Shoreditch Et. Nihil Anim Keffiyeh Helvetica, Craft Beer Labore Wes Anderson Cred Nesciunt Sapiente Ea Proident. Ad Vegan Excepteur Butcher Vice Lomo. Leggings Occaecat Craft Beer Farm-To-Table, Raw Denim Aesthetic Synth Nesciunt You Probably Haven\'t Heard Of Them Accusamus Labore Sustainable VHS.', '2021-09-27 12:06:27', '2021-09-27 12:07:03'),
(5, 'Collapsible Group Item', 'Anim Pariatur Cliche Reprehenderit, Enim Eiusmod High Life Accusamus Terry Richardson Ad Squid. 3 Wolf Moon Officia Aute, Non Cupidatat Skateboard Dolor Brunch. Food Truck Quinoa Nesciunt Laborum Eiusmod. Brunch 3 Wolf Moon Tempor, Sunt Aliqua Put A Bird On It Squid Single-Origin Coffee Nulla Assumenda Shoreditch Et. Nihil Anim Keffiyeh Helvetica, Craft Beer Labore Wes Anderson Cred Nesciunt Sapiente Ea Proident. Ad Vegan Excepteur Butcher Vice Lomo. Leggings Occaecat Craft Beer Farm-To-Table, Raw Denim Aesthetic Synth Nesciunt You Probably Haven\'t Heard Of Them Accusamus Labore Sustainable VHS.', '2021-09-27 12:06:52', '2021-09-27 12:07:12'),
(6, 'Collapsible Group Item', 'Anim Pariatur Cliche Reprehenderit, Enim Eiusmod High Life Accusamus Terry Richardson Ad Squid. 3 Wolf Moon Officia Aute, Non Cupidatat Skateboard Dolor Brunch. Food Truck Quinoa Nesciunt Laborum Eiusmod. Brunch 3 Wolf Moon Tempor, Sunt Aliqua Put A Bird On It Squid Single-Origin Coffee Nulla Assumenda Shoreditch Et. Nihil Anim Keffiyeh Helvetica, Craft Beer Labore Wes Anderson Cred Nesciunt Sapiente Ea Proident. Ad Vegan Excepteur Butcher Vice Lomo. Leggings Occaecat Craft Beer Farm-To-Table, Raw Denim Aesthetic Synth Nesciunt You Probably Haven\'t Heard Of Them Accusamus Labore Sustainable VHS.', '2021-09-27 12:07:40', '2021-09-27 12:07:40');

-- --------------------------------------------------------

--
-- Table structure for table `footer_settings`
--

CREATE TABLE `footer_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `show` tinyint(1) NOT NULL DEFAULT 1,
  `column1_short_disc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_social` tinyint(1) NOT NULL DEFAULT 1,
  `column2_recent_post_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `column2_recent_post_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `column3_popular_post_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `column3_popular_post_title_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `column4_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `column4_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bottom_footer_show` tinyint(1) NOT NULL DEFAULT 1,
  `footer_copy_right` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footer_settings`
--

INSERT INTO `footer_settings` (`id`, `show`, `column1_short_disc`, `show_social`, `column2_recent_post_title`, `column2_recent_post_number`, `column3_popular_post_title`, `column3_popular_post_title_number`, `column4_title`, `column4_description`, `footer_logo`, `bottom_footer_show`, `footer_copy_right`, `created_at`, `updated_at`) VALUES
(5, 1, 'There Are Many Variations Of Passages Naim Lorem Ipsum Available, But The Majority Have Suffered Alteration.', 1, 'Recent Post', '5', 'Popular Post', '5', 'Contact Us', 'Legislative and Parliamentary Affairs Division\r\nMinistry of Law, Justice and Parliamentary Affairs\r\nBangladesh Secretariat, Dhaka - 1000, Bangladesh.', '/upload/settings/1631529418footer-logo.png', 1, '© 2020, All Rights Reserved, Design & Developed By: bdCodera', '2021-09-13 04:36:58', '2021-09-13 04:36:58');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_tag_line` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_sub_tag_line` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_meta_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `site_name`, `site_tag_line`, `site_sub_tag_line`, `author_name`, `og_meta_title`, `og_meta_description`, `og_meta_image`, `created_at`, `updated_at`) VALUES
(2, 'Bapric', 'Law and Attorney website CMS with Appointment', 'Law and Attorney website CMS with Appointment', 'BdCoder', 'Bibric – Law and Attorney website CMS', 'Bibric is a lawyer and attorney website CMS with Appointment PHP Scripts. Attorg is a better way to present your modern service business. It is a complete solution for a law firm or justice website.', '/upload/settings/1632769376favicon.png', '2021-09-26 01:21:04', '2021-09-27 19:02:56');

-- --------------------------------------------------------

--
-- Table structure for table `hardships`
--

CREATE TABLE `hardships` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `offer` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `viewed` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `header_footer_settings`
--

CREATE TABLE `header_footer_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `header` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `header_footer_settings`
--

INSERT INTO `header_footer_settings` (`id`, `header`, `footer`, `created_at`, `updated_at`) VALUES
(1, '<script src=\"//heatmaponline.com/member/js/iframeResizer.contentWindow.min.js\"></script>\r\n<script type=\"text/javascript\">if (typeof hmtracker == \'undefined\') { window.hmtParentUrl = \"//heatmaponline.com/member/\"; var hmt_script = document.createElement(\'script\'),hmt_purl = encodeURIComponent(location.href).replace(\'.\', \'~\');hmt_script.type = \"text/javascript\";hmt_script.src = \"//heatmaponline.com/member/?projectname=bibric&uid=e95f78835bb9bf2a3a5dcd448b00cb309b652576&purl=\"+hmt_purl;document.getElementsByTagName(\'head\')[0].appendChild(hmt_script);} var hmtParallaxScript = document.createElement(\'script\'); hmtParallaxScript.src = \"//heatmaponline.com/member/js/parallax-script.js\"; document.head.appendChild(hmtParallaxScript); </script>', NULL, '2021-09-18 05:53:41', '2021-10-01 16:15:40');

-- --------------------------------------------------------

--
-- Table structure for table `header_settings`
--

CREATE TABLE `header_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `show` tinyint(1) NOT NULL DEFAULT 1,
  `left_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `right_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `header_settings`
--

INSERT INTO `header_settings` (`id`, `show`, `left_content`, `right_content`, `created_at`, `updated_at`) VALUES
(1, 1, '325, Dreem streen Borgona united', 'Cell: 088-9235-759', '2021-09-12 22:42:15', '2021-09-28 19:24:52');

-- --------------------------------------------------------

--
-- Table structure for table `hrefs`
--

CREATE TABLE `hrefs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `href` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hrefs`
--

INSERT INTO `hrefs` (`id`, `page_name`, `href`, `created_at`, `updated_at`) VALUES
(1, 'Home', '/', '2021-09-01 02:34:30', '2021-09-01 02:34:30'),
(2, 'About', '/about', '2021-09-01 02:34:30', '2021-09-01 02:34:30'),
(3, 'Services', '/services', '2021-09-01 02:34:30', '2021-09-01 02:34:30'),
(4, 'Cases', '/cases', '2021-09-01 02:34:30', '2021-09-01 02:34:30'),
(5, 'Blogs', '/blogs', '2021-09-01 02:34:30', '2021-09-01 02:34:30'),
(6, 'Teams', '/Teams', '2021-09-01 02:34:30', '2021-09-01 02:34:30'),
(7, 'Faq', '/faq', '2021-09-01 02:34:30', '2021-09-01 02:34:30'),
(8, 'Contacts', '/contacts', '2021-09-01 02:34:30', '2021-09-01 02:34:30'),
(9, 'Login', '/login', '2021-09-01 02:34:30', '2021-09-01 02:34:30'),
(10, 'TERMS OF USE', 'pages/terms-of-use', '2021-09-28 19:01:20', '2021-09-28 19:01:20'),
(11, 'PRIVACY POLICIES', 'pages/privacy-policies', '2021-09-28 19:04:23', '2021-09-28 19:04:23');

-- --------------------------------------------------------

--
-- Table structure for table `logo_settings`
--

CREATE TABLE `logo_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_tag_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logo_settings`
--

INSERT INTO `logo_settings` (`id`, `logo`, `favicon`, `site_tag_image`, `created_at`, `updated_at`) VALUES
(1, '/upload/settings/1631508115dna3emDAC.png', '/upload/settings/1631508115xzheftDAC.png', NULL, '2021-09-12 22:41:55', '2021-09-12 22:41:55');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT 0 COMMENT '0 = Main menu',
  `position` int(11) NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `href` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `category_id`, `parent_id`, `position`, `text`, `icon`, `href`, `target`, `title`, `created_at`, `updated_at`) VALUES
(83, 1, NULL, 1, 'Home', 'empty', '/', '_self', 'Home', '2021-10-09 23:17:39', '2021-10-09 23:17:39'),
(84, 1, NULL, 2, 'About', 'empty', '/about', '_self', 'About', '2021-10-09 23:17:39', '2021-10-09 23:17:39'),
(85, 1, NULL, 3, 'Cases', 'empty', '/cases', '_self', 'Cases', '2021-10-09 23:17:39', '2021-10-09 23:17:39'),
(86, 1, NULL, 4, 'Blog', 'empty', '/blogs', '_self', 'Blog', '2021-10-09 23:17:39', '2021-10-09 23:17:39'),
(87, 1, NULL, 5, 'Team', 'empty', '/teams', '_self', 'Team', '2021-10-09 23:17:39', '2021-10-09 23:17:39'),
(88, 1, NULL, 6, 'FAQ', 'empty', '/faq', '_self', 'FAQ', '2021-10-09 23:17:39', '2021-10-09 23:17:39'),
(89, 1, NULL, 7, 'Contact', 'empty', '/contacts', '_self', 'Contact', '2021-10-09 23:17:39', '2021-10-09 23:17:39'),
(90, 1, NULL, 8, 'Pages', '', '#', '_self', '', '2021-10-09 23:17:39', '2021-10-09 23:17:39'),
(91, 1, 90, 1, 'Services', '', '/services', '_self', 'Services', '2021-10-09 23:17:39', '2021-10-09 23:17:39'),
(92, 1, 90, 2, 'Terms Of Use', 'empty', 'pages/terms-of-use', '_self', '', '2021-10-09 23:17:39', '2021-10-09 23:17:39'),
(93, 1, 90, 3, 'Privacy Policies', 'empty', 'pages/privacy-policies', '_self', '', '2021-10-09 23:17:39', '2021-10-09 23:17:39');

-- --------------------------------------------------------

--
-- Table structure for table `menu_categories`
--

CREATE TABLE `menu_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_categories`
--

INSERT INTO `menu_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Header menu', '2021-08-25 09:26:06', '2021-08-25 09:26:06');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `conversation_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `conversation_id`, `user_id`, `text`, `file`, `file_name`, `read`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 'hi', '/upload/message-files/1635163394app-debug.apk', 'app-debug.apk', 1, '2021-10-25 06:03:14', '2021-10-25 23:35:47'),
(2, 1, 5, 'Hellow', NULL, NULL, 1, '2021-10-25 06:15:30', '2021-10-25 23:35:47'),
(3, 1, 6, 'Yes', NULL, NULL, 1, '2021-10-26 00:27:58', '2021-10-26 00:28:09'),
(4, 1, 5, 'Are you there?', NULL, NULL, 1, '2021-10-26 00:30:54', '2021-10-26 00:31:13'),
(5, 1, 6, 'Yes I am.', NULL, NULL, 1, '2021-10-26 00:31:23', '2021-10-26 00:46:42'),
(6, 2, 5, 'hi smeet', NULL, NULL, 1, '2021-10-26 02:33:38', '2021-10-26 02:34:39'),
(7, 2, 7, 'Yes., How can I help you', NULL, NULL, 1, '2021-10-26 02:35:06', '2021-10-26 02:35:11'),
(8, 2, 5, 'This is a sql file', '/upload/message-files/1635237346comment_settings.sql', 'comment_settings.sql', 1, '2021-10-26 02:35:46', '2021-10-26 02:36:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_05_21_100000_create_teams_table', 1),
(7, '2020_05_21_200000_create_team_user_table', 1),
(8, '2020_05_21_300000_create_team_invitations_table', 1),
(9, '2021_08_21_130931_create_sessions_table', 1),
(10, '2021_08_23_044439_create_testimonials_table', 1),
(11, '2021_08_23_050959_create_sliders_table', 1),
(12, '2021_08_23_091127_create_services_table', 1),
(13, '2021_08_23_092206_create_case_studies_table', 1),
(14, '2021_08_23_100746_create_partners_table', 1),
(15, '2021_08_24_044230_create_designations_table', 1),
(16, '2021_08_24_044335_create_attorneys_table', 1),
(17, '2021_08_24_084249_create_tags_table', 1),
(18, '2021_08_24_084441_create_blogs_table', 1),
(19, '2021_08_24_084457_create_blog_tags_table', 1),
(20, '2021_08_24_084517_create_blog_categories_table', 1),
(21, '2021_08_24_092849_create_faqs_table', 1),
(22, '2021_08_25_053311_create_permission_tables', 1),
(23, '2021_07_07_130007_create_menu_categories_table', 2),
(24, '2021_07_07_130042_create_menus_table', 2),
(25, '2021_08_25_093612_create_contacts_table', 3),
(26, '2021_08_26_053827_create_appointments_table', 3),
(27, '2021_09_01_082757_create_hrefs_table', 4),
(28, '2021_09_09_064223_create_general_settings_table', 5),
(29, '2021_09_09_064732_create_header_settings_table', 5),
(30, '2021_09_09_065025_create_footer_settings_table', 5),
(31, '2021_09_09_065957_create_social_media_settings_table', 5),
(32, '2021_09_09_072618_create_logo_settings_table', 6),
(33, '2021_09_09_072830_create_s_m_t_p_settings_table', 6),
(34, '2021_09_09_073220_create_s_e_o_settings_table', 6),
(35, '2021_09_09_093337_create_header_footer_settings_table', 6),
(38, '2021_09_11_062600_create_page_settings_table', 7),
(39, '2021_09_11_063659_create_page_section_settings_table', 7),
(40, '2021_09_16_094856_create_dynamic_pages_table', 8),
(41, '2021_09_27_064444_create_comment_settings_table', 9),
(42, '2021_10_23_105702_create_hardships_table', 9),
(46, '2021_10_24_071752_create_conversations_table', 10),
(47, '2021_10_24_074051_create_conversations_user_table', 10),
(48, '2021_10_24_074530_create_messages_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 4),
(3, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 7),
(2, 'App\\Models\\User', 8),
(2, 'App\\Models\\User', 9);

-- --------------------------------------------------------

--
-- Table structure for table `page_section_settings`
--

CREATE TABLE `page_section_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_of_content` int(11) DEFAULT NULL,
  `bg_img` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fnt_img` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show` tinyint(1) NOT NULL DEFAULT 0,
  `form_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `case_won` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_attorney` int(11) DEFAULT NULL,
  `total_client` int(11) DEFAULT NULL,
  `total_case_dismissed` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_section_settings`
--

INSERT INTO `page_section_settings` (`id`, `page_id`, `name`, `number_of_content`, `bg_img`, `title`, `sub_title`, `description`, `fnt_img`, `show`, `form_title`, `form_subtitle`, `line_one`, `line_two`, `case_won`, `total_attorney`, `total_client`, `total_case_dismissed`, `created_at`, `updated_at`) VALUES
(1, 1, 'slider', 3, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-11 04:44:26', '2021-10-09 23:25:26'),
(2, 1, 'about', NULL, NULL, 'About Us', 'Upload your Images, documents, music, and video in a single place and access them anywhere and share them everywhere....', 'There Are Many Variations Of Passages Of Lorem Ipsum Available, But The Majority Have Suffered Alteration In Some Form, By Injected Humour, Or Randomised Words Which Don\'t Look Even Slightly Believable. If You Are Going To Use A Passage Of Lorem Ipsum, You Need To Be Sure There Isn\'t Anything Embarrassing Hidden.\r\n\r\nThere Are Many Variations Of Passages Of Lorem Ipsum Available, But The Majority Have Suffered Alteration In Some Form, By Injected Humour, Or Randomised Words Which Don\'t Look Even Slightly Believable.', '/upload/settings/1631621677Capture.jpg', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-11 05:31:44', '2021-09-28 18:57:55'),
(3, 1, 'service', 3, '/upload/settings/163136100116300465331.jpg', 'WHAT WE DO', 'Our Practice Areas', 'Lorem Ipsum Dolor Sit Amet, Consectetur Adipisicing Elit. Quae Id Aut Ratione, Qui Debitis Reprehenderit Numquam Et Vitae.', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-11 05:50:01', '2021-09-28 18:58:18'),
(4, 1, 'testimonial', 3, NULL, 'Testimunial', 'Our Testimunial Access', 'Lorem Ipsum Dolor Sit Amet, Consectetur Adipisicing Elit. Quae Id Aut Ratione, Qui Debitis Reprehenderit Numquam Et Vitae.', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-11 05:52:54', '2021-09-13 00:16:11'),
(5, 1, 'appointment', NULL, NULL, 'WE RIGHT FOR OUR CLIENTS', 'Just Call At (088-9235-759) For Emergency Services', 'It Is A Long Established Fact That A Reader Will Be Distracted By The Readable Content Of A Page When Looking At Its Layout. The Point', NULL, 1, 'Appointment Now', 'Lorem ipsum dolor sit amet, consectetur adip- isicing elit. Hic numquam quas tenetur..', NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-11 06:02:29', '2021-09-11 06:02:29'),
(6, 1, 'case_study', NULL, NULL, 'OUR SUCCESS', 'Recent Case Studies', 'Lorem Ipsum Dolor Sit Amet, Consectetur Adipisicing Elit. Quae Id Aut Ratione, Qui Debitis Reprehenderit Numquam Et Vitae', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-11 06:03:45', '2021-09-11 06:03:45'),
(7, 1, 'attorney', 3, NULL, 'OUR ATTORNEY', 'Meet Our Attorney', 'Lorem Ipsum Dolor Sit Amet, Consectetur Adipisicing Elit. Quae Id Aut Ratione, Qui Debitis Reprehenderit Numquam Et Vitae.', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-11 06:06:16', '2021-09-11 06:06:16'),
(8, 1, 'blog', 6, NULL, 'BLOG POST', 'Latest Blog Post', 'Lorem Ipsum Dolor Sit Amet, Consectetur Adipisicing Elit. Quae Id Aut Ratione, Qui Debitis Reprehenderit Numquam Et Vitae.DAD', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-11 06:06:41', '2021-09-18 05:54:35'),
(9, 1, 'partner', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-11 06:07:05', '2021-09-28 18:52:24'),
(10, 3, 'contact_info', NULL, NULL, 'Contact Us', NULL, NULL, NULL, 1, NULL, NULL, '325, Dreem streen Borgona', 'Saturday: 11am to 3pm', NULL, NULL, NULL, NULL, '2021-09-11 06:12:26', '2021-09-13 04:06:01'),
(11, 3, 'business_hour', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '325, Dreem streen Borgona', 'Saturday: 11am to 3pm', NULL, NULL, NULL, NULL, '2021-09-11 06:15:47', '2021-09-13 04:06:26'),
(12, 3, 'email', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'example@mail.com', 'example2@mail.cpm', NULL, NULL, NULL, NULL, '2021-09-11 06:17:47', '2021-09-13 01:55:46'),
(13, 2, 'breadcumb_bg_img', NULL, '/upload/settings/16313635691630039597image_2021_08_26T09_40_47_404Z.png', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-11 06:32:49', '2021-09-13 00:35:14'),
(14, 2, 'left_about_img', NULL, NULL, NULL, NULL, NULL, '/upload/settings/16313637361630041098image_2021_08_26T10_22_36_075Z.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-11 06:35:36', '2021-09-13 00:35:19'),
(15, 2, 'right_about', NULL, NULL, 'Test Title', 'Test Sub Title', 'It Is A Long Established Fact That A Reader Will Be Distracted By The Readable Content Of A Page When Looking At Its Layout. The Point Of Using Lorem Ipsum Is That It Has A More-Or-Less Normal Distribution Of Letters, As Opposed To Using \'Content Here, Content Here\', Making It Look Like Readable English', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-11 06:40:51', '2021-09-13 00:35:41'),
(21, 2, 'about_appointment', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Appointment Now', 'Lorem ipsum dolor sit amet, consectetur adip- isicing elit. Hic numquam quas tenetur..', NULL, NULL, '90%', 997, 1000, '10%', '2021-09-11 06:57:15', '2021-09-13 01:37:08'),
(22, 2, 'about_attorney', 4, NULL, 'OUR ATTORNEY', 'Meet Our Attorney', 'Lorem Ipsum Dolor Sit Amet, Consectetur Adipisicing Elit. Quae Id Aut Ratione, Qui Debitis Reprehenderit Numquam Et Vitae.', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-11 07:01:07', '2021-09-14 23:56:32'),
(23, 1, 'top_header', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-18 05:51:47', '2021-09-18 05:51:47'),
(24, 3, 'contact_breadcumb_bg_img', NULL, '/upload/settings/16327445092.jpg', 'Contact', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-25 11:26:18', '2021-09-27 12:08:29'),
(25, 2, 'about_breadcumb_bg_img', NULL, '/upload/settings/16327438452.jpg', 'About', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-26 23:57:48', '2021-09-27 11:57:25'),
(26, 4, 'services_breadcumb_bg_img', 6, '/upload/settings/16327439222.jpg', 'Service', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-27 00:21:56', '2021-09-27 11:58:42'),
(27, 5, 'cases_breadcumb_bg_img', 6, '/upload/settings/16327439962.jpg', 'Case Study', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-27 00:28:08', '2021-09-27 11:59:56'),
(28, 6, 'blogs_breadcumb_bg_img', 6, '/upload/settings/1632724496comment-3.jpg', 'Blog', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-27 00:34:56', '2021-09-27 00:34:56'),
(29, 7, 'teams_breadcumb_bg_img', 6, '/upload/settings/16327441232.jpg', 'Team', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-27 00:35:46', '2021-09-27 12:02:03'),
(30, 8, 'faq_breadcumb_bg_img', 6, '/upload/settings/16327441712.jpg', 'Faqs', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-27 00:36:41', '2021-09-27 12:02:51');

-- --------------------------------------------------------

--
-- Table structure for table `page_settings`
--

CREATE TABLE `page_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keyword` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_settings`
--

INSERT INTO `page_settings` (`id`, `name`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'home', NULL, NULL, '2021-09-11 01:00:48', '2021-09-11 01:00:48'),
(2, 'about', 'appointment booking, appointment booking website laravel, appointment website, attorney and lawyer appointment booking website, attorney appointment, booking website, law firm, lawyer appointment booking website, lawyer server website, multipurpose service, service selling website', 'Bibric is a lawyer and attorney website CMS with Appointment PHP Scripts. Babric is a better way to present your attorney service business. It is a complete solution for a law firm or justice website.', '2021-09-11 01:00:48', '2021-10-01 16:44:03'),
(3, 'contact', 'appointment booking, appointment booking website laravel, appointment website, attorney and lawyer appointment booking website, attorney appointment, booking website, law firm, lawyer appointment booking website, lawyer server website, multipurpose service, service selling website', 'Bibric is a lawyer and attorney website CMS with Appointment PHP Scripts. Babric is a better way to present your attorney service business. It is a complete solution for a law firm or justice website.', '2021-09-11 01:00:48', '2021-10-01 16:40:51'),
(4, 'services', 'appointment booking, appointment booking website laravel, appointment website, attorney and lawyer appointment booking website, attorney appointment, booking website, law firm, lawyer appointment booking website, lawyer server website, multipurpose service, service selling website', 'Bibric is a lawyer and attorney website CMS with Appointment PHP Scripts. Babric is a better way to present your attorney service business. It is a complete solution for a law firm or justice website.', '2021-09-26 00:33:51', '2021-10-01 16:44:19'),
(5, 'cases', 'appointment booking, appointment booking website laravel, appointment website, attorney and lawyer appointment booking website, attorney appointment, booking website, law firm, lawyer appointment booking website, lawyer server website, multipurpose service, service selling website', 'Bibric is a lawyer and attorney website CMS with Appointment PHP Scripts. Babric is a better way to present your attorney service business. It is a complete solution for a law firm or justice website.', '2021-09-26 00:34:04', '2021-10-01 16:44:39'),
(6, 'blogs', 'appointment booking, appointment booking website laravel, appointment website, attorney and lawyer appointment booking website, attorney appointment, booking website, law firm, lawyer appointment booking website, lawyer server website, multipurpose service, service selling website', 'Bibric is a lawyer and attorney website CMS with Appointment PHP Scripts. Babric is a better way to present your attorney service business. It is a complete solution for a law firm or justice website.', '2021-09-26 00:34:23', '2021-10-01 16:44:52'),
(7, 'teams', 'appointment booking, appointment booking website laravel, appointment website, attorney and lawyer appointment booking website, attorney appointment, booking website, law firm, lawyer appointment booking website, lawyer server website, multipurpose service, service selling website', 'Bibric is a lawyer and attorney website CMS with Appointment PHP Scripts. Babric is a better way to present your attorney service business. It is a complete solution for a law firm or justice website.', '2021-09-26 00:34:33', '2021-10-01 16:45:09'),
(8, 'faq', 'appointment booking, appointment booking website laravel, appointment website, attorney and lawyer appointment booking website, attorney appointment, booking website, law firm, lawyer appointment booking website, lawyer server website, multipurpose service, service selling website', 'Bibric is a lawyer and attorney website CMS with Appointment PHP Scripts. Babric is a better way to present your attorney service business. It is a complete solution for a law firm or justice website.', '2021-09-26 00:34:43', '2021-10-01 16:45:22');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 for Off, 1 for On',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `name`, `image`, `url`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Photograph', '1631514587m4rqegDAC.png', 'http://www.bsti.gov.bd/', 1, '2021-09-13 00:29:47', '2021-09-13 00:29:47'),
(2, 'Shopname', '1631514613gflokqDAC.png', 'http://www.bsti.gov.bd/', 1, '2021-09-13 00:30:13', '2021-09-13 00:30:13'),
(3, 'PrestTiger', '1631514638458y0wDAC.png', 'http://www.bsti.gov.bd/', 1, '2021-09-13 00:30:38', '2021-09-13 00:30:38'),
(4, 'set', '16315146497tzupiDAC.png', 'http://www.bsti.gov.bd/', 1, '2021-09-13 00:30:49', '2021-09-13 00:30:49'),
(5, 'Prestigs', '1631514663q981x5DAC.png', 'http://www.bsti.gov.bd/', 1, '2021-09-13 00:31:03', '2021-09-13 00:31:03');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'contact', 'web', '2021-10-17 06:44:19', '2021-10-17 06:44:19'),
(2, 'get_appointment', 'web', '2021-10-17 06:44:19', '2021-10-17 06:44:19'),
(3, 'settings', 'web', '2021-10-17 06:44:19', '2021-10-17 06:44:19'),
(4, 'page_settings', 'web', '2021-10-17 06:44:19', '2021-10-17 06:44:19'),
(5, 'testimonial', 'web', '2021-10-17 06:44:19', '2021-10-17 06:44:19'),
(6, 'slider_settings', 'web', '2021-10-17 06:44:19', '2021-10-17 06:44:19'),
(7, 'services', 'web', '2021-10-17 06:44:19', '2021-10-17 06:44:19'),
(8, 'partner', 'web', '2021-10-17 06:44:19', '2021-10-17 06:44:19'),
(9, 'designation', 'web', '2021-10-17 06:44:19', '2021-10-17 06:44:19'),
(10, 'attorney', 'web', '2021-10-17 06:44:19', '2021-10-17 06:44:19'),
(11, 'faq', 'web', '2021-10-17 06:44:19', '2021-10-17 06:44:19'),
(12, 'case_study', 'web', '2021-10-17 06:44:19', '2021-10-17 06:44:19'),
(13, 'blog', 'web', '2021-10-17 06:44:19', '2021-10-17 06:44:19'),
(14, 'dynamic_page', 'web', '2021-10-17 06:44:19', '2021-10-17 06:44:19');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2021-10-17 06:44:19', '2021-10-17 06:44:19'),
(2, 'attorney', 'web', '2021-10-17 06:44:19', '2021-10-17 06:44:19'),
(3, 'client', 'web', '2021-10-17 06:44:19', '2021-10-17 06:44:19'),
(5, 'assistant', 'web', '2021-10-18 04:01:10', '2021-10-18 04:01:10');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(1, 2),
(2, 2),
(7, 2),
(11, 2),
(12, 2),
(13, 2),
(1, 5),
(5, 5),
(6, 5),
(8, 5);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `presentation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brochures` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 for Off, 1 for On',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `description`, `icon`, `featured_image`, `presentation`, `brochures`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Identity Theft', 'Searchley uses functional cookies and non-personalized content. Click \'OK\' to allow us and our partners to use your data for the best experience', '1631683183kexszmDAC.png', '16315136647bq1w8DAC.jpg', '1631513664897dymDAC.pdf', '1631513664rxvcy7DAC.pdf', 1, '2021-09-13 00:14:24', '2021-09-14 23:19:43'),
(2, 'Bankruptcy Law', 'Real Estate Law is a diverse subject that derives its breadth from the need to design and manufacture everything from small individual parts and devices to large systems The role of a mechanical engineer is to take a product from an idea to the marketplace. In order to accomplish this, a broad range of skills are needed. the mechanical engineer needs to acquire particular skills and knowledge. He/she needs to understand the forces and the thermal', '1631683212nijxk0DAC.png', '1631531358s1mpedDAC.jpg', '1631531358hv5kajDAC.pdf', '1631531358aem1vqDAC.pdf', 1, '2021-09-13 05:09:18', '2021-09-14 23:20:12'),
(3, 'Family Law', 'Real Estate Law is a diverse subject that derives its breadth from the need to design and manufacture everything from small individual parts and devices to large systems The role of a mechanical engineer is to take a product from an idea to the marketplace. In order to accomplish this, a broad range of skills are needed. the mechanical engineer needs to acquire particular skills and knowledge. He/she needs to understand the forces and the thermal', '1631683231tlu0x5DAC.png', '1631531390bfti54DAC.jpg', '1631531390txkfw6DAC.pdf', '1631531390r98y15DAC.pdf', 1, '2021-09-13 05:09:50', '2021-09-14 23:20:31'),
(4, 'Personal Injury', 'contrary to popular belief, lorem ipsum is not simply random text.', '1631683305a25s6iDAC.png', '1631683305snribuDAC.jpg', '1631683305b5a2psDAC.pdf', '16316833055mewhdDAC.pdf', 1, '2021-09-14 23:21:45', '2021-09-14 23:24:41'),
(5, 'Real Estate Law', 'contrary to popular belief, lorem ipsum is not simply random text.', '16316833816zhe1lDAC.png', '1631683381l7ncerDAC.jpg', '1631683381wsc3y9DAC.pdf', '16316833810vpshnDAC.pdf', 1, '2021-09-14 23:23:01', '2021-09-14 23:24:42'),
(6, 'Corporate Security', 'contrary to popular belief, lorem ipsum is not simply random text ffh', '1631683465i2a6v8DAC.png', '1631683465xz6qjhDAC.jpg', '1631683465w40ihgDAC.pdf', '16316834657ml61jDAC.pdf', 1, '2021-09-14 23:24:25', '2021-09-15 05:03:50');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('LSCGjHCm48Ep0tAedcbgrQcRiWWL3WuSnJpN2wAf', 5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoibUo2TDJsdGtJZ3V1ajNjMlg4dTBKRm5IRjZZQ3V3ODBDMFRSbnlXeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jbGllbnQvaGFyZHNoaXAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo1O3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkNHRkYkU2ekR6WGZ2R25pWmtyVDhYLlk1bU45TmZaYmxMNVQvRWR2eC9menAuZFFXd1AzVGkiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJDR0ZGJFNnpEelhmdkduaVprclQ4WC5ZNW1OOU5mWmJsTDVUL0VkdngvZnpwLmRRV3dQM1RpIjt9', 1635230942),
('H4cEI9Mz3nvkyFtZJXxjE4HMpnbx5IIAusKOnDY8', 5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiUGhtTGhkdU5yN3FhYlpoaDh3OUN2Z1FLTkJ6RjlFdkZVSkw0SENkMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jbGllbnQvY29udmVyc2F0aW9uL3N0YXJ0LWNoYXQvNiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjU7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCQ0dGRiRTZ6RHpYZnZHbmlaa3JUOFguWTVtTjlOZlpibEw1VC9FZHZ4L2Z6cC5kUVd3UDNUaSI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkNHRkYkU2ekR6WGZ2R25pWmtyVDhYLlk1bU45TmZaYmxMNVQvRWR2eC9menAuZFFXd1AzVGkiO30=', 1635238274),
('CtvYvrpBY1rBLL8qRjI5cCRrAwfgSv39NY5CB7q3', 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiSWVlc1BzWlJ4aXR5bm5TU1BvVVd1QTNzRVZDNkJKdU1qYTJOYUxLbSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9jb252ZXJzYXRpb24vZ2V0LWNvbnZlcnNhdGlvbi8xNjM1MjM3MjA0RXhhbXBsZV9OYW1ldnNTbWVldGgiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo3O3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkbW0wNk9BcUgvdVpLQWN3RHNBanJIZTlHT1hDSUpocHB0Ly92bENEWnNXZGZWS3VMWWx1Nm0iO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJG1tMDZPQXFIL3VaS0Fjd0RzQWpySGU5R09YQ0lKaHBwdC8vdmxDRFpzV2RmVkt1TFlsdTZtIjt9', 1635238301);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `button_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `button_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bg_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 for Off, 1 for On',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `sub_title`, `description`, `button_name`, `button_url`, `bg_image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Need any help?', 'We Fight for Right', 'Lorem ispum dolor sit amet, consectetur adipisicing elit. Possimus maiores quas nemo, rerum vitae cumque ipsa id aut mollitia soluta! Expedita quod reprehenderit possimus iste repellendus natus consequatur', 'Contact Us', 'http://127.0.0.1:8000/contacts', '1630128662sv83r1DAC.jpg', 1, '2021-08-27 23:31:04', '2021-09-27 11:52:49'),
(2, 'Need any help?', 'We Fight for Right', 'Amet, consectetur adipisicing elit. Possimus maiores quas nemo, rerum vitae cumque ipsa id aut mollitia soluta! Expedita quod reprehenderit possimus iste repellendus natus consequatur', 'About Us', 'http://127.0.0.1:8000/about', '1630129307ofzs19DAC.jpg', 1, '2021-08-27 23:41:48', '2021-08-29 00:56:32'),
(3, 'Need any help?', 'We normally response within 24 hours', 'Consectetur adipisicing elit. Possimus maiores quas nemo, rerum vitae cumque ipsa id aut mollitia soluta! Expedita quod reprehenderit possimus iste repellendus natus consequatur', 'Faq', 'http://127.0.0.1:8000/faq', '1630129443be8zs0DAC.jpg', 1, '2021-08-27 23:44:04', '2021-08-29 00:21:08');

-- --------------------------------------------------------

--
-- Table structure for table `social_media_settings`
--

CREATE TABLE `social_media_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_media_settings`
--

INSERT INTO `social_media_settings` (`id`, `name`, `url`, `created_at`, `updated_at`) VALUES
(1, 'facebook', 'https://www.facebook.com', '2021-09-09 01:23:33', '2021-10-02 23:13:43'),
(2, 'twitter', NULL, '2021-09-09 01:23:33', '2021-10-02 23:13:43'),
(3, 'linkedin', 'https://www.linkedin.com', '2021-09-09 01:23:33', '2021-10-02 23:13:43'),
(5, 'pinterest', NULL, '2021-09-09 01:23:33', '2021-10-02 23:13:43'),
(6, 'youtube', 'https://www.youtube.com', '2021-09-09 01:23:33', '2021-10-02 23:13:43'),
(7, 'instagram', NULL, '2021-09-09 01:23:33', '2021-10-02 23:13:43'),
(8, 'tumblr', 'https://www.tumblr.com', '2021-09-09 01:23:33', '2021-10-02 23:13:43'),
(10, 'reddit', NULL, '2021-09-09 01:23:33', '2021-10-02 23:13:43'),
(11, 'snapchat', 'https://www.snapchat.c', '2021-09-09 01:23:33', '2021-10-02 23:13:43'),
(12, 'whatsapp', NULL, '2021-09-09 01:23:33', '2021-10-02 23:13:43'),
(14, 'quora', NULL, '2021-09-09 01:23:33', '2021-10-02 23:13:43'),
(15, 'delicious', NULL, '2021-09-09 01:23:33', '2021-10-02 23:13:43'),
(16, 'digg', NULL, '2021-09-09 01:23:33', '2021-10-02 23:13:43');

-- --------------------------------------------------------

--
-- Table structure for table `s_e_o_settings`
--

CREATE TABLE `s_e_o_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_keyword` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `s_e_o_settings`
--

INSERT INTO `s_e_o_settings` (`id`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'new meta,blogs', 'Lorem Is the best', '2021-09-12 22:48:04', '2021-09-26 06:04:48');

-- --------------------------------------------------------

--
-- Table structure for table `s_m_t_p_settings`
--

CREATE TABLE `s_m_t_p_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mail_driver` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_host` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_port` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_encryption` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_from_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Blog', '2021-09-13 00:27:15', '2021-09-13 00:27:15'),
(2, 'Law firm', '2021-09-30 20:42:42', '2021-09-30 20:42:42'),
(3, 'Legal attorney', '2021-09-30 20:44:36', '2021-09-30 20:44:36'),
(4, 'Fraud', '2021-09-30 20:44:55', '2021-09-30 20:45:10'),
(5, 'Human resource', '2021-09-30 20:45:33', '2021-09-30 20:45:33'),
(6, 'Attorneys', '2021-09-30 20:45:46', '2021-09-30 20:45:46'),
(7, 'Law firm', '2021-09-30 20:46:01', '2021-09-30 20:46:01'),
(8, 'Attorney', '2021-09-30 20:46:24', '2021-09-30 20:46:24');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `user_id`, `name`, `personal_team`, `created_at`, `updated_at`) VALUES
(1, 2, 'Zakir\'s Team', 1, '2021-09-01 23:25:14', '2021-09-01 23:25:14'),
(2, 3, 'Zakir\'s Team', 1, '2021-09-01 23:32:32', '2021-09-01 23:32:32'),
(3, 4, 'ZAHID\'s Team', 1, '2021-09-02 00:22:20', '2021-09-02 00:22:20'),
(4, 5, 'Example\'s Team', 1, '2021-10-19 23:26:57', '2021-10-19 23:26:57');

-- --------------------------------------------------------

--
-- Table structure for table `team_invitations`
--

CREATE TABLE `team_invitations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_user`
--

CREATE TABLE `team_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonial` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 is false, 1 is true',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `designation`, `testimonial`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Stivan Hoky', 'CEO  of Hiday', 'Lorem Ipsum Dolor Sit Amet, Consectetur Adipisicing Elit. Quae Id Aut Ratione, Qui Debitis Reprehenderit Numquam Et Vitae.ASFA', '1631513878uwcpa3DAC.jpg', 1, '2021-09-13 00:17:58', '2021-09-18 05:43:00'),
(3, 'Sliver X', 'CEO  of Hiday', 'Lorem Ipsum Dolor Sit Amet, Consectetur Adipisicing Elit. Quae Id Aut Ratione, Qui Debitis Reprehenderit Numquam Et Vitae.', '1631513895ovnk2mDAC.jpg', 1, '2021-09-13 00:18:15', '2021-09-13 00:18:15'),
(4, 'Nova Eduewn', 'CEO  of Hiday', 'Lorem Ipsum Dolor Sit Amet, Consectetur Adipisicing Elit. Quae Id Aut Ratione, Qui Debitis Reprehenderit Numquam Et Vitae.', '1631513914d07tuqDAC.jpg', 1, '2021-09-13 00:18:34', '2021-09-13 00:18:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '+1-xxx-xxx-xxxx',
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@demo.com', NULL, '$2y$10$fL9MA2NGcm87rqV7iWj2w.pgomGmptNS0Xcu98S97EfOkX1b6ermG', NULL, NULL, '12FfEEMe40zaJjU1a1Dt2nXdCOcxejjagQqt7Lxd7iUZE24HR1pmauD59LwI', NULL, NULL, '+1-xxx-xxx-xxxx', '702 Philadelphia Avenue, Holladay, Utah-84117, United States', '2021-08-25 04:01:24', '2021-10-12 06:54:13'),
(3, 'Zakir Hossain', 'zakir7dipu@gmail.com', NULL, '$2y$10$kJgJz63yI6FHMrd63M1qjuM6.sDkUT90MaID6zrOcT7hyznsHTj7a', NULL, NULL, NULL, NULL, NULL, '+1-xxx-xxx-xxxx', '702 Philadelphia Avenue, Holladay, Utah-84117, United States', '2021-09-01 23:32:31', '2021-09-01 23:32:31'),
(4, 'ZAHID HASAN', 'zakir_dipu@yahoo.com', NULL, '$2y$10$jZ/yj/vlROezesBxv.hx6eKm/RIt3Wj7anEVqfHH/z/GCiewW3ZNW', NULL, NULL, NULL, NULL, NULL, '+1-xxx-xxx-xxxx', '702 Philadelphia Avenue, Holladay, Utah-84117, United States', '2021-09-02 00:22:20', '2021-09-02 00:22:20'),
(5, 'Example Name', 'example@email.com', NULL, '$2y$10$4tdbE6zDzXfvGniZkrT8X.Y5mN9NfZblL5T/Edvx/fzp.dQWwP3Ti', NULL, NULL, NULL, NULL, NULL, '01911559962', '58/6, Dogormura', '2021-10-19 23:26:57', '2021-10-23 01:26:48'),
(6, 'John Doa', 'john@demo.com', NULL, '$2y$10$PzWHxWJl7NFl.qc0XFR.qexgqn7YGJSb6HZMU9DzxakyUhlxSLd4C', NULL, NULL, NULL, NULL, NULL, '(222) 333-4444', '135/F, South Kamlapur, Motijheel, United State', '2021-10-24 04:54:12', '2021-10-24 04:54:12'),
(7, 'Smeeth', 'smeeth@demo.com', NULL, '$2y$10$mm06OAqH/uZKAcwDsAjrHe9GOXCIJhppt//vlCDZsWdfVKuLYlu6m', NULL, NULL, NULL, NULL, NULL, '(000) 000-0000', '135/F, South Kamlapur, Motijheel, United State', '2021-10-24 04:54:41', '2021-10-24 04:54:41'),
(8, 'Orvia Eduiwn', 'orvia@demo.com', NULL, '$2y$10$tKUNVYD3uUjZaFlxwew.cOxBW6Fua5y5SbjOALJxwzAA151zTrLRW', NULL, NULL, NULL, NULL, NULL, '(222) 333-4444', '135/F, South Kamlapur, Motijheel, United State', '2021-10-24 04:54:59', '2021-10-24 04:54:59'),
(9, 'Edwin RW', 'edwin@demo.com', NULL, '$2y$10$EpEeOQwGS2m3/EA6zb2OV.A4/qHz2r2SPoYYt5QramlylmRVAA3sO', NULL, NULL, NULL, NULL, NULL, '(000) 000-0000', '135/F, South Kamlapur, Motijheel, United State', '2021-10-24 04:55:43', '2021-10-24 04:55:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attorneys`
--
ALTER TABLE `attorneys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_tags`
--
ALTER TABLE `blog_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `case_studies`
--
ALTER TABLE `case_studies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment_settings`
--
ALTER TABLE `comment_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `conversations_slug_unique` (`slug`);

--
-- Indexes for table `conversations_user`
--
ALTER TABLE `conversations_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dynamic_pages`
--
ALTER TABLE `dynamic_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_settings`
--
ALTER TABLE `footer_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hardships`
--
ALTER TABLE `hardships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `header_footer_settings`
--
ALTER TABLE `header_footer_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `header_settings`
--
ALTER TABLE `header_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hrefs`
--
ALTER TABLE `hrefs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logo_settings`
--
ALTER TABLE `logo_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_categories`
--
ALTER TABLE `menu_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_section_settings`
--
ALTER TABLE `page_section_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_settings`
--
ALTER TABLE `page_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media_settings`
--
ALTER TABLE `social_media_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `s_e_o_settings`
--
ALTER TABLE `s_e_o_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `s_m_t_p_settings`
--
ALTER TABLE `s_m_t_p_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
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
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `attorneys`
--
ALTER TABLE `attorneys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `blog_tags`
--
ALTER TABLE `blog_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `case_studies`
--
ALTER TABLE `case_studies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comment_settings`
--
ALTER TABLE `comment_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `conversations_user`
--
ALTER TABLE `conversations_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dynamic_pages`
--
ALTER TABLE `dynamic_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `footer_settings`
--
ALTER TABLE `footer_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hardships`
--
ALTER TABLE `hardships`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `header_footer_settings`
--
ALTER TABLE `header_footer_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `header_settings`
--
ALTER TABLE `header_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hrefs`
--
ALTER TABLE `hrefs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `logo_settings`
--
ALTER TABLE `logo_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `menu_categories`
--
ALTER TABLE `menu_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `page_section_settings`
--
ALTER TABLE `page_section_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `page_settings`
--
ALTER TABLE `page_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `social_media_settings`
--
ALTER TABLE `social_media_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `s_e_o_settings`
--
ALTER TABLE `s_e_o_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `s_m_t_p_settings`
--
ALTER TABLE `s_m_t_p_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `team_invitations`
--
ALTER TABLE `team_invitations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
