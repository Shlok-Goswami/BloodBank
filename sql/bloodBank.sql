-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 20, 2024 at 04:43 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bloodBank`
--

-- --------------------------------------------------------

--
-- Table structure for table `bloodbank_details`
--

CREATE TABLE `bloodbank_details` (
  `ID` int(11) NOT NULL,
  `email` varchar(150) NOT NULL,
  `bloodBankName` varchar(100) NOT NULL,
  `hospitalName` varchar(100) DEFAULT NULL,
  `category` varchar(15) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `faxNo` varchar(20) DEFAULT NULL,
  `licenceNo` varchar(30) NOT NULL,
  `helplineNo` varchar(10) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `beds` int(10) NOT NULL,
  `state` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `landmark` varchar(100) NOT NULL,
  `pincode` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bloodbank_details`
--

INSERT INTO `bloodbank_details` (`ID`, `email`, `bloodBankName`, `hospitalName`, `category`, `contact`, `faxNo`, `licenceNo`, `helplineNo`, `website`, `beds`, `state`, `district`, `city`, `landmark`, `pincode`) VALUES
(1, 'hospital1@gmail.com', 'Red', 'Mega Red', 'Private', '8980402010', 'Af0-85642', 'Haf-0984516', '9925393173', 'http://my-home-page.com', 95, 'Gujrat', 'Rajkot', 'Gondal ', 'Voluptas exercitatio', 360311),
(2, 'hospital2@gmail.com', 'Red 2', 'Mega Red 2', 'Private', '8980402010', 'Af0-85642', 'Haf-0984516', '9925393173', 'http://my-home-page.com', 105, 'Gujrat', 'Rajkot', 'Gondal ', 'Voluptas exercitatio', 360311),
(3, 'hospital2@gmail.com', 'Red 2', 'Mega Red 2', 'Private', '8980402010', 'Af0-85642', 'Haf-0984516', '9925393173', 'http://my-home-page.com', 105, 'Gujrat', 'Rajkot', 'Gondal ', 'Voluptas exercitatio', 360311),
(4, 'xutukuzu@mailinator.com', 'Lyle Wilson', 'Elaine Riley', 'Charitable/Vol', '9510469749', '+1 (981) 632-7434', 'Quia quis similique ', '9925393173', 'https://www.sohusekydunirap.biz', 42, 'Sequi magnam dolorem', 'Dolor iusto adipisci', 'Ea ipsum architecto ', 'Qui magni aliquip co', 360311);

-- --------------------------------------------------------

--
-- Table structure for table `blooddetail`
--

