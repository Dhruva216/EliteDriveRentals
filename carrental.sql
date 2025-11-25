-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 25, 2024 at 05:11 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '5c428d8875d2948607f3e3fe134d71b4', '2024-04-22 12:22:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `BookingNumber` bigint(12) DEFAULT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `BookingNumber`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`, `LastUpdationDate`) VALUES
(4, 854834134, 'Sweety@gmail.com', 9, '2024-04-25', '2024-04-30', 'when to collect the car', 1, '2024-04-24 20:31:14', '2024-04-24 20:37:16'),
(5, 303157864, 'Sweety@gmail.com', 10, '2024-04-24', '2024-04-24', 'hello', 2, '2024-04-24 20:48:20', '2024-04-24 20:48:36'),
(6, 246903575, 'sweety@gmail.com', 10, '2024-04-01', '2024-04-03', 'dk', 1, '2024-04-24 20:52:15', '2024-04-24 20:55:40');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(8, 'Audi', '2024-04-22 20:43:42', NULL),
(9, 'BMW', '2024-04-22 20:43:46', NULL),
(10, 'Toyota', '2024-04-22 20:43:52', NULL),
(11, 'Tesla', '2024-04-22 20:43:56', NULL),
(12, 'Honda', '2024-04-22 20:44:01', NULL),
(13, 'KIA', '2024-04-22 20:44:05', '2024-04-24 20:37:43'),
(15, 'Hyundai', '2024-04-24 20:39:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(2, 'Chicago,Illinois,60616.', 'EliteDriveRentals@gmail.com', '312223456');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(2, 'qwerty', 'qwerty@gmail.com', '12345', 'hi hello', '2024-04-23 18:54:56', 1),
(3, 'qwe', 'qwe@gmail.com', '123', 'awe', '2024-04-24 20:23:35', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '																				State Employee pick-up and drop-off service at all off-airport locations, at no additional charge.\r\nAge Requirements: Minimum rental age of 18 when traveling on State business.\r\nNo charges for additional drivers.\r\n24/7 Roadside Service\r\nUnlimited mileage for same pick up and drop off location\r\nNo extra charge for one-way rentals within 500 miles\r\nDamage Collision Waiver (DCW) is included in the State rate\r\n\r\nPayment Methods:\r\nPersonal Credit/Debit cards are accepted\r\n\r\nRequirements at Vehicle Pick-up:\r\nState of Illinois ID\r\nDriver’s License\r\n\r\nRefueling:\r\nEmployees must adhere to all refueling polices and must return vehicles with the proper level of fuel before returning to the rental location. If a vehicle is returned without the proper volume of fuel, the employee will be responsible for all refueling charges assessed and will not be eligible for reimbursement by the State of Illinois.\r\n\r\nTolls:\r\nHertz vehicles are equipped with a transponder for paying tolls. State of Illinois employees must turn off the transponder and pay with cash. A personal transponder may also be used.'),
(2, 'Privacy Policy', 'privacy', 'Privacy Policy for Elite Drive Rentals\r\nLast updated: 04/07/2024\r\n\r\nAt Elite Drive Rentals, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by Elite Drive Rentals and how we use it.\r\n\r\n1. Information We Collect\r\n\r\nWe collect information to provide better services to all our users. We collect information in the following ways:\r\n\r\nInformation you give us. For example, our service requires you to sign up for an account, where we may ask for personal information, like your name, email address, telephone number, or credit card.\r\nInformation we get from your use of our services. We may collect information about the services that you use and how you use them, like when you rent a car or what preferences you have indicated.\r\n\r\n2. Use of Your Information\r\n\r\nWe use the information we collect in various ways, including to:\r\n\r\n1.Provide, operate, and maintain our website\r\n2.Improve, personalize, and expand our website\r\n3.Understand and analyze how you use our website\r\n4.Develop new products, services, features, and functionality'),
(3, 'About Us', 'aboutus', 'About Us - Elite Drive Rentals\r\nAt Elite Drive Rentals, we are committed to providing our customers with exceptional car rental services. Founded in 2024, our company has grown from a modest fleet in Chicago to serving numerous locations across the country. We pride ourselves on offering a wide selection of high-quality vehicles to meet every traveler\'s needs, from compact cars for city trips to spacious SUVs for family vacations.\r\n\r\nOur Mission\r\n\r\nOur mission is to make car rental simple and hassle-free. We strive to offer competitive pricing, transparent policies, and flexible rental options. Our goal is to ensure that every customer has a pleasant and efficient experience, from booking to return.'),
(4, 'FAQs', 'faqs', 'Frequently Asked Questions (FAQs) at Elite Drive Rentals\r\n\r\n1. How do I book a car rental on your website?\r\nYou can book a car by visiting our online booking section or contacting our customer service. Simply select your pick-up location, dates, and car type, and follow the prompts to complete your reservation.\r\n\r\n2. What documents are required to rent a car?\r\nTo rent a car, you will need a valid driver\'s license, a credit card in the name of the driver, and, in some cases, proof of insurance. International travellers may need to present a passport and an international driving permit.\r\n\r\n3. Are there age restrictions for renting a car?\r\nYes, the minimum age to rent a car typically is 21 years. However, this can vary by location and vehicle type. There may also be a young driver surcharge for renters under the age of 25.');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(7, 'Sweety@gmail.com', '2024-04-24 20:33:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(5, 'Sweety@gmail.com', 'Had a great experience booking a vehicle through this website', '2024-04-24 20:32:42', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(6, 'Dhruva', 'dhruva@gmail.com', '829880183cdd947832c44b3f6802f041', '1234567890', NULL, NULL, NULL, NULL, '2024-04-24 20:27:04', NULL),
(7, 'Sweety', 'Sweety@gmail.com', 'c9c4cd2087c7c2835a0931c3b4b03350', '12345', '01/02/1999', 'Chicago,IL. 60616', 'Chicago', 'USA', '2024-04-24 20:27:51', '2024-04-24 20:32:01');

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext DEFAULT NULL,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(9, 'E-Tron GT', 8, 'Electric car with great range and torque', 1000, 'Electric', 2023, 5, 'car_755x430.png', 'featured-img-3.jpg', 'about_us_img1.jpg', '2022-audi-rs-e-tron-gt-116-1612889631-2-2-3.png', 'roa120121bob-audietrongt-006-1637354959.jpg', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2024-04-22 21:00:13', '2024-04-24 20:54:59'),
(10, 'X5', 9, 'luxury SUV', 700, 'Petrol', 2020, 5, 'BMW-5-Series-Exterior-102005.jpg', 'BMW-5-Series-Exterior-102006.jpg', 'BMW-5-Series-Interior-102021.jpg', 'BMW-5-Series-New-Exterior-89729.jpg', 'BMW-5-Series-New-Exterior-89729.jpg', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2024-04-23 17:35:03', NULL),
(11, 'Range Rover', 9, 'v8 engine with 4*4 transmission', 800, 'Petrol', 2023, 5, 'new-nissan-sunny-photo.jpg', '1audiq8.jpg', '2bb3bc938e734f462e45ed83be05165d.jpg', '2015_Toyota_Fortuner_(New_Zealand).jpg', 'about_us_img1.jpg', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2024-04-23 19:14:26', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
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
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
