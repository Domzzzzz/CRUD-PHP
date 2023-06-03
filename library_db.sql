-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2018 at 01:31 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(60) NOT NULL,
  `password` varchar(150) NOT NULL,
  `username` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminId`, `adminName`, `password`, `username`, `email`, `photo`) VALUES
(1, 'John Dominic Nunez', '1234', 'nick', 'nunezdom58@gmail.com', 'posts-images/168572051852.png'),
(2, 'Carl Angelo Abian', '1234', 'carl', 'carlabian@gmail.com', 'posts-images/168572056325.png'); 


-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bookId` int(11) NOT NULL,
  `bookTitle` varchar(150) NOT NULL,
  `author` varchar(60) NOT NULL,
  `ISBN` varchar(30) NOT NULL,
  `bookCopies` varchar(10) NOT NULL,
  `publisherName` varchar(60) NOT NULL,
  `available` varchar(10) NOT NULL,
  `categories` varchar(30) NOT NULL,
  `callNumber` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bookId`, `bookTitle`, `author`, `ISBN`, `bookCopies`, `publisherName`, `available`, `categories`, `callNumber`) 
VALUES
(5151, 'Harry Potter and Philosophers Stone', 'J.K. Rowling', '1900-124-3242', '30', 'Bloosbury', 'YES', 'Adventure', '0902334'),
(5152, 'A Game of Thrones', 'George R.R. Martin', '102-323-123', '8', 'Bantam Spectra', 'YES', 'Fantasy', '1273847'),
(5153, 'The Secret Life of Romer', 'Nino Barzaga', '625-212-212', '50', 'Kap INC.', 'YES', 'Horror', '1845637'),
(5154, 'Fifty Shades of Gray', 'E.J. James', '121-217-122', '15', 'Vintage Books', 'YES', 'Romance', '76429018'),
(5155, 'Fifty Shades of Gray', 'James Dashner', '328-121-321', '30', 'Delacorte Press', 'YES', 'Adventure', '8748372');


-- --------------------------------------------------------

--
-- Table structure for table `borrow`
--

CREATE TABLE `borrow` (
  `borrowId` int(11) NOT NULL,
  `memberName` varchar(255) NOT NULL,
  `matricNo` varchar(10) NOT NULL,
  `bookName` varchar(255) NOT NULL,
  `borrowDate` varchar(20) NOT NULL,
  `returnDate` varchar(20) NOT NULL,
  `bookId` int(2) NOT NULL,
  `borrowStatus` int(2) NOT NULL,
  `fine` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `newsId` int(11) NOT NULL,
  `announcement` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`newsId`, `announcement`) VALUES
(1, 'Welcome to Our Online Library Management System. You can have access to all our e-books at a really good affordable price!'),
(6, 'Man don''t dance'),
(9, 'Godfrey Okoye is going Places');

-- --------------------------------------------------------

--
-- -- Table structure for table `students`
--

CREATE TABLE `students` (
  `studentId` int(11) NOT NULL,
  `matric_no` varchar(30) NOT NULL,
  `password` varchar(150) NOT NULL,
  `username` varchar(150) NOT NULL,
  `email` varchar(60) NOT NULL,
  `dept` varchar(60) NOT NULL,
  `numOfBooks` int(11) NOT NULL,
  `moneyOwed` varchar(20) NOT NULL,
  `photo` text NOT NULL,
  `phoneNumber` varchar(11) NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Dumping data for table `students`
--

INSERT INTO `students` (`studentId`, `matric_no`, `password`, `username`, `email`, `dept`, `numOfBooks`, `moneyOwed`, `photo`, `phoneNumber`, `name`) VALUES
(1, 'ABCD-9483', '1234', 'bayz', 'bayzaaljohn18@gmail.com', 'App Development', 3, '1500', '4069_1685719735.jpeg', '09556457891', 'Aljohn Bayza'),
(2, 'ABCD-5756', '1234', 'romer', 'romerfrancisco08@gmail.com', 'Software Engineering', 5, '1234', '5932_1685720044.jpeg', '09657831788', 'Romer Francisco'),
(3, 'ABCD-9453', '1234', 'jero', 'roxasjeco@gmail.com', 'Software Engineering', 2, '1500', '1777_1685720190.jpeg', '09124579655', 'Jeco Roxas'),
(4, 'ABCD-8565', '1234', 'fabs', 'fabiajrey08@gmail.com', 'App Development', 8, '1234', '6950_1685720394.jpeg', '09124578966', 'John Rey Fabia');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bookId`);

--
-- Indexes for table `borrow`
--
ALTER TABLE `borrow`
  ADD PRIMARY KEY (`borrowId`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`newsId`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`studentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `bookId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `borrow`
--
ALTER TABLE `borrow`
  MODIFY `borrowId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `newsId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `studentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