CREATE TABLE `blooddetail` (
  `id` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `type` varchar(5) NOT NULL,
  `amount` float NOT NULL,
  `bloodcenterid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blooddetail`
--

INSERT INTO `blooddetail` (`id`, `email`, `type`, `amount`, `bloodcenterid`) VALUES
(12, 'shlok.goswami2002@gmail.com', 'O+', 300, 6),
(13, 'abc@gmail.com', 'A-', 100, 6),
(14, 'dummy@gmail.com', 'B+', 150, 6);

-- --------------------------------------------------------

--
-- Table structure for table `camp`
--

CREATE TABLE `camp` (
  `id` int(10) NOT NULL,
  `donorid` int(10) NOT NULL,
  `campid` int(10) NOT NULL,
  `present` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `camp`
--

INSERT INTO `camp` (`id`, `donorid`, `campid`, `present`) VALUES
(1, 1, 10, 'no'),
(14, 4, 10, 'no');

-- --------------------------------------------------------

--
-- Table structure for table `campdetail`
--

CREATE TABLE `campdetail` (
  `id` int(10) NOT NULL,
  `date` date NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `state` varchar(20) NOT NULL,
  `district` varchar(20) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `organizedBy` varchar(30) NOT NULL,
  `time1` time(6) NOT NULL,
  `time2` time(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `campdetail`
--

INSERT INTO `campdetail` (`id`, `date`, `name`, `address`, `state`, `district`, `contact`, `organizedBy`, `time1`, `time2`) VALUES
(10, '2024-04-08', 'blood center', 'RC Dutt Rd, Near to Indian Oil Petrol pump, Aradhana Society, Vishwas Colony, Alkapuri, Vadodara, Gujarat 390007', 'gujarat', 'vadodara', '9999999999', 'hospital', '07:00:00.000000', '22:30:00.000000'),
(18, '2024-04-26', 'camp blood', 'envnee\r\nevvewrvwrvwv\r\neverv,32323', 'state', 'district', '1234567890', 'hospital', '08:00:00.000000', '21:00:00.000000'),
(20, '2024-04-24', 'dummy', 'dummy address', 'dummy', 'dummy', '0987654321', 'Blood Bank', '22:26:00.000000', '23:26:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `donordetail`
--

CREATE TABLE `donordetail` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `bloodGroup` varchar(5) DEFAULT NULL,
  `height` int(10) DEFAULT NULL,
  `weight` int(10) DEFAULT NULL,
  `address` varchar(225) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donordetail`
--

INSERT INTO `donordetail` (`id`, `name`, `email`, `contact`, `gender`, `dob`, `bloodGroup`, `height`, `weight`, `address`, `pincode`) VALUES
(1, 'Rishi Patodiya', 'rishipatodiya12@gmail.com', '8980402010', 'male', '2004-09-18', 'B+', 185, 85, 'A-10 Decora city Gondal, Gondal , Rajkot, Gujrat', 360311),
(2, 'Devansh Kansagra', 'dkansagra04@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Shlok Goswami', 'shlok.goswami2002@gmail.com', '1234567890', 'male', '2004-07-06', 'O+', 170, 73, 'OPP. Tejas school, vadodara, vadodara, gujarat', 123456),
(5, 'RishiPatodiya', 'patoliyarishi@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `donorlogin`
--

CREATE TABLE `donorlogin` (
  `ID` int(100) NOT NULL,
  `userEmail` varchar(200) NOT NULL,
  `password` varchar(255) NOT NULL,
  `imagename` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donorlogin`
--

INSERT INTO `donorlogin` (`ID`, `userEmail`, `password`, `imagename`) VALUES
(1, 'rishipatodiya12@gmail.com', '$2y$10$6cK.D2izDj9zDSuIZgTXSOkQDdTFfT73pCTqqojSPJGFB/TVcFH6.', '1.jpg'),
(2, 'dkansagra04@gmail.com', '$2y$10$HpkDg2KnGMYIpvBvBnD6/OPYBNc7ZDfjgc81LzlO4QROu.8z60oO2', '2.jpg'),
(4, 'shlok.goswami2002@gmail.com', '$2y$10$vVhvOjaVqLPxAUDREg3LOOqfJQdMLU4RVDWfIr5RFObd6bVrbQKwK', '4.png'),
(5, 'patoliyarishi@gmail.com', '$2y$10$QXz/SR3toCqn1AD4PfMNve5JATNOLiUBudhTjW.Gms8R6xFru9iOm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hospitallogin`
--

CREATE TABLE `hospitallogin` (
  `id` int(5) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hospitallogin`
--

INSERT INTO `hospitallogin` (`id`, `pass`, `email`) VALUES
(1, '$2y$10$UKTyW/XjPiKW7dS0i3uezeu7w0QrQ67Yz5BUOtxGiMqgApnA7VQW2', 'hospital1@gmail.com'),
(2, '$2y$10$0kKvUEJ4J9V6GGaRbq.eb.Xf8Ud.QwrqOZ5Ci934SrwDDRYILe7NW', 'hospital2@gmail.com'),
(3, '$2y$10$DrKSE9T9auSQSvCQzZg0G.JwEp8bUWFsiDz6nGtjtFB7GHqNf44Em', 'xutukuzu@mailinator.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bloodbank_details`
--
ALTER TABLE `bloodbank_details`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `blooddetail`
--
ALTER TABLE `blooddetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `camp`
--
ALTER TABLE `camp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campdetail`
--
ALTER TABLE `campdetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donordetail`
--
ALTER TABLE `donordetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donorlogin`
--
ALTER TABLE `donorlogin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `hospitallogin`
--
ALTER TABLE `hospitallogin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bloodbank_details`
--
ALTER TABLE `bloodbank_details`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blooddetail`
--
ALTER TABLE `blooddetail`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `camp`
--
ALTER TABLE `camp`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `campdetail`
--
ALTER TABLE `campdetail`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `donorlogin`
--
ALTER TABLE `donorlogin`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hospitallogin`
--
ALTER TABLE `hospitallogin`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
