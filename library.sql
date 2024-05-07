-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2024 at 11:06 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `ID` int(11) NOT NULL,
  `bookname` varchar(100) NOT NULL,
  `ISBN` int(11) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'not_borrowed'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`ID`, `bookname`, `ISBN`, `status`) VALUES
(1, 'ikinyarwanda', 12333, 'borrowed'),
(2, 'Advanced ENGLISH Book 2', 989798, 'borrowed'),
(3, 'Art in Action Edition 2', 9645373, 'borrowed'),
(4, 'Basics of Ethical Hacking', 193609, 'not_borrowed'),
(5, 'Advanced Physics', 2422383, 'not_borrowed'),
(7, 'ART', 343453323, 'not_borrowed'),
(8, 'Astronomy', 233934, 'not_borrowed');

-- --------------------------------------------------------

--
-- Table structure for table `borrowed_books`
--

CREATE TABLE `borrowed_books` (
  `ID` int(11) NOT NULL,
  `bookname` varchar(100) NOT NULL,
  `ISBN` int(255) NOT NULL,
  `phone_number` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `borrowed_books`
--

INSERT INTO `borrowed_books` (`ID`, `bookname`, `ISBN`, `phone_number`) VALUES
(5, 'Advanced ENGLISH Book 2', 989798, '0789492391'),
(7, 'Art in Action Edition 2', 9645373, '0784645363'),
(10, 'ikinyarwanda', 12333, '0789492390');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `phonenumber` varchar(255) NOT NULL,
  `uname` varchar(255) NOT NULL,
  `pin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `phonenumber`, `uname`, `pin`) VALUES
(1, '0789492391', 'james', '202cb962ac59075b964b07152d234b70'),
(2, '0789492391', 'Robert', '7993e11204b215b27694b6f139e34ce8'),
(3, '0789492391', 'MUGABO', 'ae5eb824ef87499f644c3f11a7176157'),
(4, '0789492391', 'Fred', 'b59c67bf196a4758191e42f76670ceba'),
(6, '0788888888', 'Gerard', 'f38a9bcfa7b985ea9fb8f4e09282ae93'),
(7, '0789492393', 'gabriel', '9e1e06ec8e02f0a0074f2fcc6b26303b'),
(8, '0789492390', 'Roberto', '7993e11204b215b27694b6f139e34ce8');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `borrowed_books`
--
ALTER TABLE `borrowed_books`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `borrowed_books`
--
ALTER TABLE `borrowed_books`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
