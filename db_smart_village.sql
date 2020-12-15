-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2020 at 07:40 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_smart_village`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_about`
--

CREATE TABLE `tbl_about` (
  `about_id` int(11) NOT NULL,
  `about_description` varchar(1500) NOT NULL,
  `about_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_about`
--

INSERT INTO `tbl_about` (`about_id`, `about_description`, `about_image`) VALUES
(1, 'test data', 'about.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hospitals`
--

CREATE TABLE `tbl_hospitals` (
  `hospital_id` int(11) NOT NULL,
  `hospital_image1` varchar(255) NOT NULL,
  `hospital_image2` varchar(255) NOT NULL,
  `hospital_contact` varchar(500) NOT NULL,
  `hospital_description` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_hospitals`
--

INSERT INTO `tbl_hospitals` (`hospital_id`, `hospital_image1`, `hospital_image2`, `hospital_contact`, `hospital_description`) VALUES
(1, 'slide1.jpg', 'slide1.jpg', 'fagdyhujthfg\r\ngfyhsfgj\r\nfdxguhj\r\nfghfxh', 'safdte4r5ytr fgsfcvgsretyrghdfgbcfbzrtyhaewf vcdrfzgter');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hospital_details`
--

CREATE TABLE `tbl_hospital_details` (
  `hospital_detail_id` int(11) NOT NULL,
  `hospital_id` int(11) NOT NULL,
  `hospital_detail_dept` varchar(255) NOT NULL,
  `hospital_detail_doctors` varchar(255) NOT NULL,
  `hospital_detail_timing` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_hospital_details`
--

INSERT INTO `tbl_hospital_details` (`hospital_detail_id`, `hospital_id`, `hospital_detail_dept`, `hospital_detail_doctors`, `hospital_detail_timing`) VALUES
(1, 1, 'ortho', 'test', '10.30'),
(2, 1, 'pedia', 'tret', '11.00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login_info`
--

CREATE TABLE `tbl_login_info` (
  `login_id` int(11) NOT NULL,
  `login_username` varchar(255) NOT NULL,
  `login_password` varchar(255) NOT NULL,
  `login_category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_login_info`
--

INSERT INTO `tbl_login_info` (`login_id`, `login_username`, `login_password`, `login_category`) VALUES
(1, 'test', 'test1', 'panchayath'),
(2, 'test', 'test2', 'police'),
(3, 'test', 'test3', 'hospital'),
(4, 'test', 'test4', 'augriculture');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_panchayath`
--

CREATE TABLE `tbl_panchayath` (
  `panchayath_id` int(11) NOT NULL,
  `panchayath_image1` varchar(255) NOT NULL,
  `panchayath_image2` varchar(255) NOT NULL,
  `panchayath_contact` varchar(500) NOT NULL,
  `panchayath_services` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_panchayath`
--

INSERT INTO `tbl_panchayath` (`panchayath_id`, `panchayath_image1`, `panchayath_image2`, `panchayath_contact`, `panchayath_services`) VALUES
(1, 'slide1.jpg', 'slide1.jpg', 'test data 98976543210test@gmail.com', 'b$d cer,find,bulidibg,pension,test');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_registration`
--

CREATE TABLE `tbl_registration` (
  `registration_id` int(11) NOT NULL,
  `registration_name` varchar(255) NOT NULL,
  `registration_address` varchar(1000) NOT NULL,
  `registration_phone` varchar(50) NOT NULL,
  `registration_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_registration`
--

INSERT INTO `tbl_registration` (`registration_id`, `registration_name`, `registration_address`, `registration_phone`, `registration_password`) VALUES
(1, 'gd', 'fnhdjhtkiuytljnb,jhflu.uiyf;liydrsyatevb fdcxfgzesdyt r', '08590464291', 'rg'),
(2, 'ambu', 'KANIKUNNEL,UPPUKANDAM', '9847114512', 'fdg'),
(3, 'ambu', 'KANIKUNNEL,UPPUKANDAM', '09847114512', 'fdg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_services`
--

CREATE TABLE `tbl_services` (
  `service_id` int(11) NOT NULL,
  `service_image` varchar(255) NOT NULL,
  `service_title` varchar(255) NOT NULL,
  `service_description` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_services`
--

INSERT INTO `tbl_services` (`service_id`, `service_image`, `service_title`, `service_description`) VALUES
(1, 'blog1.jpg', 'panchayath', 'test data'),
(2, 'blog2.jpg', 'hospitals', 'test 1'),
(3, 'blog3.jpg', 'police station', 'test 2'),
(4, 'blog1.jpg', 'augriculture', 'test 3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_about`
--
ALTER TABLE `tbl_about`
  ADD PRIMARY KEY (`about_id`);

--
-- Indexes for table `tbl_hospitals`
--
ALTER TABLE `tbl_hospitals`
  ADD PRIMARY KEY (`hospital_id`);

--
-- Indexes for table `tbl_hospital_details`
--
ALTER TABLE `tbl_hospital_details`
  ADD PRIMARY KEY (`hospital_detail_id`),
  ADD KEY `hospital_id` (`hospital_id`);

--
-- Indexes for table `tbl_login_info`
--
ALTER TABLE `tbl_login_info`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `tbl_panchayath`
--
ALTER TABLE `tbl_panchayath`
  ADD PRIMARY KEY (`panchayath_id`);

--
-- Indexes for table `tbl_registration`
--
ALTER TABLE `tbl_registration`
  ADD PRIMARY KEY (`registration_id`);

--
-- Indexes for table `tbl_services`
--
ALTER TABLE `tbl_services`
  ADD PRIMARY KEY (`service_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_about`
--
ALTER TABLE `tbl_about`
  MODIFY `about_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_hospitals`
--
ALTER TABLE `tbl_hospitals`
  MODIFY `hospital_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_hospital_details`
--
ALTER TABLE `tbl_hospital_details`
  MODIFY `hospital_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_login_info`
--
ALTER TABLE `tbl_login_info`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_panchayath`
--
ALTER TABLE `tbl_panchayath`
  MODIFY `panchayath_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_registration`
--
ALTER TABLE `tbl_registration`
  MODIFY `registration_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_services`
--
ALTER TABLE `tbl_services`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_hospital_details`
--
ALTER TABLE `tbl_hospital_details`
  ADD CONSTRAINT `tbl_hospital_details_ibfk_1` FOREIGN KEY (`hospital_id`) REFERENCES `tbl_hospitals` (`hospital_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
