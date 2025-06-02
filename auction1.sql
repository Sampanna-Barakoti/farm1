-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1

-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `auction1`
--

-- --------------------------------------------------------

--
-- Table structure for table `bidder`
--

CREATE TABLE `bidder` (
  `ID` int(10) NOT NULL,
  `userID` int(10) NOT NULL,
  `vehicleID` int(10) NOT NULL,
  `biddingTime` datetime NOT NULL,
  `price` int(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `confirmbid` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bidder`
--

INSERT INTO `bidder` (`ID`, `userID`, `vehicleID`, `biddingTime`, `price`, `email`, `confirmbid`) VALUES

(26, 20, 83, '2024-06-06 23:17:52', 10080, 'samp@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `catagory`
--

CREATE TABLE `catagory` (
  `ID` int(10) NOT NULL,
  `name` varchar(500) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catagory`
--

INSERT INTO `catagory` (`ID`, `name`, `type`) VALUES
(2, 'Leafy Green- lettuce, spinach, silverbeet etc', 'Vegetable'),
(3, 'Berries- strawberries, raspberries, blueberries, kiwifruit and passionfruit etc', 'Fruit'),
(4, 'Cruciferous- cabbage, cauliflower, Brussels sprouts, broccoli etc', 'Vegetable'),
(5, 'Marrow- pumpkin, cucumber, zucchini etc', 'Vegetable'),
(6, 'Stone fruit- nectarines, apricots, peaches and plums', 'Fruit'),
(7, 'Tropical and exotic- bananas and mangoes', 'Fruit'),
(10, 'Root- potato, sweet potato, yam etc', 'Vegetable'),
(11, 'Edible plant stem- celery, asparagus etc', 'Vegetable'),
(12, 'Citrus- oranges, grapefruits, mandarins and limes etc', 'Fruit'),
(13, 'Allium- onion, garlic, shallot etc', 'Vegetable'),
(14, 'Melons- watermelons, rockmelons and honeydew melons', 'Fruit'),
(15, 'Tomatoes and avocados etc', 'Fruit');

-- --------------------------------------------------------

--
-- Table structure for table `chat_message`
--

CREATE TABLE `chat_message` (
  `chat_message_id` int(11) NOT NULL,
  `to_user_id` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `from_user_id` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `chat_message` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `chat_message`
--

INSERT INTO `chat_message` (`chat_message_id`, `to_user_id`, `from_user_id`, `chat_message`, `timestamp`, `status`) VALUES

(95, 'samp@gmail.com', 'nin@gmail.com', 'whats up', '2024-06-15 14:53:36', 0);

-- --------------------------------------------------------

--
-- Table structure for table `confirmbid`
--

CREATE TABLE `confirmbid` (
  `ID` int(10) NOT NULL,
  `vehicleID` int(10) NOT NULL,
  `date` date NOT NULL,
  `userID` int(5) NOT NULL,
  `type` varchar(50) NOT NULL,
  `price` int(10) NOT NULL,
  `role` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `deposit`
--

CREATE TABLE `deposit` (
  `ID` int(10) NOT NULL,
  `userID` int(10) NOT NULL,
  `paymentFrom` varchar(50) NOT NULL,
  `account` varchar(50) NOT NULL,
  `amount` int(15) NOT NULL,
  `role` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `deposit`
--

INSERT INTO `deposit` (`ID`, `userID`, `paymentFrom`, `account`, `amount`, `role`) VALUES

(16, 21, 'kumari', '35632532421', 500000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `farmer`
--

CREATE TABLE `farmer` (
  `ID` int(10) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(150) CHARACTER SET utf8 NOT NULL,
  `state` varchar(30) CHARACTER SET utf8 NOT NULL,
  `pincode` int(10) NOT NULL,
  `admin` int(5) NOT NULL DEFAULT 0,
  `active` int(5) NOT NULL DEFAULT 0,
  `image` varchar(300) CHARACTER SET utf8 NOT NULL,
  `farmer_activation_code` varchar(50) NOT NULL,
  `farmer_email_status` enum('not verified','verified') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `farmer`
--

INSERT INTO `farmer` (`ID`, `name`, `email`, `password`, `phone`, `address`, `state`, `pincode`, `admin`, `active`, `image`, `farmer_activation_code`, `farmer_email_status`) VALUES

(9, 'samp', 'samp98@gmail.com', '8b3f692524a7eb4447c31e025db8cfa1', '8285225252', 'chitwan', 'bagmati', 454565, 0, 0, '', '058bc379f06e30cc8c96da03b8b66e29', 'verified');

-- --------------------------------------------------------

--
-- Table structure for table `login_details`
--

CREATE TABLE `login_details` (
  `login_details_id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `last_activity` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_type` enum('no','yes') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_details`
--

INSERT INTO `login_details` (`login_details_id`, `user_id`, `last_activity`, `is_type`) VALUES

(164, 'samp@gmail.com', '2024-06-18 18:01:37', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `ID` int(10) NOT NULL,
  `vehicleID` int(10) NOT NULL,
  `userID` int(10) NOT NULL,
  `role` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `ID` int(10) NOT NULL,
  `userID` int(10) NOT NULL,
  `vehicleID` int(10) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(150) NOT NULL,
  `admin` int(5) DEFAULT 0,
  `active` int(5) NOT NULL DEFAULT 0,
  `image` varchar(300) NOT NULL,
  `user_activation_code` varchar(50) NOT NULL,
  `user_email_status` enum('not verified','verified') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `name`, `email`, `password`, `phone`, `address`, `admin`, `active`, `image`, `user_activation_code`, `user_email_status`) VALUES

(1, 'sampannn', 'barakotisampu55@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '32132132121', 'chitwan', 1, 0, '', '', 'verified');


-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `ID` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `catagory` int(50) NOT NULL,
  `startDate` varchar(15) NOT NULL,
  `EndDate` date NOT NULL,
  `image` varchar(300) NOT NULL,
  `price` int(10) NOT NULL,
  `status` int(5) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`ID`, `name`, `type`, `catagory`, `startDate`, `EndDate`, `image`, `price`, `status`, `email`) VALUES

(84, 'Tomato', 'Fruit', 15, '2024-04-10', '2024-09-20', '84Tomato.jpg', 80000, 1, 'samp@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `vehicledetails`
--

CREATE TABLE `vehicledetails` (
  `ID` int(10) NOT NULL,
  `vehicleID` int(10) NOT NULL,
  `description` text NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `Region` text NOT NULL,
  `harvest_date` date NOT NULL,
  `Season` text NOT NULL,
  `State` text NOT NULL,
  `soil_type` varchar(50) NOT NULL,
  `temperature` varchar(20) NOT NULL,
  `updateStatus` int(10) NOT NULL,
  `weight` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vehicledetails`
--

INSERT INTO `vehicledetails` (`ID`, `vehicleID`, `description`, `name`, `type`, `Region`, `harvest_date`, `Season`, `State`, `soil_type`, `temperature`, `updateStatus`, `weight`) VALUES

(24, 84, 'This fruit is very good in condition.', ' Tomato', 'Fruit', 'Chitwan', '2024-03-05', 'yum', 'chitwan', 'Loamy', '15- 20 degree C', 1, 400);

-- --------------------------------------------------------

--
-- Table structure for table `vehicleimage`
--

CREATE TABLE `vehicleimage` (
  `ID` int(10) NOT NULL,
  `vehicleID` int(10) NOT NULL,
  `name` varchar(300) NOT NULL,
  `name2` varchar(300) NOT NULL,
  `name3` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vehicleimage`
--

INSERT INTO `vehicleimage` (`ID`, `vehicleID`, `name`, `name2`, `name3`) VALUES
(28, 81, '81_1_potato2.jpg', '81_2_potato.jpg', '81_3_potato3.jpg'),
(29, 82, '82_1_banana2.jpg', '82_2_banana.jpg', '82_3_banana3.jpg'),
(30, 83, '83_1_onion.jpg', '83_2_onion2.jpg', '83_3_onion3.jpg'),
(31, 84, '84_1_Tomato2.jpg', '84_2_Tomato.jpg', '84_3_Tomato3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `watchlist`
--

CREATE TABLE `watchlist` (
  `ID` int(10) NOT NULL,
  `vehicleID` int(10) NOT NULL,
  `userID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bidder`
--
ALTER TABLE `bidder`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `vehicleID` (`vehicleID`);

--
-- Indexes for table `catagory`
--
ALTER TABLE `catagory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `chat_message`
--
ALTER TABLE `chat_message`
  ADD PRIMARY KEY (`chat_message_id`);

--
-- Indexes for table `confirmbid`
--
ALTER TABLE `confirmbid`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `vehicleID` (`vehicleID`);

--
-- Indexes for table `deposit`
--
ALTER TABLE `deposit`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `farmer`
--
ALTER TABLE `farmer`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `login_details`
--
ALTER TABLE `login_details`
  ADD PRIMARY KEY (`login_details_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `vehicleID` (`vehicleID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `vehicleID` (`vehicleID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `catagory` (`catagory`);

--
-- Indexes for table `vehicledetails`
--
ALTER TABLE `vehicledetails`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `vehicleID` (`vehicleID`);

--
-- Indexes for table `vehicleimage`
--
ALTER TABLE `vehicleimage`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `vehicleID` (`vehicleID`);

--
-- Indexes for table `watchlist`
--
ALTER TABLE `watchlist`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `vehicleID` (`vehicleID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bidder`
--
ALTER TABLE `bidder`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `catagory`
--
ALTER TABLE `catagory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `chat_message`
--
ALTER TABLE `chat_message`
  MODIFY `chat_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `confirmbid`
--
ALTER TABLE `confirmbid`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `deposit`
--
ALTER TABLE `deposit`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `farmer`
--
ALTER TABLE `farmer`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `login_details`
--
ALTER TABLE `login_details`
  MODIFY `login_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `vehicledetails`
--
ALTER TABLE `vehicledetails`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `vehicleimage`
--
ALTER TABLE `vehicleimage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `watchlist`
--
ALTER TABLE `watchlist`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `confirmbid`
--
ALTER TABLE `confirmbid`
  ADD CONSTRAINT `confirmbid_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`ID`),
  ADD CONSTRAINT `confirmbid_ibfk_2` FOREIGN KEY (`vehicleID`) REFERENCES `vehicle` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
