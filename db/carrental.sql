-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 26, 2022 at 05:15 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '5c428d8875d2948607f3e3fe134d71b4', '2022-04-20 12:22:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`) VALUES
(4, 'muchira@gmail.com', 10, '31-Mar-2010', '18-Dec-1978', 'Ut laboriosam minim', 1, '2022-04-16 03:08:37'),
(5, 'muchira@gmail.com', 6, '29-Nov-1983', '03-Apr-1974', 'A voluptatem sit id ', 1, '2022-04-16 03:09:29'),
(6, 'sheikh@gmail.com', 10, '25-Sep-2011', '24-Mar-1981', 'Enim facere accusant', 0, '2022-04-16 07:19:12'),
(7, 'sheikh@gmail.com', 10, '05-Oct-2006', '15-Jun-1999', 'Officiis molestias n', 2, '2022-04-16 11:14:04'),
(8, 'sheikh@gmail.com', 21, '05-Oct-2021', '18-Dec-2021', 'The Maserati GranTurismo is the best', 1, '2022-04-26 13:42:14');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(2, 'BMW', '2022-04-28 16:24:50', '2022-04-15 23:00:02'),
(3, 'Audi', '2022-04-27 16:25:03', '2022-04-15 23:00:32'),
(4, 'Nissan', '2022-04-14 16:25:13', '2022-04-15 23:01:11'),
(5, 'Toyota', '2022-04-28 16:25:24', '2022-04-15 23:01:28'),
(7, 'Marutiu', '2022-06-16 06:22:13', '2022-04-15 23:01:45'),
(8, 'lambo', '2022-04-15 23:20:40', NULL),
(9, 'Aston Martin', '2022-04-22 09:55:11', NULL),
(10, 'Bentley', '2022-04-22 10:01:01', NULL),
(11, 'Cadillac', '2022-04-22 11:11:03', NULL),
(12, 'porsche ', '2022-04-22 11:50:53', '2022-04-26 14:52:37'),
(13, 'Maserati', '2022-04-26 13:37:11', NULL),
(14, 'Dodge', '2022-04-26 13:45:02', NULL),
(15, 'Jaguar', '2022-04-26 13:55:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'dont-come\r\n																							', 'HCIgroup@gmail.com', '0707070706');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(2, 'Testor', 'test@gmail.com', '0707070707', 'lorem', '2022-04-15 21:17:07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '																				<p align=\"justify\"><font size=\"2\"><strong><font color=\"#990000\">(1) ACCEPTANCE OF TERMS</font></strong></font></p><p align=\"justify\"><font size=\"2\"><strong><font color=\"#990000\"><br></font></strong></font></p>\r\n										\r\n										'),
(2, 'Privacy Policy', 'privacy', '<div style=\"text-align: justify;\"><span style=\"font-size: 1em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">privacy policy</span></div>'),
(3, 'About Us ', 'aboutus', '																																																		<div style=\"color: rgb(212, 212, 212); background-color: rgb(30, 30, 30); font-family: &quot;Droid Sans Mono&quot;, &quot;monospace&quot;, monospace; line-height: 19px; white-space: pre;\">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Illo unde quam nulla numquam nesciunt, repellendus non excepturi sunt, neque, omnis natus totam! Cum est temporibus explicabo saepe cumque laudantium sequi!</div>\r\n										\r\n										\r\n										\r\n										\r\n										'),
(11, 'FAQs', 'faqs', '																														<p style=\"box-sizing: inherit; margin-bottom: 1rem; padding: 0px; line-height: 1.6; text-rendering: optimizelegibility; color: rgb(10, 10, 10); font-family: Lato, sans-serif; background-color: rgb(254, 254, 254);\"><a href=\"https://victrans.com/vehicle-warranty-covered-by-non-dealer-auto-shop/\" style=\"box-sizing: inherit; line-height: inherit; color: rgb(243, 130, 56); cursor: pointer; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.3); font-weight: bold; font-size: large;\">Do I need to take my vehicle to the dealer to be covered under warranty?</a></p><p style=\"box-sizing: inherit; margin-bottom: 1rem; padding: 0px; line-height: 1.6; text-rendering: optimizelegibility; color: rgb(10, 10, 10); font-family: Lato, sans-serif; background-color: rgb(254, 254, 254);\"><a href=\"https://victrans.com/difference-between-regular-oil-and-eco-power-oil/\" target=\"_blank\" rel=\"noopener noreferrer\" style=\"box-sizing: inherit; line-height: inherit; color: rgb(243, 130, 56); cursor: pointer; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.3); font-weight: bold; font-size: large;\">“What is the difference between regular oil and your Eco Power oil?</a></p><p style=\"box-sizing: inherit; margin-bottom: 1rem; padding: 0px; line-height: 1.6; text-rendering: optimizelegibility; color: rgb(10, 10, 10); font-family: Lato, sans-serif; background-color: rgb(254, 254, 254);\"><a href=\"https://victrans.com/how-often-do-i-need-an-oil-change-in-victoria-bc/\" target=\"_blank\" rel=\"noopener noreferrer\" style=\"box-sizing: inherit; line-height: inherit; color: rgb(243, 130, 56); cursor: pointer; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.3); font-weight: bold; font-size: large;\">“How often do I need an oil change?”</a></p><p style=\"box-sizing: inherit; margin-bottom: 1rem; padding: 0px; line-height: 1.6; text-rendering: optimizelegibility; color: rgb(10, 10, 10); font-family: Lato, sans-serif; background-color: rgb(254, 254, 254);\"><a href=\"https://victrans.com/can-i-drop-off-my-car-before-work/\" target=\"_blank\" rel=\"noopener noreferrer\" style=\"box-sizing: inherit; line-height: inherit; color: rgb(243, 130, 56); cursor: pointer; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.3); font-weight: bold; font-size: large;\">“Can I drop off my car before work?”</a></p><p style=\"box-sizing: inherit; margin-bottom: 1rem; padding: 0px; line-height: 1.6; text-rendering: optimizelegibility; color: rgb(10, 10, 10); font-family: Lato, sans-serif; background-color: rgb(254, 254, 254);\"><a href=\"https://victrans.com/fleet-maintenance-packages/\" target=\"_blank\" rel=\"noopener noreferrer\" style=\"box-sizing: inherit; line-height: inherit; color: rgb(243, 130, 56); cursor: pointer; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.3); font-weight: bold; font-size: large;\">“Do you offer fleet maintenance packages?”</a></p><p style=\"box-sizing: inherit; margin-bottom: 1rem; padding: 0px; line-height: 1.6; text-rendering: optimizelegibility; color: rgb(10, 10, 10); font-family: Lato, sans-serif; background-color: rgb(254, 254, 254);\"><a href=\"https://victrans.com/manual-and-automatic-transmissions-servicing-needs/\" target=\"_blank\" rel=\"noopener noreferrer\" style=\"box-sizing: inherit; line-height: inherit; color: rgb(243, 130, 56); cursor: pointer; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.3); font-weight: bold; font-size: large;\">“Do manual and automatic transmissions have different servicing needs?”</a></p><p style=\"box-sizing: inherit; margin-bottom: 1rem; padding: 0px; line-height: 1.6; text-rendering: optimizelegibility; color: rgb(10, 10, 10); font-family: Lato, sans-serif; background-color: rgb(254, 254, 254);\"><a href=\"https://victrans.com/how-many-kms-before-transmission-replacement/\" target=\"_blank\" rel=\"noopener noreferrer\" style=\"box-sizing: inherit; line-height: inherit; color: rgb(243, 130, 56); cursor: pointer; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.3); font-weight: bold; font-size: large;\">“How many kilometres can a transmission take before needing replacement?”</a></p><p style=\"box-sizing: inherit; margin-bottom: 1rem; padding: 0px; line-height: 1.6; text-rendering: optimizelegibility; color: rgb(10, 10, 10); font-family: Lato, sans-serif; background-color: rgb(254, 254, 254);\"><a href=\"https://victrans.com/what-is-the-biggest-problem-with-transmissions/\" target=\"_blank\" rel=\"noopener noreferrer\" style=\"box-sizing: inherit; line-height: inherit; color: rgb(243, 130, 56); cursor: pointer; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.3); font-weight: bold; font-size: large;\">“What is the biggest problem with transmissions?”</a></p><p style=\"box-sizing: inherit; margin-bottom: 1rem; padding: 0px; line-height: 1.6; text-rendering: optimizelegibility; color: rgb(10, 10, 10); font-family: Lato, sans-serif; background-color: rgb(254, 254, 254);\"><a href=\"https://victrans.com/transmission-fluid-flush-cost/\" target=\"_blank\" rel=\"noopener noreferrer\" style=\"box-sizing: inherit; line-height: inherit; color: rgb(243, 130, 56); cursor: pointer; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.3); font-weight: bold; font-size: large;\">“What would it cost to flush out my old transmission fluid and fill with new fluid?”</a></p><p style=\"box-sizing: inherit; margin-bottom: 1rem; padding: 0px; line-height: 1.6; text-rendering: optimizelegibility; color: rgb(10, 10, 10); font-family: Lato, sans-serif; background-color: rgb(254, 254, 254);\"><a href=\"https://victrans.com/how-often-should-i-replace-my-windshield-wiper-blades/\" target=\"_blank\" rel=\"noopener noreferrer\" style=\"box-sizing: inherit; line-height: inherit; color: rgb(20, 104, 160); cursor: pointer; outline-width: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.3); font-weight: bold; font-size: large;\">“How often should I replace my windshield wiper blades?”</a></p><div><br></div>\r\n										\r\n										\r\n										');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(4, 'sheikh@gmail.com', '2022-04-16 08:51:41');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(3, 'test@gmail.com', 'Provident eveniet ', '2022-04-16 00:20:46', 1),
(4, 'test@gmail.com', 'Ipsa dicta tenetur ', '2022-04-16 00:28:20', 1),
(5, 'sheikh@gmail.com', 'Tempora incididunt q', '2022-04-16 07:21:12', 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(4, 'Testor', 'test@gmail.com', '5c428d8875d2948607f3e3fe134d71b4', '9999857868', '03/07/2001', 'madaraka', 'Nairobi', 'Kenya', '2022-06-13 20:03:36', '2022-04-15 23:03:29'),
(5, 'muchira', 'muchira@gmail.com', '5c428d8875d2948607f3e3fe134d71b4', '0709080609', NULL, NULL, NULL, NULL, '2022-04-16 00:29:39', NULL),
(6, 'jeff', 'jeff@gmail.com', '5c428d8875d2948607f3e3fe134d71b4', '0709080609', NULL, NULL, NULL, NULL, '2022-04-16 00:30:22', NULL),
(7, 'Melanie Ratliff', 'rykysunuc@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Culpa dol', NULL, NULL, NULL, NULL, '2022-04-16 00:56:34', NULL),
(8, 'Kaitlin Irwin', 'qykabelek@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Eos labor', NULL, NULL, NULL, NULL, '2022-04-16 00:56:51', NULL),
(9, 'Xandra Serrano', 'cusyxe@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Maiores de', NULL, NULL, NULL, NULL, '2022-04-16 00:57:10', NULL),
(10, 'sheikh', 'sheikh@gmail.com', '5c428d8875d2948607f3e3fe134d71b4', '0755676875', NULL, NULL, NULL, NULL, '2022-04-16 07:15:38', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(13, 'Aston Martin', 9, 'The Aston Martin DBS is a high-performance grand tourer based on the DB9 and manufactured by the British luxury automobile manufacturer Aston Martin. Aston Martin has used the DBS name once before on their 1967–72 grand tourer coupé.', 1500, 'Petrol', 2020, 2, 'Aston Martin DB113.jpg', 'Aston Martin DB111.jpg', 'Aston Martin DB112.jpg', 'Aston Martin DB114.jpg', 'Aston Martin DB115.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, '2022-04-22 10:01:11', NULL),
(14, 'Bentley Continental GT', 10, 'The Bentley Continental GT is a grand tourer manufactured and marketed by British automaker Bentley Motors since 2003. It was the first car released by Bentley under Volkswagen AG management, after the company\'s acquisition in 1998, and the first Bentley to employ mass production manufacturing techniques.', 2000, 'Petrol', 2020, 4, 'Bentley Continental GT1.jpg', 'Bentley Continental GT2.jpg', 'Bentley Continental GT3.jpg', 'Bentley Continental GT4.jpg', 'Bentley Continental GT2.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2022-04-22 10:03:22', NULL),
(15, 'Bentley Flying Spur', 10, 'Overview\r\nEven though it\'s built from the ground up to pamper its passengers, the 2022 Bentley Flying Spur also has an athletic chassis to entertain the driver. A trio of engine choices—including a new plug-in hybrid—provide seemingly endless power, and its adept handling turns lazy weekend cruises into joyful driving experiences. The cabin delights the senses with high-end leathers, woods, and metal accents intermingled with modern-day technology and conveniences. The rear seat is particularly relaxing, especially when equipped with luxury features such as rear bucket seats, which offer power adjustments and heated armrests. However, the Flying Spur\'s unbeatable blend of luxury and performance comes with an eye-watering six-figure price tag, and that\'s before you start tacking on customization options from Bentley\'s Mulliner line of personalization features.\r\n\r\n', 3000, 'Petrol', 2022, 4, 'Bentley Flying Spur1.jpg', 'Bentley Flying Spur2.jpg', 'Bentley Flying Spur3.jpg', 'Bentley Flying Spur4.jpg', 'Bentley Flying Spur5.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2022-04-22 10:56:28', NULL),
(16, 'Lamborghini Aventador', 8, 'The Lamborghini Aventador  is a mid-engine sportscar produced by the Italian automotive manufacturer Lamborghini. In keeping with Lamborghini tradition, the Aventador is named after a Spanish fighting bull that fought in Zaragoza, Aragon in 1993', 3000, 'Petrol', 2022, 2, 'lamborgini aventador1.jpg', 'lamborgini aventador2.jpg', 'lamborgini aventador3.jpg', 'lamborgini aventador4.jpg', 'lamborgini aventador5.jpg', 1, 1, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, '2022-04-22 11:06:59', NULL),
(17, 'Cadillac Escallade', 11, 'The Cadillac Escalade is a full-size luxury SUV engineered and manufactured by General Motors. It was Cadillac\'s first major entry into the SUV market. The Escalade was introduced for the 1999 model year in response to competition from the Mercedes-Benz G-Class, Range Rover and Lexus LX as well as Ford\'s 1998 release of the Lincoln Navigator. The Escalade project went into production only ten months after it was approved. The Escalade is built in Arlington, Texas. The word \"escalade\" refers to a siege warfare tactic of scaling defensive walls or ramparts with the aid of ladders or siege towers.\r\n\r\nThe Escalade is currently sold in North America and select international markets (Europe and Asia) where Cadillac has official sales channels.[1] The Escalade ESV (Escalade Stretch Vehicle) is sold in North America, Russia, and Middle East but is available by special order only in some international markets. The right-hand-drive Escalade and Escalade ESV are available through the third-party conversion specialists without official agreement with Cadillac in Australian, Oceanic, and Japanese markets.', 2300, 'Diesel', 2019, 4, 'Cadillac Escallade.jpg', 'Cadillac Escallade0.jpg', 'Cadillac Escallade1.jpg', 'Cadillac Escallade2.jpg', 'Cadillac Escallade3.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, '2022-04-22 11:13:10', NULL),
(19, 'GT-R', 4, 'The GT-R is an entirely new model sharing little with the Skyline GT-R save its signature four round tail lights. Like some later generations of the Skyline GT-R, the GT-R has the ATTESA E-TS all-wheel drive system with a twin-turbocharged 6-cylinder engine. But the four-wheel-steering HICAS system has been removed and the former straight-6 RB26DETT engine has been replaced with a new VR38DETT V6 engine.[11] Because of the GT-R\'s heritage, the chassis code for the all-new version has been called CBA-R35 and for later model years as DBA-R35 and 4BA-R35,[12] or R35 for short (where CBA, DBA and 4BA stands for the emissions standard prefix), carrying on the naming trend from previous Skyline GT-R generations.\r\n\r\nThe GT-R has also retained its Skyline predecessor\'s nickname, Godzilla,[13] originally given to it by the Australian motoring publication Wheels in 1989 for its R32 generation model.', 3000, 'CNG', 2020, 4, 'GTR1.jpg', 'GTR2.jpg', 'GTR3.jpg', 'GTR4.jpg', 'GTR5.jpg', 1, 1, 1, NULL, 1, 1, 1, 1, NULL, 1, 1, 1, '2022-04-22 11:22:07', NULL),
(20, 'Porsche Cayenne', 12, 'The Porsche Cayenne is a series of mid-size luxury crossover sport utility vehicles manufactured by the German automaker Porsche since 2002, with North American sales beginning in 2003. It is the first V8-engined vehicle built by Porsche since 1995, when the Porsche 928 was discontinued. It is also Porsche\'s first off-road variant vehicle since its Super and Junior tractors of the 1950s, and the first Porsche with four doors.\r\n\r\nThe second-generation Cayenne (Type 92A) was unveiled at the 2010 Geneva Motor Show in March following an online reveal. The Cayenne shares its platform, body frame, doors and electronics with the similar Volkswagen Touareg and Audi Q7. The third generation received a facelift in 2014 with minor external changes, and introduced a new plug-in E-Hybrid version, with its public launch at the Paris Motor Show.[2] Since 2008, all engines have featured direct injection technology.', 3000, 'Petrol', 2022, 4, 'Porshe Cayenen 1.jpg', 'Porshe Cayenen 3.jpg', 'Porshe Cayenen 5.jpg', 'Porshe Cayenen 4.jpg', 'Porshe cayenne 2.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2022-04-22 11:52:59', NULL),
(21, 'Maserati Gran Turismo', 13, 'The Maserati GranTurismo and GranCabrio (Tipo M145) are a series of a grand tourers produced by the Italian automobile manufacturer Maserati from 2007 to 2019. They succeeded the 2-door V8 grand tourers offered by the company, the Maserati Coupe and Spyde', 2400, 'Petrol', 2020, 4, 'Maserati Gran Turismo1.jpg', 'Maserati Gran Turismo2.jpg', 'Maserati Gran Turismo3.jpg', 'Maserati Gran Turismo4.jpg', 'Maserati Gran Turismo5.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, '2022-04-26 13:40:46', NULL),
(22, 'Dodge Charger', 14, 'The Dodge Charger is a model of automobile marketed by Dodge in various forms over seven generations since 1966. The first Charger was a show car in 1964. A 1965 Charger II concept car resembled the 1966 production version. The Charger has been built on three different platforms in various sizes', 3000, 'Petrol', 2020, 4, 'Dodge Charger1.jpg', 'Dodge Charger2.jpg', 'Dodge Charger3.jpg', 'Dodge Charger4.jpg', 'Dodge Charger5.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, '2022-04-26 13:46:47', NULL),
(23, 'The Jaguar F-Type', 4, 'The Jaguar F-Type (X152) is a series of two-door, two-seater grand tourers manufactured by British luxury car manufacturer Jaguar Land Rover under their Jaguar Cars marque since 2013. The car\'s JLR D6a platform is based on a shortened version of the XK\'s platform.', 3000, 'Petrol', 2020, 4, 'Jaguar F Type1.jpg', 'Jaguar F Type2.jpg', 'Jaguar F Type3.jpg', 'Jaguar F Type4.jpg', 'Jaguar F Type5.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, '2022-04-26 13:54:40', NULL);

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
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
