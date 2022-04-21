-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 22, 2020 at 11:03 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbgadget`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(333) NOT NULL,
  `password` varchar(333) NOT NULL,
  `name` varchar(333) NOT NULL,
  `email` varchar(333) NOT NULL,
  `file` varchar(444) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `name`, `email`, `file`) VALUES
(1, 'admin', 'felix@7507', 'felix', 'felixkimutai@pm.me', 'hjsdkfld'']k[eovrtykuujhr');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `ID` int(11) NOT NULL,
  `Product` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `title`) VALUES
(1, 'Project Proposal'),
(2, 'Sotftware/websites'),
(3, 'Project documentation'),
(4, 'Business Plan'),
(5, 'Attachment Report Sample');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `Institution` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `item` text NOT NULL,
  `amount` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `dateOrdered` varchar(100) NOT NULL,
  `dateDelivered` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `name`, `phone`, `Institution`, `email`, `item`, `amount`, `status`, `dateOrdered`, `dateDelivered`) VALUES
(14, 'felix kandie', '0703882818', 'Eldoret polytechnic', 'felixkandie7507@gmail.com', '(1) Hotel Reservation System, ', '0', 'confirmed', '03/15/20 08:56:54 PM', '03/15/20 09:09:47 PM'),
(15, 'felix kandie', '0703882818', 'moi', 'fellix@gmail.com', '(1) Loan Management System, (1) Hotel Reservation System, ', '0', 'confirmed', '03/16/20 03:31:12 PM', '03/16/20 03:33:18 PM'),
(16, 'felix kandie', '0703882818', 'Eldoret University', 'felixkandie55@gmail.com', '(1) Loan Management System, (1) Hotel Reservation System, ', '0', 'unconfirmed', '03/17/20 03:36:12 AM', '');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ID` int(11) NOT NULL,
  `imgUrl` text NOT NULL,
  `pdfurl` text NOT NULL,
  `Product` text NOT NULL,
  `Description` text NOT NULL,
  `Price` double NOT NULL,
  `Category` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ID`, `imgUrl`, `pdfurl`, `Product`, `Description`, `Price`, `Category`) VALUES
(1, 'hotel_management_system.JPG', 'hotel_management_system.pdf', 'Hotel Reservation System', 'complete Hotel Reservation Project proposal', 150, 'Project Proposals'),
(2, 'loan_management_sysyem.JPG', 'Loan_Management_System.pdf', 'Loan Management System', 'A proposal for a loan management system in php,mysql and javascript', 150, 'Project Proposal'),
(3, 'car_rental_management_system.JPG', 'car_rental.pdf', 'Car Rental Management System', 'Complete Project Proposal', 150, 'Project Proposal'),
(4, 'reustarant_management_sysytem.JPG', 'Reustarant_management_system.pdf', 'Restaurant Management System', 'This is a complete Project Proposal For Canteen Ordering System', 150, 'Project Proposal'),
(5, 'hotel.JPG', '', 'Hotel Reservation System', 'Developed in html5, css3, Javascript, php, bootstrap and mysql database.', 400, 'Sotftware/websites'),
(6, 'student_management_system.JPG', 'student_management_system.pdf', 'Student Management System', 'Student Management System for Managing Class Assignment, Exams and Class Attendance.', 150, 'Project Proposal'),
(7, 'phamarcy_management_system.JPG', 'pharmacy_management_system.pdf', 'Pharmacy Management System', 'A project for providing optimal drug inventory and selling of drugs', 150, 'Project Proposal'),
(8, 'loan_management.JPG', '', 'Loan Management System', 'complete system developed in php & mysql', 420, 'Sotftware/websites'),
(9, 'car_rental.JPG', '', 'Car Rental Management System', 'Developed in php,javascript, mysql, html and css', 380, 'Sotftware/websites'),
(10, 'restaurant_management.JPG', '', 'Restaurant Management System', 'developed in php and mysql', 350, 'Sotftware/websites'),
(11, 'student_management.JPG', '', 'Student Management System', 'developed in php,html,javascript and mysql', 260, 'Sotftware/websites'),
(12, 'pharmacy_management.JPG', '', 'Pharmacy Management System', 'developed in Visual Basic', 400, 'Sotftware/websites'),
(13, 'mkulima_poultry.JPG', '', 'Mkulima Poultry Farm', 'The proposed business is sole proprietor type of business ran by MKULIMA POULTRY REARING who is initial owner.', 150, 'Business Plan'),
(14, 'social_green_house.JPG', '', 'Social Green House', 'The business will deal with production of all kinds of vegetables. Some of the products that will be offered includes: tomatoes, vegetables, pods, seeds, seedlings and other products. ', 150, 'Business Plan');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `site_name` varchar(34) NOT NULL,
  `site_phone` varchar(43) NOT NULL,
  `site_email` varchar(43) NOT NULL,
  `site_address` varchar(344) NOT NULL,
  `fax` varchar(15) NOT NULL,
  `comp_name` varchar(255) NOT NULL,
  `site_about` varchar(2500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_name`, `site_phone`, `site_email`, `site_address`, `fax`, `comp_name`, `site_about`) VALUES
(1, 'Polymax', '0703882818', 'felixkandie@pm.me', 'Po. Box 82, Iten', '0705296308', 'XQCampus projects', '<p>This site was developed mainly to help college and University students complete projects easyly</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'administrator', 'bobby'),
(2, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
