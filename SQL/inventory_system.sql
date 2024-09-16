-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2024 at 06:32 PM
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
-- Database: `inventory system`
--

-- --------------------------------------------------------

--
-- Table structure for table `accessories`
--

CREATE TABLE `accessories` (
  `Id` int(50) NOT NULL,
  `Type` varchar(50) NOT NULL,
  `Material_type` varchar(50) NOT NULL,
  `Size` varchar(50) NOT NULL,
  `Color` varchar(50) NOT NULL,
  `Quantity` varchar(50) NOT NULL,
  `Discription` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `buttons`
--

CREATE TABLE `buttons` (
  `Id` int(50) NOT NULL,
  `Button_type` varchar(50) NOT NULL,
  `Material` varchar(50) NOT NULL,
  `Size` varchar(50) NOT NULL,
  `Color` varchar(50) NOT NULL,
  `Quantity` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `Id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`Id`, `Name`) VALUES
(1, 'T-Shirt'),
(2, 'Hoodie');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `Client name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`Client name`) VALUES
('FDC'),
('LIBAN PARK'),
('AUB'),
('CITY BLUE'),
('FDC'),
('LIBAN PARK'),
('AUB'),
('CITY BLUE');

-- --------------------------------------------------------

--
-- Table structure for table `clothes`
--

CREATE TABLE `clothes` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `color_name` varchar(50) DEFAULT NULL,
  `Material_type` varchar(50) DEFAULT NULL,
  `Size` varchar(50) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `Description` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clothes`
--

INSERT INTO `clothes` (`id`, `type`, `color_name`, `Material_type`, `Size`, `quantity`, `Description`) VALUES
(24, 'T-Shirt', 'Beige Dark', 'Cotton', 'S', 2, '0'),
(26, 'T-Shirt', 'White', 'Cotton', 'S', 20, '0');

-- --------------------------------------------------------

--
-- Table structure for table `color`
--

CREATE TABLE `color` (
  `color_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `color`
--

INSERT INTO `color` (`color_name`) VALUES
('Beige Dark'),
('Beige Light'),
('Black Glossy'),
('Black Matte'),
('Blue Dark'),
('Blue Pastel'),
('Brown Dark'),
('Brown Light'),
('Coral Dark'),
('Coral Light'),
('Cyan Bright'),
('Cyan Pastel'),
('Gold Shiny'),
('Gray Dark'),
('Gray Light'),
('Green Bright'),
('Green Pastel'),
('Lavender Light'),
('Lavender Pastel'),
('Magenta Dark'),
('Magenta Light'),
('Maroon Dark'),
('Maroon Light'),
('Mint Green'),
('Navy Blue'),
('Olive Green'),
('Orange Light'),
('Orange Neon'),
('Peach Bright'),
('Peach Pastel'),
('Pink Bright'),
('Pink Pastel'),
('Purple Dark'),
('Purple Light'),
('Red Dark'),
('Red Light'),
('Silver Metallic'),
('Sky Blue'),
('Teal Bright'),
('Teal Pastel'),
('Turquoise Bright'),
('Turquoise Pastel'),
('Violet Bright'),
('Violet Pastel'),
('White'),
('White Matte'),
('White Pearl'),
('Yellow Light'),
('Yellow Neon');

-- --------------------------------------------------------

--
-- Table structure for table `fabrics`
--

CREATE TABLE `fabrics` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `color_name` varchar(50) DEFAULT NULL,
  `width` decimal(5,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `supplier` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fabrics`
--

INSERT INTO `fabrics` (`id`, `type`, `color_name`, `width`, `quantity`, `supplier`) VALUES
(7, 'cotton', 'White', 13.00, 32, 'serhan');

-- --------------------------------------------------------

--
-- Table structure for table `new_user`
--

CREATE TABLE `new_user` (
  `User_Id` int(50) NOT NULL,
  `Firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `BIrth` date NOT NULL,
  `phone` varchar(50) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `new_user`
--

INSERT INTO `new_user` (`User_Id`, `Firstname`, `lastname`, `Gender`, `BIrth`, `phone`, `Address`, `Email`, `password`) VALUES
(1, 'Hadi', 'Yaghi', 'Male', '2006-04-14', '81241492', 'Hadiyaghi@gmail.com', 'beirut,lebanon', '81241492da');

-- --------------------------------------------------------

--
-- Table structure for table `samples`
--

CREATE TABLE `samples` (
  `Client` varchar(22) NOT NULL,
  `type` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `material` varchar(50) NOT NULL,
  `size` varchar(100) NOT NULL,
  `Quantity` int(50) NOT NULL,
  `Returned` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `samples`
--

INSERT INTO `samples` (`Client`, `type`, `color`, `material`, `size`, `Quantity`, `Returned`) VALUES
('AUB', 'T-Shirt', 'Beige Dark', 'Cotton', 'S', 1, 'YES'),
('AUB', 'T-Shirt', 'Beige Dark', 'Cotton', 'S', 2, 'YES'),
('FDC', 'T-Shirt', 'Beige Dark', 'Cotton', '1', 2, 'YES'),
('FDC', 'T-Shirt', 'Beige Dark', 'Cotton', 'S', 2, 'YES'),
('AUB', 'T-Shirt', 'White', 'Cotton', 'S', 2, 'YES'),
('AUB', 'T-Shirt', 'White', 'Cotton', 'S', 1, 'YES'),
('AUB', 'T-Shirt', 'White', 'Cotton', 'S', 2, 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `size_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`size_name`) VALUES
('1'),
('10'),
('11'),
('12'),
('13'),
('14'),
('15'),
('16'),
('17'),
('18'),
('19'),
('2'),
('20'),
('21'),
('22'),
('23'),
('24'),
('25'),
('26'),
('27'),
('28'),
('29'),
('2XL'),
('2XS'),
('3'),
('30'),
('31'),
('32'),
('33'),
('34'),
('35'),
('36'),
('37'),
('38'),
('39'),
('3XL'),
('4'),
('40'),
('41'),
('42'),
('43'),
('44'),
('45'),
('46'),
('47'),
('48'),
('49'),
('4XL'),
('5'),
('50'),
('51'),
('52'),
('53'),
('54'),
('55'),
('56'),
('57'),
('58'),
('59'),
('5XL'),
('6'),
('60'),
('61'),
('62'),
('63'),
('64'),
('65'),
('6XL'),
('7'),
('7XL'),
('8'),
('9'),
('L'),
('M'),
('S'),
('XL'),
('XS');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `User_ID` int(11) NOT NULL,
  `Full_name` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`User_ID`, `Full_name`, `Password`) VALUES
(7, 'Hadi Yaghi', '81241492da');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accessories`
--
ALTER TABLE `accessories`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `color_fk` (`Color`);

--
-- Indexes for table `buttons`
--
ALTER TABLE `buttons`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `colors_fk` (`Color`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `clothes`
--
ALTER TABLE `clothes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `size_name` (`Size`) USING BTREE,
  ADD KEY `color_name` (`color_name`) USING BTREE,
  ADD KEY `idx_type` (`type`);

--
-- Indexes for table `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`color_name`);

--
-- Indexes for table `fabrics`
--
ALTER TABLE `fabrics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `color_name` (`color_name`);

--
-- Indexes for table `new_user`
--
ALTER TABLE `new_user`
  ADD PRIMARY KEY (`User_Id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`size_name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`User_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accessories`
--
ALTER TABLE `accessories`
  MODIFY `Id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `buttons`
--
ALTER TABLE `buttons`
  MODIFY `Id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `clothes`
--
ALTER TABLE `clothes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `fabrics`
--
ALTER TABLE `fabrics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `new_user`
--
ALTER TABLE `new_user`
  MODIFY `User_Id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accessories`
--
ALTER TABLE `accessories`
  ADD CONSTRAINT `color_fk` FOREIGN KEY (`Color`) REFERENCES `color` (`color_name`);

--
-- Constraints for table `buttons`
--
ALTER TABLE `buttons`
  ADD CONSTRAINT `colors_fk` FOREIGN KEY (`Color`) REFERENCES `color` (`color_name`);

--
-- Constraints for table `clothes`
--
ALTER TABLE `clothes`
  ADD CONSTRAINT `clothes_ibfk_1` FOREIGN KEY (`color_name`) REFERENCES `color` (`color_name`),
  ADD CONSTRAINT `clothes_ibfk_2` FOREIGN KEY (`Size`) REFERENCES `sizes` (`size_name`);

--
-- Constraints for table `fabrics`
--
ALTER TABLE `fabrics`
  ADD CONSTRAINT `fabrics_ibfk_1` FOREIGN KEY (`color_name`) REFERENCES `color` (`color_name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
