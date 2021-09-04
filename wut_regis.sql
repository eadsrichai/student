-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 04, 2021 at 07:06 AM
-- Server version: 10.3.28-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wut_regis`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `id_stu` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `id_stu`, `username`, `password`) VALUES
(6, '1001', 'test', '1234'),
(10, '5011', 'saichon', '7983'),
(11, '5007', 'test007', 'aof123'),
(12, '5013', 'tang', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `dep`
--

CREATE TABLE `dep` (
  `id_dep` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_dep` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dep`
--

INSERT INTO `dep` (`id_dep`, `name_dep`) VALUES
('01', 'คอมพิวเตอร์ธุรกิจ'),
('02', 'ปกครองท้องถิ่น');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id_stu` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pre_stu` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fname_stu` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname_stu` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel_stu` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_stu` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gpa_stu` float NOT NULL,
  `id_dep` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id_stu`, `pre_stu`, `fname_stu`, `lname_stu`, `tel_stu`, `email_stu`, `gpa_stu`, `id_dep`) VALUES
('1001', 'นาย', 'วุฒิวงศ์', 'เอียดศรีชาย', '1234567', 'xxx@gmail.com', 2, '01'),
('5007', 'นาย', 'ศิวเชษฐ์ ', 'พุมบุตร', '0968942059', 'siwachet2059@gmail.com', 3, '01'),
('5011', 'นางสาว', 'สายชล', 'ฉิมบ้านไร่', '0645588588', 'saichon21@gmail.com', 3, '01'),
('5013', 'นางสาว', 'สุวะนันท์', 'มงคล', '0935439909', 'tangsuwanun@gmail.com', 3, '01'),
('6216013085008', 'นางสาว', 'สุนิสา', 'ชูช่วย', '0612571615', 'sunisachuchwy986@gmail.com', 3, '01'),
('6216013805009', 'นาย', 'อุดมศักดิ์', 'ทับไทย', '0842817104', 'udomsak046289@gmail.com', 3, '01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dep`
--
ALTER TABLE `dep`
  ADD PRIMARY KEY (`id_dep`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id_stu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
