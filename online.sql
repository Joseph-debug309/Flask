-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2026 at 10:06 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online`
--

-- --------------------------------------------------------

--
-- Table structure for table `beverages`
--

CREATE TABLE `beverages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `volume` varchar(50) NOT NULL,
  `expiry` date NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `photo` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `beverages`
--

INSERT INTO `beverages` (`id`, `name`, `brand`, `volume`, `expiry`, `price`, `stock`, `photo`) VALUES
(1, 'pepsi', 'cocacola', '3477', '2026-05-05', 23000.00, 5, 'bev1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `constructionmaterials`
--

CREATE TABLE `constructionmaterials` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `weight` decimal(10,2) NOT NULL,
  `unit` varchar(20) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `emp_id` int(50) NOT NULL,
  `emp_name` text NOT NULL,
  `hire_date` date NOT NULL,
  `salary` int(50) NOT NULL,
  `dept_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`emp_id`, `emp_name`, `hire_date`, `salary`, `dept_id`) VALUES
(1, 'Jason', '2001-04-22', 97843, 3),
(2, 'Mary', '2001-04-23', 65000, 1),
(3, 'Sylvia', '2001-05-23', 64000, 1),
(4, 'Jabezu', '2001-03-13', 98000, 3),
(5, 'Peter', '2001-02-13', 93000, 2),
(6, 'Harriet', '2001-07-03', 78000, 1),
(8, 'Alex', '2001-04-05', 87000, 3),
(9, 'Brenda', '2001-09-15', 77000, 2),
(10, 'Charles', '2001-11-05', 45000, 1),
(11, 'Donald', '2001-06-04', 98000, 3),
(12, 'Donnie', '2001-12-02', 67000, 2),
(13, 'Ela', '2001-03-07', 45000, 2),
(14, 'Francis', '2001-05-05', 81000, 1),
(15, 'Jonathan', '2001-02-13', 84000, 3),
(16, 'Kelvin', '2001-07-30', 90000, 1),
(17, 'Larry', '2001-03-14', 65000, 1),
(18, 'Natasha', '2001-06-19', 77000, 2),
(19, 'Othni', '2001-08-13', 35000, 3),
(20, 'Peter', '2001-09-16', 56000, 3),
(21, 'Quincy', '2001-11-05', 85000, 2),
(22, 'Stacy', '2001-10-05', 69000, 1),
(23, 'Terry', '2001-04-05', 65000, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beverages`
--
ALTER TABLE `beverages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `constructionmaterials`
--
ALTER TABLE `constructionmaterials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`emp_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `beverages`
--
ALTER TABLE `beverages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `constructionmaterials`
--
ALTER TABLE `constructionmaterials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `emp_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
