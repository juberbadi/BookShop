-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 18, 2021 at 12:25 PM
-- Server version: 8.0.27-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `locationofdr`
--

CREATE TABLE `locationofdr` (
  `id` int NOT NULL,
  `state` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `district` varchar(20) DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `address` text,
  `latitude` varchar(20) DEFAULT NULL,
  `longitude` varchar(20) DEFAULT NULL,
  `drid` int DEFAULT NULL,
  `mrid` int DEFAULT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `phoneno` varchar(20) DEFAULT NULL,
  `orderDetailsTableID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `locationofdr`
--

INSERT INTO `locationofdr` (`id`, `state`, `city`, `district`, `pincode`, `address`, `latitude`, `longitude`, `drid`, `mrid`, `fullname`, `phoneno`, `orderDetailsTableID`) VALUES
(1, 'Gujarat', 'Ahmedabad', NULL, '380005', 'abc', NULL, NULL, NULL, 1, 'Juber Badi', '9898987272', NULL),
(2, 'Gujarat', 'Rajkot', NULL, '360007', 'Subhashnagar 8', NULL, NULL, NULL, 1, 'Juber', '9898987272', NULL),
(3, 'Gujarat', 'Ahmedabad', NULL, '370001', 'Subhasnagar 8', NULL, NULL, NULL, 1, 'Juber', '9898987272', NULL),
(4, 'Gujarat', 'Ahmedabad', NULL, '370001', 'Subhasnagar 8', NULL, NULL, NULL, 2, 'Kevin', '9898987272', NULL),
(5, 'Gujarat', 'Ahmedabad', NULL, '370001', 'Subhasnagar 8', NULL, NULL, NULL, 7, 'Juber Badi', '9898987272', NULL),
(6, 'Gujarat', 'Ahmedabad', NULL, '370001', 'Subhasnagar 8', NULL, NULL, NULL, 7, 'Juber Badi', '9898987272', NULL),
(7, 'Gujarat', 'Ahmedabad', NULL, '370001', 'Shubhasnagar 8', NULL, NULL, NULL, 7, 'Juber', '9898987272', NULL),
(8, 'Gujarat', 'Ahmedabad', NULL, '370001', 'Shubhasnagar 8', NULL, NULL, NULL, 8, 'Juber', '9898987272', NULL),
(9, 'Gujarat', 'Ahmedabad', NULL, '370001', 'Shubhasnagar 8', NULL, NULL, NULL, 9, 'Mihir', '9898987272', NULL),
(10, 'Gujarat', 'Ahmedabad', NULL, '370001', 'Shubhasnagar 8', NULL, NULL, NULL, 8, 'Juber', '9898987272', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mrs`
--

CREATE TABLE `mrs` (
  `id` int NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `joindate` date DEFAULT NULL,
  `phoneno` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `exist` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mrs`
--

INSERT INTO `mrs` (`id`, `username`, `firstname`, `lastname`, `joindate`, `phoneno`, `email`, `password`, `exist`) VALUES
(8, 'jbr', 'Juber', 'Badi', '1990-01-01', '9898987272', 'juber@gmail.com', 'Password@123', 1),
(9, 'mp', 'Mihir', 'Panchal', '1990-01-01', '9898987272', 'mihir@gmail.com', 'Password@123', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `id` int NOT NULL,
  `Quantity` int DEFAULT NULL,
  `OrderDate` date DEFAULT NULL,
  `PayDate` date DEFAULT NULL,
  `totalDiscount` float DEFAULT NULL,
  `totalAmount` float DEFAULT NULL,
  `StatusOfPaymount` enum('Paid','Not Paid') DEFAULT NULL,
  `PaymentMode` enum('Cash','Cheque','Upi') DEFAULT NULL,
  `DRid` int DEFAULT NULL,
  `MRid` int DEFAULT NULL,
  `productID` int DEFAULT NULL,
  `flag` int DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `deliveryDate` date DEFAULT NULL,
  `drAddressID` int DEFAULT NULL,
  `addressOFdr` varchar(200) DEFAULT NULL,
  `drname` varchar(50) DEFAULT NULL,
  `drphoneno` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`id`, `Quantity`, `OrderDate`, `PayDate`, `totalDiscount`, `totalAmount`, `StatusOfPaymount`, `PaymentMode`, `DRid`, `MRid`, `productID`, `flag`, `image`, `deliveryDate`, `drAddressID`, `addressOFdr`, `drname`, `drphoneno`) VALUES
(1, 2, '2021-10-24', NULL, 100, 200, NULL, 'Cash', NULL, 1, 1, 1, NULL, '2021-10-26', NULL, 'abc, Ahmedabad, Gujarat, 380005', 'Juber Badi', '9898987272'),
(3, 1, '2021-10-27', NULL, 50, 100, NULL, 'Upi', NULL, 1, 1, 1, NULL, '2021-10-31', NULL, 'Subhashnagar 8, Rajkot, Gujarat, 360007', 'Juber', '9898987272'),
(4, 1, '2021-10-27', NULL, 50, 200, NULL, 'Upi', NULL, 1, 4, 1, NULL, '2021-10-31', NULL, 'Subhashnagar 8, Rajkot, Gujarat, 360007', 'Juber', '9898987272'),
(5, 1, '2021-10-27', NULL, 50, 200, NULL, 'Upi', NULL, 1, 4, 1, NULL, '2021-10-31', NULL, 'Subhashnagar 8, Rajkot, Gujarat, 360007', 'Juber', '9898987272'),
(6, 1, '2021-10-27', NULL, 50, 100, NULL, 'Cash', NULL, 1, 1, 1, NULL, '2021-10-31', NULL, 'Subhasnagar 8, Ahmedabad, Gujarat, 370001', 'Juber', '9898987272'),
(9, 2, '2021-10-28', NULL, 100, 400, NULL, 'Cash', NULL, 2, 4, 1, NULL, '2021-10-31', NULL, 'Subhasnagar 8, Ahmedabad, Gujarat, 370001', 'Kevin', '9898987272'),
(10, 1, '2021-10-28', NULL, 50, 100, NULL, 'Cash', NULL, 2, 1, 1, NULL, '2021-10-31', NULL, 'Subhasnagar 8, Ahmedabad, Gujarat, 370001', 'Kevin', '9898987272'),
(11, 1, NULL, NULL, 50, 200, NULL, NULL, NULL, 1, 4, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 1, NULL, NULL, 50, 150, NULL, NULL, NULL, 1, 6, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 1, '2021-10-24', NULL, 70, 330, NULL, 'Cash', NULL, 8, 11, 1, NULL, '2021-10-26', NULL, 'Shubhasnagar 8, Ahmedabad, Gujarat, 370001', 'Juber', '9898987272'),
(18, 2, '2021-10-28', NULL, 40, 560, NULL, 'Cash', NULL, 9, 13, 1, NULL, '2021-10-31', NULL, 'Shubhasnagar 8, Ahmedabad, Gujarat, 370001', 'Mihir', '9898987272'),
(20, 4, '2021-10-28', NULL, 280, 1320, NULL, 'Cash', NULL, 8, 11, 1, NULL, '2021-10-31', NULL, 'Shubhasnagar 8, Ahmedabad, Gujarat, 370001', 'Juber', '9898987272'),
(21, 1, '2021-10-28', NULL, 20, 280, NULL, 'Cash', NULL, 8, 13, 1, NULL, '2021-10-31', NULL, 'Shubhasnagar 8, Ahmedabad, Gujarat, 370001', 'Juber', '9898987272');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `priceWithDiscount` float DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `image` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `discount`, `priceWithDiscount`, `description`, `image`) VALUES
(10, 'One Up On Wall Street', 350, 50, 300, 'This book is ranked one on our list of 10 must read books for stock market investors. Peter Lynch, the author of this book, is one of the most successful fund managers with an average annual return of 30% on his portfolio for a period of 13 years.', '1a1b04e24ab4fe2c92472f7004b06e4a'),
(11, 'The Intelligent Investor', 400, 70, 330, 'This is also known as the bible of the stock market. A must-read book written by the legendary Benjamin Graham, a.k.a. the mentor of the greatest investor of all time- Warren Buffet.', '34275d4d76384db1e4f01792525136d7'),
(12, 'Beating the street', 250, 50, 200, 'Another classic by Peter Lynch, the star mutual fund manager of the Magellan fund at Fidelity Investments. An Excellent book for individual investors looking to tap the stock market for long-term value investment opportunities. A good reference to go back to when trying out investing on your own.', '0d727009defc1cd30df4df2096c5252f'),
(13, 'Clean Code: By Robert C. Martin ', 300, 20, 280, 'This is one of the best classic books for beginners and will teach you all tricks and patterns of writing good and clean code. Every code which runs is not a clean code. Most of the beginner programmer done this mistake, they just try to solve the problem and hence forgets these factors to write a clean and perfect professional code. A Clean Code should be properly readable, well structured so that it could be reused and debug easily. ', 'e86a0eb29a6523c2d6f4a6b8b3a5bd85'),
(14, 'The Art of Computer Programming', 400, 60, 340, 'This is another classic book written by the famous computer scientist Professor Donald Knuth. This book is very popular and highly praised by many of the top programmers in the world for the combined mathematical exactness with an outstanding humour throughout the chapters.  Through his well-known book series ‘art of computer programming’, for his major contributions to the analysis of algorithms, Knuth was awarded the Turing Award in 1974.', 'bd8a15b18d7e737c2b9862df7e823af8'),
(17, 'abc', 100, 20, 80, 'abc book', '35be992e4e03f7ab849dbd05c78fb1e9');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `locationofdr`
--
ALTER TABLE `locationofdr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mrs`
--
ALTER TABLE `mrs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `locationofdr`
--
ALTER TABLE `locationofdr`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `mrs`
--
ALTER TABLE `mrs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
