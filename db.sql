-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2022 at 03:13 PM
-- Server version: 8.0.29
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `example_app_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Math', '2022-08-17 11:04:25', '2022-08-17 11:04:25');

-- --------------------------------------------------------

--
-- Table structure for table `course_student`
--

CREATE TABLE `course_student` (
  `course_id` bigint UNSIGNED NOT NULL,
  `student_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_student`
--

INSERT INTO `course_student` (`course_id`, `student_id`, `created_at`, `updated_at`) VALUES
(2, 4, NULL, NULL),
(2, 5, NULL, NULL),
(2, 6, NULL, NULL),
(2, 7, NULL, NULL),
(2, 8, NULL, NULL),
(2, 9, NULL, NULL),
(2, 10, NULL, NULL),
(2, 11, NULL, NULL),
(2, 12, NULL, NULL),
(2, 13, NULL, NULL),
(2, 14, NULL, NULL),
(2, 15, NULL, NULL),
(2, 16, NULL, NULL),
(2, 17, NULL, NULL),
(2, 18, NULL, NULL),
(2, 19, NULL, NULL),
(2, 20, NULL, NULL),
(2, 21, NULL, NULL),
(2, 22, NULL, NULL),
(2, 23, NULL, NULL),
(2, 24, NULL, NULL),
(2, 25, NULL, NULL),
(2, 26, NULL, NULL),
(2, 27, NULL, NULL),
(2, 28, NULL, NULL),
(2, 29, NULL, NULL),
(2, 30, NULL, NULL),
(2, 31, NULL, NULL),
(2, 32, NULL, NULL),
(2, 33, NULL, NULL),
(2, 34, NULL, NULL),
(2, 35, NULL, NULL),
(2, 36, NULL, NULL),
(2, 37, NULL, NULL),
(2, 38, NULL, NULL),
(2, 39, NULL, NULL),
(2, 40, NULL, NULL),
(2, 41, NULL, NULL),
(2, 42, NULL, NULL),
(2, 43, NULL, NULL),
(2, 44, NULL, NULL),
(2, 45, NULL, NULL),
(2, 46, NULL, NULL),
(2, 47, NULL, NULL),
(2, 48, NULL, NULL),
(2, 49, NULL, NULL),
(2, 50, NULL, NULL),
(2, 51, NULL, NULL),
(2, 52, NULL, NULL),
(2, 53, NULL, NULL),
(2, 54, NULL, NULL),
(2, 55, NULL, NULL),
(2, 56, NULL, NULL),
(2, 57, NULL, NULL),
(2, 58, NULL, NULL),
(2, 59, NULL, NULL),
(2, 60, NULL, NULL),
(2, 61, NULL, NULL),
(2, 62, NULL, NULL),
(2, 63, NULL, NULL),
(2, 64, NULL, NULL),
(2, 65, NULL, NULL),
(2, 66, NULL, NULL),
(2, 67, NULL, NULL),
(2, 68, NULL, NULL),
(2, 69, NULL, NULL),
(2, 70, NULL, NULL),
(2, 71, NULL, NULL),
(2, 72, NULL, NULL),
(2, 73, NULL, NULL),
(2, 74, NULL, NULL),
(2, 75, NULL, NULL),
(2, 76, NULL, NULL),
(2, 77, NULL, NULL),
(2, 78, NULL, NULL),
(2, 79, NULL, NULL),
(2, 80, NULL, NULL),
(2, 81, NULL, NULL),
(2, 82, NULL, NULL),
(2, 83, NULL, NULL),
(2, 84, NULL, NULL),
(2, 85, NULL, NULL),
(2, 86, NULL, NULL),
(2, 87, NULL, NULL),
(2, 88, NULL, NULL),
(2, 89, NULL, NULL),
(2, 90, NULL, NULL),
(2, 91, NULL, NULL),
(2, 92, NULL, NULL),
(2, 93, NULL, NULL),
(2, 94, NULL, NULL),
(2, 95, NULL, NULL),
(2, 96, NULL, NULL),
(2, 97, NULL, NULL),
(2, 98, NULL, NULL),
(2, 99, NULL, NULL),
(2, 100, NULL, NULL),
(2, 101, NULL, NULL),
(2, 102, NULL, NULL),
(2, 103, NULL, NULL),
(2, 104, NULL, NULL),
(2, 105, NULL, NULL),
(2, 106, NULL, NULL),
(2, 107, NULL, NULL),
(2, 108, NULL, NULL),
(2, 109, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(17, '2014_10_12_000000_create_users_table', 1),
(18, '2014_10_12_100000_create_password_resets_table', 1),
(19, '2019_08_19_000000_create_failed_jobs_table', 1),
(20, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(21, '2022_08_15_123227_create_universities_table', 1),
(22, '2022_08_16_124728_create_students_table', 1),
(23, '2022_08_16_125934_create_courses_table', 1),
(24, '2022_08_17_134350_create_course_students_table', 1);

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_date` date NOT NULL,
  `age` tinyint NOT NULL,
  `university_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `mobile`, `address`, `birth_date`, `age`, `university_id`, `created_at`, `updated_at`) VALUES
(4, 'Isabell', '563-790-4527', '6620 Koelpin Garden Suite 366\nNew Shanelfort, HI 27164-9798', '1953-03-17', 20, 1, '2022-08-17 10:46:39', '2022-08-17 10:46:39'),
(5, 'Leora', '1-667-718-4253', '40084 Langworth Circles\nLake Damianside, NC 56246-1117', '1990-04-16', 11, 1, '2022-08-17 10:46:39', '2022-08-17 10:46:39'),
(6, 'Talia', '+19209708111', '8576 Jedediah Crescent Apt. 187\nLake Loma, AL 79253-7687', '1969-12-31', 19, 1, '2022-08-17 10:46:39', '2022-08-17 10:46:39'),
(7, 'Ryder', '+12797505404', '40356 Florence Corner\nMullerport, AK 28109-0793', '1972-05-04', 18, 1, '2022-08-17 10:46:39', '2022-08-17 10:46:39'),
(8, 'Helga', '304.996.5270', '84630 Angelina Camp\nLisandrohaven, WA 55374-2565', '1967-01-20', 10, 1, '2022-08-17 10:46:39', '2022-08-17 10:46:39'),
(9, 'Emmy', '434-854-5442', '74537 Dietrich Locks\nLake August, MS 09824-3814', '1945-02-24', 18, 1, '2022-08-17 10:46:39', '2022-08-17 10:46:39'),
(10, 'Gunnar', '+1-801-393-6904', '168 Quitzon Inlet\nNew Cassandraborough, AK 94507', '2007-03-20', 16, 1, '2022-08-17 10:46:39', '2022-08-17 10:46:39'),
(11, 'Marcos', '1-575-684-4036', '85536 Marvin Passage\nNoemytown, NH 37624-5029', '2008-10-28', 20, 1, '2022-08-17 10:46:39', '2022-08-17 10:46:39'),
(12, 'Kathryne', '(503) 998-7778', '576 Maya Trail\nWest Kaylifort, OH 81661-5539', '2015-10-10', 16, 1, '2022-08-17 10:46:39', '2022-08-17 10:46:39'),
(13, 'Joe', '765.966.7547', '44120 Lyric Neck\nPort Flaviostad, MT 24942-4898', '1987-10-31', 18, 1, '2022-08-17 10:46:39', '2022-08-17 10:46:39'),
(14, 'Teresa', '+1 (878) 405-6764', '302 Wilford Lock Apt. 213\nWest Alta, OH 32435-1473', '1955-05-11', 10, 1, '2022-08-17 10:46:39', '2022-08-17 10:46:39'),
(15, 'Tina', '(804) 341-3896', '8333 Lowell Cliffs Suite 570\nReingermouth, SC 36158-6649', '2014-04-24', 11, 1, '2022-08-17 10:46:39', '2022-08-17 10:46:39'),
(16, 'Trevor', '814.849.2173', '471 Alessia Springs Suite 138\nO\'Konmouth, DE 12858-2056', '1933-09-23', 18, 1, '2022-08-17 10:46:39', '2022-08-17 10:46:39'),
(17, 'Alicia', '1-402-210-2533', '597 Sonya Corner Apt. 116\nMyrtieside, OK 77022', '1934-03-08', 18, 1, '2022-08-17 10:46:39', '2022-08-17 10:46:39'),
(18, 'Evalyn', '+1-254-867-4770', '6639 Rosanna Courts\nMeghanfurt, WI 77985-5227', '1999-07-07', 16, 1, '2022-08-17 10:46:39', '2022-08-17 10:46:39'),
(19, 'Kattie', '1-248-517-1317', '863 Mante Inlet\nLindgrentown, PA 93201', '1961-02-11', 18, 1, '2022-08-17 10:46:39', '2022-08-17 10:46:39'),
(20, 'Arielle', '732-383-7920', '468 Noah Pine Suite 980\nCroninborough, MO 03015', '1929-04-01', 12, 1, '2022-08-17 10:46:39', '2022-08-17 10:46:39'),
(21, 'Patsy', '360.782.5960', '38127 Aufderhar Forge Apt. 564\nMadelynborough, AK 98409-9129', '2005-08-25', 14, 1, '2022-08-17 10:50:22', '2022-08-17 10:50:22'),
(22, 'Jessica', '+1 (360) 787-1430', '7142 Flossie Rue Suite 731\nLake Buster, MN 02735', '1970-07-08', 13, 1, '2022-08-17 10:50:22', '2022-08-17 10:50:22'),
(23, 'Keanu', '838-459-1652', '10003 Nakia Valley Apt. 256\nWest Nona, UT 85470', '1957-04-21', 15, 1, '2022-08-17 10:50:22', '2022-08-17 10:50:22'),
(24, 'Allison', '785-380-2633', '75301 Liam Harbors Suite 956\nWest Kamronborough, NJ 18519-0522', '2013-09-21', 12, 1, '2022-08-17 10:50:22', '2022-08-17 10:50:22'),
(25, 'Uriah', '(267) 402-6783', '426 Abraham Hill Suite 808\nNew Theo, ND 90884-6442', '1989-08-21', 14, 1, '2022-08-17 10:50:22', '2022-08-17 10:50:22'),
(26, 'Rosalind', '1-726-617-9052', '157 Tyshawn Point\nConroybury, MA 80492-8710', '1970-01-07', 18, 1, '2022-08-17 10:50:22', '2022-08-17 10:50:22'),
(27, 'Lottie', '+1.251.727.5121', '10175 Douglas Fork Apt. 711\nHectorton, WY 80251', '1956-08-12', 17, 1, '2022-08-17 10:50:22', '2022-08-17 10:50:22'),
(28, 'Janessa', '+1-531-319-2687', '89764 Gwendolyn Crest Suite 349\nLake Tobin, OH 50093-2618', '1992-02-15', 18, 1, '2022-08-17 10:50:22', '2022-08-17 10:50:22'),
(29, 'Valerie', '+1-504-804-7395', '91053 Nolan Junctions Suite 501\nPort Alana, WY 42600-3139', '2013-08-07', 10, 1, '2022-08-17 10:50:22', '2022-08-17 10:50:22'),
(30, 'Jennyfer', '1-219-440-9839', '57959 Deion Orchard Suite 259\nHamillbury, CO 16452-4650', '1967-07-03', 17, 1, '2022-08-17 10:50:22', '2022-08-17 10:50:22'),
(31, 'Rafael', '+1.276.856.9838', '138 Kunde Via Apt. 094\nNew Lillyberg, DC 87601-7394', '1929-12-28', 18, 1, '2022-08-17 10:50:22', '2022-08-17 10:50:22'),
(32, 'Edna', '+1.347.273.2464', '9739 Von Haven Suite 643\nWest Keithburgh, LA 05046', '1936-12-09', 11, 1, '2022-08-17 10:50:22', '2022-08-17 10:50:22'),
(33, 'Donavon', '1-737-488-4856', '20074 Jeramy Port Suite 948\nKaileyberg, IN 51880-7834', '1935-06-15', 16, 1, '2022-08-17 10:50:22', '2022-08-17 10:50:22'),
(34, 'Arturo', '854.890.1089', '544 Daisha Vista Apt. 053\nLake Drewhaven, CO 28770', '2007-05-11', 19, 1, '2022-08-17 10:50:22', '2022-08-17 10:50:22'),
(35, 'Frances', '+1-701-807-6852', '26922 Ceasar Ford\nSauerfort, NE 66347-8759', '1950-11-02', 18, 1, '2022-08-17 10:50:22', '2022-08-17 10:50:22'),
(36, 'Marlen', '619-475-1576', '2784 Alvah Keys\nQueenieberg, AL 61136', '2008-05-20', 10, 1, '2022-08-17 10:50:22', '2022-08-17 10:50:22'),
(37, 'Katelynn', '+1 (417) 935-9871', '15243 Bayer Islands Apt. 123\nShannonfurt, AL 29293', '2014-07-25', 15, 1, '2022-08-17 10:50:22', '2022-08-17 10:50:22'),
(38, 'Keeley', '302.584.5683', '62303 Jedediah Trace Suite 574\nDangelostad, MT 77364', '2011-05-21', 17, 1, '2022-08-17 10:50:22', '2022-08-17 10:50:22'),
(39, 'Brandyn', '425.827.5716', '79150 Metz Street Apt. 955\nSuzannechester, NY 30960', '2001-12-07', 10, 1, '2022-08-17 10:50:22', '2022-08-17 10:50:22'),
(40, 'Erin', '+1.747.543.3188', '1067 Elvera Via\nLake Wilfrid, NE 33353-7458', '1997-05-15', 16, 1, '2022-08-17 10:50:22', '2022-08-17 10:50:22'),
(41, 'Carrie', '385.571.7886', '3647 Matt Crossing\nRahulberg, OH 99595', '1949-01-18', 16, 1, '2022-08-17 10:59:01', '2022-08-17 10:59:01'),
(42, 'Alene', '+1-740-836-0469', '851 Labadie Coves Apt. 650\nDaltonbury, IA 08301', '2019-10-21', 11, 1, '2022-08-17 10:59:01', '2022-08-17 10:59:01'),
(43, 'Kirsten', '707.915.9344', '9957 Shawn Throughway\nLake Shannonmouth, MD 51016-9172', '1971-04-15', 18, 1, '2022-08-17 10:59:01', '2022-08-17 10:59:01'),
(44, 'Beaulah', '(408) 852-9022', '3670 Russel Loaf Suite 896\nLake Clotilde, CO 99531', '2011-05-17', 17, 1, '2022-08-17 10:59:01', '2022-08-17 10:59:01'),
(45, 'Jonatan', '(313) 224-6368', '71119 Margot Coves Suite 003\nWest Connie, HI 90117', '2010-07-01', 17, 1, '2022-08-17 10:59:01', '2022-08-17 10:59:01'),
(46, 'Nickolas', '(937) 764-0248', '1276 Leffler Mills\nZettaton, UT 79715-0401', '1948-09-22', 17, 1, '2022-08-17 10:59:01', '2022-08-17 10:59:01'),
(47, 'Monte', '+1-843-838-5122', '7106 Hills Common Apt. 763\nNew Lorine, OK 45401', '2011-03-17', 11, 1, '2022-08-17 10:59:01', '2022-08-17 10:59:01'),
(48, 'Elwin', '+1.208.579.1651', '72084 Jennings Road Suite 134\nEmmiefurt, MA 68266-2843', '1981-05-15', 15, 1, '2022-08-17 10:59:01', '2022-08-17 10:59:01'),
(49, 'Jany', '+1.651.550.5794', '5301 Mohr Mountains Suite 009\nLilyanchester, DC 35066-6692', '1958-03-03', 14, 1, '2022-08-17 10:59:01', '2022-08-17 10:59:01'),
(50, 'Easton', '1-720-574-9618', '209 Kennith Plains Suite 497\nMurphyshire, WA 93345-0837', '1937-12-08', 15, 1, '2022-08-17 10:59:01', '2022-08-17 10:59:01'),
(51, 'Ethel', '283-650-6903', '8616 Edna Plaza Apt. 121\nLake Vickyview, OH 51172-7332', '1990-11-26', 15, 1, '2022-08-17 10:59:01', '2022-08-17 10:59:01'),
(52, 'Angeline', '+1-757-399-8106', '2810 Ferry Tunnel Apt. 059\nStarkfort, FL 09378-0383', '1972-02-18', 20, 1, '2022-08-17 10:59:01', '2022-08-17 10:59:01'),
(53, 'Jarvis', '+1.559.789.9984', '895 Hills Views\nJordanside, MS 58182', '1992-04-03', 11, 1, '2022-08-17 10:59:01', '2022-08-17 10:59:01'),
(54, 'Gordon', '+1-650-952-6248', '57492 Emmerich Oval\nGerlachmouth, WI 41702-1699', '1927-11-27', 12, 1, '2022-08-17 10:59:01', '2022-08-17 10:59:01'),
(55, 'Neva', '+1-854-751-9665', '54509 Mckenzie Ville Apt. 890\nImmanuelmouth, KY 26716-3278', '1972-04-14', 15, 1, '2022-08-17 10:59:01', '2022-08-17 10:59:01'),
(56, 'Thaddeus', '878-715-9115', '1765 Jakubowski Club Suite 590\nGerrymouth, OR 91644', '1994-11-23', 19, 1, '2022-08-17 10:59:01', '2022-08-17 10:59:01'),
(57, 'Meredith', '(216) 974-4547', '8017 Simonis Village\nPort Camren, AK 69418', '1923-07-08', 11, 1, '2022-08-17 10:59:01', '2022-08-17 10:59:01'),
(58, 'Eli', '+1-585-846-9934', '469 Dooley Spur Apt. 846\nDonnellychester, NH 40789-7527', '1927-11-01', 20, 1, '2022-08-17 10:59:01', '2022-08-17 10:59:01'),
(59, 'Gardner', '760.298.1862', '52887 Collins Gardens Suite 079\nShanahanfort, VA 97432', '1947-10-18', 18, 1, '2022-08-17 10:59:01', '2022-08-17 10:59:01'),
(60, 'Laurie', '+12156075016', '2971 Hickle Rue\nEarleneberg, FL 62426', '2016-07-13', 11, 1, '2022-08-17 10:59:01', '2022-08-17 10:59:01'),
(61, 'Vada', '+1-919-279-1520', '4890 Moen Course\nEast Liza, MA 83585-3595', '1991-06-03', 11, 1, '2022-08-17 10:59:35', '2022-08-17 10:59:35'),
(62, 'Adrain', '870.498.2853', '5234 Kemmer Plains\nLake Hermina, IA 41751', '1932-04-29', 19, 1, '2022-08-17 10:59:35', '2022-08-17 10:59:35'),
(63, 'Citlalli', '1-916-891-8069', '159 Tillman Forges\nWest King, TX 35987-2228', '1922-10-13', 14, 1, '2022-08-17 10:59:35', '2022-08-17 10:59:35'),
(64, 'Dan', '(478) 802-0243', '8212 Stracke Springs Apt. 199\nWatsicaborough, OK 08927-3651', '1929-01-04', 15, 1, '2022-08-17 10:59:35', '2022-08-17 10:59:35'),
(65, 'Abdul', '715.570.7614', '136 Nola Trafficway\nWest Alexa, AL 49704-0840', '1979-07-25', 18, 1, '2022-08-17 10:59:35', '2022-08-17 10:59:35'),
(66, 'Jeanne', '1-325-435-5646', '2828 Arlene Trace\nMillston, FL 47958', '1979-09-18', 16, 1, '2022-08-17 10:59:35', '2022-08-17 10:59:35'),
(67, 'Anabel', '1-714-589-4237', '7277 Lakin Ports\nWalterbury, DC 83832', '1980-05-16', 14, 1, '2022-08-17 10:59:35', '2022-08-17 10:59:35'),
(68, 'Vida', '(580) 292-1867', '61628 Ismael Glen Apt. 446\nBethelburgh, NV 93689', '1970-01-08', 10, 1, '2022-08-17 10:59:35', '2022-08-17 10:59:35'),
(69, 'Mallie', '940.205.0948', '26181 Joanne Circles Apt. 498\nKrisshire, AZ 29144', '1996-06-19', 10, 1, '2022-08-17 10:59:35', '2022-08-17 10:59:35'),
(70, 'Isom', '+1 (231) 269-2573', '4683 Moen Burg\nRunolfssonfurt, AK 69914', '1990-06-05', 12, 1, '2022-08-17 10:59:35', '2022-08-17 10:59:35'),
(71, 'Bettie', '703.589.8867', '432 Rau Drive\nHagenesfort, VT 86449-0459', '1925-01-08', 12, 1, '2022-08-17 10:59:35', '2022-08-17 10:59:35'),
(72, 'Jerrold', '1-615-687-0294', '6009 Durward Fort Apt. 876\nThurmanfurt, ME 17458-4713', '1948-02-07', 20, 1, '2022-08-17 10:59:35', '2022-08-17 10:59:35'),
(73, 'Norbert', '+1-916-375-7146', '5129 Cade Roads Apt. 595\nSouth Ocie, NJ 76401-3648', '2000-05-29', 10, 1, '2022-08-17 10:59:35', '2022-08-17 10:59:35'),
(74, 'Justen', '+1 (248) 760-2914', '431 Jerel River Suite 155\nNiachester, NE 36294-2334', '1924-02-03', 12, 1, '2022-08-17 10:59:35', '2022-08-17 10:59:35'),
(75, 'Janae', '(719) 557-7126', '1126 Jalon Groves\nFraneckitown, IA 87526-2655', '1948-01-17', 18, 1, '2022-08-17 10:59:35', '2022-08-17 10:59:35'),
(76, 'Maribel', '(629) 655-0864', '861 Larson Island\nNorth Elsetown, DC 01300', '1925-11-26', 12, 1, '2022-08-17 10:59:35', '2022-08-17 10:59:35'),
(77, 'Leonor', '863.453.8491', '7439 Winfield Creek\nLake Johnathon, CT 51279-5821', '2008-02-13', 10, 1, '2022-08-17 10:59:35', '2022-08-17 10:59:35'),
(78, 'Raymundo', '+16826793877', '695 Annette Glens Apt. 438\nSouth Koryborough, DC 43118-8109', '1942-02-13', 10, 1, '2022-08-17 10:59:35', '2022-08-17 10:59:35'),
(79, 'Travon', '(984) 337-7498', '895 Stephon Ways\nKayliborough, ND 02893', '1926-09-27', 13, 1, '2022-08-17 10:59:35', '2022-08-17 10:59:35'),
(80, 'May', '+1-408-438-4595', '209 Flatley Flat\nLake Codytown, KS 50965', '1922-10-22', 12, 1, '2022-08-17 10:59:35', '2022-08-17 10:59:35'),
(81, 'Hilma', '+1-805-976-7971', '262 Brady Falls Suite 531\nSwaniawskiview, MT 82670', '1941-01-19', 17, 1, '2022-08-17 11:03:58', '2022-08-17 11:03:58'),
(82, 'Nellie', '+15309459382', '2932 Ullrich Dale Suite 437\nNorth Maxwell, CA 12805', '1958-04-10', 15, 1, '2022-08-17 11:03:58', '2022-08-17 11:03:58'),
(83, 'Jadon', '201.341.0453', '8066 Cassandra Ports Suite 728\nPort Cora, VA 57183-1618', '1983-07-05', 20, 1, '2022-08-17 11:03:58', '2022-08-17 11:03:58'),
(84, 'Flossie', '+1-817-542-8000', '7145 Adolphus Lodge\nNorth Petra, KY 83662', '1974-12-30', 15, 1, '2022-08-17 11:03:58', '2022-08-17 11:03:58'),
(85, 'Anahi', '(339) 943-4014', '54649 Mckenna Union Suite 248\nSawaynland, AK 39964', '1925-11-24', 14, 1, '2022-08-17 11:03:58', '2022-08-17 11:03:58'),
(86, 'Ewald', '+1.937.354.3975', '5861 Kiera Isle\nMorarborough, SC 42100-4244', '1978-10-31', 13, 1, '2022-08-17 11:03:58', '2022-08-17 11:03:58'),
(87, 'Koby', '(919) 729-4272', '4690 Gulgowski Ports Suite 612\nLiaborough, MS 09976-0979', '1976-12-23', 13, 1, '2022-08-17 11:03:58', '2022-08-17 11:03:58'),
(88, 'Cristina', '+19158354723', '870 Dan Drives Apt. 464\nPort Maximilian, NY 09001-8031', '2014-12-25', 18, 1, '2022-08-17 11:03:58', '2022-08-17 11:03:58'),
(89, 'Modesto', '+1.832.693.0146', '79114 Stokes Mews Suite 501\nRoweton, HI 79823', '1929-08-28', 19, 1, '2022-08-17 11:03:58', '2022-08-17 11:03:58'),
(90, 'Kaela', '1-731-590-9355', '5413 Willis Cliffs\nChetmouth, IA 52150', '1963-04-18', 13, 1, '2022-08-17 11:04:25', '2022-08-17 11:04:25'),
(91, 'Leif', '260-855-6305', '10790 Casper Squares\nBinsmouth, NH 94659-1815', '1974-03-25', 11, 1, '2022-08-17 11:04:25', '2022-08-17 11:04:25'),
(92, 'Art', '+12313452175', '45374 Kunde Run\nWendellburgh, ND 41463-3183', '1957-03-28', 20, 1, '2022-08-17 11:04:25', '2022-08-17 11:04:25'),
(93, 'Fabian', '760-527-9423', '63562 Schmeler Land Apt. 007\nDibbertton, AR 91835', '1924-08-24', 11, 1, '2022-08-17 11:04:25', '2022-08-17 11:04:25'),
(94, 'Jannie', '573.666.0570', '7733 Zackary Expressway Suite 006\nMacejkovicport, GA 54719-7136', '1944-03-04', 19, 1, '2022-08-17 11:04:25', '2022-08-17 11:04:25'),
(95, 'Domenic', '1-667-812-2009', '816 Rosenbaum Rue\nNorth Nicole, OR 90077-3260', '1994-10-23', 12, 1, '2022-08-17 11:04:25', '2022-08-17 11:04:25'),
(96, 'Sydnee', '440.273.6053', '5235 Watsica Creek Apt. 886\nEast Ali, AL 56636-9953', '1992-11-08', 17, 1, '2022-08-17 11:04:25', '2022-08-17 11:04:25'),
(97, 'Garry', '870.645.9164', '483 Kunze Crest Suite 727\nArlomouth, VT 72814-9483', '1945-08-01', 12, 1, '2022-08-17 11:04:25', '2022-08-17 11:04:25'),
(98, 'Missouri', '+17319035106', '12234 Marielle Alley Apt. 569\nNorth Davonte, TN 10125-2664', '1936-06-25', 15, 1, '2022-08-17 11:04:25', '2022-08-17 11:04:25'),
(99, 'Earlene', '+1.314.850.9875', '545 Ondricka Stravenue Suite 462\nWest Carrie, OK 65150', '1977-09-16', 20, 1, '2022-08-17 11:04:25', '2022-08-17 11:04:25'),
(100, 'Eldora', '+1.540.900.0467', '23371 Hansen Gardens\nPort Mylenemouth, SC 17968', '1949-05-20', 15, 1, '2022-08-17 11:04:25', '2022-08-17 11:04:25'),
(101, 'Amparo', '+1.564.562.8068', '5451 Kitty Walk\nKochborough, CA 45638-0431', '1963-09-08', 16, 1, '2022-08-17 11:04:25', '2022-08-17 11:04:25'),
(102, 'Herman', '941-999-4493', '964 Bins Way\nLakinhaven, CA 12554-4156', '1962-02-09', 16, 1, '2022-08-17 11:04:25', '2022-08-17 11:04:25'),
(103, 'Hailie', '205.795.7623', '689 Fadel View\nNew Enosshire, IN 45231-1288', '1951-12-17', 16, 1, '2022-08-17 11:04:25', '2022-08-17 11:04:25'),
(104, 'Jamil', '(831) 390-4043', '4836 Breitenberg Vista\nNew Adaberg, OK 47922', '1966-10-07', 13, 1, '2022-08-17 11:04:25', '2022-08-17 11:04:25'),
(105, 'Reginald', '+12533223964', '46511 Wintheiser Lane\nSouth Litzybury, MO 49046-3727', '1943-01-26', 13, 1, '2022-08-17 11:04:25', '2022-08-17 11:04:25'),
(106, 'Dovie', '405-684-4937', '2480 Ebert Course Suite 910\nMaureentown, ME 98262-8728', '1949-05-10', 19, 1, '2022-08-17 11:04:25', '2022-08-17 11:04:25'),
(107, 'Unique', '+1.409.781.7945', '15058 Kunde Expressway\nAubreybury, DC 94695', '2011-05-03', 20, 1, '2022-08-17 11:04:25', '2022-08-17 11:04:25'),
(108, 'Pasquale', '1-260-716-0460', '36519 Amanda Park Apt. 471\nEast Mallie, UT 17147-6902', '1988-07-31', 10, 1, '2022-08-17 11:04:25', '2022-08-17 11:04:25'),
(109, 'Winona', '518.450.8601', '87472 Bill Plaza Suite 301\nEast Libbiefort, ME 80085', '1987-10-20', 10, 1, '2022-08-17 11:04:25', '2022-08-17 11:04:25'),
(110, '555', '5', '55', '1970-01-01', 5, NULL, '2022-08-22 09:13:10', '2022-08-22 09:13:10'),
(111, '555', '5', '55', '1970-01-01', 5, NULL, '2022-08-22 09:14:11', '2022-08-22 09:14:11'),
(112, '555', '5', '55', '1970-01-01', 5, NULL, '2022-08-22 09:16:08', '2022-08-22 09:16:08'),
(113, 'Omar', '0598681715', 'Gaza', '2022-08-16', 25, NULL, '2022-08-22 09:17:01', '2022-08-22 09:17:01'),
(114, 'Omar', '0598681715', 'Gaza', '2022-08-26', 20, NULL, '2022-08-22 09:17:26', '2022-08-22 09:17:26'),
(115, 'www', '6565', '5656', '2022-08-03', 25, NULL, '2022-08-22 09:30:16', '2022-08-22 09:30:16'),
(116, 'www', '6565', '5656', '2022-08-03', 25, NULL, '2022-08-22 09:30:45', '2022-08-22 09:30:45'),
(117, 'www', '6565', '5656', '2022-08-03', 25, NULL, '2022-08-22 09:31:30', '2022-08-22 09:31:30'),
(118, 'Omar', '0598681715', 'Gaza', '2022-08-11', 33, NULL, '2022-08-22 09:37:26', '2022-08-22 09:37:26'),
(119, 'ee', 'ee', 'e', '2022-08-19', 33, NULL, '2022-08-22 09:38:13', '2022-08-22 09:38:13'),
(121, '21566', '56', '56', '2022-08-04', 33, NULL, '2022-08-22 09:45:23', '2022-08-22 09:45:23');

-- --------------------------------------------------------

--
-- Table structure for table `universities`
--

CREATE TABLE `universities` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `universities`
--

INSERT INTO `universities` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'IUG', '2022-08-17 10:46:39', '2022-08-17 10:46:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kathlyn Weissnat', 'maye61@example.org', '2022-08-17 10:46:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pNmS2lskKI', '2022-08-17 10:46:39', '2022-08-17 10:46:39'),
(2, 'Reymundo Dare', 'juliana90@example.net', '2022-08-17 10:46:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'a10IcEAssO', '2022-08-17 10:46:39', '2022-08-17 10:46:39'),
(3, 'Ova Zboncak', 'abbigail.wisozk@example.org', '2022-08-17 10:46:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LJIaKLqhrZ', '2022-08-17 10:46:39', '2022-08-17 10:46:39'),
(4, 'Dr. Marilou Lind PhD', 'ebert.quinton@example.net', '2022-08-17 10:46:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'P3RoPQBb0S', '2022-08-17 10:46:39', '2022-08-17 10:46:39'),
(5, 'Bridgette Harris', 'akozey@example.org', '2022-08-17 10:46:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pQIfAxyWuA', '2022-08-17 10:46:39', '2022-08-17 10:46:39'),
(6, 'Hans Bashirian', 'wmorar@example.net', '2022-08-17 10:46:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bg7GV0A0zF', '2022-08-17 10:46:39', '2022-08-17 10:46:39'),
(7, 'Shakira Hegmann Sr.', 'dkris@example.org', '2022-08-17 10:46:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'opRKDhqfhY', '2022-08-17 10:46:39', '2022-08-17 10:46:39'),
(8, 'Mrs. Lizzie Hudson', 'reichert.coty@example.org', '2022-08-17 10:46:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sfzaAknExn', '2022-08-17 10:46:39', '2022-08-17 10:46:39'),
(9, 'Tressa Carroll', 'triston50@example.net', '2022-08-17 10:46:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wRJ9ncPP7V', '2022-08-17 10:46:39', '2022-08-17 10:46:39'),
(10, 'Baby Champlin', 'kaci77@example.org', '2022-08-17 10:46:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '19R775sgQG', '2022-08-17 10:46:39', '2022-08-17 10:46:39'),
(11, 'Rowena Bogan I', 'enos99@example.com', '2022-08-17 10:50:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Sv0hBqEe91', '2022-08-17 10:50:22', '2022-08-17 10:50:22'),
(12, 'Ole Jenkins', 'lebsack.velva@example.org', '2022-08-17 10:50:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BhYgaTxJzk', '2022-08-17 10:50:22', '2022-08-17 10:50:22'),
(13, 'Ms. Mable Weber PhD', 'slowe@example.net', '2022-08-17 10:50:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZPAmTgZbxE', '2022-08-17 10:50:22', '2022-08-17 10:50:22'),
(14, 'Dr. Robert Ankunding II', 'hammes.andreanne@example.net', '2022-08-17 10:50:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cHXgGGfLhJ', '2022-08-17 10:50:22', '2022-08-17 10:50:22'),
(15, 'Joana Nolan Sr.', 'walter.bennett@example.net', '2022-08-17 10:50:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VZq7lxAwf7', '2022-08-17 10:50:22', '2022-08-17 10:50:22'),
(16, 'Helena Jaskolski', 'america.hoeger@example.net', '2022-08-17 10:50:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GbYK1Slb6A', '2022-08-17 10:50:22', '2022-08-17 10:50:22'),
(17, 'Estell Harvey', 'harris.alessia@example.com', '2022-08-17 10:50:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NluSWhLOo5', '2022-08-17 10:50:22', '2022-08-17 10:50:22'),
(18, 'Ivah Mayer', 'klangosh@example.org', '2022-08-17 10:50:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ePfygO9RuT', '2022-08-17 10:50:22', '2022-08-17 10:50:22'),
(19, 'Dovie Carter DVM', 'sebastian.mayer@example.org', '2022-08-17 10:50:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UnoU1HQUWb', '2022-08-17 10:50:22', '2022-08-17 10:50:22'),
(20, 'Sally Gulgowski', 'gherzog@example.net', '2022-08-17 10:50:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7K8Ef4E09N', '2022-08-17 10:50:22', '2022-08-17 10:50:22'),
(21, 'Westley Veum', 'lakin.jarrett@example.com', '2022-08-17 10:59:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3NfcXtwI4z', '2022-08-17 10:59:01', '2022-08-17 10:59:01'),
(22, 'Prof. Christopher Gerhold III', 'eulalia.schaefer@example.net', '2022-08-17 10:59:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8ISIFGei3e', '2022-08-17 10:59:01', '2022-08-17 10:59:01'),
(23, 'Prof. Keanu Larson III', 'geraldine78@example.org', '2022-08-17 10:59:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cyPSL0apj2', '2022-08-17 10:59:01', '2022-08-17 10:59:01'),
(24, 'Buster Leuschke MD', 'isaiah.lakin@example.org', '2022-08-17 10:59:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MK7HWy9wdR', '2022-08-17 10:59:01', '2022-08-17 10:59:01'),
(25, 'Bethel Harber', 'kyla.nitzsche@example.com', '2022-08-17 10:59:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7pdGXzDzBL', '2022-08-17 10:59:01', '2022-08-17 10:59:01'),
(26, 'Miss Clarissa Jast Jr.', 'walsh.jaclyn@example.com', '2022-08-17 10:59:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AZX4YwxOdr', '2022-08-17 10:59:01', '2022-08-17 10:59:01'),
(27, 'Prof. Howell Smith IV', 'sibyl17@example.net', '2022-08-17 10:59:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2KSVeV1FWq', '2022-08-17 10:59:01', '2022-08-17 10:59:01'),
(28, 'Sienna Cummings Sr.', 'maureen.ankunding@example.net', '2022-08-17 10:59:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'e6DwUhu4x0', '2022-08-17 10:59:01', '2022-08-17 10:59:01'),
(29, 'Dr. Nathan Carter', 'darrell46@example.org', '2022-08-17 10:59:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PJzRfHL32E', '2022-08-17 10:59:01', '2022-08-17 10:59:01'),
(30, 'Christiana Goodwin', 'sauer.lenny@example.net', '2022-08-17 10:59:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZeHfBBA2K6', '2022-08-17 10:59:01', '2022-08-17 10:59:01'),
(31, 'Prof. Aglae Steuber', 'amiya56@example.com', '2022-08-17 10:59:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RAVLbnhhJt', '2022-08-17 10:59:35', '2022-08-17 10:59:35'),
(32, 'Kelli Wolf', 'crona.marina@example.com', '2022-08-17 10:59:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'w3eAwl2LMz', '2022-08-17 10:59:35', '2022-08-17 10:59:35'),
(33, 'Godfrey Pfeffer', 'laverna82@example.net', '2022-08-17 10:59:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '72w5a6wJ8i', '2022-08-17 10:59:35', '2022-08-17 10:59:35'),
(34, 'Ms. Marcelina Fritsch', 'patrick.homenick@example.org', '2022-08-17 10:59:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zMBusV5SnM', '2022-08-17 10:59:35', '2022-08-17 10:59:35'),
(35, 'Dr. Ambrose Rau', 'jacobs.ashly@example.net', '2022-08-17 10:59:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ibrbbcALw2', '2022-08-17 10:59:35', '2022-08-17 10:59:35'),
(36, 'Leila Spencer V', 'marcia33@example.net', '2022-08-17 10:59:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xzJ6ApsOkD', '2022-08-17 10:59:35', '2022-08-17 10:59:35'),
(37, 'Miss Mckayla Johnston', 'pascale.kunde@example.com', '2022-08-17 10:59:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 't75CGxKkz7', '2022-08-17 10:59:35', '2022-08-17 10:59:35'),
(38, 'Prof. Hudson Feil', 'okilback@example.org', '2022-08-17 10:59:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PIPWuPoKjb', '2022-08-17 10:59:35', '2022-08-17 10:59:35'),
(39, 'Evalyn Boehm', 'angelita.paucek@example.com', '2022-08-17 10:59:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6ChBk84YQJ', '2022-08-17 10:59:35', '2022-08-17 10:59:35'),
(40, 'Wellington Sipes', 'nickolas.wolf@example.net', '2022-08-17 10:59:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7spStq0Xcb', '2022-08-17 10:59:35', '2022-08-17 10:59:35'),
(41, 'Yesenia Moore', 'tfadel@example.net', '2022-08-17 11:03:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zccVrdTyg4', '2022-08-17 11:03:58', '2022-08-17 11:03:58'),
(42, 'Marge Zemlak', 'herman.emmalee@example.org', '2022-08-17 11:03:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eaabNMbER8', '2022-08-17 11:03:58', '2022-08-17 11:03:58'),
(43, 'Elsa Wiegand', 'mcclure.leslie@example.org', '2022-08-17 11:03:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HzO77T8nzn', '2022-08-17 11:03:58', '2022-08-17 11:03:58'),
(44, 'Ada Jacobs', 'edwina98@example.com', '2022-08-17 11:03:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5jzrBHF9St', '2022-08-17 11:03:58', '2022-08-17 11:03:58'),
(45, 'Darby McGlynn', 'robel.gardner@example.com', '2022-08-17 11:03:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZbdvyMnMzb', '2022-08-17 11:03:58', '2022-08-17 11:03:58'),
(46, 'Concepcion Smith', 'glen90@example.com', '2022-08-17 11:03:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'n1VWQ60sua', '2022-08-17 11:03:58', '2022-08-17 11:03:58'),
(47, 'Jessica Wilkinson', 'felicia.glover@example.com', '2022-08-17 11:03:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hcbLdYXA3G', '2022-08-17 11:03:58', '2022-08-17 11:03:58'),
(48, 'Prof. Noemy Leffler', 'ortiz.salma@example.com', '2022-08-17 11:03:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SYRmcZUReC', '2022-08-17 11:03:58', '2022-08-17 11:03:58'),
(49, 'Jamar Jast MD', 'dcole@example.com', '2022-08-17 11:03:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'v6ZO4QZVV5', '2022-08-17 11:03:58', '2022-08-17 11:03:58'),
(50, 'Nella Steuber', 'uconnelly@example.org', '2022-08-17 11:03:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5TPNWe9hV1', '2022-08-17 11:03:58', '2022-08-17 11:03:58'),
(51, 'Mr. Omari Conroy', 'tbernhard@example.net', '2022-08-17 11:04:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rTxwnjhSJG', '2022-08-17 11:04:25', '2022-08-17 11:04:25'),
(52, 'Braxton Kunde', 'rice.talia@example.com', '2022-08-17 11:04:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hhCSzTxQGt', '2022-08-17 11:04:25', '2022-08-17 11:04:25'),
(53, 'Mrs. Marilyne Treutel', 'wyatt.langosh@example.com', '2022-08-17 11:04:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UaN2Nq1oE4', '2022-08-17 11:04:25', '2022-08-17 11:04:25'),
(54, 'Samanta Bode', 'zieme.roberta@example.net', '2022-08-17 11:04:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KRFHnn1iEl', '2022-08-17 11:04:25', '2022-08-17 11:04:25'),
(55, 'Mr. Lucious Shields I', 'roob.brandyn@example.net', '2022-08-17 11:04:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'efX7viaZWR', '2022-08-17 11:04:25', '2022-08-17 11:04:25'),
(56, 'Brielle Zemlak', 'kautzer.gabriella@example.net', '2022-08-17 11:04:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JSsoV5jAwa', '2022-08-17 11:04:25', '2022-08-17 11:04:25'),
(57, 'Dr. Finn Dickinson DDS', 'amoen@example.org', '2022-08-17 11:04:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AduqeIOoRa', '2022-08-17 11:04:25', '2022-08-17 11:04:25'),
(58, 'Jerry Klein', 'milo42@example.net', '2022-08-17 11:04:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PGQeM2tQlW', '2022-08-17 11:04:25', '2022-08-17 11:04:25'),
(59, 'Dr. Brant Goyette Jr.', 'adrian.rath@example.net', '2022-08-17 11:04:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tv6QusMvrG', '2022-08-17 11:04:25', '2022-08-17 11:04:25'),
(60, 'Bethany Hessel', 'hickle.shaina@example.com', '2022-08-17 11:04:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JCVqNd17Hl', '2022-08-17 11:04:25', '2022-08-17 11:04:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_student`
--
ALTER TABLE `course_student`
  ADD PRIMARY KEY (`course_id`,`student_id`),
  ADD KEY `course_student_student_id_foreign` (`student_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_university_id_foreign` (`university_id`);

--
-- Indexes for table `universities`
--
ALTER TABLE `universities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `universities`
--
ALTER TABLE `universities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course_student`
--
ALTER TABLE `course_student`
  ADD CONSTRAINT `course_student_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `course_student_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_university_id_foreign` FOREIGN KEY (`university_id`) REFERENCES `universities` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
